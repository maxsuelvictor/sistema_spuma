unit enSoftMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, cxDropDownEdit, cxTextEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxRibbon, Vcl.ImgList,
  dxBar, cxBarEditItem, cxClasses, Data.DB, Vcl.DBCtrls, dxRibbonMiniToolbar,
  dxStatusBar, dxRibbonStatusBar, enFunc, ShellAPI, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, dxBevel,
  Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, dxRibbonCustomizationForm,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, IPPeerClient,
  Datasnap.DSCommon, Data.DBXJson, System.JSON,DataSnap.DSSession;

type


  Tmythread = class (tthread)

  private
    //count :integer;
    procedure AtualizaVCL;

  protected
     procedure Execute(); Override;
  end;

  TfrmSoftMenu = class(TForm)
    dsParametros: TDataSource;
    MenuManager: TdxBarManager;
    MenuMovimentacoes: TdxBar;
    MenuSeguranca: TdxBar;
    MenuEmpresa: TdxBar;
    MenuConsultas: TdxBar;
    MenuRelatoriosCadTab: TdxBar;
    menuPCP: TdxBar;
    menuTabelasCadastros: TdxBar;
    smiEstoque: TdxBarSubItem;
    smiFaturamento: TdxBarSubItem;
    CSU_MN_C_ITE: TdxBarLargeButton;
    smiContasPagar: TdxBarSubItem;
    smiContasReceber: TdxBarSubItem;
    smiBancoCaixa: TdxBarSubItem;
    smiSeguranca: TdxBarSubItem;
    cbbEmpresa: TcxBarEditItem;
    txtFuncionario: TcxBarEditItem;
    CMP_MN_M_SOL: TdxBarButton;
    EST_MN_M_NFE: TdxBarButton;
    EST_MN_M_NFS: TdxBarButton;
    FAT_MN_M_ORC: TdxBarButton;
    FAT_MN_M_CXA: TdxBarButton;
    FIN_MN_M_REC: TdxBarButton;
    FIN_MN_M_RBX: TdxBarButton;
    FIN_MN_M_COB: TdxBarButton;
    FIN_MN_M_RCR: TdxBarButton;
    FIN_MN_M_CTA_ABE: TdxBarButton;
    FIN_MN_M_CTA_BCO: TdxBarButton;
    FIN_MN_M_CTA_CON: TdxBarButton;
    CAD_MN_C_PES: TdxBarButton;
    CAD_MN_Logoff: TdxBarButton;
    smiRelatoriosTabelas: TdxBarSubItem;
    smiRelatoriosCadastros: TdxBarSubItem;
    CAD_MN_R_CLI: TdxBarButton;
    CAD_MN_R_CNE: TdxBarButton;
    CAD_MN_R_CID: TdxBarButton;
    CAD_MN_R_RAM: TdxBarButton;
    CAD_MN_R_PEC: TdxBarButton;
    CAD_MN_R_PCT: TdxBarButton;
    CAD_MN_R_CCU: TdxBarButton;
    CAD_MN_R_CTC: TdxBarButton;
    CAD_MN_R_LTO: TdxBarButton;
    CAD_MN_R_TIF: TdxBarButton;
    CAD_MN_R_TME: TdxBarButton;
    CAD_MN_R_PES: TdxBarButton;
    CAD_MN_R_UND: TdxBarButton;
    CAD_MN_R_NCM: TdxBarButton;
    CAD_MN_R_TRI: TdxBarButton;
    CAD_MN_R_CFO: TdxBarButton;
    CAD_MN_R_INF: TdxBarButton;
    smiCadastrosPCP: TdxBarSubItem;
    smiControles: TdxBarSubItem;
    PCP_MN_C_MTA: TdxBarButton;
    PCP_MN_C_REG: TdxBarButton;
    PCP_MN_C_CNF: TdxBarButton;
    PCP_MN_C_DIS: TdxBarButton;
    PCP_MN_C_FTE: TdxBarButton;
    PCP_MN_C_TLM: TdxBarButton;
    smiRevisao: TdxBarSubItem;
    smiTabelas: TdxBarSubItem;
    smiCadastros: TdxBarSubItem;
    PCP_MN_C_CRG: TdxBarButton;
    CAD_MN_C_CNE: TdxBarButton;
    CAD_MN_C_CID: TdxBarButton;
    CAD_MN_C_RAM: TdxBarButton;
    CAD_MN_C_CIN: TdxBarButton;
    CAD_MN_C_ECF: TdxBarButton;
    CAD_MN_C_CPG: TdxBarButton;
    CAD_MN_C_INF: TdxBarButton;
    CAD_MN_C_CFO: TdxBarButton;
    CAD_MN_C_NAT: TdxBarButton;
    CAD_MN_C_GRU: TdxBarButton;
    CAD_MN_C_TRI: TdxBarButton;
    CAD_MN_C_NCM: TdxBarButton;
    CAD_MN_C_UND: TdxBarButton;
    CAD_MN_C_FPG: TdxBarButton;
    CAD_MN_C_TME: TdxBarButton;
    CAD_MN_C_TIF: TdxBarButton;
    CAD_MN_C_PEC: TdxBarButton;
    CAD_MN_C_LTO: TdxBarButton;
    CAD_MN_C_CTC: TdxBarButton;
    CAD_MN_C_CCU: TdxBarButton;
    CAD_MN_C_PCT: TdxBarButton;
    CAD_MN_C_CLI: TdxBarButton;
    CAD_MN_C_FOR: TdxBarButton;
    CAD_MN_C_ITE: TdxBarButton;
    CAD_MN_C_FUN: TdxBarButton;
    PCP_MN_C_ROT: TdxBarButton;
    CAD_MN_C_COR: TdxBarButton;
    EST_MN_M_CTE: TdxBarButton;
    FAT_MN_M_PED: TdxBarButton;
    FAT_MN_M_POS: TdxBarButton;
    PCP_MN_M_ROM: TdxBarButton;
    FIN_MN_M_CAR: TdxBarButton;
    FIN_MN_M_PAG: TdxBarButton;
    FIN_MN_M_PBX: TdxBarButton;
    FIN_MN_M_CTA_CXA: TdxBarButton;
    CAD_MN_R_COR: TdxBarButton;
    CAD_MN_R_FUN: TdxBarButton;
    CAD_MN_C_SET: TdxBarButton;
    smiRelatoriosEvidencias: TdxBarSubItem;
    CAD_MN_R_ALM: TdxBarButton;
    PCP_MN_R_CRG: TdxBarButton;
    PCP_MN_R_LME: TdxBarButton;
    CAD_MN_R_ITE: TdxBarButton;
    CAD_MN_R_FOR: TdxBarButton;
    PCP_MN_R_ACR: TdxBarButton;
    PCP_MN_R_ETQ: TdxBarButton;
    ImagensMenu: TImageList;
    ImagensMenuDesabilitadas: TImageList;
    imgOutros: TImageList;
    rbMenu: TdxRibbon;
    tabPrincipal: TdxRibbonTab;
    tabConsultas: TdxRibbonTab;
    tabRelatorios: TdxRibbonTab;
    CMP_MN_M_PED: TdxBarButton;
    CMP_MN_M_COT: TdxBarButton;
    PCP_MN_C_CDR: TdxBarButton;
    EST_MN_M_NFD: TdxBarButton;
    EST_MN_M_NFC: TdxBarButton;
    smiConsultasPCP: TdxBarSubItem;
    PCP_MN_C_RPT: TdxBarButton;
    CAD_MN_C_VEI: TdxBarButton;
    CAD_MN_C_TDF: TdxBarButton;
    CAD_MN_C_TXS: TdxBarButton;
    PCP_MN_C_PRQ: TdxBarButton;
    btnMaquinasEquipamentos: TdxBarSubItem;
    PCP_MN_C_MEQ: TdxBarButton;
    PCP_MN_M_LPR: TdxBarButton;
    PCP_MN_C_CRQ: TdxBarButton;
    PCP_MN_M_NCF: TdxBarButton;
    PCP_MN_M_CAC: TdxBarButton;
    PCP_MN_C_CDP: TdxBarButton;
    PCP_MN_M_RVC: TdxBarButton;
    PCP_MN_M_VVE: TdxBarButton;
    smiProducao: TdxBarSubItem;
    smiComprasPCP: TdxBarSubItem;
    smiEstoquePCP: TdxBarSubItem;
    smiGestaoClientesPCP: TdxBarSubItem;
    btnComprasRelatorios: TdxBarSubItem;
    PCP_MN_R_RAA: TdxBarButton;
    PCP_MN_M_OPR: TdxBarButton;
    PCP_MN_M_OPB: TdxBarButton;
    PCP_MN_M_PSC: TdxBarButton;
    CSU_MN_M_PSC: TdxBarButton;
    PCP_MN_M_ACR: TdxBarButton;
    PCP_MN_M_MCP: TdxBarButton;
    PCP_MN_M_CME: TdxBarButton;
    FAT_MN_M_NFE_IQM: TdxBarButton;
    EST_MN_M_NFS_PCP: TdxBarButton;
    PCP_MN_C_PRP: TdxBarButton;
    EST_MN_M_NFC_PCP: TdxBarButton;
    CMP_MN_M_APR: TdxBarButton;
    PCP_MN_M_IQF: TdxBarButton;
    PCP_MN_M_RAA: TdxBarButton;
    CAD_MN_C_MVE: TdxBarButton;
    PCP_MN_M_CRP: TdxBarButton;
    CAD_MN_C_ALM: TdxBarButton;
    PCP_MN_C_CIN: TdxBarButton;
    PCP_MN_C_TIN: TdxBarButton;
    PCP_MN_C_MDE: TdxBarButton;
    PCP_MN_C_INS: TdxBarButton;
    FIN_MN_M_REC_REM: TdxBarButton;
    EST_MN_M_MAL: TdxBarButton;
    CSU_MN_C_FOR: TdxBarLargeButton;
    PCP_MN_M_ORS: TdxBarButton;
    txtEmpresa: TdxBarEdit;
    ilStatusBarImages: TImageList;
    dxStatusBar: TdxRibbonStatusBar;
    CAD_MN_C_PAR: TdxBarButton;
    PCP_MN_C_ESP: TdxBarButton;
    PCP_MN_R_PSC: TdxBarButton;
    smiFaturamentoPCP: TdxBarSubItem;
    PCP_MN_M_LBE: TdxBarButton;
    FAT_MN_M_NFE_FRE: TdxBarButton;
    smiFinanceiro: TdxBarSubItem;
    gruQualidade: TdxBar;
    btnCompras: TdxBarSubItem;
    btnAlmoxarifado: TdxBarSubItem;
    btnEstoque: TdxBarSubItem;
    btnSgq: TdxBarSubItem;
    btnRecursosHumanos: TdxBarSubItem;
    smiConsultaProducao: TdxBarSubItem;
    smiRelatoriosFinanceiro: TdxBarSubItem;
    FAT_MN_R_NFE_ITE_IQM: TdxBarButton;
    EST_MN_M_XML: TdxBarButton;
    PCP_MN_C_TPP: TdxBarButton;
    FIN_MN_M_BOL: TdxBarButton;
    smiDocumentos: TdxBarSubItem;
    smiEvidencias: TdxBarSubItem;
    btnManutencao: TdxBarSubItem;
    btnAcaoCorretiva: TdxBarSubItem;
    btnSuprimentos: TdxBarSubItem;
    btnSac: TdxBarSubItem;
    btnRastreabilidade: TdxBarSubItem;
    btnRecursosHumanosEvidencias: TdxBarSubItem;
    btnManuaisProcedimentos: TdxBarSubItem;
    btnFormularioUso: TdxBarSubItem;
    btnFotosFilmes: TdxBarSubItem;
    btnOrganismoCertificador: TdxBarSubItem;
    btnOriginais: TdxBarSubItem;
    btnNormasLegislacao: TdxBarSubItem;
    btnControleDocumentos: TdxBarSubItem;
    btnManutencaoManutencao: TdxBarSubItem;
    btnCalibracao: TdxBarSubItem;
    btnRevisao: TdxBarSubItem;
    CAD_MN_C_TAM: TdxBarButton;
    PCP_MN_C_ORI: TdxBarButton;
    FAT_MN_M_LIB: TdxBarButton;
    PCP_MN_C_LME: TdxBarButton;
    PCP_MN_R_PRP: TdxBarButton;
    PCP_MN_R_PRQ: TdxBarButton;
    btnTabelas: TdxBarSubItem;
    btnSgqCadastros: TdxBarSubItem;
    btnTabelasRelatorios: TdxBarSubItem;
    btnSgqRelatorios: TdxBarSubItem;
    CAD_MN_R_GRU: TdxBarButton;
    btnSuprimentosRelatorios: TdxBarSubItem;
    btnSacRelatorios: TdxBarSubItem;
    btnRastreabilidadeRelatorios: TdxBarSubItem;
    btnRecursosHumanosRelatorios: TdxBarSubItem;
    MenuMovimentacoesRelatorios: TdxBar;
    btnEstoqueRelatorios: TdxBarSubItem;
    CAD_MN_C_PRG: TdxBarButton;
    CAD_MN_R_FPG: TdxBarButton;
    MenuManagerSegurancaRelatorios: TdxBar;
    smiRelatoriosSeguranca: TdxBarSubItem;
    CAD_MN_R_PRG: TdxBarButton;
    CAD_MN_R_TAM: TdxBarButton;
    CAD_MN_R_SET: TdxBarButton;
    CAD_MN_R_TDF: TdxBarButton;
    EST_MN_R_CTE: TdxBarButton;
    CAD_MN_R_MVE: TdxBarButton;
    PCP_MN_R_IQF: TdxBarButton;
    EST_MN_R_MOV: TdxBarButton;
    btnRevisaoRelatorios: TdxBarSubItem;
    PCP_MN_R_CDP: TdxBarButton;
    PCP_MN_R_CDR: TdxBarButton;
    btnMaquinasEquipamentosRelatorios: TdxBarSubItem;
    PCP_MN_R_MEQ: TdxBarButton;
    PCP_MN_R_RPT: TdxBarButton;
    PCP_MN_R_ROT: TdxBarButton;
    EST_MN_R_FIC: TdxBarButton;
    SEG_MN_X_BCK: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    FIN_MN_M_NFE_TIT: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    CAD_MN_R_ECF: TdxBarButton;
    EST_MN_R_INV: TdxBarButton;
    btnAlmoxarifadoRelatorios: TdxBarSubItem;
    PCP_MN_R_CRP: TdxBarButton;
    OFI_MN_R_TIO: TdxBarButton;
    EST_MN_R_DEV: TdxBarButton;
    EST_MN_R_ABC: TdxBarButton;
    EST_MN_R_GIR: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    FIN_MN_R_PAG: TdxBarButton;
    FIN_MN_R_PCP: TdxBarButton;
    FIN_MN_R_EXF: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    FIN_MN_R_ANV: TdxBarButton;
    FIN_MN_R_REC: TdxBarButton;
    FIN_MN_R_PRE: TdxBarButton;
    FIN_MN_R_EXC: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    FIN_MN_R_COB: TdxBarButton;
    FIN_MN_R_CXA: TdxBarButton;
    FIN_MN_R_BCO: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarSubItem11: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    dxBevel1: TdxBevel;
    dxBarSubItem13: TdxBarSubItem;
    dxBarSubItem14: TdxBarSubItem;
    dxBarSubItem15: TdxBarSubItem;
    smiRelatoriosFaturamento: TdxBarSubItem;
    FAT_MN_R_NFE: TdxBarButton;
    FAT_MN_R_PVE: TdxBarButton;
    FAT_MN_R_RET: TdxBarButton;
    FAT_MN_R_ABC: TdxBarButton;
    FIN_MN_R_CSC: TdxBarButton;
    FAT_MN_R_PIS: TdxBarButton;
    FAT_MN_R_ICM: TdxBarButton;
    dxBarButton30: TdxBarButton;
    FAT_MN_R_POS: TdxBarButton;
    FAT_MN_R_COV: TdxBarButton;
    FIN_MN_R_MCH: TdxBarButton;
    CSU_MN_M_OPR_ADM: TdxBarButton;
    PCP_MN_C_CLE: TdxBarButton;
    PCP_MN_C_CUE: TdxBarButton;
    PCP_MN_R_CLE: TdxBarButton;
    PCP_MN_R_CUE: TdxBarButton;
    EST_MN_R_MLT: TdxBarButton;
    PCP_MN_R_ROM: TdxBarButton;
    PCP_MN_R_ORS: TdxBarButton;
    CSU_MN_M_NFE: TdxBarLargeButton;
    FAT_MN_R_PEX: TdxBarButton;
    FIN_MN_M_MCH: TdxBarButton;
    FIN_MN_M_PCR: TdxBarButton;
    EST_MN_M_APR: TdxBarButton;
    FIN_MN_M_EST_NFE: TdxBarButton;
    smiCargas: TdxBarSubItem;
    FAT_MN_M_ROM: TdxBarButton;
    FAT_MN_M_PCA: TdxBarButton;
    CSU_MN_M_ACR: TdxBarButton;
    smiConsultaEstatistica: TdxBarSubItem;
    CSU_MN_M_GER: TdxBarButton;
    PCP_MN_C_FPI: TdxBarButton;
    EST_MN_R_PES: TdxBarButton;
    PCP_MN_M_EPPSS: TdxBarButton;
    PCP_MN_M_EPP: TdxBarButton;
    CAD_MN_R_FAM: TdxBarButton;
    FAT_MN_M_PED_CAN: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    FIN_MN_M_LMF: TdxBarButton;
    FIN_MN_M_PRC: TdxBarButton;
    dxBarSubItem17: TdxBarSubItem;
    FIN_MN_R_LMF: TdxBarButton;
    FIN_MN_R_PRC: TdxBarButton;
    PCP_MN_M_ORS_CAN: TdxBarButton;
    CAD_MN_C_DTS: TdxBarButton;
    CAD_MN_C_AUS: TdxBarButton;
    EST_MN_R_MAL: TdxBarButton;
    FAT_MN_R_PED: TdxBarButton;
    CSU_MN_M_AUD: TdxBarButton;
    PCP_MN_R_EPP: TdxBarButton;
    dxBarButton32: TdxBarButton;
    CAD_MN_C_CHA: TdxBarButton;
    FIN_MN_M_DCT: TdxBarButton;
    PCP_MN_M_CPA: TdxBarButton;
    PCP_MN_R_POP: TdxBarButton;
    FAT_MN_M_CHM: TdxBarButton;
    CSU_MN_M_ETQ: TdxBarButton;
    FIN_MN_M_REC_RET: TdxBarButton;
    CAD_MN_C_HFG: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem18: TdxBarSubItem;
    dxBarSubItem19: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    CSU_MN_C_CLI: TdxBarButton;
    CSU_MN_C_ILC: TdxBarButton;
    FAT_MN_M_GAM: TdxBarButton;
    CAD_MN_C_LSE: TdxBarButton;
    FAT_MN_R_RFV: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure CAD_MN_C_CCUClick(Sender: TObject);
    procedure CAD_MN_C_CNEClick(Sender: TObject);
    procedure CMP_MN_M_SOLClick(Sender: TObject);
    procedure CMP_MN_M_PEDClick(Sender: TObject);
    procedure CAD_MN_C_CFOClick(Sender: TObject);
    procedure CAD_MN_C_CIDClick(Sender: TObject);
    procedure CAD_MN_C_CINClick(Sender: TObject);
    procedure CAD_MN_C_LTOClick(Sender: TObject);
    procedure CAD_MN_C_NATClick(Sender: TObject);
    procedure CAD_MN_C_CTCClick(Sender: TObject);
    procedure CAD_MN_C_CPGClick(Sender: TObject);
    procedure CAD_MN_C_ECFClick(Sender: TObject);
    procedure CAD_MN_C_PCTClick(Sender: TObject);
    procedure CAD_MN_C_NCMClick(Sender: TObject);
    procedure CAD_MN_C_PECClick(Sender: TObject);
    procedure CAD_MN_C_PESClick(Sender: TObject);
    procedure CAD_MN_C_TIFClick(Sender: TObject);
    procedure CAD_MN_C_RAMClick(Sender: TObject);
    procedure CAD_MN_C_TMEClick(Sender: TObject);
    procedure CMP_MN_M_COTClick(Sender: TObject);
    procedure FAT_MN_M_CXAClick(Sender: TObject);
    procedure CAD_MN_C_FPGClick(Sender: TObject);
    procedure CAD_MN_C_UNDClick(Sender: TObject);
    procedure CAD_MN_C_INFClick(Sender: TObject);
    procedure CAD_MN_C_TRIClick(Sender: TObject);
    procedure CAD_MN_C_GRUClick(Sender: TObject);
    procedure CAD_MN_C_ALMClick(Sender: TObject);
    procedure EST_MN_M_NFEClick(Sender: TObject);
    procedure FAT_MN_M_PEDClick(Sender: TObject);
    procedure PCP_MN_C_TLMClick(Sender: TObject);
    procedure PCP_MN_C_ROTClick(Sender: TObject);
    procedure PCP_MN_C_DISClick(Sender: TObject);
    procedure PCP_MN_C_CNFClick(Sender: TObject);
    procedure PCP_MN_C_FTEClick(Sender: TObject);
    procedure PCP_MN_C_MTAClick(Sender: TObject);
    procedure PCP_MN_C_REGClick(Sender: TObject);
    procedure PCP_MN_C_CRG_PCPClick(Sender: TObject);
    procedure CAD_MN_C_CORClick(Sender: TObject);
    procedure btnPesquisaConsumidorClick(Sender: TObject);
    procedure PCP_MN_C_CDRClick(Sender: TObject);
    procedure CAD_MN_C_FORClick(Sender: TObject);
    procedure CAD_MN_C_ITEClick(Sender: TObject);
    procedure CAD_MN_C_CLIClick(Sender: TObject);
    procedure CAD_MN_C_FUNClick(Sender: TObject);
    procedure PCP_MN_M_ACRClick(Sender: TObject);
    procedure FAT_MN_M_POSClick(Sender: TObject);
    procedure EST_MN_M_NFSClick(Sender: TObject);
    procedure EST_MN_M_NFDClick(Sender: TObject);
    procedure EST_MN_M_NFCClick(Sender: TObject);
    procedure PCP_MN_C_PRQClick(Sender: TObject);
    procedure PCP_MN_C_CDPClick(Sender: TObject);
    procedure PCP_MN_C_MEQClick(Sender: TObject);
    procedure PCP_MN_C_RPTClick(Sender: TObject);
    procedure CAD_MN_C_MVEClick(Sender: TObject);
    procedure CAD_MN_C_TDFClick(Sender: TObject);
    procedure CAD_MN_C_VEIClick(Sender: TObject);
    procedure CAD_MN_C_TXSClick(Sender: TObject);
    procedure PCP_MN_M_OPRClick(Sender: TObject);
    procedure PCP_MN_M_OPBClick(Sender: TObject);
    procedure PCP_MN_M_CRPClick(Sender: TObject);
    procedure PCP_MN_M_CACClick(Sender: TObject);
    procedure PCP_MN_M_CMEClick(Sender: TObject);
    procedure PCP_MN_C_CRQClick(Sender: TObject);
    procedure PCP_MN_M_LPRClick(Sender: TObject);
    procedure PCP_MN_M_MCPClick(Sender: TObject);
    procedure FAT_MN_M_ORCClick(Sender: TObject);
    procedure FIN_MN_M_COBClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FIN_MN_M_RBXClick(Sender: TObject);
    procedure FIN_MN_M_PAGClick(Sender: TObject);
    procedure FIN_MN_M_RECClick(Sender: TObject);
    procedure CAD_MN_C_SETClick(Sender: TObject);
    procedure PCP_MN_C_CRGClick(Sender: TObject);
    procedure PCP_MN_C_CINClick(Sender: TObject);
    procedure PCP_MN_C_TINClick(Sender: TObject);
    procedure PCP_MN_C_MDEClick(Sender: TObject);
    procedure PCP_MN_C_INSClick(Sender: TObject);
    procedure FIN_MN_M_CTA_CXAClick(Sender: TObject);
    procedure FIN_MN_M_CTA_BCOClick(Sender: TObject);
    procedure FIN_MN_M_RCRClick(Sender: TObject);
    procedure CMP_MN_M_APRClick(Sender: TObject);
    procedure CMP_MN_M_SOL_PCPClick(Sender: TObject);
    procedure PCP_MN_M_PSCClick(Sender: TObject);
    procedure CAD_MN_C_FOR_PCPClick(Sender: TObject);
    procedure CAD_MN_C_FUN_PCPClick(Sender: TObject);
    procedure EST_MN_M_NFE_PCPClick(Sender: TObject);
    procedure EST_MN_M_NFS_PCPClick(Sender: TObject);
    procedure EST_MN_M_NFC_PCPClick(Sender: TObject);
    procedure FAT_MN_M_NFE_IQMClick(Sender: TObject);
    procedure PCP_MN_M_RAAClick(Sender: TObject);
    procedure FIN_MN_M_PBXClick(Sender: TObject);
    procedure FIN_MN_M_CARClick(Sender: TObject);
    procedure FIN_MN_M_CHE_MOVClick(Sender: TObject);
    procedure FIN_MN_M_CTA_CONClick(Sender: TObject);
    procedure FIN_MN_M_CTA_ABEClick(Sender: TObject);
    procedure FIN_MN_M_REC_REMClick(Sender: TObject);
    procedure EST_MN_M_MALClick(Sender: TObject);
    procedure EST_MN_M_CTEClick(Sender: TObject);
    procedure CSU_MN_C_ITEClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PCP_MN_R_ETQClick(Sender: TObject);
    procedure PCP_MN_M_ORSClick(Sender: TObject);
    procedure CAD_MN_C_PARClick(Sender: TObject);
    procedure PCP_MN_M_ROMClick(Sender: TObject);
    procedure PCP_MN_CotacaoPrecosPCPClick(Sender: TObject);
    procedure PCP_MN_C_ESPClick(Sender: TObject);
    procedure PCP_MN_M_VVEClick(Sender: TObject);
    procedure PCP_MN_M_IQFClick(Sender: TObject);
    procedure PCP_MN_C_PRPClick(Sender: TObject);
    procedure CSU_MN_M_PSCClick(Sender: TObject);
    procedure CAD_MN_R_ITEClick(Sender: TObject);
    procedure PCP_MN_R_PSCClick(Sender: TObject);
    procedure PCP_MN_M_ROM_PCPClick(Sender: TObject);
    procedure PCP_MN_M_ORS_PCPClick(Sender: TObject);
    procedure PCP_MN_M_LBEClick(Sender: TObject);
    procedure PCP_MN_C_OPBClick(Sender: TObject);
    procedure FAT_MN_M_NFE_FREClick(Sender: TObject);
    procedure PCP_MN_R_RAAClick(Sender: TObject);
    procedure FAT_MN_R_NFE_ITE_IQMClick(Sender: TObject);
    procedure EST_MN_M_XMLClick(Sender: TObject);
    procedure PCP_MN_C_TPPClick(Sender: TObject);
    procedure PCP_MN_M_NCFClick(Sender: TObject);
    procedure FIN_MN_M_BOLClick(Sender: TObject);
    procedure PCP_MN_M_RVCClick(Sender: TObject);
    procedure CAD_MN_C_TAMClick(Sender: TObject);
    procedure PCP_MN_C_ORIClick(Sender: TObject);
    procedure FAT_MN_M_LIBClick(Sender: TObject);
    procedure PCP_MN_C_LMEClick(Sender: TObject);
    procedure PCP_MN_R_PRPClick(Sender: TObject);
    procedure PCP_MN_R_PRQClick(Sender: TObject);
    procedure CAD_MN_C_PRGClick(Sender: TObject);
    procedure CAD_MN_R_CORClick(Sender: TObject);
    procedure CAD_MN_R_FORClick(Sender: TObject);
    procedure CAD_MN_R_FPGClick(Sender: TObject);
    procedure CAD_MN_R_GRUClick(Sender: TObject);
    procedure CAD_MN_R_PCTClick(Sender: TObject);
    procedure CAD_MN_R_PRGClick(Sender: TObject);
    procedure CAD_MN_R_TAMClick(Sender: TObject);
    procedure PCP_MN_R_ACRClick(Sender: TObject);
    procedure CAD_MN_R_CNEClick(Sender: TObject);
    procedure CAD_MN_R_SETClick(Sender: TObject);
    procedure CAD_MN_R_RAMClick(Sender: TObject);
    procedure CAD_MN_R_CIDClick(Sender: TObject);
    procedure CAD_MN_R_PECClick(Sender: TObject);
    procedure CAD_MN_R_CCUClick(Sender: TObject);
    procedure CAD_MN_R_CTCClick(Sender: TObject);
    procedure EST_MN_R_CTEClick(Sender: TObject);
    procedure CAD_MN_R_CFOClick(Sender: TObject);
    procedure CAD_MN_R_ALMClick(Sender: TObject);
    procedure CAD_MN_R_NCMClick(Sender: TObject);
    procedure CAD_MN_R_INFClick(Sender: TObject);
    procedure CAD_MN_R_TDFClick(Sender: TObject);
    procedure CAD_MN_R_LTOClick(Sender: TObject);
    procedure CAD_MN_R_MVEClick(Sender: TObject);
    procedure CAD_MN_R_TRIClick(Sender: TObject);
    procedure CAD_MN_R_TIFClick(Sender: TObject);
    procedure CAD_MN_R_FUNClick(Sender: TObject);
    procedure PCP_MN_R_IQFClick(Sender: TObject);
    procedure EST_MN_R_MOVClick(Sender: TObject);
    procedure PCP_MN_R_CDPClick(Sender: TObject);
    procedure PCP_MN_R_CDRClick(Sender: TObject);
    procedure PCP_MN_R_CRGClick(Sender: TObject);
    procedure PCP_MN_R_MEQClick(Sender: TObject);
    procedure PCP_MN_R_RPTClick(Sender: TObject);
    procedure PCP_MN_R_ROTClick(Sender: TObject);
    procedure EST_MN_R_FICClick(Sender: TObject);
    procedure SEG_MN_X_BCKClick(Sender: TObject);
    procedure CSU_MN_C_FORClick(Sender: TObject);
    procedure FIN_MN_M_NFE_TITClick(Sender: TObject);
    procedure CAD_MN_R_ECFClick(Sender: TObject);
    procedure EST_MN_R_INVClick(Sender: TObject);
    procedure PCP_MN_R_CRPClick(Sender: TObject);
    procedure EST_MN_R_DEVClick(Sender: TObject);
    procedure EST_MN_R_GIRClick(Sender: TObject);
    procedure FIN_MN_R_PAGClick(Sender: TObject);
    procedure FIN_MN_R_PCPClick(Sender: TObject);
    procedure FIN_MN_R_EXFClick(Sender: TObject);
    procedure FIN_MN_R_RECClick(Sender: TObject);
    procedure FIN_MN_R_PREClick(Sender: TObject);
    procedure FIN_MN_R_EXCClick(Sender: TObject);
    procedure FIN_MN_R_COBClick(Sender: TObject);
    procedure FIN_MN_R_CXAClick(Sender: TObject);
    procedure FIN_MN_R_BCOClick(Sender: TObject);
    procedure FIN_MN_R_ANVClick(Sender: TObject);
    procedure FAT_MN_R_NFEClick(Sender: TObject);
    procedure FAT_MN_R_PVEClick(Sender: TObject);
    procedure FAT_MN_R_RETClick(Sender: TObject);
    procedure FIN_MN_R_CSCClick(Sender: TObject);
    procedure FAT_MN_R_PISClick(Sender: TObject);
    procedure FAT_MN_R_ICMClick(Sender: TObject);
    procedure FAT_MN_R_POSClick(Sender: TObject);
    procedure FAT_MN_R_COVClick(Sender: TObject);
    procedure FAT_MN_R_ABCClick(Sender: TObject);
    procedure EST_MN_R_ABCClick(Sender: TObject);
    procedure CAD_MN_R_CLIClick(Sender: TObject);
    procedure CAD_MN_LogoffClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CAD_MN_R_PESClick(Sender: TObject);
    procedure CAD_MN_R_TMEClick(Sender: TObject);
    procedure CAD_MN_R_UNDClick(Sender: TObject);
    procedure FIN_MN_R_MCHClick(Sender: TObject);
    procedure CSU_MN_M_OPR_ADMClick(Sender: TObject);
    procedure PCP_MN_C_CLEClick(Sender: TObject);
    procedure PCP_MN_C_CUEClick(Sender: TObject);
    procedure PCP_MN_R_CLEClick(Sender: TObject);
    procedure PCP_MN_R_CUEClick(Sender: TObject);
    procedure EST_MN_R_MLTClick(Sender: TObject);
    procedure PCP_MN_R_ROMClick(Sender: TObject);
    procedure PCP_MN_R_ORSClick(Sender: TObject);
    procedure PCP_MN_M_ORS_FINClick(Sender: TObject);
    procedure CSU_MN_M_NFEClick(Sender: TObject);
    procedure FAT_MN_R_PEXClick(Sender: TObject);
    procedure FIN_MN_M_MCHClick(Sender: TObject);
    procedure FIN_MN_M_PCRClick(Sender: TObject);
    procedure EST_MN_M_APRClick(Sender: TObject);
    procedure FIN_MN_M_EST_NFEClick(Sender: TObject);
    procedure FAT_MN_M_ROMClick(Sender: TObject);
    procedure FAT_MN_M_PCAClick(Sender: TObject);
    procedure CSU_MN_M_ACRClick(Sender: TObject);
    procedure CSU_MN_M_GERClick(Sender: TObject);
    procedure PCP_MN_C_FPIClick(Sender: TObject);
    procedure OFI_MN_R_TIOClick(Sender: TObject);
    procedure EST_MN_R_PESClick(Sender: TObject);
    procedure PCP_MN_M_EPPSSClick(Sender: TObject);
    procedure PCP_MN_R_LMEClick(Sender: TObject);
    procedure PCP_MN_M_EPPClick(Sender: TObject);
    procedure CAD_MN_R_FAMClick(Sender: TObject);
    procedure FAT_MN_M_PED_CANClick(Sender: TObject);
    procedure FIN_MN_M_LMFClick(Sender: TObject);
    procedure FIN_MN_M_PRCClick(Sender: TObject);
    procedure FIN_MN_R_LMFClick(Sender: TObject);
    procedure FIN_MN_R_PRCClick(Sender: TObject);
    procedure PCP_MN_M_ORS_CANClick(Sender: TObject);
    procedure CAD_MN_C_DTSClick(Sender: TObject);
    procedure CAD_MN_C_AUSClick(Sender: TObject);
    procedure EST_MN_R_MALClick(Sender: TObject);
    procedure FAT_MN_R_PEDClick(Sender: TObject);
    procedure CSU_MN_M_AUDClick(Sender: TObject);
    procedure PCP_MN_R_EPPClick(Sender: TObject);
    procedure CAD_MN_C_CHAClick(Sender: TObject);
    procedure FIN_MN_M_DCTClick(Sender: TObject);
    procedure PCP_MN_M_CPAClick(Sender: TObject);
    procedure PCP_MN_R_POPClick(Sender: TObject);
    procedure FAT_MN_M_CHMClick(Sender: TObject);
    procedure CSU_MN_M_ETQClick(Sender: TObject);
    procedure FIN_MN_M_REC_RETClick(Sender: TObject);
    procedure CAD_MN_C_HFGClick(Sender: TObject);
    procedure CSU_MN_C_CLIClick(Sender: TObject);
    procedure CSU_MN_C_ILCClick(Sender: TObject);
    procedure FAT_MN_M_GAMClick(Sender: TObject);
    procedure CAD_MN_C_LSEClick(Sender: TObject);
    procedure FAT_MN_R_RFVClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmSoftMenu: TfrmSoftMenu;
  xDataSistema:TDate;
  xExibMsgSolCmp:Boolean;
  xExibMsgPed:Boolean;
  xExibMsgEst:Boolean;

implementation
uses uProxy, uDmGeral, CAD_UN_C_CNE, CMP_UN_M_SOL, CMP_UN_M_PED, CAD_UN_C_CCU,
  CAD_UN_C_CFO, CAD_UN_C_CID, CAD_UN_C_CIN, CAD_UN_C_LTO, CAD_UN_C_NAT,
  CAD_UN_C_CTC, CAD_UN_C_CPG, CAD_UN_C_ECF, CAD_UN_C_NCM, CAD_UN_C_PCT,
  CAD_UN_C_PEC, CAD_UN_C_PES, CAD_UN_C_TIF, CAD_UN_C_RAM, CAD_UN_C_TME,
  CMP_UN_M_COT, FAT_UN_M_CXA, CAD_UN_C_FPG, CAD_UN_C_UND, CAD_UN_C_INF,
  CAD_UN_C_GRU, CAD_UN_C_TRI, EST_UN_M_NFE, FAT_UN_M_PED, PCP_UN_C_TLM,
  PCP_UN_C_ROT, PCP_UN_C_DIS, PCP_UN_C_CNF, PCP_UN_C_MTA, PCP_UN_C_REG,
  PCP_UN_C_CRG, CAD_UN_C_COR, PCP_UN_C_CDR, CAD_UN_C_FOR, CAD_UN_C_ITE,
  CAD_UN_C_CLI, CAD_UN_C_FUN, PCP_UN_M_ACR, FAT_UN_M_POS, EST_UN_M_NFS,
  EST_UN_M_NFD, EST_UN_M_NFC, PCP_UN_C_PRQ, PCP_UN_C_CDP, PCP_UN_C_MDE,
  PCP_UN_C_MEQ, PCP_UN_C_RPT, CAD_UN_C_MVE, CAD_UN_C_TDF, CAD_UN_C_VEI,
  CAD_UN_C_TXS, PCP_UN_M_OPR, PCP_UN_M_OPB, PCP_UN_M_CRP, PCP_UN_M_CAC,
  PCP_UN_M_CME, PCP_UN_C_CRQ, PCP_UN_M_LPR, PCP_UN_M_MCP, FAT_UN_M_ORC,
  FIN_UN_M_COB, FIN_UN_M_RBX, FIN_UN_M_PAG, FIN_UN_M_REC, CAD_UN_C_SET,
  CAD_UN_C_ALM, PCP_UN_C_CIN, PCP_UN_C_TIN, PCP_UN_C_INS, FIN_UN_M_CTA_CXA,
  FIN_UN_M_CTA_BCO, FIN_UN_M_RCR, PCP_UN_M_PSC, PCP_UN_M_RAA, FIN_UN_M_PBX,
  FIN_UN_M_CAR, FIN_UN_M_CHE_LAN, FIN_UN_M_CHE_MOV, FIN_UN_M_CTA_CON,
  FIN_UN_M_CTA_ABE, FIN_UN_M_REC_REM, EST_UN_M_MAL,
  EST_UN_M_CTE, CSU_UN_C_CLI, CSU_UN_C_ITE, PCP_UN_C_FTE,
  PCP_UN_M_ORS, CAD_UN_C_PAR, enConstantes, PCP_UN_M_ROM, PCP_UN_C_ESP,
  PCP_UN_C_PRP, CSU_UN_M_PSC, PCP_UN_R_PSC, PCP_UN_M_LBE,
  PCP_UN_M_VVE, FAT_UN_M_NFE_FRE, CAD_UN_R_ITE, PCP_UN_R_RAA, FIN_UN_R_PAG,
  CMP_UN_M_APR, PCP_UN_C_TPP, PCP_UN_M_NCF,
  FIN_UN_M_BOL, PCP_UN_M_RVC, CAD_UN_C_TAM, PCP_UN_C_ORI,
  FAT_UN_M_LIB, PCP_UN_C_LME, PCP_UN_M_IQF, PCP_UN_R_PRP, PCP_UN_R_PRQ,
  CAD_UN_C_PRG, CAD_UN_R_COR, CAD_UN_R_FOR, CAD_UN_R_FPG, CAD_UN_R_GRU,
  CAD_UN_R_PCT, CAD_UN_R_PRG, CAD_UN_R_TAM, PCP_UN_R_ACR, CAD_UN_R_CNE,
  CAD_UN_R_SET, CAD_UN_R_RAM, CAD_UN_R_CID, CAD_UN_R_PEC, CAD_UN_R_CCU,
  CAD_UN_R_CTC, EST_UN_R_CTE, FAT_UN_M_IQM, CAD_UN_R_CFO, CAD_UN_R_ALM,
  CAD_UN_R_NCM, CAD_UN_R_INF, CAD_UN_R_TDF, FAT_UN_R_IQM, CTC_RN_M_FAC,
  CAD_UN_R_LTO, CAD_UN_R_MVE, CAD_UN_R_TIF, CAD_UN_R_FUN, CAD_UN_R_TRI,
  PCP_UN_R_IQF, EST_UN_R_MOV, PCP_UN_R_CDP, PCP_UN_R_CDR, PCP_UN_R_CRG,
  PCP_UN_R_MEQ, PCP_UN_R_RPT, PCP_UN_R_ROT, EST_UN_R_FIC, EST_UN_M_NFE_TIT,
  CSU_UN_C_FOR, CAD_UN_R_ECF, SEG_UN_X_BCK, EST_UN_R_INV, PCP_UN_R_CRP,
  EST_UN_R_DEV, EST_UN_R_GIR, FIN_UN_R_EXF, FIN_UN_R_PCP,
  FIN_UN_R_COB, FIN_UN_R_EXC, FIN_UN_R_PCR, FIN_UN_R_REC, FIN_UN_R_ANV,
  FIN_UN_R_BCO, FIN_UN_R_CXA, FAT_UN_R_COV, FAT_UN_R_ICM,
  FAT_UN_R_NFE, FAT_UN_R_PVE, FAT_UN_R_RET, FIN_UN_R_CSC, FAT_UN_R_PIS,
  FAT_UN_R_POS, FAT_UN_R_ABC, EST_UN_R_ABC, CAD_UN_R_CLI, SEG_UN_X_SEN,
  CAD_UN_R_PES, CAD_UN_R_UND, CAD_UN_R_TME, FIN_UN_R_MCH, uValidacoes,
  CSU_UN_M_OPR_ADM, PCP_UN_C_CUE, PCP_UN_C_CLE, PCP_UN_R_CLE, PCP_UN_R_CUE,
  EST_UN_R_MLT, FIN_UN_R_PRE, PAD_UN_X_PAD, PCP_UN_R_ROM, PCP_UN_R_ORS,
  PCP_UN_M_ORS_FIN, CSU_UN_M_NFE, FAT_UN_R_PEX, FIN_UN_M_MCH,
  FIN_UN_M_PCR, EST_UN_M_APR, FAT_UN_M_ROM, FAT_UN_M_PCA, CSU_UN_M_ACR,
  CSU_UN_M_GER, PCP_UN_C_FPI, OFI_UN_R_TIO, EST_UN_M_XML, AVS_UN_X_SOL,
  AVS_UN_X_PED, AVS_UN_X_EST, EST_UN_R_PES, PCP_UN_M_EPP, PCP_UN_R_LME,
  CAD_UN_R_FAM, FAT_UN_M_PED_CAN, FIN_UN_M_PRC, FIN_UN_R_PRC, FIN_UN_M_LMF,
  FIN_UN_R_LMF, PCP_UN_M_ORS_CAN, CAD_UN_C_DTS, CAD_UN_C_AUS, EST_UN_R_MAL, FAT_UN_R_PED,
  CSU_UN_M_AUD, PCP_UN_R_EPP, uChat, FIN_UN_M_DCT, PCP_UN_M_CPA, PCP_UN_R_POP,
  FAT_UN_M_CHM, CSU_UN_M_ETQ, FIN_UN_M_REC_RET, CAD_UN_C_HFG, CSU_UN_C_ILC,
  FAT_UN_M_GAM, uLibReimpSgqEtq, FAT_UN_R_RFV;

{$R *.dfm}


procedure TfrmSoftMenu.CAD_MN_C_DTSClick(Sender: TObject);
begin
   OpenForm(TCAD_FM_C_DTS,CAD_FM_C_DTS);
end;

procedure TfrmSoftMenu.SEG_MN_X_BCKClick(Sender: TObject);
begin
   OpenForm(TSEG_FM_X_BCK,SEG_FM_X_BCK);
end;

procedure TfrmSoftMenu.CAD_MN_C_ALMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_ALM, CAD_FM_C_ALM);
end;

procedure TfrmSoftMenu.CAD_MN_C_AUSClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_AUS, CAD_FM_C_AUS);
end;

procedure TfrmSoftMenu.PCP_MN_M_VVEClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_VVE, PCP_FM_M_VVE);
end;

procedure TfrmSoftMenu.PCP_MN_M_ACRClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_ACR, PCP_FM_M_ACR);
end;

procedure TfrmSoftMenu.FIN_MN_M_RBXClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_RBX, FIN_FM_M_RBX);
end;

procedure TfrmSoftMenu.PCP_MN_C_CDRClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_CDR, PCP_FM_C_CDR);
end;

procedure TfrmSoftMenu.FAT_MN_M_CHMClick(Sender: TObject);
var
  i: integer;
  nome_tela:string;
  result: Boolean;
begin
  i := 0;
  result := true;
  while ((i < Screen.FormCount) and (result = true)) do
     begin
       if Screen.Forms[I] is TForm then
          begin
            if Screen.Forms[I].Showing  then
               begin
                 if (pos(Screen.Forms[I].Name,'FAT_FM_M_PED') <> 0) then
                    begin
                      if (Screen.Forms[i].Name = 'FAT_FM_M_PED') then
                         begin
                            nome_tela := 'Pedido de Venda';
                         end;

                       ShowMessage('É preciso que feche o formulário de '+nome_tela+'.');
                       result := false;
                       exit;
                    end;
               end;
          end;
       i := i+1;
     end;

  OpenForm(TFAT_FM_M_CHM, FAT_FM_M_CHM);
end;

procedure TfrmSoftMenu.FAT_MN_M_CXAClick(Sender: TObject);
begin
  if dmGeral.VerificarLicenca in [3,4,5,7] then
    exit;
  OpenForm(TFAT_FM_M_CXA, FAT_FM_M_CXA);
end;

procedure TfrmSoftMenu.FAT_MN_M_GAMClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_GAM, FAT_FM_M_GAM);
end;

procedure TfrmSoftMenu.PCP_MN_C_CRGClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_CRG, PCP_FM_C_CRG);
end;

procedure TfrmSoftMenu.CAD_MN_C_CCUClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CCU, CAD_FM_C_CCU);
end;

procedure TfrmSoftMenu.CAD_MN_C_CFOClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CFO, CAD_FM_C_CFO);
end;

procedure TfrmSoftMenu.CAD_MN_C_CHAClick(Sender: TObject);
begin
  Application.CreateForm(TfrmChat, frmChat);
  frmChat.ShowModal;
  FreeAndNil(frmChat);
end;

procedure TfrmSoftMenu.CAD_MN_C_CIDClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CID, CAD_FM_C_CID);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_ABEClick(Sender: TObject);
begin
   FIN_FM_M_CTA_ABE := TFIN_FM_M_CTA_ABE.Create(Self);
   FIN_FM_M_CTA_ABE.ShowModal;
   FIN_FM_M_CTA_ABE.Free;
end;

procedure TfrmSoftMenu.PCP_MN_M_RAAClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_RAA, PCP_FM_M_RAA);
end;

procedure TfrmSoftMenu.PCP_MN_M_ROMClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_ROM, PCP_FM_M_ROM);
end;

procedure TfrmSoftMenu.PCP_MN_M_ROM_PCPClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_ROM, PCP_FM_M_ROM);
end;

procedure TfrmSoftMenu.PCP_MN_M_RVCClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_RVC, PCP_FM_M_RVC);
end;

procedure TfrmSoftMenu.FIN_MN_M_PBXClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_PBX, FIN_FM_M_PBX);
end;

procedure TfrmSoftMenu.FIN_MN_M_PCRClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_PCR, FIN_FM_M_PCR);
end;

procedure TfrmSoftMenu.FIN_MN_M_PRCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_PRC, FIN_FM_M_PRC);
end;

procedure TfrmSoftMenu.CAD_MN_C_CLIClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CLI, CAD_FM_C_CLI);
end;

procedure TfrmSoftMenu.CAD_MN_C_CNEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CNE, CAD_FM_C_CNE);
end;

procedure TfrmSoftMenu.FIN_MN_M_COBClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_COB, FIN_FM_M_COB);
end;

procedure TfrmSoftMenu.CAD_MN_C_CPGClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CPG, CAD_FM_C_CPG);
end;

procedure TfrmSoftMenu.CAD_MN_C_CTCClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CTC, CAD_FM_C_CTC);
end;

procedure TfrmSoftMenu.PCP_MN_M_CACClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_CAC, PCP_FM_M_CAC);
end;

procedure TfrmSoftMenu.PCP_MN_CotacaoPrecosPCPClick(Sender: TObject);
begin
 OpenForm(TCMP_FM_M_COT, CMP_FM_M_COT);
end;

procedure TfrmSoftMenu.PCP_MN_C_CDPClick(
  Sender: TObject);
begin
 OpenForm(TPCP_FM_C_CDP, PCP_FM_C_CDP);
end;

procedure TfrmSoftMenu.PCP_MN_M_CRPClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_CRP, PCP_FM_M_CRP);
end;

procedure TfrmSoftMenu.PCP_MN_M_IQFClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_IQF, PCP_FM_M_IQF);
end;

procedure TfrmSoftMenu.PCP_MN_C_CRQClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_CRQ, PCP_FM_C_CRQ);
end;

procedure TfrmSoftMenu.PCP_MN_C_CUEClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_C_CUE, PCP_FM_C_CUE);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_CONClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_CTA_CON, FIN_FM_M_CTA_CON);
end;

procedure TfrmSoftMenu.FAT_MN_M_NFE_FREClick(Sender: TObject);
begin
  if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TFAT_FM_M_NFE_FRE, FAT_FM_M_NFE_FRE);
    end;
end;

procedure TfrmSoftMenu.FAT_MN_M_NFE_IQMClick(
  Sender: TObject);
begin
 OpenForm(TFAT_FM_M_IQM, FAT_FM_M_IQM);
end;

procedure TfrmSoftMenu.CAD_MN_C_CORClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_COR, CAD_FM_C_COR);
end;

procedure TfrmSoftMenu.CMP_MN_M_COTClick(Sender: TObject);
begin
 OpenForm(TCMP_FM_M_COT, CMP_FM_M_COT);
end;

procedure TfrmSoftMenu.FIN_MN_M_RCRClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_RCR, FIN_FM_M_RCR);
end;

procedure TfrmSoftMenu.PCP_MN_M_CMEClick(
  Sender: TObject);
begin
 OpenForm(TPCP_FM_M_CME, PCP_FM_M_CME);
end;

procedure TfrmSoftMenu.PCP_MN_M_CPAClick(Sender: TObject);
begin
   OpenForm(TPCP_FM_M_CPA, PCP_FM_M_CPA);
end;

procedure TfrmSoftMenu.EST_MN_M_NFDClick(Sender: TObject);
begin
   if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TEST_FM_M_NFD, EST_FM_M_NFD);
    end;
end;

procedure TfrmSoftMenu.EST_MN_M_NFCClick(Sender: TObject);
begin
   if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TEST_FM_M_NFC, EST_FM_M_NFC);
    end;
end;

procedure TfrmSoftMenu.EST_MN_M_NFC_PCPClick(Sender: TObject);
begin
 OpenForm(TEST_FM_M_NFC, EST_FM_M_NFC);
end;

procedure TfrmSoftMenu.PCP_MN_C_DISClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_DIS, PCP_FM_C_DIS);
end;

procedure TfrmSoftMenu.PCP_MN_C_ESPClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_ESP, PCP_FM_C_ESP);
end;



procedure TfrmSoftMenu.EST_MN_M_APRClick(Sender: TObject);
begin
  Application.CreateForm(TEST_FM_M_APR, EST_FM_M_APR);
end;

procedure TfrmSoftMenu.EST_MN_M_CTEClick(Sender: TObject);
begin
 OpenForm(TEST_FM_M_CTE, EST_FM_M_CTE);
end;

procedure TfrmSoftMenu.PCP_MN_R_ACRClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_ACR, PCP_FM_R_ACR);
end;

procedure TfrmSoftMenu.PCP_MN_R_CDPClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_CDP, PCP_FM_R_CDP);
end;

procedure TfrmSoftMenu.PCP_MN_R_CDRClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_CDR, PCP_FM_R_CDR);
end;

procedure TfrmSoftMenu.PCP_MN_R_CLEClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_CLE, PCP_FM_R_CLE);
end;

procedure TfrmSoftMenu.PCP_MN_R_CRGClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_CRG, PCP_FM_R_CRG);
end;

procedure TfrmSoftMenu.PCP_MN_R_CRPClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_CRP, PCP_FM_R_CRP);
end;

procedure TfrmSoftMenu.PCP_MN_R_CUEClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_R_CUE, PCP_FM_R_CUE);
end;

procedure TfrmSoftMenu.PCP_MN_R_EPPClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_R_EPP, PCP_FM_R_EPP);
end;

procedure TfrmSoftMenu.PCP_MN_R_ETQClick(
  Sender: TObject);
begin
 // OpenForm(TPCP_FM_R_ETQ, PCP_FM_R_ETQ);
end;

procedure TfrmSoftMenu.PCP_MN_R_IQFClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_IQF, PCP_FM_R_IQF);
end;

procedure TfrmSoftMenu.PCP_MN_R_LMEClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_R_LME, PCP_FM_R_LME);
end;

procedure TfrmSoftMenu.PCP_MN_R_MEQClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_MEQ, PCP_FM_R_MEQ);
end;

procedure TfrmSoftMenu.PCP_MN_R_ORSClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_R_ORS, PCP_FM_R_ORS);
end;

procedure TfrmSoftMenu.PCP_MN_R_PRPClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_R_PRP, PCP_FM_R_PRP);
end;

procedure TfrmSoftMenu.PCP_MN_R_PRQClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_R_PRQ, PCP_FM_R_PRQ);
end;

procedure TfrmSoftMenu.PCP_MN_R_PSCClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_PSC, PCP_FM_R_PSC);
end;

procedure TfrmSoftMenu.PCP_MN_R_RAAClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_RAA, PCP_FM_R_RAA);
end;

procedure TfrmSoftMenu.PCP_MN_R_ROTClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_ROT, PCP_FM_R_ROT);
end;

procedure TfrmSoftMenu.PCP_MN_R_RPTClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_R_RPT, PCP_FM_R_RPT);
end;

procedure TfrmSoftMenu.CAD_MN_C_FOR_PCPClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_FOR, CAD_FM_C_FOR);
end;

procedure TfrmSoftMenu.CAD_MN_C_FUN_PCPClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_FUN, CAD_FM_C_FUN);
end;

procedure TfrmSoftMenu.CAD_MN_C_ECFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_ECF, CAD_FM_C_ECF);
end;

procedure TfrmSoftMenu.EST_MN_M_NFEClick(Sender: TObject);
begin
   if dmGeral.VerificarLicenca in [3,4,5,7] then
     exit;

   if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TEST_FM_M_NFE, EST_FM_M_NFE);
    end;
end;

procedure TfrmSoftMenu.CAD_MN_C_FPGClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_FPG, CAD_FM_C_FPG);
end;

procedure TfrmSoftMenu.CAD_MN_C_FORClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_FOR, CAD_FM_C_FOR);
end;

procedure TfrmSoftMenu.CAD_MN_C_FUNClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_FUN, CAD_FM_C_FUN);
end;

procedure TfrmSoftMenu.CAD_MN_C_GRUClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_GRU, CAD_FM_C_GRU);
end;

procedure TfrmSoftMenu.CAD_MN_C_HFGClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_HFG, CAD_FM_C_HFG);
end;

procedure TfrmSoftMenu.CAD_MN_C_CINClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CIN, CAD_FM_C_CIN);
end;

procedure TfrmSoftMenu.CAD_MN_C_INFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_INF, CAD_FM_C_INF);
end;

procedure TfrmSoftMenu.PCP_MN_C_INSClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_INS, PCP_FM_C_INS);
end;

procedure TfrmSoftMenu.PCP_MN_C_LMEClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_LME, PCP_FM_C_LME);
end;

procedure TfrmSoftMenu.CAD_MN_C_ITEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_ITE, CAD_FM_C_ITE);
end;

procedure TfrmSoftMenu.FIN_MN_M_PAGClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_PAG, FIN_FM_M_PAG);
end;

procedure TfrmSoftMenu.FIN_MN_M_RECClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_REC, FIN_FM_M_REC);
end;

procedure TfrmSoftMenu.PCP_MN_M_LBEClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_LBE, PCP_FM_M_LBE);
end;

procedure TfrmSoftMenu.PCP_MN_M_LPRClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_LPR, PCP_FM_M_LPR);
end;

procedure TfrmSoftMenu.CAD_MN_C_LSEClick(Sender: TObject);
begin
  Application.CreateForm(TfrmLibreimpSgqEtq, frmLibreimpSgqEtq);
  frmLibreimpSgqEtq.ShowModal;
  FreeAndNil(frmLibreimpSgqEtq);
end;

procedure TfrmSoftMenu.CAD_MN_C_LTOClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_LTO, CAD_FM_C_LTO);
end;

procedure TfrmSoftMenu.PCP_MN_C_MEQClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_MEQ, PCP_FM_C_MEQ);
end;

procedure TfrmSoftMenu.FIN_MN_M_CHE_MOVClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_CHE_MOV, FIN_FM_M_CHE_MOV);
end;

procedure TfrmSoftMenu.PCP_MN_C_MDEClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_MDE, PCP_FM_C_MDE);
end;

procedure TfrmSoftMenu.PCP_MN_C_FPIClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_C_FPI, PCP_FM_C_FPI);
end;

procedure TfrmSoftMenu.PCP_MN_C_FTEClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_FTE, PCP_FM_C_FTE);
end;

procedure TfrmSoftMenu.CAD_MN_C_MVEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_MVE, CAD_FM_C_MVE);
end;

procedure TfrmSoftMenu.PCP_MN_C_MTAClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_MTA, PCP_FM_C_MTA);
end;

procedure TfrmSoftMenu.PCP_MN_C_OPBClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_OPB, PCP_FM_M_OPB);
end;

procedure TfrmSoftMenu.PCP_MN_C_ORIClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_ORI, PCP_FM_C_ORI);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_CXAClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_CTA_CXA, FIN_FM_M_CTA_CXA);
end;

procedure TfrmSoftMenu.FIN_MN_M_DCTClick(Sender: TObject);
begin
   OpenForm(TFIN_FM_M_DCT,FIN_FM_M_DCT);
end;

procedure TfrmSoftMenu.FIN_MN_M_MCHClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_MCH,FIN_FM_M_MCH);
end;

procedure TfrmSoftMenu.FIN_MN_R_LMFClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_LMF,FIN_FM_R_LMF);
end;

procedure TfrmSoftMenu.FIN_MN_R_MCHClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_MCH,FIN_FM_R_MCH);
end;

procedure TfrmSoftMenu.FIN_MN_R_PRCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PRC, FIN_FM_R_PRC);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_BCOClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_CTA_BCO, FIN_FM_M_CTA_BCO);
end;

procedure TfrmSoftMenu.PCP_MN_C_CNFClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_CNF, PCP_FM_C_CNF);
end;

procedure TfrmSoftMenu.EST_MN_M_NFE_PCPClick(Sender: TObject);
begin
 OpenForm(TEST_FM_M_NFE, EST_FM_M_NFE);
end;

procedure TfrmSoftMenu.CAD_MN_C_NATClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_NAT, CAD_FM_C_NAT);
end;

procedure TfrmSoftMenu.CAD_MN_C_NCMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_NCM, CAD_FM_C_NCM);
end;

procedure TfrmSoftMenu.FAT_MN_M_ORCClick(Sender: TObject);
begin
 OpenForm(TFAT_FM_M_ORC, FAT_FM_M_ORC);
end;

procedure TfrmSoftMenu.PCP_MN_M_OPBClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_OPB, PCP_FM_M_OPB);
end;

procedure TfrmSoftMenu.PCP_MN_M_OPRClick(Sender: TObject);
var
  i: integer;
  nome_tela:string;
  Aberta: Boolean;
begin
  i := 0;
  Aberta := true;
  while ((i < Screen.FormCount) and (Aberta = true)) do
     begin
       if Screen.Forms[I] is TForm then
          begin
            if Screen.Forms[I].Showing  then
               begin
                 if (pos(Screen.Forms[I].Name,'PCP_FM_M_OPR') <> 0) then
                    begin
                      if (Screen.Forms[i].Name = 'PCP_FM_M_OPR') then
                         begin
                            nome_tela := 'Ordem de Produção';
                         end;
                       ShowMessage('A tela de '+nome_tela+' já está aberta.');
                       Aberta := false;
                    end;
               end;
          end;
       i := i+1;
     end;

 if aberta then
    OpenForm(TPCP_FM_M_OPR, PCP_FM_M_OPR);
end;

procedure TfrmSoftMenu.PCP_MN_M_EPPClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_M_EPP, PCP_FM_M_EPP);
end;

procedure TfrmSoftMenu.PCP_MN_M_EPPSSClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_M_EPP, PCP_FM_M_EPP);
end;

procedure TfrmSoftMenu.PCP_MN_M_ORSClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_M_ORS, PCP_FM_M_ORS);
end;

procedure TfrmSoftMenu.PCP_MN_M_ORS_CANClick(Sender: TObject);
begin
   OpenForm(TPCP_FM_M_ORS_CAN, PCP_FM_M_ORS_CAN);
end;

procedure TfrmSoftMenu.PCP_MN_M_ORS_FINClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_M_ORS_FIN, PCP_FM_M_ORS_FIN);
end;

procedure TfrmSoftMenu.PCP_MN_M_ORS_PCPClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_ORS, PCP_FM_M_ORS);
end;

procedure TfrmSoftMenu.EST_MN_M_NFSClick(Sender: TObject);
begin
  if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TEST_FM_M_NFS, EST_FM_M_NFS);
    end;
end;

procedure TfrmSoftMenu.CAD_MN_C_SETClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_SET, CAD_FM_C_SET);
end;

procedure TfrmSoftMenu.CMP_MN_M_SOLClick(Sender: TObject);
begin
 OpenForm(TCMP_FM_M_SOL, CMP_FM_M_SOL);
end;

procedure TfrmSoftMenu.CMP_MN_M_SOL_PCPClick(Sender: TObject);
begin
 OpenForm(TCMP_FM_M_SOL, CMP_FM_M_SOL);
end;


procedure TfrmSoftMenu.EST_MN_M_XMLClick(Sender: TObject);
begin
  if dmGeral.VerificarLicenca in [3,4,5,7] then
    exit;
  if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
      OpenForm(TEST_FM_M_XML, EST_FM_M_XML);
    end;
end;

procedure TfrmSoftMenu.EST_MN_R_CTEClick(Sender: TObject);
begin
 OpenForm(TEST_FM_R_CTE, EST_FM_R_CTE);
end;

procedure TfrmSoftMenu.EST_MN_R_FICClick(Sender: TObject);
begin
 OpenForm(TEST_FM_R_FIC, EST_FM_R_FIC);
end;

procedure TfrmSoftMenu.EST_MN_R_MALClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_MAL, EST_FM_R_MAL);
end;

procedure TfrmSoftMenu.EST_MN_R_MLTClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_MLT, EST_FM_R_MLT);
end;

procedure TfrmSoftMenu.EST_MN_R_MOVClick(Sender: TObject);
begin
 OpenForm(TEST_FM_R_MOV, EST_FM_R_MOV);
end;

procedure TfrmSoftMenu.EST_MN_R_PESClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_PES, EST_FM_R_PES);
end;

procedure TfrmSoftMenu.FIN_MN_M_REC_REMClick(Sender: TObject);
begin
   FIN_FM_M_REC_REM := TFIN_FM_M_REC_REM.Create(Self);
   FIN_FM_M_REC_REM.ShowModal;
   FIN_FM_M_REC_REM.Free;
end;

procedure TfrmSoftMenu.FIN_MN_M_REC_RETClick(Sender: TObject);
begin
   OpenForm(TFIN_FM_M_REC_RET, FIN_FM_M_REC_RET);
end;

procedure TfrmSoftMenu.CSU_MN_C_CLIClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_C_CLI, CSU_FM_C_CLI);
end;

procedure TfrmSoftMenu.CSU_MN_C_FORClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_C_FOR, CSU_FM_C_FOR);
end;

procedure TfrmSoftMenu.EST_MN_M_MALClick(Sender: TObject);
begin
 OpenForm(TEST_FM_M_MAL, EST_FM_M_MAL);
end;

procedure TfrmSoftMenu.FIN_MN_M_BOLClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_BOL, FIN_FM_M_BOL);

end;

procedure TfrmSoftMenu.FIN_MN_M_CARClick(Sender: TObject);
begin
 OpenForm(TFIN_FM_M_CAR, FIN_FM_M_CAR);
end;

procedure TfrmSoftMenu.PCP_MN_C_TLMClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_TLM, PCP_FM_C_TLM);
end;

procedure TfrmSoftMenu.PCP_MN_C_TPPClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_TPP, PCP_FM_C_TPP);
end;

procedure TfrmSoftMenu.CAD_MN_C_TMEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_TME, CAD_FM_C_TME);
end;

procedure TfrmSoftMenu.CAD_MN_C_TIFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_TIF, CAD_FM_C_TIF);
end;

procedure TfrmSoftMenu.PCP_MN_C_TINClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_TIN, PCP_FM_C_TIN);
end;

procedure TfrmSoftMenu.CAD_MN_C_TAMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_TAM, CAD_FM_C_TAM);
end;

procedure TfrmSoftMenu.CAD_MN_C_TDFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_TDF, CAD_FM_C_TDF);
end;

procedure TfrmSoftMenu.CAD_MN_C_TXSClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_TXS, CAD_FM_C_TXS);
end;

procedure TfrmSoftMenu.CAD_MN_C_TRIClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_TRI, CAD_FM_C_TRI);
end;

procedure TfrmSoftMenu.CAD_MN_C_UNDClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_UND, CAD_FM_C_UND);
end;

procedure TfrmSoftMenu.CAD_MN_C_VEIClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_VEI, CAD_FM_C_VEI);
end;

procedure TfrmSoftMenu.CAD_MN_LogoffClick(Sender: TObject);
begin
  FreeAndNil(AVS_FM_X_EST);
  FreeAndNil(AVS_FM_X_SOL);
  FreeAndNil(AVS_FM_X_PED);
  FreeAndNil(frmSoftMenu);
  Application.CreateForm(TSEG_FM_X_SEN, SEG_FM_X_SEN);
  if SEG_FM_X_SEN.ShowModal = mrOK then
     begin
       FreeAndNil(SEG_FM_X_SEN);
       Application.CreateForm(TfrmSoftMenu, frmSoftMenu);
       Application.Run;
     end
  else
     begin
       dmGeral.Conexao.Connected := false;
       FreeAndNil(dmGeral);
       FreeAndNil(SEG_FM_X_SEN);
     end;
end;

procedure TfrmSoftMenu.PCP_MN_C_CINClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_CIN, PCP_FM_C_CIN);
end;

procedure TfrmSoftMenu.PCP_MN_C_CLEClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_CLE, PCP_FM_C_CLE);
end;

procedure TfrmSoftMenu.PCP_MN_C_CRG_PCPClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_CRG, PCP_FM_C_CRG);
end;

procedure TfrmSoftMenu.CMP_MN_M_PEDClick(Sender: TObject);
begin
 OpenForm(TCMP_FM_M_PED, CMP_FM_M_PED);
end;

procedure TfrmSoftMenu.CMP_MN_M_APRClick(Sender: TObject);
begin
 OpenForm(TCMP_FM_M_APR, CMP_FM_M_APR);
end;

procedure TfrmSoftMenu.FAT_MN_M_PCAClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_PCA, FAT_FM_M_PCA);
end;

procedure TfrmSoftMenu.FAT_MN_M_PEDClick(Sender: TObject);
begin
 OpenForm(TFAT_FM_M_PED, FAT_FM_M_PED);
end;

procedure TfrmSoftMenu.FAT_MN_M_PED_CANClick(Sender: TObject);
begin
   FAT_FM_M_PED_CAN := TFAT_FM_M_PED_CAN.Create(Self);
   FAT_FM_M_PED_CAN.ShowModal;
   FAT_FM_M_PED_CAN.Free;
end;

procedure TfrmSoftMenu.CAD_MN_C_PECClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_PEC, CAD_FM_C_PEC);
end;

procedure TfrmSoftMenu.CAD_MN_C_PESClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_PES, CAD_FM_C_PES);
end;

procedure TfrmSoftMenu.CAD_MN_C_PRGClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_PRG, CAD_FM_C_PRG);
end;

procedure TfrmSoftMenu.CAD_MN_R_ALMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_ALM, CAD_FM_R_ALM);
end;

procedure TfrmSoftMenu.CAD_MN_R_CCUClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_CCU, CAD_FM_R_CCU);
end;

procedure TfrmSoftMenu.CAD_MN_R_CFOClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_CFO, CAD_FM_R_CFO);
end;

procedure TfrmSoftMenu.CAD_MN_R_CIDClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_CID, CAD_FM_R_CID);
end;

procedure TfrmSoftMenu.CAD_MN_R_CLIClick(Sender: TObject);
begin
OpenForm(TCAD_FM_R_CLI, CAD_FM_R_CLI);
end;

procedure TfrmSoftMenu.CAD_MN_R_CNEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_CNE, CAD_FM_R_CNE);
end;

procedure TfrmSoftMenu.CAD_MN_R_CORClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_COR, CAD_FM_R_COR);
end;

procedure TfrmSoftMenu.CAD_MN_R_CTCClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_CTC, CAD_FM_R_CTC);
end;

procedure TfrmSoftMenu.CAD_MN_R_FAMClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_FAM, CAD_FM_R_FAM);
end;

procedure TfrmSoftMenu.CAD_MN_R_FORClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_FOR, CAD_FM_R_FOR);
end;

procedure TfrmSoftMenu.CAD_MN_R_FPGClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_FPG, CAD_FM_R_FPG);
end;

procedure TfrmSoftMenu.CAD_MN_R_FUNClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_FUN, CAD_FM_R_FUN);
end;

procedure TfrmSoftMenu.CAD_MN_R_GRUClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_GRU, CAD_FM_R_GRU);
end;

procedure TfrmSoftMenu.CAD_MN_R_INFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_INF, CAD_FM_R_INF);
end;

procedure TfrmSoftMenu.CAD_MN_R_ITEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_ITE, CAD_FM_R_ITE);
end;

procedure TfrmSoftMenu.CAD_MN_R_LTOClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_LTO, CAD_FM_R_LTO);
end;

procedure TfrmSoftMenu.CAD_MN_R_MVEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_MVE, CAD_FM_R_MVE);
end;

procedure TfrmSoftMenu.CAD_MN_R_NCMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_NCM, CAD_FM_R_NCM);
end;

procedure TfrmSoftMenu.CAD_MN_R_PCTClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_PCT, CAD_FM_R_PCT);
end;

procedure TfrmSoftMenu.CAD_MN_R_PECClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_PEC, CAD_FM_R_PEC);
end;

procedure TfrmSoftMenu.CAD_MN_R_PESClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_PES, CAD_FM_R_PES);
end;

procedure TfrmSoftMenu.CAD_MN_R_PRGClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_PRG, CAD_FM_R_PRG);
end;

procedure TfrmSoftMenu.CAD_MN_R_RAMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_RAM, CAD_FM_R_RAM);
end;

procedure TfrmSoftMenu.CAD_MN_R_SETClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_SET, CAD_FM_R_SET);
end;

procedure TfrmSoftMenu.CAD_MN_R_TAMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_TAM, CAD_FM_R_TAM);
end;

procedure TfrmSoftMenu.CAD_MN_R_TDFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_TDF, CAD_FM_R_TDF);
end;

procedure TfrmSoftMenu.CAD_MN_R_TIFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_TIF, CAD_FM_R_TIF);
end;

procedure TfrmSoftMenu.CAD_MN_R_TMEClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_TME, CAD_FM_R_TME);
end;

procedure TfrmSoftMenu.CAD_MN_R_TRIClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_TRI, CAD_FM_R_TRI);
end;

procedure TfrmSoftMenu.CAD_MN_R_UNDClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_UND, CAD_FM_R_UND);
end;

procedure TfrmSoftMenu.btnPesquisaConsumidorClick(Sender: TObject);
begin
//--
end;

procedure TfrmSoftMenu.CSU_MN_C_ITEClick(Sender: TObject);
begin
 OpenForm(TCSU_FM_C_ITE, CSU_FM_C_ITE);
end;

procedure TfrmSoftMenu.CSU_MN_M_ACRClick(Sender: TObject);
begin
    OpenForm(TCSU_FM_M_ACR, CSU_FM_M_ACR);
end;

procedure TfrmSoftMenu.CSU_MN_M_AUDClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_M_AUD, CSU_FM_M_AUD);
end;

procedure TfrmSoftMenu.CSU_MN_M_ETQClick(Sender: TObject);
begin
   OpenForm(TCSU_FM_M_ETQ, CSU_FM_M_ETQ);
end;

procedure TfrmSoftMenu.CSU_MN_M_GERClick(Sender: TObject);
begin
   OpenForm(TCSU_FM_M_GER, CSU_FM_M_GER);
end;

procedure TfrmSoftMenu.CSU_MN_M_NFEClick(Sender: TObject);
begin
 OpenForm(TCSU_FM_M_NFE,CSU_FM_M_NFE);
end;

procedure TfrmSoftMenu.CSU_MN_M_OPR_ADMClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_M_OPR_ADM,CSU_FM_M_OPR_ADM);
end;

procedure TfrmSoftMenu.CSU_MN_M_PSCClick(Sender: TObject);
begin
 OpenForm(TCSU_FM_M_PSC, CSU_FM_M_PSC);
end;

procedure TfrmSoftMenu.CSU_MN_C_ILCClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_C_ILC, CSU_FM_C_ILC);
end;

procedure TfrmSoftMenu.EST_MN_R_ABCClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_ABC, EST_FM_R_ABC);
end;

procedure TfrmSoftMenu.EST_MN_R_GIRClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_GIR, EST_FM_R_GIR);
end;

procedure TfrmSoftMenu.FIN_MN_R_PAGClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PAG, FIN_FM_R_PAG);
end;

procedure TfrmSoftMenu.FIN_MN_R_PCPClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PCP, FIN_FM_R_PCP);
end;

procedure TfrmSoftMenu.FIN_MN_R_EXFClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_EXF, FIN_FM_R_EXF);
end;

procedure TfrmSoftMenu.FIN_MN_R_ANVClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_ANV, FIN_FM_R_ANV);
end;

procedure TfrmSoftMenu.FIN_MN_R_RECClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_REC,FIN_FM_R_REC );
end;

procedure TfrmSoftMenu.FIN_MN_R_PREClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PRE, FIN_FM_R_PRE);
end;

procedure TfrmSoftMenu.FIN_MN_R_EXCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_EXC, FIN_FM_R_EXC);
end;

procedure TfrmSoftMenu.FIN_MN_R_COBClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_COB, FIN_FM_R_COB);
end;

procedure TfrmSoftMenu.FIN_MN_R_CXAClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_CXA, FIN_FM_R_CXA);
end;

procedure TfrmSoftMenu.FIN_MN_R_BCOClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_BCO, FIN_FM_R_BCO);
end;

procedure TfrmSoftMenu.FAT_MN_R_NFEClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_NFE, FAT_FM_R_NFE);
end;

procedure TfrmSoftMenu.FAT_MN_R_PVEClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_PVE, FAT_FM_R_PVE);
end;

procedure TfrmSoftMenu.FAT_MN_R_RETClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_RET, FAT_FM_R_RET);
end;

procedure TfrmSoftMenu.FAT_MN_R_RFVClick(Sender: TObject);
begin
 OpenForm(TFAT_FM_R_RFV, FAT_FM_R_RFV);
end;

procedure TfrmSoftMenu.FAT_MN_R_ABCClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_ABC, FAT_FM_R_ABC);
end;

procedure TfrmSoftMenu.FIN_MN_R_CSCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_CSC, FIN_FM_R_CSC);
end;

procedure TfrmSoftMenu.FAT_MN_R_PISClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_PIS, FAT_FM_R_PIS);
end;

procedure TfrmSoftMenu.FAT_MN_R_ICMClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_ICM, FAT_FM_R_ICM);
end;

procedure TfrmSoftMenu.FAT_MN_R_POSClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_POS, FAT_FM_R_POS);
end;

procedure TfrmSoftMenu.FAT_MN_R_COVClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_COV, FAT_FM_R_COV);
end;

procedure TfrmSoftMenu.PCP_MN_R_ROMClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_R_ROM, PCP_FM_R_ROM);
end;

procedure TfrmSoftMenu.FAT_MN_R_PEDClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_PED, FAT_FM_R_PED);
end;

procedure TfrmSoftMenu.FAT_MN_R_PEXClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_PEX, FAT_FM_R_PEX);
end;

procedure TfrmSoftMenu.PCP_MN_R_POPClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_R_POP, PCP_FM_R_POP);
end;

procedure TfrmSoftMenu.CAD_MN_R_ECFClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_ECF, CAD_FM_R_ECF);
end;

procedure TfrmSoftMenu.EST_MN_R_INVClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_INV, EST_FM_R_INV);
end;

procedure TfrmSoftMenu.OFI_MN_R_TIOClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_R_TIO, OFI_FM_R_TIO);
end;

procedure TfrmSoftMenu.EST_MN_R_DEVClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_DEV, EST_FM_R_DEV);
end;

procedure TfrmSoftMenu.FIN_MN_M_EST_NFEClick(Sender: TObject);
begin
 if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
       OpenForm(TEST_FM_M_NFE, EST_FM_M_NFE);
    end;
end;

procedure TfrmSoftMenu.FIN_MN_M_LMFClick(Sender: TObject);
begin
   OpenForm(TFIN_FM_M_LMF, FIN_FM_M_LMF);
end;

procedure TfrmSoftMenu.FIN_MN_M_NFE_TITClick(Sender: TObject);
begin
  OpenForm(TEST_FM_M_NFE_TIT, EST_FM_M_NFE_TIT);
end;

procedure TfrmSoftMenu.FAT_MN_M_LIBClick(Sender: TObject);
begin
  //OpenForm(TFAT_FM_M_LIB, FAT_FM_M_LIB);
  Application.CreateForm(TFAT_FM_M_LIB, FAT_FM_M_LIB);
end;

procedure TfrmSoftMenu.PCP_MN_M_PSCClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_PSC, PCP_FM_M_PSC);
end;

procedure TfrmSoftMenu.CAD_MN_C_PARClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_PAR, CAD_FM_C_PAR);
end;

procedure TfrmSoftMenu.CAD_MN_C_PCTClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_PCT, CAD_FM_C_PCT);
end;

procedure TfrmSoftMenu.PCP_MN_C_PRPClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_PRP, PCP_FM_C_PRP);
end;

procedure TfrmSoftMenu.PCP_MN_C_PRQClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_PRQ, PCP_FM_C_PRQ);
end;

procedure TfrmSoftMenu.FAT_MN_M_POSClick(Sender: TObject);
begin
 OpenForm(TFAT_FM_M_POS, FAT_FM_M_POS);
end;

procedure TfrmSoftMenu.FAT_MN_M_ROMClick(Sender: TObject);
begin
   OpenForm(TFAT_FM_M_ROM, FAT_FM_M_ROM);
end;

procedure TfrmSoftMenu.FAT_MN_R_NFE_ITE_IQMClick(Sender: TObject);
begin
 OpenForm(TFAT_FM_R_IQM, FAT_FM_R_IQM);
end;

procedure TfrmSoftMenu.CAD_MN_C_RAMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_RAM, CAD_FM_C_RAM);
end;

procedure TfrmSoftMenu.PCP_MN_C_RPTClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_RPT, PCP_FM_C_RPT);
end;

procedure TfrmSoftMenu.PCP_MN_C_REGClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_REG, PCP_FM_C_REG);
end;

procedure TfrmSoftMenu.PCP_MN_M_MCPClick(
  Sender: TObject);
begin
 OpenForm(TPCP_FM_M_MCP, PCP_FM_M_MCP);
end;

procedure TfrmSoftMenu.PCP_MN_M_NCFClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_M_NCF, PCP_FM_M_NCF);
end;

procedure TfrmSoftMenu.PCP_MN_C_ROTClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_ROT, PCP_FM_C_ROT);
end;

procedure TfrmSoftMenu.EST_MN_M_NFS_PCPClick(Sender: TObject);
begin
 OpenForm(TEST_FM_M_NFS, EST_FM_M_NFS);
end;

procedure TfrmSoftMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.Conexao.Connected := false;
  FreeAndNil(dmGeral);
  FreeAndNil(SEG_FM_X_SEN);
  FreeAndNil(frmSoftMenu);
  Application.terminate;
end;

procedure TfrmSoftMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  i: integer;
begin
  FreeAndNil(AVS_FM_X_EST);
  FreeAndNil(AVS_FM_X_SOL);
  FreeAndNil(AVS_FM_X_PED);
  for I := 0 to Screen.FormCount -1 do
     begin
       if Screen.Forms[I] is TForm then
          begin
            if Screen.Forms[I].Showing  then
               begin
                 if Screen.Forms[I].Name <> 'frmSoftMenu' then
                    begin
                       showmessage('É preciso que feche o(s) formulário(s) aberto(s).');
                       CanClose := False;
                       abort;
                    end;
               end;
          end;
     end;
end;

procedure TfrmSoftMenu.FormCreate(Sender: TObject);
begin
  xFuncionario  := dmGeral.CAD_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;
  xPerfilUsuario:= dmGeral.CAD_CD_C_FUN.FieldByName('ID_PERFIL_SEG').AsInteger;

  dmGeral.BUS_CD_M_SOL.Close;
  dmGeral.BUS_CD_M_SOL.Data :=
  dmGeral.BUS_CD_M_SOL.DataRequest(VarArrayOf([90,0]));

  dmGeral.BUS_CD_M_PED2.Close;
  dmGeral.BUS_CD_M_PED2.Data :=
  dmGeral.BUS_CD_M_PED2.DataRequest(VarArrayOf([99,dmGeral.CAD_CD_C_PARid_empresa.AsString,1,'1']));

  if dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
    begin
      dmGeral.BUS_CD_M_ITE_EST_MIN.Close;
      dmGeral.BUS_CD_M_ITE_EST_MIN.Data :=
      dmGeral.BUS_CD_M_ITE_EST_MIN.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PARid_empresa.AsString]));
    end
  else
    begin
      dmGeral.BUS_CD_M_ITE_EST_MIN.Close;
      dmGeral.BUS_CD_M_ITE_EST_MIN.Data :=
      dmGeral.BUS_CD_M_ITE_EST_MIN.DataRequest(VarArrayOf([1,dmGeral.CAD_CD_C_PARid_empresa.AsString]));
    end;

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));

  if (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_HABILITAR_SEG').AsBoolean = True) then
    begin
     xHabBtnAlterar := dmGeral.BUS_CD_C_FUN.FieldByName('SEG_HAB_BOT_ALT_FUN').AsBoolean;
     xHabBtnExcluir := dmGeral.BUS_CD_C_FUN.FieldByName('SEG_HAB_BOT_EXC').AsBoolean;
    end;

  txtFuncionario.EditValue := dmGeral.BUS_CD_C_FUN.FieldByName('Nome').AsString;
  txtEmpresa.Text := dmGeral.CAD_CD_C_PAR.FieldByName('emp_razao').AsString;
  dxStatusBar.Panels[0].Text:='Versão do Sistema :'+CVersaoSistema;
  dxStatusBar.Panels[1].Text:='Data do Sistema :'+DateToStr(xDataSis);

  dmGeral.enCarregaMenu(MenuManager,inttostr(xFuncionario),xPerfilUsuario);

  if smiCadastros.ItemLinks.AvailableItemCount=0 then
     smiCadastros.Visible:=ivNever;

  if smiTabelas.ItemLinks.AvailableItemCount=0 then
     smiTabelas.Visible:=ivNever;

  if smiEstoque.ItemLinks.AvailableItemCount=0 then
     smiEstoque.Visible:=ivNever;

  if smiFaturamento.ItemLinks.AvailableItemCount=0 then
     smiFaturamento.Visible:=ivNever;

  if smiContasPagar.ItemLinks.AvailableItemCount=0 then
     smiContasPagar.Visible:=ivNever;

  if smiContasReceber.ItemLinks.AvailableItemCount=0 then
     smiContasReceber.Visible:=ivNever;

  if smiBancoCaixa.ItemLinks.AvailableItemCount=0 then
     smiBancoCaixa.Visible:=ivNever;

  if smiSeguranca.ItemLinks.AvailableItemCount=0 then
     smiSeguranca.Visible:=ivNever;

  if smiRelatoriosTabelas.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosTabelas.Visible:=ivNever;

  if smiRelatoriosCadastros.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosCadastros.Visible:=ivNever;

  if smiCadastrosPCP.ItemLinks.AvailableItemCount=0 then
     smiCadastrosPCP.Visible:=ivNever;

  if smiControles.ItemLinks.AvailableItemCount=0 then
     smiControles.Visible:=ivNever;

  if smiConsultasPCP.ItemLinks.AvailableItemCount=0 then
     smiConsultasPCP.Visible:=ivNever;

  if smiRelatoriosEvidencias.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosEvidencias.Visible:=ivNever;

  if smiComprasPCP.ItemLinks.AvailableItemCount=0 then
     smiComprasPCP.Visible:=ivNever;

  if smiEstoquePCP.ItemLinks.AvailableItemCount=0 then
     smiEstoquePCP.Visible:=ivNever;

  if smiProducao.ItemLinks.AvailableItemCount=0 then
     smiProducao.Visible:=ivNever;

  if smiGestaoClientesPCP.ItemLinks.AvailableItemCount=0 then
     smiGestaoClientesPCP.Visible:=ivNever;



   if dmGeral.CAD_CD_C_PAR_MOD.IsEmpty then
      begin
        ShowMessage('Não foi encontrado o registro de módulos desta empresa!');
        rbMenu.Visible := false;
      end;
   end;

procedure TfrmSoftMenu.FormResize(Sender: TObject);
begin
  if frmSoftMenu <> nil then
    begin
      if (not dmgeral.BUS_CD_M_ITE_EST_MIN.IsEmpty) and  xExibMsgEst then
        begin
          AVS_FM_X_EST.Top := frmSoftMenu.Height - AVS_FM_X_EST.Height - 190;
          AVS_FM_X_EST.Left := 0;
        end;

      if (not dmgeral.BUS_CD_M_PED2.IsEmpty) and  xExibMsgPed then
        begin
          AVS_FM_X_PED.Top := frmSoftMenu.Height - AVS_FM_X_PED.Height - 190;
          AVS_FM_X_PED.Left := Round((frmSoftMenu.Width/2) - (AVS_FM_X_PED.Width/2));
        end;

      if (not dmGeral.BUS_CD_M_SOL.IsEmpty) and xExibMsgSolCmp then
        begin
          AVS_FM_X_SOL.Top := frmSoftMenu.Height - AVS_FM_X_SOL.Height - 190;
          AVS_FM_X_SOL.Left := frmSoftMenu.Width - AVS_FM_X_SOL.Width - 25;
        end;
    end;
end;

Procedure TfrmSoftMenu.FormShow(Sender: TObject);
var
  SMPrincipal : TSMClient;
  x,i,subNiveis:Integer;
begin
  // Solicitações Pendentes
  dmGeral.BusFuncionario(0, IntToStr(xFuncionario));
  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
    begin
      xExibMsgSolCmp := dmGeral.BUS_CD_C_FUNseg_vis_ult_cmp_ite.AsBoolean;
      xExibMsgPed := dmGeral.BUS_CD_C_FUNseq_vis_msg_ped_exp_fat.AsBoolean;
      xExibMsgEst := dmGeral.BUS_CD_C_FUNseq_vis_alert_est_min.AsBoolean;
    end;

  //Busca data do Servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  try
    xDataSistema:=SMPrincipal.enDataServer;
  finally
    FreeAndNil(SMPrincipal);
  end;

  if xExibMsgEst and (not dmGeral.BUS_CD_M_ITE_EST_MIN.IsEmpty) then
    begin
      showmessage('Existe itens com estoque minimo!');
      OpenForm(TAVS_FM_X_EST, AVS_FM_X_EST);
    end;

  if xExibMsgPed and (not dmGeral.BUS_CD_M_PED2.IsEmpty) then
    begin
      showmessage('Existe pedidos de venda expirados!');
      OpenForm(TAVS_FM_X_PED, AVS_FM_X_PED);
    end;

  if xExibMsgSolCmp and (not dmGeral.BUS_CD_M_SOL.IsEmpty) then
    begin
      showmessage('Existe solicitação de compra!');
      OpenForm(TAVS_FM_X_SOL, AVS_FM_X_SOL);
    end;

  if dmGeral.BUS_CD_C_FUN.FieldByName('seg_vis_aviso_tit_spc_protesto').AsBoolean then
     begin
       dmGeral.BUS_CD_M_REC.Close;
       dmGeral.BUS_CD_M_REC.Data :=
           dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([124,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));
       if not dmGeral.BUS_CD_M_REC.IsEmpty then
          begin
            ShowMessage('ATENÇÃO: Existe clientes com títulos no SPC/PROTESTO que já foram baixados.' + #13 +
                         'Por favor verifique o relatório de títulos pagos que estejam nessa situação para ' +
                         'que sejam retirado dessa situação.');
          end;
     end;

  if not (dmGeral.CAD_CD_C_PAR_MODcar.AsBoolean = True) then
     begin
       smiCargas.Visible := ivNever;
       smiCargas.Enabled := false;
     end;

  if not (dmGeral.CAD_CD_C_PAR_MODcad.AsBoolean = True) then
     begin
       smiCadastros.Visible := ivNever;
       smiCadastros.Enabled := false;

       smiRelatoriosCadastros.Visible := ivNever;
       smiRelatoriosCadastros.Enabled := false;
     end;

   if not (dmGeral.CAD_CD_C_PAR_MODtab.AsBoolean = True) then
     begin
       smiTabelas.Visible := ivNever;
       smiTabelas.Enabled := false;

       smiRelatoriosTabelas.Visible := ivNever;
       smiRelatoriosTabelas.Enabled := false;
     end;



   if not (dmGeral.CAD_CD_C_PAR_MODfat.AsBoolean = True) then
     begin
       smiFaturamento.Visible := ivNever;
       smiFaturamento.Enabled := false;

       smiRelatoriosFaturamento.Visible := ivNever;
       smiRelatoriosFaturamento.Enabled := false;
     end;

   if not (dmGeral.CAD_CD_C_PAR_MODfin.AsBoolean = True) then
     begin
       smiFinanceiro.Visible := ivNever;
       smiFinanceiro.Enabled := false;

       smiRelatoriosFinanceiro.Visible := ivNever;
       smiRelatoriosFinanceiro.Enabled := false;
     end
   else
     begin
       if not (dmGeral.CAD_CD_C_PAR_MODadf.AsBoolean = True) then
         begin
           FIN_MN_M_LMF.Visible := ivNever;
           FIN_MN_M_LMF.Enabled := false;

           FIN_MN_M_PRC.Visible := ivNever;
           FIN_MN_M_PRC.Enabled := false;

           FIN_MN_R_LMF.Visible := ivNever;
           FIN_MN_R_LMF.Enabled := false;

           FIN_MN_R_PRC.Visible := ivNever;
           FIN_MN_R_PRC.Enabled := false;
         end;
     end;

  subNiveis :=2;
   for I := 0 to subNiveis do   //Faz varredura de acordo quantidade de subniveis
     for x := 0 to ComponentCount-1 do
      begin
        if (components[x] is TdxBarSubItem) and
           (TdxBarSubItem(Components[x]).ItemLinks.VisibleItemCount = 0) then
          begin
             TdxBarSubItem(Components[x]).Visible := ivNever;
          end;

      end;

  if dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
    FAT_MN_R_COV.Caption := 'Comissão do Representante'
  else
    FAT_MN_R_COV.Caption := 'Comissão do Vendedor';

  Tmythread.Create(false);
end;


{ Tmythread }

procedure Tmythread.AtualizaVCL;
begin
  // Ordenação

  dmGeral.BUS_CD_M_SOL.Close;
  dmGeral.BUS_CD_M_SOL.Data :=
  dmGeral.BUS_CD_M_SOL.DataRequest(VarArrayOf([90,0]));

  if (AVS_FM_X_PED <> nil) then
    begin
      dmGeral.BUS_CD_M_PED2.Close;
      dmGeral.BUS_CD_M_PED2.Data :=
      dmGeral.BUS_CD_M_PED2.DataRequest(VarArrayOf([99,dmGeral.CAD_CD_C_PARid_empresa.AsString,1,IntToStr(AVS_FM_X_PED.cbborde.ItemIndex)]));
    end
  else
    begin
      dmGeral.BUS_CD_M_PED2.Close;
      dmGeral.BUS_CD_M_PED2.Data :=
      dmGeral.BUS_CD_M_PED2.DataRequest(VarArrayOf([99,dmGeral.CAD_CD_C_PARid_empresa.AsString,1,'1']));
    end;

  if dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
    begin
      dmGeral.BUS_CD_M_ITE_EST_MIN.Close;
      dmGeral.BUS_CD_M_ITE_EST_MIN.Data :=
      dmGeral.BUS_CD_M_ITE_EST_MIN.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PARid_empresa.AsString]));
    end
  else
    begin
      dmGeral.BUS_CD_M_ITE_EST_MIN.Close;
      dmGeral.BUS_CD_M_ITE_EST_MIN.Data :=
      dmGeral.BUS_CD_M_ITE_EST_MIN.DataRequest(VarArrayOf([1,dmGeral.CAD_CD_C_PARid_empresa.AsString]));
    end;

  if xExibMsgEst and (not dmGeral.BUS_CD_M_ITE_EST_MIN.IsEmpty) and (AVS_FM_X_EST = nil) then
    begin
      OpenForm(TAVS_FM_X_EST, AVS_FM_X_EST);
    end;

   if (AVS_FM_X_EST <> nil) and (dmGeral.BUS_CD_M_ITE_EST_MIN.IsEmpty) then
    begin
      FreeAndNil(AVS_FM_X_EST);
    end;

  if xExibMsgPed and (not dmGeral.BUS_CD_M_PED2.IsEmpty) and (AVS_FM_X_PED = nil) then
    begin
      OpenForm(TAVS_FM_X_PED, AVS_FM_X_PED);
    end;

  if (AVS_FM_X_PED <> nil) and (dmGeral.BUS_CD_M_PED2.IsEmpty) then
    begin
      FreeAndNil(AVS_FM_X_PED);
    end;

  if xExibMsgSolCmp and (not dmGeral.BUS_CD_M_SOL.IsEmpty) and (AVS_FM_X_SOL = nil) then
    begin
      OpenForm(TAVS_FM_X_SOL, AVS_FM_X_SOL);
    end;

  if (AVS_FM_X_SOL <> nil) and (dmGeral.BUS_CD_M_SOL.IsEmpty) then
    begin
      FreeAndNil(AVS_FM_X_SOL);
    end;
end;

procedure Tmythread.Execute;
begin
  inherited;
  while xExibMsgSolCmp or xExibMsgPed or xExibMsgEst do
     begin
       sleep(600000);
       Synchronize(AtualizaVCL);
     end;
end;


end.
