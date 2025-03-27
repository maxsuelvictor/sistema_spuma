unit SEG_UN_X_SEN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,IdHashMessageDigest, Data.DB, vcl.wwdatsrc,
  JvExExtCtrls, JvExtComponent, JvPanel, dxGDIPlusClasses, Vcl.Menus;

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
    imgLogo: TImage;
    lblVersao: TLabel;
    pmImpEmp: TPopupMenu;
    btnImpEmp: TMenuItem;
    Label1: TLabel;
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

    procedure btnImpEmpClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    function BusUsuario(Login: string; senha:string):boolean;
    function CriptSenha(const texto: string): string;
    procedure ImportarEmpresa;
    procedure AbrirTelaImportaLogin;
  public
    { Public declarations }
  end;

var
  SEG_FM_X_SEN: TSEG_FM_X_SEN;

implementation

{$R *.dfm}

uses uDmGeral{, uProxy, CAD_UN_C_FUN_RDF,} {enConstantes, uValidacoes},
  uDmGeralSer, SEG_UN_X_IMP, PAD_UN_X_PAD, enConstantes;


procedure TSEG_FM_X_SEN.btnAlterarClick(Sender: TObject);
begin
  Application.terminate;
end;

procedure TSEG_FM_X_SEN.ImportarEmpresa;
var
  msg:String;
begin

  dmGeral.ImpEmpresa(msg);
  dmGeral.CAD_CD_C_PAR.IndexFieldNames := 'ID_EMPRESA';
  ShowMessage(msg);

end;


procedure TSEG_FM_X_SEN.AbrirTelaImportaLogin;
begin

  if MessageDlg('Para reimportar funcionário é necessário conectar-se com a base de dados principal. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if (dmGeralSer.AcessarBancoRemoto) then
         begin
          SEG_FM_X_IMP := TSEG_FM_X_IMP.Create(Self);
          SEG_FM_X_IMP.ShowModal;
          SEG_FM_X_IMP.Free;
         end;
     end;

end;



procedure TSEG_FM_X_SEN.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f7 then
     begin
        dmGeral.FAT_CD_M_PED.Close;
        dmGeral.FAT_CD_M_PED.Data :=
        dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([100,'']));

        IF not dmGeral.FAT_CD_M_PED.IsEmpty then
          begin
           ShowMessage('Há pedidos a serem descarregados.');
           exit;
          end;
        AbrirTelaImportaLogin;
     end;
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

  dmGeral.CAD_CD_C_PAR.Close;
  dmGeral.CAD_CD_C_PAR.Data :=
  dmGeral.CAD_CD_C_PAR.DataRequest(
            VarArrayOf([1, '']));


  if (dmGeral.CAD_CD_C_PAR.RecordCount > 0) then
    begin
      dmGeral.CAD_CD_C_PAR.IndexFieldNames := 'ID_EMPRESA';
      dmGeral.CAD_CD_C_PAR.First;
    end
  else
    begin
      if (dmGeralSer.AcessarBancoRemoto) then
         begin
           ImportarEmpresa;
         end;
      dmGeralSer.Conexao.Close;
      dmGeralSer.Conexao.CloseDataSets;
      dmGeralSer.Conexao.Params.Clear;
    end;

  txtUsuario.SetFocus;
end;

procedure TSEG_FM_X_SEN.txtSenhaExit(Sender: TObject);
begin
 if BusUsuario(trim(txtUsuario.Text), txtSenha.Text)=true then
    begin
      if dmgeral.CAD_CD_C_PAR.RecordCount=1 then
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

  {focarCampoSenha := true;
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
    end;   }

end;

procedure TSEG_FM_X_SEN.grdEmpresaDblClick(Sender: TObject);
begin
  BusUsuario(trim(txtUsuario.Text), txtSenha.Text);
  if not dmgeral.CAD_CD_C_PAR.IsEmpty then
    begin
     ModalResult := mrOK;
   end;
end;

procedure TSEG_FM_X_SEN.grdEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
  begin
    BusUsuario(trim(txtUsuario.Text), txtSenha.Text);
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

procedure TSEG_FM_X_SEN.btnImpEmpClick(Sender: TObject);
var
  msg:string;
  status:Integer;
begin
  if MessageDlg('Para reimportar as empresas é necessário conectar-se com a base de dados principal. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if (dmGeralSer.AcessarBancoRemoto) then
         begin
           ImportarEmpresa;
         end;
       dmGeralSer.Conexao.Close;
       dmGeralSer.Conexao.CloseDataSets;
       dmGeralSer.Conexao.Params.Clear;
     end;


end;



function TSEG_FM_X_SEN.CriptSenha(const texto: string): string;
var
  idmd5: TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
   result := idmd5.HashStringAsHex(texto);
  finally
   idmd5.Free;
  end;
end;

function TSEG_FM_X_SEN.BusUsuario(Login: string; senha:string):boolean;
var
 xSenha:string;
 cpf:string;
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


  xSenha:= Trim(CriptSenha(senha));

  dmGeral.CAD_CD_C_FUN.Close;
  dmGeral.CAD_CD_C_FUN.Data :=
  dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([3,login,xSenha]));
  dmGeral.CAD_CD_C_FUN.Open;
  result:=false;

  if dmGeral.CAD_CD_C_FUN.RecordCount=0 then
     begin
       result:=false;

       if MessageDlg('Usuário ou senha inválida. Deseja conectar-se com a base de dados principal para importar dados do funcionário?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
           AbrirTelaImportaLogin;
         end;
       Abort;
     end;
 xFuncionario := dmGeral.CAD_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;
 if dmGeral.CAD_CD_C_FUN.FieldByName('SEG_HABILITAR_SEG').AsBoolean = True then
  begin
   xHabBtnAlterar := dmGeral.CAD_CD_C_FUN.FieldByName('seg_hab_bot_alt_fun').AsBoolean;
   xHabBtnExcluir := dmGeral.CAD_CD_C_FUN.FieldByName('seg_hab_bot_exc').AsBoolean;
  end;

  result:=true;
end;

end.
