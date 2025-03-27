unit PCP_UN_M_OPR_ETQ_SEN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, vcl.Wwdbedit, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, Vcl.Buttons, System.IniFiles, Vcl.ExtCtrls;

type
  TPCP_FM_M_OPR_ETQ_SEN = class(TForm)
    btnOk: TBitBtn;
    btnSair: TBitBtn;
    lblItem: TLabel;
    txtCodFun: TJvDBComboEdit;
    txtDescItem: TwwDBEdit;
    Label9: TLabel;
    Label1: TLabel;
    txtSenha: TEdit;
    Label2: TLabel;
    txtMotivoReimpressa: TwwDBEdit;
    Label3: TLabel;
    txtLogin: TEdit;
    btnSolicitarLib: TBitBtn;
    chkLib: TCheckBox;
    TimerLib: TTimer;
    lblLiberacao: TLabel;
    procedure txtCodFunButtonClick(Sender: TObject);
    procedure txtCodFunExit(Sender: TObject);
    procedure txtSenhaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSolicitarLibClick(Sender: TObject);
    procedure btnVerifLibClick(Sender: TObject);
    procedure chkLibClick(Sender: TObject);
    procedure TimerLibTimer(Sender: TObject);
  private
    { Private declarations }
    procedure CriarArquivoLimpo;
  public
    { Public declarations }
    var
       xImprime: Boolean;

  end;

var
  PCP_FM_M_OPR_ETQ_SEN: TPCP_FM_M_OPR_ETQ_SEN;


implementation

{$R *.dfm}

uses PCP_UN_M_OPR_ETQ, PSQ_UN_X_FUN, uDmGeral, uProxy;

procedure TPCP_FM_M_OPR_ETQ_SEN.btnSolicitarLibClick(Sender: TObject);
var
  Rede:TInifile;
begin
  if trim(txtLogin.Text) <> '' then
     begin
       Showmessage('O campo login deve estar vazio.');
       exit;
     end;

  if trim(txtSenha.Text) <> '' then
     begin
       Showmessage('O campo senha deve estar vazio.');
       exit;
     end;

    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'ReqLibEtqSgq.Ini');

    dmGeral.BusFuncionario4(0,inttostr(xFuncionario));

    Rede.WriteString('SOLICITACAO','USUARIO',dmGeral.BUS_CD_C_FU4.FieldByName('nome').AsString);
    Rede.WriteString('SOLICITACAO','DATA',DateToStr(date));
    Rede.WriteString('SOLICITACAO','HORA',TimeToStr(time));
    Rede.WriteString('SOLICITACAO','SENHA_ENV',dmGeral.BUS_CD_C_FU4.FieldByName('senha').AsString);

    lblLiberacao.Caption := 'Aguardando liberação....!';
    lblLiberacao.font.Color := clBlack;

    dmGeral.BUS_CD_C_FU4.Close;

    TimerLib.Enabled := true;

end;

procedure TPCP_FM_M_OPR_ETQ_SEN.btnVerifLibClick(Sender: TObject);
var
  Rede:TInifile;
  senha_cripto: string;
begin
    if not FileExists(ExtractFilePath(Application.ExeName)+'EnvLibEtqSgq.Ini') then
       begin
         ShowMessage('A liberação não foi feita ainda!');
         abort;
       end;

    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'EnvLibEtqSgq.Ini');

    txtLogin.Text := Rede.ReadString('ENVIO','LOGIN','');
    //xReqData      := Rede.ReadString('ENVIO','DATA','');
    //xReqHora      := Rede.ReadString('ENVIO','HORA','');
    senha_cripto  := Rede.ReadString('ENVIO','SENHA_ENV','');


    dmGeral.BUS_CD_C_FU4.Close;
    dmGeral.BUS_CD_C_FU4.Data :=
    dmGeral.BUS_CD_C_FU4.DataRequest(VarArrayOf([4,txtLogin.Text,senha_cripto]));
    dmGeral.BUS_CD_C_FU4.Open;

    if dmgeral.BUS_CD_C_FU4.IsEmpty then
       begin
         lblLiberacao.Caption := 'Usuário que liberou não confere.';
         chkLib.Checked := false;
         exit;
       end;

    lblLiberacao.Caption := 'Liberado por: ' + copy(dmGeral.BUS_CD_C_FU4.FieldByName('login').AsString,1,10);
end;

procedure TPCP_FM_M_OPR_ETQ_SEN.chkLibClick(Sender: TObject);
begin



  lblLiberacao.Caption := '';

  CriarArquivoLimpo;
  if chkLib.Checked then
     begin
       if lblLiberacao.font.Color = clBlue then
          begin
            txtLogin.Text := '';
            txtSenha.text := '';
          end;

       btnSolicitarLib.Enabled := true;
       txtSenha.Enabled := false;
     end
  else
     begin
       lblLiberacao.Font.Color := clBlack;
       timerLib.Enabled := false;
       btnSolicitarLib.Enabled := false;
       txtSenha.Enabled := true;
     end;
end;

procedure TPCP_FM_M_OPR_ETQ_SEN.CriarArquivoLimpo;
var
  Rede:TInifile;
begin

    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'ReqLibEtqSgq.Ini');

    Rede.WriteString('SOLICITACAO','USUARIO','');
    Rede.WriteString('SOLICITACAO','DATA','');
    Rede.WriteString('SOLICITACAO','HORA','');
    Rede.WriteString('SOLICITACAO','SENHA_ENV','');

    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'EnvLibEtqSgq.Ini');

    Rede.WriteString('ENVIO','LOGIN','');
    Rede.WriteString('ENVIO','DATA','');
    Rede.WriteString('ENVIO','HORA','');
    Rede.WriteString('ENVIO','SENHA_ENV','');
end;

procedure TPCP_FM_M_OPR_ETQ_SEN.btnOkClick(Sender: TObject);
begin

  if trim(txtLogin.text) = '' then
     begin
       ShowMessage('O código do funcionário deve ser preenchido!');
       exit;
     end;

  if trim(txtSenha.text) = '' then
     begin
       ShowMessage('A senha do usuário deve ser informada!');
       exit;
     end;

  if trim(txtMotivoReimpressa.text) = '' then
     begin
       ShowMessage('O campo "Motivo da reimpressão" deve ser preenchido!');
       exit;
     end;

  PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('dta_reimpressa').AsDateTime := date;
  PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('hor_reimpressa').AsDateTime := time;

  //PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('int_selecao').AsBoolean := true;
  //PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('int_selecao').AsBoolean := false;

  xImprime := true;

  CriarArquivoLimpo;

  close;

end;

procedure TPCP_FM_M_OPR_ETQ_SEN.btnSairClick(Sender: TObject);
begin
  xImprime := false;
  close;

end;

procedure TPCP_FM_M_OPR_ETQ_SEN.FormCreate(Sender: TObject);
begin
  PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.Edit;
  CriarArquivoLimpo;
end;

procedure TPCP_FM_M_OPR_ETQ_SEN.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPCP_FM_M_OPR_ETQ_SEN.FormShow(Sender: TObject);
begin
  lblLiberacao.Caption := '';
  TimerLib.Enabled := false;
  txtLogin.SetFocus;
end;

procedure TPCP_FM_M_OPR_ETQ_SEN.TimerLibTimer(Sender: TObject);
var
  Rede:TInifile;
  senha_cripto: string;
begin
    if not FileExists(ExtractFilePath(Application.ExeName)+'EnvLibEtqSgq.Ini') then
       begin
         lblLiberacao.Refresh;
         lblLiberacao.Caption := 'Aguardando liberação....!';
       end;

    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'EnvLibEtqSgq.Ini');

    txtLogin.Text := Rede.ReadString('ENVIO','LOGIN','');
    //xReqData      := Rede.ReadString('ENVIO','DATA','');
    //xReqHora      := Rede.ReadString('ENVIO','HORA','');
    senha_cripto  := Rede.ReadString('ENVIO','SENHA_ENV','');


    if txtLogin.Text = '' then
       begin
         lblLiberacao.Refresh;
         lblLiberacao.Caption := 'Aguardando liberação....!';
       end
    else
       begin
         dmGeral.BUS_CD_C_FU4.Close;
         dmGeral.BUS_CD_C_FU4.Data :=
         dmGeral.BUS_CD_C_FU4.DataRequest(VarArrayOf([4,txtLogin.Text,senha_cripto]));
         dmGeral.BUS_CD_C_FU4.Open;

         if dmgeral.BUS_CD_C_FU4.IsEmpty then
            begin
              lblLiberacao.Caption := 'Usuário que liberou não confere.';
              chkLib.Checked := false;
              exit;
            end;

          txtSenha.Text := senha_cripto;
          timerLib.Enabled := false;
          chkLib.checked := false;

          lblLiberacao.Caption := 'Liberado por: ' + copy(dmGeral.BUS_CD_C_FU4.FieldByName('nome').AsString,1,20);
          lblLiberacao.Font.Color := clBlue;

          txtSenha.enabled := false;

          txtMotivoReimpressa.SetFocus;

          dmGeral.BUS_CD_C_FU4.close;
       end;
end;

procedure TPCP_FM_M_OPR_ETQ_SEN.txtCodFunButtonClick(Sender: TObject);
begin
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;
      if not dmGeral.CAD_CD_C_FUN.IsEmpty then
         begin
           PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('int_nome_func_reimp').Text :=
               dmGeral.CAD_CD_C_FUN.FieldByName('nome').AsString;
         end;
   PSQ_FM_X_FUN.Free;
end;

procedure TPCP_FM_M_OPR_ETQ_SEN.txtCodFunExit(Sender: TObject);
begin

  if btnSair.Enabled then
     begin
       exit;
     end;

  PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('int_nome_func_reimp').Text := '';

  if PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('id_func_reimpressa').Text = '' then
     begin
       ShowMessage('O campo "Código do funcionário" deve ser prenchido.');
       txtCodFun.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario(0,PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('id_func_reimpressa').Text);
   if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Funcionário não encontrado.');
       PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('id_func_reimpressa').Text := '';
       PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('int_nome_func_reimp').Text := '';
       txtCodFun.SetFocus;
       Exit;
     end;

   PCP_FM_M_OPR_ETQ.PCP_CD_M_ETQ.FieldByName('int_nome_func_reimp').Text :=
     dmGeral.BUS_CD_C_FUN.FieldByName('nome').AsString;
end;

procedure TPCP_FM_M_OPR_ETQ_SEN.txtSenhaExit(Sender: TObject);
var
  SMPrincipal: TSMClient;
  Senha: String;
begin

  {if btnSair.Enabled then
     begin
       exit;
     end;  }

  if txtlogin.focused then
     exit;

  if trim(txtLogin.text) = '' then
     begin
       ShowMessage('O campo "Login" deve ser prenchido.');
       txtLogin.SetFocus;
       Exit;
     end;

  if trim(txtSenha.Text) = '' then
     begin
       ShowMessage('A senha deve ser informada.');
       txtSenha.SetFocus;
       exit;
     end;

  if chkLib.Checked then
     begin
       Senha := trim(txtSenha.Text);
     end
  else
     begin
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          Senha:= Trim(SMPrincipal.enMD5(txtSenha.Text));
        finally
          FreeAndNil(SMPrincipal);
        end;
     end;

  dmGeral.CAD_CD_C_FUN.Close;
  dmGeral.CAD_CD_C_FUN.Data :=
  dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([7,txtlogin.text]));
  dmGeral.CAD_CD_C_FUN.Open;
  if (dmGeral.CAD_CD_C_FUN.IsEmpty) then
     begin
       Showmessage('Login inválido.');
       txtlogin.SetFocus;
       Abort;
     end;

  if not (dmGeral.CAD_CD_C_FUN.FieldByName('sgq_reimprime_etq').AsBoolean) then
     begin
       Showmessage('Usuário não tem permissão para autorizar reimpressão de etiqueta!');
       txtSenha.OnExit := nil;
       txtSenha.Text := '';
       txtlogin.SetFocus;
       txtSenha.OnExit := txtSenhaExit;
       exit;
     end;


  dmGeral.CAD_CD_C_FUN.Close;
  dmGeral.CAD_CD_C_FUN.Data :=
  dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([4,txtlogin.text,Senha]));
  dmGeral.CAD_CD_C_FUN.Open;

  if dmGeral.CAD_CD_C_FUN.IsEmpty then
     begin
       Showmessage('Senha inválida.');
       txtSenha.SetFocus;
       Abort;
     end;
end;

end.
