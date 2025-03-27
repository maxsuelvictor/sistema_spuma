unit FAT_UN_M_PED_SEN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFAT_FM_M_PED_SEN = class(TForm)
    Label9: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    txtSenha: TEdit;
    txtLogin: TEdit;
    btnOk: TBitBtn;
    btnSair: TBitBtn;
    procedure txtSenhaExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      xPermitePedSen:Boolean;
  end;

var
  FAT_FM_M_PED_SEN: TFAT_FM_M_PED_SEN;

implementation

{$R *.dfm}

uses uDmGeral, uProxy;

procedure TFAT_FM_M_PED_SEN.btnOkClick(Sender: TObject);
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

  xPermitePedSen := true;

  close;

end;

procedure TFAT_FM_M_PED_SEN.btnSairClick(Sender: TObject);
begin
  xPermitePedSen := false;
  close;
end;

procedure TFAT_FM_M_PED_SEN.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_PED_SEN.FormShow(Sender: TObject);
begin
  xPermitePedSen := false;
  txtLogin.SetFocus;
end;

procedure TFAT_FM_M_PED_SEN.txtSenhaExit(Sender: TObject);
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

    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    Senha:= Trim(SMPrincipal.enMD5(txtSenha.Text));
  finally
    FreeAndNil(SMPrincipal);
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

  {if not (dmGeral.CAD_CD_C_FUN.FieldByName('seg_per_desc_maior').AsBoolean) then
     begin
       Showmessage('Usuário não tem per!');
       txtSenha.OnExit := nil;
       txtSenha.Text := '';
       txtlogin.SetFocus;
       txtSenha.OnExit := txtSenhaExit;
       exit;
     end; }



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
