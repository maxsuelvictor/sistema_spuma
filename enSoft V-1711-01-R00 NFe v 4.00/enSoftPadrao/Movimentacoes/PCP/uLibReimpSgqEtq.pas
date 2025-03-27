unit uLibReimpSgqEtq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  DataSnap.DSproxy,DataSnap.DSSession,System.JSON,  Data.DBXJson, IPPeerClient,
  Datasnap.DSCommon,System.IniFiles;

type

  TfrmLibReimpSgqEtq = class(TForm)
    lblStatusSolicitacao: TLabel;
    btnReimpressao: TButton;
    Label3: TLabel;
    Label4: TLabel;
    lblUsuario: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblData: TLabel;
    lblHora: TLabel;
    btnSair: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnReimpressaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure msgCallBack(mensagem: String);
    procedure EmpilharMsg(mensagem: String);
    procedure liberarSolicitacao;
    procedure LimparArquivoEnvio;
  end;

var
  frmLibReimpSgqEtq: TfrmLibReimpSgqEtq;
  xReqUsuario,xReqData,xReqHora,xReqSenha_env: String;


implementation
uses uProxy, uDmGeral, enSoftMenu;

{$R *.dfm}

procedure TfrmLibReimpSgqEtq.btnReimpressaoClick(Sender: TObject);
begin
  liberarSolicitacao;
  ShowMessage('Liberado!');
  close;
end;

procedure TfrmLibReimpSgqEtq.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLibReimpSgqEtq.EmpilharMsg(mensagem: String);
begin
end;


procedure TfrmLibReimpSgqEtq.FormCreate(Sender: TObject);
var
  Rede:TInifile;
begin

    lblStatusSolicitacao.Caption := '';
    lblUsuario.Caption           := '';
    lblData.Caption              := '';
    lblHora.Caption              := '';


    if not FileExists(ExtractFilePath(Application.ExeName)+'ReqLibEtqSgq.Ini') then
       begin
         lblStatusSolicitacao.Caption := 'NÃO EXISTE SOLICITAÇÃO RE-IMPRESSÃO!';
         ShowMessage('O arquivo .... .ini desta operação não foi encontrado!');
         btnReimpressao.Enabled := false;
         abort;
       end;

    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'ReqLibEtqSgq.Ini');

    xReqUsuario   := Rede.ReadString('SOLICITACAO','USUARIO','');
    xReqData      := Rede.ReadString('SOLICITACAO','DATA','');
    xReqHora      := Rede.ReadString('SOLICITACAO','HORA','');
    xReqSenha_env := Rede.ReadString('SOLICITACAO','SENHA_ENV','');


    if trim(xReqUsuario) = '' then
       lblStatusSolicitacao.Caption := 'NÃO EXISTE SOLICITAÇÃO DE RE-IMPRESSÃO!'
    else
       begin
         lblStatusSolicitacao.Caption := 'AGUARDANDO SOLICITAÇÃO DE RE-IMPRESSÃO .';
         lblStatusSolicitacao.Font.Color   := clBlue;
         lblUsuario.Caption           := xReqUsuario;
         lblData.Caption              := xReqData;
         lblHora.Caption              := xReqHora;
       end;

    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'EnvLibEtqSgq.Ini');

    Rede.WriteString('ENVIO','LOGIN','');
    Rede.WriteString('ENVIO','DATA','');
    Rede.WriteString('ENVIO','HORA','');
    Rede.WriteString('ENVIO','SENHA_ENV','');

end;

procedure TfrmLibReimpSgqEtq.liberarSolicitacao;
var
  Rede:TInifile;
begin
    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'EnvLibEtqSgq.Ini');

    dmGeral.BusFuncionario4(0,inttostr(xFuncionario));

    Rede.WriteString('ENVIO','LOGIN',dmGeral.BUS_CD_C_FU4.FieldByName('login').AsString);
    Rede.WriteString('ENVIO','DATA',DateToStr(date));
    Rede.WriteString('ENVIO','HORA',TimeToStr(time));
    Rede.WriteString('ENVIO','SENHA_ENV',dmGeral.BUS_CD_C_FU4.FieldByName('senha').AsString);

    dmGeral.BUS_CD_C_FU4.close;
end;

procedure TfrmLibReimpSgqEtq.LimparArquivoEnvio;
var
  Rede:TInifile;
begin
    {Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'EnvLibEtqSgq.Ini');

    Rede.WriteString('ENVIO','LOGIN','');
    Rede.WriteString('ENVIO','DATA','');
    Rede.WriteString('ENVIO','HORA','');
    Rede.WriteString('ENVIO','SENHA_ENV','');}


    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'ReqLibEtqSgq.Ini');

    Rede.WriteString('SOLICITACAO','USUARIO','');
    Rede.WriteString('SOLICITACAO','DATA','');
    Rede.WriteString('SOLICITACAO','HORA','');
    Rede.WriteString('SOLICITACAO','SENHA_ENV','');
end;

procedure TfrmLibReimpSgqEtq.msgCallBack(mensagem: String);
begin
end;

end.
