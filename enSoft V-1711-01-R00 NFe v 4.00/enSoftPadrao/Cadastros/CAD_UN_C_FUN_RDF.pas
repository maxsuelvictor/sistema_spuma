unit CAD_UN_C_FUN_RDF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, cxButtons,
  Vcl.ExtCtrls;

type
  TCAD_FM_C_FUN_RDF = class(TForm)
    pnlPrincipal: TPanel;
    btnSair: TcxButton;
    lblTitulo: TLabel;
    lblSenha: TLabel;
    lblConfirmarSenha: TLabel;
    btnConfirmar: TcxButton;
    txtNovaSenha: TMaskEdit;
    txtNovaSenhaConf: TMaskEdit;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  public
     var
      senhaRedefinida:boolean;
    { Public declarations }
  end;

var
  CAD_FM_C_FUN_RDF: TCAD_FM_C_FUN_RDF;

implementation

{$R *.dfm}

uses uValidacoes, uDmGeral, uProxy;

procedure TCAD_FM_C_FUN_RDF.btnConfirmarClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  senha:string;
begin
   senha := '';
   dmGeral.CAD_CD_C_FUN.Edit;
   try
     SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
     ValidaCAD_CD_C_FUN_Senha('','',txtNovaSenha.text,txtNovaSenhaConf.text);
     senha := Trim(SMPrincipal.enMD5(trim(txtNovaSenha.Text)));
   finally
     FreeAndNil(SMPrincipal);
   end;
   if (senha = '') then
      begin
        ShowMessage('Falha no processo de redefinição de senha.');
        exit;
      end;
   dmGeral.CAD_CD_C_FUNsenha.AsString := senha;
   dmGeral.CAD_CD_C_FUN.FieldByName('SEG_REDEF_SENHA').AsBoolean := False;
   dmgeral.CAD_CD_C_FUN.Post;
   dmGeral.CAD_CD_C_FUN.ApplyUpdates(0);
   ShowMessage('A senha foi alterada com sucesso.');
   senhaRedefinida := true;
   Close;
end;

procedure TCAD_FM_C_FUN_RDF.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCAD_FM_C_FUN_RDF.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCAD_FM_C_FUN_RDF.FormShow(Sender: TObject);
begin
  senhaRedefinida := false;
end;

end.
