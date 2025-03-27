unit FAT_UN_M_PED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,  datasnap.DBClient,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, JvBaseEdits, Vcl.DBCtrls,
  vcl.Wwdbedit, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls,
  vcl.wwdblook, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.Buttons, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.DBGrids, vcl.Wwdotdot,
  vcl.Wwdbcomb, vcl.wwclearbuttongroup, vcl.wwradiogroup, vcl.wwcheckbox,
  vcl.Wwdatainspector, frxClass, frxDBSet, frxExportPDF,
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
  dxSkinXmas2008Blue, RDprint,System.Math, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, Vcl.ComCtrls;

type
  TFAT_FM_M_PED = class(TPAD_FM_X_PAD)
    Label5: TLabel;
    Label7: TLabel;
    lblVendedor: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    gbGerTitulos: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dsPedtIten: TwwDataSource;
    dsPedTitulos: TwwDataSource;
    pnItens: TPanel;
    lblItem: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    txtQtde: TwwDBEdit;
    txtVlrUnitario: TwwDBEdit;
    txtPerDesconto: TwwDBEdit;
    txtVlrDesconto: TwwDBEdit;
    txtBuscaItem: TJvDBComboEdit;
    txtItemDescricao: TDBText;
    Label13: TLabel;
    txtUnidade: TDBText;
    txtClienteNome: TDBText;
    cbbCondicaoPagamento: TwwDBLookupCombo;
    cbbTipoEstoque: TwwDBLookupCombo;
    cbbVendedor: TwwDBLookupCombo;
    cbbAtendente: TwwDBLookupCombo;
    grdItensIButton: TwwIButton;
    txtVlrTotal: TwwDBEdit;
    lblBruto: TLabel;
    txtVlrBruto: TwwDBEdit;
    txtPerDesc: TwwDBEdit;
    lblVlrDesc: TLabel;
    lblPerDesc: TLabel;
    txtTotalVlrDesc: TwwDBEdit;
    lblTotalPed: TLabel;
    wwDBEdTotalLiqItens: TwwDBEdit;
    txtOutrasObs: TDBMemo;
    lblOutrasObs: TLabel;
    txtFpgEntrada: TJvComboEdit;
    txtVlrEntrada: TJvValidateEdit;
    txtGerFpg: TJvComboEdit;
    txtQtdeParc: TEdit;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    btnImportar: TcxButton;
    lblSaldo: TLabel;
    txtSaldo: TEdit;
    ImageList7: TImageList;
    ImageList4: TImageList;
    ImageList1: TImageList;
    BUS_DS_C_CLI: TDataSource;
    FAT_FR_M_PED_SGQ: TfrxReport;
    FAT_FD_M_PED: TfrxDBDataset;
    FAT_FD_M_PED_ITE: TfrxDBDataset;
    FAT_FD_M_PED_TIT: TfrxDBDataset;
    FAT_FR_M_PED_SGQ2: TfrxReport;
    BUS_FD_C_CLI: TfrxDBDataset;
    CAD_FD_C_PAR: TfrxDBDataset;
    frxPDFExport: TfrxPDFExport;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    gbFormasPgt: TGroupBox;
    lblCubagem: TLabel;
    txtCubagem: TDBEdit;
    Label18: TLabel;
    txtCodOrc: TDBEdit;
    Panel1: TPanel;
    lblEmAberto: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    txtCliente: TJvDBComboEdit;
    chbEnviaCarga: TDBCheckBox;
    lblDtaEntrega: TLabel;
    txtDtaEntrega: TJvDBDateEdit;
    lblNumOrdPro: TLabel;
    txtOrdProd: TwwDBEdit;
    pmVisualisarRestricoes: TPopupMenu;
    btnVisualizarRest: TMenuItem;
    FAT_FR_M_PED_REV: TfrxReport;
    rdPedCompleto: TRDprint;
    txtDiasPrazo: TwwDBEdit;
    lblDiasPrazo: TLabel;
    mmPcpObsIte: TDBMemo;
    lblMedida: TLabel;
    lblItemSobMed: TLabel;
    txtPcpObsItem: TDBMemo;
    pnlCultura: TPanel;
    cbbCultura: TwwDBLookupCombo;
    lblCultura: TLabel;
    lblPropriedade: TLabel;
    cbbPropriedade: TwwDBLookupCombo;
    txtFrete: TwwDBEdit;
    lblFrete: TLabel;
    cbbModFrete: TwwDBComboBox;
    lblTipoFrete: TLabel;
    lblMotorista: TLabel;
    FAT_FR_M_PED_ROM: TfrxReport;
    btnImpRomaneio: TBitBtn;
    BUS_FD_C_MTA: TfrxDBDataset;
    txtIdPlaca: TwwDBEdit;
    lblPlaca: TLabel;
    txtDescMotorista: TDBText;
    txtCodMotorista: TJvDBComboEdit;
    Label8: TLabel;
    txtCredDisp: TEdit;
    txtCreditoUtil: TwwDBEdit;
    lblCredUtil: TLabel;
    lblDescEspecial: TLabel;
    lblDescBasc: TLabel;
    txtDescBasc: TwwDBEdit;
    txtDescEspecial: TwwDBEdit;
    Label16: TLabel;
    txtComissao: TwwDBEdit;
    lblComissao: TLabel;
    lblComPer: TLabel;
    pmImpressaoPed: TPopupMenu;
    btnImpPedPreco: TMenuItem;
    btnImpPedLoc: TMenuItem;
    txtIcmsDesn: TwwDBEdit;
    lblIcmDesn: TLabel;
    FAT_FR_M_PED_REV_LOC: TfrxReport;
    pnlDesn: TPanel;
    Label17: TLabel;
    Label19: TLabel;
    cbbMotDesn: TwwDBLookupCombo;
    txtIcmsDesnIte: TwwDBEdit;
    pnlDescPecServ: TPanel;
    txtDescPec: TwwDBEdit;
    lblDescPec: TLabel;
    txtDescServ: TwwDBEdit;
    Label20: TLabel;
    txtDescTer: TwwDBEdit;
    Label30: TLabel;
    txtVlrPec: TwwDBEdit;
    Label31: TLabel;
    txtVlrServ: TwwDBEdit;
    Label32: TLabel;
    txtVlrTer: TwwDBEdit;
    Label33: TLabel;
    dsPedTitSer: TwwDataSource;
    cbbTitPecaServico: TComboBox;
    gbCredito: TGroupBox;
    lblCredPecas: TLabel;
    lblCredServico: TLabel;
    txtCredPecas: TwwDBEdit;
    txtCredServico: TwwDBEdit;
    pcTitulos: TPageControl;
    tsPeca: TTabSheet;
    pnTitulos: TPanel;
    lbl6: TLabel;
    lb2: TLabel;
    lbl8: TLabel;
    lbl7: TLabel;
    txtFormaPgto: TwwDBLookupCombo;
    txtDias: TDBEdit;
    txtVlrTitulo: TDBEdit;
    gbCheque: TGroupBox;
    lblEmitente: TLabel;
    lblBanco: TLabel;
    lblAgencia: TLabel;
    lblContaCorrente: TLabel;
    lblNCheque: TLabel;
    txtEmitenteChq: TDBEdit;
    txtBanco: TDBEdit;
    txtAgencia: TDBEdit;
    txtContaCorrente: TDBEdit;
    txtNCheque: TDBEdit;
    btn_Add_Fpg: TBitBtn;
    grdFpg: TwwDBGrid;
    grdFpgIButton: TwwIButton;
    tsServico: TTabSheet;
    pnlTitSer: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    txtFormaPgtoSer: TwwDBLookupCombo;
    txtDiasSer: TDBEdit;
    txtVlrTituloSer: TDBEdit;
    gbChequeSer: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    txtEmitenteChqSer: TDBEdit;
    txtBancoSer: TDBEdit;
    txtAgenciaSer: TDBEdit;
    txtContaCorrenteSer: TDBEdit;
    txtNChequeSer: TDBEdit;
    btn_Add_Fpg_ser: TBitBtn;
    grdFpgSer: TwwDBGrid;
    grdFpgSerIButton: TwwIButton;
    FAT_FD_M_PED_TIT_SER: TfrxDBDataset;
    FAT_FR_M_PED_OFI: TfrxReport;
    pnlMecTer: TPanel;
    Label15: TLabel;
    cbbMecanico: TwwDBLookupCombo;
    txtObservacao: TwwDBEdit;
    txtPesquisaData: TJvDateEdit;
    txtVencimento: TJvDBDateEdit;
    txtVencimentoSer: TJvDBDateEdit;
    pnlMec: TPanel;
    Label43: TLabel;
    cbbMecPai: TwwDBLookupCombo;
    mpAlterarComRepr: TMenuItem;
    txtTextoCondPgto: TwwDBEdit;
    lblTextoCondPgto: TLabel;
    lblPerDescBasc: TLabel;
    lblPerDescEspecial: TLabel;
    txtPercDescBasc: TwwDBEdit;
    txtPercDescEspecial: TwwDBEdit;
    lblGeracaoPedido: TLabel;
    Visualizarinformaesdaimpresso1: TMenuItem;
    Panel2: TPanel;
    btnAtualizaCont: TBitBtn;
    btnGerarPDF: TBitBtn;
    BUS_CD_M_PED: TClientDataSet;
    BUS_CD_M_PEDid_pedido: TIntegerField;
    BUS_CD_M_PEDid_func_pri_impressao: TIntegerField;
    BUS_CD_M_PEDdta_pri_impressao: TDateField;
    BUS_CD_M_PEDhor_pri_impressao: TTimeField;
    BUS_CD_M_PEDid_func_seg_impressao: TIntegerField;
    BUS_CD_M_PEDdta_seg_impressao: TDateField;
    BUS_CD_M_PEDhor_seg_impressao: TTimeField;
    BUS_CD_M_PEDid_func_ter_impressao: TIntegerField;
    BUS_CD_M_PEDdta_ter_impressao: TDateField;
    BUS_CD_M_PEDhor_ter_impressao: TTimeField;
    BUS_CD_M_PEDmotivo_seg_impressao: TWideStringField;
    BUS_CD_M_PEDmotivo_ter_impressao: TWideStringField;
    BUS_CD_M_PEDsituacao: TIntegerField;
    PCP_CD_M_ROM: TClientDataSet;
    PCP_CD_M_ROMid_rom: TIntegerField;
    PCP_CD_M_ROMid_empresa: TIntegerField;
    PCP_CD_M_ROMdta_emissao: TDateField;
    PCP_CD_M_ROMid_responsavel: TIntegerField;
    PCP_CD_M_ROMid_motorista: TIntegerField;
    PCP_CD_M_ROMobservacao: TWideStringField;
    PCP_CD_M_ROMint_nomemta: TWideStringField;
    PCP_CD_M_ROMint_nomeres: TWideStringField;
    PCP_CD_M_ROMcod_lme: TWideStringField;
    PCP_CD_M_ROMrev_lme: TWideStringField;
    PCP_CD_M_ROMplaca: TWideStringField;
    PCP_CD_M_ROMint_fonemta: TWideStringField;
    PCP_CD_M_ROMint_celuar: TWideStringField;
    PCP_CD_M_ROMint_email: TWideStringField;
    PCP_CD_M_ROMlot_qtde_total: TFloatField;
    PCP_CD_M_ROMhor_emissao: TTimeField;
    PCP_CD_M_ROMhor_alt: TTimeField;
    PCP_CD_M_ROMid_resp_alt: TIntegerField;
    PCP_CD_M_ROMdta_alt: TDateField;
    PCP_CD_M_ROMhor_fin: TTimeField;
    PCP_CD_M_ROMdta_fin: TDateField;
    PCP_CD_M_ROMid_resp_fin: TIntegerField;
    PCP_CD_M_ROMint_nomeres_alt: TWideStringField;
    PCP_CD_M_ROMint_nomeres_fin: TWideStringField;
    PCP_CD_M_ROMped_ite_qtde_total: TIntegerField;
    PCP_CD_M_ROMid_pca: TIntegerField;
    PCP_CD_M_ROMqtde_total_ite_conf: TFloatField;
    PCP_CD_M_ROMseq_pca_carreg_anual: TIntegerField;
    PCP_CD_M_ROMPCP_SQ_M_ROM_PED: TDataSetField;
    PCP_CD_M_ROM_PED: TClientDataSet;
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure btn_Add_FpgClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbCondicaoPagamentoEnter(Sender: TObject);
    procedure cbbTipoEstoqueEnter(Sender: TObject);
    procedure cbbVendedorEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtVlrUnitarioExit(Sender: TObject);
    procedure cbbAtendenteEnter(Sender: TObject);
    procedure grdFpgIButtonClick(Sender: TObject);
    procedure grdFpgMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtDiasExit(Sender: TObject);
    procedure txtFormaPgtoEnter(Sender: TObject);
    procedure txtPerDescontoExit(Sender: TObject);
    procedure txtVlrDescontoExit(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtVlrTituloExit(Sender: TObject);
    procedure pnTitulosExit(Sender: TObject);
    procedure txtFpgEntradaButtonClick(Sender: TObject);
    procedure txtFpgEntradaExit(Sender: TObject);
    procedure txtVlrEntradaExit(Sender: TObject);
    procedure txtGerFpgButtonClick(Sender: TObject);
    procedure txtGerFpgExit(Sender: TObject);
    procedure txtQtdeParcExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbCondicaoPagamentoExit(Sender: TObject);
    procedure txtPerDescontoEnter(Sender: TObject);
    procedure txtVlrDescontoEnter(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtQtdeEnter(Sender: TObject);
    procedure txtBuscaItemEnter(Sender: TObject);
    procedure btnAtualizaContClick(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure txtFormaPgtoExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdFpgRowChanged(Sender: TObject);
    procedure txtEmitenteChqExit(Sender: TObject);
    procedure txtFormaPgtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_Add_FpgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_Add_ItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVisualizarRestClick(Sender: TObject);
    procedure txtTotalVlrDescExit(Sender: TObject);
    procedure txtTotalVlrDescEnter(Sender: TObject);
    procedure txtDiasPrazoExit(Sender: TObject);
    procedure mmPcpObsIteExit(Sender: TObject);
    procedure mmPcpObsIteEnter(Sender: TObject);
    procedure txtClienteEnter(Sender: TObject);
    procedure cbbCulturaEnter(Sender: TObject);
    procedure cbbCulturaExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure cbbPropriedadeEnter(Sender: TObject);
    procedure cbbPropriedadeExit(Sender: TObject);
    procedure cbbModFreteExit(Sender: TObject);
    procedure txtFreteExit(Sender: TObject);
    procedure FAT_FD_M_PED_ITECheckEOF(Sender: TObject; var Eof: Boolean);
    procedure btnImpRomaneioClick(Sender: TObject);
    procedure txtCodMotoristaButtonClick(Sender: TObject);
    procedure txtCodMotoristaExit(Sender: TObject);
    procedure txtIdPlacaExit(Sender: TObject);
    procedure cbbModFreteEnter(Sender: TObject);
    procedure txtCreditoUtilExit(Sender: TObject);
    procedure txtDescBascExit(Sender: TObject);
    procedure txtDescBascEnter(Sender: TObject);
    procedure txtDescEspecialExit(Sender: TObject);
    procedure txtDescEspecialEnter(Sender: TObject);
    procedure txtBancoExit(Sender: TObject);
    procedure txtAgenciaExit(Sender: TObject);
    procedure txtContaCorrenteExit(Sender: TObject);
    procedure txtNChequeExit(Sender: TObject);
    procedure txtComissaoExit(Sender: TObject);
    procedure btnImpPedLocClick(Sender: TObject);
    procedure btnImpPedPrecoClick(Sender: TObject);
    procedure txtIcmsDesnExit(Sender: TObject);
    procedure cbbMotDesnEnter(Sender: TObject);
    procedure txtIcmsDesnIteExit(Sender: TObject);
    procedure pnlTitSerExit(Sender: TObject);
    procedure btn_Add_Fpg_serClick(Sender: TObject);
    procedure txtFormaPgtoSerEnter(Sender: TObject);
    procedure txtFormaPgtoSerExit(Sender: TObject);
    procedure txtFormaPgtoSerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdFpgSerIButtonClick(Sender: TObject);
    procedure txtDiasSerExit(Sender: TObject);
    procedure txtVencimentoSerExit(Sender: TObject);
    procedure txtVlrTituloSerExit(Sender: TObject);
    procedure txtBancoSerExit(Sender: TObject);
    procedure txtAgenciaSerExit(Sender: TObject);
    procedure txtContaCorrenteSerExit(Sender: TObject);
    procedure txtNChequeSerExit(Sender: TObject);
    procedure txtEmitenteChqSerExit(Sender: TObject);
    procedure grdFpgSerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdFpgSerRowChanged(Sender: TObject);
    procedure txtCredPecasExit(Sender: TObject);
    procedure txtCredServicoExit(Sender: TObject);
    procedure cbbMecanicoEnter(Sender: TObject);
    procedure cbbMecanicoExit(Sender: TObject);
    procedure txtObservacaoEnter(Sender: TObject);
    procedure txtObservacaoExit(Sender: TObject);
    procedure cbbMecPaiEnter(Sender: TObject);
    procedure cbbMecPaiExit(Sender: TObject);
    procedure mpAlterarComReprClick(Sender: TObject);
    procedure txtTextoCondPgtoExit(Sender: TObject);
    procedure txtPercDescBascEnter(Sender: TObject);
    procedure txtPercDescBascExit(Sender: TObject);
    procedure txtPercDescEspecialEnter(Sender: TObject);
    procedure txtPercDescEspecialExit(Sender: TObject);
    procedure txtFpgEntradaEnter(Sender: TObject);
    procedure cbbVendedorExit(Sender: TObject);
    procedure mmPcpObsIteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FAT_FR_M_PED_SGQ2AfterPrintReport(Sender: TObject);
    procedure Visualizarinformaesdaimpresso1Click(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
  private
    { Private declarations }
     procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
     function  VerifCamposPaiObrig:Boolean;
     procedure Limparcampos;
     procedure PassarCdsAnterior;
     procedure AcoesIniciais;
     function  AcoesPosTestes: Boolean;
     procedure VerifRestricoes;
     procedure ChamaCorTamanho;
     procedure GravarPedidoVenda;
     procedure ExcluirPedidoVenda;
     procedure ExcluirOrcamento;
     procedure Atualizar_xBusca;
     procedure AbrirBuscas;
     procedure ExibirFormasPgto;
     procedure ImprimirPedidoMatricial;
     procedure RecalcularPrecoItens;
     procedure BuscarCulturas(id_item:String);
     procedure ChamaMecanicoTerceiro;
     procedure AtivarDesativarTabStopsDosDescontos(estado: Boolean);
     procedure ChamarDadosDaImpressao(tipo:integer);
     procedure ImprimirPedido(tipo: string);
     var
       xbusca_item,xIdCpgAnt,xTipoCpgAnt: String;
       xPercDescPerm,vlrDescTotalAnt,PerDescEspecialTotalAnt,vlrDescEspecialTotalAnt,
       PerDescBasicTotalAnt, vlrDescBasicTotalAnt: Currency;
       xCdsPaiAntigo, xCdsItensAntigo, xCdsTitulosAntigo:  TClientDataSet;
       Tipo_Item,diasPrazo_ant,tipo_cond_pag: integer;
       HabilitarVlrDesc:Boolean;
       clienteConsumidor:Boolean;
       vlrLiqIteAnt:Currency;
       CodFpgHrq:String;
       xCodCliAnt: String;
       total_cred,xCred_disp,xCred_Util, xCred_Serv,xCred_pec :Currency;
       xVlrDescIteAnterior, xPerDescIteAnterior: Currency;
       xPercDescPermRegIte: Currency;



  public
    { Public declarations }
    xChamadoPor_TeleMarketing:Boolean;
    cdsMarketing: TClientDataSet;
    xMark_IdCliente,xMark_IdMkt: Integer;
  end;

var
  FAT_FM_M_PED: TFAT_FM_M_PED;
  xQtdeAnterior: currency;
  xPed_MedidasPerson: String;
  xint_unif_desc_reg: Boolean;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_CPG, PSQ_UN_X_FUN, PSQ_UN_X_TME,uProxy,UApplayClassProxy,
  PSQ_UN_X_ITE, PSQ_UN_X_FPG, FAT_UN_M_PED_IOR,
  FAT_RN_M_PED, FAT_RN_M_NFE, FAT_UN_M_PED_RTC, enFunc, uDmSgq, PSQ_UN_X_MTA,
  FAT_UN_M_PED_SEN, FAT_UN_M_PED_IPE, FAT_UN_M_PED_BIP, FAT_UN_M_PED_MOT,
  enConstantes;

procedure TFAT_FM_M_PED.AbrirBuscas;
begin
 // FAT_RN_M_PED.BusFuncionarioAtivo;
  dmGeral.BusFuncionario2(1,'%');
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFuncionario3(0,IntToStr(xFuncionario));
  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusCondPgto(3,dmGeral.CAD_CD_C_PARid_empresa.AsString); // Busca as condições de pagamento que constam na tabela
                              // CAD_TB_C_PAR_CPG

  // Trás somente tipo de estoque do tipo SAÍDA e indicador NORMAL
  if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1 then
     begin
       if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('fat_id_tipo_mov_estoque_rep').AsString <> '' then
          dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('fat_id_tipo_mov_estoque_rep').AsString)
       else
          dmGeral.BusTipoEstoque(4,'1');
     end
  else
     begin
       dmGeral.BusTipoEstoque(4,'1');
     end;


  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean then
    begin
      dmGeral.BusCultura(1,'%');
    end;

  dmSgq.BusMotorista(1,'%');

  dmGeral.BUS_PR_X_MDS;
  dmGeral.BUS_CD_C_FUN_MEC.Open;
end;

procedure TFAT_FM_M_PED.BuscarCulturas(id_item:String);
var
  xCultura:String;
begin
  dmGeral.BUS_CD_C_ITE_CUL.Close;
  dmGeral.BUS_CD_C_ITE_CUL.Data :=
          dmGeral.BUS_CD_C_ITE_CUL.DataRequest(VarArrayOf([0,id_item]));

  xCultura := '';
  dmGeral.BUS_CD_C_ITE_CUL.First;
  while NOT dmGeral.BUS_CD_C_ITE_CUL.eof do
    begin
      if xCultura = '' then
        begin
          xCultura := xCultura+''''+dmGeral.BUS_CD_C_ITE_CUL.FieldByName('ID_CULTURA').AsString+'''';
        end
      else
        begin
          xCultura := xCultura+','+''''+dmGeral.BUS_CD_C_ITE_CUL.FieldByName('ID_CULTURA').AsString+'''';
        end;
      dmGeral.BUS_CD_C_ITE_CUL.Next;
    end;
    dmGeral.BUS_CD_C_ITE_CUL.Close;

  if xCultura<>'' then
    begin
     dmGeral.BusCultura(2,xCultura);
    end
  else
    begin
     dmGeral.BusCultura(0,'0');
    end;

end;

procedure TFAT_FM_M_PED.acAdicionaExecute(Sender: TObject);
begin
  inherited;
   {Coloquei esse if, para corrigir seguinte erro:
     Situação:
      1 - abre a rotina de Pedido de Vendas
      2 - abre a rotina de Liberação
      3 - fecha a rotina de Liberação
      4 - clica em adcionar o pedido
     aí vai dar o erro: FAT_CD_M_PED: Cannot perform this operation on a closed dataset.

     Resp.:Luan. Data:14/09/2016
   }
  if dmGeral.FAT_CD_M_PED.IsEmpty then
    begin
      dmGeral.FAT_CD_M_PED.Close;
      dmGeral.FAT_CD_M_PED.Data :=
      dmGeral.FAT_CD_M_PED.DataRequest(
                  VarArrayOf([0, '']));
    end;


  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_ID_FORMA_PAG_RCR').AsString = '' then
    begin
      ShowMessage('Deve ser preenchido forma de pagamento para nota de crédito na aba Controle no bloco Pedido de Venda.');
      exit;
    end;


  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_tipo_comissao').AsInteger = 1) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_per_comissao_max').AsString = '')) then
    begin
      ShowMessage('É necessário preencher o percentual máximo de comissão na tela de parametros, na aba Produção.');
      exit;
    end;



  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED);

  // Se vendedor externo
  if dmGeral.CAD_CD_C_FUN.FieldByName('vnd_interno_externo').AsInteger = 1 then  // Se for vendedor externo
     begin
        if trim(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_ped_id_condicao_pag').AsString) <> ''  then
           begin
             dmGeral.BusCondPgto(0,dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_orc_id_condicao_pag').AsString);
           end;
     end;


  HabilDesabCampos(true,clWindow);
  pnItens.Enabled := false;
  pnTitulos.Enabled := false;

  Limparcampos;

  dmGeral.FAT_CD_M_PED.FieldByName('ped_gera_fin_separado').AsBoolean :=
                       dmGeral.CAD_CD_C_PAR_CTR.FieldBYName('ORV_GERA_FIN_SEPARADO').AsBoolean;

  dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean :=
                       dmGeral.CAD_CD_C_PAR_CTR.FieldBYName('nfe_separa_prod_serv').AsBoolean;

  dmGeral.FAT_CD_M_PED.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.FAT_CD_M_PED.FieldByName('ID_ATENDENTE').AsInteger   := xFuncionario;


  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = true)  then
    begin
     cbbAtendente.Enabled   := false;
    end;

  dmGeral.BUS_CD_C_FUN_CRG.Close;
  dmGeral.BUS_CD_C_FUN_CRG.Data :=
  dmGeral.BUS_CD_C_FUN_CRG.DataRequest(
                  VarArrayOf([IntToStr(xFuncionario)]));

  try
     dmGeral.BUS_CD_C_FUN_CRG.Filtered := true;
     dmGeral.BUS_CD_C_FUN_CRG.Filter := 'INT_TIPO=0';

     if not dmgeral.BUS_CD_C_FUN_CRG.IsEmpty then
        dmGeral.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger := xFuncionario;

  finally
     dmGeral.BUS_CD_C_FUN_CRG.Filtered := false;
     dmGeral.BUS_CD_C_FUN_CRG.Close;
  end;





  cbbTipoEstoque.Enabled := true;
  if ((dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativo_ped_vnd_tme_padrao').AsBoolean=true) and
      (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_vnd_tme_padrao').AsString<>'')) then
    begin
       dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsInteger :=
          dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_vnd_tme_padrao').AsInteger;
       cbbTipoEstoque.Enabled := false;
    end;


  if xChamadoPor_TeleMarketing then
     begin
       dmGeral.FAT_CD_M_PED.FieldByName('ID_MKT').AsInteger :=
          xMark_IdMkt;
       dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger :=
          xMark_IdCliente;
     end;


  // Esta linha ficou sem sentido, comentado por Maxsuel Victor ,  19/10/2023
     // dmgeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsFloat := 5;

  // obs:  Pode acontecer, que , o usuário logado não seja de fato o vendedor,
  //       com isso o sistema irá buscar o percentual de comissão do vendedor
  //       que está no campo ID_VENDEDOR, loco quando o cursor chegar no campo
  //       de Comissão. Aí o sistema irá fazer o teste de limite de comissão do
  //       vendedor.      por, Maxsuel Victor, em 19/10/2023

  dmgeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency := 0;

  {if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsFloat = 1 then // vendedor externo
     dmgeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency :=
             dmGeral.BUS_CD_C_FU3.FieldByName('SGQ_PER_COMISSAO').AsFloat; }


  btnAtualizaCont.Enabled := false;
  btnGerarPDF.Enabled     := false;
  btnImpRomaneio.Enabled  := false;

  if (txtDiasPrazo.Visible = true) then
    begin
     txtDiasPrazo.Enabled := false;
     txtDiasPrazo.Color := $00DADADA;
    end;
  tipo_cond_pag := -1;
  diasPrazo_ant :=0;
  xCodCliAnt    := '';
  xcred_util := 0;
  clienteConsumidor := false;
  txtCliente.SetFocus;
end;

procedure TFAT_FM_M_PED.RecalcularPrecoItens;
begin
    try
         dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
         dmGeral.FAT_CD_M_PED_ITE.AfterPost  := nil;
         dmGeral.FAT_CD_M_PED_ITEvlr_unitario.OnChange  := nil;
         dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange  := nil;
         dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange  := nil;
         dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
         dmGeral.FAT_CD_M_PED_ITE.First;
         while not dmGeral.FAT_CD_M_PED_ITE.Eof do
           begin
             dmGeral.FAT_CD_M_PED_ITE.Edit;
             dmGeral.CalcPrecoItem(1,dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text,
                        dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').Text,
                        dmGeral.FAT_CD_M_PED_ITE,false,false,
                        dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger);

             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
                     RoundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat*
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency),-2);

             dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

             dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;


             dmGeral.FAT_CD_M_PED_ITE.Post;
             dmGeral.FAT_CD_M_PED_ITE.Next;
           end;

         fatPedCalcTotal;
       finally
         dmGeral.FAT_CD_M_PED_ITE.BeforePost :=  dmGeral.FAT_CD_M_PED_ITEBeforePost;
         dmGeral.FAT_CD_M_PED_ITE.AfterPost  := dmGeral.FAT_CD_M_PED_ITEAfterPost;
         dmGeral.FAT_CD_M_PED_ITEvlr_unitario.OnChange  := dmGeral.FAT_CD_M_PED_ITEvlr_unitarioChange;
         dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange  := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
         dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange  := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
       end;
end;

procedure TFAT_FM_M_PED.acAlterarExecute(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin

  if (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 1) then
    begin
      ShowMessage('Pedido reprovado!');
      exit;
    end;

  if (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 3) then
    begin
      ShowMessage('Pedido já Faturado!');
      exit;
    end;

  if (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 4) then
    begin
      ShowMessage('Pedido já foi Cancelado!');
      exit;
    end;


  if dmgeral.BUS_CD_C_FU3.FieldByName('seg_alterar_ped_sit').AsInteger <> 0 then
     begin
        {if (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 0) and
           (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger = 0) and
           (dmgeral.BUS_CD_C_FU3.FieldByName('seg_alterar_ped_sit').AsInteger = 0) then
          begin
             ShowMessage('Usuário sem permissão para alterar pedido em situação "Digitado".');
             exit;
          end;}

        if (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 0) and
           (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger = 1) and
           (dmgeral.BUS_CD_C_FU3.FieldByName('seg_alterar_ped_sit').AsInteger < 2) then
          begin
            ShowMessage('Usuário sem permissão para alterar pedido em situação "Aprovado".');
            exit;
          end;

        if (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 2) and
           (dmgeral.BUS_CD_C_FU3.FieldByName('seg_alterar_ped_sit').AsInteger <> 3) then
          begin
            ShowMessage('Usuário sem permissão para alterar pedido em situação "Em produção".');
            exit;
          end;
     end;

  if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1 then // Externo
     begin
       // Situação DIGITADO sem tá APROVADO.
       if (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 0) and
          (dmgeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger = 0) then
           begin
             // Se for maior que 15 dias não pode alterar.
             if (xDataSis - dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime) > 15 then
                begin
                  ShowMessage('Alteração não permitida!' + #13 +
                              'Pedido em situação DIGITADO criado com mais de 15 dias!'      );
                  exit;
                end;
           end;
     end;

  clienteConsumidor := false;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED) then
    begin
      inherited;

      // Código implementado por Maxsuel Victor em 16/11/2016
      // tarefa: 137 do enSuporte
       xCred_disp := dmGeral.BusSaldoCreCli(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
       xCred_Util := dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency;
       txtCredDisp.Text := FormatCurr('0.00',xCred_disp);
       dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);

       xint_unif_desc_reg := dmGeral.BUS_CD_C_CLI.FieldByName('int_unif_desc_reg').AsBoolean;

       dmGeral.BusNotaFiscal(9,dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString);
       if not dmGeral.BUS_CD_M_NFE.IsEmpty then
          begin
            if dmGeral.BUS_CD_M_NFE.FieldByName('PREVENDA').AsBoolean then
               begin
                 Showmessage('Pedido de venda com Pré-venda!' + #13 +
                             'Caso o pedido de venda seja alterado a Pré-venda será apagada!');
               end;
          end;
       dmGeral.BUS_CD_M_NFE.close;
      // Fim ---------------------------------------------  }

      pnItens.Enabled         := false;
      pnTitulos.Enabled       := false;
      btnAtualizaCont.Enabled := false;
      btnGerarPDF.Enabled     := false;
      btnImpRomaneio.Enabled  := false;

      HabilDesabCampos(false,$00DADADA);
      if txtCliente.CanFocus then
        txtCliente.SetFocus
      else
        txtObservacao.SetFocus;
      {txtDias.Enabled := true;
      txtVencimento.Enabled := true;}

      pnTitulos.Enabled := true;
      btn_Add_Fpg.Enabled := true;
     // grdFpg.OnMouseUp := grdFpgMouseUp;

      dmGeral.BUS_CD_C_CLI_PRD.Close;
               dmGeral.BUS_CD_C_CLI_PRD.Data :=
               dmGeral.BUS_CD_C_CLI_PRD.DataRequest(
                             VarArrayOf([0, '0']));
      dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString);
      tipo_cond_pag := dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger;
      xtipoCpgAnt := IntToStr(tipo_cond_pag);
       if (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0) then
         begin
           {txtDias.Enabled := false;
           txtVencimento.Enabled := false;}

           pnTitulos.Enabled := false;
           btn_Add_Fpg.Enabled := false;
          // grdFpg.OnMouseUp := nil;
         end
       else
           begin
             if (dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true) and
                (dmGeral.BUS_CD_C_CPGsgq_texto_cnd_ped.AsBoolean = true) then
                 begin
                   cbbCondicaoPagamento.Width := 37;
                   lblTextoCondPgto.visible := true;
                   txtTextoCondPgto.visible := true;
                   txtTextoCondPgto.Width   := 187;
                 end;

              if (dmGeral.CAD_CD_C_PAR_MODrev.AsBoolean = true) then
                 begin
                   if (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger > 0) then
                       begin
                           dmGeral.BUS_CD_C_CLI_PRD.Close;
                           dmGeral.BUS_CD_C_CLI_PRD.Data :=
                           dmGeral.BUS_CD_C_CLI_PRD.DataRequest(
                                     VarArrayOf([0, dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString]));

                           dmGeral.BUS_CD_C_CLI_PRD.IndexFieldNames := 'DIAS';

                           if (not dmGeral.BUS_CD_C_CLI_PRD.IsEmpty) and
                              (not (dmGeral.BUS_CD_C_CLI.FieldByName('permitir_alterar_dias_tit_ped').AsBoolean = true)) then
                             begin
                               pnTitulos.Enabled := false;
                               btn_Add_Fpg.Enabled := false;
                             //  grdFpg.OnMouseUp := nil;
                             end;
                       end;
                 end;
           end;

        {if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency >0) then
         begin
          HabilitarVlrDesc := false;
          txtTotalVlrDesc.ReadOnly := true;
          txtTotalVlrDesc.Color := $00DADADA;
         end;  }

        if (dmGeral.FAT_CD_M_PED_ITE.RecordCount >0) then
         begin
           btnImportar.Enabled := false;
         end;


         if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsString <> '') and
           (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsInteger =
            dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger)   then
           begin
             clienteConsumidor := true;
           end;

        CodFpgHrq := '';
        if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_forma_fpg_hrq').AsBoolean = true then
          begin
            dmGeral.BusHierarquiaFpg(2,dmGeral.BUS_CD_C_CLI.FieldByName('id_controle_fpg_hrq').AsString);
            while not dmgeral.BUS_CD_C_HFG.EOF do
              begin
                  if CodFpgHrq = '' then
                    begin
                       CodFpgHrq :=
                       CodFpgHrq +''''+dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString+'''';
                    end
                  else
                    begin
                       CodFpgHrq :=
                       CodFpgHrq + ',' +''''+dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString+'''';
                    end;
                dmGeral.BUS_CD_C_HFG.Next;
              end;
          end;

         dmGeral.FAT_CD_M_PED.FieldByName('GERAR_PEDIDO_DIFERENCA').AsBoolean    := false;
    end;
end;

procedure TFAT_FM_M_PED.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED) then
      begin
        inherited;
        // Essa busca foi colocada aqui devido no botão adicionar , existir uma inclusão para uma condição de pagamento específica
           // devido o vendedor externo.   Ao Cancelar deve retornar a busca normal abaixo.
        dmGeral.BusCondPgto(3,dmGeral.CAD_CD_C_PARid_empresa.AsString); // Busca as condições de pagamento que constam na tabela
                                                                        // CAD_TB_C_PAR_CPG
        xCodCliAnt := '';
        txtCredDisp.Text := '';
        btnImportar.Enabled := true;
        grdItens.OnMouseUp := grdItensMouseUp;
        txtDias.Enabled := true;
        txtVencimento.Enabled := true;
        btn_Add_Itens.Enabled := True;
        btnAtualizaCont.Enabled := true;
        btnGerarPDF.Enabled     := true;
        btnImpRomaneio.Enabled  := true;
        cbbCondicaoPagamento.Width := 198;
        lblTextoCondPgto.Visible := false;
        txtTextoCondPgto.visible := false;
        if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) then
            begin
              txtTotalVlrDesc.ReadOnly := false;
              txtTotalVlrDesc.Color := clWhite;
            end;
        dbGrid.SetFocus;

      end
   else
      begin
        txtObservacao.SetFocus;
      end;
end;

procedure TFAT_FM_M_PED.acExcluirExecute(Sender: TObject);
begin
  if FAT_CD_M_PED_TesPermExclusao  then
     begin
       if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_PED) then
          inherited;
     end;
end;

procedure TFAT_FM_M_PED.acGravarExecute(Sender: TObject);
var
  codigo: string;
  cdsIte: TDataSet;
  qtde_ant, qtde_atual: currency;
  existe_qtde_menor,  existe_qtde_maior, existe_item_deletado: boolean;
  id_pedido_novo,pedidos: String;
  msg_pergunta: String;
begin


  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_UTILIZA_MECANICO').AsBoolean=true) and
      (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('informar_mec_por_item_ped').AsBoolean=true)) then
     begin
        PreencherMecItem;
     end;


  FAT_RN_M_PED.FatRatearDescBasico_Especial;



  if FAT_CD_M_PED_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString;
             AcoesPosTestes;

             id_pedido_novo := '';

             if dmGeral.FAT_CD_M_PED.FieldByName('situacao').AsInteger = 2 then // Em produção
                begin
                   existe_qtde_menor    := false;
                   existe_qtde_maior    := false;
                   existe_item_deletado := false;

                   // Inserido por Maxsuel Victor, em 13/01/2021 --------------
                       // Verificar se algum item foi deletado
                       dmGeral.FAT_CD_M_PED_ITE.StatusFilter   := [usInserted];

                       if dmGeral.FAT_CD_M_PED_ITE.StatusFilter = [usInserted] then
                          begin
                            if dmGeral.FAT_CD_M_PED_ITE.RecordCount > 0 then
                               begin
                                 Showmessage('Houve inclusão de itens neste pedido, faz-se necessário a reimpressão do pedido.' + #13 +
                                             'É importante o setor de faturamento ser informado desta alteração e verificar se a O.P necessita ser alterada.');
                               end;
                          end;

                       // Volta para o estado normal
                       dmGeral.FAT_CD_M_PED_ITE.StatusFilter := [];
                   // ---------------------------------------------------------


                   // Verificar se algum item foi deletado
                   dmGeral.FAT_CD_M_PED_ITE.StatusFilter   := [usDeleted];

                   if dmGeral.FAT_CD_M_PED_ITE.StatusFilter = [usDeleted] then
                      begin
                        if dmGeral.FAT_CD_M_PED_ITE.RecordCount > 0 then
                           existe_item_deletado := true;
                      end;

                   // Volta para o estado normal
                   dmGeral.FAT_CD_M_PED_ITE.StatusFilter := [];

                   dmGeral.FAT_CD_M_PED_ITE.First;
                   while not (dmGeral.FAT_CD_M_PED_ITE.Eof) do
                         begin
                          // if (dmGeral.FAT_CD_M_PED_ITE.UpdateStatus in [usUnmodified]) then
                             //  begin
                                 //dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsString;
                           qtde_ant   := dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde').OldValue;
                           qtde_atual := dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency;

                           if qtde_atual < qtde_ant then
                              existe_qtde_menor := true;

                           if qtde_atual > qtde_ant then
                              existe_qtde_maior := true;
                              // end;
                           dmGeral.FAT_CD_M_PED_ITE.Next;
                         end;
                   dmGeral.FAT_CD_M_PED_ITE.First;


                   if  ( (existe_item_deletado) or (existe_qtde_menor) ) and (existe_qtde_maior) then
                       begin
                          Showmessage('Este pedido já está em produção, portanto, não é permitido alterar a qtde de um item ' +
                                      'para menor ou excluir, e ao mesmo tempo alterar outro item para maior.' + #13 +
                                      'Você deve escolher primeiro qual alteração deseja fazer.');
                          abort;
                       end;

                   if ( (existe_item_deletado) or (existe_qtde_menor) ) and (existe_qtde_maior = false) then
                       begin
                         msg_pergunta := 'Gera um novo pedido de venda com a diferença dos itens?';
                         if (existe_item_deletado) and (existe_qtde_menor) then
                             begin
                                msg_pergunta := 'Gera um novo pedido de venda com a diferença dos itens e com os itens excluídos.';
                             end;

                         if (existe_item_deletado) and (existe_qtde_menor = false) then
                             begin
                                msg_pergunta := 'Gera um novo pedido de venda com os itens excluídos.';
                             end;


                         if MessageDlg(msg_pergunta, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            begin
                              dmGeral.FAT_CD_M_PED.FieldByName('GERAR_PEDIDO_DIFERENCA').AsBoolean := true;

                              id_pedido_novo := inttostr(dmGeral.BuscarSeq('FAT_TB_M_PED'));

                              dmGeral.FAT_CD_M_PED.FieldByName('id_pedido_gerado').AsString := id_pedido_novo;

                              //dmGeral.FAT_CD_M_PED.SetOptionalParam('ID_PEDIDO_GERADO',id_pedido_novo,true);
                            end;
                       end;
                end;



             DmGeral.Grava(dmGeral.FAT_CD_M_PED);
             inherited;

             if id_pedido_novo = '' then
                begin
                   dmGeral.FAT_CD_M_PED.Close;
                   dmGeral.FAT_CD_M_PED.Data :=
                       dmGeral.FAT_CD_M_PED.DataRequest(
                             VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo]));
                end
             else
                begin

                  pedidos := ''''+ codigo +'''';
                  pedidos := pedidos + ','+ ''''+ id_pedido_novo+'''';

                  dmGeral.FAT_CD_M_PED.Close;
                   dmGeral.FAT_CD_M_PED.Data :=
                       dmGeral.FAT_CD_M_PED.DataRequest(
                             VarArrayOf([100, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, pedidos ]));

                  Showmessage('O novo pedido foi gerado com sucesso: ' + id_pedido_novo);
                end;

             dmGeral.BUS_CD_C_CLI_PRD.Close;
               dmGeral.BUS_CD_C_CLI_PRD.Data :=
               dmGeral.BUS_CD_C_CLI_PRD.DataRequest(
                             VarArrayOf([0, '0']));

             xCodCliAnt  := '';
             txtCredDisp.Text := '';

             AbrirBuscas;

             pnTitulos.Enabled := true;
             btn_Add_Fpg.Enabled := true;
             btnAtualizaCont.Enabled := true;
             btnGerarPDF.Enabled     := true;
             btnImpRomaneio.Enabled := true;
             btnImportar.Enabled := true;
             grdItens.OnMouseUp := grdItensMouseUp;
             btn_Add_Itens.Enabled := True;
             cbbCondicaoPagamento.Width := 198;
             lblTextoCondPgto.Visible := false;
             txtTextoCondPgto.visible := false;

             if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) then
                 begin
                   txtTotalVlrDesc.ReadOnly := false;
                   txtTotalVlrDesc.Color := clWhite;
                 end;
           end
        else
           begin
             if txtCliente.CanFocus then
                txtCliente.SetFocus;
             if txtObservacao.CanFocus then
                txtObservacao.SetFocus;
           end;
     end
  else
     begin
       if txtCliente.CanFocus then
          txtCliente.SetFocus;
       if txtObservacao.CanFocus then
          txtObservacao.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.AcoesIniciais;
begin

  if not dmGeral.CAD_CD_C_PAR_CTRped_ativa_titulos.AsBoolean then
     begin
       gbGerTitulos.Visible := false;
     end;

   dmGeral.BUS_CD_C_FUN.Close;
          dmGeral.BUS_CD_C_FUN.Data :=
          dmGeral.BUS_CD_C_FUN.DataRequest(
               VarArrayOf([0, IntToStr(xFuncionario)]));


  txtVlrUnitario.Color   := $00DADADA;
  txtVlrUnitario.Enabled := false;
  if (dmGeral.CAD_CD_C_PAR_CTRped_altera_preco.AsBoolean = true) then
     begin
       if ((not dmGeral.BUS_CD_C_FUN.IsEmpty) and
           (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_HABILITAR_SEG').AsBoolean = true) and
           (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_ALT_PRE_PRO').AsBoolean = true)) then
         begin
           txtVlrUnitario.Color   := clWhite;
           txtVlrUnitario.Enabled := true;
         end;
     end;
  dmGeral.BUS_CD_C_FUN.Close;

end;


procedure TFAT_FM_M_PED.ImprimirPedido(tipo: string);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  codigo,empresa: string;
  memo1,memo2 :TfrxMemoView;
  tipo_impressao:integer;

  NomeFpg1, VenctoFpg1, ValorFpg1: String;
  NomeFpg2, VenctoFpg2, ValorFpg2: String;
  Pula: Boolean;
  i,z: integer;
  qtdeReg: integer;

  SMPrincipal : TSMClient;
  QtdeCompras: Currency;
begin
  inherited;

  if not dmGeral.FAT_CD_M_PED.IsEmpty then
      begin

        empresa := dmGeral.FAT_CD_M_PEDid_empresa.text;
        codigo := dmGeral.FAT_CD_M_PEDid_pedido.text;


        dmGeral.FAT_CD_M_PED.Close;
        dmGeral.FAT_CD_M_PED.Data :=
        dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([0,empresa,codigo]));

        dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PEDid_cliente.Text);

        if dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then //enSoftSpuma;
          begin

             SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
             try
                QtdeCompras := SMPrincipal.enNroDeCompras('SGQ',
                                                          dmgeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,
                                                          dmgeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
             finally
                FreeAndNil(SMPrincipal);
             end;

             if not dmGeral.FAT_CD_M_PED.IsEmpty then
                begin
                  if dmGeral.CAD_CD_C_PAR_CTR.FieldBYName('SGQ_TIPO_COMISSAO').AsInteger = 1 then
                    begin
                     TfrxMemoView (FAT_FR_M_PED_SGQ2.FindComponent('mvCabCom')).Visible := true;
                     TfrxMemoView (FAT_FR_M_PED_SGQ2.FindComponent('FAT_FD_M_PEDsgq_per_comissao')).Visible := true;
                    end
                  else
                    begin
                     TfrxMemoView (FAT_FR_M_PED_SGQ2.FindComponent('mvCabCom')).Visible := false;
                     TfrxMemoView (FAT_FR_M_PED_SGQ2.FindComponent('FAT_FD_M_PEDsgq_per_comissao')).Visible := false;
                    end;


                  case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
                    0: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Em aberto');
                    1: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Reprovado');
                    2: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Em produção');
                    3: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Faturado');
                    4: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Cancelado');
                  else
                  FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('??????');
                  end;


                  FAT_FR_M_PED_SGQ2.Variables['ativado_sgq'] := false;
                  if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
                       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
                    begin
                      FAT_FR_M_PED_SGQ2.Variables['ativado_sgq'] := true;
                    end;

                  FAT_FR_M_PED_SGQ2.Variables['ativado_cor'] := false;
                  if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
                       (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
                    begin
                      FAT_FR_M_PED_SGQ2.Variables['ativado_cor'] := true;
                    end;

                if trim(dmGeral.FAT_CD_M_PED.FieldByName('sgq_texto_cond_pgto').AsString) <> '' then
                   FAT_FR_M_PED_SGQ2.Variables['ft_texto_cond_pgto'] :=  QuotedStr(dmGeral.FAT_CD_M_PED.FieldByName('sgq_texto_cond_pgto').AsString)
                else
                   FAT_FR_M_PED_SGQ2.Variables['ft_texto_cond_pgto'] :=  QuotedStr(dmGeral.BUS_CD_C_CPG.FieldByName('descricao').AsString);

                FAT_FR_M_PED_SGQ2.Variables['ft_data_ped'] := QuotedStr(dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsString);

                   FAT_FR_M_PED_SGQ2.Variables['ft_hor_ped']  := QuotedStr(VarToStr( FormatDateTime('hh:mm',dmGeral.FAT_CD_M_PED.FieldByName('hor_pedido').AsDateTime )));



                  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                  if FileExists(PathImg) then
                    begin
                      LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_SGQ2.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;


                 if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_utiliza_frete').AsBoolean = true then
                    begin
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmCabVlrFrete')).Visible := true;
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('FAT_FD_M_PEDvlr_frete')).Visible := true;
                    end
                  else
                    begin
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmCabVlrFrete')).Visible := false;
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('FAT_FD_M_PEDvlr_frete')).Visible := false;
                    end;

                  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('hab_icms_desn_saida').AsBoolean = true then
                    begin
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmCabVlrIcmsDesn')).Visible := true;
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := true;
                    end
                  else
                    begin
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmCabVlrIcmsDesn')).Visible := false;
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := false;
                    end;



                 FAT_FR_M_PED_SGQ2.Variables['ft_nro_pedidos']  := QuotedStr(currtostr(QtdeCompras));

                 FAT_FR_M_PED_SGQ2.Variables['ft_versao']  := QuotedStr(CVersaoSistema);


                 if tipo = '1' then
                    begin
                      // Representante externo não precisa mais registrar os dados de impressão.
                     if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1 then  // 1 = Vendedor externo
                        begin
                         FAT_FR_M_PED_SGQ2.Variables['ft_impresso_por'] := QuotedStr('Impressão externa');
                        end
                     else
                        begin
                           if dmGeral.FAT_CD_M_PED.FieldByName('id_func_pri_impressao').AsInteger = 0 then
                               begin
                                 FAT_FR_M_PED_SGQ2.Variables['ft_impresso_por'] :=
                                     QuotedStr('1ª imp. - ' + dmGeral.BUS_CD_C_FU3.FieldByName('nome').AsString);
                               end
                           else
                               begin
                                 if dmGeral.FAT_CD_M_PED.FieldByName('id_func_seg_impressao').AsInteger = 0 then
                                    begin
                                      FAT_FR_M_PED_SGQ2.Variables['ft_impresso_por'] :=
                                          QuotedStr('2ª imp. - ' + dmGeral.BUS_CD_C_FU3.FieldByName('nome').AsString);
                                    end
                                 else
                                    begin
                                      FAT_FR_M_PED_SGQ2.Variables['ft_impresso_por'] :=
                                          QuotedStr('3ª imp. - ' + dmGeral.BUS_CD_C_FU3.FieldByName('nome').AsString);
                                    end;
                               end;
                        end;
                    end;

                 if tipo = '2' then
                    begin
                      FAT_FR_M_PED_SGQ2.Variables['ft_impresso_por'] :=
                            QuotedStr('Salvo em PDF por: ' + dmGeral.BUS_CD_C_FU3.FieldByName('nome').AsString);
                    end;


                  Pula := false;

                  i:= 0;
                  qtdeReg := dmGeral.FAT_CD_M_PED_TIT.RecordCount;

                  dmGeral.FAT_CD_M_PED_TIT.first;
                  while not dmGeral.FAT_CD_M_PED_TIT.eof do
                      begin
                        inc(i);

                        if (qtdeReg <= 3) or (qtdeReg = 4) then
                           z :=  2;

                        if (qtdeReg = 5) or (qtdeReg = 6) then
                           z :=  3;

                        if (qtdeReg = 7) or (qtdeReg = 8) then
                           z :=  4;

                        if (qtdeReg = 9) or (qtdeReg = 10) then
                           z :=  5;

                        if (qtdeReg >= 11) then
                           z :=  7;


                        if i = 1 then
                           begin
                             NomeFpg1   := dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
                             VenctoFpg1 := dmGeral.FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString;
                             ValorFpg1  := FormatCurr('###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency);
                           end
                        else
                           begin
                              if i <= z then
                                 begin
                                    NomeFpg1   := NomeFpg1   + #13 + dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
                                    VenctoFpg1 := VenctoFpg1 + #13 + dmGeral.FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString;
                                    ValorFpg1  := ValorFpg1  + #13 + FormatCurr('###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency);
                                 end
                              else
                                 begin
                                    if NomeFpg2 = '' then
                                       begin
                                          NomeFpg2   := dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
                                          VenctoFpg2 := dmGeral.FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString;
                                          ValorFpg2  :=  FormatCurr('###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency);

                                       end
                                    else
                                       begin
                                          NomeFpg2   := NomeFpg2   + #13 + dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
                                          VenctoFpg2 := VenctoFpg2 + #13 + dmGeral.FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString;
                                          ValorFpg2  := ValorFpg2  + #13 + FormatCurr('###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency);
                                       end;
                                 end;
                           end;

                        dmGeral.FAT_CD_M_PED_TIT.Next;
                     end;
                  dmGeral.FAT_CD_M_PED_TIT.First;

                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmBonifAssistenciaReforma')).Visible := false;
                  if dmGeral.BUS_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger = 2 then // Sem pagamentos
                     begin
                        dmGeral.FAT_CD_M_PED.BeforeEdit := nil;
                        dmGeral.FAT_CD_M_PED_TIT.BeforePost := nil;
                        dmGeral.FAT_CD_M_PED_TIT.Insert;
                        dmgeral.FAT_CD_M_PED_TITid_titulo.asinteger := 0;
                        dmGeral.FAT_CD_M_PED.BeforeEdit := dmGeral.FAT_CD_M_PEDBeforeEdit;


                        TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmBonifAssistenciaReforma')).Visible := true;
                        TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmBonifAssistenciaReforma')).Text  :=  dmGeral.BUS_CD_C_CPGdescricao.text;
                     end;

                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmFpg1')).Text       :=  NomeFpg1;
                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmVenctoFpg1')).Text :=  VenctoFpg1;
                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmValorFpg1')).Text  :=  ValorFpg1;



                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmFpg2')).Text       :=  NomeFpg2;
                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmVenctoFpg2')).Text :=  VenctoFpg2;
                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmValorFpg2')).Text  :=  ValorFpg2;


                  FAT_FR_M_PED_SGQ2.PreviewOptions.Buttons :=[pbPrint,pbLoad,
                   pbZoom,pbTools,pbOutline,pbTools, pbFind, pbSave,pbnavigator];


                  FAT_FR_M_PED_SGQ2.PrepareReport();

                  if tipo = '1' then
                     FAT_FR_M_PED_SGQ2.ShowReport();

                  if tipo = '2' then
                     FAT_FR_M_PED_SGQ2.Export(frxPDFExport);

                  if dmGeral.BUS_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger = 2 then // Sem pagamentos
                     begin
                        dmGeral.FAT_CD_M_PED_TIT.BeforePost := dmGeral.FAT_CD_M_PED_TITBeforePost;
                        if not (dmGeral.FAT_CD_M_PED_TIT.IsEmpty) then
                           dmGeral.FAT_CD_M_PED_TIT.delete;
                        dmGeral.FAT_CD_M_PED.cancel;
                     end;


                  dmGeral.FAT_CD_M_PED.Close;
                  dmGeral.FAT_CD_M_PED.Data :=
                       dmGeral.FAT_CD_M_PED.DataRequest(
                             VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo]));

                end
          end
        else
          begin  // enSoftLoja
            if not dmGeral.FAT_CD_M_PED.IsEmpty then
              begin
               tipo_impressao := 0;
               if (not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').IsNull) then
                 begin
                   tipo_impressao := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').AsInteger;
                 end;

               if tipo_impressao = 0 then
                 begin

                   if (not (dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean) = true) then
                      begin
                          case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
                            0: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Em aberto');
                            1: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Reprovado');
                            2: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Em produção');
                            3: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Faturado');
                            4: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Cancelado');
                          else
                            FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('??????');
                          end;


                         FAT_FR_M_PED_REV.Variables['ativado_sgq'] := false;
                         if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
                             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
                             begin
                               FAT_FR_M_PED_REV.Variables['ativado_sgq'] := true;
                             end;

                         FAT_FR_M_PED_REV.Variables['ativado_cor'] := false;
                         if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
                            (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
                             begin
                               FAT_FR_M_PED_REV.Variables['ativado_cor'] := true;
                             end;

                         if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('hab_icms_desn_saida').AsBoolean = true then
                             begin
                                TfrxMemoView(FAT_FR_M_PED_REV.FindObject('mmCabVlrIcmsDesn')).Visible := true;
                                TfrxMemoView(FAT_FR_M_PED_REV.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := true;
                             end
                         else
                             begin
                                TfrxMemoView(FAT_FR_M_PED_REV.FindObject('mmCabVlrIcmsDesn')).Visible := false;
                                TfrxMemoView(FAT_FR_M_PED_REV.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := false;
                             end;


                         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                         if FileExists(PathImg) then
                              begin
                                 LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_REV.FindObject('imgEmpresa1'));
                                 if Assigned(LogoEmpresa) then
                                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                              end;


                         FAT_FR_M_PED_REV.PrepareReport();
                         FAT_FR_M_PED_REV.ShowReport();
                      end
                    else
                      begin
                          case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
                            0: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Em aberto');
                            1: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Reprovado');
                            2: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Em produção');
                            3: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Faturado');
                            4: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Cancelado');
                          else
                            FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('??????');
                          end;


                         FAT_FR_M_PED_OFI.Variables['ativado_sgq'] := false;
                         if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
                             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
                             begin
                               FAT_FR_M_PED_OFI.Variables['ativado_sgq'] := true;
                             end;

                         FAT_FR_M_PED_OFI.Variables['ativado_cor'] := false;
                         if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
                            (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
                             begin
                               FAT_FR_M_PED_OFI.Variables['ativado_cor'] := true;
                             end;

                         if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('hab_icms_desn_saida').AsBoolean = true then
                             begin
                                TfrxMemoView(FAT_FR_M_PED_OFI.FindObject('mmCabVlrIcmsDesn')).Visible := true;
                                TfrxMemoView(FAT_FR_M_PED_OFI.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := true;
                             end
                         else
                             begin
                                TfrxMemoView(FAT_FR_M_PED_OFI.FindObject('mmCabVlrIcmsDesn')).Visible := false;
                                TfrxMemoView(FAT_FR_M_PED_OFI.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := false;
                             end;


                         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                         if FileExists(PathImg) then
                              begin
                                 LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_OFI.FindObject('imgEmpresa1'));
                                 if Assigned(LogoEmpresa) then
                                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                              end;


                         FAT_FR_M_PED_OFI.PrepareReport();
                         FAT_FR_M_PED_OFI.ShowReport();

                      end;
                 end;

                if tipo_impressao = 1 then
                   begin
                       ImprimirPedidoMatricial;
                   end;

               end;
          end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TFAT_FM_M_PED.ImprimirPedidoMatricial;
VAR
  linha,linha_ant,qtdeLinhaTitulo:integer;
  colunaTitulo:integer;
begin
  qtdeLinhaTitulo :=0;
  if (Trunc(dmGeral.FAT_CD_M_PED_ITE.RecordCount/3) > 3) then
     begin
      qtdeLinhaTitulo :=  Trunc(dmGeral.FAT_CD_M_PED_ITE.RecordCount/3) - 3;
     end
  else
     begin
       qtdeLinhaTitulo := 0;
     end;

  rdPedCompleto.TamanhoQteLinhas   := 30+dmGeral.FAT_CD_M_PED_ITE.RecordCount + qtdeLinhaTitulo;
  rdPedCompleto.TamanhoQteColunas  := 132; // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
//  rdPedCompleto.PortaComunicacao   := dmGeral.qryBusParamImpress.FieldByname('Imp_Pedido').asString;
  rdPedCompleto.FonteTamanhoPadrao := s17cpp; // Fonte Comprimido em 20 cpp
  rdPedCompleto.OpcoesPreview.Preview := true;


  rdPedCompleto.Abrir;

  rdPedCompleto.imp(1, 001, Repete('-', 132));
  rdPedCompleto.imp(2, 001, '|' + '                   P E D I D O  D O  C L I E N T E' +
                       '                                           |  ' + 'Pedido   : ' +
                       dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').asString);
  rdPedCompleto.imp(2, 132, '|');
  rdPedCompleto.imp(3, 001, '|' + Repete('-', 130) + '|');
  rdPedCompleto.imp(4, 001, '| Empresa: ' + copy(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').asString, 1, 19));
  rdPedCompleto.imp(4, 033, 'Endereco : '          + copy(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_ENDERECO').asString, 1, 19) + ' - '
                       + copy(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_BAIRRO').asString, 1, 15) + ' - '
                       + copy(dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').asString, 1, 15) + ' - '
                       + dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').asString + ' Cep : '
                       + dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CEP').asString + ' Fone : '
                       + dmGeral.CAD_CD_C_PAR.FieldByName('EMP_TELEFONE').asString);
  rdPedCompleto.imp(4, 132, '|');
  rdPedCompleto.imp(5, 001, '|' + Repete('-', 130) + '|');


  dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').asString);

   rdPedCompleto.imp(6, 001, '| Nome do Cliente : ' + dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').asString + '-' +
                                  Copy(dmGeral.BUS_CD_C_CLI.FieldByName('NOME').asString, 1, 30));
   if dmGeral.BUS_CD_C_CLI.FieldByName('PESSOA').AsInteger = 1 then
      begin
        rdPedCompleto.imp(6, 60, 'C.N.P.J   : ' + dmGeral.BUS_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').asString)
      end
   else
      begin
        if dmGeral.BUS_CD_C_CLI.FieldByName('PESSOA').AsInteger = 0 then
           begin
             rdPedCompleto.imp(6, 60, 'CPF       : ' + dmGeral.BUS_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').asString);
           end;
      end;
   rdPedCompleto.imp(6, 99, '| Data do Pedido : ' + DateToStr(dmGeral.FAT_CD_M_PED.FieldByName('dta_Pedido').asDateTime));
   rdPedCompleto.imp(6, 132, '|');

   rdPedCompleto.imp(7, 01, '| Nome Fantasia   : ' + dmGeral.BUS_CD_C_CLI.FieldByName('APELIDO').asString);
   if dmGeral.BUS_CD_C_CLI.FieldByName('PESSOA').AsInteger = 1 then
      begin
        rdPedCompleto.imp(7, 60, 'INSCRICAO : ' + dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').asString)
      end
   else
     begin
       if dmGeral.BUS_CD_C_CLI.FieldByName('PESSOA').AsInteger = 0 then
          begin
            rdPedCompleto.imp(7, 60, 'Identidade: ' + dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').asString);
          end;
     end;

   rdPedCompleto.imp(7, 99, '| Vendedor       : ' + Copy(dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMEFUN').asString,1,13));
   rdPedCompleto.imp(7, 132, '|');
   //-----
   rdPedCompleto.imp(8, 01, '| Endereco        : ' + Copy(dmGeral.BUS_CD_C_CLI.FieldByName('ENDERECO').asString, 1, 27));
   rdPedCompleto.imp(8, 60, 'Telefone  : ' + dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').asString);
   rdPedCompleto.imp(8, 99, '| Tipo Estoque   : ' + Copy(dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMETME').asString,1,13));
   rdPedCompleto.imp(8, 132, '|');
   //-----
   rdPedCompleto.imp(9, 01, '| Bairro          : ' + Copy(dmGeral.BUS_CD_C_CLI.FieldByName('BAIRRO').asString, 1, 27));
   rdPedCompleto.imp(9, 60, 'FAX       : ' + dmGeral.BUS_CD_C_CLI.FieldByName('FAX').asString);

   rdPedCompleto.impF(9, 99, '| Situacao       : '+dmGeral.FAT_CD_M_PED.FieldByName('INT_SITPED').asString,[Negrito]);
   rdPedCompleto.imp(9, 132, '|');

   rdPedCompleto.imp(10, 01, '| Cidade          : ' + Copy(dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECID').asString, 1, 27));
   rdPedCompleto.imp(10, 60, 'CEP       : ' + dmGeral.BUS_CD_C_CLI.FieldByName('CEP').asString);
   rdPedCompleto.imp(10, 99, '| Atendente: '+Copy(dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMEATE').asString,1,13));
   rdPedCompleto.imp(10, 132, '|');
   //-----
   rdPedCompleto.imp(11, 001, '|' + Repete('-', 130) + '|');
   rdPedCompleto.imp(12, 001, '|');
   rdPedCompleto.imp(12, 132, '|');
   rdPedCompleto.imp(13, 001, '|');
   rdPedCompleto.imp(13, 132, '|');


   rdPedCompleto.imp(11, 01, '|' + Repete('-', 130) +'|');
   rdPedCompleto.imp(12, 01, '| Codigo  Descricao do Produto                                  Und    Qtde  Vlr.Unitario  Vlr. Desc     Vlr.Total  Rua  Prat  Esc |');
   rdPedCompleto.imp(13, 01, '|' + Repete('-', 130) + '|');


   linha := 14;

   while (not dmGeral.FAT_CD_M_PED_ITE.Eof) do
     begin
       rdPedCompleto.imp(linha, 01, '| ' + Copy(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').asString, 1, 6));
       rdPedCompleto.imp(linha, 11, Copy(dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMEITE').asString, 1, 53));


       rdPedCompleto.imp(linha, 65, Copy(dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_ID_UND_VENDA').asString, 1, 3));
       rdPedCompleto.impval(linha, 65, '##########0', dmGeral.FAT_CD_M_PED_ITE.FieldByname('Qtde').asFloat, []);


       rdPedCompleto.impval(linha, 76, '###,###,##0.00', dmGeral.FAT_CD_M_PED_ITE.FieldByname('Vlr_Unitario').asCurrency, []);
       rdPedCompleto.impval(linha, 91, '###,##0.00', dmGeral.FAT_CD_M_PED_ITE.FieldByname('Vlr_Desconto').asCurrency, []);
       rdPedCompleto.impval(linha, 101, '###,###,##0.00', dmGeral.FAT_CD_M_PED_ITE.FieldByname('Vlr_Liquido').asCurrency, []);

       rdPedCompleto.imp(linha, 117, dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_RUA').asString);
       rdPedCompleto.imp(linha, 122,  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_PRATELEIRA').asString);
       rdPedCompleto.imp(linha, 128, dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_ESCANINHO').asString);
       rdPedCompleto.imp(linha, 132, '|');

       dmGeral.FAT_CD_M_PED_ITE.Next;
       Inc(linha);
     end;

     rdPedCompleto.imp(Linha, 001, '|' + Repete('-', 130) + '|');
     Inc(linha);
     rdPedCompleto.imp(Linha, 001, '|         Total dos Produtos............');
     rdPedCompleto.impval(linha, 75, '###,###,##0.00', dmGeral.FAT_CD_M_PED.FieldByname('Vlr_desconto').asCurrency, []);
     rdPedCompleto.impval(linha, 89, '###,###,##0.00', dmGeral.FAT_CD_M_PED.FieldByname('Vlr_liquido').asCurrency, []);

     if dmGeral.FAT_CD_M_PED.FieldByName('obs').asString <> '' then
       begin
         Inc(linha);
         rdPedCompleto.imp(Linha, 001, '|         Observações...................');
         rdPedCompleto.imp(linha, 45, dmGeral.FAT_CD_M_PED.FieldByName('obs').asString);
         rdPedCompleto.imp(Linha, 132, '|');
       end;

     Inc(Linha);
     rdPedCompleto.imp(Linha, 001, '|' + Repete('-', 130) + '|');
     Inc(Linha);
     rdPedCompleto.imp(Linha, 001, '|         Valores do Pedido      | Vencimento  TD       Valor(R$) | Vencimento  TD       Valor(R$)| Vencimento  TD       Valor(R$) |');
     Inc(Linha);
     rdPedCompleto.imp(Linha, 001, '|' + Repete('-', 130) + '|');

     Inc(Linha);
     rdPedCompleto.imp(Linha, 001, '| Total dos Produtos : ');
     rdPedCompleto.impval(linha, 24, '###,##0.00', dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').asCurrency, []);
     rdPedCompleto.imp(Linha, 132, '|');

     rdPedCompleto.imp(Linha+1, 001, '| Desconto           : ');
     rdPedCompleto.impval(linha+1, 24, '###,##0.00', dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').asCurrency, []);
     rdPedCompleto.imp(Linha+1, 132, '|');

     rdPedCompleto.imp(Linha+2, 001, '| Total de pedido    : ');
     rdPedCompleto.impval(linha+2, 24, '###,##0.00', dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').asCurrency, []);
     rdPedCompleto.imp(Linha+2, 132, '|');

     linha_ant := linha+2;

     dmGeral.FAT_CD_M_PED_TIT.First;
     colunaTitulo := 0;
     while (not dmGeral.FAT_CD_M_PED_TIT.Eof) do
       begin
          if colunaTitulo = 0 then
            begin
              rdPedCompleto.imp(Linha, 036, dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsString);
              rdPedCompleto.imp(Linha, 048, copy(dmGeral.FAT_CD_M_PED_TIT.FieldByName('INT_NOMEFPG').AsString,1,3));
              rdPedCompleto.impVal(Linha, 052, '###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency, []);

            end;

          if colunaTitulo = 1 then
            begin
              rdPedCompleto.imp(Linha, 070, dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsString);
              rdPedCompleto.imp(Linha, 081, copy(dmGeral.FAT_CD_M_PED_TIT.FieldByName('INT_NOMEFPG').AsString,1,3));
              rdPedCompleto.impVal(Linha, 085, '###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency, []);
            end;

          if colunaTitulo = 2 then
            begin
              rdPedCompleto.imp(Linha, 102, dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsString);
              rdPedCompleto.imp(Linha, 113, copy(dmGeral.FAT_CD_M_PED_TIT.FieldByName('INT_NOMEFPG').AsString,1,3));
              rdPedCompleto.impVal(Linha, 117, '###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency, []);
            end;

          rdPedCompleto.imp(Linha, 001, '|');
          rdPedCompleto.imp(Linha, 132, '|');

          if (colunaTitulo = 2) then
            begin
               colunaTitulo := 0;
               Inc(linha);
            end
          else
            begin
               Inc(colunaTitulo);
            end;

          dmGeral.FAT_CD_M_PED_TIT.Next;
       end;

   if (linha_ant>linha) then
      begin
        linha := linha_ant;
      end;

  Inc(linha);
  Inc(linha);
  rdPedCompleto.imp(Linha, 001, '|' + Repete('-', 130) + '|');
  Inc(linha);
  rdPedCompleto.imp(Linha, 001, '|');
  rdPedCompleto.imp(Linha, 132, '|');
  rdPedCompleto.imp(Linha, 048, copy(dmGeral.CAD_CD_C_PAR.FieldByName('int_nomecid').asString, 1, 15) + ' - '
                         + dmGeral.CAD_CD_C_PAR.FieldByName('int_uf').asString + ', ' + FormatDateTime('dd',now) + ' de '
                         {+ MesExt(strtoint(FormatDateTime('mm',now)))}+NomeDoMes( strtoint(FormatDateTime('mm',now)), 0) +  ' de ' + FormatDateTime('yyyy',now)  );

  Inc(Linha); // 27
  rdPedCompleto.imp(Linha, 001, '|');
  rdPedCompleto.imp(Linha, 132, '|');

  Inc(Linha); // 28
  rdPedCompleto.imp(Linha, 001, '|');
  rdPedCompleto.imp(Linha, 35,  Repete('-', 60 ));
  rdPedCompleto.imp(Linha, 132, '|');

  Inc(Linha); // 29
  rdPedCompleto.imp(Linha, 001, '|');
  rdPedCompleto.imp(Linha, 51, dmGeral.FAT_CD_M_PED.FieldByName('int_nomecli').asString);
  rdPedCompleto.imp(Linha, 132, '|');

  Inc(Linha); // 30
  rdPedCompleto.imp(Linha, 001, '|' + Repete('-', 130) + '|');
  rdPedCompleto.fechar;
end;

function TFAT_FM_M_PED.AcoesPosTestes: Boolean;
begin
          //if not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then  // Não usa produção
  if not (dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean) then  // Não usa produção
     begin
       FAT_RN_M_PED.FatVerifSeqNfe;
     end;

  VerifRestricoes;
  // comentado por Maxsuel Victor em 23/08/17 devido a mudança geral, pra deixar os processos mais rápido.
  //FAT_CD_M_PED_AtuSequencias;
end;

procedure TFAT_FM_M_PED.AtivarDesativarTabStopsDosDescontos(estado: Boolean);
begin
  txtPercDescBasc.TabStop := estado;
  txtDescBasc.TabStop := estado;
  txtPercDescEspecial.TabStop := estado;
  txtDescEspecial.TabStop := estado;
end;

procedure TFAT_FM_M_PED.Atualizar_xBusca;
begin
    if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
   else
     if xbusca_item = 'ID_ITEM' then
        begin
          lblItem.Caption := '<F7> Cód. fábrica';
          xbusca_item := 'COD_FABRICA';
        end
     else if xbusca_item = 'COD_FABRICA' then
        begin
          lblItem.Caption := '<F7> Cód. barra';
          xbusca_item := 'COD_BARRA';
        end
     else if xbusca_item = 'COD_BARRA' then
        begin
          lblItem.Caption := '<F7> Cód. item';
          xbusca_item := 'ID_ITEM';
        end;
end;

procedure TFAT_FM_M_PED.btnGerarPDFClick(Sender: TObject);
begin
  inherited;
  ImprimirPedido('2');
end;

procedure TFAT_FM_M_PED.btn_Add_FpgClick(Sender: TObject);
begin
  inherited;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_dta_pedido').AsBoolean then
     begin
      if dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime <> xDataSis then
         begin
           if dmGeral.FAT_CD_M_PED.recordcount > 0 then
              begin
                ShowMessage('É preciso que apague os vencimentos do pedido pois o sistema precisa atualizar a data do pedido para a data de hoje.');
              end
           else
              begin
                 if Dc_MessageDlgCheck('O pedido de venda precisa ter sua data atualizada para hoje, continua? ', mtConfirmation, [mbYes, mbNo],
                    0, mrNo, true, false,'', nil) <> 7 then
                    begin
                      dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime := xDataSis;
                    end
                 else
                    begin
                      Abort;
                    end;
              end;
           abort;
         end;
     end;

  pnTitulos.Enabled  := true;

  dmGeral.FAT_CD_M_PED_TIT.Insert;

  txtFormaPgto.SetFocus;
end;

procedure TFAT_FM_M_PED.btn_Add_FpgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then
     begin
       ActiveControl := nil;
       PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
       btnGrava.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.btn_Add_Fpg_serClick(Sender: TObject);
begin
  inherited;
  pnlTitSer.Enabled  := true;

  dmGeral.FAT_CD_M_PED_TIT_SER.Insert;
  //grdFpg.Enabled := False;
  //grdFpg.Color   := clSilver;
 // txtItem.ReadOnly   := false;
 // txtItem.Color      := $00F9E1DF;
  txtFormaPgto.SetFocus;
end;

procedure TFAT_FM_M_PED.btnAtualizaContClick(Sender: TObject);
//var
  {PathImg: String;
  LogoEmpresa: TfrxPictureView;
  codigo,empresa: string;
  memo1,memo2 :TfrxMemoView;
  tipo_impressao:integer;

  NomeFpg1, VenctoFpg1, ValorFpg1: String;
  NomeFpg2, VenctoFpg2, ValorFpg2: String;
  Pula: Boolean;
  i,z: integer;
  qtdeReg: integer;

  SMPrincipal : TSMClient;
  QtdeCompras: Currency;  }
begin
  inherited;

  ImprimirPedido('1');

  {
  if not dmGeral.FAT_CD_M_PED.IsEmpty then
      begin

        empresa := dmGeral.FAT_CD_M_PEDid_empresa.text;
        codigo := dmGeral.FAT_CD_M_PEDid_pedido.text;


        dmGeral.FAT_CD_M_PED.Close;
        dmGeral.FAT_CD_M_PED.Data :=
        dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([0,empresa,codigo]));

        dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PEDid_cliente.Text);

        if dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then //enSoftSpuma;
          begin

             SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
             try
                QtdeCompras := SMPrincipal.enNroDeCompras('SGQ',
                                                          dmgeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,
                                                          dmgeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
             finally
                FreeAndNil(SMPrincipal);
             end;

             if not dmGeral.FAT_CD_M_PED.IsEmpty then
                begin
                  if dmGeral.CAD_CD_C_PAR_CTR.FieldBYName('SGQ_TIPO_COMISSAO').AsInteger = 1 then
                    begin
                     TfrxMemoView (FAT_FR_M_PED_SGQ2.FindComponent('mvCabCom')).Visible := true;
                     TfrxMemoView (FAT_FR_M_PED_SGQ2.FindComponent('FAT_FD_M_PEDsgq_per_comissao')).Visible := true;
                    end
                  else
                    begin
                     TfrxMemoView (FAT_FR_M_PED_SGQ2.FindComponent('mvCabCom')).Visible := false;
                     TfrxMemoView (FAT_FR_M_PED_SGQ2.FindComponent('FAT_FD_M_PEDsgq_per_comissao')).Visible := false;
                    end;


                  case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
                    0: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Em aberto');
                    1: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Reprovado');
                    2: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Em produção');
                    3: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Faturado');
                    4: FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('Cancelado');
                  else
                  FAT_FR_M_PED_SGQ2.Variables['SituacaoPed'] := QuotedStr('??????');
                  end;


                  FAT_FR_M_PED_SGQ2.Variables['ativado_sgq'] := false;
                  if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
                       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
                    begin
                      FAT_FR_M_PED_SGQ2.Variables['ativado_sgq'] := true;
                    end;

                  FAT_FR_M_PED_SGQ2.Variables['ativado_cor'] := false;
                  if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
                       (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
                    begin
                      FAT_FR_M_PED_SGQ2.Variables['ativado_cor'] := true;
                    end;

                if trim(dmGeral.FAT_CD_M_PED.FieldByName('sgq_texto_cond_pgto').AsString) <> '' then
                   FAT_FR_M_PED_SGQ2.Variables['ft_texto_cond_pgto'] :=  QuotedStr(dmGeral.FAT_CD_M_PED.FieldByName('sgq_texto_cond_pgto').AsString)
                else
                   FAT_FR_M_PED_SGQ2.Variables['ft_texto_cond_pgto'] :=  QuotedStr(dmGeral.BUS_CD_C_CPG.FieldByName('descricao').AsString);

                FAT_FR_M_PED_SGQ2.Variables['ft_data_ped'] := QuotedStr(dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsString);

                   FAT_FR_M_PED_SGQ2.Variables['ft_hor_ped']  := QuotedStr(VarToStr( FormatDateTime('hh:mm',dmGeral.FAT_CD_M_PED.FieldByName('hor_pedido').AsDateTime )));



                  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                  if FileExists(PathImg) then
                    begin
                      LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_SGQ2.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;


                 if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_utiliza_frete').AsBoolean = true then
                    begin
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmCabVlrFrete')).Visible := true;
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('FAT_FD_M_PEDvlr_frete')).Visible := true;
                    end
                  else
                    begin
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmCabVlrFrete')).Visible := false;
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('FAT_FD_M_PEDvlr_frete')).Visible := false;
                    end;

                  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('hab_icms_desn_saida').AsBoolean = true then
                    begin
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmCabVlrIcmsDesn')).Visible := true;
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := true;
                    end
                  else
                    begin
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmCabVlrIcmsDesn')).Visible := false;
                      TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := false;
                    end;



                 FAT_FR_M_PED_SGQ2.Variables['ft_nro_pedidos']  := QuotedStr(currtostr(QtdeCompras));



                 if dmGeral.FAT_CD_M_PED.FieldByName('id_func_pri_impressao').AsInteger = 0 then
                     begin
                       FAT_FR_M_PED_SGQ2.Variables['ft_impresso_por'] :=
                           QuotedStr('1ª imp. - ' + dmGeral.BUS_CD_C_FU3.FieldByName('nome').AsString);
                     end
                  else
                     begin
                       if dmGeral.FAT_CD_M_PED.FieldByName('id_func_seg_impressao').AsInteger = 0 then
                          begin
                            FAT_FR_M_PED_SGQ2.Variables['ft_impresso_por'] :=
                                QuotedStr('2ª imp. - ' + dmGeral.BUS_CD_C_FU3.FieldByName('nome').AsString);
                          end
                       else
                          begin
                            FAT_FR_M_PED_SGQ2.Variables['ft_impresso_por'] :=
                                QuotedStr('3ª imp. - ' + dmGeral.BUS_CD_C_FU3.FieldByName('nome').AsString);
                          end;
                     end;

                  Pula := false;

                  i:= 0;
                  qtdeReg := dmGeral.FAT_CD_M_PED_TIT.RecordCount;

                  dmGeral.FAT_CD_M_PED_TIT.first;
                  while not dmGeral.FAT_CD_M_PED_TIT.eof do
                      begin
                        inc(i);

                        if (qtdeReg <= 3) or (qtdeReg = 4) then
                           z :=  2;

                        if (qtdeReg = 5) or (qtdeReg = 6) then
                           z :=  3;

                        if (qtdeReg = 7) or (qtdeReg = 8) then
                           z :=  4;

                        if (qtdeReg = 9) or (qtdeReg = 10) then
                           z :=  5;

                        if (qtdeReg >= 11) then
                           z :=  7;


                        if i = 1 then
                           begin
                             NomeFpg1   := dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
                             VenctoFpg1 := dmGeral.FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString;
                             ValorFpg1  := FormatCurr('###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency);
                           end
                        else
                           begin
                              if i <= z then
                                 begin
                                    NomeFpg1   := NomeFpg1   + #13 + dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
                                    VenctoFpg1 := VenctoFpg1 + #13 + dmGeral.FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString;
                                    ValorFpg1  := ValorFpg1  + #13 + FormatCurr('###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency);
                                 end
                              else
                                 begin
                                    if NomeFpg2 = '' then
                                       begin
                                          NomeFpg2   := dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
                                          VenctoFpg2 := dmGeral.FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString;
                                          ValorFpg2  :=  FormatCurr('###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency);

                                       end
                                    else
                                       begin
                                          NomeFpg2   := NomeFpg2   + #13 + dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
                                          VenctoFpg2 := VenctoFpg2 + #13 + dmGeral.FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString;
                                          ValorFpg2  := ValorFpg2  + #13 + FormatCurr('###,###,##0.00', dmGeral.FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency);
                                       end;
                                 end;
                           end;

                        dmGeral.FAT_CD_M_PED_TIT.Next;
                     end;
                  dmGeral.FAT_CD_M_PED_TIT.First;

                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmBonifAssistenciaReforma')).Visible := false;
                  if dmGeral.BUS_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger = 2 then // Sem pagamentos
                     begin
                        dmGeral.FAT_CD_M_PED.BeforeEdit := nil;
                        dmGeral.FAT_CD_M_PED_TIT.BeforePost := nil;
                        dmGeral.FAT_CD_M_PED_TIT.Insert;
                        dmgeral.FAT_CD_M_PED_TITid_titulo.asinteger := 0;
                        dmGeral.FAT_CD_M_PED.BeforeEdit := dmGeral.FAT_CD_M_PEDBeforeEdit;


                        TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmBonifAssistenciaReforma')).Visible := true;
                        TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmBonifAssistenciaReforma')).Text  :=  dmGeral.BUS_CD_C_CPGdescricao.text;
                     end;

                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmFpg1')).Text       :=  NomeFpg1;
                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmVenctoFpg1')).Text :=  VenctoFpg1;
                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmValorFpg1')).Text  :=  ValorFpg1;



                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmFpg2')).Text       :=  NomeFpg2;
                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmVenctoFpg2')).Text :=  VenctoFpg2;
                  TfrxMemoView(FAT_FR_M_PED_SGQ2.FindObject('mmValorFpg2')).Text  :=  ValorFpg2;


                  FAT_FR_M_PED_SGQ2.PrepareReport();
                  FAT_FR_M_PED_SGQ2.Export(frxPDFExport);
                  //FAT_FR_M_PED_SGQ2.ShowReport();

                  if dmGeral.BUS_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger = 2 then // Sem pagamentos
                     begin
                        dmGeral.FAT_CD_M_PED_TIT.BeforePost := dmGeral.FAT_CD_M_PED_TITBeforePost;
                        if not (dmGeral.FAT_CD_M_PED_TIT.IsEmpty) then
                           dmGeral.FAT_CD_M_PED_TIT.delete;
                        dmGeral.FAT_CD_M_PED.cancel;
                     end;


                  dmGeral.FAT_CD_M_PED.Close;
                  dmGeral.FAT_CD_M_PED.Data :=
                       dmGeral.FAT_CD_M_PED.DataRequest(
                             VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo]));

                end
          end
        else
          begin  // enSoftLoja
            if not dmGeral.FAT_CD_M_PED.IsEmpty then
              begin
               tipo_impressao := 0;
               if (not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').IsNull) then
                 begin
                   tipo_impressao := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').AsInteger;
                 end;

               if tipo_impressao = 0 then
                 begin

                   if (not (dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean) = true) then
                      begin
                          case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
                            0: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Em aberto');
                            1: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Reprovado');
                            2: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Em produção');
                            3: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Faturado');
                            4: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Cancelado');
                          else
                            FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('??????');
                          end;


                         FAT_FR_M_PED_REV.Variables['ativado_sgq'] := false;
                         if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
                             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
                             begin
                               FAT_FR_M_PED_REV.Variables['ativado_sgq'] := true;
                             end;

                         FAT_FR_M_PED_REV.Variables['ativado_cor'] := false;
                         if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
                            (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
                             begin
                               FAT_FR_M_PED_REV.Variables['ativado_cor'] := true;
                             end;

                         if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('hab_icms_desn_saida').AsBoolean = true then
                             begin
                                TfrxMemoView(FAT_FR_M_PED_REV.FindObject('mmCabVlrIcmsDesn')).Visible := true;
                                TfrxMemoView(FAT_FR_M_PED_REV.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := true;
                             end
                         else
                             begin
                                TfrxMemoView(FAT_FR_M_PED_REV.FindObject('mmCabVlrIcmsDesn')).Visible := false;
                                TfrxMemoView(FAT_FR_M_PED_REV.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := false;
                             end;


                         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                         if FileExists(PathImg) then
                              begin
                                 LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_REV.FindObject('imgEmpresa1'));
                                 if Assigned(LogoEmpresa) then
                                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                              end;


                         FAT_FR_M_PED_REV.PrepareReport();
                         FAT_FR_M_PED_REV.ShowReport();
                      end
                    else
                      begin
                          case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
                            0: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Em aberto');
                            1: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Reprovado');
                            2: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Em produção');
                            3: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Faturado');
                            4: FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('Cancelado');
                          else
                            FAT_FR_M_PED_OFI.Variables['SituacaoPed'] := QuotedStr('??????');
                          end;


                         FAT_FR_M_PED_OFI.Variables['ativado_sgq'] := false;
                         if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
                             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
                             begin
                               FAT_FR_M_PED_OFI.Variables['ativado_sgq'] := true;
                             end;

                         FAT_FR_M_PED_OFI.Variables['ativado_cor'] := false;
                         if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
                            (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
                             begin
                               FAT_FR_M_PED_OFI.Variables['ativado_cor'] := true;
                             end;

                         if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('hab_icms_desn_saida').AsBoolean = true then
                             begin
                                TfrxMemoView(FAT_FR_M_PED_OFI.FindObject('mmCabVlrIcmsDesn')).Visible := true;
                                TfrxMemoView(FAT_FR_M_PED_OFI.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := true;
                             end
                         else
                             begin
                                TfrxMemoView(FAT_FR_M_PED_OFI.FindObject('mmCabVlrIcmsDesn')).Visible := false;
                                TfrxMemoView(FAT_FR_M_PED_OFI.FindObject('FAT_FD_M_PEDvlr_icm_desn')).Visible := false;
                             end;


                         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                         if FileExists(PathImg) then
                              begin
                                 LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_OFI.FindObject('imgEmpresa1'));
                                 if Assigned(LogoEmpresa) then
                                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                              end;


                         FAT_FR_M_PED_OFI.PrepareReport();
                         FAT_FR_M_PED_OFI.ShowReport();

                      end;
                 end;

                if tipo_impressao = 1 then
                   begin
                       ImprimirPedidoMatricial;
                   end;

               end;
          end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;              }
end;

procedure TFAT_FM_M_PED.btnFiltroClick(Sender: TObject);
var
  data:TDateTime;
  cdsBusFun: TClientDataSet;
  xPesquisa:String;
begin
  AbrirBuscas;
  Screen.Cursor := crHourGlass;
  try
    inherited;

  if (txtPesquisaData.Visible =true) then
    xPesquisa := txtPesquisaData.Text
  else
    xPesquisa := txtPesquisa.Text;

  cdsBusFun :=  TClientDataSet.Create(nil);
  cdsBusFun.RemoteServer :=  dmGeral.pcConecao;
  cdsBusFun.ProviderName := 'CAD_DP_C_FUN';

  cdsBusFun.Close;
   cdsBusFun.Data :=
          cdsBusFun.DataRequest(
               VarArrayOf([0, IntToStr(xFuncionario)]));

  { Filtros do FAT_CD_M_PED:
      index 0, ID_PEDIDO
      index 1, Nome do cliente
      index 2, Nome do vendedor
      index 3, Nome da Condição de Pagamento
      index 4, Nome do Tipo de Estoque
      index 5, Data do pedido
      index 6, não tem parâmetro, e serve para buscar os pedido que tem restrinções.
   }
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) or
     ( (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) and
       (cdsBusFun.FieldByName('vnd_interno_externo').AsInteger = 0))  then
     begin

        if cbbPesquisa.ItemIndex in [1,2,9] then
           begin
             if length(trim(txtPesquisa.text)) < 1 then
                begin
                  ShowMessage('Digite pelo menos 1 caractere!');
                  exit;
                end;
           end;

        if (cbbPesquisa.ItemIndex <> 7) and (cbbPesquisa.ItemIndex <> 8) and (cbbPesquisa.ItemIndex <> 9) then
          begin
            dmGeral.FAT_CD_M_PED.Close;
            dmGeral.FAT_CD_M_PED.Data :=
            dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,  xPesquisa]));
          end;

        if cbbPesquisa.ItemIndex = 7 then
          begin
            dmGeral.FAT_CD_M_PED.Close;
            dmGeral.FAT_CD_M_PED.Data :=
            dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,DateTimeToStr (xDataSis-14) ,DateTimeToStr(xDataSis) ]));
          end;

        if cbbPesquisa.ItemIndex = 8 then
          begin
            dmGeral.FAT_CD_M_PED.Close;
            dmGeral.FAT_CD_M_PED.Data :=
            dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([11, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, xPesquisa]));
          end;

       if cbbPesquisa.ItemIndex = 9 then
          begin
            dmGeral.FAT_CD_M_PED.Close;
            dmGeral.FAT_CD_M_PED.Data :=
            dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([12, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, xPesquisa]));
          end;

        if cbbPesquisa.ItemIndex = 10 then
          begin
            dmGeral.FAT_CD_M_PED.Close;
            dmGeral.FAT_CD_M_PED.Data :=
               dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([13, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, xPesquisa]));
          end;
     end
  else
     begin
            {   Código do pedido
              Nome do cliente
              Data
              Últimos 15 dias
              }

        if cbbPesquisa.ItemIndex in [1] then
           begin
             if length(trim(txtPesquisa.text)) < 1 then
                begin
                  ShowMessage('Digite pelo menos 1 caractere!');
                  exit;
                end;
           end;

        if (cbbPesquisa.ItemIndex <> 3) then
            begin
              dmGeral.FAT_CD_M_PED.Close;
              dmGeral.FAT_CD_M_PED.Data :=
              dmGeral.FAT_CD_M_PED.DataRequest(
                      VarArrayOf([cbbPesquisa.ItemIndex+115, cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,
                      xPesquisa,xFuncionario]));
            end;

        if cbbPesquisa.ItemIndex = 3 then
           begin
              dmGeral.FAT_CD_M_PED.Close;
              dmGeral.FAT_CD_M_PED.Data :=
              dmGeral.FAT_CD_M_PED.DataRequest(
                      VarArrayOf([cbbPesquisa.ItemIndex+115, cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,DateTimeToStr (xDataSis-14) ,DateTimeToStr(xDataSis),
                                  xFuncionario]));
            end;
     end;
  finally
     Screen.Cursor := crDefault;
     FreeAndNil(cdsBusFun);
  end;
end;

procedure TFAT_FM_M_PED.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;

  if dmGeral.FAT_CD_M_PED.FieldByName('pedido_origem_aut').AsString <> '' then
     begin
       ShowMessage('Este pedido foi gerdo a partir de um outro pedido, não é permitido a inclusão de novos itens.');
       abort;
     end;

  if (dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString = '') then
      begin
        Showmessage('Condição de pagamento deve ser preenchido.');
        cbbCondicaoPagamento.SetFocus;
        abort;
      end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
     begin
       PCP_CD_M_ROM.Close;
         PCP_CD_M_ROM.Data :=
            PCP_CD_M_ROM.DataRequest(
                 VarArrayOf([6, dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString]));
       if not PCP_CD_M_ROM_PED.IsEmpty then
          begin
            Showmessage('Operação não permitida!' + #13 +
                        'Este pedido está num relatório de cargas.');
            PCP_CD_M_ROM.Close;
            abort;
          end;
       PCP_CD_M_ROM.Close;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '' then
    Tipo_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger
  else
    Tipo_item := -1;


  if not (dmGeral.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString = '') then
    begin
      pnItens.Enabled  := true;
      //btn_Add_Itens.Enabled := False;

      dmGeral.FAT_CD_M_PED_ITE.Insert;
      txtBuscaItem.Enabled := true;
      txtBuscaItem.SetFocus;
    end
  else
    begin
      Showmessage('Tipo de estoque deve ser informado.');
      cbbTipoEstoque.SetFocus;
    end;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
      begin
        if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
           begin
              dmGeral.FAT_CD_M_PED_ITE.Cancel;
              pnItens.Enabled  := false;
              ShowMessage('É preciso que zere o valor do desconto especial para poder lançar um novo item!');
              btn_Add_Itens.setfocus;
              abort;
           end;
      end;
end;

procedure TFAT_FM_M_PED.btn_Add_ItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then
    begin
      if cbbTitPecaServico.CanFocus then
        begin
         cbbTitPecaServico.SetFocus
        end
      else if txtFpgEntrada.CanFocus then
         txtFpgEntrada.SetFocus
      else
         begin
           ActiveControl := nil;
           PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
           btnGrava.SetFocus;
         end;
    end;
end;

procedure TFAT_FM_M_PED.Button2Click(Sender: TObject);
begin
  inherited;
  //Application.CreateForm(TfrmVisualizarDados,frmVisualizarDados);
  //frmVisualizarDados.Show;
  //frmVisualizarDados.Free;
end;

procedure TFAT_FM_M_PED.cbbAtendenteEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BusFuncionario(1,'%');
  //cbbAtendente.DropDown;

end;

procedure TFAT_FM_M_PED.cbbCondicaoPagamentoEnter(Sender: TObject);
begin
  inherited;

  xIdCpgAnt := dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString;

  // Se vendedor externo
  if dmGeral.CAD_CD_C_FUN.FieldByName('vnd_interno_externo').AsInteger = 1 then  // Se for vendedor externo
     begin
        if trim(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_ped_id_condicao_pag').AsString) <> ''  then
           begin
             dmGeral.BusCondPgto(0,dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_orc_id_condicao_pag').AsString);
           end;
     end
  else
     begin
       dmGeral.BusCondPgto2(5,dmGeral.CAD_CD_C_PARid_empresa.AsString,inttostr(xFuncionario)); // Busca as condições de pagamento que constam na tabela
     end;
                                                                  // CAD_TB_C_PAR_CPG
  cbbCondicaoPagamento.DropDown;
end;

procedure TFAT_FM_M_PED.cbbCondicaoPagamentoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  {txtDias.Enabled := true;
  txtVencimento.Enabled := true;}

  pnTitulos.Enabled := true;
  btn_Add_Fpg.Enabled := true;

  pnlTitSer.Enabled := true;
  btn_Add_Fpg_ser.Enabled := true;
 // grdFpg.OnMouseUp := grdFpgMouseUp;



  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger > 0 then
     begin
       tipo_cond_pag := dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger;
       if (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0) then
         begin
           {txtDias.Enabled := false;
           txtVencimento.Enabled := false;}
           pnTitulos.Enabled := false;
           btn_Add_Fpg.Enabled := false;
           pnlTitSer.Enabled := false;
           btn_Add_Fpg_ser.Enabled := false;

          // grdFpg.OnMouseUp := nil;
         end;


       // Verifica se o cliente está em débito
       if dmGeral.VerifCliEmDeb(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger,
                                dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString) then
          begin
            Showmessage('Cliente encontra-se em débito.');

            if FatValidBloqueiaPed('B') then
               begin
                 cbbCondicaoPagamento.SetFocus;
                 exit;
               end;
          end;

       if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger > 0 then
          begin
             if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ver_limite').AsBoolean then
                begin
                  // Vefifica se o cliente tá sem limite de crédito
                  if dmGeral.BUS_CD_C_CLI.FieldByName('lim_saldo').AsCurrency <= 0 then
                    begin
                      Showmessage('Cliente encontra-se sem limite para compra.');

                      if FatValidBloqueiaPed('A') then
                         begin
                           cbbCondicaoPagamento.SetFocus;
                           exit;
                         end;
                    end;
                end;

             // Vefifica se o cliente tá com crédito encerrado
             if dmGeral.BUS_CD_C_CLI.FieldByName('situacao').AsInteger = 2 then
                begin
                  Showmessage('Cliente encontra-se com o crédito encerrado.');

                  if FatValidBloqueiaPed('D') then
                     begin
                       cbbCondicaoPagamento.SetFocus;
                       exit;
                     end;
                end;
          end;


      if  ((xIdCpgAnt   <> dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString)  and
           (xtipoCpgAnt <> dmGeral.BUS_CD_C_CPGtipo_pagamento.AsString)) then
            begin
              if ((dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0) or (dmGeral.FAT_CD_M_PED_ITE.RecordCount > 0)) then
                  begin
                    if MessageDlg('Se alterar o tipo de condição de pagamento serão deletados os títulos e os valores descontos dos itens serão zerados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                      begin
                        xtipoCpgAnt := dmGeral.BUS_CD_C_CPGtipo_pagamento.AsString;
                        xIdCpgAnt := dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString;
                      end
                    else
                      begin
                        dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString := xIdCpgAnt;
                        dmGeral.BusCondPgto(3,dmGeral.CAD_CD_C_PARid_empresa.AsString);
                        exit;
                      end;
                  end;

              while (not dmGeral.FAT_CD_M_PED_TIT.Eof) do
                begin
                  dmGeral.FAT_CD_M_PED_TIT.Delete;
                end;

              dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency := 0;
              xcred_util := dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency;
              xCred_disp := dmGeral.BusSaldoCreCli(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString)-xCred_util;
              txtCredDisp.Text := FormatCurr('0.00',xCred_disp);


              if dmGeral.FAT_CD_M_PED_ITE.RecordCount > 0 then
                begin
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;

                   dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger := 0;
                   if ((txtDias.Visible = true) and
                      (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1)) then
                     begin
                       dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger := 1;
                     end;
                   diasPrazo_ant := dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger;
                   RecalcularPrecoItens;
                end;

            end;

     if dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true then
         begin
           if xIdCpgAnt <> dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString then
              begin
                if (dmGeral.BUS_CD_C_CPG.FieldByName('perm_desc_especial').AsBoolean = false) and
                   (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0)  then
                   begin
                     ShowMessage('A condição de pagamento selecionada não permite o desconto especial, ' + #13 +
                                 'portanto o desconto especial será retirado do pedido de venda.');
                     dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency :=
                          dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency;
                   end;
              end;

           if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 2 then // sem pagamentos
              begin
                dmGeral.FAT_CD_M_PED.FieldByName('sgq_per_comissao').AsInteger := 0;
              end;

           txtDescEspecial.ReadOnly     := true;
           txtDescEspecial.Color        := $00DADADA;
           txtPercDescEspecial.ReadOnly := true;
           txtPercDescEspecial.Color    := $00DADADA;
           if dmGeral.BUS_CD_C_CPG.FieldByName('perm_desc_especial').AsBoolean then
              begin
                txtDescEspecial.ReadOnly := false;
                txtDescEspecial.Color    := clWhite;

                txtPercDescEspecial.ReadOnly := false;
                txtPercDescEspecial.Color    := clWhite;
              end;
         end;

     if (dmGeral.CAD_CD_C_PAR_MODrev.AsBoolean = true) then
         begin
           dmGeral.BUS_CD_C_CLI_PRD.Close;
           dmGeral.BUS_CD_C_CLI_PRD.Data :=
           dmGeral.BUS_CD_C_CLI_PRD.DataRequest(
                         VarArrayOf([0, '0']));

           if (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger > 0) then
            begin
               dmGeral.BUS_CD_C_CLI_PRD.Close;
               dmGeral.BUS_CD_C_CLI_PRD.Data :=
               dmGeral.BUS_CD_C_CLI_PRD.DataRequest(
                         VarArrayOf([0, dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString]));

               dmGeral.BUS_CD_C_CLI_PRD.IndexFieldNames := 'DIAS';

               if (not dmGeral.BUS_CD_C_CLI_PRD.IsEmpty) and
                  (not (dmGeral.BUS_CD_C_CLI.FieldByName('permitir_alterar_dias_tit_ped').AsBoolean = true)) then
                 begin
                   pnTitulos.Enabled := false;
                   btn_Add_Fpg.Enabled := false;

                   pnlTitSer.Enabled := false;
                   btn_Add_Fpg_ser.Enabled := false;
                  // grdFpg.OnMouseUp := nil;
                 end;
            end;
         end;

      lblTextoCondPgto.visible := false;
      txtTextoCondPgto.visible := false;
      if dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true then
         begin
           if (dmGeral.BUS_CD_C_CPGsgq_texto_cnd_ped.AsBoolean = true) then
               begin
                 cbbCondicaoPagamento.Width := 37;
                 lblTextoCondPgto.visible := true;
                 txtTextoCondPgto.visible := true;
                 txtTextoCondPgto.Width   := 187;

                 ActiveControl := nil;
                 PostMessage(txtTextoCondPgto.Handle, WM_SETFOCUS, 0, 0);
                 txtTextoCondPgto.SetFocus;
               end;
         end;


      if (txtDiasPrazo.Visible = true) then
          begin
            if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1) then
               begin
                 txtDiasPrazo.Enabled := true;
                 txtDiasPrazo.Color := clWindow;
                 if diasPrazo_ant = 0 then
                    begin
                      dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsString :=
                                   dmGeral.BUS_CD_C_CLI.FieldByName('DIAS_PRAZO_FINANCEIRO').AsString;
                    end;
                 if not (txtTextoCondPgto.CanFocus) then
                    txtDiasPrazo.SetFocus;
               end
            else
               begin
                 txtDiasPrazo.Enabled := false;
                 txtDiasPrazo.Color := $00DADADA;
                 txtDiasPrazo.Text := '0';
               end;
          end;
     end;

end;

procedure TFAT_FM_M_PED.cbbCorEnter(Sender: TObject);
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Data :=
          dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsString]));

  if dmgeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1 then // vendedor externo
     begin
       dmGeral.BusCor(2,dmGeral.BUS_CD_C_ITE.FieldByName('id_grupo').AsString);
     end
  else
    dmGeral.BusCor(1,'');

  cbbCor.DropDown;
end;

procedure TFAT_FM_M_PED.cbbCorExit(Sender: TObject);
begin
  inherited;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text) = '' then
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
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  if mmPcpObsIte.CanFocus then
     mmPcpObsIte.SetFocus
  else
     begin
       if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean then
         begin
          BuscarCulturas(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);
          pnlCultura.Visible := true;
          pnlCultura.Top := 50;
          pnlCultura.Left := 399;
          cbbCultura.SetFocus;
         end
       else
         begin
           ChamaMecanicoTerceiro;
           if not cbbMecanico.CanFocus then
             begin
              pnItens.Enabled := true;
              txtQtde.SetFocus;
             end;
         end;

       pnlCorTamanho.Visible := False;
     end;

end;

procedure TFAT_FM_M_PED.cbbCulturaEnter(Sender: TObject);
begin
  inherited;
  cbbCultura.DropDown;
end;

procedure TFAT_FM_M_PED.cbbCulturaExit(Sender: TObject);
begin
  inherited;
   dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECUL').text := '';

  if trim(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_CULTURA').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCultura.Visible := False;
           exit;
         end;

       {Showmessage('O campo "Cultura" deve ser preenchido.');
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_CULTURA').Text := '';
       cbbCultura.SetFocus; }

       pnlCultura.Visible := false;
       txtQtde.SetFocus;

       exit;
     end;

  dmGeral.BusCultura(0,dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_CULTURA').Text);
  if dmGeral.BUS_CD_C_CUL.IsEmpty then
     begin
       Showmessage('Cultura não encontrado.');
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_CULTURA').Text := '';
       cbbCultura.SetFocus;
       exit;
     end;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECUL').text :=
          dmGeral.BUS_CD_C_CUL.FieldByName('DESCRICAO').Text;
  pnlCultura.Visible := false;


  ChamaMecanicoTerceiro;

  if not cbbMecanico.CanFocus then
     txtQtde.SetFocus;
end;

procedure TFAT_FM_M_PED.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisa.Enabled := true;

  txtPesquisaData.Text := '  /  /    ';



  if cbbPesquisa.ItemIndex in [5]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 150;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;

  if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1 then
      begin
        {cbbPesquisa.Items.Add('Código do pedido');
         cbbPesquisa.Items.Add('Nome do cliente');
         cbbPesquisa.Items.Add('Data');
         cbbPesquisa.Items.Add('Últimos 15 dias');}

        if cbbPesquisa.ItemIndex in [0] then
           begin
             txtPesquisa.NumbersOnly := True;
           end
        else
           begin
             txtPesquisa.NumbersOnly := False;
             if cbbPesquisa.ItemIndex = 3 then
               begin
                 txtPesquisa.Enabled := false;
               end;
           end;
      end
  else
      begin
        if cbbPesquisa.ItemIndex in [0] then
           begin
             txtPesquisa.NumbersOnly := True;
           end
        else
           begin
             txtPesquisa.NumbersOnly := False;
             if cbbPesquisa.ItemIndex = 7 then
               begin
                 txtPesquisa.Enabled := false;
               end;
           end;
      end;
end;

procedure TFAT_FM_M_PED.cbbPropriedadeEnter(Sender: TObject);
begin
  inherited;
  cbbPropriedade.DropDown;
end;

procedure TFAT_FM_M_PED.cbbPropriedadeExit(Sender: TObject);
begin
  inherited;
   if trim(dmGeral.FAT_CD_M_PED.FieldByName('ID_PROPRIEDADE').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           exit;
         end;

       Showmessage('O campo "Prop." deve ser preenchido.');
       dmGeral.FAT_CD_M_PED.FieldByName('ID_PROPRIEDADE').Text := '';
       cbbPropriedade.SetFocus;
       exit;
     end;
end;

procedure TFAT_FM_M_PED.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TFAT_FM_M_PED.cbbTamanhoExit(Sender: TObject);
begin
  inherited;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    if mmPcpObsIte.CanFocus then
       mmPcpObsIte.SetFocus
    else
      begin
       if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean then
         begin
          BuscarCulturas(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);
          pnlCultura.Visible := true;
          pnlCultura.Top := 50;
          pnlCultura.Left := 399;
          cbbCultura.SetFocus;
         end
       else
         begin
          ChamaMecanicoTerceiro;
          if (not cbbMecanico.CanFocus) then
            txtQtde.SetFocus;
         end;

       pnlCorTamanho.Visible := False;
      end;
end;

procedure TFAT_FM_M_PED.cbbTipoEstoqueEnter(Sender: TObject);
begin
  inherited;

  // Trás somente tipo de estoque do tipo SAÍDA e indicador NORMAL

  if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1 then
     begin
       if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('fat_id_tipo_mov_estoque_rep').AsString <> '' then
          dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('fat_id_tipo_mov_estoque_rep').AsString)
       else
          dmGeral.BusTipoEstoque(4,'1');
     end
  else
     begin
       dmGeral.BusTipoEstoque(4,'1');
     end;

  cbbTipoEstoque.DropDown;
end;

procedure TFAT_FM_M_PED.cbbVendedorEnter(Sender: TObject);
begin
  inherited;
 // FAT_RN_M_PED.BusFuncionarioAtivo;
  dmGeral.BusFuncionario(10,'0');
  cbbVendedor.DropDown;
end;

procedure TFAT_FM_M_PED.cbbVendedorExit(Sender: TObject);
begin
  inherited;

  if dmgeral.FAT_CD_M_PED.FieldByName('id_vendedor').AsCurrency > 0 then
     begin
        dmGeral.BUS_CD_C_FU4.Close;
            dmGeral.BUS_CD_C_FU4.Data :=
                dmGeral.BUS_CD_C_FU4.DataRequest(
                     VarArrayOf([0,dmgeral.FAT_CD_M_PED.FieldByName('id_vendedor').AsCurrency]));

        dmgeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency :=
            dmGeral.BUS_CD_C_FU4.FieldByName('SGQ_PER_COMISSAO').AsCurrency;

        dmGeral.BUS_CD_C_FU4.close;
     end;


end;

procedure TFAT_FM_M_PED.ChamaCorTamanho;
begin

  lblMedida.Visible    := false;
  mmPcpObsIte.Visible  := false;

  dmGeral.BUS_CD_C_ITE.close;
  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text]));

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor

        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
           begin
              if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text =
                  dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or
                 (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                 begin
                   pnlCorTamanho.height := 76;
                   pnlCorTamanho.Width  := 545;
                   lblMedida.Visible    := true;
                   mmPcpObsIte.Visible  := true;
                 end
              else
                  begin
                    pnlCorTamanho.Visible := False;
                    txtQtde.SetFocus;
                  end;
            end
        else
            begin
              pnlCorTamanho.Visible := False;
              ChamaMecanicoTerceiro;
              if (not cbbMecanico.CanFocus) then
                txtQtde.SetFocus;
            end;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := 51;
            //pnlCorTamanho.Top := 26;
            pnlCorTamanho.Width := 276;

            if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                begin
                  if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text =
                      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or

                      (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                     begin
                       pnlCorTamanho.height := 76;
                       pnlCorTamanho.Width  := 545;
                       lblMedida.Visible    := true;
                       mmPcpObsIte.Visible  := true;
                     end
                end;

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
                  pnlCorTamanho.Left  := 126;
                  pnlCorTamanho.Top   := 51;
                  //pnlCorTamanho.Top   := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                     begin
                        if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text =
                            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or
                           (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                           begin
                             pnlCorTamanho.height := 76;
                             pnlCorTamanho.Width  := 410;
                             lblMedida.left := 140;
                             lblMedida.Visible    := true;
                             mmPcpObsIte.left := 140;
                             mmPcpObsIte.Visible  := true;
                           end
                      end;

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
                  pnlCorTamanho.Left := 126;
                  //pnlCorTamanho.Top := 50;

                  pnlCorTamanho.Top := grdItens.Top;

                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                     begin
                        if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text =
                           dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or
                           (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                           begin
                             pnlCorTamanho.height := 76;
                             pnlCorTamanho.Width  := 410;
                             lblMedida.left := 140;
                             lblMedida.Visible    := true;
                             mmPcpObsIte.left := 140;
                             mmPcpObsIte.Visible  := true;
                           end
                     end;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;

               end;
         end;
     end;
end;

procedure TFAT_FM_M_PED.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;

    if (dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 0) and
       (dmgeral.FAT_CD_M_PEDsituacao_aprovacao.AsInteger = 0) then
    begin
      aFont.Color := clBlack;
    end;

    if (dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 0) and
       (dmgeral.FAT_CD_M_PEDsituacao_aprovacao.AsInteger = 1) then
    begin
      aFont.Color := $00006FDD;
    end;

    if dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 1 then
    begin
      aFont.Color := clRed;
    end;

    if dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 2 then
    begin
      aFont.Color := clBlue;
    end;

    if dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 3 then
    begin
       aFont.Color := clGreen;
     end;

    if dmgeral.FAT_CD_M_PEDsituacao.AsInteger = 4 then
    begin
       aFont.Color := clMaroon;
     end;
end;

procedure TFAT_FM_M_PED.dbGridRowChanged(Sender: TObject);
begin
  inherited;

  lblGeracaoPedido.Caption := '';

  if not dmgeral.FAT_CD_M_PED.IsEmpty then
    begin
      if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean=true) and
         (dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString <> '') then
          begin
            dmGeral.BusPropriedadeCli(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
            dmGeral.BUS_CD_C_CLI_PRO.Insert;
            dmGeral.BUS_CD_C_CLI_PRO.FieldByName('ID_PROPRIEDADE').AsInteger := 0;
            dmGeral.BUS_CD_C_CLI_PRO.FieldByName('NOME').AsString := 'Nenhum';
            dmGeral.BUS_CD_C_CLI_PRO.Post;
            dmGeral.BUS_CD_C_CLI_PRO.Open;
          end;

      if ((not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').AsInteger=1)) and
          (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean=true) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_LOTE_NA_ENTRADA').AsBoolean=true) and
          (dmgeral.FAT_CD_M_PED.FieldByName('envia_carga').AsBoolean=true ) ) then
           btnAtualizaCont.PopupMenu := pmImpressaoPed
      else
           btnAtualizaCont.PopupMenu := nil;

      lblGeracaoPedido.Caption := 'Pedido gerado manual';

      if dmGeral.FAT_CD_M_PED.FieldByName('pedido_automatico').AsBoolean then
         lblGeracaoPedido.Caption := 'Pedido gerado automaticamente. Pedido origem: ' +
                  dmGeral.FAT_CD_M_PED.FieldByName('pedido_origem_aut').AsString;
    end;
end;

procedure TFAT_FM_M_PED.ExcluirOrcamento;
begin
  { dmGeral.BusFatOrc(3,dmGeral.FAT_CD_M_PEDid_pedido.AsString);
   if not dmGeral.FAT_CD_M_ORC.IsEmpty then
      begin
        dmGeral.FAT_CD_M_ORC.BeforeEdit := nil;

        xCodOrc := dmGeral.FAT_CD_M_ORCid_orcamento.AsInteger;
        dmGeral.FAT_CD_M_ORC.edit;
        dmGeral.FAT_CD_M_ORCstatus.AsInteger    := 0;
        dmGeral.FAT_CD_M_ORCid_pedido.AsInteger := 0;
        dmGeral.FAT_CD_M_ORC.post;

        dmGeral.FAT_CD_M_ORC.BeforeEdit := dmGeral.FAT_CD_M_ORCBeforeEdit;
      end;  }
end;

procedure TFAT_FM_M_PED.ExcluirPedidoVenda;
//var
//  Obj:TSMClient;
begin

  {dmGeral.FAT_CD_M_PED.ApplyUpdates(0);
  dmGeral.EST_CD_M_FEA.ApplyUpdates(0);
  dmGeral.EST_CD_M_FES.ApplyUpdates(0);
  dmGeral.EST_CD_M_FES_ALM.ApplyUpdates(0);
  dmGeral.BUS_CD_M_NFE.ApplyUpdates(0);
  dmGeral.FAT_CD_M_ORC.ApplyUpdates(0);
  }



 { Obj:=TSMClient.Create(dmGeral.Conexao.DBXConnection);
  dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_PEDid_tipo_mov_estoque.text);

  if (dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean) then  // Usa produção
      begin
         // Em aberto
        if (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 0) then
            begin
               ExcluirOrcamento;
               dmGeral.FAT_CD_M_PED.delete;
               if xCodOrc > 0 then
                  begin
                    TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                  end
               else
                  begin
                    TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED]);
                  end;
            end;
         // O código de geração da NF, Saldos... deve ir para a tela de Ordem de Saída
      end
  else
      begin
            // Em aberto                                                     //  Em espera
        if (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 0) and (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger = 0) then
           begin
             ExcluirOrcamento;
             dmGeral.FAT_CD_M_PED.delete;
             if xCodOrc > 0 then
                begin
                   TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                end
             else
                begin
                   TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED]);
                end;
           end;
            // Em aberto                                                     //  Pedido foi aprovado
        if (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger = 0) and (dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger = 1) then
           begin

               dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').text);
               if not dmGeral.BUS_CD_C_TME.IsEmpty then
                  begin
                    if dmGeral.BUS_CD_C_TMEesto_movimenta.AsBoolean = true then
                       begin
                         SAI_EXCLUI_EST(6,dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_PED_ITE,xCdsItensAntigo);
                       end;
                  end;
               if dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean = false then
                  begin
                    PED_EXCLUI_NFE(dmGeral.FAT_CD_M_PEDid_pedido.Text);
                  end;

              dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').text);

              dmGeral.FAT_CD_M_PED.delete;

              if dmGeral.BUS_CD_C_TMEesto_movimenta.AsBoolean = true then // Movimenta estoque
                 begin
                    if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                       begin
                         if xCodOrc > 0 then
                            begin
                              TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                            end
                         else
                            begin
                              TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_PED]);
                            end;
                       end
                    else
                       begin
                         if xCodOrc > 0 then
                            begin
                               TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                            end
                         else
                            begin
                               TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_PED]);
                            end;
                       end;
                 end
              else
                 begin
                   if xCodOrc > 0 then
                      begin
                         TClientAllApplyUpdates.Execute(obj,[dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_PED]);
                      end
                   else
                      begin
                         TClientAllApplyUpdates.Execute(obj,[dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_PED]);
                      end;
                 end;
           end;
      end;
  obj.Free;
  dmGeral.FAT_CD_M_PED.Close;
  dmGeral.FAT_CD_M_PED.Open;    }
end;

procedure TFAT_FM_M_PED.ExibirFormasPgto;
begin
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         dmGeral.BusFormaPgtos(2,'0');
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         dmGeral.BusFormaPgtos(1,'%');
      end;
end;

procedure TFAT_FM_M_PED.btnImportarClick(Sender: TObject);
begin
  inherited;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text = '' then
     begin
       ShowMessage('O campo "Cliente" deve ser prenchido.');
       abort;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').Text = '' then
     begin
       ShowMessage('O campo "Condição de pagamento" deve ser prenchido.');
       abort;
     end;


  dmGeral.FAT_CD_M_PED_ITE.Cancel;
  if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
     begin
       if MessageDlg('Já existem itens lançado no pedido de venda.' + #13 +
                     'Se continuar os itens do pedido serão apagados.' + #13 +
                     'Deseja fazer uma nova importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            dmGeral.FAT_CD_M_PED_ITE.First;
            while not dmGeral.FAT_CD_M_PED_ITE.Eof do
               begin
                 dmGeral.FAT_CD_M_PED_ITE.Delete;
               end;
          end;
     end;

  //xCodOrc := 0;
  Application.CreateForm(TFAT_FM_M_PED_IOR,FAT_FM_M_PED_IOR);

  FAT_FM_M_PED_IOR.ShowModal;
  FAT_FM_M_PED_IOR.Free;
  if not dmGeral.FAT_CD_M_ORC.IsEmpty then
     begin
       dmGeral.FAT_CD_M_PED.FieldByName('id_orcamento').AsInteger :=
               dmGeral.FAT_CD_M_ORCid_orcamento.AsInteger;

       //xCodOrc := dmGeral.FAT_CD_M_ORCid_orcamento.AsInteger;
     end;

  dmGeral.FAT_CD_M_ORC.Close;


  txtObservacao.SetFocus;
end;

procedure TFAT_FM_M_PED.btnImpPedLocClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  codigo,empresa: string;
  memo1,memo2 :TfrxMemoView;
  tipo_impressao:integer;
begin
  inherited;
  if not dmGeral.FAT_CD_M_PED.IsEmpty then
      begin
       empresa := dmGeral.FAT_CD_M_PEDid_empresa.text;
       codigo := dmGeral.FAT_CD_M_PEDid_pedido.text;

       dmGeral.FAT_CD_M_PED.Close;
       dmGeral.FAT_CD_M_PED.Data :=
       dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([0,empresa,codigo]));

       dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PEDid_cliente.Text);

       tipo_impressao := 0;
       if (not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').IsNull) then
         begin
           tipo_impressao := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').AsInteger;
         end;

       if tipo_impressao = 0 then
         begin
          case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
            0: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Em aberto');
            1: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Reprovado');
            2: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Em produção');
            3: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Faturado');
            4: FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('Cancelado');
          else
            FAT_FR_M_PED_REV_LOC.Variables['SituacaoPed'] := QuotedStr('??????');
         end;


         FAT_FR_M_PED_REV_LOC.Variables['ativado_sgq'] := false;
         if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
             begin
               FAT_FR_M_PED_REV_LOC.Variables['ativado_sgq'] := true;
             end;


         FAT_FR_M_PED_REV_LOC.Variables['ativado_cor'] := false;
         if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
             (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
           begin
             FAT_FR_M_PED_REV_LOC.Variables['ativado_cor'] := true;
           end;


         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

         if FileExists(PathImg) then
            begin
               LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_REV_LOC.FindObject('imgEmpresa1'));
               if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;


         FAT_FR_M_PED_REV_LOC.PrepareReport();
         FAT_FR_M_PED_REV_LOC.ShowReport();
        end;

      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TFAT_FM_M_PED.btnImpPedPrecoClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  codigo,empresa: string;
  memo1,memo2 :TfrxMemoView;
  tipo_impressao:integer;
begin
  inherited;
  if not dmGeral.FAT_CD_M_PED.IsEmpty then
      begin
       empresa := dmGeral.FAT_CD_M_PEDid_empresa.text;
       codigo := dmGeral.FAT_CD_M_PEDid_pedido.text;

       dmGeral.FAT_CD_M_PED.Close;
       dmGeral.FAT_CD_M_PED.Data :=
       dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([0,empresa,codigo]));

       dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PEDid_cliente.Text);

       tipo_impressao := 0;
       if (not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').IsNull) then
         begin
           tipo_impressao := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').AsInteger;
         end;

       if tipo_impressao = 0 then
         begin
          case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
            0: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Em aberto');
            1: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Reprovado');
            2: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Em produção');
            3: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Faturado');
            4: FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('Cancelado');
          else
            FAT_FR_M_PED_REV.Variables['SituacaoPed'] := QuotedStr('??????');
         end;


         FAT_FR_M_PED_REV.Variables['ativado_sgq'] := false;
         if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
             begin
               FAT_FR_M_PED_REV.Variables['ativado_sgq'] := true;
             end;


         FAT_FR_M_PED_REV.Variables['ativado_cor'] := false;
         if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
             (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
           begin
             FAT_FR_M_PED_REV.Variables['ativado_cor'] := true;
           end;


         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

         if FileExists(PathImg) then
            begin
               LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_REV.FindObject('imgEmpresa1'));
               if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;


         FAT_FR_M_PED_REV.PrepareReport();
         FAT_FR_M_PED_REV.ShowReport();
        end;

      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TFAT_FM_M_PED.btnImpRomaneioClick(Sender: TObject);
var
  empresa,codigo:String;
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
   if not dmGeral.FAT_CD_M_PED.IsEmpty then
      begin
        empresa := dmGeral.FAT_CD_M_PEDid_empresa.text;
        codigo := dmGeral.FAT_CD_M_PEDid_pedido.text;

        dmGeral.FAT_CD_M_PED.Close;
        dmGeral.FAT_CD_M_PED.Data :=
        dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([0,empresa,codigo]));

        dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PEDid_cliente.Text);
        dmSgq.BusMotorista(0,dmGeral.FAT_CD_M_PEDid_motorista.Text);


        case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
          0: FAT_FR_M_PED_ROM.Variables['SituacaoPed'] := QuotedStr('Em aberto');
          1: FAT_FR_M_PED_ROM.Variables['SituacaoPed'] := QuotedStr('Reprovado');
          2: FAT_FR_M_PED_ROM.Variables['SituacaoPed'] := QuotedStr('Em produção');
          3: FAT_FR_M_PED_ROM.Variables['SituacaoPed'] := QuotedStr('Faturado');
          4: FAT_FR_M_PED_ROM.Variables['SituacaoPed'] := QuotedStr('Cancelado');
        else
          FAT_FR_M_PED_ROM.Variables['SituacaoPed'] := QuotedStr('??????');
        end;

        FAT_FR_M_PED_ROM.Variables['ativado_sgq'] := false;
        if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
           (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
         begin
           FAT_FR_M_PED_ROM.Variables['ativado_sgq'] := true;
         end;

        FAT_FR_M_PED_ROM.Variables['ativado_cor'] := false;
        if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
           (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
         begin
           FAT_FR_M_PED_ROM.Variables['ativado_cor'] := true;
         end;

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

         if FileExists(PathImg) then
            begin
               LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_ROM.FindObject('imgEmpresa1'));
               if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;


         FAT_FR_M_PED_ROM.PrepareReport();
         FAT_FR_M_PED_ROM.ShowReport();

      end
    else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TFAT_FM_M_PED.btnVisualizarRestClick(Sender: TObject);
begin
  inherited;

  if (dmGeral.FAT_CD_M_PED.RecordCount >0) then
    begin
      FAT_FM_M_PED_RTC := TFAT_FM_M_PED_RTC.Create(Self);
      FAT_FM_M_PED_RTC.ShowModal;
      FAT_FM_M_PED_RTC.Free;
    end
  else
    begin
      ShowMessage('É necessário selecionar o pedido.');
      exit;
    end;
end;

procedure TFAT_FM_M_PED.FAT_FD_M_PED_ITECheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
     begin
       dmGeral.BusItens(0,dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsString);


       if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsInteger = 404) or
          (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean)
            then
          begin
            {qtdCar := length(trim(dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMEITE').AsString));
            NomeItem := copy(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString,31,qtdCar-30);
            if trim(NomeItem) = '' then
               NomeItem := '.'; }
            FAT_FR_M_PED_SGQ2.Variables['ft_desc_item'] := QuotedStr(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString);
          end
       else
          begin

            FAT_FR_M_PED_SGQ2.Variables['ft_desc_item'] :=
                QuotedStr(dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMEITE').AsString);
          end;
       dmgeral.BUS_CD_C_ITE.close;
     end;
end;

procedure TFAT_FM_M_PED.FAT_FR_M_PED_SGQ2AfterPrintReport(Sender: TObject);
begin
  inherited;
  // If Inserido por Maxsuel Victor, 06/12/2024
  // Representante externo não precisa mais registrar os dados de impressão.
  if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger <> 1 then  // 1 = Vendedor externo
     begin
        if BUS_CD_M_PED.FieldByName('SITUACAO').AsInteger <> 0 then
           begin
             if  BUS_CD_M_PED.FieldByName('SITUACAO').AsInteger in [1,3,4] then
                 exit;
           end;

        BUS_CD_M_PED.Close;
           BUS_CD_M_PED.Data :=
              BUS_CD_M_PED.DataRequest(
                 VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmGeral.FAT_CD_M_PED.FieldByName('id_pedido').AsString]));

        if BUS_CD_M_PED.FieldByName('id_func_pri_impressao').AsInteger = 0 then
           begin
             try
                BUS_CD_M_PED.edit;
                BUS_CD_M_PED.FieldByName('dta_pri_impressao').AsDateTime := date;
                BUS_CD_M_PED.FieldByName('hor_pri_impressao').AsDateTime := time;
                BUS_CD_M_PED.FieldByName('id_func_pri_impressao').AsInteger :=
                       xFuncionario;

                BUS_CD_M_PED.post;
                BUS_CD_M_PED.ApplyUpdates(0);
             except
                 on e: Exception do
                    begin
                      ShowMessage('Erro: ' + e.Message);
                      BUS_CD_M_PED.Close;
                      abort;
                    end;
             end;
           end
        else
           begin
             ChamarDadosDaImpressao(1);
           end;

        BUS_CD_M_PED.Close;
     end;

  { if dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger <> 0 then
     begin
       if  dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger in [1,3,4] then
           exit;
     end;

  if dmgeral.FAT_CD_M_PED.FieldByName('id_func_pri_impressao').AsInteger = 0 then
     begin
       dmgeral.FAT_CD_M_PED.edit;
       dmgeral.FAT_CD_M_PED.FieldByName('dta_pri_impressao').AsDateTime := date;
       dmgeral.FAT_CD_M_PED.FieldByName('hor_pri_impressao').AsDateTime := time;
       dmgeral.FAT_CD_M_PED.FieldByName('id_func_pri_impressao').AsInteger :=
               xFuncionario;

       // Comentado por Maxsuel Victor, em 06/12/2024
       // No botão de Imprimir Pedido , já tem esse código.
        // if dmGeral.BUS_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger = 2 then // Sem pagamentos
        //    begin
        //      dmGeral.FAT_CD_M_PED_TIT.BeforePost := dmGeral.FAT_CD_M_PED_TITBeforePost;
        //      if not (dmGeral.FAT_CD_M_PED_TIT.IsEmpty) then
        //         dmGeral.FAT_CD_M_PED_TIT.delete;
        //    end;

       dmgeral.FAT_CD_M_PED.post;
       dmgeral.FAT_CD_M_PED.ApplyUpdates(0);
     end
  else
     begin
       ChamarDadosDaImpressao(1);
     end; }

 end;

procedure TFAT_FM_M_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FAT_CD_M_PED.Filtered := false;
  dmGeral.BUS_CD_C_FPG.Filtered := false;
  dmGeral.BUS_CD_C_FPG2.Filtered := false;

  dmGeral.FAT_CD_M_PED.Close;
  dmgeral.BUS_CD_C_HFG.Close;
  FreeAndNil(FAT_FM_M_PED);
end;

procedure TFAT_FM_M_PED.FormCreate(Sender: TObject);
begin
  inherited;
  // Variável criada por Maxsuel Victor em 02/12/2016
  AbrirBuscas;

  xChamadoPor_TeleMarketing := false;


  dmGeral.AtualizarGridItens(grdItens,'int_nomeite',10,8);

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = false then
    begin
      grdItens.ColumnByName('int_nomecul').Visible := false;
    end;

   if dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
    begin
      lblCubagem.Visible := True;
      txtCubagem.Visible := true;

      txtPcpObsItem.Visible := true;
      lblItemSobMed.Visible := true;

      lblOutrasObs.Visible := true;
      txtOutrasObs.Visible := true;

      //dbGrid.ColumnByName('int_sitaprov').Visible := false;
      //lblEmAberto.Caption := 'Digitado';
    end
  else
    begin
      lblCubagem.Visible := False;
      txtCubagem.Visible := False;

      txtPcpObsItem.Visible := false;
      lblItemSobMed.Visible := false;

      lblOutrasObs.Visible := false;
      txtOutrasObs.Visible := false;
    end;

  chbEnviaCarga.Visible := false;

   if ((dmGeral.CAD_CD_C_PAR_MODrev.AsBoolean=True) and (dmGeral.CAD_CD_C_PAR_CTRped_envia_carga.AsBoolean=True)) then
     begin
       chbEnviaCarga.Visible := true;
     end
   else
     begin
       chbEnviaCarga.Visible := false;
     end;

    {   Código do pedido
              Nome do cliente
              Data
              Últimos 15 dias
              }

   if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1 then
      begin
        cbbPesquisa.Items.Clear;

        cbbPesquisa.Items.Add('Código do pedido');
        cbbPesquisa.Items.Add('Nome do cliente');
        cbbPesquisa.Items.Add('Data');
        cbbPesquisa.Items.Add('Últimos 15 dias');

        cbbPesquisa.ItemIndex := 0;
      end;


end;

procedure TFAT_FM_M_PED.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F8 then
    btnIncluir.Click;

  // Maxsuel Victor, em 11/09/2015 , retirei pra colocar o código no campo de Item.
  {if Key = vk_F2 then
    begin
      if (dmGeral.FAT_CD_M_PED_TIT.State in [dsInsert]) or (dmGeral.FAT_CD_M_PED_TIT.State in [dsEdit]) then
        begin
          dmGeral.FAT_CD_M_PED_TIT.Post;
        end;
      pnTitulos.Enabled := False;
      btnGrava.SetFocus;
    end;}

  if key = vk_F4 then
     begin

       if (dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger <> 2 ) then
           begin
             exit;
           end;

       if (dmGeral.CAD_CD_C_PAR.FieldByName('emp_cnpj').AsString <> '04639580000112' ) then
           begin
             exit;
           end;

       if (dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString = '') then
           begin
             Showmessage('Condição de pagamento deve ser preenchido.');
             abort;
           end;

       if (dmGeral.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString = '') then
           begin
             Showmessage('Tipo de estoque deve ser informado.');
             abort;
           end;

       if not (dmGeral.FAT_CD_M_PED_ITE.IsEmpty) then
          begin
             Showmessage('Operação não permitida, pois já existe itens lançados no pedido de venda..');
             abort;
          end;

       Application.CreateForm(TFAT_FM_M_PED_IPE,FAT_FM_M_PED_IPE);
       FAT_FM_M_PED_IPE.ShowModal;
       FAT_FM_M_PED_IPE.Free;
     end;
end;

procedure TFAT_FM_M_PED.FormShow(Sender: TObject);
begin
  inherited;

    lblDiasPrazo.Visible := false;
    txtDiasPrazo.Visible := false;
   if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True)) then
    begin
      lblDiasPrazo.Visible := true;
      txtDiasPrazo.Visible := true;
    end;

   lblDescBasc.visible := false;
   txtDescBasc.visible := false;
   lblPerDescBasc.visible  := false;
   txtPercDescBasc.visible := false;

   lblDescEspecial.visible := false;
   txtDescEspecial.visible := false;
   lblPerDescEspecial.visible := false;
   txtPercDescEspecial.visible := false;


   if  ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) or
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False)) then
    begin
      lblNumOrdPro.Visible := false;
      lblDtaEntrega.Visible := false;
      txtDtaEntrega.Visible := false;
      txtOrdProd.Visible := false;
    end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
      begin
        lblVendedor.caption := 'Representante :';

        lblDescBasc.visible := true;
        txtDescBasc.visible := true;
        lblPerDescBasc.visible  := true;
        txtPercDescBasc.visible := true;


        lblDescEspecial.visible := true;
        txtDescEspecial.visible := true;
        lblPerDescEspecial.visible := true;
        txtPercDescEspecial.visible := true;


        txtTotalVlrDesc.readonly := true;
        txtTotalVlrDesc.color :=  $00DADADA;


      end
  else
      begin
          lblFrete.top := lblFrete.top + 34;
          txtFrete.top := txtFrete.top + 34;

          lblSaldo.top   :=  lblSaldo.top + 34;
          lblBruto.top   :=   lblBruto.top + 34;
          lblPerDesc.top  := lblPerDesc.top+34;
          lblVlrDesc.top := lblVlrDesc.top + 34;
          lblIcmDesn.top  := lblIcmDesn.top+34;


          txtSaldo.top := txtSaldo.top + 34;
          txtVlrBruto.top := txtVlrBruto.top + 34;
          txtPerDesc.top := txtPerDesc.top + 34;
          txtIcmsDesn.top := txtIcmsDesn.top + 34;
          txtTotalVlrDesc.top := txtTotalVlrDesc.top+34;

          lblTotalPed.top := lblTotalPed.top + 34;
          wwDBEdTotalLiqItens.top := wwDBEdTotalLiqItens.top + 34;

          grdItens.Height :=  grdItens.Height + 34;
      end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true)  then
    begin
      lblPropriedade.Visible := true;
      cbbPropriedade.Visible := true;
      txtClienteNome.Width := 127;
    end
  else
    begin
      lblPropriedade.Visible := false;
      cbbPropriedade.Visible := false;
      txtClienteNome.Width := 236;
    end;


  if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_UTILIZA_FRETE').AsBoolean = true)) or
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean=true)  then
    begin
      lblTipoFrete.Visible := false;
      cbbModFrete.Visible := false;
      lblFrete.Visible := false;
      txtFrete.Visible := false;

      lblMotorista.Visible := false;
      txtCodMotorista.Visible := false;
      txtDescMotorista.Visible := false;
      lblPlaca.Visible := false;
      txtIdPlaca.Visible := false;

      btnImpRomaneio.Visible := false;
      btnAtualizaCont.Width := 310;

      txtPcpObsItem.Width :=  txtPcpObsItem.Width+58;

      //lblCubagem.Left := lblCubagem.Left+58;
      lblSaldo.Left   :=  lblSaldo.Left+58;
      lblBruto.Left   :=   lblBruto.Left+58;
      lblPerDesc.Left  := lblPerDesc.Left+58;
      lblVlrDesc.Left := lblVlrDesc.Left+58;
      lblIcmDesn.Left  := lblIcmDesn.Left+58;

      //txtCubagem.Left := txtCubagem.Left+58;
      txtSaldo.Left := txtSaldo.Left+58;
      txtVlrBruto.Left := txtVlrBruto.Left+58;
      txtPerDesc.Left := txtPerDesc.Left+58;
      txtIcmsDesn.Left := txtIcmsDesn.Left + 58;
      txtTotalVlrDesc.Left := txtTotalVlrDesc.Left+58;

      lblPerDescBasc.Left := lblPerDescBasc.Left + 58;
      txtPercDescBasc.Left := txtPercDescBasc.Left + 58;
      lblDescBasc.Left := lblDescBasc.Left + 58;
      txtDescBasc.Left := txtDescBasc.Left + 58;

      lblPerDescEspecial.Left  := lblPerDescEspecial.Left + 58;
      txtPercDescEspecial.Left := txtPercDescEspecial.Left + 58;
      lblDescEspecial.Left :=  lblDescEspecial.Left + 58;
      txtDescEspecial.Left :=  txtDescEspecial.Left + 58;
    end;

  if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_ICMS_DESN_SAIDA').AsBoolean = true)) or
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean=true)  then
    begin
       lblIcmDesn.Visible := false;
       txtIcmsDesn.Visible := false;

       lblSaldo.Left   :=  lblSaldo.Left+58;
       lblBruto.Left   :=   lblBruto.Left+58;
       lblPerDesc.Left  := lblPerDesc.Left+58;
       lblVlrDesc.Left := lblVlrDesc.Left+58;

       txtSaldo.Left := txtSaldo.Left+58;
       txtVlrBruto.Left := txtVlrBruto.Left+58;
       txtPerDesc.Left := txtPerDesc.Left+58;
       txtTotalVlrDesc.Left := txtTotalVlrDesc.Left+58;

       lblPerDescBasc.Left := lblPerDescBasc.Left + 58;
       txtPercDescBasc.Left := txtPercDescBasc.Left + 58;
       lblDescBasc.Left := lblDescBasc.Left + 58;
       txtDescBasc.Left := txtDescBasc.Left + 58;

       lblPerDescEspecial.Left  := lblPerDescEspecial.Left + 58;
       txtPercDescEspecial.Left := txtPercDescEspecial.Left + 58;
       lblDescEspecial.Left :=  lblDescEspecial.Left + 58;
       txtDescEspecial.Left :=  txtDescEspecial.Left + 58;
    end;


  if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('SGQ_TIPO_COMISSAO').AsInteger <> 1) then
    begin
      lblComissao.Visible := false;
      lblComPer.Visible := false;
      txtComissao.Visible := false;
      txtObservacao.Width := 320;
    end;



  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean=true) then
    begin

       cbbTitPecaServico.Visible := true;
       pnlDescPecServ.Visible := true;
       lblBruto.Visible := false;
       txtVlrBruto.Visible := false;

       txtPerDesc.Visible := false;
       lblPerDesc.Visible := false;


       lblVlrDesc.Visible := false;
       txtTotalVlrDesc.Visible := false;

       lblCredUtil.Visible := false;
       txtCreditoUtil.Visible := false;

       lblCubagem.Visible := false;
       txtCubagem.Visible := false;

       lblDescBasc.Visible := false;
       txtDescBasc.Visible := false;

       lblPerDescBasc.visible  := false;
       txtPercDescBasc.visible := false;

       lblDescEspecial.Visible := false;
       txtDescEspecial.Visible := false;

       lblPerDescEspecial.visible := false;
       txtPercDescEspecial.visible := false;

       txtPcpObsItem.Visible := false;
       lblItemSobMed.Visible := false;

       lblIcmDesn.Visible := false;
       txtIcmsDesn.Visible := false;

       lblFrete.Visible := false;
       txtFrete.Visible := false;


       lblSaldo.Left := 3;
       txtSaldo.Left := 3;

       pnlDescPecServ.Top := 190;
       pnlDescPecServ.Left := 80;
       grdItens.Height :=  grdItens.Height - 5;

       gbCredito.Visible := true;
       gbCredito.Left := 450;
       gbCredito.Top := 81;

       if (NOT (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_GERA_FIN_SEPARADO').AsBoolean=true)) then
         begin
           cbbTitPecaServico.Visible := false;;

           lblCredUtil.Visible := true;
           txtCreditoUtil.Visible := true;

           gbCredito.Visible := false;
           tsServico.TabVisible := false;
           tsPeca.Caption := '';
         end;

    end
  else
    begin
      tsServico.TabVisible := false;
      tsPeca.Caption := '';
    end;



  if ((not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TIPO_IMPRESSAO').AsInteger=1)) and
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean=true) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_LOTE_NA_ENTRADA').AsBoolean=true) ) then
      btnAtualizaCont.PopupMenu := pmImpressaoPed
  else
      btnAtualizaCont.PopupMenu := nil;



  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('obrig_dados_cheque_ped_vnd').AsBoolean then
    begin
      gbCheque.Visible := true;
      gbChequeSer.Visible := true;
    end
  else
    begin
      gbCheque.Visible := false;
      gbChequeSer.Visible := false;
    end;



  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativar_util_fpg_ped_vnd').AsBoolean then
    begin
      dmGeral.BUS_CD_C_FPG.Filtered := true;
      dmGeral.BUS_CD_C_FPG.Filter := 'utilizado_ped_vnd=TRUE';
      dmGeral.BUS_CD_C_FPG2.Filtered := true;
      dmGeral.BUS_CD_C_FPG2.Filter := 'utilizado_ped_vnd=TRUE';
    end
  else
    begin
      dmGeral.BUS_CD_C_FPG.Filtered := false;
      dmGeral.BUS_CD_C_FPG2.Filtered := false;
    end;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('letras_maius_obs_ped').AsBoolean=true) then
     txtObservacao.CharCase := ecUpperCase;


    pnlMec.Visible := false;
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_UTILIZA_MECANICO').AsBoolean=true) and
      (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('informar_mec_por_item_ped').AsBoolean=true)) then
     begin
        pnlMec.Visible := true;
        pnlMec.Top := 120;
        pnlMec.Left := 46;
     end;



  dmGeral.FAT_CD_M_PED.Close;
  dmGeral.FAT_CD_M_PED.Data :=
  dmGeral.FAT_CD_M_PED.DataRequest(
            VarArrayOf([0, '']));

 { if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('filtrar_vendedor_log_ped').AsBoolean then
    begin
       dmGeral.FAT_CD_M_PED.Filtered := true;
       dmGeral.FAT_CD_M_PED.Filter := 'id_vendedor='+IntToStr(xFuncionario);
    end;  }


  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
      begin
        dmGeral.BUS_CD_C_FU4.Close;
        dmGeral.BUS_CD_C_FU4.Data :=
             dmGeral.BUS_CD_C_FU4.DataRequest(
                        VarArrayOf([0,IntToStr(xFuncionario)]));
        if dmGeral.BUS_CD_C_FU4.FieldByName('sgq_perm_alt_comissao_ped').AsBoolean then
          begin
            mpAlterarComRepr.visible := true;
          end;
        dmGeral.BUS_CD_C_FU4.close;
      end;

  clienteConsumidor := false;
  AbrirBuscas;

  if txtComissao.Visible = true then
     begin
       if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) and
          (dmgeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1) then
           begin
              txtComissao.ReadOnly := true;
              txtComissao.color    := $00DADADA;
           end;
     end;

  AcoesIniciais;
  Limparcampos;
  Atualizar_xBusca;
  txtPesquisa.SetFocus;


end;

procedure TFAT_FM_M_PED.GravarPedidoVenda;
//var
 // Obj:TSMClient;
begin



 { Obj:=TSMClient.Create(dmGeral.Conexao.DBXConnection);

  dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_PEDid_tipo_mov_estoque.text);

  if (dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean) then  // Usa produção
      begin
        if xCodOrc > 0 then
           begin
             TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_ORC]);
           end
        else
           begin
             TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED]);
           end;
      end
  else
      begin
        if (dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').Text = '') then
           begin
             // Se ele chega aqui, quer dizer que não houve nenhuma restrição e já fica aprovado automaticamente

             dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 1;

             if dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean = false then
                begin
                  PED_GRAVA_NFE(dmGeral.FAT_CD_M_PED,xCdsPaiAntigo,xCdsItensAntigo,xCdsTitulosAntigo);
                end;

             if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                begin
                  if xCodOrc > 0 then
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC]);
                     end
                  else
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.BUS_CD_M_NFE]);
                     end;
                end
             else
                begin
                  if xCodOrc > 0 then
                     begin
                        TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.BUS_CD_M_NFE,dmGeral.FAT_CD_M_ORC]);
                     end
                  else
                     begin
                        TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.BUS_CD_M_NFE]);
                     end;
                end;
           end
        else
           begin
             if xCodOrc > 0 then
                begin
                   TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_ORC]);
                end
             else
                begin
                  TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_PED]);
                end;
           end;
      end;
  obj.Free; }
end;

procedure TFAT_FM_M_PED.grdFpgIButtonClick(Sender: TObject);
begin
  inherited;
   try
     grdFpgIButton.Enabled := false;
     if dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsString);
     if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '7') then
        begin
         total_cred := xCred_Disp + xcred_util;
         dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency := 0;
         xCred_util := dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency;
         xCred_Disp := total_cred;
         txtCredDisp.Text := FormatCurr('0.00',total_cred);
        end;

     dmGeral.FAT_CD_M_PED_TIT.Delete;
     dmGeral.FAT_CD_M_PED_TIT.Edit;
  finally
    grdFpgIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_PED.grdFpgMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;


  if (dmGeral.FAT_CD_M_PED_TIT.FieldByName('INT_DOCIMPRESSO').AsInteger <> 7) and
     ((tipo_cond_pag = 1) or
     ((tipo_cond_pag = 0) and (dmGeral.FAT_CD_M_PED_TIT.FieldByName('INT_DOCIMPRESSO').AsInteger = 6)))   then
     begin
        if pnTitulos.Enabled = false then
           pnTitulos.Enabled := true;

        dmGeral.FAT_CD_M_PED_TIT.cancel;

        if dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
           begin
             // Este IF foi colocado em 19/03/2021 , por Maxsuel Victor
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_dta_pedido').AsBoolean then
                begin
                  if dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime <> xDataSis then
                     begin
                        ShowMessage('A data do pedido será atualizada para data de hoje.');
                        dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime := xDataSis;
                     end;
                end;

             dmGeral.FAT_CD_M_PED_TIT.Append;
             pnTitulos.Enabled := true;
             txtFormaPgto.SetFocus;
           end
        else
          begin
            dmGeral.FAT_CD_M_PED_TIT.Edit;

            // Este IF foi colocado em 19/03/2021 , por Maxsuel Victor
            if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_dta_pedido').AsBoolean then
               begin
                 if dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime <> xDataSis then
                   begin
                     if Dc_MessageDlgCheck('A alteração não será permitida. ' + #13 +
                                           'É preciso que atualize a data do pedido para a data de hoje e os vencimentos precisam ser deletado(s).' +#13+'Continua?' , mtConfirmation, [mbYes, mbNo],
                        0, mrNo, true, false,'', nil) <> 7 then
                        begin
                          dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime := xDataSis;
                          while not dmGeral.FAT_CD_M_PED_TIT.eof do
                            begin
                              dmGeral.FAT_CD_M_PED_TIT.delete;
                            end;
                        end
                     else
                        begin
                          dmGeral.FAT_CD_M_PED_TIT.cancel;
                          pnTitulos.Enabled := false;
                          Abort;
                        end;
                   end;
               end;

            ExibirFormasPgto;

            pnTitulos.Enabled := true;

            try
               dmGeral.BUS_CD_C_FPG2.Close;
               dmGeral.BUS_CD_C_FPG2.Data :=
                        dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').Text]));

               gbCheque.Enabled   := false;
               if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                 begin
                  gbCheque.Enabled   := true;
                 end;
            finally
               dmGeral.BUS_CD_C_FPG2.close;
            end;

            if (tipo_cond_pag = 0) and
               (dmGeral.FAT_CD_M_PED_TIT.FieldByName('INT_DOCIMPRESSO').AsInteger = 6) then
              begin
                txtFormaPgto.Enabled := false;
                txtDias.Enabled := false;
                txtVencimento.Enabled := false;
                txtVlrTitulo.Enabled := false;
              end;

            if txtDias.CanFocus then
               txtDias.SetFocus
            else if txtVlrTitulo.CanFocus then
               txtVlrTitulo.SetFocus
            else if txtBanco.CanFocus then
              txtBanco.SetFocus;




          end;
     end;
end;

procedure TFAT_FM_M_PED.grdFpgRowChanged(Sender: TObject);
begin
  inherited;

  ExibirFormasPgto;
end;

procedure TFAT_FM_M_PED.grdFpgSerIButtonClick(Sender: TObject);
begin
  inherited;
 try
     grdFpgSerIButton.Enabled := false;
     if dmGeral.FAT_CD_M_PED_TIT_SER.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('ID_FORMA_PAG').AsString);
     if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '7') then
        begin
         total_cred := xCred_Disp + xcred_util;
         dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency := 0;
         xCred_util := dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency;
         xCred_Disp := total_cred;
         txtCredDisp.Text := FormatCurr('0.00',total_cred);
        end;

     dmGeral.FAT_CD_M_PED_TIT_SER.Delete;
     dmGeral.FAT_CD_M_PED_TIT_SER.Edit;
  finally
    grdFpgSerIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_PED.grdFpgSerMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
 if (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('INT_DOCIMPRESSO').AsInteger <> 7) and
     ((tipo_cond_pag = 1) or
     ((tipo_cond_pag = 0) and (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('INT_DOCIMPRESSO').AsInteger = 6)))   then
     begin
        if pnlTitSer.Enabled = false then
           pnlTitSer.Enabled := true;

        dmGeral.FAT_CD_M_PED_TIT_SER.cancel;

        if dmGeral.FAT_CD_M_PED_TIT_SER.IsEmpty then
           begin
             //txtFormaPgto.Enabled := true;
             dmGeral.FAT_CD_M_PED_TIT_SER.Append;
             pnlTitSer.Enabled := true;
             txtFormaPgtoSer.SetFocus;
           end
        else
          begin
            dmGeral.FAT_CD_M_PED_TIT_SER.Edit;

            ExibirFormasPgto;

            pnlTitSer.Enabled := true;

            try
               dmGeral.BUS_CD_C_FPG2.Close;
               dmGeral.BUS_CD_C_FPG2.Data :=
                        dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('ID_FORMA_PAG').Text]));

               gbChequeSer.Enabled   := false;
               if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                 begin
                  gbChequeSer.Enabled   := true;
                 end;
            finally
               dmGeral.BUS_CD_C_FPG2.close;
            end;

            if (tipo_cond_pag = 0) and
               (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('INT_DOCIMPRESSO').AsInteger = 6) then
              begin
                txtFormaPgtoSer.Enabled := false;
                txtDiasSer.Enabled := false;
                txtVencimentoSer.Enabled := false;
                txtVlrTituloSer.Enabled := false;
              end;

            if txtDiasSer.CanFocus then
               txtDiasSer.SetFocus
            else if txtVlrTituloSer.CanFocus then
               txtVlrTituloSer.SetFocus
            else if txtBancoSer.CanFocus then
              txtBancoSer.SetFocus;



            {if txtDias.CanFocus then
               txtDias.SetFocus
            else
               txtVlrTitulo.SetFocus; }
          end;
     end;
end;

procedure TFAT_FM_M_PED.grdFpgSerRowChanged(Sender: TObject);
begin
  inherited;
   ExibirFormasPgto;
end;

procedure TFAT_FM_M_PED.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
        begin
          if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
             begin
                dmGeral.FAT_CD_M_PED_ITE.Cancel;
                ShowMessage('É preciso que zere o valor do desconto especial para poder fazer essa operação!');
                abort;
             end;
        end;

     dmGeral.FAT_CD_M_PED_ITE.Delete;

     if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency = 0 then
       begin
         if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) then
             begin
               HabilitarVlrDesc := true;
               txtTotalVlrDesc.ReadOnly := false;
               txtTotalVlrDesc.Color := clWhite;
             end;
         btn_Add_itens.Enabled := true;
         grdItens.OnMouseUp := grdItensMouseUp;
       end;

     if dmGeral.FAT_CD_M_PED_ITE.RecordCount = 0 then
       begin
         btnImportar.Enabled := true;

         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;
         dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
         txtPercDescEspecial.Text := '0';
         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
         dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency := 0;

       end;

     if btn_Add_itens.CanFocus then
       begin
         btn_Add_Itens.setfocus;
       end;

     if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
      if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
          dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);
     //dmGeral.FAT_CD_M_PED_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_PED.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if not (dmGeral.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString = '') then
    begin
      if pnItens.Enabled = false then
         pnItens.Enabled := true;

      dmGeral.FAT_CD_M_PED_ITE.cancel;

      if dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
         begin
           txtBuscaItem.Enabled := true;
           dmGeral.FAT_CD_M_PED_ITE.Append;
           pnItens.Enabled := true;
           txtBuscaItem.SetFocus;
         end
      else
        begin
          txtBuscaItem.Enabled := false;
          dmGeral.FAT_CD_M_PED_ITE.Edit;
          vlrLiqIteAnt :=  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

          ChamaMecanicoTerceiro;
          if not cbbMecanico.CanFocus then
            begin
              pnItens.Enabled := true;
              txtQtde.SetFocus;
            end;
        end;
    end
  else
    begin
      Showmessage('Tipo de estoque deve ser informado.');
      cbbTipoEstoque.SetFocus;
    end;
end;

procedure TFAT_FM_M_PED.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  if (not ((dmGeral.BUS_CD_C_FU3.FieldByName('seg_habilitar_seg').AsBoolean=true) and
          (dmGeral.BUS_CD_C_FU3.FieldByName('seg_alt_cli_ped').AsBoolean=true))) then
    begin
      txtCliente.Enabled     := Estado;
      txtCliente.Color       := Cor;
    end;

  cbbPropriedade.Enabled := Estado;
  cbbPropriedade.Color   := Cor;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = false) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = false) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = false) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = false) then
    begin
      cbbCondicaoPagamento.Enabled := Estado;
      cbbCondicaoPagamento.Color   := Cor;
    end;

  if (not ((dmGeral.BUS_CD_C_FU3.FieldByName('seg_habilitar_seg').AsBoolean=true) and
          (dmGeral.BUS_CD_C_FU3.FieldByName('seg_alt_vend_ped').AsBoolean=true))) then
    begin
     cbbVendedor.Enabled    := Estado;
     cbbVendedor.Color      := Cor;
    end;

  cbbTipoEstoque.Enabled := Estado;
  cbbTipoEstoque.Color   := Cor;


  cbbAtendente.Enabled   := Estado;
  cbbAtendente.Color     := Cor;


  txtSaldo.Text          := '';
  btnImportar.Enabled    := Estado;


  if (txtDiasPrazo.Visible = true) then
    begin
      txtDiasPrazo.Enabled := Estado;
      txtDiasPrazo.Color := Cor;
    end;
end;

procedure TFAT_FM_M_PED.Limparcampos;
begin
  txtFpgEntrada.Text := '';
  txtGerFpg.Text     := '';
  // xCodOrc            := 0;
  txtSaldo.text      := '';
end;

procedure TFAT_FM_M_PED.mmPcpObsIteEnter(Sender: TObject);
begin
  inherited;
  FAT_FM_M_PED.KeyPreview := false;
end;

procedure TFAT_FM_M_PED.mmPcpObsIteExit(Sender: TObject);
begin
   inherited;
   FAT_FM_M_PED.KeyPreview := true;

   if (cbbTamanho.Focused) or (cbbCor.Focused) then
     Exit;

   if  dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean then
       begin
         BuscarCulturas(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);
         pnlCultura.Visible := true;
         pnlCultura.Top := 50;
         pnlCultura.Left := 399;
         cbbCultura.SetFocus;
       end
   else
     begin
       if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false then
          begin
            ChamaMecanicoTerceiro;
            if not cbbMecanico.CanFocus then
              begin
               pnItens.Enabled := true;
               txtQtde.SetFocus;
              end;
          end;
     end;

   if dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean = true then
      begin

         { 0 - Outros
           1 - Manual do Usuário
           2 - Espuma
           3 - Bobina
           4 - Colchão de espuma
           5 - Colchão de molas
           6 - Cama Box
           7 - Base Box
           8 - Travesseiro
           9 - Colchonete
           10 - Encosto
           11 - Maquete
           12 - Caixa de madeira
           13 - Grampo
           14 - Cama Box de Molas'; }

         //if dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsInteger = 404 then
          case dmGeral.BUS_CD_C_ITE.FieldByName('tipo_produto').AsInteger of
            0:
              begin
                 if (pos('COL',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0)      or
                    (pos('MAQ',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0)      or
                    (pos('CAMA',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0)     or
                    (pos('BOBINA',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0)     or
                    ((pos('BOX',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)  and
                     (pos('CONF',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)) or
                     (pos('BASEBOX',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0) then
                    begin
                      ShowMessage('Este item personalizado não permite nenhum COLCHÃO, CAMA BOX, COLCHÃO DE MOLAS, BASE BOX , MAQUETES ou BOBINAS.' + #13 + #13 +
                                  'Por favor utilize o próprio código de item personalizado.');
                      pnlCorTamanho.Visible := False;
                      pnItens.Enabled := true;
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text := '';
                      txtBuscaItem.SetFocus;
                      exit;
                    end;
              end;
            1,2,8,10,11,12,13:
              begin
                 if (pos('COL',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0)      or
                    (pos('MAQ',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0)      or
                    (pos('CAMA',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0)     or
                    ((pos('BOX',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)  and
                     (pos('CONF',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)) then
                    begin
                      ShowMessage('Este item personalizado não permite nenhum COLCHÃO ou CAMA BOX.' + #13 + #13 +
                                  'Utilize o próprio código de item personalizado do colchão ou cama box que deseja por favor.');
                      pnlCorTamanho.Visible := False;
                      pnItens.Enabled := true;
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text := '';
                      txtBuscaItem.SetFocus;
                      exit;
                    end;
              end;
            3:
              begin
                   if (pos('BOBINA',UpperCase(StringReplace
                      (dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) = 0) then
                    begin
                      ShowMessage('Para este produto personalizado informar somente descrição que contenha o nome: Bobina.' + #13 + #13 +
                                  'Exemplo: ' + #13 +
                                  ':--> Bobina D23... .');
                      pnlCorTamanho.Visible := False;
                      pnItens.Enabled := true;
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text := '';
                      txtBuscaItem.SetFocus;
                      exit;
                    end;
              end;

              // 4 - Colchão de espuma,  5 - Colchão de molas,  6 - Cama Box,  14 - Cama Box de Molas
            4,5,6,14:
              begin
                 if (pos('GRAM',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('PEC',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('PEÇ',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('peç',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    //(pos('MAQ',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('PARA',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('PREGO',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('COLCHONETE',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('BASEBOX',UpperCase(StringReplace
                    (dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)   or
                    (pos('BOB',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) then
                    begin
                      ShowMessage('Para este produto personalizado informar somente Colchão,Cama Box ou Maquete. ' + #13 + #13 +
                                  'Use uma descrição correspondente a família.' + #13 + #13 +
                                  'Exemplo: Se vc usar um produto medida personalizadas do Madri então informe da seguinte forma, como exemplo abaixo: ' + #13 +
                                  ':--> Colchão Madri 040x200x200.');
                      pnlCorTamanho.Visible := False;
                      pnItens.Enabled := true;
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text := '';
                      txtBuscaItem.SetFocus;
                      exit;
                    end;
               end;
              7:
                 begin
                     if (pos('BASEBOX',UpperCase(StringReplace
                        (dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) = 0) then
                      begin
                        ShowMessage('Para este produto personalizado informar somente descrição que contenha o nome: Base Box.' + #13 + #13 +
                                    'Exemplo: ' + #13 +
                                    ':--> Base Box 085 .');
                        pnlCorTamanho.Visible := False;
                        pnItens.Enabled := true;
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text := '';
                        txtBuscaItem.SetFocus;
                        exit;
                      end;
                 end;
               9:
                 begin
                   if (pos('COLCHONETE',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) = 0) then
                      begin
                        ShowMessage('Para este produto personalizado deve ter o nome: Colchonete.');
                        pnlCorTamanho.Visible := False;
                        pnItens.Enabled := true;
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text := '';
                        txtBuscaItem.SetFocus;
                        exit;
                      end;
                 end;
          end;
      end;
   txtQtde.SetFocus;
   pnlCorTamanho.Visible := False;
end;

procedure TFAT_FM_M_PED.mmPcpObsIteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
       PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
       PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
       xFormRespPSQ_ITE := FAT_FM_M_PED.Name;
       xVendedor_externo := dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString;
       if trim(xVendedor_externo) = '' then
          xVendedor_externo := '9';
       PSQ_FM_X_ITE.ShowModal;
       if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
          begin
             mmPcpObsIte.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
             mmPcpObsIte.Selstart:= Length(mmPcpObsIte.text);
          end;
       PSQ_FM_X_ITE.Free;
     end;

  if key = vk_f4 then
     begin
       FAT_FM_M_PED_BIP := TFAT_FM_M_PED_BIP.Create(Self);
       FAT_FM_M_PED_BIP.ShowModal;
       if xPed_MedidasPerson <> '' then
          begin
            mmPcpObsIte.Text := xPed_MedidasPerson;
            mmPcpObsIte.Selstart:= Length(mmPcpObsIte.text);
          end;
       FAT_FM_M_PED_BIP.Free;
     end;
end;

procedure TFAT_FM_M_PED.mpAlterarComReprClick(Sender: TObject);
var
   Valor,Codigo: String;
begin
  inherited;

  if dmGeral.FAT_CD_M_PED.FieldByName('situacao').AsInteger <> 3 then
     begin
       ShowMessage('Nenhum registro foi encontrado.');
       exit;
     end;


  if dmGeral.FAT_CD_M_PED.FieldByName('situacao').AsInteger <> 3 then
     begin
       ShowMessage('Este recurso é somente para pedido de venda que foi faturado.');
       exit;
     end;

  if not(InputQuery('Alterar a comissão do pedido de venda', '% Comissão', Valor)) then
     exit;

  try

    if StrToCurr(valor) > 0 then
      //
  except
     on e: Exception do
        begin
           ShowMessage('Valor inválido!');
           exit;
        end;
  end;


  if StrToCurr(valor) = 0 then
    begin
      ShowMessage('O campo "Comissão %" deve ser preenchido.');
      exit;
    end;

  if StrToCurr(valor) < 0 then
    begin
      ShowMessage('O campo "Comissão %" deve ser maior ou igual a zero.');
      exit;
    end;


  if  StrToCurr(valor) >
     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_per_comissao_max').AsCurrency then
    begin
      ShowMessage('Limite máximo de percentual de comissão é de '+CurrToStr(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_per_comissao_max').AsCurrency)+' %');

      exit;
    end;

   codigo := dmGeral.FAT_CD_M_PED.FieldByName('id_pedido').Text;

   dmGeral.BUS_CD_M_PED.Close;
   dmGeral.BUS_CD_M_PED.Data :=
        dmGeral.BUS_CD_M_PED.DataRequest(
                    VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo]));
   if not ( dmGeral.BUS_CD_M_PED.IsEmpty ) then
      begin
        dmGeral.BUS_CD_M_PED.edit;
        dmGeral.BUS_CD_M_PED.FieldByName('sgq_per_comissao').AsCurrency :=  StrToCurr(valor);
        dmGeral.BUS_CD_M_PED.Post;
        dmGeral.BUS_CD_M_PED.ApplyUpdates(0);

        dmGeral.FAT_CD_M_PED.Close;
        dmGeral.FAT_CD_M_PED.Data :=
           dmGeral.FAT_CD_M_PED.DataRequest(
                    VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,codigo]));

      end;


end;

procedure TFAT_FM_M_PED.PassarCdsAnterior;
begin


 {if xCdsPaiAntigo <> nil then
     begin
       xCdsPaiAntigo.Destroy;
       xCdsPaiAntigo := nil;
     end;

  xCdsPaiAntigo       := TClientDataSet.Create(self);
  xCdsPaiAntigo.Data  := dmGeral.FAT_CD_M_PED.Data;
  xCdsPaiAntigo.GotoCurrent(dmGeral.FAT_CD_M_PED);  }

  if xCdsItensAntigo <> nil then
     begin
       xCdsItensAntigo.Destroy;
       xCdsItensAntigo := nil;
     end;
  xCdsItensAntigo       := TClientDataSet.Create(self);
  xCdsItensAntigo.Data  := dmGeral.FAT_CD_M_PED_ITE.Data;
  xCdsItensAntigo.GotoCurrent(dmGeral.FAT_CD_M_PED_ITE);


  if xCdsTitulosAntigo <> nil then
     begin
       xCdsTitulosAntigo.Destroy;
       xCdsTitulosAntigo := nil;
     end;

  xCdsTitulosAntigo       := TClientDataSet.Create(self);
  xCdsTitulosAntigo.Data  := dmGeral.FAT_CD_M_PED_TIT.Data;
  xCdsTitulosAntigo.GotoCurrent(dmGeral.FAT_CD_M_PED_TIT);
end;

procedure TFAT_FM_M_PED.txtVencimentoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       dmgeral.FAT_CD_M_PED_TIT.Cancel;
       exit;
     end;

  if txtFormaPgto.Focused or txtDias.Focused  then
     begin
       abort;
     end;

  if btn_Add_Fpg.Focused or grdFpg.Focused then
     begin
       dmgeral.FAT_CD_M_PED_TIT.Cancel;
       abort;
     end;

  if txtVencimento.text= '  /  /    ' then
    begin
       ShowMessage('Vencimento deve ser preenchido.');
       txtVencimento.SetFocus;
       abort;
    end;

  if not (dmGeral.TesValVencto(dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime,
                               dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;

  if (abs(dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime -
     dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime)> 1825)  then
     begin
        txtVencimento.SetFocus;
        ShowMessage('Data de vencimento não pode ser menor ou maior em mais de 5 anos da data do pedido.');
        abort;
     end;

   if dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.FAT_CD_M_PED_TIT.FieldByName('DIAS').Value :=
          dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsVariant;
     end;
end;

procedure TFAT_FM_M_PED.txtVencimentoSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       dmgeral.FAT_CD_M_PED_TIT_SER.Cancel;
       exit;
     end;

  if txtFormaPgtoSer.Focused or txtDiasSer.Focused  then
     begin
       abort;
     end;

  if btn_Add_Fpg_ser.Focused or grdFpgSer.Focused then
     begin
       dmgeral.FAT_CD_M_PED_TIT_SER.Cancel;
       abort;
     end;

   if txtVencimentoSer.text= '  /  /    ' then
    begin
       ShowMessage('Vencimento deve ser preenchido.');
       txtVencimentoSer.SetFocus;
       abort;
    end;

  if not (dmGeral.TesValVencto(dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime,
                               dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimentoSer.SetFocus;
       abort;
     end;

  if (abs(dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DTA_VENCIMENTO').AsDateTime -
     dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime)> 1825)  then
     begin
        txtVencimentoSer.SetFocus;
        ShowMessage('Data de vencimento não pode ser menor ou maior em mais de 5 anos da data do pedido.');
        abort;
     end;

   if dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DIAS').Value :=
          dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsVariant;
     end;
end;

procedure TFAT_FM_M_PED.txtVlrDescontoEnter(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;

  xVlrDescIteAnterior := dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
  xPercDescPermRegIte := 0;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,1,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger);

       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         xPercDescPermRegIte :=
             SMPrincipal.enSgqPcpBuscarDescRegIte(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString,
                                                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,2,0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger);
     end;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE);
     end;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=  xPercDescPerm;
end;

procedure TFAT_FM_M_PED.txtVlrDescontoExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
  vlrDesc:Currency;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if txtQtde.Focused    or txtVlrUnitario.Focused  or
     txtPerDesconto.Focused or grdItens.Focused then
     begin
       abort;
     end;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
      begin
         if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
           begin
             // if inserido por Maxsuel Victor em 19/06/2017
             if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency <>
                 xVlrDescIteAnterior) then
                begin
                  ShowMessage('É preciso que zere o valor do desconto especial para poder dar um novo desconto nos itens!');
                  dmGeral.FAT_CD_M_PED_ITE.cancel;
                  txtBuscaItem.Enabled := true;
                  dmGeral.FAT_CD_M_PED_ITE.edit;
                  txtQtde.SetFocus;
                  abort;
                end;
           end;

        if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency <>
            xVlrDescIteAnterior) then
            begin
              vlrDesc :=  (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                                                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100;

              // if , adicionado em 14/09/2023, por Maxsuel Victor.

              if xint_unif_desc_reg then
                 begin
                   if (vlrDesc > (xPercDescPerm + xPercDescPermRegIte)) then
                       begin
                         ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                                     'Desconto informado: ' + FormatFloat('##,##0.00',vlrDesc) + #13 +
                                     'Desconto limite (Desc. por região[ ' + FormatFloat('##,##0.00',xPercDescPerm) +
                                                         ' ]) + (Específico do item[ ' + FormatFloat('##,##0.00',xPercDescPermRegIte) +'] )...: ' +
                                                             FormatFloat('##,##0.00',xPercDescPerm+xPercDescPermRegIte));
                         if FatValidBloqueiaPed('H') then
                            begin
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                              txtVlrDesconto.SetFocus;
                              abort;
                            end;
                       end;
                 end
              else
                 begin
                   if  (xPercDescPermRegIte > 0) and (vlrDesc > (xPercDescPermRegIte)) then
                       begin
                         ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                                     'Desconto informado: ' + FormatFloat('##,##0.00',vlrDesc) + #13 +
                                     'Desconto limite: (Específico do item [ ' + FormatFloat('##,##0.00',xPercDescPermRegIte)+']).');
                         if FatValidBloqueiaPed('H') then
                            begin
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                              txtVlrDesconto.SetFocus;
                              abort;
                            end;
                       end
                   else
                      begin
                         if (xPercDescPermRegIte = 0) and (vlrDesc > (xPercDescPerm)) then
                             begin
                               ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                                           'Desconto informado: ' + FormatFloat('##,##0.00',vlrDesc) + #13 +
                                           'Desconto limite: (Desc. por região[ ' + FormatFloat('##,##0.00',xPercDescPerm) +
                                                               ' ]).');
                               if FatValidBloqueiaPed('H') then
                                  begin
                                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                    txtVlrDesconto.SetFocus;
                                    abort;
                                  end;
                             end;
                      end;
                 end;
            end;
      end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False then
      begin
        if not (dmGeral.TesValVlrDesconto(dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency,
                                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency,xPercDescPerm)) then
           begin

             if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0) and
                (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency <=
                 dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency) then
                 begin
                   if FatValidBloqueiaPed('H') then
                      begin
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                        txtVlrDesconto.SetFocus;
                        abort;
                      end
                 end
             else
                begin
                  txtVlrDesconto.SetFocus;
                  abort;
                end;
           end;
      end;

  if (clienteConsumidor = true) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsString <> '') then
    begin
      if  dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert] then
        begin
          if (dmgeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency+
              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency) >
              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency   then
             begin
               ShowMessage('Ultrapassou o máximo valor total líquido permitido que é '+
                     FormatCurr('###,###,##0.00',
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency));
               if txtBuscaItem.CanFocus then
                 begin
                  txtBuscaItem.SetFocus;
                 end
               else
                 begin
                   txtQtde.SetFocus;
                 end;
               abort;
             end;
        end
      else
        begin
          if ((dmgeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency+
              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency)-vlrLiqIteAnt) >
              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency   then
             begin
               ShowMessage('Ultrapassou o máximo valor total líquido permitido que é '+
                     FormatCurr('###,###,##0.00',
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency));
               if txtBuscaItem.CanFocus then
                 begin
                  txtBuscaItem.SetFocus;
                 end
               else
                 begin
                   txtQtde.SetFocus;
                 end;
               abort;
             end;
        end;
    end;

  if (not (dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean) = true) and
    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_ICMS_DESN_SAIDA').AsBoolean = true) and
     (dmgeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2]) then
     begin
      if ((trim(dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString)<>'') and
          (trim(dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString)<>'ISENTO')) then
        begin
         if  pos(dmGeral.BUS_CD_C_TRI_REG.FieldByName('cnt_id_st_icm').AsString,'20-30-40-41-50-70-90')<>0 then
           begin
             pnlDesn.Visible := true;
             cbbMotDesn.SetFocus;
             exit;
           end;
        end
      else
        begin
          if  pos(dmGeral.BUS_CD_C_TRI_REG.FieldByName('nct_id_st_icm').AsString,'20-30-40-41-50-70-90')<>0 then
           begin
             pnlDesn.Visible := true;
             cbbMotDesn.SetFocus;
             exit;
           end;
        end;
     end;


  seq_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsString;

  if dmGeral.FAT_CD_M_PED_ITEid_sequencia.text = '' then
     begin
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger :=
               SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
        finally
          FreeAndNil(SMPrincipal);
        end;
     end;
  if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency >0) then
     begin
      HabilitarVlrDesc := false;
      txtTotalVlrDesc.ReadOnly := true;
      txtTotalVlrDesc.Color := $00DADADA;
     end;

   if dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString='09' then
    begin
      cbbTitPecaServico.ItemIndex := 1;
      pcTitulos.TabIndex := 1;
    end
  else
    begin
      cbbTitPecaServico.ItemIndex := 0;
      pcTitulos.TabIndex := 0;
    end;

  dmGeral.FAT_CD_M_PED_ITE.Post;
  dmGeral.FAT_CD_M_PED_ITE.IndexFieldNames := 'ID_SEQUENCIA';
  btn_Add_Itens.Enabled := True;
  btnImportar.Enabled := false;

  pnItens.Enabled := false;
  //btn_Add_Itens.SetFocus;
  dmGeral.FAT_CD_M_PED_ITE.locate('ID_SEQUENCIA',seq_item,[]);

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
      if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
          dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);

  ActiveControl := nil;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

procedure TFAT_FM_M_PED.txtVlrEntradaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if ((trim(txtFpgEntrada.text) = '') or
     (txtFpgEntrada.Text = '0')) and
     ((trim(txtVlrEntrada.text) <> '') and
      (txtVlrEntrada.Value <> 0)) then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser prenchido.');
       abort;
     end;


  if (trim(txtVlrEntrada.text) = '') or
     (txtVlrEntrada.value = 0) then
     begin
       txtFpgEntrada.Text := '';
       exit;
     end;

    dmGeral.BusFormaPgtos2(0,trim(txtFpgEntrada.text));
   if not (dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsString='') then
     begin
       IF  txtVlrEntrada.Value <
           dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsCurrency then
         begin
          ShowMessage('O valor mínimo permitido do titulo é '+ FormatCurr('###,###,##0.00' ,dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsCurrency) );
          txtVlrEntrada.text:= '';
          txtVlrEntrada.SetFocus;
          exit;
         end;
     end;


   if (dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean=true) then
      begin
        if  dmGeral.FAT_CD_M_PED.FieldByName('ped_gera_fin_separado').AsBoolean then
           begin
             if (cbbTitPecaServico.ItemIndex = 0) then
               begin
                 if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency = 0) then
                   begin
                     ShowMessage('O valor líquido dos produtos é zero.');
                     txtFpgEntrada.text := '';
                     txtVlrEntrada.Text := '0';
                     exit;
                   end;
               end;
             if (cbbTitPecaServico.ItemIndex = 1) then
               begin
                 if ((dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                     dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency) = 0) then
                   begin
                     ShowMessage('Valor líquido dos serviços é zero.');
                     txtFpgEntrada.text := '';
                     txtVlrEntrada.Text := '0';
                     exit;
                   end;
               end;

           end
        else
           begin
             if ((dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                  dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                  dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency)  = 0) then
                 begin
                   ShowMessage('O valor da soma do (valor líquido dos produtos + serviços) é zero.');
                   txtFpgEntrada.text := '';
                   txtVlrEntrada.Text := '0';
                   exit;
                 end;
           end;
      end;

  



  if dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       ShowMessage('Pedido de venda sem valor.');
       exit;
     end;

  if txtVlrEntrada.value < 0 then
     begin
       ShowMessage('O campo "Valor" não pode ser menor que 0.');
       txtVlrEntrada.SetFocus;
       abort;
     end;


  // Maxsuel Victor, em 18/03/2021
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_dta_pedido').AsBoolean then
     begin
       ShowMessage('A data do pedido será atualizada para data de hoje.');
       dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime := xDataSis;
     end;


  if (dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean=true) then
     begin
       if (dmGeral.FAT_CD_M_PED.FieldByName('ped_gera_fin_separado').AsBoolean=true) then
         begin
           if (cbbTitPecaServico.ItemIndex = 0) then
            begin

              dmGeral.GerarFPG_Entrada(1,txtFpgEntrada.Text,'',txtVlrEntrada.Value,dmGeral.FAT_CD_M_PED_TIT);
              pcTitulos.TabIndex := 0;
            end;

           if (cbbTitPecaServico.ItemIndex = 1) then
            begin
                dmGeral.GerarFPG_Entrada(1,txtFpgEntrada.Text,'',txtVlrEntrada.Value,dmGeral.FAT_CD_M_PED_TIT_SER);
               pcTitulos.TabIndex := 1;
            end;
         end
       else
         begin
            dmGeral.GerarFPG_Entrada(1,txtFpgEntrada.Text,'',txtVlrEntrada.Value,dmGeral.FAT_CD_M_PED_TIT);
           pcTitulos.TabIndex := 0;
         end;
     end
   else
     begin
         dmGeral.GerarFPG_Entrada(1,txtFpgEntrada.Text,'',txtVlrEntrada.Value,dmGeral.FAT_CD_M_PED_TIT);
        pcTitulos.TabIndex := 0;
     end;


 


  ExibirFormasPgto;

  txtFpgEntrada.text := '';
  txtVlrEntrada.Text := '0';
end;

procedure TFAT_FM_M_PED.txtVlrTituloExit(Sender: TObject);
var
  id_titulo: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (txtFormaPgto.Focused or
      txtDias.Focused or txtVencimento.Focused {or grdFpg.Focused})// or
      {( not ( (btn_Add_Fpg.focused) or (txtVlrTitulo.Focused)) )}  then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtVlrTitulo.SetFocus;
       abort;
     end;


   dmGeral.BusFormaPgtos2(0,dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').Text);
   if not (dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsString='') then
     begin
       IF  dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency <
           dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsCurrency then
         begin
          ShowMessage('O valor mínimo permitido do titulo é '+ FormatCurr('###,###,##0.00' ,dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsCurrency) );
          dmGeral.BUS_CD_C_FPG2.Close;
          txtVlrTitulo.SetFocus;
          abort;
         end;
     end;



  if (not (gbCheque.CanFocus)) then
     begin
        id_titulo := dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsString;
        dmGeral.FAT_CD_M_PED_TIT.Post;
        pnTitulos.Enabled := false;

        btn_Add_Fpg.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.txtVlrTituloSerExit(Sender: TObject);
var
  id_titulo: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (txtFormaPgtoSer.Focused or
      txtDiasSer.Focused or txtVencimentoSer.Focused {or grdFpg.Focused})// or
      {( not ( (btn_Add_Fpg.focused) or (txtVlrTitulo.Focused)) )}  then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtVlrTituloSer.SetFocus;
       abort;
     end;


   dmGeral.BusFormaPgtos2(0,dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('id_forma_pag').Text);
   if not (dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsString='') then
     begin
       IF  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('VLR_TITULO').AsCurrency <
           dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsCurrency then
         begin
          ShowMessage('O valor mínimo permitido do titulo é '+ FormatCurr('###,###,##0.00' ,dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsCurrency) );
          dmGeral.BUS_CD_C_FPG2.Close;
          txtVlrTituloSer.SetFocus;
          abort;
         end;
     end;



  if (not (gbChequeSer.CanFocus)) then
     begin
        id_titulo := dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('ID_TITULO').AsString;
        dmGeral.FAT_CD_M_PED_TIT_SER.Post;
        pnlTitSer.Enabled := false;

        btn_Add_Fpg_ser.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.pnItensExit(Sender: TObject);
var
  saldo_fisico: String;
begin
  inherited;

  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
     (cbbCor.Focused) or (cbbTamanho.Focused) or (cbbMecanico.Focused) or
     (not grdItensIButton.Enabled) then
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

        dmGeral.FAT_CD_M_PED_ITE.Cancel;
        dmGeral.FAT_CD_M_PED_ITE.edit;

        if (not dmGeral.FAT_CD_M_PED_ITE.IsEmpty) and (trim(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').text) <> '')  then
           begin
             if dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text,
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text,
                dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,
                saldo_fisico) then
                begin
                   txtSaldo.Text := saldo_fisico;
                end;
           end;
        finally
           pnItens.Enabled := false;
        end;
      end;

end;

procedure TFAT_FM_M_PED.pnlTitSerExit(Sender: TObject);
begin
  inherited;
   if (btn_Add_Fpg_ser.Focused) or (grdFpgSer.Focused) or
     (not grdFpgSerIButton.Enabled) then
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

        dmGeral.FAT_CD_M_PED_TIT_SER.Cancel;
        dmGeral.FAT_CD_M_PED_TIT_SER.edit;

        finally
           pnTitulos.Enabled := false;
        end;
      end;
end;

procedure TFAT_FM_M_PED.pnTitulosExit(Sender: TObject);
begin
  inherited;



  if (btn_Add_Fpg.Focused) or (grdFpg.Focused) or
     (not grdFpgIButton.Enabled) then
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

        dmGeral.FAT_CD_M_PED_TIT.Cancel;
        dmGeral.FAT_CD_M_PED_TIT.edit;

        finally
           pnTitulos.Enabled := false;
        end;
      end;

end;

procedure TFAT_FM_M_PED.ppDetailBand2BeforePrint(Sender: TObject);
begin
  inherited;
  //showmessage(dmGeral.FAT_CD_M_PED_ITEid_pedido.Text);
end;

procedure TFAT_FM_M_PED.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;

      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

           dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.BUS_CD_C_CLI.Close;
   PSQ_FM_X_CLI.Free;
end;

procedure TFAT_FM_M_PED.txtClienteEnter(Sender: TObject);
begin
  inherited;
  if trim(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString) <> '' then
     xCodCliAnt := dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString;
end;

procedure TFAT_FM_M_PED.txtClienteExit(Sender: TObject);

begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  clienteConsumidor := false;

  dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text := '';

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text = '' then
     begin
       ShowMessage('O campo "Cliente" deve ser preenchido.');
       abort;
     end;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));


  if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
     begin
       txtCliente.SetFocus;
       exit;
     end;

  if (trim(dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').text)  = '') and
     (trim(dmGeral.BUS_CD_C_CLI.FieldByName('TEL_MOVEL').text) = '') then
     begin
       ShowMessage('O campo "Telefone fixo" ou "Celular" deve ser preenchido no cadastro deste cliente.');
       txtCliente.SetFocus;
       exit;
     end;

  // If inserido no dia 10/06/2020 por Maxsuel Victor para que o sistema possa funcionar para os representantes externos
  if (dmgeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsInteger = 1) then
      begin
         if dmGeral.BUS_CD_C_CLI.FieldByName('ID_VENDEDOR').AsString <> inttostr(xFuncionario) then
            begin
               ShowMessage('Este cliente não faz parte da sua carteira de clientes!');
               txtCliente.SetFocus;
               exit;
            end;
      end;

   if dmGeral.FAT_CD_M_PED.State in [dsEdit] then
     begin
       if xCodCliAnt <> dmgeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString then
         begin
           if dmGeral.FAT_CD_M_PED.FieldByName('id_orcamento').AsInteger >0 then
             begin
               ShowMessage('Alteração não permitida, pois há orçamento importado.');
               dmgeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString := xCodCliAnt;
               txtCliente.SetFocus;
               exit;
             end;
         end;
     end;


  dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMECLI').Text :=
       dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

  dmGeral.FAT_CD_M_PEDint_cpfcnpj.AsString :=
        dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;

  dmGeral.FAT_CD_M_PEDint_nomecid.AsString :=
       dmGeral.BUS_CD_C_CLI.FieldByName('INT_NOMECID').AsString;

  dmGeral.FAT_CD_M_PEDint_nomeest.AsString :=
       dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;

  xint_unif_desc_reg := dmGeral.BUS_CD_C_CLI.FieldByName('int_unif_desc_reg').AsBoolean;

  // If inserido por Maxsuel Victor em 06/12/2016
  if xChamadoPor_TeleMarketing then
     begin
        if xMark_IdCliente <> dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger then
           begin
             ShowMessage('O campo "Cliente" não pode ser alterado devido o pedido de venda ' +
                         'ter sido ser chamado pela tela de Telemarketing!');
             dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger := xMark_IdCliente;
             txtCliente.SetFocus;
             abort;
           end;
     end;

  cbbVendedor.Enabled := true;
  if dmGeral.BUS_CD_C_CLI.FieldByName('ID_VENDEDOR').AsString <> '' then
    begin
      dmGeral.BusFuncionario(0,dmGeral.BUS_CD_C_CLI.FieldByName('ID_VENDEDOR').AsString);
      if not dmGeral.BUS_CD_C_FUN.IsEmpty then
        begin
          if dmGeral.BUS_CD_C_FUN.FieldByName('ATIVO').AsBoolean = false then
             begin
               ShowMessage('O vendedor do cliente está inativo.');
             end
          else
             begin
                dmGeral.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger :=
                                      dmGeral.BUS_CD_C_CLI.FieldByName('ID_VENDEDOR').AsInteger;

                dmgeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency  :=
                        dmGeral.BUS_CD_C_FUN.FieldByName('SGQ_PER_COMISSAO').AsCurrency;

                FAT_RN_M_PED.BusFuncionarioAtivo;
                dmGeral.BusFuncionario4(0,IntToStr(xFuncionario));
                cbbVendedor.Enabled := false;
                IF dmGeral.BUS_CD_C_FU4.FieldByname('SEG_ALT_VEND_PED').AsBoolean = True then
                  begin
                   cbbVendedor.Enabled := true;
                  end;

                // If colocado por Maxsuel Victor, em 06/11/2023
                if txtComissao.Visible = true then
                   begin
                     if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                        begin
                          txtComissao.ReadOnly := false;
                          txtComissao.color    := clWindow;

                          // Do usuário logado
                          if (dmgeral.BUS_CD_C_FU4.FieldByName('vnd_interno_externo').AsInteger = 1) then // Vendedor externo
                             begin
                                txtComissao.ReadOnly := true;
                                txtComissao.color    := $00DADADA;
                             end;

                           // Do vendedor do pedido
                           dmGeral.BusFuncionario4(0,IntToStr(dmGeral.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger));
                           if (dmgeral.BUS_CD_C_FU4.FieldByName('vnd_interno_externo').AsInteger = 0) then
                             begin
                                txtComissao.ReadOnly := true;
                                txtComissao.color    := $00DADADA;
                             end;
                        end;
                   end;

                dmGeral.BUS_CD_C_FU4.Close;
             end;
        end;
    end;

  if  ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
    begin
      if (TRIM(dmGeral.BUS_CD_C_CLI.FieldByName('ID_CIDADE').AsString) <> TRIM(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString)) then
        begin
           dmGeral.FAT_CD_M_PED.FieldByName('DTA_PREV_ENTREGA').AsDateTime := xDataSis + dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_dias_prev_cid_fora').AsInteger;
        end;
      if (TRIM(dmGeral.BUS_CD_C_CLI.FieldByName('ID_CIDADE').AsString) = TRIM(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString)) then
        begin
           dmGeral.FAT_CD_M_PED.FieldByName('DTA_PREV_ENTREGA').AsDateTime := xDataSis + dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_dias_prev_cid_dentro').AsInteger;
        end;
    end;

    if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsString <> '') and
       (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsInteger =
        dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger)   then
      begin
        clienteConsumidor := true;
      end;



      CodFpgHrq := '';
      if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_forma_fpg_hrq').AsBoolean = true then
        begin
          dmGeral.BusHierarquiaFpg(2,dmGeral.BUS_CD_C_CLI.FieldByName('id_controle_fpg_hrq').AsString);
          while not dmgeral.BUS_CD_C_HFG.EOF do
            begin
                if CodFpgHrq = '' then
                  begin
                     CodFpgHrq :=
                     CodFpgHrq +''''+dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString+'''';
                  end
                else
                  begin
                     CodFpgHrq :=
                     CodFpgHrq + ',' +''''+dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString+'''';
                  end;
              dmGeral.BUS_CD_C_HFG.Next;
            end;
        end;

  if xCodCliAnt <> dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString then
     begin
        while (not dmGeral.FAT_CD_M_PED_TIT.Eof) do
           begin
             dmGeral.FAT_CD_M_PED_TIT.Delete;
           end;
        dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency := 0;
        xcred_util := dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency;
        xCred_disp := dmGeral.BusSaldoCreCli(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString)-xCred_util;
        txtCredDisp.Text := FormatCurr('0.00',xCred_disp);
      end;


   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true then
     begin
       dmGeral.BusPropriedadeCli(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
       if dmGeral.BUS_CD_C_CLI_PRO.RecordCount = 1 then
         begin
           dmGeral.FAT_CD_M_PED.FieldByName('ID_PROPRIEDADE').AsInteger :=
                   dmGeral.BUS_CD_C_CLI_PRO.FieldByName('ID_PROPRIEDADE').AsInteger;
         end;
       dmGeral.BUS_CD_C_CLI_PRO.Insert;
       dmGeral.BUS_CD_C_CLI_PRO.FieldByName('ID_PROPRIEDADE').AsInteger := 0;
       dmGeral.BUS_CD_C_CLI_PRO.FieldByName('NOME').AsString := 'Nenhum';
       dmGeral.BUS_CD_C_CLI_PRO.Post;

       if dmGeral.BUS_CD_C_CLI_PRO.RecordCount = 1 then
         begin
           dmGeral.FAT_CD_M_PED.FieldByName('ID_PROPRIEDADE').AsInteger := 0;
         end;
     end;

end;


procedure TFAT_FM_M_PED.txtCodMotoristaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_MTA := TPSQ_FM_X_MTA.Create(Self);
  PSQ_FM_X_MTA.ShowModal;

  if not dmSgq.BUS_CD_C_MTA.IsEmpty then
     begin
       dmGeral.FAT_CD_M_PED.FieldByName('ID_MOTORISTA').AsInteger :=
            dmSgq.BUS_CD_C_MTA.FieldByName('ID_MOTORISTA').AsInteger;

        dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMEMTA').Text :=
            dmSgq.BUS_CD_C_MTA.FieldByName('NOME').AsString;

       dmGeral.FAT_CD_M_PED.FieldByName('ID_PLACA').Text :=
            dmSgq.BUS_CD_C_MTA.FieldByName('PLACA').AsString;

     end;

  dmSgq.BUS_CD_C_MTA.Close;
  PSQ_FM_X_MTA.Free;
end;

procedure TFAT_FM_M_PED.txtCodMotoristaExit(Sender: TObject);
begin
   inherited;

   if btnCancelar.Focused or
        btnGrava.Focused  then
     begin
       exit;
     end;

    dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMEMTA').Text := '';
    dmGeral.FAT_CD_M_PED.FieldByName('ID_PLACA').Text := '';

   { if dmGeral.FAT_CD_M_PED.FieldByName('ID_MOTORISTA').AsString = '' then
      begin
        ShowMessage('Deve ser preenchido motorista.');
        txtCodMotorista.SetFocus;
        exit;
      end;}

   if trim(dmGeral.FAT_CD_M_PED.FieldByName('ID_MOTORISTA').AsString) <> '' then
      begin
        dmSgq.BusMotorista(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_MOTORISTA').text);
        if not dmSgq.BUS_CD_C_MTA.IsEmpty then
          begin
            dmGeral.FAT_CD_M_PED.FieldByName('INT_NOMEMTA').Text :=
                dmSgq.BUS_CD_C_MTA.FieldByName('NOME').AsString;

            dmGeral.FAT_CD_M_PED.FieldByName('ID_PLACA').Text :=
                dmSgq.BUS_CD_C_MTA.FieldByName('PLACA').AsString;
          end
        else
          begin
            ShowMessage('Motorista não encontrado.');
            txtCodMotorista.Text := '';
            txtCodMotorista.SetFocus;
            exit;
          end;
      end;



end;

procedure TFAT_FM_M_PED.txtComissaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('id_cliente').AsString = '' then
    begin
      ShowMessage('O campo "Cliente" deve ser preenchido.');
      txtCliente.SetFocus;
      exit;
    end;


  if dmGeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsString = '' then
    begin
      ShowMessage('O campo "Comissão %" deve ser preenchido.');
      txtComissao.SetFocus;
      exit;
    end;

  if (dmGeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency < 0) then
    begin
      ShowMessage('O campo "Comissão %" deve ser maior ou igual a zero.');
      dmGeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsString := '';
      txtComissao.SetFocus;
      exit;
    end;


    dmGeral.BUS_CD_C_FU4.Close;
      dmGeral.BUS_CD_C_FU4.Data :=
          dmGeral.BUS_CD_C_FU4.DataRequest(
               VarArrayOf([0,dmgeral.FAT_CD_M_PED.FieldByName('id_vendedor').AsCurrency]));

    if dmgeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency >
       dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_per_comissao_max').AsCurrency then
       // if dmgeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency >
       //    dmGeral.BUS_CD_C_FU4.FieldByName('SGQ_PER_COMISSAO').AsFloat then
       begin
         ShowMessage('Limite máximo de percentual de comissão geral de '+CurrToStr(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_per_comissao_max').AsCurrency)+'% foi excedido.');
         dmGeral.BUS_CD_C_FU4.close;
         dmGeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsString := '';
         txtComissao.SetFocus;
         exit;
       end
    else
       begin
         if (dmGeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsCurrency >
             dmGeral.BUS_CD_C_FU4.FieldByName('SGQ_PER_COMISSAO').AsFloat) then
            begin
              if MessageDlg('O percentual de comissão digitado é maior que o parametrizado para este vendedor(' +
                            dmGeral.BUS_CD_C_FU4.FieldByName('SGQ_PER_COMISSAO').AsString + '%) !!! '+#13+
                            'Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                 begin
                   dmGeral.FAT_CD_M_PED.FieldByName('SGQ_PER_COMISSAO').AsString := '';
                   txtComissao.SetFocus;
                   exit;
                 end;
              dmGeral.BUS_CD_C_FU4.close;
            end;
       end;

  dmGeral.BUS_CD_C_FU4.close;
end;

procedure TFAT_FM_M_PED.txtContaCorrenteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtFormaPgto.Focused or txtDias.Focused or
     txtVencimento.Focused or txtVlrTitulo.Focused or txtBanco.Focused or txtAgencia.Focused then
     begin
       exit;
     end;


  if (not (dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsInteger > 0)) then
    begin
      ShowMessage('O campo "C.Corrente" deve ser preenchido.');
      txtContaCorrente.SetFocus;
      exit;
    end;
end;

procedure TFAT_FM_M_PED.txtContaCorrenteSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtFormaPgtoSer.Focused or txtDiasSer.Focused or
     txtVencimentoSer.Focused or txtVlrTituloSer.Focused or txtBancoSer.Focused or txtAgenciaSer.Focused then
     begin
       exit;
     end;


  if (not (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_CONTA').AsInteger > 0)) then
    begin
      ShowMessage('O campo "C.Corrente" deve ser preenchido.');
      txtContaCorrenteSer.SetFocus;
      exit;
    end;
end;

procedure TFAT_FM_M_PED.txtCreditoUtilExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;


  total_cred :=  xCred_Disp + xcred_util;

  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').IsNull) or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsString = '') or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency < 0) then
     begin
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency := 0;
     end;


  if  (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency > 0) and
      (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency > total_cred) then
     begin
       ShowMessage('O valor de crédito utilizado não pode ser maior que o valor de crédito disponível.');
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency := 0;
       ActiveControl := nil;
       PostMessage(txtCreditoUtil.Handle, WM_SETFOCUS, 0, 0);
       txtCreditoUtil.SetFocus;
      // exit;
     end;


   FatInserirTitNotaCreditoPed(dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency);
   txtCredDisp.Text := FormatCurr('0.00',total_cred - dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency);
   xCred_Disp := total_cred - dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency;
   xcred_util := dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency;
end;

procedure TFAT_FM_M_PED.txtCredPecasExit(Sender: TObject);
var
  total_cred:currency;
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;
  total_cred :=  xCred_Disp + xcred_util;

  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').IsNull) or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsString = '') or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency < 0) then
     begin
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency := 0;
     end;



  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency >
      (total_cred - dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency)) then
     begin
       ShowMessage('O valor de crédito utilizado não pode ser maior que o valor de crédito disponível.');
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency := 0;
       txtCredPecas.SetFocus;
       exit;
     end;



  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency >
      dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency) then
     begin
       ShowMessage('O valor de crédito utilizado para peças não pode ser maior que a soma do valor líquido dos mesmos.');
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency := 0;
       txtCredPecas.SetFocus;
       exit;
     end;

  FatInserirTitNotaCreditoPed(dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency);

  dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency :=
                 dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency +
                 dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency;

  txtCredDisp.Text := FormatCurr('0.00',total_cred - dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency);
end;

procedure TFAT_FM_M_PED.txtCredServicoExit(Sender: TObject);
var
  total_cred:currency;
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  total_cred :=  xCred_Disp + xCred_util;

  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').IsNull) or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsString = '') or
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency < 0) then
     begin
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency := 0;
     end;

  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency >
      (total_cred - dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency)) then
     begin
       ShowMessage('O valor de crédito utilizado não pode ser maior que o valor de crédito disponível.');
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency := 0;
       txtCredServico.SetFocus;
       exit;
     end;

  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency >
     (dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
      dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency)) then
     begin
       ShowMessage('O valor de crédito utlizado para serviços não pode ser maior que o valor líquido dos mesmos.');
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency := 0;
       txtCredServico.SetFocus;
       exit;
     end;

  FatInserirTitNotaCreditoPed(dmGeral.FAT_CD_M_PED_TIT_SER,dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency);
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency :=
                 dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_PRODUTOS').AsCurrency +
                 dmGeral.FAT_CD_M_PED.FieldByName('VLR_CRED_SERVICOS').AsCurrency;

  txtCredDisp.Text := FormatCurr('0.00',total_cred - dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency);
end;

procedure TFAT_FM_M_PED.txtDiasExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       dmgeral.FAT_CD_M_PED_TIT.Cancel;
       exit;
     end;

  if txtFormaPgto.Focused then
     begin
       abort;
     end;

  if btn_Add_Fpg.Focused or grdFpg.Focused then
     begin
       dmgeral.FAT_CD_M_PED_TIT.Cancel;
       abort;
     end;

  if not (dmGeral.TesValDias(dmGeral.FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger)) then
     begin
       txtDias.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime +
                   dmGeral.FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger;

end;

procedure TFAT_FM_M_PED.txtDiasPrazoExit(Sender: TObject);
var
 i:integer;
begin
  inherited;

  if ((dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsString = '') or
     (dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger < 1)) then
     begin
       ShowMessage('O valor mínimo do campo "dias" é 1.');
       if diasPrazo_ant > 0 then
         begin
          dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger := diasPrazo_ant;
         end
       else
         begin
           dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger := 1;
         end;
     end;

  if ((dmGeral.FAT_CD_M_PED_ITE.RecordCount > 0) and
      (dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger <> diasPrazo_ant)) then
     begin
        if MessageDlg('Ao alterar o valor do campo "dias" será recalculado os preços dos itens '+
                          'e os valores descontos serão zerados. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
           begin
             exit;
           end;

        RecalcularPrecoItens;
     end;
  diasPrazo_ant := dmGeral.FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsInteger;
end;

procedure TFAT_FM_M_PED.txtDiasSerExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       dmgeral.FAT_CD_M_PED_TIT_SER.Cancel;
       exit;
     end;

  if txtFormaPgtoSer.Focused then
     begin
       abort;
     end;

  if btn_Add_Fpg_ser.Focused or grdFpgSer.Focused then
     begin
       dmgeral.FAT_CD_M_PED_TIT_SER.Cancel;
       abort;
     end;

  if not (dmGeral.TesValDias(dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DIAS').AsInteger)) then
     begin
       txtDiasSer.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime +
                   dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('DIAS').AsInteger;
end;

procedure TFAT_FM_M_PED.txtEmitenteChqExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin

  if btnSair.Focused  then
     begin
       exit;
     end;

  if (txtFormaPgto.Focused or
      txtBanco.Focused or txtAgencia.Focused or
      txtContaCorrente.Focused or txtNCheque.Focused or
      txtDias.Focused or txtVencimento.Focused or
      grdFpg.Focused or txtVlrTitulo.focused) or
      ( not ( (btn_Add_Fpg.focused) or (txtVlrTitulo.Focused)) )  then
      begin
        exit;
      end;


   if (trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_EMITENTE').AsString) = '') then
     begin
       ShowMessage('O campo "Emitente" deve ser preenchido.');
       txtEmitenteChq.SetFocus;
       exit;
     end;



  //id_titulo := dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsString;
  dmGeral.FAT_CD_M_PED_TIT.Post;
  pnTitulos.Enabled := false;


  txtFormaPgto.Enabled := true;
  txtDias.Enabled := true;
  txtVencimento.Enabled := true;
  txtVlrTitulo.Enabled := true;

  if btn_Add_Fpg.CanFocus then
    btn_Add_Fpg.SetFocus;

end;

procedure TFAT_FM_M_PED.txtEmitenteChqSerExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin

  if btnSair.Focused  then
     begin
       exit;
     end;

  if (txtFormaPgtoSer.Focused or
      txtBancoSer.Focused or txtAgenciaSer.Focused or
      txtContaCorrenteSer.Focused or txtNChequeSer.Focused or
      txtDiasSer.Focused or txtVencimentoSer.Focused or
      grdFpgSer.Focused or txtVlrTituloSer.focused) or
      ( not ( (btn_Add_Fpg_ser.focused) or (txtVlrTituloSer.Focused)) )  then
      begin
        exit;
      end;


   if (trim(dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_EMITENTE').AsString) = '') then
     begin
       ShowMessage('O campo "Emitente" deve ser preenchido.');
       txtEmitenteChqSer.SetFocus;
       exit;
     end;



  //id_titulo := dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsString;
  dmGeral.FAT_CD_M_PED_TIT_SER.Post;
  pnTitulos.Enabled := false;


  txtFormaPgtoSer.Enabled := true;
  txtDiasSer.Enabled := true;
  txtVencimentoSer.Enabled := true;
  txtVlrTituloSer.Enabled := true;

  if btn_Add_Fpg_ser.CanFocus then
    btn_Add_Fpg_ser.SetFocus;
end;

procedure TFAT_FM_M_PED.txtFormaPgtoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString]));


  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         if clienteConsumidor = false then
           begin
           //  dmGeral.BusFormaPgtos(2,'0');

             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([10,'0',CodFpgHrq]));
           end;

         if clienteConsumidor = true then
           begin
            { dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([8,'0','''3'',''5'''])); }


             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([12,'0','''3'',''5''',CodFpgHrq]));
           end;
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         if clienteConsumidor = false then
           begin
           // dmGeral.BusFormaPgtos(1,'%');

             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
               dmGeral.BUS_CD_C_FPG.DataRequest(
                     VarArrayOf([5,1,'','',CodFpgHrq]));
           END;

         if clienteConsumidor = true then
           begin
            { dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([4,'''3'',''5''']));  }


             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([11,'''3'',''5''',CodFpgHrq]));
           end;
      end;
  // txtFormaPgto.DropDown;
end;

procedure TFAT_FM_M_PED.txtFormaPgtoExit(Sender: TObject);
begin
  inherited;



   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (btn_Add_Fpg.Focused or grdFpg.Focused) or
     (not ( (txtDias.Focused) or (txtVencimento.Focused) or (txtVlrTitulo.Focused) ))  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       txtFormaPgto.SetFocus;
       abort;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').text := '';
       txtFormaPgto.SetFocus;
       abort;
     end;

  if (dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger =7)  then
    begin
       ShowMessage('Não é permitido forma de pagamento em nota de crédito.');
       dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').text := '';
       txtFormaPgto.SetFocus;
       abort;
    end;


  if not (dmGeral.FAT_CD_M_PED_TIT.State in [dsInsert,dsEdit]) then
     begin
       if (dmGeral.FAT_CD_M_PED_TIT.RecordCount>0) then
         dmGeral.FAT_CD_M_PED_TIT.Edit;
     end;

  dmGeral.FAT_CD_M_PED_TIT.FieldByName('int_nomefpg').text :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('INT_DOCIMPRESSO').AsInteger :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger;
  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [0] then
     begin
       ShowMessage('Não é permitido forma de pagamento do tipo: Nenhum.');
       dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').text := '';
       txtFormaPgto.SetFocus;
       abort;
     end;

  gbCheque.Enabled := false;
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
     begin
       gbCheque.Enabled := true;
     end;
end;

procedure TFAT_FM_M_PED.txtFormaPgtoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F2 then
     begin
       ActiveControl := nil;
       PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
       btnGrava.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.txtFormaPgtoSerEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString]));


  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         if clienteConsumidor = false then
           begin
           //  dmGeral.BusFormaPgtos(2,'0');

             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([10,'0',CodFpgHrq]));
           end;

         if clienteConsumidor = true then
           begin
            { dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([8,'0','''3'',''5'''])); }


             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([12,'0','''3'',''5''',CodFpgHrq]));
           end;
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         if clienteConsumidor = false then
           begin
           // dmGeral.BusFormaPgtos(1,'%');

             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
               dmGeral.BUS_CD_C_FPG.DataRequest(
                     VarArrayOf([5,1,'','',CodFpgHrq]));
           END;

         if clienteConsumidor = true then
           begin
            { dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([4,'''3'',''5''']));  }


             dmGeral.BUS_CD_C_FPG.Close;
             dmGeral.BUS_CD_C_FPG.Data :=
             dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([11,'''3'',''5''',CodFpgHrq]));
           end;
      end;
  // txtFormaPgto.DropDown;
end;

procedure TFAT_FM_M_PED.txtFormaPgtoSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (btn_Add_Fpg_ser.Focused or grdFpgSer.Focused) or
     (not ( (txtDiasSer.Focused) or (txtVencimentoSer.Focused) or (txtVlrTituloSer.Focused) ))  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       txtFormaPgtoSer.SetFocus;
       abort;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('id_forma_pag').text := '';
       txtFormaPgtoSer.SetFocus;
       abort;
     end;

  if (dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger =7)  then
    begin
       ShowMessage('Não é permitido forma de pagamento em nota de crédito.');
       dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('id_forma_pag').text := '';
       txtFormaPgtoSer.SetFocus;
       abort;
    end;


  if not (dmGeral.FAT_CD_M_PED_TIT_SER.State in [dsInsert,dsEdit]) then
     begin
       if (dmGeral.FAT_CD_M_PED_TIT_SER.RecordCount>0) then
         dmGeral.FAT_CD_M_PED_TIT_SER.Edit;
     end;

  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('int_nomefpg').text :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
  dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('INT_DOCIMPRESSO').AsInteger :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger;
  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [0] then
     begin
       ShowMessage('Não é permitido forma de pagamento do tipo: Nenhum.');
       dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('id_forma_pag').text := '';
       txtFormaPgto.SetFocus;
       abort;
     end;

  gbChequeSer.Enabled := false;
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
     begin
       gbChequeSer.Enabled := true;
     end;
end;

procedure TFAT_FM_M_PED.txtFormaPgtoSerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = vk_F2 then
     begin
       ActiveControl := nil;
       PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
       btnGrava.SetFocus;
     end;
end;

procedure TFAT_FM_M_PED.txtFpgEntradaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  try
    // Busca as formas de pagamento a vista
    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativar_util_fpg_ped_vnd').AsBoolean then
      begin
       PSQ_FM_X_FPG.BUS_CD_C_FPG.Filtered := true;
       PSQ_FM_X_FPG.BUS_CD_C_FPG.Filter := 'utilizado_ped_vnd=TRUE';
      end;

    PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
    PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(VarArrayOf([10, 0,CodFpgHrq]));
    PSQ_FM_X_FPG.BUS_CD_C_FPG.Open; // Precisa do Open

    PSQ_FM_X_FPG.xOrigemPsqFpg := '1';
    PSQ_FM_X_FPG.xCodFpg := CodFpgHrq;

    PSQ_FM_X_FPG.ShowModal;
    if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
       begin
         txtFpgEntrada.SetFocus;
         txtFpgEntrada.Text :=
               PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
       end;

  finally
     PSQ_FM_X_FPG.BUS_CD_C_FPG.Filtered := false;
     PSQ_FM_X_FPG.Free;
  end;
end;

procedure TFAT_FM_M_PED.txtFpgEntradaEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(false);
end;

procedure TFAT_FM_M_PED.txtFpgEntradaExit(Sender: TObject);
VAR
  prosseguirFpgHrq:Boolean;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtFpgEntrada.text) <> '') and
     (txtFpgEntrada.Text <> '0') then
     begin
       try
          dmGeral.BUS_CD_C_FPG2.Close;
          dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtFpgEntrada.Text]));
          if dmGeral.BUS_CD_C_FPG2.IsEmpty then
             begin
               ShowMessage('Forma de pagamento não encontrada.');
               txtFpgEntrada.Text := '';
               txtFpgEntrada.SetFocus;
               abort;
             end
          else
             begin
               if (dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger =7)  then
                  begin
                     ShowMessage('Não é permitido forma de pagamento em nota de crédito.');
                     txtFpgEntrada.Text := '';
                     txtFpgEntrada.SetFocus;
                     abort;
                  end;


               prosseguirFpgHrq := true;
               if  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_forma_fpg_hrq').AsBoolean=true) and
                   (dmGeral.BUS_CD_C_HFG.RecordCount > 0) then
                 begin
                   prosseguirFpgHrq := false;
                   dmGeral.BUS_CD_C_HFG.First;
                   while not dmGeral.BUS_CD_C_HFG.EOF do
                     begin
                       if dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString =
                           trim(txtFpgEntrada.Text) then
                         begin
                           prosseguirFpgHrq := true;
                           break;
                         end;
                       dmGeral.BUS_CD_C_HFG.Next;
                     end;

                    if prosseguirFpgHrq = true then
                       begin

                         dmGeral.BUS_CD_C_CLI.Close;
                         dmGeral.BUS_CD_C_CLI.Data :=
                             dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));

                         if dmGeral.BUS_CD_C_HFG.locate('id_controle',dmGeral.BUS_CD_C_CLI.FieldByName('id_controle_fpg_hrq').AsString,[]) then
                            begin
                               if dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString <> trim(txtFpgEntrada.Text) then
                                  begin
                                     dmgeral.BusFormaPgtos2(0,dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString);
                                     ShowMessage('A forma de pagamento padrão deste cliente é: ' + dmGeral.BUS_CD_C_FPG2.FieldByName('descricao').AsString);
                                  end;
                            end;
                       end;
                 end;

               if prosseguirFpgHrq = false then
                 begin
                   ShowMessage('Forma de pagamento não permitida.');
                   txtFpgEntrada.Text := '';
                   txtFpgEntrada.SetFocus;
                   abort;
                 end;


               if dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0 then
                  begin
                    ShowMessage('Forma de pagamento deve ser do tipo "A vista".');
                    txtFpgEntrada.Text := '';
                    txtFpgEntrada.SetFocus;
                    abort;
                  end;

               if (clienteConsumidor=true) and
                  (not (dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger in [3,5]))   then
                  begin
                     ShowMessage('Venda a consumidor aceita apenas forma de pagamento do tipo dinheiro ou cartão.');
                     txtFpgEntrada.Text := '';
                     txtFpgEntrada.SetFocus;
                     abort;
                  end;
             end;
        finally
          dmGeral.BUS_CD_C_FPG2.Close;
        end;
     end
  else
     begin
       txtVlrEntrada.Text := '';
     end;
end;

procedure TFAT_FM_M_PED.txtFreteExit(Sender: TObject);
var
  codItens:String;
begin
  inherited;
  codItens:='';
   if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 1) then
      begin
        dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             (dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_ICM_DESN').AsCurrency+
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_FRETE').AsCurrency);
      end;
    if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 2) then
      begin
        if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean = true then
          begin
            dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_ICM_DESN').AsCurrency+
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_FRETE').AsCurrency;
          end
        else
          begin
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_ICM_DESN').AsCurrency;
          end;
      end;

   try
    dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
    dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;

    FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                 dmGeral.FAT_CD_M_PEDvlr_frete.AsCurrency, 'VLR_FRETE','',codItens,false,xint_unif_desc_reg);

   finally
     dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
     dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
     dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
     dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
   end;
end;

procedure TFAT_FM_M_PED.txtGerFpgButtonClick(Sender: TObject);
begin
  inherited;

  try
    PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);
    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativar_util_fpg_ped_vnd').AsBoolean then
        begin
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Filtered := true;
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Filter := 'utilizado_ped_vnd=TRUE';
        end;

    dmGeral.BUS_CD_C_CPG.Close;
    dmGeral.BUS_CD_C_CPG.Data :=
             dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString]));

    if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
       begin
           // Busca as formas de pagamento a vista
           PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
           PSQ_FM_X_FPG.BUS_CD_C_FPG.data :=
               PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
                    VarArrayOf([10, 0,CodFpgHrq]));


           PSQ_FM_X_FPG.xOrigemPsqFpg := '1';
           PSQ_FM_X_FPG.xCodFpg := CodFpgHrq;
       end;

    if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
       begin
           // Busca as formas de pagamento a prazo
           PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
           PSQ_FM_X_FPG.BUS_CD_C_FPG.data :=
                PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
                     VarArrayOf([10, 1,CodFpgHrq]));

           PSQ_FM_X_FPG.xOrigemPsqFpg := '2';
           PSQ_FM_X_FPG.xCodFpg := CodFpgHrq;
       end;

    PSQ_FM_X_FPG.ShowModal;
    if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
       begin
         txtGerFpg.SetFocus;
         txtGerFpg.Text :=
              PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
       end;

  finally
    PSQ_FM_X_FPG.BUS_CD_C_FPG.Filtered := false;
    PSQ_FM_X_FPG.Free;
  end;
end;

procedure TFAT_FM_M_PED.txtGerFpgExit(Sender: TObject);
var
  prosseguirFpgHrq:Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtGerFpg.text) <> '') and
     (txtGerFpg.Text <> '0') then
     begin
        try
        dmGeral.BUS_CD_C_FPG2.Close;
        dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtGerFpg.Text]));
        if dmGeral.BUS_CD_C_FPG2.IsEmpty then
           begin
             ShowMessage('Forma de pagamento não encontrada.');
             txtGerFpg.Text := '';
             txtGerFpg.SetFocus;
             abort;
           end
        else
           begin
             if (dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger =7)  then
                  begin
                     ShowMessage('Não é permitido forma de pagamento em nota de crédito.');
                     txtGerFpg.Text := '';
                     txtGerFpg.SetFocus;
                     abort;
                  end;


             prosseguirFpgHrq := true;
             if  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_forma_fpg_hrq').AsBoolean=true) and
                 (dmGeral.BUS_CD_C_HFG.RecordCount > 0) then
               begin
                 prosseguirFpgHrq := false;
                 dmGeral.BUS_CD_C_HFG.First;
                 while not dmGeral.BUS_CD_C_HFG.EOF do
                   begin
                     if dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString =
                         trim(txtGerFpg.Text) then
                       begin
                         prosseguirFpgHrq := true;
                         break;
                       end;
                     dmGeral.BUS_CD_C_HFG.Next;
                   end;

                 if prosseguirFpgHrq = true then
                    begin
                      dmGeral.BUS_CD_C_CLI.Close;
                      dmGeral.BUS_CD_C_CLI.Data :=
                         dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));

                      if dmGeral.BUS_CD_C_HFG.locate('id_controle',dmGeral.BUS_CD_C_CLI.FieldByName('id_controle_fpg_hrq').AsString,[]) then
                         begin
                             if dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString <> trim(txtGerFpg.Text) then
                                begin
                                   dmgeral.BusFormaPgtos2(0,dmGeral.BUS_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString);
                                   ShowMessage('A forma de pagamento padrão deste cliente é: ' + dmGeral.BUS_CD_C_FPG2.FieldByName('descricao').AsString);
                                end;
                         end;
                    end;
               end;

             if prosseguirFpgHrq = false then
               begin
                 ShowMessage('Forma de pagamento não permitida.');
                 txtGerFpg.Text := '';
                 txtGerFpg.SetFocus;
                 abort;
               end;


             dmGeral.BUS_CD_C_CPG.Close;
             dmGeral.BUS_CD_C_CPG.Data :=
                       dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString]));

             if (clienteConsumidor=false) then
                begin
                 if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
                    begin
                       if dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0 then
                          begin
                            ShowMessage('Forma de pagamento deve ser do tipo "A vista".');
                            txtGerFpg.Text := '';
                            txtGerFpg.SetFocus;
                            abort;
                          end;
                    end;
                end;

             if (clienteConsumidor=true) then
                begin
                  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then
                    begin
                      if (dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0) or
                         (not (dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger in [3,5]))   then  // A vista
                        begin
                         ShowMessage('Venda a consumidor aceita apenas forma de pagamento do tipo dinheiro ou cartão.');
                         txtFpgEntrada.Text := '';
                         txtFpgEntrada.SetFocus;
                         abort;
                        end;
                    end;

                  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then
                    begin
                      if (not (dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger in [3,5]))   then  // A vista
                        begin
                         ShowMessage('Venda a consumidor aceita apenas forma de pagamento do tipo dinheiro ou cartão.');
                         txtFpgEntrada.Text := '';
                         txtFpgEntrada.SetFocus;
                         abort;
                        end;
                    end;
                end;

           end;

        if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger = 4 then  // Boleto bancário
           begin
             if trim(dmGeral.BUS_CD_C_CLI.FieldByName('email').AsString) = '' then
                begin

                  Showmessage('AVISO: Forma de pagamento escolhida : ' + dmGeral.BUS_CD_C_FPG2.FieldByName('descricao').AsString +', '+
                              'mas este cliente não possui e-mail.');
                end;
           end;

        gbCheque.Enabled   := false;
        if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
           begin
             gbCheque.Enabled   := true;
           end;

        finally
          dmGeral.BUS_CD_C_FPG2.close;
          dmGeral.BUS_CD_C_CPG.Close;
        end;
     end
  else
     begin
       txtQtdeParc.Text := '0';
     end;
end;

procedure TFAT_FM_M_PED.txtIcmsDesnExit(Sender: TObject);
var
  codItens:String;
begin
  inherited;
   codItens:='';


   dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             (dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_ICM_DESN').AsCurrency);

   if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 1) then
      begin
        dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             (dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_ICM_DESN').AsCurrency+
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_FRETE').AsCurrency);
      end;
    if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 2) then
      begin
        if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean = true then
          begin
            dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_ICM_DESN').AsCurrency+
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_FRETE').AsCurrency;
          end
        else
          begin
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_ICM_DESN').AsCurrency;
          end;
      end;

   try
    dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
    dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;

        FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                  dmGeral.FAT_CD_M_PEDvlr_icm_desn.AsCurrency, 'VLR_ICM_DESN','',codItens,false,xint_unif_desc_reg);

   finally
     dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
     dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
     dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
     dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
   end;
end;

procedure TFAT_FM_M_PED.txtIcmsDesnIteExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
  codCST:String;
begin
  inherited;
  if (dmgeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2]) then
     begin
      if ((trim(dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString)<>'') and
          (trim(dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString)<>'ISENTO')) then
        begin
          codCST := dmGeral.BUS_CD_C_TRI_REG.FieldByName('cnt_id_st_icm').AsString;
        end
      else
        begin
           codCST := dmGeral.BUS_CD_C_TRI_REG.FieldByName('nct_id_st_icm').AsString;
        end;
     end;

   if not(((pos(codCST,'40-41-50')<>0) and (not (dmGeral.FAT_CD_M_PED_ITE.FieldByName('motivo_icms_des').AsInteger in [2,12]))) or
         ((pos(codCST,'30')<>0) and (dmGeral.FAT_CD_M_PED_ITE.FieldByName('motivo_icms_des').AsInteger in [6,7,9])) or
         ((pos(codCST,'20-70-90')<>0) and (dmGeral.FAT_CD_M_PED_ITE.FieldByName('motivo_icms_des').AsInteger in [3,9,12])) ) then
      begin
         if(dmGeral.FAT_CD_M_PED_ITE.FieldByName('vlr_icm_desn').AsCurrency>0) then
           begin
            ShowMessage('O valor icms desonerado tem que ser 0.');
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('vlr_icm_desn').AsCurrency :=0;
            txtIcmsDesnIte.SetFocus;
            exit;
           end;
      end;



   seq_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsString;

  if dmGeral.FAT_CD_M_PED_ITEid_sequencia.text = '' then
     begin
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger :=
               SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
        finally
          FreeAndNil(SMPrincipal);
        end;
     end;
  if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency >0) then
     begin
      HabilitarVlrDesc := false;
      txtTotalVlrDesc.ReadOnly := true;
      txtTotalVlrDesc.Color := $00DADADA;
     end;

  dmGeral.FAT_CD_M_PED_ITE.Post;
  dmGeral.FAT_CD_M_PED_ITE.IndexFieldNames := 'ID_SEQUENCIA';

  pnlDesn.Visible := false;
  btn_Add_Itens.Enabled := True;
  btnImportar.Enabled := false;

  pnItens.Enabled := false;
  //btn_Add_Itens.SetFocus;
  dmGeral.FAT_CD_M_PED_ITE.locate('ID_SEQUENCIA',seq_item,[]);

  ActiveControl := nil;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

procedure TFAT_FM_M_PED.txtIdPlacaExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
        btnGrava.Focused  then
     begin
       exit;
     end;

  if ((trim(dmGeral.FAT_CD_M_PED.FieldByName('ID_MOTORISTA').AsString) <> '') and
       (trim(dmGeral.FAT_CD_M_PED.FieldByName('ID_PLACA').AsString) = '')) then
      begin
        ShowMessage('Deve ser preenchido a placa.');
        txtIdPlaca.SetFocus;
        exit;
      end;
end;

procedure TFAT_FM_M_PED.txtNChequeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtFormaPgto.Focused or txtDias.Focused or txtVencimento.Focused or txtVlrTitulo.Focused or
     txtBanco.Focused or txtAgencia.Focused or txtContaCorrente.Focused then
     begin
       exit;
     end;


  if (not (dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').AsInteger > 0))  then
    begin
      ShowMessage('O campo "Nº Cheque" deve ser preenchido.');
      txtNCheque.SetFocus;
      exit;
    end;
end;

procedure TFAT_FM_M_PED.txtNChequeSerExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtFormaPgtoSer.Focused or txtDiasSer.Focused or txtVencimentoSer.Focused or txtVlrTituloSer.Focused or
     txtBancoSer.Focused or txtAgenciaSer.Focused or txtContaCorrenteSer.Focused then
     begin
       exit;
     end;


  if (not (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_NUMERO').AsInteger > 0))  then
    begin
      ShowMessage('O campo "Nº Cheque" deve ser preenchido.');
      txtNChequeSer.SetFocus;
      exit;
    end;
end;

procedure TFAT_FM_M_PED.txtObservacaoEnter(Sender: TObject);
begin
  inherited;
 // FAT_FM_M_PED.KeyPreview := false;
  txtObservacao.Width := txtObservacao.Width + 600;
 // txtObservacao.Height :=  txtObservacao.Height + 60;
end;

procedure TFAT_FM_M_PED.txtObservacaoExit(Sender: TObject);
begin
  inherited;
  txtObservacao.Width := txtObservacao.Width - 600;
 // txtObservacao.Height :=  txtObservacao.Height - 60;
 // FAT_FM_M_PED.KeyPreview := TRUE;
end;

procedure TFAT_FM_M_PED.txtAgenciaExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtFormaPgto.Focused or txtDias.Focused or
     txtVencimento.Focused or txtVlrTitulo.Focused or txtBanco.Focused then
     begin
       exit;
     end;


  if trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_AGENCIA').AsString) = '' then
    begin
      ShowMessage('O campo "Agência" deve ser preenchido.');
      txtAgencia.SetFocus;
      exit;
    end;
end;

procedure TFAT_FM_M_PED.txtAgenciaSerExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtFormaPgtoSer.Focused or txtDiasSer.Focused or
     txtVencimentoSer.Focused or txtVlrTituloSer.Focused or txtBancoSer.Focused then
     begin
       exit;
     end;


  if trim(dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_AGENCIA').AsString) = '' then
    begin
      ShowMessage('O campo "Agência" deve ser preenchido.');
      txtAgenciaSer.SetFocus;
      exit;
    end;
end;

procedure TFAT_FM_M_PED.txtBancoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtFormaPgto.Focused or txtDias.Focused or
     txtVencimento.Focused or txtVlrTitulo.Focused  then
     begin
       exit;
     end;


  if trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_BANCO').AsString) = '' then
    begin
      ShowMessage('O campo "Banco" deve ser preenchido.');
      txtBanco.SetFocus;
      exit;
    end;
end;

procedure TFAT_FM_M_PED.txtBancoSerExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtFormaPgtoSer.Focused or txtDiasSer.Focused or
     txtVencimentoSer.Focused or txtVlrTituloSer.Focused  then
     begin
       exit;
     end;


  if trim(dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('CHE_BANCO').AsString) = '' then
    begin
      ShowMessage('O campo "Banco" deve ser preenchido.');
      txtBancoSer.SetFocus;
      exit;
    end;
end;

procedure TFAT_FM_M_PED.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;

  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
  xFormRespPSQ_ITE := FAT_FM_M_PED.Name;
  xVendedor_externo := dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString;
  if trim(xVendedor_externo) = '' then
          xVendedor_externo := '9';
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

       dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

       dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;
     end;
  PSQ_FM_X_ITE.Free;

end;

procedure TFAT_FM_M_PED.txtBuscaItemEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(false);
  txtSaldo.Text := '';
end;

procedure TFAT_FM_M_PED.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (txtQtde.Focused) or (txtVlrUnitario.Focused) or
          (txtVlrDesconto.Focused) or (txtPerDesconto.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
             {pnItens.Enabled := false;
             if txtFpgEntrada.CanFocus then
                txtFpgEntrada.SetFocus
             else
                begin
                  ActiveControl := nil;
                  PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
                  btnGrava.SetFocus;
                end;}
             exit;
           end;
     end
  else
     begin
       if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger = 0 then
          begin
            ShowMessage('O campo "Cliente" deve ser preenchido.');
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text         := '';
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text  := '';
            abort;
          end;

       if dmGeral.FAT_CD_M_PED_ITE.state in [dsBrowse] then
          dmGeral.FAT_CD_M_PED_ITE.edit;
     end;



  dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text  := '';

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

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_busca_item').Text := '';
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text  := '';
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').text := '';
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').text := '';
       exit;
     end;

  if dmGeral.BUS_CD_C_ITE.FieldByName('int_verif_cod_barra_ped').AsBoolean then
     begin
       if trim(dmGeral.BUS_CD_C_ITE.FieldByName('cod_barra').AsString) = '' then
          begin
             ShowMessage('Produto sem código de barra(GTIN)!');
             txtBuscaItem.SetFocus;
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_busca_item').Text := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text  := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').text := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').text := '';
             exit;
          end;
     end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean or
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean OR
     dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean then
     begin
        if (pos(dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString,'00-01-02-03-04-05-06-09') = 0) then
            begin
              ShowMessage('O item só pode ser de grupo com tipo do item igual a: ' + #13 +
                           ' - Mercadoria para Revenda '+#13+
                           ' - Materia prima '+#13+
                           ' - Embalagem  '+#13+
                           ' - Produto em processo '+#13+
                           ' - Produto Acabado  '+#13+
                           ' - subproduto  '+#13+
                           ' - Produto Intermediario '+#13+
                           ' - Serviços');
              txtBuscaItem.SetFocus;
              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
              exit;
            end;
     end;

  // if colocado em 11/09/2023, por Maxsuel Victor.

  if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString = '1' then  // Vendedor externo
     begin
       if dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean then
          begin
             ShowMessage('Não é permitido inserir item personalizado!');
             txtBuscaItem.SetFocus;
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_busca_item').Text := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text  := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').text := '';
             dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').text := '';
             exit;
          end;
     end;


  { A linha abaixo é pra evitar que o OnChange do ID_ITEM seja executado mais de 1 vez
     devido o teset do Insert mais abaixo }
  //id_item := dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

   dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_LOTE_GRU').AsBoolean :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_LOTE_GRU').AsBoolean;


 

      {if (Tipo_Item <> -1) and (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean) then
         begin
           if ((dmGeral.FAT_CD_M_PED_ITEint_tipo_item.AsInteger = 9) and (tipo_item <> 9)) or
              ((dmGeral.FAT_CD_M_PED_ITEint_tipo_item.AsInteger <> 9) and (tipo_item = 9)) then
            begin
              if tipo_item = 9 then
                begin
                  ShowMessage('Não é permitido inserir item do tipo "Produto".');
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
                  abort;
                end
              else
                begin
                  ShowMessage('Não é permitido inserir item do tipo "Serviço".');
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
                  abort;
                end;
            end;
         end; }

  //Busca o preço na tabela de preço conforme item e tabela do cliente

  try
  pnItens.onExit := nil;

  if dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert] then
     begin
       {//id_item       := dmGeral.FAT_CD_M_PED_ITE.FieldByName('IDint_id_und_vendaint_id_und_venda_ITEM').AsString;
       id_busca_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
       desc          := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;
       und           := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString;
       tipo_item     := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger;

       dmGeral.FAT_CD_M_PED_ITE.cancel;
       if dmGeral.FAT_CD_M_PED_ITE.Locate('ID_ITEM',id_item,[]) then
          begin
            ShowMessage('Item já inserido no pedido de venda.');
            dmGeral.FAT_CD_M_PED_ITE.Insert;
            txtBuscaItem.SetFocus;
            abort;
          end
       else
          begin
            dmGeral.FAT_CD_M_PED_ITE.Insert;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString        := id_item;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString  := id_busca_item;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString   := desc;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString    := und;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger := tipo_item;
          end;  }

       if not FAT_RN_M_NFE.VerifTribItem('S', dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                                         dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text,
                                         dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                                         dmGeral.FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').Text,
                                         'V') then
              begin
                Showmessage('A tributação do item não foi encontrada');
                txtBuscaItem.SetFocus;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text := '';
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text := '';
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').Text := '';
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').text := '';
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_SERTERCEIRO').text := '';
                abort;
              end;

        if not ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) and
               (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = false) and
               (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = false)) then
          begin
            ChamaCorTamanho;
          end;


      {Esse código foi necessário devido o focu está se perdendo ao tentar focar
        no campo "Qtde"}

      { ActiveControl := nil;
       PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
       txtQtde.SetFocus;}

     end
  else
     dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString := id_item;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,1,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger);
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,2,0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger);
     end;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE);
     end;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=  xPercDescPerm;


  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = false) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = false) then
    begin
     BuscarCulturas(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);
     pnlCultura.Visible := true;
     pnlCultura.Top := 50;
     pnlCultura.Left := 399;
     cbbCultura.SetFocus;
    end;
  if (not pnlCultura.CanFocus) and (not pnlCorTamanho.CanFocus) then
   ChamaMecanicoTerceiro;

  finally
     pnItens.OnExit := pnItensExit;
  end;


end;

procedure TFAT_FM_M_PED.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;

  if (Key = vk_F2) then
    begin
      if cbbTitPecaServico.CanFocus then
        begin
         cbbTitPecaServico.SetFocus
        end
      else if txtFpgEntrada.CanFocus then
         txtFpgEntrada.SetFocus
      else
         begin
           pnItens.OnExit := nil;
           dmGeral.FAT_CD_M_PED_ITE.cancel;
           ActiveControl := nil;
           PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
           btnGrava.SetFocus;

           pnItens.OnExit := pnItensExit;
         end;
    end;

  if (Key = VK_RETURN) and (trim(txtBuscaItem.Text) = '') then
      begin
        if txtFpgEntrada.CanFocus then
           //txtFpgEntrada.SetFocus
        else
           begin
             try
             pnItens.OnExit := nil;
             dmGeral.FAT_CD_M_PED_ITE.cancel;
             ActiveControl := nil;
             PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
             btnGrava.SetFocus;
             finally
                pnItens.OnExit := pnItensExit;
             end;

           end;
      end;

end;

procedure TFAT_FM_M_PED.txtPercDescBascEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(true);
  PerDescBasicTotalAnt :=  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency;
end;

procedure TFAT_FM_M_PED.txtPercDescBascExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;

  {if btnGrava.Focused or btnCancelar.Focused then
     begin
       exit;
     end; }
   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin

         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0) and
            ( PerDescBasicTotalAnt <> dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency ) then
            begin
              Showmessage('O valor do campo "Desconto especial" será apagado!');
              dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
              dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;
              if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                 if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
                    dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);
            end;


         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency :=
              RoundTo( (( dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency *
                  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency ) / 100),-2);

         if dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency >=
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency) then
                  begin
                    ShowMessage('O valor do desconto básico não pode ser maior ou igual total valor bruto.');
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescBasc.SetFocus;
                    exit;
                  end;
            end;


         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency;

         try
          dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
          dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
          codItens := '';

          if ( PerDescBasicTotalAnt <> dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency ) then
              FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                    dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);


          if (codItens <>'') then
             begin


               if (dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency > 0) and
                  (dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency <> PerDescBasicTotalAnt) then
                  begin
                     ShowMessage('Os seguintes itens apresentam desconto acima do permitido:'+#13+codItens);

                     dmGeral.CAD_CD_C_FUN.Close;
                     dmGeral.CAD_CD_C_FUN.Data :=
                           dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([0,xFuncionario]));

                     if dmGeral.CAD_CD_C_FUN.FieldByName('seg_per_desc_maior').AsBoolean then
                        begin
                          Application.CreateForm(TFAT_FM_M_PED_SEN,FAT_FM_M_PED_SEN);
                          FAT_FM_M_PED_SEN.ShowModal;
                          if not FAT_FM_M_PED_SEN.xPermitePedSen then
                             begin
                               if FatValidBloqueiaPed('H') then
                                  begin
                                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                    FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                                    dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                                    txtPercDescBasc.SetFocus;
                                    exit;
                                  end;
                             end;
                        end
                     else
                        begin
                          if FatValidBloqueiaPed('H') then
                              begin
                                dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                                dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                                txtPercDescBasc.SetFocus;
                                exit;
                              end;
                        end;
                  end;
             end;
         finally
           dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
           dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
           dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
           dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
         end;

         FAT_RN_M_PED.fatPedCalcTotal;

         if (dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency <> PerDescBasicTotalAnt) then
             begin
                if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                   if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
                      dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);
             end;


      end;
  // if txtDescBasc.canfocus then
  //    txtDescBasc.setfocus;
end;

procedure TFAT_FM_M_PED.txtPercDescEspecialEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(true);
  PerDescEspecialTotalAnt :=  dmGeral.FAT_CD_M_PED.FieldByName('per_desc_especial').AsCurrency;
end;

procedure TFAT_FM_M_PED.txtPercDescEspecialExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;

  {if btnGrava.Focused or btnCancelar.Focused then
     begin
       exit;
     end; }
   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin
         if dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency >=
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency) then
                  begin
                    ShowMessage('O valor do desconto especial não pode ser maior ou igual total valor líquido.');
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtPercDescEspecial.setfocus;
                    exit;
                  end;
            end;

         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency :=
              RoundTo( ((  (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency-
                           dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency) *
                  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency ) / 100),-2);

         if dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency +
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency) >=
                   (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency) then
                  begin
                    ShowMessage('O valor do (desconto básico + desconto especial) não pode ser maior ou igual ao total valor bruto.');
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtPercDescEspecial.setfocus;
                    exit;
                  end;
            end;

         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency;

         perDesconto := 0;
         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency >0) then
           begin
            perDesconto := roundTo( (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency /
                          (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency-
                          dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency))*100,-2);
           end;

        if (perDesconto> dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsCurrency) then
          begin
            ShowMessage('O percentual de desconto especial permitido é no máximo '+dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsString+'%');
            dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;
            dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency := PerDescEspecialTotalAnt;
            txtPercDescEspecial.setfocus;
            exit;
          end;

         FAT_RN_M_PED.fatPedCalcTotal;

         if (dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency <> PerDescEspecialTotalAnt) then
             begin
                if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                   if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
                      dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);
             end;
      end;

end;

procedure TFAT_FM_M_PED.txtPerDescontoEnter(Sender: TObject);
var
 SMPrincipal: TSMClient;
begin
  inherited;
  // Inserido por Maxsuel Victor , 30/01/2020
  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 2 then // sem pagamentos
     begin
       txtPerDesconto.Text := '98.95';
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 98.95;
     end;

  xPerDescIteAnterior := dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency;

  xPercDescPermRegIte := 0;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,1,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger);

       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         xPercDescPermRegIte :=
             SMPrincipal.enSgqPcpBuscarDescRegIte(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString,
                                                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE,2,0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger);
     end;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_PED_ITE);
     end;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=  xPercDescPerm;
end;

procedure TFAT_FM_M_PED.txtPerDescontoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     txtQtde.Focused    or txtVlrUnitario.Focused  or
     grdItens.Focused   then
     begin
       abort;
     end;

 { if (not btn_Add_Itens.Focused)  or (not txtBuscaItem.Focused) or
     (not cbbTamanho.Focused)     or (not cbbCor.Focused) or
     (not txtQtde.Focused)        or (not txtVlrDesconto.Focused) or
     (not txtVlrUnitario.Focused)  then
      begin
        abort;
      end; }


   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
      begin
        if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
           begin
             // if inserido por Maxsuel Victor em 19/06/2017
             if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency <>
                 xPerDescIteAnterior) then
                begin
                  ShowMessage('É preciso que zere o valor do desconto especial para poder dar um novo desconto nos itens!');
                  dmGeral.FAT_CD_M_PED_ITE.cancel;
                  txtBuscaItem.Enabled := true;
                  dmGeral.FAT_CD_M_PED_ITE.edit;
                  txtQtde.SetFocus;
                  abort;
                end;
           end;


        if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency <>
            xPerDescIteAnterior) then
            begin

              // if , adicionado em 14/09/2023, por Maxsuel Victor.

              if xint_unif_desc_reg then
                 begin
                    if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency >
                       xPercDescPerm + xPercDescPermRegIte ) then
                       begin
                         ShowMessage('Desconto informado excedeu o limite de desconto permitido.' + #13 +
                                     'Desconto informado: ' + FormatFloat('##,##0.00',dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency) +'%' + #13 +
                                     'Desconto limite (Desc. por região ' + FormatFloat('##,##0.00',xPercDescPerm) +
                                                         '% ) + (Específico do Grupo/Item ' + FormatFloat('##,##0.00',xPercDescPermRegIte) +'% )...: ' +
                                                             FormatFloat('##,##0.00',xPercDescPerm+xPercDescPermRegIte)+'%');
                         if FatValidBloqueiaPed('H') then
                            begin
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                              txtPerDesconto.SetFocus;
                              abort;
                            end;
                       end;
                 end
              else
                 begin
                   if (xPercDescPermRegIte > 0) and (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency >
                       xPercDescPermRegIte) then
                       begin
                         ShowMessage('Desconto informado excedeu o limite de desconto permitido.' + #13 +
                                     'Desconto informado: ' + FormatFloat('##,##0.00',dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency) +'%' + #13 +
                                     'Desconto limite: (Específico do Grupo/Item ' + FormatFloat('##,##0.00',xPercDescPermRegIte) +
                                                         '% ).');
                         if FatValidBloqueiaPed('H') then
                            begin
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                              txtPerDesconto.SetFocus;
                              abort;
                            end;
                       end
                   else
                       begin
                         if (xPercDescPermRegIte = 0) and
                            (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency > xPercDescPerm) then
                             begin
                               ShowMessage('Desconto informado excedeu o limite de desconto permitido.' + #13 +
                                           'Desconto informado: ' + FormatFloat('##,##0.00',dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency) +'%' + #13 +
                                           'Desconto limite: (Desc. por região ' + FormatFloat('##,##0.00',xPercDescPerm) +
                                                               '% ).');
                               if FatValidBloqueiaPed('H') then
                                  begin
                                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                                    txtPerDesconto.SetFocus;
                                    abort;
                                  end;
                             end;
                       end;
                 end;
            end;
      end;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False then
      begin
        if not (dmGeral.TesValPerDesconto(dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency,xPercDescPerm)) then
           begin
             if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency > 0) and
                (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency < 100) then
                 begin
                   if FatValidBloqueiaPed('H') then
                      begin
                        dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                        txtPerDesconto.SetFocus;
                        abort;
                      end;
                 end
             else
                 begin
                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                   txtPerDesconto.SetFocus;
                   abort;
                 end;
           end;
      end;
end;

procedure TFAT_FM_M_PED.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_M_PED.txtQtdeEnter(Sender: TObject);
var
  saldo_fisico: String;
  id_item, desc, desc_cor, desc_tam,id_cultura,desc_cultura, und, id_busca_item, TIPO_ITEM,SER_TERCEIRO,id_cor, id_tamanho, num_lote, pcp_obs_item,lote_gru : string;
begin
  inherited;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then
    begin
      // Quando for Colchões Globo não vai precisar verificar a tabela de saldo.
      if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) then
         begin
           if not dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                                 dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                                 dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').Text,
                                 dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text,
                                 dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,
                                 saldo_fisico) then
              begin
                 if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
                    begin
                       Showmessage('O registro de saldo não foi encontrado');
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString := '';
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString := '';
                       txtBuscaItem.SetFocus;
                       abort;
                    end
                 else
                    txtSaldo.Text := '0';
              end
           else
              begin
                 txtSaldo.Text := saldo_fisico;
              end;
         end
      else
         txtSaldo.Text := '0';

      xQtdeAnterior := dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency;


      if dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert] then
         begin
           pnItens.Enabled := true;

           id_item       := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;
           id_busca_item := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
           desc          := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;
           und           := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString;
           tipo_item     := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_tipo_item').AsString;
           ser_terceiro  := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_serterceiro').AsString;
           id_cor        := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsString;
           id_tamanho    := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString;
           id_cultura    := dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_CULTURA').AsString;
           num_lote      := '';
           desc_cor      := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString;
           desc_tam      := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').AsString;
           desc_cultura  := dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECUL').AsString;
           pcp_obs_item  := dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString;
           lote_gru      := dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_lote_gru').AsString;

           dmGeral.FAT_CD_M_PED_ITE.Cancel;
           // Comentado por maxsuel victor em 31/03/2018, a pedido da Colchões Globo pois poderá
             // repetir o mesmo item e cor no mesmo pedido.

          { if dmGeral.LocalizarRegItem(dmGeral.FAT_CD_M_PED_ITE,FAT_FM_M_PED.Name,id_item,id_cor,id_tamanho,
                                               dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,'') then
              begin
                ShowMessage('Item já inserido no pedido de venda.');
                dmGeral.FAT_CD_M_PED_ITE.Insert;
                txtBuscaItem.SetFocus;
                exit;
              end
           else
              begin    }
                dmGeral.FAT_CD_M_PED_ITE.Insert;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString           := id_item;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString     := id_busca_item;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_nomeite').AsString       := desc;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_id_und_venda').AsString  := und;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_tipo_item').AsString     := tipo_item;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('int_serterceiro').AsString   := ser_terceiro;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_cor').AsString            := id_cor;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString        := id_tamanho;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_CULTURA').AsString        := id_cultura;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString       := desc_cor;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMETAM').AsString       := desc_tam;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMECUL').AsString       := desc_cultura;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString      := pcp_obs_item;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_LOTE_GRU').AsString      := lote_gru;
                dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsString              := '';



                dmGeral.BUS_CD_C_ITE.close;
                dmGeral.BUS_CD_C_ITE.Data :=
                      dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString]));

                dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').Text :=
                        dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

             // end;
         end;
    end;
end;

procedure TFAT_FM_M_PED.txtQtdeExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  saldo_fisico,msg:String;
  existe_conferencia_de_carga: Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or grdItens.Focused then
     begin
       abort;
     end;

   {if (not btn_Add_Itens.Focused)  or (not txtBuscaItem.Focused) or
      (not cbbTamanho.Focused)     or (not cbbCor.Focused) or
      (not txtVlrUnitario.Focused) or (not txtPerDesconto.Focused) or
      (not txtVlrDesconto.Focused) then
      begin
        abort;
      end;  }

  if not (dmGeral.TesValQtde(dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end
  else
     begin
       if not FAT_RN_M_NFE.FatTestaQtdeIte(1,dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_PED_ITE) then
          begin
            ShowMessage('Produto sem saldo no estoque!');
            txtQtde.SetFocus;
            abort;
          end;


       if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency <>
           xQtdeAnterior) then
           begin
              if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency > dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde').OldValue) and
                 (dmGeral.FAT_CD_M_PED_ITE.FieldByName('qtde').OldValue > 0) then
                 begin
                    if dmGeral.FAT_CD_M_PED.FieldByName('situacao').AsInteger = 2 then // Em produção
                       begin
                         ShowMessage('Este pedido de venda já está em produção, por tanto, não é permitido alterar a qtde do item para maior.');
                         dmGeral.FAT_CD_M_PED_ITE.cancel;
                         txtBuscaItem.Enabled := true;
                         dmGeral.FAT_CD_M_PED_ITE.edit;
                         txtQtde.SetFocus;
                         abort;
                       end;
                 end;

              // por Maxsuel Victor , em 14/03/2025
              existe_conferencia_de_carga := false;
              SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
              try
                 existe_conferencia_de_carga := SMPrincipal.enSgqExistePistolagem_PcpRomPedIte(
                                                 dmgeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString,
                                                 dmgeral.FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsString);

                 if existe_conferencia_de_carga = true then
                    begin
                      ShowMessage('Este item já passou por conferência!' + #13 +
                                  'Para fazer esta alteração é necessário avisar o pessoal da expedição para que retire a conferência deste item.');
                      dmGeral.FAT_CD_M_PED_ITE.cancel;
                      txtBuscaItem.Enabled := true;
                      dmGeral.FAT_CD_M_PED_ITE.edit;
                      txtQtde.SetFocus;
                      abort;
                    end;

              finally
                 FreeAndNil(SMPrincipal);
              end;

              // --------------------------------------



              if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
                 begin
                   // if inserido por Maxsuel Victor em 19/06/2017
                   if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency <>
                       xVlrDescIteAnterior) then
                      begin
                        ShowMessage('Devido existir desconto especial, para você alterar a qtde do item é preciso que zere o valor do desconto especial');
                        dmGeral.FAT_CD_M_PED_ITE.cancel;
                        txtBuscaItem.Enabled := true;
                        dmGeral.FAT_CD_M_PED_ITE.edit;
                        txtQtde.SetFocus;
                        abort;
                      end;
                 end;
           end;

       // Inserido por Maxsuel Victor , 30/01/2020
       // Inserido por Maxsuel Victor , 30/04/2020, foi colocado no OnEnter do campo percentual de desconto.
      { if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 2 then // sem pagamentos
          begin
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 99.95;
            txtQtde.Text := '99.95';
          end; }



       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_ITE_CONJ').AsBoolean = true) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = false) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = false) then
         begin
            if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
              begin
                dmGeral.BusItensConj(0,dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);
                msg := '';
                dmGeral.BUS_CD_C_ITE_COJ.First;
                while not dmGeral.BUS_CD_C_ITE_COJ.eof do
                  begin
                    if not dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').Text,
                                 dmGeral.BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').Text,'0','0',
                                 dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').Text,
                                 saldo_fisico) then
                      begin
                        if msg = '' then
                          begin
                            msg := msg + dmGeral.BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').Text;
                          end
                        else
                          begin
                            msg := msg + ', '+dmGeral.BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').Text;
                          end;
                      end
                    else
                      begin
                         if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency*
                             dmGeral.BUS_CD_C_ITE_COJ.FieldByName('QTDE').AsCurrency) > StrToCurr(saldo_fisico) then
                           begin

                            if msg = '' then
                              begin
                               msg := msg + dmGeral.BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').Text;
                              end
                            else
                              begin
                                msg := msg + ', '+dmGeral.BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').Text;
                              end;

                           end;
                      end;

                    dmGeral.BUS_CD_C_ITE_COJ.Next;

                  end;

                if msg <> '' then
                  begin
                    ShowMessage('Item tem os seguintes itens conjugados com saldo insuficiente: '+#13+'Cód. item: '+ msg);
                    txtQtde.SetFocus;
                    abort;
                  end;
              end;
         end;
     end;
end;

procedure TFAT_FM_M_PED.txtQtdeParcExit(Sender: TObject);
var
 vlrParcela,vlrTotal:Currency;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if ((trim(txtGerFpg.text) = '') or
     (txtGerFpg.Text = '0')) and
     ((trim(txtQtdeParc.text) <> '') and
      (txtQtdeParc.Text <> '0'))  then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser prenchido.');
       abort;
     end;

  if (trim(txtQtdeParc.text) = '') or
     (txtQtdeParc.Text = '0') then
     begin
       txtGerFpg.Text := '';
       exit;
     end;

   vlrTotal := dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency;
   if (dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean=true) then
      begin
        if  dmGeral.FAT_CD_M_PED.FieldByName('ped_gera_fin_separado').AsBoolean then
           begin
             if (cbbTitPecaServico.ItemIndex = 0) then
               begin
                 vlrTotal := dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency;
                 if (vlrTotal = 0) then
                     begin
                       ShowMessage('O valor líquido dos produtos é zero.');
                       exit;
                     end;
               end;
             if (cbbTitPecaServico.ItemIndex = 1) then
               begin
                 vlrTotal := (dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                            dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency);
                 if (vlrTotal = 0) then
                    begin
                      ShowMessage('Valor líquido dos serviços é zero.');
                      exit;
                    end;
               end;
           end
        else
           begin
             vlrTotal := (dmGeral.FAT_CD_M_PED.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                          dmGeral.FAT_CD_M_PED.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                          dmGeral.FAT_CD_M_PED.FieldByName('VLR_TERC_LIQUIDO').AsCurrency);
             if (vlrTotal = 0) then
                 begin
                   ShowMessage('O valor da soma do (valor líquido dos produtos + serviços) é zero.');

                   exit;
                 end;
           end;
      end;

 



  if dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       ShowMessage('Pedido de venda sem valor.');
       exit;
     end;

  if strtoint(txtQtdeParc.text) < 0 then
     begin
       ShowMessage('O campo "Qtde de parcelas" não pode ser menor que 0.');
       txtQtdeParc.text := '0';
       txtQtdeParc.SetFocus;
       abort;
     end;


   dmGeral.BusFormaPgtos2(0,trim(txtGerFpg.text));

   if dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger <> 3 then  // ser for diferente de cartão
      begin
        if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
           //(not (dmGeral.BUS_CD_C_CLI.FieldByName('permitir_alterar_dias_tit_ped').AsBoolean=true)) and
           (dmGeral.BUS_CD_C_CLI_PRD.RecordCount >0) and
           (StrToInt(txtQtdeParc.text)>dmGeral.BUS_CD_C_CLI_PRD.RecordCount) then
           begin
             ShowMessage('Nº de parcelas é maior que o nº de prazos cadastrado no cliente.');
             txtQtdeParc.text := '0';
             txtQtdeParc.SetFocus;
             abort;
           end;
      end;


   vlrParcela := RoundTo(vlrTotal/
                       (strtoint(txtQtdeParc.text)*1.0),-2 );


   if not (dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsString='') then
     begin
       IF  vlrParcela <
           dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsCurrency then
         begin
          ShowMessage('O valor mínimo permitido do titulo é '+ FormatCurr('###,###,##0.00' ,dmGeral.BUS_CD_C_FPG2.FieldByName('VLR_MIN_PARCELA').AsCurrency) );
          txtQtdeParc.text := '0';
          txtQtdeParc.SetFocus;
          abort;
         end;
     end;

   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_dta_pedido').AsBoolean then
      begin
        ShowMessage('A data do pedido será atualizada para data de hoje.');
        dmGeral.FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime := xDataSis;
      end;



   if (dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean=true) then
     begin
       if (dmGeral.FAT_CD_M_PED.FieldByName('ped_gera_fin_separado').AsBoolean=true) then
         begin
           if (cbbTitPecaServico.ItemIndex = 0) then
            begin
              dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), vlrTotal, dmGeral.FAT_CD_M_PED_TIT,0);
              pcTitulos.TabIndex := 0;
            end;

           if (cbbTitPecaServico.ItemIndex = 1) then
            begin
               dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text),vlrTotal, dmGeral.FAT_CD_M_PED_TIT_SER,0);
               pcTitulos.TabIndex := 1;
            end;
         end
       else
         begin
           dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), vlrTotal, dmGeral.FAT_CD_M_PED_TIT,0);
           pcTitulos.TabIndex := 0;
         end;
     end
   else
     begin
        dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), vlrTotal, dmGeral.FAT_CD_M_PED_TIT,0);
        pcTitulos.TabIndex := 0;
     end;






  xCred_Util := 0;
  xCred_pec := 0;
  xCred_serv := 0;
  dmGeral.FAT_CD_M_PED_TIT.Cancel;
  dmGeral.FAT_CD_M_PED_TIT.First;
  while (not dmGeral.FAT_CD_M_PED_TIT.Eof) do
    begin
       if (dmGeral.FAT_CD_M_PED_TIT.FieldByName('INT_DOCIMPRESSO').AsString = '7') then
          begin
            xCred_Util := xCred_Util + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
            xCred_pec := xCred_pec + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
          end;
       dmGeral.FAT_CD_M_PED_TIT.Next;
    end;


  dmGeral.FAT_CD_M_PED_TIT_SER.Cancel;
  dmGeral.FAT_CD_M_PED_TIT_SER.First;
  while (not dmGeral.FAT_CD_M_PED_TIT_SER.Eof) do
    begin
       if (dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('INT_DOCIMPRESSO').AsString = '7') then
          begin
            xCred_Util := xCred_Util + dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('VLR_TITULO').AsCurrency;
            xCred_serv := xCred_serv + dmGeral.FAT_CD_M_PED_TIT_SER.FieldByName('VLR_TITULO').AsCurrency;
          end;
       dmGeral.FAT_CD_M_PED_TIT_SER.Next;
    end;

  if (dmGeral.FAT_CD_M_PED.FieldByName('separa_prod_serv').AsBoolean=true) and
      (dmGeral.FAT_CD_M_PED.FieldByName('ped_gera_fin_separado').AsBoolean=true)  then
    BEGIN
       dmGeral.FAT_CD_M_PED.FieldByName('vlr_cred_produtos').AsCurrency := xCred_pec;
       dmGeral.FAT_CD_M_PED.FieldByName('vlr_cred_servicos').AsCurrency := xCred_serv;
    END;


  dmGeral.FAT_CD_M_PED.FieldByName('VLR_CREDITO').AsCurrency := xCred_Util;

  xCred_disp := dmGeral.BusSaldoCreCli(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString)-xCred_util;
  txtCredDisp.Text := FormatCurr('0.00',xCred_disp);


  ExibirFormasPgto;

  txtGerFpg.text   := '';
  txtQtdeParc.text := '0';

  if (pcTitulos.TabIndex = 0) then
    begin
      if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then
         begin
           if (not dmGeral.BUS_CD_C_CLI_PRD.IsEmpty) and
              (not (dmGeral.BUS_CD_C_CLI.FieldByName('permitir_alterar_dias_tit_ped').AsBoolean = true)) then
             begin
               pnTitulos.Enabled := false;
               btn_Add_Fpg.Enabled := false;
              // grdFpg.OnMouseUp := nil;
             end
           else
              begin
                pnTitulos.Enabled := True;
                dmGeral.FAT_CD_M_PED_TIT.edit;
                txtFormaPgto.SetFocus;
              end;
         end;
    end;

  if (pcTitulos.TabIndex = 1) then
    begin
      if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then
         begin
           if (not dmGeral.BUS_CD_C_CLI_PRD.IsEmpty) and
              (not (dmGeral.BUS_CD_C_CLI.FieldByName('permitir_alterar_dias_tit_ped').AsBoolean = true)) then
             begin
               pnlTitSer.Enabled := false;
               btn_Add_Fpg_ser.Enabled := false;
              // grdFpg.OnMouseUp := nil;
             end
           else
              begin
                pnlTitSer.Enabled := True;
                dmGeral.FAT_CD_M_PED_TIT_SER.edit;
                txtFormaPgtoSer.SetFocus;
              end;
         end;
    end;


end;

procedure TFAT_FM_M_PED.txtTextoCondPgtoExit(Sender: TObject);
begin
  inherited;
  cbbCondicaoPagamento.Width := 198;

  lblTextoCondPgto.Visible := false;
  txtTextoCondPgto.Visible := false;
  FAT_FM_M_PED.Refresh;
  cbbCondicaoPagamento.Refresh;

end;

procedure TFAT_FM_M_PED.txtTotalVlrDescEnter(Sender: TObject);
begin
  inherited;
  vlrDescTotalAnt :=  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency;
end;

procedure TFAT_FM_M_PED.txtTotalVlrDescExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;

  if btnGrava.Focused or btnCancelar.Focused then
     begin
       exit;
     end;

   if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency >=
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency) then
      begin
        ShowMessage('O valor desconto não pode ser maior ou igual total valor bruto.');
        dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
        exit;
      end;


   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False) then
      begin
         perDesconto := 0;
         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency >0) then
           begin
            perDesconto := (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency /
                         dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency)*100;
           end;

        if (perDesconto> dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsCurrency) then
          begin
            ShowMessage('O percentual de desconto permitido é no máximo '+dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsString+'%');
            dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
            exit;
          end;
      end;

   try
    dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
    dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
    codItens := '';
    if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
      begin

        FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                  dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
        if (codItens <>'') then
           begin
             ShowMessage('Os seguintes itens apresentam desconto acima do permitido:'+#13+codItens);

             if FatValidBloqueiaPed('H') then
                begin
                  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                  FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                      dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                  txtTotalVlrDesc.SetFocus;
                end;


           end;
      end
    else
      begin
        FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                  dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,false,xint_unif_desc_reg);
      end;
   finally
     dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
     dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
     dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
     dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
   end;

   FAT_RN_M_PED.fatPedCalcTotal;


  if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency >0) then
    begin
     btn_Add_itens.Enabled := false;
     grdItens.OnMouseUp := nil;
    end
  else if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency =0) then
     begin
       btn_Add_itens.Enabled := true;
       grdItens.OnMouseUp := grdItensMouseUp;
     end;


end;

procedure TFAT_FM_M_PED.txtVlrUnitarioExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or
     txtQtde.Focused or
     grdItens.Focused  then
     begin
       abort;
     end;

  if (not btn_Add_Itens.Focused) and (not txtBuscaItem.Focused) and
      (not cbbTamanho.Focused)   and (not cbbCor.Focused) and
      (not txtQtde.Focused)      and (not txtPerDesconto.Focused) and
      (not txtVlrDesconto.Focused) then
      begin
        abort;
      end;


  dmGeral.BUS_CD_C_ITE.close;
  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_PED_ITEid_item.AsString]));
  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_PEDid_condicao_pag.AsString);
  if not (dmGeral.TesValVlrUnitPed(dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
        if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency <=0) then
            begin
              txtVlrUnitario.SetFocus;
              abort;
            end;

        if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency <
           dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
           begin
             if FatValidBloqueiaPed('E') then
                begin
                  txtVlrUnitario.SetFocus;
                  abort;
                end;
           end;
     end;
  //showmessage(GetEnumName(TypeInfo(TDataSetState),integer(dmGeral.FAT_CD_M_PED_ITE.State))); ->  "unit: TypeInfo"
end;

function TFAT_FM_M_PED.VerifCamposPaiObrig: Boolean;
begin
   result := true;

   if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger = 0 then
      begin
        ShowMessage('O campo "Cliente" deve ser preenchido.');
        result := false;
      end;
   if dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger = 0 then
      begin
        ShowMessage('O campo "Condição de pagamento" deve ser preenchido.');
        result := false;
      end;
end;
procedure TFAT_FM_M_PED.VerifRestricoes;
var
//  lPonteiroItens: TBookmark;
  lVlrTotTitPrazo: Currency;
begin

  { Restrições:
    A -	Sem Limite de Credito
    B -	Cliente Com Debito na Empresa
    C -	Produto com estoque negativo
    D -	Cliente com credito encerrado
    E - Pedido com preço alterado pelo vendedor
    F - Envia para Carga
    G - Pedido reaberto (Momento de cancalemento de nota fiscal de venda)
    H - Produto com desconto acima do limite
  }

  { Caso a venda seja a prazo, o sistema irá somar as formas de pagamento
    que são a prazo e verifica se ultrapassou o limite do cliente.
  }



  dmGeral.FAT_CD_M_PED.FieldByName('ID_USUARIO_LIB').Text          := '';

  if not (pos('G',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
     dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').text  := '';

  dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 0;

  fatPedVerifRestricoes;



   if not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin
        if (dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').Text = '') then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 1;
           end;
      end;
end;

procedure TFAT_FM_M_PED.Visualizarinformaesdaimpresso1Click(Sender: TObject);
begin
  inherited;
  ChamarDadosDaImpressao(0);
end;

procedure TFAT_FM_M_PED.cbbMecPaiEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN_MEC.Close;
  dmGeral.BUS_CD_C_FUN_MEC.Open;
  cbbMecPai.DropDown;
end;

procedure TFAT_FM_M_PED.cbbMecPaiExit(Sender: TObject);
begin
  inherited;
  if cbbMecPai.Text='' then
    dmgeral.FAT_CD_M_PED.FieldByname('ID_MECANICO').AsString := '';


end;

procedure TFAT_FM_M_PED.txtDescBascEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(true);
  vlrDescBasicTotalAnt :=  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency;
end;

procedure TFAT_FM_M_PED.txtDescBascExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;

  {if btnGrava.Focused or btnCancelar.Focused then
     begin
       exit;
     end; }
   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin
         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0) and
            (vlrDescBasicTotalAnt <> dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency) then
            begin
              Showmessage('O valor do campo "Desconto especial" será apagado!');
              dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
              dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;
              if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                 if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
                    dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);
            end;

         if dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency >=
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency) then
                  begin
                    ShowMessage('O valor do desconto básico não pode ser maior ou igual ao total valor bruto.');
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescBasc.SetFocus;
                    exit;
                  end;
            end;

       { if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency) >=
           (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency) then
            begin
              ShowMessage('O valor do desconto básico não pode ser maior ou igual ao total valor bruto.');
              dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
              txtDescBasc.SetFocus;
              exit;
            end;   }


         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency;

          dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency :=
            roundTo( ( (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency * 100) /
                dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency ), -2);

         try
          dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
          dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
          codItens := '';


          if (vlrDescBasicTotalAnt <> dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency) then
              FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                    dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);

          if (codItens <>'') then
             begin
               if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency > 0) and
                  (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency <> vlrDescBasicTotalAnt) then
                  begin
                     ShowMessage('Os seguintes itens apresentam desconto acima do permitido:'+#13+codItens);

                     dmGeral.CAD_CD_C_FUN.Close;
                     dmGeral.CAD_CD_C_FUN.Data :=
                           dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([0,xFuncionario]));

                     if dmGeral.CAD_CD_C_FUN.FieldByName('seg_per_desc_maior').AsBoolean then
                        begin
                          Application.CreateForm(TFAT_FM_M_PED_SEN,FAT_FM_M_PED_SEN);
                          FAT_FM_M_PED_SEN.ShowModal;
                          if not FAT_FM_M_PED_SEN.xPermitePedSen then
                             begin
                               if FatValidBloqueiaPed('H') then
                                  begin
                                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                    FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                                    dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                                    txtDescBasc.SetFocus;
                                    exit;
                                  end;
                             end;
                        end
                     else
                        begin
                          if FatValidBloqueiaPed('H') then
                              begin
                                dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                                dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                                txtDescBasc.SetFocus;
                                exit;
                              end;
                        end;
                  end;
             end;
         finally
           dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
           dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
           dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
           dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
         end;

         FAT_RN_M_PED.fatPedCalcTotal;

            if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency <> vlrDescBasicTotalAnt) then
             begin
                if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                   if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
                      dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);
             end;


       { if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency >0) then
          begin
           btn_Add_itens.Enabled := false;
           grdItens.OnMouseUp := nil;
          end
        else if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency =0) then
           begin
             btn_Add_itens.Enabled := true;
             grdItens.OnMouseUp := grdItensMouseUp;
           end;      }
      end;
  // if txtPercDescEspecial.canfocus then
  //    txtPercDescEspecial.setfocus;
end;

procedure TFAT_FM_M_PED.txtDescEspecialEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(true);
  vlrDescEspecialTotalAnt :=  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency;
end;

procedure TFAT_FM_M_PED.txtDescEspecialExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;


   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin

         if dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency >=
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency) then
                  begin
                    ShowMessage('O valor do desconto especial não pode ser maior ou igual total valor líquido.');
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescEspecial.setfocus;
                    exit;
                  end;
            end;

         if dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency +
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency) >=
                   (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency) then
                  begin
                    ShowMessage('O valor do (desconto básico + desconto especial) não pode ser maior ou igual ao total valor bruto.');
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescEspecial.setfocus;
                    exit;
                  end;
            end;

         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency;

         perDesconto := 0;
         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency >0) then
           begin
            perDesconto := roundTo( (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency /
                         (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency-
                         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency))*100,-2);

            dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency :=
                   roundTo( (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency /
                         (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency-
                         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency))*100,-2);

           end;

        if (perDesconto> dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsCurrency) then
          begin
            ShowMessage('O percentual de desconto especial permitido é no máximo '+dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsString+'%');
            dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
            dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := vlrDescEspecialTotalAnt;
            txtDescEspecial.setfocus;
            exit;
          end;


         {try
          dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
          dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
          codItens := '';

          if txtDescEspecial.ReadOnly = false then
             begin
                FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                          dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true);
                if (codItens <>'') then
                   begin
                     if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0) and
                        (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency <> vlrDescEspecialTotalAnt) then
                        begin
                           ShowMessage('Os seguintes itens apresentam desconto acima do permitido:'+#13+codItens);

                           if dmGeral.CAD_CD_C_FUN.FieldByName('seg_per_desc_maior').AsBoolean then
                              begin
                                Application.CreateForm(TFAT_FM_M_PED_SEN,FAT_FM_M_PED_SEN);
                                FAT_FM_M_PED_SEN.ShowModal;
                                if not FAT_FM_M_PED_SEN.xPermitePedSen then
                                   begin
                                     if FatValidBloqueiaPed('H') then
                                        begin
                                          dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                          dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency := 0;
                                          dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                          FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                                          dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true);
                                          txtDescEspecial.setfocus;
                                          exit;
                                        end;
                                   end;
                              end
                           else
                              begin
                                if FatValidBloqueiaPed('H') then
                                    begin
                                      dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                      dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency := 0;
                                      dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                      FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                                      dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true);
                                      txtDescEspecial.setfocus;
                                      exit;
                                    end;
                              end;
                        end;
                   end;
             end;

         finally
           dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
           dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
           dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
           dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
         end;  }



         FAT_RN_M_PED.fatPedCalcTotal;

         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency <> vlrDescEspecialTotalAnt) then
             begin
                if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                   if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
                      dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);
             end;
      end;


      // Comentado em 25-10-22 por Maxsuel Victor, esse código abaixo foi todo substituído pelo código acima,
         // pois o cálculo do VALOR DO DESCONTO DOS ITENS não poderá ter mais o  VALOR DO DESCONTO ESPECIAL
         // a pedido do funcionário Caio (Colchões Globo)

     { if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin

         if dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency >=
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency) then
                  begin
                    ShowMessage('O valor do desconto especial não pode ser maior ou igual total valor líquido.');
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescEspecial.setfocus;
                    exit;
                  end;
            end;

         if dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency +
                   dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency) >=
                   (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency) then
                  begin
                    ShowMessage('O valor do (desconto básico + desconto especial) não pode ser maior ou igual ao total valor bruto.');
                    dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescEspecial.setfocus;
                    exit;
                  end;
            end;

         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency;

         perDesconto := 0;
         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency >0) then
           begin
            perDesconto := roundTo( (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency /
                         (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency-
                         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency))*100,-2);

            dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency :=
                   roundTo( (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency /
                         (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency-
                         dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency))*100,-2);

           end;

        if (perDesconto> dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsCurrency) then
          begin
            ShowMessage('O percentual de desconto especial permitido é no máximo '+dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsString+'%');
            dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
            dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := vlrDescEspecialTotalAnt;
            txtDescEspecial.setfocus;
            exit;
          end;


         try
          dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
          dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
          codItens := '';

          if txtDescEspecial.ReadOnly = false then
             begin
                FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                          dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true);
                if (codItens <>'') then
                   begin
                     if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0) and
                        (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency <> vlrDescEspecialTotalAnt) then
                        begin
                           ShowMessage('Os seguintes itens apresentam desconto acima do permitido:'+#13+codItens);

                           if dmGeral.CAD_CD_C_FUN.FieldByName('seg_per_desc_maior').AsBoolean then
                              begin
                                Application.CreateForm(TFAT_FM_M_PED_SEN,FAT_FM_M_PED_SEN);
                                FAT_FM_M_PED_SEN.ShowModal;
                                if not FAT_FM_M_PED_SEN.xPermitePedSen then
                                   begin
                                     if FatValidBloqueiaPed('H') then
                                        begin
                                          dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                          dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency := 0;
                                          dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                          FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                                          dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true);
                                          txtDescEspecial.setfocus;
                                          exit;
                                        end;
                                   end;
                              end
                           else
                              begin
                                if FatValidBloqueiaPed('H') then
                                    begin
                                      dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                      dmGeral.FAT_CD_M_PED.FieldByName('PER_DESC_BASICO').AsCurrency := 0;
                                      dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                      FAT_RN_M_PED.FatRatVlrEntreItensPedido2(dmGeral.FAT_CD_M_PEDvlr_bruto.AsCurrency,
                                      dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true);
                                      txtDescEspecial.setfocus;
                                      exit;
                                    end;
                              end;
                        end;
                   end;
             end;

         finally
           dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
           dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
           dmGeral.FAT_CD_M_PED_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
           dmGeral.FAT_CD_M_PED_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
         end;



         FAT_RN_M_PED.fatPedCalcTotal;

         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESC_ESPECIAL').AsCurrency <> vlrDescEspecialTotalAnt) then
             begin
                if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                   if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
                      dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);
             end;
      end;}
end;

procedure TFAT_FM_M_PED.ChamaMecanicoTerceiro;
begin
  if ((dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_UTILIZA_MECANICO').AsBoolean) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('informar_mec_por_item_ped').AsBoolean)) then
     begin

       pnlMecTer.Left  := 122;
       pnlMecTer.Top   := pnItens.Top;


       pnlMecTer.Visible := True;
       cbbMecanico.SetFocus;
     end;


end;

procedure TFAT_FM_M_PED.ChamarDadosDaImpressao(tipo: integer);
begin

  Application.CreateForm(TFAT_FM_M_PED_MOT,FAT_FM_M_PED_MOT);
  cdsPedido   := BUS_CD_M_PED;
  xFuncPedMot := xFuncionario;

  if tipo = 0 then
     begin
       FAT_FM_M_PED_MOT.pcDadosImp.ActivePage := FAT_FM_M_PED_MOT.tsDadosImp;
       FAT_FM_M_PED_MOT.tsMotivo.TabVisible := false;
     end;

  if tipo = 1 then
     begin
       FAT_FM_M_PED_MOT.pcDadosImp.ActivePage := FAT_FM_M_PED_MOT.tsMotivo;
       FAT_FM_M_PED_MOT.tsDadosImp.TabVisible := false;
     end;

  FAT_FM_M_PED_MOT.ShowModal;
  FreeAndNil(FAT_FM_M_PED_MOT);

end;

procedure TFAT_FM_M_PED.cbbMecanicoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN_MEC.Close;
  dmGeral.BUS_CD_C_FUN_MEC.Open;
  cbbMecanico.DropDown;
end;

procedure TFAT_FM_M_PED.cbbMecanicoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       pnlMecTer.Visible := false;
       Exit;
     end;


   if (not (dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_MECANICO').AsInteger>0)) then
     begin
       ShowMessage('Mecânico deve ser preenchido.');
       cbbMecanico.SetFocus;
       exit;
     end;


   pnItens.Enabled := true;
   txtQtde.SetFocus;
   pnlMecTer.Visible := False;
end;

procedure TFAT_FM_M_PED.cbbModFreteEnter(Sender: TObject);
begin
  inherited;
  cbbModFrete.DropDown;
end;

procedure TFAT_FM_M_PED.cbbModFreteExit(Sender: TObject);
begin
  inherited;

    if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 1) then
      begin
        dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             (dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_FRETE').AsCurrency);
      end;
    if (dmGeral.FAT_CD_M_PED.FieldBYName('MOD_FRETE').AsInteger = 2) then
      begin
        if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('frete_fob_total_ped').AsBoolean = true then
          begin
            dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency +
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_FRETE').AsCurrency;
          end
        else
          begin
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_LIQUIDO').AsCurrency :=
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_BRUTO').AsCurrency -
             dmGeral.FAT_CD_M_PED.FieldBYName('VLR_DESCONTO').AsCurrency;
          end;

      end;


end;

procedure TFAT_FM_M_PED.cbbMotDesnEnter(Sender: TObject);
begin
  inherited;
  cbbMotDesn.DropDown;
end;

end.

