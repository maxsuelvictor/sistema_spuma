unit PSQ_UN_X_CTA_BCO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient,
  Vcl.ImgList, vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Mask, JvExMask, JvToolEdit;

type
  TPSQ_FM_X_CTA_BCO = class(TPAD_FM_X_PSQ)
    BUS_CD_M_CTA_BCO: TClientDataSet;
    lblPeriodo: TLabel;
    deInicial: TJvDateEdit;
    lblAte: TLabel;
    deFinal: TJvDateEdit;
    BUS_CD_M_CTA_BCOid_controle: TIntegerField;
    BUS_CD_M_CTA_BCOid_abertura: TIntegerField;
    BUS_CD_M_CTA_BCOid_empresa: TIntegerField;
    BUS_CD_M_CTA_BCOtipo_lancamento: TIntegerField;
    BUS_CD_M_CTA_BCOdta_lancamento: TDateField;
    BUS_CD_M_CTA_BCOnum_doc: TIntegerField;
    BUS_CD_M_CTA_BCOid_plano: TWideStringField;
    BUS_CD_M_CTA_BCOdeb_cre: TIntegerField;
    BUS_CD_M_CTA_BCOhistorico: TWideStringField;
    BUS_CD_M_CTA_BCOvlr_lancamento: TFMTBCDField;
    BUS_CD_M_CTA_BCOorigem: TIntegerField;
    BUS_CD_M_CTA_BCOid_conta: TIntegerField;
    BUS_CD_M_CTA_BCOid_tipo_financeiro: TIntegerField;
    BUS_CD_M_CTA_BCOconc_numero: TIntegerField;
    BUS_CD_M_CTA_BCOconc_tipo_financeiro: TIntegerField;
    BUS_CD_M_CTA_BCOconc_id_plano: TWideStringField;
    BUS_CD_M_CTA_BCOconc_vlr_lancamento: TFMTBCDField;
    BUS_CD_M_CTA_BCOexp_id_controle: TIntegerField;
    BUS_CD_M_CTA_BCOexp_id_tipo_financeiro: TIntegerField;
    BUS_CD_M_CTA_BCOexp_id_plano: TWideStringField;
    BUS_CD_M_CTA_BCOexp_id_conta: TIntegerField;
    BUS_CD_M_CTA_BCOint_nomepct: TWideStringField;
    BUS_CD_M_CTA_BCOint_nometif: TWideStringField;
    BUS_CD_M_CTA_BCOint_nomectc: TWideStringField;
    BUS_CD_M_CTA_BCOid_baixa_pbx: TIntegerField;
    BUS_CD_M_CTA_BCOid_baixa_rbx: TIntegerField;
    BUS_CD_M_CTA_BCOcod_lme: TWideStringField;
    BUS_CD_M_CTA_BCOrev_lme: TWideStringField;
    BUS_CD_M_CTA_BCOdta_movimento: TDateField;
    BUS_CD_M_CTA_BCOconciliado: TBooleanField;
    BUS_CD_M_CTA_BCOint_origem: TWideMemoField;
    BUS_CD_M_CTA_BCOint_debcre: TWideMemoField;
    BUS_CD_M_CTA_BCOid_fiscal: TIntegerField;
    BUS_CD_M_CTA_BCOid_titulo_rec: TIntegerField;
    BUS_CD_M_CTA_BCOid_credito: TIntegerField;
    BUS_CD_M_CTA_BCOint_selecao: TBooleanField;
    BUS_CD_M_CTA_BCOid_mch: TIntegerField;
    btnSelecionar: TButton;
    procedure btnPesquisaClick(Sender: TObject);
    procedure BUS_CD_M_CTA_BCOBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dbGridCellChanged(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_CTA_BCO: TPSQ_FM_X_CTA_BCO;
  IdContaPsqCtaBco: String;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TPSQ_FM_X_CTA_BCO.btnPesquisaClick(Sender: TObject);
var
  mens: String;
begin
  inherited;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
      begin
        mens := mens +  '.O período deve ser preenchido.' + #13;
      end;
  if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;
    if trim(mens) <> '' then
      begin
        ShowMessage('Atenção!' + #13 + mens);
        exit;
      end;

  BUS_CD_M_CTA_BCO.Close;
  BUS_CD_M_CTA_BCO.Data :=
       BUS_CD_M_CTA_BCO.DataRequest(VarArrayOf([98,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_EMPRESA').AsString,IdContaPsqCtaBco,deInicial.Text,deFinal.Text]));
  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_CTA_BCO.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TPSQ_FM_X_CTA_BCO.BUS_CD_M_CTA_BCOBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  BUS_CD_M_CTA_BCOvlr_lancamento.DisplayFormat := CMascaraValor;
end;

procedure TPSQ_FM_X_CTA_BCO.dbGridCellChanged(Sender: TObject);
begin
  inherited;
  if not (dbGrid.Columns[dbGrid.SelectedIndex].FieldName =  'int_selecao') then
     begin
       dbGrid.Columns[dbGrid.SelectedIndex].ReadOnly := true;
     end;
end;

procedure TPSQ_FM_X_CTA_BCO.dbGridDblClick(Sender: TObject);
begin
  //inherited;

end;

procedure TPSQ_FM_X_CTA_BCO.FormShow(Sender: TObject);
begin
  inherited;
  BUS_CD_M_CTA_BCO.Close;
  BUS_CD_M_CTA_BCO.Data :=
      BUS_CD_M_CTA_BCO.DataRequest(VarArrayOf([0,'']));

  edtPesquisa.Enabled := false;
  cmbParametro.Enabled := false;
end;

end.
