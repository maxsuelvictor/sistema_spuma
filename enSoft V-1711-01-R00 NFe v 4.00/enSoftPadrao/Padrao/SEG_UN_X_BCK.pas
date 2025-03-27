unit SEG_UN_X_BCK;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel,FileCtrl,System.IniFiles,ShellAPI;

type
  TSEG_FM_X_BCK = class(TForm)
    pnlTop: TJvPanel;
    pnlCima: TJvPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    gbLocalBanco: TGroupBox;
    lblIP: TLabel;
    lblPorta: TLabel;
    edtIP: TEdit;
    edtPorta: TEdit;
    lblSalvar: TLabel;
    edtDiretorio: TEdit;
    btNavegar: TButton;
    btSair: TButton;
    btBackup: TButton;
    lblNomeArq: TLabel;
    edtArquivo: TEdit;
    Memo1: TMemo;
    procedure btNavegarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btBackupClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function BusDadosBackup():boolean;
    function VerificarArquivos():boolean;
    function VerificarParametros:boolean;
    function gerarDiretorio():string;
    function gerarNomeArquivo():string;
  public
    { Public declarations }
      xhost,xporta,xbck_local,xdiretorio,xNomeBanco:string;
      fechar:boolean;
  end;

var
  SEG_FM_X_BCK: TSEG_FM_X_BCK;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TSEG_FM_X_BCK.btBackupClick(Sender: TObject);
var
  programa:string;
  diretorio:string;
  Arquivo: TextFile;
  texto: string;
begin
  Screen.Cursor := crHourGlass;
  try
   if(edtDiretorio.Text<>'') then
     begin
     if not DirectoryExists(edtDiretorio.text) then
        ForceDirectories(edtDiretorio.text);
     if DirectoryExists(edtDiretorio.text) then
        begin
           diretorio := edtDiretorio.Text;
           if(not diretorio.EndsText('\',diretorio))then
              begin
                diretorio:=diretorio+'\';
              end;
           programa := ExtractFilePath(Application.ExeName)+ 'pg_dump.exe';

          texto := pchar('--host '+ edtIP.text +' --port '+ edtPorta.text +' --username "postgres"  --role "postgres" --no-password  --format c  --blobs --verbose --file "'+diretorio+edtArquivo.text+'" "'+xNomeBanco+'" ');
          Memo1.Lines.Add(texto);

          if(ShellExecute( handle, 'open', pchar(programa),
            pchar('--host '+ edtIP.text +' --port '+ edtPorta.text +' --username "postgres"  --role "postgres" --no-password  --format c  --blobs --verbose --file "'+diretorio+edtArquivo.text+'" "'+xNomeBanco+'" '), '', SW_SHOWMAXIMIZED   )<=32)then
            begin
              ShowMessage('Não foi possível gerar arquivo de backup no diretório especificado!!');
            end;

        { if(ShellExecute( handle, 'open', pchar(programa),
            pchar('--host '+ edtIP.text +' --port '+ edtPorta.text +' --username "postgres" --format c --verbose --file "'+diretorio+edtArquivo.text+'" "'+xNomeBanco+'" '), '', SW_SHOWMAXIMIZED   )<=32)then
            begin
              ShowMessage('Não foi possível gerar arquivo de backup no diretório especificado!!');
            end; }
        end
      else
        begin
          ShowMessage('Não foi possível gerar arquivo de backup no diretório especificado!!');
        end;
     end
   else
     begin
       ShowMessage('É preciso informar o local onde o arquivo de backup será salvo!!');
     end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TSEG_FM_X_BCK.btNavegarClick(Sender: TObject);
var
  xDiretorio:string;
begin

SelectDirectory('Selecione uma pasta', '', xDiretorio);
edtDiretorio.Text:=xDiretorio+'\';

end;



procedure TSEG_FM_X_BCK.btSairClick(Sender: TObject);
begin
   if FileExists(ExtractFilePath(Application.ExeName)+ 'bck.bat') then
                DeleteFile(ExtractFilePath(Application.ExeName)+ 'bck.bat');
   FreeAndNil(SEG_FM_X_BCK);
end;

procedure TSEG_FM_X_BCK.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    FreeAndNil(SEG_FM_X_BCK);
end;

procedure TSEG_FM_X_BCK.FormCreate(Sender: TObject);
begin

   WindowState := wsMaximized;
   self.FormStyle := fsMDIChild;

   if(fechar)then
     begin
       FreeAndNil(SEG_FM_X_BCK);
     end;
end;

function TSEG_FM_X_BCK.BusDadosBackup;
var
  Rede:TInifile;
  xMsg:string;
begin
  Result := true;
  xMsg := '';
  xhost :='';
  xporta :='';
  xbck_local :='';
  xdiretorio :='';
  xNomeBanco := '';

  Result := VerificarArquivos();

  if(Result)then
   begin

     if not FileExists(ExtractFilePath(Application.ExeName)+'RedeCli.Ini') then
       begin
         xMsg := '   RedeCli.Ini'+#13+#10;
       end;
     if not FileExists(ExtractFilePath(Application.ExeName)+'Rede.Ini') then
       begin
         xMsg := xMsg+'   Rede.Ini'+#13+#10;
       end;

     if (xMsg <> '') then
       begin
         xMsg := ' Os seguintes arquivos encontram-se desconfigurados: '+#13+#10+
                   xMsg+' Configure-os e reinicie o sistema! '+#13+#10;
         ShowMessage(xMsg);
         Result := false;
       end;

     if (Result = true) then
       begin
         Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCli.Ini');
         xhost := Rede.ReadString('DEFINICAO_DE_DATABASE','HOST','');
         xporta := Rede.ReadString('DEFINICAO_DE_DATABASE','BKP_PORTA_BANCO','');
         xbck_local := Rede.ReadString('DEFINICAO_DE_DATABASE','BKP_LOCAL','');

         Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');
         xNomeBanco := Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO','');

         Result:=VerificarParametros;
       end;
   end;

end;


function TSEG_FM_X_BCK.VerificarParametros;
var
  xMsg:string;
begin
  Result:=true;
  xMsg:='';
   if xhost='' then
     xMsg := xMsg+#13+#10+'  HOST';

  if xporta='' then
     xMsg := xMsg+#13+#10+'  BKP_PORTA_BANCO';

  if xbck_local='' then
     xMsg := xMsg+#13+#10+'  BKP_LOCAL';

  if(xMsg<>'') then
    begin
      xMsg := 'No arquivo ''RedeCli.Ini'' deve-se preencher os seguintes parâmetros:'  +xMsg;
    end;

  if (xNomeBanco='') then
    begin
     xMsg := xMsg+#13+#10+#13+#10+'No arquivo ''Rede.Ini'' deve-se preencher os seguintes parâmetros:'+#13+#10+'  BANCO';
    end;

  if (xMsg <>'') then
    begin
      ShowMessage(xMsg);
      Result:=false;
    end;
end;



function TSEG_FM_X_BCK.VerificarArquivos;
var
  Msg:string;
begin
  Result :=true;
  Msg:='';
  if not FileExists(ExtractFilePath(Application.ExeName)+'pg_dump.exe') then
     Msg := #13+#10+'  pg_dump.exe';

  if not FileExists(ExtractFilePath(Application.ExeName)+'libiconv-2.dll') then
     Msg := Msg+#13+#10+'  libiconv-2.dll';

  if not FileExists(ExtractFilePath(Application.ExeName)+'libpq.dll') then
     Msg := Msg+#13+#10+'  libpq.dll';

  if not FileExists(ExtractFilePath(Application.ExeName)+'libintl-8.dll') then
     Msg := Msg+#13+#10+'  libintl-8.dll';

  {if not FileExists(ExtractFilePath(Application.ExeName)+'zlib1.dll') then
     Msg := Msg+#13+#10+'  zlib1.dll';   }

  if(Msg<>'') then
    begin
      Msg := 'Não foi encontrado os seguintes arquivos para processo de backup na pasta do sistema:'+Msg;
      ShowMessage(Msg);
      Result:=false;
    end;


end;


function TSEG_FM_X_BCK.gerarDiretorio;
begin
   Result := '';
   if(String.UpperCase(xbck_local)='PADRAO') then
    begin
      Result:=ExtractFilePath(Application.ExeName)+'backup\';
     end
   else
     begin
      Result:=xbck_local;
     end;
end;

function TSEG_FM_X_BCK.gerarNomeArquivo;
var
  xNomeArq:string;
begin
  Result :='';
  xNomeArq:='emp';
  xNomeArq:= xNomeArq+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString+'_';
  xNomeArq := xNomeArq+FormatDateTime('ddmmyyyy',now);
  xNomeArq := xNomeArq+'.backup';
  Result := xNomeArq;
end;


procedure TSEG_FM_X_BCK.FormShow(Sender: TObject);
begin
   fechar :=false;
   pnldados.top := (pnlPrincipal.Height div 2) - (pnldados.height div 2);
   pnldados.left := (pnlPrincipal.Width div 2) - (pnldados.width div 2);

   if(BusDadosBackup) then
     begin
        edtIP.Text := xhost;
        edtPorta.Text := xporta;
        edtDiretorio.Text := gerarDiretorio();
        edtArquivo.Text := gerarNomeArquivo();
     end
   else
     begin
         fechar := true;
     end;

   if FileExists(ExtractFilePath(Application.ExeName)+ 'bck.bat') then
      DeleteFile(ExtractFilePath(Application.ExeName)+ 'bck.bat');

end;
end.
