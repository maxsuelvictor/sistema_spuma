unit uServer;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, Vcl.ExtCtrls,
  Generics.Collections,DSTCPServerTransport,IdTCPConnection,
  IndyPeerImpl, IPPeerServer, IPPeerClient,System.IniFiles, {DbxDevartPostgreSQL,}
  Data.DB, Data.SqlExpr,Datasnap.DBClient, DbxDevartPostgreSQL, System.DateUtils,ShellAPI,
  JvComponentBase, JvThreadTimer, IdBaseComponent, IdComponent, IdTCPClient,
  IdHTTP;

{type
  Tmythread = class (tthread)

  public
    constructor Create(CreateSuspended:Boolean;IDThread:integer);

  private
    procedure AtualizaVCL;
    procedure DesativarCliente;
    VAR
      FID: integer;      // Internal ID

  protected
     procedure Execute(); Override;
  end; }


type
  Tmythread = class (tthread)

  private

    procedure AtualizaVCL;
    procedure DesativarCliente;
    procedure EfetuarBackup;
    procedure GerarSqlTxt(texto: String);

  protected
     procedure Execute(); Override;
  end;



  TCMServerForm = class(TForm)
    mm: TMemo;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    btnStartStop: TButton;
    edtPort: TLabeledEdit;
    lblPedidoVenda: TLabel;
    Label1: TLabel;
    lblDadosInv: TLabel;
    txtTempInv: TEdit;
    lblTemp: TLabel;
    Label2: TLabel;
    timeInv: TTimer;
    timeDestCli: TTimer;
    timeBackup: TTimer;
    timeServSis: TTimer;
    timeEnvioRel: TTimer;
    Label4: TLabel;
    txtVersao: TEdit;
    txtVersaoCli: TEdit;
    txtBanco: TEdit;
    Label6: TLabel;
    ConnectionsList: TListBox;
    Label7: TLabel;
    SessionIdList: TListBox;
    pnStatusServer: TPanel;
    Button1: TButton;
    pmIpConect: TPopupMenu;
    Fecharconexo1: TMenuItem;
    timeUsuarioLogado: TTimer;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnStartStopClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtTempInvExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure thTimerInvTimer(Sender: TObject);
    procedure timeInvTimer(Sender: TObject);
    procedure timeBackupTimer(Sender: TObject);
    procedure timeDestCliTimer(Sender: TObject);
    procedure timeServSisTimer(Sender: TObject);
    procedure timeEnvioRelTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Fecharconexo1Click(Sender: TObject);
    procedure timeUsuarioLogadoTimer(Sender: TObject);
  private
    { Private declarations }
    FConnections: TObjectDictionary<TIdTCPConnection,TDSTCPChannel>;
    procedure CMServerTransportConnectEvent(Event: TDSTCPConnectEventObject);
    procedure CMServerTransportDisconnectEvent(Event: TDSTCPDisconnectEventObject);
    procedure AddConnectionToList(Conn: TIdTCPConnection; Channel: TDSTCPChannel);
    procedure AddOrRemoveSession(SessionId: String; IsAdd: Boolean);
    procedure AddSessionListener;
    procedure AbreBanco;
    procedure BuscarDadosConexao;
    procedure TratarFinalizacaoThread(Sender: TObject);
    procedure ConfigurarTimer;
    procedure FecharIpConectado(Sender: TObject);
    function GetSelectedChannel(Conn: TIdTCPConnection = nil): TDSTCPChannel;
    function GetSelectedConnection: TIdTCPConnection;
    var
      horario_bck,horario_dest_cli,diretorio_bck:String;
      horario_backup_seg,horario_desativar_cli_seg,horario_envio_seg:integer;
      QtdeThread:Integer;
  public
    { Public declarations }
  end;

var
  CMServerForm: TCMServerForm;
  xGeraInv: Boolean=false;

implementation
{$R *.dfm}
uses enSC, DSSession, Winapi.Winsock, enConstantes, enSM, enConstantesServer,
  thBackup, thInventario, thDesativarCliente, thBloqSistema, thEnvioRelatorio,
  thCancelaPedidoDigitado;


{constructor Tmythread.Create(CreateSuspended:Boolean;IDThread:integer);
begin
  inherited Create(CreateSuspended);
  Self.FID := IDThread;
end; }


procedure TCMServerForm.CMServerTransportConnectEvent(
  Event: TDSTCPConnectEventObject);
begin
    if FConnections = nil then
       Exit;

    //This is called when a TCP conneciton is established. The connection and its corresponding
    //channel are added to the FConnections dictionary (the connection as the key) and then the
    //Connection list box is updated.
    System.TMonitor.Enter(FConnections);
    try
      FConnections.Add(TIdTCPConnection(Event.Connection), Event.Channel);
    finally
      System.TMonitor.Exit(FConnections);
    end;

    //Update the connection list to include the new connection and its channel.
    AddConnectionToList(TIdTCPConnection(Event.Connection), Event.Channel);

    //If keep-alive is in use, then enable Keep-alive for this new connection.
// não coloquei    if useKeepAliveCheck.Checked and (KAIdleMS.Text <> EmptyStr)then
// não coloquei      Event.Channel.EnableKeepAlive(StrToInt(KAIdleMS.Text));
end;

procedure TCMServerForm.CMServerTransportDisconnectEvent(
  Event: TDSTCPDisconnectEventObject);
var
  Index: Integer;
begin

  if (FConnections = nil) or (Event.Connection = nil) then
    Exit;

  //This is called when a TCP connection is closed, for whatever reason.
  System.TMonitor.Enter(FConnections);
  try
    FConnections.Remove(TIdTCPConnection(Event.Connection));

    TThread.Synchronize(nil, procedure
      begin
        //update the connection list box, removing the connection that was just closed
        Index := ConnectionsList.Items.IndexOfObject(Event.Connection);
        if Index > -1 then
        begin
          ConnectionsList.Items.Delete(Index);

          if ConnectionsList.SelCount = 0 then
            SessionIdList.ClearSelection;
        end;
      end);
  finally
    System.TMonitor.Exit(FConnections);
  end;
end;

procedure  TCMServerForm.ConfigurarTimer;
var
  agora:TDateTime;
  tempo_espera,atraso_seg:Integer;
  horario_atual_seg:Integer;
  Hor,Min,Sec,MSec: Word;
  banco, empresa: String;
begin
   atraso_seg := 60;
   agora := now;
   DecodeTime(agora,Hor,Min,Sec,MSec);
   horario_atual_seg := hor*3600+min*60+sec;

   banco := txtBanco.text;
   empresa := banco;
   if banco = 'enSoftData' then
      empresa := 'emp1';

   if banco = 'enSoftDataF' then
      empresa := 'emp2';


   if timeBackup.Enabled then
     begin
       if not FileExists(diretorio_bck+empresa+'_'+formatdatetime('dd-mm-yyyy',agora)) then
         begin
           // 1000 milisegungos =  1 segundo
           timeBackup.Interval:=1000;
         end
       else
         begin
           empresa :=  timeToStr(horario_atual_seg);
           if horario_atual_seg <= horario_backup_seg then
               tempo_espera := horario_backup_seg - horario_atual_seg
           else
              tempo_espera := (86400-horario_atual_seg) +horario_backup_seg;
           tempo_espera := (tempo_espera+atraso_seg)*1000;
           timeBackup.Interval:=tempo_espera;
         end;
     end;

   // Comentado por Maxsuel Victor , em 16/12/2019 para deixar funcionando somente
   //  o backup.
   {
   if timeDestCli.Enabled then
     begin
       if horario_atual_seg <= horario_desativar_cli_seg then
           tempo_espera := horario_desativar_cli_seg - horario_atual_seg
       else
          tempo_espera := (86400-horario_atual_seg) +horario_desativar_cli_seg;
       tempo_espera := (tempo_espera+atraso_seg)*1000;
       timeDestCli.Interval:=tempo_espera;
     end;


   if timeEnvioRel.Enabled then
     begin
       if horario_atual_seg <= horario_envio_seg then
           tempo_espera := horario_envio_seg - horario_atual_seg
       else
          tempo_espera := (86400-horario_atual_seg) +horario_envio_seg;
       tempo_espera := (tempo_espera+atraso_seg)*1000;
       timeEnvioRel.Interval:=tempo_espera;

     end;
     }
end;


procedure TCMServerForm.timeBackupTimer(Sender: TObject);
var
  agora:TDateTime;
  tempo_espera,atraso_seg:Integer;
  horario_atual_seg:Integer;
  Hor,Min,Sec,MSec: Word;
  thBckBanco: BackupBanco;
  thCancPedDig: CancPedDigitado;
begin

   // 01/01/2025, por Maxsuel Victor
   // Rotina de Cancelamento de Pedido de Venda em situação Digitado
   try
       thCancPedDig := CancPedDigitado.Create(True);
       thCancPedDig.sm := TSM.Create(nil);
       inc(QtdeThread);
       thCancPedDig.OnTerminate := TratarFinalizacaoThread;
       thCancPedDig.Resume;
   except on EConvertError do
      begin
         thCancPedDig.Free;
         ShowMessage('Erro no processo de Cancelamento de Pedidos Digitados!');
      end;
   end;


   // Rotina de Backup
   try
       thBckBanco := BackupBanco.Create(True);
       inc(QtdeThread);
       thBckBanco.OnTerminate := TratarFinalizacaoThread;
       thBckBanco.Resume;
   except on EConvertError do
      begin
         thBckBanco.Free;
         ShowMessage('Erro no processo de backup!');
      end;
   end;

   atraso_seg :=60;
   agora := now;
   DecodeTime(agora,Hor,Min,Sec,MSec);
   horario_atual_seg := hor*3600+min*60+sec;
   if horario_atual_seg <= horario_backup_seg then
       tempo_espera := horario_backup_seg - horario_atual_seg
   else
      tempo_espera := (86400-horario_atual_seg) +horario_backup_seg;
   tempo_espera := (tempo_espera+atraso_seg)*1000;

   timeBackup.Interval:=tempo_espera;

end;

procedure TCMServerForm.timeDestCliTimer(Sender: TObject);
var
  agora:TDateTime;
  tempo_espera,atraso_seg:Integer;
  horario_atual_seg:Integer;
  Hor,Min,Sec,MSec: Word;
  thDestCli:DesativarCliente;
begin

   try
       thDestCli := DesativarCliente.Create(True);
       inc(QtdeThread);
       thDestCli.OnTerminate := TratarFinalizacaoThread;
       thDestCli.Resume;
   except on EConvertError do
      begin
         thDestCli.Free;
         ShowMessage('Erro no processo de desativação de clientes!');
      end;
   end;
   atraso_seg:=60;
   agora := now;
   DecodeTime(agora,hor,min,sec,msec);
   horario_atual_seg := hor*3600+min*60+sec;
   if horario_atual_seg <= horario_desativar_cli_seg then
       tempo_espera := horario_desativar_cli_seg - horario_atual_seg
   else
      tempo_espera := (86400-horario_atual_seg) +horario_desativar_cli_seg;

   tempo_espera := (tempo_espera+atraso_seg)*1000;
   timeDestCli.Interval:=tempo_espera;
end;

procedure TCMServerForm.timeEnvioRelTimer(Sender: TObject);
var
  agora:TDateTime;
  tempo_espera,atraso_seg:Integer;
  horario_atual_seg:Integer;
  Hor,Min,Sec,MSec: Word;
  thEnvioRel: EnvioRelatorio;
begin

   try
       thEnvioRel := EnvioRelatorio.Create(True);
       inc(QtdeThread);
       thEnvioRel.OnTerminate := TratarFinalizacaoThread;
       thEnvioRel.Resume;
   except on EConvertError do
      begin
         thEnvioRel.Free;
         ShowMessage('Erro no processo de envio do relatorio!');
      end;
   end;
   atraso_seg :=60;
   agora := now;
   DecodeTime(agora,Hor,Min,Sec,MSec);
   horario_atual_seg := hor*3600+min*60+sec;
   if horario_atual_seg <= horario_envio_seg then
       tempo_espera := horario_envio_seg - horario_atual_seg
   else
      tempo_espera := (86400-horario_atual_seg) +horario_envio_seg;
   tempo_espera := (tempo_espera+atraso_seg)*1000;

   timeEnvioRel.Interval:=tempo_espera;
end;

procedure TCMServerForm.timeInvTimer(Sender: TObject);
var
  thInventario:Inventario;
begin
    try
     thInventario := Inventario.Create(True);
     inc(QtdeThread);
     thInventario.FreeOnTerminate := True;
     thInventario.OnTerminate := TratarFinalizacaoThread;
     thInventario.Resume;
    except on EConvertError do
        begin
           thInventario.Free;
           ShowMessage('Erro no processo de inventário!');
        end;
    end;
end;

procedure TCMServerForm.timeServSisTimer(Sender: TObject);
var
  thBloqSistema:BloqSistema;
begin

   try
       thBloqSistema := BloqSistema.Create(True);
       inc(QtdeThread);
       thBloqSistema.OnTerminate := TratarFinalizacaoThread;
       thBloqSistema.Resume;
   except on EConvertError do
      begin
         thBloqSistema.Free;
         ShowMessage('Erro no processo de verificação de licença!');
      end;
   end;
   timeServSis.Interval:=7200*1000; //era 7200
end;

procedure TCMServerForm.timeUsuarioLogadoTimer(Sender: TObject);
var
  i: integer;
  x: string;
begin
  if SC.xUsuarioAcessando <> '' then
     begin
       for i := 0 to ConnectionsList.Items.Count - 1 do
          begin
            x := ConnectionsList.Items[i];
            if pos('USUARIO_LOG',ConnectionsList.Items[i]) <> 0 then
               begin
                 ConnectionsList.Items[i] :=  StringReplace(ConnectionsList.Items[i],'USUARIO_LOG',SC.xUsuarioAcessando,[]);
                 SC.xUsuarioAcessando := '';
                 timeUsuarioLogado.Enabled := false;
               end;
          end;
     end;

end;

procedure TCMServerForm.TratarFinalizacaoThread(Sender: TObject);
begin
  dec(QtdeThread);
end;


Function GetIPAddress:String;
type
  pu_long = ^u_long;
var
  varTWSAData: TWSAData;
  varPHostEnt: PHostEnt;
  varTInAddr: TInAddr;
  namebuf: Array[0..255] of AnsiChar;
begin
  if WSAStartup($101, varTWSAData) <> 0 then
    Result := '127.0.0.1'
  else
  begin
    gethostname(namebuf, sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    Result := '' + inet_ntoa(varTInAddr);
  end;
  WSACleanup;
end;



procedure TCMServerForm.Fecharconexo1Click(Sender: TObject);
begin
  FecharIpConectado(nil);
end;

procedure TCMServerForm.FecharIpConectado(Sender: TObject);
var
  Channel: TDSTCPChannel;
begin
  //Find the selected connection's channel, and then close it.
  Channel := GetSelectedChannel;

  //after calling close, the CMServerTransportDisconnectEvent event will be notified.
  if Channel <> nil then
  begin
    Channel.Close;
  end;
end;

procedure TCMServerForm.FormActivate(Sender: TObject);
begin
   // não coloquei useKeepAliveCheck.Hint := 'This will only be applied to new connections,'#13#10'not already established connections.';

  // não coloquei thrashUpdateClick(nil);

  FConnections := TObjectDictionary<TIdTCPConnection,TDSTCPChannel>.Create;

  //Register an event to be notified when TCP connections are created
  SC.DSTCPServerTransport1.OnConnect := CMServerTransportConnectEvent;

  //Register an event to be notified when TCP connections are closed.
  SC.DSTCPServerTransport1.OnDisconnect := CMServerTransportDisconnectEvent;

  //Add a listener to be notified when sessions are established or are ended.
  //this is used to update the list box with session IDs in it.
   AddSessionListener;


end;

procedure TCMServerForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   CanClose := true;
   if QtdeThread > 0 then
     begin
       if Application.MessageBox('Há serviços em execução.Deseja mesmo fechar?',
                  'Atenção',MB_YESNO) = ID_NO then
         CanClose := false;
   end;
end;

procedure TCMServerForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ord(key) = vk_f5  then
     begin
       lblTemp.Visible := true;
       txtTempInv.Visible := true;
     end;

  if ord(key) = vk_f6  then
     begin
       lblTemp.Visible := false;
       txtTempInv.Visible := false;
     end;

end;

procedure TCMServerForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;
end;

procedure TCMServerForm.FormShow(Sender: TObject);
var
  sm: TSM;
  qry: TSQLQuery;
  thBckBanco:BackupBanco;
  // thInventario:Inventario;
begin
  QtdeThread :=0;
  txtVersao.text      := CenVersaoServer;
  txtVersaoCli.text  := CenVersaoSis;

  BuscarDadosConexao;

  btnStartStop.SetFocus;

  lblDadosInv.Caption := '';

  // 13/12/2024, Maxsuel Victor
     // No componente timeBackup, está sendo executado duas thread:
     // A rotina de Cancelamento de pedido em sit. DIGITADO e a rotina de
     // Backup;
  ConfigurarTimer;

  // Criando a Thread
  Tmythread.Create(false);


 { thInventario := Inventario.Create(True);
  inc(QtdeThread);
  thInventario.FreeOnTerminate := True;
  try
       thInventario.OnTerminate := TratarFinalizacaoThread;
       thInventario.Resume;
  except on EConvertError do
      begin
         thInventario.Free;
         ShowMessage('Erro no processo de inventário!');
      end;
  end; }

  {
 if horario_bck <>'' then
   begin
     thBckBanco := BackupBanco.Create(True,horario_bck);
     try
         thBckBanco.OnTerminate := TratarFinalizacaoThread;
         thBckBanco.Resume;
     except on EConvertError do
        begin
           thBckBanco.Free;
           ShowMessage('Erro no processo de backup!');
        end;
     end;
   end; }




  {Tmythread.Create(false,1);
  Tmythread.Create(false,2); }




  sm  := TSM.Create(nil);
  qry := TSqlQuery.Create(nil);
  qry.SQLConnection := SM.conexao;

  qry.Close;
  qry.SQL.Clear;
  qry.SQL.add(' select max(dta_inventario) as dta_inventario from est_tb_m_inv inv ');
  qry.Open;
  if not qry.IsEmpty then
     begin
        CMServerForm.lblDadosInv.Caption := ' Data do último inventário: ' + qry.FieldByName('dta_inventario').AsString;
     end;
  qry.Close;

  FreeAndNil(qry);
  FreeAndNil(sm);
end;


function TCMServerForm.GetSelectedChannel(Conn: TIdTCPConnection): TDSTCPChannel;
begin
  Result := nil;

  //Finds the selected connection
  if Conn = nil then
    Conn := GetSelectedConnection;

  //uses the selected connection to look up the associated channel.
  if Conn <> nil then
    FConnections.TryGetValue(Conn, Result)

end;

function TCMServerForm.GetSelectedConnection: TIdTCPConnection;
var
  I, Count, Index: Integer;
  Obj: TObject;
begin
  Result := nil;
  Index := -1;
  Count := ConnectionsList.Count;

  //Find the selected row in the list box
  if Count > 0 then
  begin
    for I := 0 to Count - 1 do
    begin
      if ConnectionsList.Selected[I] then
      begin
        Index := I;
        break;
      end;
    end;

    //Get the stored object for the selected row, if any.
    if Index > -1 then
    begin
      Obj := ConnectionsList.Items.Objects[Index];
      if Obj <> nil then
        Exit(TIdTCPConnection(Obj));
    end;
  end;
end;

procedure TCMServerForm.thTimerInvTimer(Sender: TObject);
var
  thInventario:Inventario;
begin
  thInventario := Inventario.Create(True);
  inc(QtdeThread);
  thInventario.FreeOnTerminate := True;
  try
       thInventario.OnTerminate := TratarFinalizacaoThread;
       thInventario.Resume;
  except on EConvertError do
      begin
         thInventario.Free;
         ShowMessage('Erro no processo de inventário!');
      end;
  end;

end;

procedure Tmythread.GerarSqlTxt(texto: String);
var
  Arquivo: TextFile;
  txt,tempo,data: String;
begin
   { TODO -oMaxsuel -cCriação :
     Criado por Maxsuel Victor - Em 27/05/2017
     Para gerar o txt do select de SQLDataSet }


   tempo := FormatDateTime('HH:MM:SS',time);
   tempo := StringReplace(tempo,':','-',[rfReplaceAll]);

   data := FormatDateTime('DD/MM/YYYY',date);
   data := StringReplace(data,'/','_',[rfReplaceAll]);


   if not (DirectoryExists(ExtractFilePath(Application.ExeName)+'logs')) then
      ForceDirectories(ExtractFilePath(Application.ExeName)+'logs');

   txt := ExtractFilePath(Application.ExeName)+'logs\Inventario_'+data+'.txt';

   AssignFile(Arquivo,txt);

   if not (FileExists(txt)) then
      Rewrite(Arquivo) //abre o arquivo para escrita
   else
      append(Arquivo);
   Writeln(Arquivo,texto);
   Closefile(Arquivo); //fecha o handle de arquivo
end;

procedure TCMServerForm.txtTempInvExit(Sender: TObject);
begin
   Tmythread.Create(false);
end;

procedure TCMServerForm.AddConnectionToList(Conn: TIdTCPConnection;
  Channel: TDSTCPChannel);
var
  InfoStr: String;
begin
  //If the given Connection and Channel are valid, then a string representation is made,
  //and this, along with the connection object itself, is stored in the connect list box.
  if (Conn <> nil) and (Channel <> nil) and (Channel.ChannelInfo <> nil) and
     (Channel.ChannelInfo.ClientInfo.IpAddress <> EmptyStr) then
  begin
    with Channel.ChannelInfo.ClientInfo do
    begin
      InfoStr := Format('%s:%s:%s', [IpAddress, ClientPort, 'USUARIO_LOG']);
    end;
    ConnectionsList.Items.AddObject(InfoStr, Conn);
    // timeUsuarioLogado.Enabled := true;
  end
  else
    ConnectionsList.Items.AddObject('Channel is missing proper ClientInfo.', Conn);
end;

procedure TCMServerForm.AddOrRemoveSession(SessionId: String; IsAdd: Boolean);
var
  Index: Integer;
begin
  if FConnections = nil then
    Exit;

  if IsAdd then
  begin
    if SessionIdList.Items.IndexOf(SessionId) < 0 then
      SessionIdList.Items.Add(SessionId);
  end
  else
  begin
    Index := SessionIdList.Items.IndexOf(SessionId);
    if Index > -1 then
      SessionIdList.Items.Delete(Index);
  end;
end;

procedure TCMServerForm.AddSessionListener;
begin
  //Add a session listener, which will be notified when a session is created or closed.
  TDSSessionManager.Instance.AddSessionEvent(
    procedure(Sender: TObject;
              const EventType: TDSSessionEventType;
              const Session: TDSSession)
    begin
      //the application is in an invalid or terminating state, so ignore the event.
      if FConnections = nil then
        Exit;

      //If a session has been closed, update the Authentication Manager, to free it's
      //Session related information.

     // Não coloquei if (EventType = SessionClose) and (Session <> nil) then
     // Não coloquei   SC.SessionClosed(Session.SessionName);

      //update the session Id list box
      AddOrRemoveSession(Session.SessionName, EventType = SessionCreate);
    end);

end;

procedure TCMServerForm.BitBtn2Click(Sender: TObject);
begin
  mm.Lines.Clear;
end;

procedure TCMServerForm.btnStartStopClick(Sender: TObject);
begin
  if SC.DSServer1.Started then
  begin
    SC.DSServer1.Stop();
    //Conexao.Close;
    Caption := 'Servidor parado...';
    pnStatusServer.Caption := 'Parado';
    pnStatusServer.Font.Color := clRed;
  end
  else
  begin
    SC.DSTCPServerTransport1.Port := StrToInt(edtPort.Text);
    SC.DSServer1.Start();
    Caption := 'Servidor rodando na porta ' + edtPort.Text + '...';
    pnStatusServer.Caption := 'Rodando';
    pnStatusServer.Font.Color := clGreen;
    //AbreBanco;
  end;


end;


procedure TCMServerForm.BuscarDadosConexao;
Var
  Rede:TInifile;
  Hor,Min,Sec,MSec: Word;

begin
  If not FileExists(ExtractFilePath(Application.ExeName)+'Rede.Ini') then
     begin
       exit;
     end;
  try
    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');

   if (Rede.ReadString('DEFINICAO_DE_DATABASE','DIRETORIO_IMAGEM','')='') or (not DirectoryExists(Rede.ReadString('DEFINICAO_DE_DATABASE','DIRETORIO_IMAGEM','')))  then
    begin
      Application.MessageBox(Pchar('Deve-se informar diretório válido das imagens no parâmetro "DIRETORIO_IMAGEM" no arquivo Rede.ini'),'Atenção', MB_ICONERROR or MB_OK);
      SC.DSServer1.Stop();
      Application.Terminate;

    end;

    edtPort.text  := Rede.ReadString('DEFINICAO_DE_DATABASE','PORTA','');
    txtBanco.text := Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO','');
    horario_bck := Rede.ReadString('DEFINICAO_DE_DATABASE','HORARIO_BACKUP','');
    diretorio_bck := trim(Rede.ReadString('DEFINICAO_DE_DATABASE','DIRETORIO_BACKUP',''));
    if diretorio_bck='' then
      diretorio_bck := ExtractFilePath(Application.ExeName)+ 'Backup';
    if copy(diretorio_bck,Length(diretorio_bck),1)<>'\' then
      diretorio_bck := diretorio_bck+'\';


    horario_dest_cli := Rede.ReadString('DESATIVAR_CLIENTE','HORARIO','');

    // 3.600.000

    if horario_bck <> '' then
      begin
       DecodeTime(StrToTime(horario_bck),hor,min,sec,msec);
       horario_backup_seg :=  hor*3600+min*60+sec;
       timeBackup.Enabled :=true;
      end
    else
      begin
        timeBackup.Enabled :=false;
      end;

  // Comentado em Maxsuel Victor em 17/12/2019
  {  if horario_dest_cli<>'' then
      begin
       DecodeTime(StrToTime(horario_dest_cli),hor,min,sec,msec);
       horario_desativar_cli_seg :=  hor*3600+min*60+sec;
       timeDestCli.Enabled :=true;
      end
    else
      begin
        timeDestCli.Enabled :=false;
      end;
  }
  //  horario_envio_seg := 3600*10; //10:00 da manhã para envio do Relatório.

  finally
    FreeAndNIl(Rede);
  end;
  {Conexao.Close;
  conexao.CloseDataSets;
  Conexao.Params.Clear;

  //POstgresql 9
  Conexao.Params.Add('DriverUnit=DbxDevartPostgreSQL');
  Conexao.Params.Add('DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver180.bpl');
  Conexao.Params.Add('MetaDataPackageLoader=TDBXDevartPostgreSQLMetaDataCommandFactory,DbxDevartPostgreSQLDriver180.bpl');
  Conexao.Params.Add('ProductName=DevartPostgreSQL');
  Conexao.Params.Add('GetDriverFunc=getSQLDriverPostgreSQL');
  Conexao.Params.Add('LibraryName=dbexppgsql40.dll');
  Conexao.Params.Add('LocaleCode=0000');
  Conexao.Params.Add('IsolationLevel=ReadCommitted');
  Conexao.Params.Add('MaxBlobSize=-1');
  Conexao.Params.Add('FetchAll=True');
  Conexao.Params.Add('UseQuoteChar=False');
  Conexao.Params.Add('UseUnicode=True');
  Conexao.Params.Add('VendorLib=dbexppgsql40.dll');
  Conexao.Params.Add('BlobSize=-1');
  Conexao.Params.Add('HostName='+Rede.ReadString('DEFINICAO_DE_DATABASE','HOST',''));
  Conexao.Params.Add('SchemaName=public');
  Conexao.Params.Add('Database='+Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO',''));
  Conexao.Params.Add('User_Name=postgres');
  Conexao.Params.Add('Password=ssq#0609');
  Conexao.Params.Add('EnableBCD=True');
  try
    begin
      Conexao.Open;
    end;
  except on E:Exception do
    begin
      Application.MessageBox(Pchar('Não Foi possível conectar-se ao banco de dados!'+#13+#13+#13+
        'Descrição do erro: '+
        #13+#13+E.Message),'Atenção', MB_ICONERROR or MB_OK);
        SC.DSServer1.Stop();
        Application.Terminate;
    end;
  end;}
end;

procedure TCMServerForm.Button1Click(Sender: TObject);
begin
  mm.Lines.Add(inttostr(timeBackup.Interval));
end;

procedure TCMServerForm.AbreBanco;
//Var
//  Rede:TInifile;
begin
 { If not FileExists(ExtractFilePath(Application.ExeName)+'Rede.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');
       Rede.WriteString('DEFINICAO_DE_DATABASE','HOST','');
       Application.MessageBox('O Arquivo Rede.Ini Encontra-se desconfigurado, Configure-o e reinicie o sistema!',
        'Atenção', MB_ICONINFORMATION or MB_OK);
       Application.Terminate;
     end;
  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');
  Conexao.Close;
  conexao.CloseDataSets;
  Conexao.Params.Clear;

  //POstgresql 9
  Conexao.Params.Add('DriverUnit=DbxDevartPostgreSQL');
  Conexao.Params.Add('DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver180.bpl');
  Conexao.Params.Add('MetaDataPackageLoader=TDBXDevartPostgreSQLMetaDataCommandFactory,DbxDevartPostgreSQLDriver180.bpl');
  Conexao.Params.Add('ProductName=DevartPostgreSQL');
  Conexao.Params.Add('GetDriverFunc=getSQLDriverPostgreSQL');
  Conexao.Params.Add('LibraryName=dbexppgsql40.dll');
  Conexao.Params.Add('LocaleCode=0000');
  Conexao.Params.Add('IsolationLevel=ReadCommitted');
  Conexao.Params.Add('MaxBlobSize=-1');
  Conexao.Params.Add('FetchAll=True');
  Conexao.Params.Add('UseQuoteChar=False');
  Conexao.Params.Add('UseUnicode=True');
  Conexao.Params.Add('VendorLib=dbexppgsql40.dll');
  Conexao.Params.Add('BlobSize=-1');
  Conexao.Params.Add('HostName='+Rede.ReadString('DEFINICAO_DE_DATABASE','HOST',''));
  Conexao.Params.Add('SchemaName=public');
  Conexao.Params.Add('Database='+Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO',''));
  Conexao.Params.Add('User_Name=postgres');
  Conexao.Params.Add('Password=ssq#0609');
  Conexao.Params.Add('EnableBCD=True');
  try
    begin
      Conexao.Open;
    end;
  except on E:Exception do
    begin
      Application.MessageBox(Pchar('Não Foi possível conectar-se ao banco de dados!'+#13+#13+#13+
        'Descrição do erro: '+
        #13+#13+E.Message),'Atenção', MB_ICONERROR or MB_OK);
        SC.DSServer1.Stop();
        Application.Terminate;
    end;
  end;    }
end;


{ Tmythread }

procedure Tmythread.AtualizaVCL;
var
  sm: TSM;
  Qry: TSQLQuery;
  DataInvAtras, DataAtual, DataFinal: TDateTime;
  AnoIni,MesIni,DiaIni: Word;
  AnoFin,MesFin,DiaFin: Word;
  AnoAnt, MesAnt: Word;
  Hor,Min,Sec,MSec: Word;
begin

  DataAtual := Now;
  DecodeDate(DataAtual,AnoIni,MesIni,DiaIni);

  DataFinal :=  EndOfTheMonth(DataAtual);
  DecodeDate(DataFinal,AnoFin,MesFin,DiaFin);

  DecodeTime(DataAtual,Hor,Min,Sec,MSec);

  //CMServerForm.lblDadosInv.Caption := ' Não foi encontrado nenhum inventário até este dia.';
  try
    sm  := TSM.Create(nil);
    qry := TSqlQuery.Create(nil);
    qry.SQLConnection := SM.conexao;

    qry.Close;
    qry.SQL.Clear;
    qry.SQL.add(' select max(dta_inventario) as dta_inventario from est_tb_m_inv inv ');
    qry.Open;
    if not qry.IsEmpty then
       begin
          CMServerForm.lblDadosInv.Caption := ' Data do último inventário: ' + qry.FieldByName('dta_inventario').AsString;
       end;
    qry.Close;



    if (DiaIni = DiaFin) and (Hor > 19) then
       begin
          GerarSqlTxt('Entrou na rotina do inventário, data/hora: ' + DateToStr(DataAtual) );

          qry.Close;
          qry.SQL.Clear;
          qry.SQL.add(' select * from est_tb_m_inv inv ' +
                      ' where inv.dta_inventario =  ''' + FormatDateTime(CFormatoData, DataFinal) +''' ');
          qry.Open;
          if qry.IsEmpty then
             begin
               qry.Close;
               qry.SQL.Clear;
               qry.SQL.Add(
                   ' insert into est_tb_m_inv (id_empresa,dta_inventario,id_item,id_cor,id_tamanho,qtde,custo) ' +
                   '     select fes.id_empresa, current_date, fes.id_item,fes.id_cor,fes.id_tamanho,fes.saldo_fisico, ' +
                   '            coalesce(fes.vlr_custo_medio,0) from est_tb_m_fes fes ');
               qry.ExecSQL;

               GerarSqlTxt('Inventário normal gerado, data/hora: ' + DateToStr(DataAtual) );
             end;
       end
    else
       begin
         if MesFin = 01 then
            begin
              AnoAnt := AnoFin - 1;
              MesAnt := 12
            end
         else
            begin
               AnoAnt :=  AnoFin;
               MesAnt :=  MesFin - 1;
            end;
        DataInvAtras :=  EndOfAMonth(AnoAnt, MesAnt);

        qry.Close;
        qry.SQL.Clear;
        qry.SQL.add(' select * from est_tb_m_inv inv ' +
                ' where inv.dta_inventario =  ''' + FormatDateTime(CFormatoData, DataInvAtras) +''' ');
        qry.Open;
        if qry.IsEmpty then
           begin
             qry.Close;
             qry.SQL.Clear;
             qry.SQL.Add(
                 ' insert into est_tb_m_inv (id_empresa,dta_inventario,id_item,id_cor,id_tamanho,qtde,custo) ' +
                 '     select fes.id_empresa, ''' + FormatDateTime(CFormatoData, DataInvAtras) +''', fes.id_item,fes.id_cor,fes.id_tamanho,fes.saldo_fisico, ' +
                 '            coalesce(fes.vlr_custo_medio,0) from est_tb_m_fes fes ');
             qry.ExecSQL;
             GerarSqlTxt('Inventário anterior('+ DateToStr(DataInvAtras) +') gerado, data/hora: ' + DateToStr(DataAtual) );
           end;

       end;
  finally
    FreeAndNil(qry);
    FreeAndNil(sm);
  end;
end;

procedure Tmythread.DesativarCliente;
var
  Rede:TInifile;
  sm: TSM;
  qryNfe:TSqlQuery;
  CAD_CD_C_CLI:TClientDataSet;
  dias:String;
begin

  try
    sm  := TSM.Create(nil);

    qryNfe := TSqlQuery.Create(nil);
    qryNfe.SQLConnection := SM.conexao;

    If not FileExists(ExtractFilePath(Application.ExeName)+'Rede.Ini') then
     begin
       exit;
     end;

    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');
    dias := Rede.ReadString('DEFINICAO_DE_DATABASE','DIAS_SEM_COMPRA','');


    if (dias <> '') and (StrToInt(dias)>0)  then
      begin
         CAD_CD_C_CLI := TClientDataSet.Create(nil);
         CAD_CD_C_CLI.SetProvider(sm.CAD_DP_C_CLI);
         CAD_CD_C_CLI.Close;
         CAD_CD_C_CLI.Data :=
          CAD_CD_C_CLI.DataRequest(VarArrayOf([7,'TRUE']));


         CAD_CD_C_CLI.First;
         while not CAD_CD_C_CLI.eof do
           begin
             qryNfe.Close;
             qryNfe.SQL.Clear;
             qryNfe.SQL.Add(' Select count(*) as qtde_nfe from FAT_TB_M_NFE nfe '+
                            ' left outer join cad_tb_c_cfo cfo on cfo.id_cfo=nfe.id_cfo  '+
                            ' where CFO.ID_CLASSE IN (''SP10'',''SP70'') and nfe.tipo_nf=''S'' and nfe.status=1 and nfe.faturada=true and '+
                            ' nfe.nfe_cod_sit not in (''02'',''04'',''05'') and '+
                            ' nfe.id_emitente='''+CAD_CD_C_CLI.FieldByName('id_cliente').AsString+''' and '+
                            ' nfe.DTA_EMISSAO<CURRENT_DATE AND nfe.DTA_EMISSAO>(CURRENT_DATE -'+dias+')  ');

             qryNfe.Open;

             if qryNfe.FieldByName('qtde_nfe').AsInteger=0 then
               begin
                CAD_CD_C_CLI.Edit;
                CAD_CD_C_CLI.FieldByName('ATIVO').AsBoolean := false;
                CAD_CD_C_CLI.Post;

               end;

             CAD_CD_C_CLI.Next;
           end;

      end;

    if CAD_CD_C_CLI <> nil then
        if CAD_CD_C_CLI.ChangeCount > 0 then
           CAD_CD_C_CLI.ApplyUpdates(0);


    qryNfe.Close;
  finally
    CAD_CD_C_CLI.Free;
    FreeAndNil(qryNfe);
    FreeAndNIl(Rede);
    FreeAndNil(sm);

  end;
end;


procedure Tmythread.EfetuarBackup;
Var
  Rede:TInifile;
  porta,ip,banco,programa,diretorio,arquivo:String;

  DataAtual, DataFinal: TDateTime;
  AnoIni,MesIni,DiaIni: Word;
  AnoFin,MesFin,DiaFin: Word;
  Hor,Min,Sec,MSec: Word;


begin

  {DataAtual := Now;
  DecodeDate(DataAtual,AnoIni,MesIni,DiaIni);

  DataFinal :=  EndOfTheMonth(DataAtual);
  DecodeDate(DataFinal,AnoFin,MesFin,DiaFin);}

  if not FileExists(ExtractFilePath(Application.ExeName)+'Rede.Ini') then
     begin
       exit;
     end;

  DecodeTime(now,Hor,Min,Sec,MSec);

  if not FileExists(ExtractFilePath(Application.ExeName)+'Rede.Ini') or
     not FileExists(ExtractFilePath(Application.ExeName)+'pg_dump.exe') or
     not FileExists(ExtractFilePath(Application.ExeName)+'libiconv-2.dll') or
     not FileExists(ExtractFilePath(Application.ExeName)+'libintl-8.dll') or
     not FileExists(ExtractFilePath(Application.ExeName)+'libpq.dll') then
     begin
       exit;
     end;

  try
    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');

    porta := Rede.ReadString('DEFINICAO_DE_DATABASE','BKP_PORTA_BANCO','');
    banco := Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO','');
    ip    := Rede.ReadString('DEFINICAO_DE_DATABASE','HOST','');

    if not DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Backup') then
     begin
        ForceDirectories(ExtractFilePath(Application.ExeName)+ 'Backup');
     end;


  finally
    FreeAndNIl(Rede);
  end;

  try
   arquivo := banco + '_'+formatdatetime('dd-mm-yyyy',now);
   diretorio := ExtractFilePath(Application.ExeName)+ 'Backup\';
   if not FileExists(diretorio+arquivo+'.backup') then
      begin
         if (Hor > 19) then
             begin
               programa := ExtractFilePath(Application.ExeName)+ 'pg_dump.exe';

               if (porta<>'') and (banco<>'') and (ip<>'') and (diretorio<>'') and (arquivo <>'') and (programa <> '') then
                 ShellExecute( handle, 'open', pchar(programa),
                        pchar('--host '+ ip +' --port '+ porta +
                        ' --username "postgres" --role "postgres" --no-password --format c --blobs --verbose --file '+diretorio+arquivo+' "'+banco+'" '), '', SW_SHOWMAXIMIZED{SW_HIDE});
             end;
       end;
  finally

  end;

end;


procedure Tmythread.Execute;
var
  today,ontem_des_cli,ontem_backup:TDate;
  horario:TTime;
  agora:TDateTime;
begin
  inherited;
  ontem_des_cli := StrToDateTime(formatdatetime('dd/mm/yyyy',now)+' 00:00:00');
  ontem_backup := ontem_des_cli;

  while 1 = 1 do
     begin
       sleep(strtoint(CMServerForm.txtTempInv.Text));
       Synchronize(AtualizaVCL);
       {//Desativar Clientes
       agora := now;
       today := StrToDateTime(formatdatetime('dd/mm/yyyy',agora)+' 00:00:00');

       if today<>ontem_des_cli then
         begin
          horario := StrToDateTime(formatdatetime('dd/mm/yyyy',today)+' '+formatdatetime('hh:mm:ss',agora));

          if (horario>StrToDateTime(formatdatetime('dd/mm/yyyy',today)+' 00:00:00')) and
             (horario<StrToDateTime(formatdatetime('dd/mm/yyyy',today)+' 06:00:00')) then
            begin
              Synchronize(DesativarCliente);
              ontem_des_cli := today;
            end;
         end; }

       //Backup do banco
         // Comentado por Maxsuel Victor, 13/12/2019
         // agora := now;
         // today := StrToDateTime(formatdatetime('dd/mm/yyyy',agora)+' 00:00:00');
         // if today<>ontem_backup then
         //    begin
         //   Synchronize(EfetuarBackup);
         //    ontem_backup := today;
         //    end;

     end;
end;



{procedure Tmythread.Execute;
var
  Rede:TInifile;
  today,horario_desativar_cli: TDateTime;
  hora,minuto,segundo,mili:Word;
  horario_atual_seg,horario_desativar_cli_seg:Integer;
  tempo_espera,atraso_seg:Integer;
  dias:String;
begin
  inherited;

  if (FID=1) then
    begin
     while 1 = 1 do
       begin
         sleep(strtoint(CMServerForm.txtTempInv.Text));
         Synchronize(AtualizaVCL);
       end;
    end;

   if (FID=2) then
    begin
     while 1 = 1  do
       begin
          horario_desativar_cli := EncodeTime(01,00,00,0); //hora, minuto, segundo e milisegundo
          atraso_seg := 180; //atraso de 3 minutos

          DecodeTime(horario_desativar_cli,hora,minuto,segundo,mili);
          horario_desativar_cli_seg :=  hora*3600+minuto*60+segundo;
          while true do
             begin
               today := now;
               DecodeTime(today,hora,minuto,segundo,mili);
               horario_atual_seg := hora*3600+minuto*60+segundo;
               if horario_atual_seg <= horario_desativar_cli_seg then
                   tempo_espera := horario_desativar_cli_seg - horario_atual_seg
               else
                  tempo_espera := (86400-horario_atual_seg) +horario_desativar_cli_seg;

               tempo_espera := (tempo_espera+atraso_seg)*1000;

               sleep(tempo_espera);

               Synchronize(DesativarCliente);
             end;
       end;
    end;


end; }

end.

