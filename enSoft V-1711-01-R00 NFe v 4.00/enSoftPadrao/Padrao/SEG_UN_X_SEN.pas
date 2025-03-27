unit SEG_UN_X_SEN;

interface

uses
  Winapi.Windows, Winapi.Messages, Winapi.WinSock, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons,  Vcl.Mask, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Data.DB, vcl.wwdatsrc, JvExExtCtrls, JvExtComponent, JvPanel, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TSEG_FM_X_SEN = class(TForm)
    btnAlterar: TBitBtn;
    txtUsuario: TEdit;
    lblUsuario: TLabel;
    Label2: TLabel;
    txtSenha: TMaskEdit;
    dsEmpresa: TwwDataSource;
    grdEmpresa: TwwDBGrid;
    pnlTop: TJvPanel;
    lblTitulo: TLabel;
    lblVersao: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdEmpresaDblClick(Sender: TObject);
    procedure txtSenhaExit(Sender: TObject);
    procedure pnlTopMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtUsuarioExit(Sender: TObject);
  private
    { Private declarations }
    function BusUsuario(Login: string; senha:string):boolean;
    function GetLocalIP: String;
  public
    { Public declarations }
  end;

var
  SEG_FM_X_SEN: TSEG_FM_X_SEN;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, CAD_UN_C_FUN_RDF, enConstantes, uValidacoes;


procedure TSEG_FM_X_SEN.btnAlterarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TSEG_FM_X_SEN.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TSEG_FM_X_SEN.FormShow(Sender: TObject);
var
  WSAData      : TWSAData;
  HostEnt      : PHostEnt;
  Name, Result : string;
begin


  lblVersao.Caption := 'Vers�o do Sistema: ' + CVersaoSistema;

  dmGeral.CAD_CD_C_PAR.Close;
  dmGeral.CAD_CD_C_PAR.Data :=
  dmGeral.CAD_CD_C_PAR.DataRequest(
            VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_PAR.IndexFieldNames := 'ID_EMPRESA';
  if (dmGeral.CAD_CD_C_PAR.RecordCount > 0) then
    begin
      dmGeral.CAD_CD_C_PAR.First;
    end;
  txtUsuario.SetFocus;

  //  GetLocalIP;

  {WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PAnsiChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PAnsiChar(Name));
  with HostEnt^ do
    Result:=Format('%d.%d.%d.%d',[Byte(h_addr^[0]),
    Byte(h_addr^[1]),Byte(h_addr^[2]),Byte(h_addr^[3])]);
    WSACleanup;
    txtUsuario.text := Result; }


end;

procedure TSEG_FM_X_SEN.txtSenhaExit(Sender: TObject);
begin
  { if BusUsuario(trim(txtUsuario.Text), txtSenha.Text)=true then
    begin
      if dmgeral.CAD_CD_C_PAR.RecordCount=1 then
         grdEmpresaDblClick(self);
    end; }
 //Codigo teve que ser substituido por este, pois foi implementado
  //acesso do usu�rio para determinada empresa.Resp:Luan.Data:02/09/2017
 if dmgeral.CAD_CD_C_PAR.RecordCount=1 then
     if BusUsuario(trim(txtUsuario.Text), txtSenha.Text)=true then
        begin
          grdEmpresaDblClick(self);
        end;
end;

procedure TSEG_FM_X_SEN.txtUsuarioExit(Sender: TObject);
var
  focarCampoSenha:boolean;
begin
  if btnAlterar.Focused then
    begin
      exit;
    end;

  focarCampoSenha := true;
  dmGeral.CAD_CD_C_FUN.Close;
  dmGeral.CAD_CD_C_FUN.Data :=
       dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([7, txtUsuario.Text]));
  if (not dmGeral.CAD_CD_C_FUN.IsEmpty) then
    begin
      if ((dmGeral.CAD_CD_C_FUN.FieldByName('SEG_HABILITAR_SEG').AsBoolean = True) and
         (dmGeral.CAD_CD_C_FUN.FieldByName('SEG_REDEF_SENHA').AsBoolean = True)) then
         begin
            ShowMessage('� necess�rio redefinir a senha.');
            CAD_FM_C_FUN_RDF := TCAD_FM_C_FUN_RDF.Create(Self);
            CAD_FM_C_FUN_RDF.ShowModal;
            focarCampoSenha := CAD_FM_C_FUN_RDF.senhaRedefinida;
            CAD_FM_C_FUN_RDF.Free;
         end;
    end;
  if (focarCampoSenha = false) then
    begin
      txtUsuario.SetFocus;
      exit;
    end;
end;

procedure TSEG_FM_X_SEN.grdEmpresaDblClick(Sender: TObject);
begin
  BusUsuario(trim(txtUsuario.Text), txtSenha.Text);

  if not VerifVersao then
     begin
       ShowMessage('O sistema foi atualizado, sua verst�o est� incompat�vel.');
       abort;
     end;

  if not dmgeral.CAD_CD_C_PAR.IsEmpty then
     ModalResult := mrOK;
end;

procedure TSEG_FM_X_SEN.grdEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
  begin
    BusUsuario(trim(txtUsuario.Text), txtSenha.Text);
    if not VerifVersao then
       begin
         ShowMessage('O sistema foi atualizado, sua verst�o est� incompat�vel.');
         abort;
       end;
    if not dmgeral.CAD_CD_C_PAR.IsEmpty then
       ModalResult := mrOK;
  end;
end;

procedure TSEG_FM_X_SEN.pnlTopMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
 SC_DRAGMOVE = $F012;
begin
if Button = mbleft then
 begin
 ReleaseCapture;
 SEG_FM_X_SEN.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
 end;
end;

function TSEG_FM_X_SEN.BusUsuario(Login: string; senha:string):boolean;
var
  SMPrincipal : TSMClient;
  xSenha:string;
begin


  try
    if btnAlterar.focused then Exit;
  finally
    begin
      if btnAlterar.focused then
         begin
           txtSenha.Text := '';
         end;
    end;
  end;

  try
    if txtUsuario.focused then Exit;
  finally
    begin
      if btnAlterar.focused then
         begin
           txtSenha.Text := '';
         end;
    end;
  end;



  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    xSenha:= Trim(SMPrincipal.enMD5(senha));
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.CAD_CD_C_FUN.Close;
  dmGeral.CAD_CD_C_FUN.Data :=
  dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([4,login,xSenha]));
  dmGeral.CAD_CD_C_FUN.Open;
  result:=false;

  if dmGeral.CAD_CD_C_FUN.RecordCount=0 then
     begin
       result:=false;
       Showmessage('Usu�rio ou senha invalida.');
       Abort;
     end;

  if not dmGeral.CAD_CD_C_FUN_EMP.IsEmpty then
    begin
      if (dmGeral.CAD_CD_C_FUN_EMP.Locate('ID_EMPRESA',dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,[]) and
         (dmGeral.CAD_CD_C_FUN_EMP.FieldByName('PERMITIR_ACESSO').AsBoolean = false)) then
        begin
           result:=false;
           Showmessage('Usu�rio n�o tem permiss�o de acesso � empresa selecionada.');
           Abort;
        end;
    end;


  result:=true;
end;



function TSEG_FM_X_SEN.GetLocalIP: String;
var
  ipwsa:TWSAData;
  p:PHostEnt;
  s:array[0..128] of char;
  c : PAnsiChar;
begin
  c := '';
try
  wsastartup(257,ipwsa);
  GetHostName(@s, 128);
  p := GetHostByName(@s);
  c := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
except
  on E: Exception do
    begin
    //   TVSMLogUtils.GetInstance.LogE(E.Message);
    end;
end;
    Result := String(c);
end;




end.
