unit CTC_UN_M_MED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.wwdblook, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Datasnap.DBClient;

type
  TCTC_FM_M_MED = class(TPAD_FM_X_PAD)
    dsoMed: TwwDataSource;
    lblCodigo: TLabel;
    lblObra: TLabel;
    txtObraDescricao: TDBText;
    lblDataObra: TLabel;
    Label20: TLabel;
    txtCodigo: TDBEdit;
    dpkDtaObra: TJvDBDateEdit;
    txtObra: TDBEdit;
    cbbEstrutura: TwwDBLookupCombo;
    gbMedicao: TGroupBox;
    btnAddMedicao: TBitBtn;
    grdMedicao: TwwDBGrid;
    grdMedicaoIButton: TwwIButton;
    pnlMedicao: TPanel;
    Label21: TLabel;
    txtQtde: TDBEdit;
    cbbResponsavel: TwwDBLookupCombo;
    Label2: TLabel;
    txtresponsavel: TwwDBLookupCombo;
    gbGrupo: TGroupBox;
    dsoIte: TwwDataSource;
    grdGrupo: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlMedicaoExit(Sender: TObject);
    procedure grdMedicaoIButtonClick(Sender: TObject);
    procedure grdMedicaoDblClick(Sender: TObject);
    procedure btnAddMedicaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_M_MED: TCTC_FM_M_MED;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_TPR, uDmCtc;

procedure TCTC_FM_M_MED.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_ORC);
  btnAddMedicao.SetFocus;

end;

procedure TCTC_FM_M_MED.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_ORC) then
      begin
        inherited;
        btnAddMedicao.SetFocus;
      end;
end;

procedure TCTC_FM_M_MED.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_ORC) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       btnAddMedicao.SetFocus;
     end;
end;

procedure TCTC_FM_M_MED.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_ORC);
end;

procedure TCTC_FM_M_MED.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_M_ORC.FieldByName('ID_ORC').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_M_ORC);

  inherited;

  dmCtc.CTC_CD_M_ORC.Close;
  dmCtc.CTC_CD_M_ORC.Data :=
  dmCtc.CTC_CD_M_ORC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_M_MED.btnAddMedicaoClick(Sender: TObject);
begin
  inherited;
  if copy(dmCtc.CTC_CD_M_ORC_ite.FieldByName('GRUPO').Text,3,3) <> '000' then
    begin
      dmCtc.CTC_CD_M_ORC_ITE_MED.Insert;
      pnlMedicao.Enabled := True;
      btnAddMedicao.Enabled := false;
      cbbResponsavel.SetFocus;
    end
  else
    begin
      ShowMessage('Grupo invalido.');
    end;
end;

procedure TCTC_FM_M_MED.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_M_ORC.Close;
    dmCtc.CTC_CD_M_ORC.Data :=
    dmCtc.CTC_CD_M_ORC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_MED.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCTC_FM_M_MED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_M_ORC_ITE_MED.Close;
  FreeAndNil(CTC_FM_M_MED);
end;

procedure TCTC_FM_M_MED.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_ORC.Close;
  dmCtc.CTC_CD_M_ORC.Data := dmCtc.CTC_CD_M_ORC.DataRequest(VarArrayOf([0, '']));
  dmCtc.CTC_CD_M_ORC.Open;

  dmGeral.BusFuncionario(1,'%');
  dmCtc.BUS_CD_C_EOC.Close;
  dmCtc.BUS_CD_C_EOC.Data := dmCtc.BUS_CD_C_EOC.DataRequest(
    VarArrayOf([1,'']));
end;

procedure TCTC_FM_M_MED.FormShow(Sender: TObject);
begin
  inherited;
  txtpesquisa.SetFocus;
end;

procedure TCTC_FM_M_MED.grdMedicaoIButtonClick(Sender: TObject);
begin
  inherited;
  if cbbResponsavel.Focused then
    begin
      btnAddMedicao.SetFocus;
      exit;
    end;
  try
     grdMedicaoIButton.Enabled := False;
     if dmCtc.CTC_CD_M_ORC_ITE_MED.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_M_ORC_ITE_MED.Delete;
     //dmCtc.CTC_CD_M_ORC_ITE.Edit;
  finally
    grdMedicaoIButton.Enabled := True;
  end;
end;

procedure TCTC_FM_M_MED.grdMedicaoDblClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_ORC_ITE_MED.cancel;

  if dmCtc.CTC_CD_M_ORC_ITE_MED.IsEmpty then
    begin
      dmCtc.CTC_CD_M_ORC_ITE_MED.Append;
      pnlMedicao.Enabled := True;
      cbbResponsavel.SetFocus;
      btnAddMedicao.Enabled := false;
    end
  else
    begin
      dmCtc.CTC_CD_M_ORC_ITE_MED.Edit;
      pnlMedicao.Enabled := True;
      cbbResponsavel.SetFocus;
      btnAddMedicao.Enabled := false;
    end;
end;

procedure TCTC_FM_M_MED.pnlMedicaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
     begin
       acCancelarExecute(acCancelar);
       exit;
     end;
  if btnGrava.Focused  then
     begin
        acGravarExecute(acGravar);
        Exit;
     end;
  try
    dmCtc.CTC_CD_M_ORC.BeforePost := nil;
    dmCtc.CTC_CD_M_ORC_ite_medid_item.Text := '0';
    dmCtc.CTC_CD_M_ORC_ITE_MED.Post;
    pnlMedicao.Enabled   := false;
    btnAddMedicao.Enabled := true;
    btnAddMedicao.SetFocus;

    finally
      dmCtc.CTC_CD_M_ORC.BeforePost := dmCtc.CTC_CD_M_ORC.BeforePost;
    end;
end;

procedure TCTC_FM_M_MED.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TCTC_FM_M_MED.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown;
end;
end.
