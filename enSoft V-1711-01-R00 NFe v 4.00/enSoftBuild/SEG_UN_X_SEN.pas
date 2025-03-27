unit SEG_UN_X_SEN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Data.DB, vcl.wwdatsrc,
  JvExExtCtrls, JvExtComponent, JvPanel, dxGDIPlusClasses;

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
    imgLogo: TImage;
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
begin

  lblVersao.Caption := 'Versão do Sistema: ' + CVersaoSistema;

  dmGeral.CAD_CD_C_PAR.Open;
  dmgeral.CAD_CD_C_PAR.IndexFieldNames := 'id_empresa';
  txtUsuario.SetFocus;
end;

procedure TSEG_FM_X_SEN.txtSenhaExit(Sender: TObject);
begin
  { if BusUsuario(trim(txtUsuario.Text), txtSenha.Text)=true then
    begin
      if dmgeral.CAD_CD_C_PAR.RecordCount=1 then
         grdEmpresaDblClick(self);
    end; }
 //Codigo teve que ser substituido por este, pois foi implementado
  //acesso do usuário para determinada empresa.Resp:Luan.Data:02/09/2017
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
            ShowMessage('É necessário redefinir a senha.');
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
         ShowMessage('Versão incompatível.');
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
       Showmessage('Usuário ou senha invalida.');
       Abort;
     end;

  if not dmGeral.CAD_CD_C_FUN_EMP.IsEmpty then
    begin
      if (dmGeral.CAD_CD_C_FUN_EMP.Locate('ID_EMPRESA',dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,[]) and
         (dmGeral.CAD_CD_C_FUN_EMP.FieldByName('PERMITIR_ACESSO').AsBoolean = false)) then
        begin
           result:=false;
           Showmessage('Usuário não tem permissão de acesso à empresa selecionada.');
           Abort;
        end;
    end;


  result:=true;
end;



end.
