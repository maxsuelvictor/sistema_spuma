unit CAD_UN_C_ITE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,System.Math,Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.Imaging.pngimage,Jpeg, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, Vcl.DBCtrls,
  JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, Vcl.ComCtrls, vcl.wwdblook,
  JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  Datasnap.DBClient, frxExportPDF, frxClass, frxDBSet, frxExportXLS, Vcl.ExtDlgs,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TCAD_FM_C_ITE = class(TPAD_FM_X_PAD)
    pcFilho: TPageControl;
    tabMateriaPrima: TTabSheet;
    btnAddComposicao: TBitBtn;
    dgComposicao: TwwDBGrid;
    tabEspecificacao: TTabSheet;
    btn_Especificacao: TBitBtn;
    dgEspecificacao: TwwDBGrid;
    CAD_DS_C_ITE_COM: TwwDataSource;
    CAD_DS_C_ITE_ESP: TwwDataSource;
    CAD_DS_C_ITE_PRE: TwwDataSource;
    tabDimensoes: TTabSheet;
    tabDadosAdicionais: TTabSheet;
    rgTipo: TDBRadioGroup;
    rgGeradorLoteInterno: TDBRadioGroup;
    rgDestinoReclamacao: TDBRadioGroup;
    rgLoteFabricante: TDBRadioGroup;
    tabDadosParaEtiqueta: TTabSheet;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblEstoqueMinimo: TLabel;
    lblAtivo: TLabel;
    lblAplicacao: TLabel;
    lblReferencia: TLabel;
    lblPesoLiquido: TLabel;
    lblCodigoDeBarras: TLabel;
    lblPesoBruto: TLabel;
    lblGrupo: TLabel;
    lblCodigoFabrico: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    txtAplicacao: TDBEdit;
    txtReferencia: TDBEdit;
    txtPesoLiquido: TDBEdit;
    txtCodigoDeBarras: TDBEdit;
    txtPesoBruto: TDBEdit;
    txtEstoqueMinimo: TDBEdit;
    chkAtivo: TDBCheckBox;
    txtCodFabrica: TDBEdit;
    cbbGrupo: TwwDBLookupCombo;
    pnlComposicao: TPanel;
    txtQdteComposicao: TDBEdit;
    lblQuantidadeComposicao: TLabel;
    txtComposicao: TJvDBComboEdit;
    lbl_CodigoComposicao: TLabel;
    lblComposicaoEspecificacao: TLabel;
    dgComposicaoIButton: TwwIButton;
    pnlEspecificacao: TPanel;
    lblDescricaoEspecificacao: TLabel;
    txtEspecificacao: TJvDBComboEdit;
    lbl_CodigoEspecificacao: TLabel;
    dgEspecificacaoIButton: TwwIButton;
    txtComposicaoDescricao: TDBText;
    txtEspecificacaoDescricao: TDBText;
    lblFornecedor: TLabel;
    txtFornecedor: TJvDBComboEdit;
    txtFornecedorDescricao: TDBText;
    lblPrecoVista: TLabel;
    lblPrecoPrazo: TLabel;
    txtPrecoVista: TDBEdit;
    txtPrecoPrazo: TDBEdit;
    gbLocalizacao: TGroupBox;
    lblRua: TLabel;
    txtRua: TDBEdit;
    lblPrateleira: TLabel;
    txtPrateleira: TDBEdit;
    txtEscaninho: TDBEdit;
    lblEscaninho: TLabel;
    gbUnidadeEmbalagem: TGroupBox;
    lblCompra: TLabel;
    lblVenda: TLabel;
    cbbCompra: TwwDBLookupCombo;
    txtCompra: TDBEdit;
    txtVenda: TDBEdit;
    cbbVenda: TwwDBLookupCombo;
    txtNCM: TJvDBComboEdit;
    txtNCMDescricao: TDBText;
    lblNCM: TLabel;
    sbPrincipal: TScrollBox;
    lblDadosEspuma1: TLabel;
    lblDadosEspuma2: TLabel;
    lblDadosEspuma3: TLabel;
    lblDadosMadeira: TLabel;
    lblDadosRevestimento1: TLabel;
    lblDadosRevestimento2: TLabel;
    lblDadosRecomendacoes1: TLabel;
    lblDadosRecomendacoes2: TLabel;
    lblDadosRevestimento3: TLabel;
    txtDadosEspuma1: TDBEdit;
    txtDadosEspuma2: TDBEdit;
    txtDadosEspuma3: TDBEdit;
    txtDadosMadeira: TDBEdit;
    txtDadosRevestimento1: TDBEdit;
    txtDadosRevestimento2: TDBEdit;
    txtDadosRecomendacoes1: TDBEdit;
    txtDadosRecomendacoes2: TDBEdit;
    txtDadosRevestimento3: TDBEdit;
    lblModelo: TLabel;
    lblDadosMedida: TLabel;
    txtModelo: TDBEdit;
    txtDadosMedida: TDBEdit;
    Label1: TLabel;
    txtFantasia: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    cbbFamilia: TwwDBLookupCombo;
    Label2: TLabel;
    tabDadosTecnicos: TTabSheet;
    ScrollBox1: TScrollBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    memodescricao: TDBMemo;
    memoprincipio_ativo: TDBMemo;
    memoComposicao: TDBMemo;
    cbbNaoLavavel: TwwDBComboBox;
    cbbLavavel: TwwDBComboBox;
    txtCapacidade: TDBEdit;
    txtCodOnu: TDBEdit;
    rgLaudoFabricante: TDBRadioGroup;
    Label11: TLabel;
    cbbUsoEtiq: TwwDBLookupCombo;
    Label12: TLabel;
    cbbClassificaoEtq: TwwDBLookupCombo;
    Label13: TLabel;
    txtRegistro: TDBEdit;
    tabPreco: TTabSheet;
    dgPreco: TwwDBGrid;
    pnlPreco: TPanel;
    cbbPerfil: TwwDBLookupCombo;
    txtPerfilPrecoVista: TwwDBEdit;
    txtPerfilPrc1: TwwDBEdit;
    txtPerfilPrc2: TwwDBEdit;
    txtPerfilPrc3: TwwDBEdit;
    txtPerfilPrc4: TwwDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    btnAddPecPrc: TBitBtn;
    dgPrecoIButton: TwwIButton;
    CAD_DS_C_ITE_PRC: TwwDataSource;
    tabCategoria: TTabSheet;
    CAD_DS_C_ITE_CAT: TDataSource;
    dgPrecoCat: TwwDBGrid;
    dgPrecoCatIButton: TwwIButton;
    pnlCategoria: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    txtPrecoCat: TwwDBEdit;
    btnAddPecCat: TBitBtn;
    cbbCategoria: TwwDBLookupCombo;
    tsCultura: TTabSheet;
    CAD_DS_C_ITE_CUL: TwwDataSource;
    pnlCultura: TPanel;
    lblCultura: TLabel;
    lblObs: TLabel;
    txtObs: TwwDBEdit;
    cbbCultura: TwwDBLookupCombo;
    btnAddCultura: TBitBtn;
    dgCultura: TwwDBGrid;
    dgCulturaIButton: TwwIButton;
    tabItemConj: TTabSheet;
    dgIteConj: TwwDBGrid;
    dgIteConjIButton: TwwIButton;
    pnlIteConj: TPanel;
    lblItemCoj: TLabel;
    btnAddIteConj: TBitBtn;
    txtBuscaItem: TJvDBComboEdit;
    CAD_DS_C_ITE_COJ: TwwDataSource;
    txtItemDescricao: TDBText;
    txtUnidade: TDBText;
    txtQtde: TwwDBEdit;
    Label23: TLabel;
    txtCusto: TDBEdit;
    Label20: TLabel;
    btnEtiqueta: TBitBtn;
    pnlEtiqueta: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Panel2: TPanel;
    txtEtiqueta: TEdit;
    txtQtdeEtq: TEdit;
    CAD_XL_C_CAD_ETQ: TfrxXLSExport;
    CAD_DB_C_CAD_ETQ: TfrxDBDataset;
    CAD_FR_C_ITE_ETQ: TfrxReport;
    CAD_PD_C_CAD_ETQ: TfrxPDFExport;
    CAD_CD_C_ITE_ETQ: TClientDataSet;
    CAD_CD_C_ITE_ETQid_item: TIntegerField;
    CAD_CD_C_ITE_ETQdesc_item: TStringField;
    CAD_CD_C_ITE_ETQund: TStringField;
    CAD_CD_C_ITE_ETQcod_barra: TStringField;
    CAD_CD_C_ITE_ETQcod_fab: TStringField;
    txtGruProdDescricao: TDBText;
    txtGrupoProd: TJvDBComboEdit;
    lblGrupoProd: TLabel;
    txtPrecoSugerido: TDBEdit;
    lblPrcSug: TLabel;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    txtTempoConj: TwwDBEdit;
    Label26: TLabel;
    gbCmv: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    txtCmvPerInterno: TwwDBEdit;
    txtCmvPerExterno: TwwDBEdit;
    Label29: TLabel;
    txtMarca: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    txtDadosEspuma4: TDBEdit;
    txtDadosEspuma5: TDBEdit;
    txtDadosEspuma6: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    txtDadosRevestimento4: TDBEdit;
    txtDadosRevestimento5: TDBEdit;
    txtDadosRevestimento6: TDBEdit;
    spbAumentDadosEtq: TSpeedButton;
    Label36: TLabel;
    CAD_DS_C_ITE_LOC: TwwDataSource;
    chbTipoServico: TDBCheckBox;
    tabPrecoFilial: TTabSheet;
    dgPrecoFilial: TwwDBGrid;
    dgPrecoFilialBtn: TwwIButton;
    pnlPrecoFilial: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    txtPrcVistaFilial: TwwDBEdit;
    txtPrcPrazoFilial: TwwDBEdit;
    btnAddPrcFilial: TBitBtn;
    tsFoto: TTabSheet;
    OpenD: TOpenPictureDialog;
    GroupBox1: TGroupBox;
    wwDBEdit2: TwwDBEdit;
    btnSelImagem: TButton;
    Foto: TLabel;
    btnVerImagem: TButton;
    tabDimenPneu: TTabSheet;
    txtPneuAro: TwwDBEdit;
    lblPneuAro: TLabel;
    txtPneuAlt: TwwDBEdit;
    lblPneuAlt: TLabel;
    txtPneuLargura: TwwDBEdit;
    lblPneuLag: TLabel;
    txtMarcaProd: TJvDBComboEdit;
    Label38: TLabel;
    DBText1: TDBText;
    DBCheckBox1: TDBCheckBox;
    txtTipoProduto: TwwDBComboBox;
    Label41: TLabel;
    ScrollBox2: TScrollBox;
    lblComprimento: TLabel;
    lblCubagem: TLabel;
    lblLargura: TLabel;
    lblEspessura: TLabel;
    lblDensidade1: TLabel;
    lblDensidade2: TLabel;
    lblDensidade3: TLabel;
    Label10: TLabel;
    txtCubagem: TDBEdit;
    txtLargura: TDBEdit;
    txtComprimento: TDBEdit;
    txtEspessura: TDBEdit;
    txtDensidade1: TDBEdit;
    txtDensidade2: TDBEdit;
    txtDensidade3: TDBEdit;
    DBEdit1: TDBEdit;
    gbTamanhoIteEpp: TGroupBox;
    Label37: TLabel;
    wwDBEdit1: TwwDBEdit;
    lblAliquotasTaxas: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    txtCubagemEsp1: TDBEdit;
    txtEspessuraEsp1: TDBEdit;
    txtLarguraEsp1: TDBEdit;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    txtCubagemEsp2: TDBEdit;
    txtEspessuraEsp2: TDBEdit;
    txtLarguraEsp2: TDBEdit;
    txtCompEsp3: TDBEdit;
    Label49: TLabel;
    Label50: TLabel;
    txtLarguraEsp3: TDBEdit;
    txtEspessuraEsp3: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    txtCompEsp1: TDBEdit;
    txtCompEsp2: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    txtCubagemEsp3: TDBEdit;
    txtTipoProd: TwwDBComboBox;
    Label56: TLabel;
    Panel1: TPanel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    txtDensidadeEspRev1: TDBEdit;
    txtCompEspRev1: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    txtEspessuraEspRev1: TDBEdit;
    txtCubagemEspRev1: TDBEdit;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    txtDensidadeEspRev2: TDBEdit;
    txtCompEspRev2: TDBEdit;
    Label66: TLabel;
    Label67: TLabel;
    txtLarguraEspRev2: TDBEdit;
    txtEspessuraEspRev2: TDBEdit;
    Label68: TLabel;
    Label69: TLabel;
    txtCubagemEspRev2: TDBEdit;
    txtLarguraEspRev1: TDBEdit;
    Label70: TLabel;
    txtItemCaixa: TJvDBComboEdit;
    txtDescItemCaixa: TDBText;
    SpeedButton1: TSpeedButton;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtComposicaoButtonClick(Sender: TObject);
    procedure btnAddComposicaoClick(Sender: TObject);
    procedure btn_EspecificacaoClick(Sender: TObject);
    procedure txtComposicaoExit(Sender: TObject);
    procedure txtEspecificacaoExit(Sender: TObject);
    procedure txtEspecificacaoButtonClick(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbGrupoEnter(Sender: TObject);
    procedure dgComposicaoIButtonClick(Sender: TObject);
    procedure dgComposicaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlComposicaoExit(Sender: TObject);
    procedure pnlEspecificacaoExit(Sender: TObject);
    procedure dgEspecificacaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure cbbCompraEnter(Sender: TObject);
    procedure cbbVendaEnter(Sender: TObject);
    procedure txtNCMButtonClick(Sender: TObject);
    procedure txtNCMExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbFamiliaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtQdteComposicaoExit(Sender: TObject);
    procedure cbbClassificaoEtqEnter(Sender: TObject);
    procedure cbbUsoEtiqEnter(Sender: TObject);
    procedure txtCodigoDeBarrasExit(Sender: TObject);
    procedure pnlPrecoExit(Sender: TObject);
    procedure btnAddPecPrcClick(Sender: TObject);
    procedure dgPrecoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtPerfilPrc4Exit(Sender: TObject);
    procedure cbbPerfilExit(Sender: TObject);
    procedure cbbPerfilEnter(Sender: TObject);
    procedure dgPrecoIButtonClick(Sender: TObject);
    procedure btnAddPecCatClick(Sender: TObject);
    procedure cbbCategoriaEnter(Sender: TObject);
    procedure cbbCategoriaExit(Sender: TObject);
    procedure txtPrecoCatExit(Sender: TObject);
    procedure dgPrecoCatIButtonClick(Sender: TObject);
    procedure pnlCategoriaExit(Sender: TObject);
    procedure dgPrecoCatMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbGrupoExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure btnAddCulturaClick(Sender: TObject);
    procedure cbbCulturaEnter(Sender: TObject);
    procedure cbbCulturaExit(Sender: TObject);
    procedure txtObsExit(Sender: TObject);
    procedure dgCulturaIButtonClick(Sender: TObject);
    procedure dgCulturaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlCulturaExit(Sender: TObject);
    procedure tsCulturaShow(Sender: TObject);
    procedure pnlIteConjExit(Sender: TObject);
    procedure btnAddIteConjClick(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgIteConjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure dgIteConjIButtonClick(Sender: TObject);
    procedure txtNCMKeyPress(Sender: TObject; var Key: Char);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure txtQtdeEtqExit(Sender: TObject);
    procedure txtGrupoProdButtonClick(Sender: TObject);
    procedure txtGrupoProdExit(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure tabItemConjShow(Sender: TObject);
    procedure txtTempoConjExit(Sender: TObject);
    procedure spbAumentDadosEtqClick(Sender: TObject);
    procedure gbLocalizacaoEnter(Sender: TObject);
    procedure chbTipoServicoClick(Sender: TObject);
    procedure dgPrecoFilialMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnAddPrcFilialClick(Sender: TObject);
    procedure dgPrecoFilialBtnClick(Sender: TObject);
    procedure pnlPrecoFilialExit(Sender: TObject);
    procedure txtPrcPrazoFilialExit(Sender: TObject);
    procedure btnSelImagemClick(Sender: TObject);
    procedure btnVerImagemClick(Sender: TObject);
    procedure txtMarcaProdButtonClick(Sender: TObject);
    procedure txtMarcaProdExit(Sender: TObject);
    procedure txtCompEsp1Exit(Sender: TObject);
    procedure txtLarguraEsp1Exit(Sender: TObject);
    procedure txtEspessuraEsp1Exit(Sender: TObject);
    procedure txtCompEsp2Exit(Sender: TObject);
    procedure txtLarguraEsp2Exit(Sender: TObject);
    procedure txtEspessuraEsp2Exit(Sender: TObject);
    procedure txtCompEsp3Exit(Sender: TObject);
    procedure txtLarguraEsp3Exit(Sender: TObject);
    procedure txtEspessuraEsp3Exit(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtCompEspRev1Exit(Sender: TObject);
    procedure txtCompEspRev2Exit(Sender: TObject);
    procedure txtLarguraEspRev2Exit(Sender: TObject);
    procedure txtEspessuraEspRev2Exit(Sender: TObject);
    procedure txtLarguraEspRev1Exit(Sender: TObject);
    procedure txtEspessuraEspRev1Exit(Sender: TObject);
    procedure txtItemCaixaButtonClick(Sender: TObject);
    procedure txtItemCaixaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure Atualizar_xBusca;
    procedure GerarEtiqueta;
    procedure ChamaCorTamanhoConj;
    procedure DesabilitarCamposServicos(status:Boolean);
    function  CalcularCubagemEsp(Comp, Larg, Esp: Currency): Currency;
    var
      xbusca_item:String;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_ITE: TCAD_FM_C_ITE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_UND, PSQ_UN_X_GRU, PSQ_UN_X_ITE, PSQ_UN_X_ESP,
  PSQ_UN_X_PEC, PSQ_UN_X_NCM, uProxy, CAD_UN_C_FOR, PSQ_UN_X_FOR, uDmSgq,
  CAD_RN_C_ITE, PSQ_UN_X_GRP, FormImg, PSQ_UN_X_MAR;





procedure TCAD_FM_C_ITE.DesabilitarCamposServicos(status:Boolean);
var
  cor:TColor;
begin
   if status=false then
     cor := $00DADADA
   else
     cor := clWhite;

   txtCodFabrica.Enabled := status;
   txtCodFabrica.Color := cor;

   txtCodigoDeBarras.Enabled := status;
   txtCodigoDeBarras.Color := cor;

   txtFantasia.Enabled := status;
   txtFantasia.Color := cor;

   txtAplicacao.Enabled := status;
   txtAplicacao.Color := cor;

   txtReferencia.Enabled := status;
   txtReferencia.Color := cor;

   txtEstoqueMinimo.Enabled := status;
   txtEstoqueMinimo.Color := cor;

   txtPesoLiquido.Enabled := status;
   txtPesoLiquido.Color := cor;

   txtPesoBruto.Enabled := status;
   txtPesoBruto.Color := cor;

   txtNCM.Enabled := status;
   txtNCM.Color := cor;

   txtCusto.Enabled := status;
   txtCusto.Color := cor;

   txtPrecoSugerido.Enabled := status;
   txtPrecoSugerido.Color := cor;

   cbbCompra.Enabled := status;
   cbbCompra.Color := cor;

   txtCompra.Enabled := status;
   txtCompra.Color := cor;

   cbbVenda.Enabled := status;
   cbbVenda.Color := cor;

   txtVenda.Enabled := status;
   txtVenda.Color := cor;


   txtRua.Enabled := status;
   txtRua.Color := cor;

   txtPrateleira.Enabled := status;
   txtPrateleira.Color := cor;

   txtEscaninho.Enabled := status;
   txtEscaninho.Color := cor;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean=true) then
     begin
      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_perfil').AsBoolean=true) then
        tabPreco.TabVisible := status
      else
        tabPrecoFilial.TabVisible := status
     end;

end;

procedure TCAD_FM_C_ITE.AbrirBuscas;
begin
  dmGeral.BusGrupoEst(1,'%');
  dmGeral.BusUnidade;
  dmGeral.BusFamilia(1,'%');
  dmSgq.BusClassEtiquetaCol(1,'%');
  dmSgq.BusUsoEtiquetaCol(1,'%');
   dmGeral.BusPerfil(1,'%');
  dmGeral.BusCor(1,'%');
  dmGeral.BusTamanho(1,'%');
end;

procedure TCAD_FM_C_ITE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ITE);
  dmGeral.CAD_CD_C_ITEdta_cadastro.AsDateTime := xDataSis;
  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) or
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) or
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true))  then
    chbTiposervico.SetFocus
  else
    txtCodFabrica.SetFocus;
end;

procedure TCAD_FM_C_ITE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ITE) then
      begin
        inherited;
        if txtCodFabrica.CanFocus then
         txtCodFabrica.SetFocus
        else if  txtDescricao.CanFocus  then
         txtDescricao.SetFocus;

        if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean = true) and (dmGeral.CAD_CD_C_ITEint_tipo_item.text = '09') then
          begin
            tabCategoria.TabVisible := true;
          end
        else
          begin
            tabCategoria.TabVisible := false;
          end;
      end;
end;

procedure TCAD_FM_C_ITE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ITE) then
        begin
          inherited;
          dbGrid.SetFocus;
        end
     else
        begin
          txtDescricao.SetFocus;
        end;
end;

procedure TCAD_FM_C_ITE.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ITE);
end;

procedure TCAD_FM_C_ITE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_ITE);
  inherited;
  dmGeral.CAD_CD_C_ITE.Close;
  dmGeral.CAD_CD_C_ITE.Data :=
  dmGeral.CAD_CD_C_ITE.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_ITE.btnAddCulturaClick(Sender: TObject);
begin
  inherited;
  pnlCultura.Enabled  := true;
  dmGeral.CAD_CD_C_ITE_CUL.Insert;
  cbbCultura.Enabled := true;
  cbbCultura.SetFocus;
end;

procedure TCAD_FM_C_ITE.btnAddIteConjClick(Sender: TObject);
begin
  inherited;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = true) then
    begin
      if (dmGeral.BUS_CD_C_GRUtipo_item.Text <> '09') then
        begin
          ShowMessage('Item não é tipo serviço.');
          exit
        end;
    end;

  pnlIteConj.Enabled  := true;
  dmGeral.CAD_CD_C_ITE_COJ.Insert;
  txtBuscaItem.Enabled := true;
  txtBuscaItem.SetFocus;
end;

procedure TCAD_FM_C_ITE.btnAddComposicaoClick(Sender: TObject);
begin
  inherited;
    try

      if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = true) then
          begin
            if (dmGeral.BUS_CD_C_GRUtipo_item.Text <> '09') then
              begin
                ShowMessage('Item não é tipo serviço.');
                exit
              end;
          end;



      dmGeral.CAD_CD_C_ITE.BeforePost := nil;
      if (trim(dmGeral.CAD_CD_C_ITE.FieldByName('geracao_lote_interno').text) = '')
        and (trim(dmGeral.CAD_CD_C_ITE.FieldByName('sgq_critica_laudo_fab').text) = '')
        and (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean) then
        begin
          ShowMessage('O campo "Gerador de lote interno" e "Laudo do Fabricante" deve ser prenchido.') ;
          pcFilho.ActivePage:=tabDadosAdicionais;
        end
      else
        begin
          pnlComposicao.Enabled  := True;
          dmGeral.CAD_CD_C_ITE_COM.Insert;
          txtComposicao.Enabled := True;
          txtComposicao.SetFocus;
        end;
    finally
      dmGeral.CAD_CD_C_ITE.BeforePost := dmGeral.CAD_CD_C_ITEBeforePost;
    end;
end;

procedure TCAD_FM_C_ITE.btnAddPecCatClick(Sender: TObject);
begin
  inherited;
  pnlCategoria.Enabled  := true;

  dmGeral.CAD_CD_C_ITE_CAT.Insert;
  cbbCategoria.Enabled := true;
  cbbCategoria.SetFocus;
end;

procedure TCAD_FM_C_ITE.btnAddPecPrcClick(Sender: TObject);
begin
  inherited;
  pnlPreco.Enabled  := true;

  dmGeral.CAD_CD_C_ITE_PRC.Insert;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('preco_por_filial').AsBoolean = true) then
    begin
      dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_EMPRESA').AsInteger :=
         dmGeral.CAD_CD_C_PAR.FieldBYName('ID_EMPRESA').AsInteger;
    end
  else
    begin
       dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_EMPRESA').AsInteger := 0;
    end;
 

  cbbPerfil.Enabled := true;
  cbbPerfil.SetFocus;
end;

procedure TCAD_FM_C_ITE.btnAddPrcFilialClick(Sender: TObject);
begin
  inherited;
  if not dmGeral.CAD_CD_C_ITE_PRC.Locate('ID_EMPRESA',dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,[]) then
     begin
      pnlPrecoFilial.Enabled  := true;

      dmGeral.CAD_CD_C_ITE_PRC.Insert;

      dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_PERFIL_CLI').AsInteger := 0;

      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('preco_por_filial').AsBoolean = true) then
        begin
          dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_EMPRESA').AsInteger :=
             dmGeral.CAD_CD_C_PAR.FieldBYName('ID_EMPRESA').AsInteger;
        end
      else
        begin
           dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_EMPRESA').AsInteger := 0;
        end;

      txtPrcVistaFilial.SetFocus;
     end
   else
     begin
       ShowMessage('Há registro de preço da filial logada.');
     end;
end;

procedure TCAD_FM_C_ITE.btnEtiquetaClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.CAD_CD_C_ITE.IsEmpty then
    begin
      pnlEtiqueta.Visible := True;
      txtEtiqueta.SetFocus;
    end
  else
    begin
      ShowMessage('Nenhum registro encontrado!');
      exit;
    end;
end;

procedure TCAD_FM_C_ITE.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

    { index 0  - Código interno item
      index 1  - Descrição
      index 2  - Código de barra
      index 3  - Código de fábrica
      index 4  - Loc. rua
      index 5  - Aplicação
      index 6  - Descrição do fornecedor
      index 7  - Código do Grupo
      index 8  - Descrição do Grupo
      index 9  - Referência do item
      index 10 - ID_NCM
    }

    if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;

   if cbbPesquisa.ItemIndex <> 3 then
      begin
        dmGeral.CAD_CD_C_ITE.Close;
        dmGeral.CAD_CD_C_ITE.Data :=
        dmGeral.CAD_CD_C_ITE.DataRequest(
                VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
      end
   else
      begin
        dmGeral.CAD_CD_C_ITE.Close;
        dmGeral.CAD_CD_C_ITE.Data :=
        dmGeral.CAD_CD_C_ITE.DataRequest(
                VarArrayOf([103, txtPesquisa.Text,'']));
      end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_ITE.btnVerImagemClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  ms2: TMemoryStream;
  ms: TStream;
  imagem:TBitmap;
begin
  inherited;


  imagem := TBitmap.Create;

  if (dmGeral.CAD_CD_C_ITE.FieldByName('foto_temp').AsString<>'') then
    begin
      ms2 := TMemoryStream.Create;
      TBLOBField(dmGeral.CAD_CD_C_ITE.FieldByName('foto_temp')).SaveToStream(ms2);
      ms2.Position := 0;
      imagem.LoadFromStream(ms2);

      FImg := TFImg.Create(Self);
      FImg.Image1.Picture.Bitmap.Assign(imagem);
      FImg.Caption := '';
      FImg.Show;
      FImg.Left := (Screen.Width DIV 3);
      FImg.Top := (Screen.Width DIV 4);
    end
  else if (dmGeral.CAD_CD_C_ITE.FieldByName('mob_nome_foto').AsString<>'') then
    begin
      SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
      try
       ms := TStream.Create;
       ms := SMPrincipal.enGetImagem('CAD_TB_C_ITE',dmGeral.CAD_CD_C_ITE.FieldByName('mob_nome_foto').AsString);
       ms.Position := 0;
       imagem.LoadFromStream(ms);
       FImg := TFImg.Create(Self);
       FImg.Image1.Picture.Bitmap.Assign(imagem);
       FImg.Caption := '';
       FImg.Show;
       FImg.Left := (Screen.Width DIV 3);
       FImg.Top := (Screen.Width DIV 4);


      finally
        FreeAndNil(SMPrincipal);
      //  ms.Free;
       // imagem.Free;
      end;
    end
  else
    ShowMessage('Imagem inexistente.');

end;

procedure TCAD_FM_C_ITE.btn_EspecificacaoClick(Sender: TObject);
begin
  inherited;
  pnlEspecificacao.Enabled  := true;

  dmGeral.CAD_CD_C_ITE_ESP.Insert;
  txtEspecificacao.Enabled := true;
  txtEspecificacao.SetFocus;
end;

function TCAD_FM_C_ITE.CalcularCubagemEsp(Comp, Larg, Esp: Currency): Currency;
begin
  result := 0;
  if (Comp <> 0) and (Larg <> 0) and (Esp <> 0) then
      begin
        result := Comp * Larg *  Esp;
      end;
end;

procedure TCAD_FM_C_ITE.btnSelImagemClick(Sender: TObject);
var
 ms: TMemoryStream;
 Imagem:TBitmap;
 jpg : TJPEGImage;
 Png: TPngImage;
begin
  inherited;
  OpenD.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenD.Execute then
   begin
    try
      ms := TMemoryStream.Create;
      imagem := TBitmap.Create;
      if pos('.jpg',OpenD.FileName)>0 then
        begin
          Jpg := TJpegImage.Create;
          Jpg.LoadFromFile(OpenD.FileName);
          Imagem.Assign(JPG);
        end
      else if pos('.png',OpenD.FileName)>0 then
        begin
          Png := TPngImage.Create;
          Png.LoadFromFile(OpenD.FileName);
          Imagem.Assign(PNG);
        end
      else
        begin
          imagem.LoadFromFile(OpenD.FileName);
        end;


      dmGeral.RedimensionarImagem(imagem, 150, 150);
      imagem.SaveToStream(ms);

      FImg := TFImg.Create(Self);
      FImg.Image1.Picture.Bitmap.Assign(imagem);
      FImg.Caption := '';
      FImg.Show;
      FImg.Left := (Screen.Width DIV 3);
      FImg.Top := (Screen.Width DIV 4);

      ms.Position := 0;
      dmgeral.CAD_CD_C_ITEfoto_temp.LoadFromStream(ms);
      dmgeral.CAD_CD_C_ITE.FieldByName('mob_nome_foto').AsString :=
         dmGeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsString+'.png';
    finally
      // ms.Free;
      // imagem.Free;
    end;
  end;
end;

procedure TCAD_FM_C_ITE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_ITE_LOC.Filtered := false;
  dmGeral.CAD_CD_C_ITE_PRC.Filtered := false;
  dmGeral.CAD_CD_C_ITE.Close;
  FreeAndNil(CAD_FM_C_ITE);
end;

procedure TCAD_FM_C_ITE.FormCreate(Sender: TObject);
var
  filtro:String;
begin
  inherited;
  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) or
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) or
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true))  then
    begin
        lblTitulo.Caption := 'Peças/Serviços';
        chbTipoServico.Visible := true;
    end;
  filtro := '';
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean = true) then
    filtro := 'ID_EMPRESA<>0 '
  else
    filtro := 'ID_EMPRESA=0 ';

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_perfil').AsBoolean = true) then
    begin
       if filtro<>'' then
         filtro := filtro + ' AND ID_PERFIL_CLI<>0 '
       else
         filtro := ' ID_PERFIL_CLI<>0 ';
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean = true) then
        filtro := filtro + ' AND ID_EMPRESA='+dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
    end
  else
    begin
       if filtro<>'' then
         filtro := filtro + ' AND ID_PERFIL_CLI=0 '
       else
         filtro := ' ID_PERFIL_CLI=0 '
    end;


  dmGeral.CAD_CD_C_ITE.Close;
  dmGeral.CAD_CD_C_ITE.Data := dmGeral.CAD_CD_C_ITE.DataRequest(VarArrayOf([0, '']));

  if filtro<>'' then
    begin
      dmGeral.CAD_CD_C_ITE_PRC.Filtered := true;
      dmGeral.CAD_CD_C_ITE_PRC.Filter := filtro;
    end;

  dmGeral.CAD_CD_C_ITE_LOC.Filtered := true;
  dmGeral.CAD_CD_C_ITE_LOC.Filter := 'ID_EMPRESA='+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;


  pnlDados.Top := 30;
  AbrirBuscas;


end;

procedure TCAD_FM_C_ITE.FormShow(Sender: TObject);
begin
  inherited;

  pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
  pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);




   if (dmGeral.CAD_CD_C_PAR_MODctc.AsBoolean = true) or (dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true) or
      (dmGeral.CAD_CD_C_PAR_MODtor.AsBoolean = true) then
    begin
      tabDimensoes.TabVisible := true;
    end
   else
    begin
      tabMateriaPrima.TabVisible := False;
    end;

  if (dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true) then
    begin
      tabEspecificacao.TabVisible := true;
      tabDadosAdicionais.TabVisible := true;
      tabDadosParaEtiqueta.TabVisible := true;
      tabMateriaPrima.TabVisible := true;
    end
  else
    begin
      tabEspecificacao.TabVisible := False;
      tabDadosAdicionais.TabVisible := False;
      tabDadosParaEtiqueta.TabVisible := False;
      tabDimensoes.TabVisible := False;
    end;

  if (dmGeral.CAD_CD_C_PAR_MODrev.AsBoolean = true) then
    begin
      tabDadosTecnicos.TabVisible := true;
      tsCultura.TabVisible := true;

      lblGrupoProd.Visible := true;
      txtGrupoProd.Visible := true;
      txtGruProdDescricao.Visible := true;
    end
  else
    begin
      tabDadosTecnicos.TabVisible := False;
      tsCultura.TabVisible := false;

      lblGrupoProd.Visible := false;
      txtGrupoProd.Visible := false;
      txtGruProdDescricao.Visible := false;
    end;


  if (dmGeral.CAD_CD_C_PAR_CTRprc_ite_manual.AsBoolean = true) then
    begin
      if dmGeral.CAD_CD_C_PAR_CTRpreco_por_perfil.AsBoolean then
        begin
          tabPreco.TabVisible := true;
          tabPrecoFilial.TabVisible := false;
        end
      else
        begin
          tabPreco.TabVisible := false;
          tabPrecoFilial.TabVisible := true;

          lblPrecoVista.Visible := false;
          txtPrecoVista.Visible := false;
          lblPrecoPrazo.Visible := false;
          txtPrecoPrazo.Visible := false;

        end;
    end
  else
    begin
      tabPreco.TabVisible := False;
      tabPrecoFilial.TabVisible := False;
    end;


 


 { if (dmGeral.CAD_CD_C_PAR_CTRprc_ite_manual.AsBoolean = true) then
    begin
      tabPreco.TabVisible := true;
    end
  else
    begin
      tabPreco.TabVisible := False;
    end;}

  // Foi comentado por Maxsuel Victor , em 15/03/2017 , pois será utilizado pela
  // Globo tb que é par_mod = SGQ.
  if (dmGeral.CAD_CD_C_PAR_CTRativa_ite_conj.AsBoolean = true) then//and
     //(dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean = false) and
     //(dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean = false) then
    begin
      tabItemConj.TabVisible := true;
      Atualizar_xBusca;

    end
  else
    begin
      tabItemConj.TabVisible := False;
    end;

  {if dmGeral.CAD_CD_C_PAR_MODome.AsBoolean and (copy(dmGeral.CAD_CD_C_ITEid_grupo.Text,1,1) = '3') then
    begin
      tabCategoria.TabVisible := true;
    end
  else
    begin}
      tabCategoria.TabVisible := false;
    //end;

    tabDimenPneu.TabVisible := false;
    if (dmGeral.CAD_CD_C_PAR_MOD.FieldBYname('OME').AsBoolean=true) then
      tabDimenPneu.TabVisible := true;


   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('filtro_pad_psq_ite').AsString <> '' then
      cbbPesquisa.ItemIndex := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('filtro_pad_psq_ite').AsInteger;

   CAD_CD_C_ITE_ETQ.CreateDataSet;
end;

procedure TCAD_FM_C_ITE.gbLocalizacaoEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
    dmGeral.CAD_CD_C_ITE_LOC.Edit;
end;

procedure TCAD_FM_C_ITE.GerarEtiqueta;
var
I:integer;
begin
  for I := 1 to  StrToInt(txtQtdeEtq.Text) do
    begin
      CAD_CD_C_ITE_ETQ.Insert;
      CAD_CD_C_ITE_ETQ.FieldByName('id_item').AsString := dmGeral.CAD_CD_C_ITE.FieldByName('id_item').AsString;
      CAD_CD_C_ITE_ETQ.FieldByName('cod_barra').AsString := dmGeral.CAD_CD_C_ITE.FieldByName('COD_BARRA').AsString;
      CAD_CD_C_ITE_ETQ.FieldByName('cod_fab').AsString := dmGeral.CAD_CD_C_ITE.FieldByName('COD_FABRICA').AsString;
      CAD_CD_C_ITE_ETQ.FieldByName('und').AsString := dmGeral.CAD_CD_C_ITE.FieldByName('id_und_venda').AsString;
      CAD_CD_C_ITE_ETQ.FieldByName('desc_item').AsString := dmGeral.CAD_CD_C_ITE.FieldByName('DESCRICAO').AsString;
      CAD_CD_C_ITE_ETQ.Post;
    end;
end;

procedure TCAD_FM_C_ITE.pnlCategoriaExit(Sender: TObject);
begin
  inherited;
  if (btnAddPecCat.Focused) or (dgPrecoCat.Focused) or
     (not dgPrecoCatIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.CAD_CD_C_ITE_CAT.Cancel;
        dmGeral.CAD_CD_C_ITE_CAT.Edit;

        finally
           pnlCategoria.Enabled := False;
        end;
      end;
end;

procedure TCAD_FM_C_ITE.pnlComposicaoExit(Sender: TObject);
begin
  inherited;
  if (btnAddComposicao.Focused) or //(dgComposicao.Focused) or
     (not dgComposicaoIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;
        dmGeral.CAD_CD_C_ITE_COM.Cancel;
        dmGeral.CAD_CD_C_ITE_COM.edit;
        finally
        end;
      end;
end;

procedure TCAD_FM_C_ITE.pnlCulturaExit(Sender: TObject);
begin
  inherited;
  if (btnAddCultura.Focused) or (dgCultura.Focused) or
     (not dgCulturaIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.CAD_CD_C_ITE_CUL.Cancel;
        dmGeral.CAD_CD_C_ITE_CUL.Edit;

        finally
           pnlCultura.Enabled := False;
        end;
      end;
end;

procedure TCAD_FM_C_ITE.pnlEspecificacaoExit(Sender: TObject);
begin
  inherited;
  if (btn_Especificacao.Focused) or (dgEspecificacao.Focused) or
     (not dgEspecificacaoIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.CAD_CD_C_ITE_ESP.Cancel;
        dmGeral.CAD_CD_C_ITE_ESP.Edit;

        finally
           pnlEspecificacao.Enabled := False;
        end;
      end;
end;

procedure TCAD_FM_C_ITE.pnlIteConjExit(Sender: TObject);
begin
  inherited;
  if (btnAddIteConj.Focused) or (dgIteConj.Focused) or
     (not dgIteConjIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              dmGeral.CAD_CD_C_ITE_COJ.Cancel;
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.CAD_CD_C_ITE_COJ.Cancel;
        dmGeral.CAD_CD_C_ITE_COJ.Edit;

        finally
           pnlIteConj.Enabled := False;
        end;
      end;
end;

procedure TCAD_FM_C_ITE.pnlPrecoExit(Sender: TObject);
begin
  inherited;
  if (btnAddPecPrc.Focused) or (dgPreco.Focused) or
     (not dgPrecoIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.CAD_CD_C_ITE_PRC.Cancel;
        dmGeral.CAD_CD_C_ITE_PRC.Edit;

        finally
           pnlPreco.Enabled := False;
        end;
      end;
end;

procedure TCAD_FM_C_ITE.pnlPrecoFilialExit(Sender: TObject);
begin
  inherited;
  if (btnAddPrcFilial.Focused) or (dgPrecoFilial.Focused) or
     (not dgPrecoFilialBtn.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.CAD_CD_C_ITE_PRC.Cancel;
        dmGeral.CAD_CD_C_ITE_PRC.Edit;

        finally
           pnlPrecoFilial.Enabled := False;
        end;
      end;
end;

procedure TCAD_FM_C_ITE.spbAumentDadosEtqClick(Sender: TObject);
begin
  inherited;
  if spbAumentDadosEtq.Caption = '^' then
     begin
       spbAumentDadosEtq.Caption := '...';
       pcFilho.height := 393;
       pcFilho.top    := 82;
     end
  else
     begin
       spbAumentDadosEtq.Caption := '^';
       pcFilho.height := 191;
       pcFilho.top    := 293;
     end;

end;

procedure TCAD_FM_C_ITE.SpeedButton1Click(Sender: TObject);
var
  mens: String;
begin
  inherited;


  mens :=

   ' PORTARIA Nº 75, DE 4 DE FEVEREIRO DE 2021 ' + #13 +
   ' .... ' + #13 +
   ' 5.1.5 A declaração das dimensões a que se refere a alínea e) do ' + #13 +
   ' item 5.1.4 deste regulamento deve utilizar as unidades centímetro (cm) ' +  #13 +
   ' ou milímetro (mm) quando a medida tiver até 100 cm. ' + #13 +
   ' Quando a medida for maior que 100 cm, ela deve ser expressa em metros (m).';


  Showmessage(mens);
end;

procedure TCAD_FM_C_ITE.tabItemConjShow(Sender: TObject);
begin
  inherited;
 dmGeral.AtualizarGridItens(dgIteConj,'int_nomeite',10,5);
end;

procedure TCAD_FM_C_ITE.tsCulturaShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusCultura(1,'%');
end;

procedure TCAD_FM_C_ITE.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;

  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  //dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  //PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
  // xFormRespPSQ_ITE := FAT_FM_M_PED.Name;
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_BUSCA_ITEM').AsString :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('int_nomeite_coj').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

        dmGeral.CAD_CD_C_ITE_COJ.FieldByName('int_und_coj').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;

     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TCAD_FM_C_ITE.txtBuscaItemExit(Sender: TObject);
VAR
  CodItem:String;
  BUS_ITE_COJ:TClientDataSet;
  existeIteCoj:Boolean;
begin
  inherited;
  existeIteCoj := false;
  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin
       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btnAddIteConj.Focused then
          exit;

       if dgIteConj.Focused then
          exit;

       if not dgIteConjIButton.Enabled then
          exit;

       if txtQtde.Focused then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
             exit;
           end;
     end;

  CodItem:= txtBuscaItem.Text;
  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
     end;


   dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').Text := '';
   dmGeral.CAD_CD_C_ITE_COJ.FieldByName('id_busca_item').Text := '';
   dmGeral.CAD_CD_C_ITE_COJ.FieldByName('int_nomeite_coj').Text := '';
   dmGeral.CAD_CD_C_ITE_COJ.FieldByName('int_und_coj').Text  := '';
   dmGeral.CAD_CD_C_ITE_COJ.FieldByName('int_inf_tempo_ite_coj').Text := '';
  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       exit;
     end;

  if dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger =
        dmGeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsInteger  then
     begin
       ShowMessage('Item selecionado não pode ser o mesmo item em edição.');
       txtBuscaItem.SetFocus;
       exit;
     end;

  if ((dmgeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) AND
       (dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09'))  then
     begin
       ShowMessage('Item não pode ser tipo serviço.');
       txtBuscaItem.SetFocus;
       exit;
     end;



  dmGeral.CAD_CD_C_ITE_COJ.Cancel;
  if dmGeral.CAD_CD_C_ITE_COJ.Locate('ID_ITEM', dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').Text,[]) then
     begin
       ShowMessage('Item já foi selecionado.');
       dmGeral.CAD_CD_C_ITE_COJ.Insert;
       txtBuscaItem.SetFocus;
       exit;
     end
  else
     begin



      if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = true) then
        begin
         dmGeral.BUS_CD_C_ITE_COJ.Close;
         dmGeral.BUS_CD_C_ITE_COJ.Data :=
         dmGeral.BUS_CD_C_ITE_COJ.DataRequest(VarArrayOf([0,dmgeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString]));


         if not dmGeral.BUS_CD_C_ITE_COJ.IsEmpty then
           begin
              existeIteCoj := true;
             while not dmgeral.BUS_CD_C_ITE_COJ.EOF do
               begin
                 if (dmGeral.BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsInteger =
                         dmgeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsInteger) then
                   BEGIN
                     ShowMessage('Item selecionado tem na sua composição o mesmo item em edição.');
                     txtBuscaItem.SetFocus;
                     exit;
                   END
                 else
                   begin
                    BUS_ITE_COJ := TClientDataSet.Create(nil);
                    BUS_ITE_COJ.RemoteServer := dmGeral.pcConecao;
                    BUS_ITE_COJ.ProviderName := 'BUS_DP_C_ITE_COJ';
                    BUS_ITE_COJ.Close;
                    BUS_ITE_COJ.Data :=
                    BUS_ITE_COJ.DataRequest(
                         VarArrayOf([0,dmGeral.BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString]));


                     if (not BUS_ITE_COJ.IsEmpty) then
                       begin
                         ShowMessage('Item selecionado apresenta em sua composição um item que apresenta outras composições.');
                         BUS_ITE_COJ.Close;
                         txtBuscaItem.SetFocus;
                         exit;
                       end;
                   end;
                 dmgeral.BUS_CD_C_ITE_COJ.Next;
               end;

           end;
        end;



       dmGeral.CAD_CD_C_ITE_COJ.Insert;

       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').Text :=
         dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('id_busca_item').Text := CodItem;

       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('int_nomeite_coj').Text :=
           dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('int_und_coj').Text :=
           dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('int_inf_tempo_ite_coj').AsBoolean :=
           dmGeral.BUS_CD_C_ITE.FieldByName('int_inf_tempo_ite_coj').AsBoolean;

       if (dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean) and (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean = true)  then
           dmGeral.CAD_CD_C_ITE_COJ.FieldByName('id_cor').AsInteger := 1;  //Cor única
     end;

  try
     pnlIteConj.onExit := nil;
      //  Comentado por Maxsuel, em 03/04/2017, pois a questão da cor e tamanho,
      //  o sistema irá saber no momento em que o usuário informa o item acabdo no pedido de venda.
      //ChamaCorTamanhoConj;


     if (dmGeral.BUS_CD_C_ITE.FieldByName('INT_INF_TEMPO_ITE_COJ').AsBoolean=true) and (existeIteCoj = false) then
       begin
        txtQtde.Enabled := false;
        txtQtde.Color := $00DADADA;
        txtTempoConj.Enabled := true;
        txtTempoConj.Color := clWhite;
        txtTempoConj.SetFocus;
       end
     else
       begin
        ShowMessage('INFORMATIVO: O item selecionado tem composição.');
        txtTempoConj.Enabled := false;
        txtTempoConj.Color := $00DADADA;
        txtQtde.Enabled := true;
        txtQtde.Color := clWhite;
        txtQtde.SetFocus;
       end;
  finally
     pnlIteConj.OnExit := pnlIteConjExit;
  end;

   //txtQtde.SetFocus;







end;

procedure TCAD_FM_C_ITE.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TCAD_FM_C_ITE.Atualizar_xBusca;
begin
    if xbusca_item = '' then
     begin
       lblItemCoj.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
   else
     if xbusca_item = 'ID_ITEM' then
        begin
          lblItemCoj.Caption := '<F7> Cód. fábrica';
          xbusca_item := 'COD_FABRICA';
        end
     else if xbusca_item = 'COD_FABRICA' then
        begin
          lblItemCoj.Caption := '<F7> Cód. barra';
          xbusca_item := 'COD_BARRA';
        end
     else if xbusca_item = 'COD_BARRA' then
        begin
          lblItemCoj.Caption := '<F7> Cód. item';
          xbusca_item := 'ID_ITEM';
        end;
end;


procedure TCAD_FM_C_ITE.txtCodigoDeBarrasExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

   if (dmGeral.CAD_CD_C_ITE.FieldByName('COD_BARRA').AsString <> '') then
     begin
      if (CadVerificarCodBarraIte = false) then
        begin
          dmGeral.CAD_CD_C_ITE.FieldByName('COD_BARRA').AsString := '';
          txtCodigoDeBarras.Text := '';
          txtCodigoDeBarras.SetFocus;
          exit;
        end;
     end;
end;

procedure TCAD_FM_C_ITE.txtCompEsp1Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_1').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_1').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtCompEsp2Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_2').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_2').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtCompEsp3Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_3').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_3').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_3').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_3').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtCompEspRev1Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_revest_1').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_1').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtCompEspRev2Exit(Sender: TObject);
begin
  inherited;
    if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_revest_2').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_2').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtComposicaoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.CAD_CD_C_ITE_COM.FieldByName('ID_MATERIA_PRIMA').AsInteger :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.CAD_CD_C_ITE_COM.FieldByName('INT_NOMEITE').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCAD_FM_C_ITE.txtComposicaoExit(Sender: TObject);
var
   BUS_ITE_COM:TClientDataSet;
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused or (dgComposicao.Focused) then
       begin
         exit;
       end;

    dmGeral.CAD_CD_C_ITE_COM.FieldByName('INT_NOMEITE').Text := '';

    if (dmGeral.CAD_CD_C_ITE_COM.FieldByName('ID_MATERIA_PRIMA').Text = '') then
       begin
         ShowMessage('O campo "Composição" deve ser prenchido.');
         txtComposicao.SetFocus;
         exit;
       end;



     if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = true) then
       begin
         if  (dmGeral.CAD_CD_C_ITE_COM.FieldByName('ID_MATERIA_PRIMA').AsInteger =
                 dmGeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsInteger) then
            begin
              ShowMessage('Materia prima não pode ser igual do item.');
              txtComposicao.SetFocus;
              exit;
            end;
       end;


    dmGeral.BUS_CD_C_ITE.Close;
    dmGeral.BUS_CD_C_ITE.Data :=
    dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtComposicao.Text]));


    if dmGeral.BUS_CD_C_ITE.IsEmpty then
      begin
         ShowMessage('"Matéria Prima" não encontrado.');
          txtComposicao.SetFocus;
         exit;
      end;


    if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = true) then
       begin
         dmGeral.BUS_CD_C_ITE_COM.Close;
         dmGeral.BUS_CD_C_ITE_COM.Data :=
         dmGeral.BUS_CD_C_ITE_COM.DataRequest(VarArrayOf([0,dmgeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString]));


         if not dmGeral.BUS_CD_C_ITE_COM.IsEmpty then
           begin


             while not dmgeral.BUS_CD_C_ITE_COM.EOF do
               begin
                 if (dmGeral.BUS_CD_C_ITE_COM.FieldByName('ID_MATERIA_PRIMA').AsInteger =
                         dmgeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsInteger) then
                   BEGIN
                     ShowMessage('Matéria Prima tem na sua composição o mesmo item em edição.');
                     txtComposicao.SetFocus;
                     exit;
                   END
                 else
                   begin
                    BUS_ITE_COM := TClientDataSet.Create(nil);
                    BUS_ITE_COM.RemoteServer := dmGeral.pcConecao;
                    BUS_ITE_COM.ProviderName := 'BUS_DP_C_ITE_COM';
                    BUS_ITE_COM.Close;
                    BUS_ITE_COM.Data :=
                    BUS_ITE_COM.DataRequest(
                         VarArrayOf([0,dmGeral.BUS_CD_C_ITE_COM.FieldByName('ID_MATERIA_PRIMA').AsString]));


                     if (not BUS_ITE_COM.IsEmpty) then
                       begin
                         ShowMessage('Matéria Prima apresenta em sua composição um item que apresenta outras composições.');
                         BUS_ITE_COM.Close;
                         txtComposicao.SetFocus;
                         exit;
                       end;
                   end;
                 dmgeral.BUS_CD_C_ITE_COM.Next;
               end;

           end;


       end;


    dmGeral.CAD_CD_C_ITE_COM.FieldByName('INT_NOMEITE').Text :=
         dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
end;

procedure TCAD_FM_C_ITE.txtEspecificacaoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ESP := TPSQ_FM_X_ESP.Create(Self);
   PSQ_FM_X_ESP.ShowModal;
      if not PSQ_FM_X_ESP.BUS_CD_C_ESP.IsEmpty then
         begin
           dmGeral.CAD_CD_C_ITE_ESP.FieldByName('ID_ESPECIFICACAO').AsInteger :=
              PSQ_FM_X_ESP.BUS_CD_C_ESP.FieldByName('ID_ESPECIFICACAO').AsInteger;

           dmGeral.CAD_CD_C_ITE_ESP.FieldByName('INT_NOMEESP').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ESP.Free;
end;

procedure TCAD_FM_C_ITE.txtEspecificacaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmGeral.CAD_CD_C_ITE_ESP.FieldByName('INT_NOMEITE').Text := '';

    if dmGeral.CAD_CD_C_ITE_ESP.FieldByName('ID_MATERIA_PRIMA').Text = '' then
       begin
         ShowMessage('O campo "Especificação" deve ser prenchido.');
         abort;
       end;

    dmSgq.BUS_CD_C_ESP.Close;
    dmSgq.BUS_CD_C_ESP.Data :=
    dmSgq.BUS_CD_C_ESP.DataRequest(VarArrayOf([0, txtEspecificacao.Text]));

    dmGeral.CAD_CD_C_ITE_ESP.FieldByName('INT_NOMEESP').Text :=
         dmSgq.BUS_CD_C_ESP.FieldByName('DESCRICAO').AsString;
end;

procedure TCAD_FM_C_ITE.txtEspessuraEsp1Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_1').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_1').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtEspessuraEsp2Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_2').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_2').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtEspessuraEsp3Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_3').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_3').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_3').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_3').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtEspessuraEspRev1Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_revest_1').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_1').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtEspessuraEspRev2Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_revest_2').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_2').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.CAD_CD_C_ITE.FieldByName('ID_FORNECEDOR').AsString :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;

           dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMEFOR').Text :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TCAD_FM_C_ITE.txtFornecedorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMEFOR').Text := '';

    dmGeral.BUS_CD_C_FOR.Close;
    dmGeral.BUS_CD_C_FOR.Data :=
    dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtFornecedor.Text]));

    if not dmGeral.BUS_CD_C_FOR.IsEmpty then
      begin
        dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMEFOR').Text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
      end
    else
      begin
        showMessage('Fornecedor não Cadastrado.');
        dmGeral.CAD_CD_C_ITE.FieldByName('ID_FORNECEDOR').Text := '';
      end;
end;

procedure TCAD_FM_C_ITE.txtGrupoProdButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_GRP := TPSQ_FM_X_GRP.Create(Self);
   PSQ_FM_X_GRP.ShowModal;
      if not PSQ_FM_X_GRP.BUS_CD_C_GRP.IsEmpty then
         begin
           dmGeral.CAD_CD_C_ITE.FieldByName('ID_GRUPO_PROD').AsString :=
              trim(PSQ_FM_X_GRP.BUS_CD_C_GRP.FieldByName('ID_CODIGO').AsString);

           dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMEGRP').Text :=
              PSQ_FM_X_GRP.BUS_CD_C_GRP.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_GRP.Free;
end;

procedure TCAD_FM_C_ITE.txtGrupoProdExit(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMEGRP').Text := '';

  if dmGeral.CAD_CD_C_ITE.FieldByName('ID_GRUPO_PROD').Text = '' then
     begin
       if btnCancelar.Focused or
           btnGrava.Focused  then
           begin
             exit;
           end;
     end
   else
     begin
        dmGeral.BUS_CD_C_GRP.Close;
        dmGeral.BUS_CD_C_GRP.Data :=
        dmGeral.BUS_CD_C_GRP.DataRequest(VarArrayOf([0, txtGrupoProd.Text]));

        if dmGeral.BUS_CD_C_GRP.IsEmpty then
          begin
            ShowMessage('Grupo do produto não cadastrado.');
            txtGrupoProd.Text := '';
            txtGrupoProd.SetFocus;
            exit;
          end;
        dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMEGRP').Text :=
             dmGeral.BUS_CD_C_GRP.FieldByName('DESCRICAO').AsString;
     end;
end;

procedure TCAD_FM_C_ITE.txtItemCaixaButtonClick(Sender: TObject);
begin
  inherited;

  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       if PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('tipo_produto').AsString <> '12' then  // Tipo Caixa madeira
          begin
            ShowMessage('O item selecionado tem que ser do tipo "Caixa de madeira".');
            txtItemCaixa.SetFocus;
            exit;
          end;

       dmGeral.CAD_CD_C_ITE.FieldByName('id_item_caixa').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.CAD_CD_C_ITE.FieldByName('int_nome_item_caixa_itt').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;

end;

procedure TCAD_FM_C_ITE.txtItemCaixaExit(Sender: TObject);
begin
  inherited;

 { if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;}

    dmGeral.CAD_CD_C_ITE.FieldByName('int_nome_item_caixa_itt').Text := '';

    if trim(dmGeral.CAD_CD_C_ITE.FieldByName('id_item_caixa').AsString) <> '' then
       begin
          dmGeral.BusItens(0,dmGeral.CAD_CD_C_ITE.FieldByName('id_item_caixa').text);
          if not dmGeral.BUS_CD_C_ITE.IsEmpty then
            begin

              if dmGeral.BUS_CD_C_ITE.FieldByName('tipo_produto').AsString <> '12' then  // Tipo Caixa madeira
                 begin
                   ShowMessage('Item deve ser do tipo "Caixa de madeira".');
                   dmGeral.CAD_CD_C_ITE.FieldByName('id_item_caixa').Text := '';
                   txtItemCaixa.SetFocus;
                   exit;
                 end;

              if (dmGeral.CAD_CD_C_ITE.FieldByName('tipo_produto').AsString <> '6') and
                 (dmGeral.CAD_CD_C_ITE.FieldByName('tipo_produto').AsString <> '7') and
                 (dmGeral.CAD_CD_C_ITE.FieldByName('tipo_produto').AsString <> '14') then
                 begin
                   ShowMessage('Só é permitido informar item caixa para produto que seja uma "cama box, base box ou cama box de molas".');
                   dmGeral.CAD_CD_C_ITE.FieldByName('id_item_caixa').Text := '';
                   txtItemCaixa.SetFocus;
                   exit;
                 end;

              dmGeral.CAD_CD_C_ITE.FieldByName('int_nome_item_caixa_itt').Text :=
                  dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
            end
          else
            begin
              ShowMessage('Item não encontrado.');
              txtItemCaixa.SetFocus;
              exit;
            end;
       end;

end;

procedure TCAD_FM_C_ITE.txtLarguraEsp1Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_1').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_1').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtLarguraEsp2Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_2').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_2').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtLarguraEsp3Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_3').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comprimento_3').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_3').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_3').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtLarguraEspRev1Exit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_revest_1').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_1').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_1').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtLarguraEspRev2Exit(Sender: TObject);
begin
  inherited;
    if dmGeral.CAD_CD_C_ITE.State in [dsEdit] then
     begin
       dmGeral.CAD_CD_C_ITE.FieldByName('cubagem_esp_revest_2').Ascurrency :=
          CalcularCubagemEsp(dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_comp_revest_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_largura_revest_2').AsCurrency,
                             dmGeral.CAD_CD_C_ITE.FieldByName('tam_esp_espessura_revest_2').Ascurrency);
     end;
end;

procedure TCAD_FM_C_ITE.txtMarcaProdButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_MAR := TPSQ_FM_X_MAR.Create(Self);
   PSQ_FM_X_MAR.ShowModal;
      if not PSQ_FM_X_MAR.BUS_CD_C_MAR.IsEmpty then
         begin
           dmGeral.CAD_CD_C_ITE.FieldByName('ID_MARCA').AsString :=
              trim(PSQ_FM_X_MAR.BUS_CD_C_MAR.FieldByName('ID_MAR').AsString);

           dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMEMAR').Text :=
              PSQ_FM_X_MAR.BUS_CD_C_MAR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_MAR.Free;
end;

procedure TCAD_FM_C_ITE.txtMarcaProdExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;


    dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMEMAR').Text := '';

    if  dmGeral.CAD_CD_C_ITE.FieldByName('ID_MARCA').Text <> '' then
     begin
       dmGeral.BUS_CD_C_MAR.Close;
       dmGeral.BUS_CD_C_MAR.Data :=
       dmGeral.BUS_CD_C_MAR.DataRequest(VarArrayOf([0,
                                      dmGeral.CAD_CD_C_ITE.FieldByName('ID_MARCA').Text]));

       if dmGeral.BUS_CD_C_MAR.IsEmpty then
         begin
           ShowMessage('Marca não cadastrado.');
            dmGeral.CAD_CD_C_ITE.FieldByName('ID_MARCA').Text := '';
           txtMarcaProd.Text := '';
           txtMarcaProd.SetFocus;
           exit;
         end;


     dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMEMAR').Text :=
           dmGeral.BUS_CD_C_MAR.FieldByName('DESCRICAO').AsString;
     end;
end;

procedure TCAD_FM_C_ITE.txtNCMButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_NCM := TPSQ_FM_X_NCM.Create(Self);
   PSQ_FM_X_NCM.ShowModal;
      if not PSQ_FM_X_NCM.BUS_CD_C_NCM.IsEmpty then
         begin
           dmGeral.CAD_CD_C_ITE.FieldByName('ID_NCM').AsString :=
              trim(PSQ_FM_X_NCM.BUS_CD_C_NCM.FieldByName('ID_NCM').AsString);

           dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMENCM').Text :=
              PSQ_FM_X_NCM.BUS_CD_C_NCM.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_NCM.Free;
end;

procedure TCAD_FM_C_ITE.txtNCMExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmGeral.CAD_CD_C_ITE.FieldByName('ID_NCM').Text :=
          TRIM(dmGeral.CAD_CD_C_ITE.FieldByName('ID_NCM').Text);
    dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMENCM').Text := '';

    if  dmGeral.CAD_CD_C_ITE.FieldByName('ID_NCM').Text <> '' then
     begin
       dmGeral.BUS_CD_C_NCM.Close;
       dmGeral.BUS_CD_C_NCM.Data :=
       dmGeral.BUS_CD_C_NCM.DataRequest(VarArrayOf([0,
                                      dmGeral.CAD_CD_C_ITE.FieldByName('ID_NCM').Text]));

       if dmGeral.BUS_CD_C_NCM.IsEmpty then
         begin
           ShowMessage('NCM não cadastrado.');
            dmGeral.CAD_CD_C_ITE.FieldByName('ID_NCM').Text := '';
           txtNCM.Text := '';
           txtNCM.SetFocus;
           exit;
         end;


     dmGeral.CAD_CD_C_ITE.FieldByName('INT_NOMENCM').Text :=
           dmGeral.BUS_CD_C_NCM.FieldByName('DESCRICAO').AsString;
     end;
end;

procedure TCAD_FM_C_ITE.txtNCMKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
    Key := #0;
end;

procedure TCAD_FM_C_ITE.txtObsExit(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_ITE_CUL.Post;
  pnlCultura.Enabled := false;
end;

procedure TCAD_FM_C_ITE.txtPerfilPrc4Exit(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_ITE_PRC.Post;

  pnlPreco.Enabled := false;
end;

procedure TCAD_FM_C_ITE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_ITE.txtPrcPrazoFilialExit(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_ITE_PRC.Post;

  pnlPrecoFilial.Enabled := false;
end;

procedure TCAD_FM_C_ITE.txtPrecoCatExit(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_ITE_CAT.Post;
  pnlCategoria.Enabled := false;
end;

procedure TCAD_FM_C_ITE.txtQdteComposicaoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtComposicao.Focused then
     begin
       exit;
     end;

  dmGeral.CAD_CD_C_ITE_COM.Post;

  pnlComposicao.Enabled := false;
  btnAddComposicao.SetFocus;

{   ActiveControl := nil;
       PostMessage(btnAddComposicao.Handle, WM_SETFOCUS, 0, 0);
       btnAddComposicao.SetFocus;}

end;

procedure TCAD_FM_C_ITE.txtQtdeExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if {btnAddIteConj.Focused or} txtBuscaItem.Focused or dgIteConj.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValQtde(dmGeral.CAD_CD_C_ITE_COJ.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;


  dmGeral.CAD_CD_C_ITE_COJ.Post;
end;

procedure TCAD_FM_C_ITE.txtTempoConjExit(Sender: TObject);
var
  tempo:String;
  qtde:Currency;
begin

   inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if {btnAddIteConj.Focused or} txtBuscaItem.Focused or dgIteConj.Focused then
     begin
       abort;
     end;

  if dmgeral.CAD_CD_C_ITE_COJ.FieldByName('QTDE_TEMPO').AsString = '' then
     begin
       ShowMessage('O campo "Tempo" deve ser preenchido.');
       txtTempoConj.SetFocus;
       abort;
     end;

  if Length(dmgeral.CAD_CD_C_ITE_COJ.FieldByName('QTDE_TEMPO').AsString) <>6 then
     begin
       ShowMessage('Tempo inválido.');
       txtTempoConj.SetFocus;
       abort;
     end;

  if  StrToInt(copy(dmgeral.CAD_CD_C_ITE_COJ.FieldByName('QTDE_TEMPO').AsString,5,2))>59 then
    begin
      ShowMessage('Tempo inválido.');
      txtTempoConj.SetFocus;
      abort;
    end;



  tempo := dmgeral.CAD_CD_C_ITE_COJ.FieldByName('QTDE_TEMPO').AsString;

  qtde := 0;
  if tempo<>'' then
    begin
      qtde := StrToInt(copy(dmgeral.CAD_CD_C_ITE_COJ.FieldByName('QTDE_TEMPO').AsString,1,3)) +
            RoundTo(StrToInt(copy(dmgeral.CAD_CD_C_ITE_COJ.FieldByName('QTDE_TEMPO').AsString,5,2))/60.0,-2);

    end;

  dmgeral.CAD_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency := qtde;
  dmGeral.CAD_CD_C_ITE_COJ.Post;
end;

procedure TCAD_FM_C_ITE.cbbFamiliaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFamilia(1,'%');
  cbbFamilia.DropDown;
end;

procedure TCAD_FM_C_ITE.cbbCategoriaEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BusCategoria(1,'%');
  cbbCategoria.DropDown;
end;

procedure TCAD_FM_C_ITE.cbbCategoriaExit(Sender: TObject);
var
 id_cat:integer;
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if dgPrecoCat.Focused or
       btnAddPecCat.Focused  then
       begin
         exit;
       end;

   dmGeral.CAD_CD_C_ITE_CAT.FieldByName('int_nomecat').AsString := '';
  if dmGeral.CAD_CD_C_ITE_CAT.FieldByName('id_cat').AsString = '' then
    begin
      ShowMessage('Deve-se preencher Categoria.');
      cbbCategoria.SetFocus;
      exit;
    end;

  dmgeral.BusCategoria(0,dmGeral.CAD_CD_C_ITE_CAT.FieldByName('id_cat').AsString);
  if dmGeral.BUS_CD_C_CAT.IsEmpty then
     begin
       ShowMessage('Categoria não cadastrado.');
       cbbCategoria.SetFocus;
     end;

    id_cat := dmGeral.CAD_CD_C_ITE_CAT.FieldByName('id_cat').AsInteger;

    dmGeral.CAD_CD_C_ITE_CAT.Cancel;
    if  dmGeral.CAD_CD_C_ITE_CAT.Locate('ID_CAT',id_cat,[]) then
      begin
        ShowMessage('A Categoria já tinha sido selecionado.');
        dmGeral.CAD_CD_C_ITE_CAT.Insert;
        cbbCategoria.SetFocus;
        exit;
      end
    else
      begin
        dmGeral.CAD_CD_C_ITE_CAT.Insert;
        dmGeral.CAD_CD_C_ITE_CAT.FieldByName('ID_CAT').AsInteger := id_cat;
        dmGeral.CAD_CD_C_ITE_CAT.FieldByName('ID_ITEM').AsInteger := dmGeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsInteger  ;
      end;

    dmGeral.CAD_CD_C_ITE_CAT.FieldByName('int_nomecat').AsString :=
               dmGeral.BUS_CD_C_CAT.FieldByName('DESCRICAO').AsString;
end;

procedure TCAD_FM_C_ITE.cbbClassificaoEtqEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusClassEtiquetaCol(1,'%');
  cbbClassificaoEtq.DropDown;
end;

procedure TCAD_FM_C_ITE.cbbCompraEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusUnidade;
  cbbCompra.DropDown;
end;

procedure TCAD_FM_C_ITE.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TCAD_FM_C_ITE.cbbCorExit(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_ITE_COJ.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.CAD_CD_C_ITE_COJ.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  pnlIteConj.Enabled := true;
  txtQtde.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TCAD_FM_C_ITE.cbbCulturaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCultura(1,'%');
  cbbCultura.DropDown;
end;

procedure TCAD_FM_C_ITE.cbbCulturaExit(Sender: TObject);
var
 id_cultura:integer;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
       begin
         exit;
       end;

  if dgCultura.Focused or
       btnAddCultura.Focused  then
       begin
         exit;
       end;

   dmGeral.CAD_CD_C_ITE_CUL.FieldByName('int_nomecul').AsString := '';
  if dmGeral.CAD_CD_C_ITE_CUL.FieldByName('id_cultura').AsString = '' then
    begin
      ShowMessage('Deve-se preencher Cultura.');
      cbbCultura.SetFocus;
      exit;
    end;

  dmgeral.BusCultura(0,dmGeral.CAD_CD_C_ITE_CUL.FieldByName('id_cultura').AsString);
  if dmGeral.BUS_CD_C_CUL.IsEmpty then
     begin
       ShowMessage('Cultura não cadastrado.');
       cbbCultura.SetFocus;
     end;

    id_cultura := dmGeral.CAD_CD_C_ITE_CUL.FieldByName('id_cultura').AsInteger;

    dmGeral.CAD_CD_C_ITE_CUL.Cancel;
    if  dmGeral.CAD_CD_C_ITE_CUL.Locate('ID_CULTURA',id_cultura,[]) then
      begin
        ShowMessage('A Cultura já tinha sido selecionado.');
        dmGeral.CAD_CD_C_ITE_CUL.Insert;
        cbbCultura.SetFocus;
        exit;
      end
    else
      begin
        dmGeral.CAD_CD_C_ITE_CUL.Insert;
        dmGeral.CAD_CD_C_ITE_CUL.FieldByName('ID_CULTURA').AsInteger := id_cultura;
        dmGeral.CAD_CD_C_ITE_CUL.FieldByName('ID_ITEM').AsInteger := dmGeral.CAD_CD_C_ITE.FieldByName('ID_ITEM').AsInteger  ;
      end;

    dmGeral.CAD_CD_C_ITE_CUL.FieldByName('int_nomecul').AsString :=
               dmGeral.BUS_CD_C_CUL.FieldByName('DESCRICAO').AsString;
end;

procedure TCAD_FM_C_ITE.cbbGrupoEnter(Sender: TObject);
begin
  inherited;
   if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) or
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) or
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true))  then
    begin
      if (dmGeral.CAD_CD_C_ITE.FieldByName('TIPO_SERVICO').AsBoolean=true) then
        dmGeral.BusGrupoEst(92,'0')
      else
        dmGeral.BusGrupoEst(93,'0');
    end
  else
    begin
     dmGeral.BusGrupoEst(90,'0');
    end;
  cbbGrupo.DropDown;
end;

procedure TCAD_FM_C_ITE.cbbGrupoExit(Sender: TObject);
begin
  inherited;
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean = true) and (dmGeral.BUS_CD_C_GRUtipo_item.Text = '09') then
    begin
      tabCategoria.TabVisible := true;
    end
  else
    begin
      tabCategoria.TabVisible := false;
    end;

  if (dmGeral.BUS_CD_C_GRUtipo_item.Text = '09') then
    begin
      label20.Visible := True;
      txtCusto.Visible := True;
    end
  else
    begin
      label20.Visible := False;
      txtCusto.Visible := False;
    end;

 

end;

procedure TCAD_FM_C_ITE.cbbPerfilEnter(Sender: TObject);
begin
  inherited;
    dmGeral.BusPerfil(1,'%');
    cbbPerfil.DropDown;
end;

procedure TCAD_FM_C_ITE.cbbPerfilExit(Sender: TObject);
var
 id_perfil,id_empresa:integer;
begin
  inherited;

   if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

   if dgPreco.Focused or
       btnAddPecPrc.Focused  then
       begin
         exit;
       end;

   dmGeral.CAD_CD_C_ITE_PRC.FieldByName('INT_DESC_PERFIL').AsString := '';
  if dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_PERFIL_CLI').AsString = '' then
    begin
      ShowMessage('Deve-se preencher perfil.');
      cbbPerfil.SetFocus;
      exit;
    end;


  dmGeral.BusPerfil(0,dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_PERFIL_CLI').AsString);
 if dmGeral.BUS_CD_C_PEC.IsEmpty then
     begin
       ShowMessage('Perfil não cadastrado.');
       cbbPerfil.SetFocus;
     end;



  id_perfil := dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_PERFIL_CLI').AsInteger;
  id_empresa := dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.CAD_CD_C_ITE_PRC.Cancel;
  if  dmGeral.CAD_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI;ID_EMPRESA', VarArrayOf([id_perfil,id_empresa]),[]) then
    begin
      ShowMessage('O perfil já tinha sido selecionado.');
      dmGeral.CAD_CD_C_ITE_PRC.Insert;
      cbbPerfil.SetFocus;
      exit;
    end
  else
    begin
      dmGeral.CAD_CD_C_ITE_PRC.Insert;
      dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_PERFIL_CLI').AsInteger := id_perfil;
      dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_EMPRESA').AsInteger := id_empresa;
    end;


    dmGeral.CAD_CD_C_ITE_PRC.FieldByName('INT_DESC_PERFIL').AsString :=
               dmGeral.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString;


end;

procedure TCAD_FM_C_ITE.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_ITE.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;

end;

procedure TCAD_FM_C_ITE.cbbTamanhoExit(Sender: TObject);
begin
  inherited;

  dmGeral.CAD_CD_C_ITE_COJ.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.CAD_CD_C_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.CAD_CD_C_ITE_COJ.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
     begin
       txtQtde.SetFocus;
       pnlCorTamanho.Visible := False;
     end;

end;

procedure TCAD_FM_C_ITE.cbbUsoEtiqEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusUsoEtiquetaCol(1,'%');
  cbbUsoEtiq.DropDown;
end;

procedure TCAD_FM_C_ITE.cbbVendaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusUnidade;
  cbbVenda.DropDown;
end;

procedure TCAD_FM_C_ITE.ChamaCorTamanhoConj;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        txtQtde.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left  := 125;
            pnlCorTamanho.Top   := 8;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 140;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 125;
                  pnlCorTamanho.Top   := 8;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := false;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 125;
                  pnlCorTamanho.Top := 8;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;
               end;
         end;
     end;
end;

procedure TCAD_FM_C_ITE.chbTipoServicoClick(Sender: TObject);
begin
  inherited;
  if chbTipoServico.Checked=true then
    DesabilitarCamposServicos(false)
  else
    DesabilitarCamposServicos(true);
end;

procedure TCAD_FM_C_ITE.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (dmGeral.CAD_CD_C_ITE.FieldByName('ATIVO').AsBoolean = false) then
    begin
      aFont.Color := clRed;
    end;
end;

procedure TCAD_FM_C_ITE.dbGridRowChanged(Sender: TObject);
begin
  inherited;

  if not dmGeral.CAD_CD_C_ITE.IsEmpty then
    begin

      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean = true) and (dmGeral.CAD_CD_C_ITEint_tipo_item.text = '09') then
        begin
          tabCategoria.TabVisible := true;
        end
      else
        begin
          tabCategoria.TabVisible := false;
        end;

      if (dmGeral.CAD_CD_C_ITEint_tipo_item.text = '09') then
        begin
          label20.Visible := True;
          txtCusto.Visible := True;
        end
      else
        begin
          label20.Visible := False;
          txtCusto.Visible := False;
        end;


    end;
end;

procedure TCAD_FM_C_ITE.dgComposicaoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgComposicaoIButton.Enabled := False;
     if dmGeral.CAD_CD_C_ITE_COM.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_ITE_COM.Delete;
     dmGeral.CAD_CD_C_ITE_COM.Edit;
  finally
    dgComposicaoIButton.Enabled := true;
  end;
end;

procedure TCAD_FM_C_ITE.dgComposicaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlComposicao.Enabled = False then
     pnlComposicao.Enabled := True;

  dmGeral.CAD_CD_C_ITE_COM.cancel;

  if dmGeral.CAD_CD_C_ITE_COM.IsEmpty then
     begin
       txtComposicao.Enabled := True;
       dmGeral.CAD_CD_C_ITE_COM.Append;
       pnlComposicao.Enabled := true;
       txtComposicao.SetFocus;
     end
  else
    begin
     txtComposicao.Enabled := false;
     dmGeral.CAD_CD_C_ITE_COM.Edit;
     pnlComposicao.Enabled := true;
     txtQdteComposicao.SetFocus;
    end;
end;

procedure TCAD_FM_C_ITE.dgCulturaIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgCulturaIButton.Enabled := False;
     if dmGeral.CAD_CD_C_ITE_CUL.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_ITE_CUL.Delete;
     dmGeral.CAD_CD_C_ITE_CUL.Edit;
  finally
    dgCulturaIButton.Enabled := true;
  end;
end;

procedure TCAD_FM_C_ITE.dgCulturaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlCultura.Enabled = False then
     pnlCultura.Enabled := True;

  dmGeral.CAD_CD_C_ITE_CUL.cancel;

  if dmGeral.CAD_CD_C_ITE_CUL.IsEmpty then
     begin
       cbbCultura.Enabled := True;
       dmGeral.CAD_CD_C_ITE_CUL.Append;
       pnlCultura.Enabled := true;
       cbbCultura.SetFocus;
     end
  else
    begin
     cbbCultura.Enabled := false;
     dmGeral.BusCultura(1,'%');
     dmGeral.CAD_CD_C_ITE_CUL.Edit;
     pnlCultura.Enabled := True;
     txtObs.SetFocus;
    end;
end;

procedure TCAD_FM_C_ITE.dgEspecificacaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlEspecificacao.Enabled = False then
     pnlEspecificacao.Enabled := True;

  dmGeral.CAD_CD_C_ITE_ESP.cancel;

  if dmGeral.CAD_CD_C_ITE_ESP.IsEmpty then
     begin
       txtEspecificacao.Enabled := True;
       dmGeral.CAD_CD_C_ITE_ESP.Append;
       pnlEspecificacao.Enabled := true;
       txtEspecificacao.SetFocus;
     end
  else
    begin
     txtEspecificacao.Enabled := False;
     dmGeral.CAD_CD_C_ITE_ESP.Edit;
     pnlEspecificacao.Enabled := True;
     txtEspecificacao.SetFocus;
    end;
end;

procedure TCAD_FM_C_ITE.dgIteConjIButtonClick(Sender: TObject);
begin
  inherited;
   try
     dgIteConjIButton.Enabled := False;
     if dmGeral.CAD_CD_C_ITE_COJ.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;


     dmGeral.CAD_CD_C_ITE_COJ.Delete;

     txtTempoConj.OnExit := nil;
     txtQtde.OnExit := nil;
     pnlIteConj.Enabled := False;
  finally
    dgIteConjIButton.Enabled := true;
    txtTempoConj.OnExit := txtTempoConjExit;
    txtQtde.OnExit := txtQtdeExit;
  end;
end;

procedure TCAD_FM_C_ITE.dgIteConjMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  BUS_ITE_COJ:TClientDataSet;
begin
  inherited;
   if pnlIteConj.Enabled = False then
     pnlIteConj.Enabled := True;

  dmGeral.CAD_CD_C_ITE_COJ.cancel;

  if dmGeral.CAD_CD_C_ITE_COJ.IsEmpty then
     begin
       txtBuscaItem.Enabled := True;
       dmGeral.CAD_CD_C_ITE_COJ.Append;
       pnlIteConj.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
    begin
     txtBuscaItem.Enabled := false;
     dmGeral.CAD_CD_C_ITE_COJ.Edit;
     pnlIteConj.Enabled := True;

     BUS_ITE_COJ := TClientDataSet.Create(nil);
     BUS_ITE_COJ.RemoteServer := dmGeral.pcConecao;
     BUS_ITE_COJ.ProviderName := 'BUS_DP_C_ITE_COJ';
     BUS_ITE_COJ.Close;
     BUS_ITE_COJ.Data :=
     BUS_ITE_COJ.DataRequest(
         VarArrayOf([0,dmGeral.CAD_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsString]));

    if (dmGeral.CAD_CD_C_ITE_COJ.FieldByName('INT_INF_TEMPO_ITE_COJ').AsBoolean=true) AND (BUS_ITE_COJ.IsEmpty) then
       begin
        txtQtde.Enabled := false;
        txtQtde.Color := $00DADADA;
        txtTempoConj.Enabled := true;
        txtTempoConj.Color := clWhite;
        txtTempoConj.SetFocus;
       end
     else
       begin
        txtTempoConj.Enabled := false;
        txtTempoConj.Color := $00DADADA;
        txtQtde.Enabled := true;
        txtQtde.Color := clWhite;
        txtQtde.SetFocus;
       end;
     BUS_ITE_COJ.Close;
    end;
end;

procedure TCAD_FM_C_ITE.dgPrecoCatIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgPrecoCatIButton.Enabled := False;
     if dmGeral.CAD_CD_C_ITE_CAT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_ITE_CAT.Delete;
     dmGeral.CAD_CD_C_ITE_CAT.Edit;
  finally
    dgPrecoCatIButton.Enabled := true;
  end;
end;

procedure TCAD_FM_C_ITE.dgPrecoCatMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlCategoria.Enabled = False then
     pnlCategoria.Enabled := True;

  dmGeral.CAD_CD_C_ITE_CAT.cancel;

  if dmGeral.CAD_CD_C_ITE_CAT.IsEmpty then
     begin
       cbbCategoria.Enabled := True;
       dmGeral.CAD_CD_C_ITE_CAT.Append;
       pnlCategoria.Enabled := true;
       cbbCategoria.SetFocus;
     end
  else
    begin
     cbbCategoria.Enabled := False;
     dmGeral.CAD_CD_C_ITE_CAT.Edit;
     pnlCategoria.Enabled := True;
     txtPrecoCat.SetFocus;
    end;
end;

procedure TCAD_FM_C_ITE.dgPrecoFilialBtnClick(Sender: TObject);
begin
  inherited;
   if (dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_EMPRESA').AsString=dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString) then
     begin
        try
           dgPrecoIButton.Enabled := False;
           if dmGeral.CAD_CD_C_ITE_PRC.IsEmpty then
              begin
                ShowMessage('Não há registro para excluir.');
                abort;
              end;
           dmGeral.CAD_CD_C_ITE_PRC.Delete;
           dmGeral.CAD_CD_C_ITE_PRC.Edit;
        finally
          dgPrecoIButton.Enabled := true;
        end;
     end
   else
     begin
       ShowMessage('Exclusão não permitida. Registro de preço de outra filial!');
     end;
end;

procedure TCAD_FM_C_ITE.dgPrecoFilialMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if (dmGeral.CAD_CD_C_ITE_PRC.FieldByName('ID_EMPRESA').AsString=dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString) then
     begin
      if pnlPrecoFilial.Enabled = False then
         pnlPrecoFilial.Enabled := True;

      dmGeral.CAD_CD_C_ITE_PRC.cancel;

      if dmGeral.CAD_CD_C_ITE_PRC.IsEmpty then
         begin
           dmGeral.CAD_CD_C_ITE_PRC.Append;
           pnlPrecoFilial.Enabled := true;
           txtPrcVistaFilial.SetFocus;
         end
      else
        begin
         dmGeral.CAD_CD_C_ITE_PRC.Locate('ID_EMPRESA',dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,[]);
         dmGeral.CAD_CD_C_ITE_PRC.Edit;
         pnlPrecoFilial.Enabled := True;
         txtPrcVistaFilial.SetFocus;
        end;
     end
   else
     begin
      ShowMessage('Edição não permitida. Registro de preço de outra filial!');
     end;
end;

procedure TCAD_FM_C_ITE.dgPrecoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgPrecoIButton.Enabled := False;
     if dmGeral.CAD_CD_C_ITE_PRC.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_ITE_PRC.Delete;
     dmGeral.CAD_CD_C_ITE_PRC.Edit;
  finally
    dgPrecoIButton.Enabled := true;
  end;
end;

procedure TCAD_FM_C_ITE.dgPrecoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   if pnlPreco.Enabled = False then
     pnlPreco.Enabled := True;

  dmGeral.CAD_CD_C_ITE_PRC.cancel;

  if dmGeral.CAD_CD_C_ITE_PRC.IsEmpty then
     begin
       cbbPerfil.Enabled := True;
       dmGeral.CAD_CD_C_ITE_PRC.Append;
       pnlPreco.Enabled := true;
       cbbPerfil.SetFocus;
     end
  else
    begin
     cbbPerfil.Enabled := False;
     dmGeral.CAD_CD_C_ITE_PRC.Edit;
     pnlPreco.Enabled := True;
     txtPerfilPrecoVista.SetFocus;
    end;
end;

procedure TCAD_FM_C_ITE.txtQtdeEtqExit(Sender: TObject);
Var
i:Integer;
begin
  inherited;
  if (txtEtiqueta.Text = '0') or (txtEtiqueta.Text = '') then
    begin
      Showmessage('Foi informado "0" etiquetas!');
      pnlEtiqueta.Visible := False;
      exit;
    end;

  if (txtQtdeEtq.Text = '0') or (txtQtdeEtq.Text = '') then
    begin
      Showmessage('Foi informado "0" etiquetas!');
      pnlEtiqueta.Visible := False;
      exit;
    end;

  if StrToInt(txtEtiqueta.Text) <= 30  then
    begin
      CAD_CD_C_ITE_ETQ.EmptyDataSet;
      for I := 1 to (30 - StrToInt(txtEtiqueta.Text)) do
        begin
          CAD_CD_C_ITE_ETQ.Insert;
          CAD_CD_C_ITE_ETQ.FieldByName('id_item').AsString := '0';
          CAD_CD_C_ITE_ETQ.Post;
        end;
    end
  else
    begin
      Showmessage('Deve-se utilizar papel "Carta" com 30 etiquetas.');
      txtEtiqueta.SetFocus;
      exit;
    end;

  pnlEtiqueta.Visible := False;

  GerarEtiqueta;

  CAD_CD_C_ITE_ETQ.IndexFieldNames := 'id_item';
  CAD_FR_C_ITE_ETQ.PrepareReport();
  CAD_FR_C_ITE_ETQ.ShowReport();
end;

end.
