unit enSoftMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBar, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, cxClasses, dxRibbon,
  Vcl.ImgList, enFunc, dxStatusBar, dxRibbonStatusBar,System.IniFiles,
  Vcl.OleCtrls, SHDocVw, ShellApi, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWHTMLControls, Vcl.StdCtrls,
  cxBarEditItem, dxRibbonCustomizationForm, Data.DB, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, cxButtonEdit;

type

   Tmythread = class (tthread)

  private
    //count :integer;
    procedure AtualizaVCL;

  protected
     procedure Execute(); Override;
  end;

  TfrmSoftMenu = class(TForm)
    MenuManager: TdxBarManager;
    popMenu: TdxRibbonPopupMenu;
    tbDados: TdxRibbonTab;
    rbMenu: TdxRibbon;
    tbRelatorios: TdxRibbonTab;
    bmTabelas: TdxBar;
    smiTabelas: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    bmMovimentacoes: TdxBar;
    smiSuprimentos: TdxBarSubItem;
    smiComercial: TdxBarSubItem;
    smiFinanceiro: TdxBarSubItem;
    smiEngenharia: TdxBarSubItem;
    smiQualidade: TdxBarSubItem;
    smiManutencao: TdxBarSubItem;
    ImagensMenuDes: TImageList;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    FAT_MN_M_PED: TdxBarButton;
    FAT_MN_M_POS: TdxBarButton;
    CAD_MN_C_PES: TdxBarButton;
    dxBarButton13: TdxBarButton;
    btnCompras: TdxBarSubItem;
    CMP_MN_M_SOL: TdxBarButton;
    CMP_MN_M_COT: TdxBarButton;
    CMP_MN_M_PED: TdxBarButton;
    CTC_MN_M_FAC: TdxBarButton;
    CTC_MN_M_AVF: TdxBarButton;
    dxBarButton14: TdxBarButton;
    smiCadastros: TdxBarSubItem;
    ImagensMenu: TImageList;
    bmConsultas: TdxBar;
    smiConsultas: TdxBarSubItem;
    ilStatusBarImages: TImageList;
    dxStatusBar: TdxRibbonStatusBar;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    btnGeral: TdxBarSubItem;
    btnEngenhariaQualidade: TdxBarSubItem;
    CAD_MN_C_PAR: TdxBarButton;
    CAD_MN_C_CLI: TdxBarButton;
    CAD_MN_C_FOR: TdxBarButton;
    CAD_MN_C_FUN: TdxBarButton;
    CSU_MN_C_ITE: TdxBarButton;
    CAD_MN_C_ITE: TdxBarButton;
    CSU_MN_C_CLI: TdxBarButton;
    CSU_MN_C_FOR: TdxBarButton;
    CAD_MN_C_SET: TdxBarButton;
    btnContratoMedicoes: TdxBarSubItem;
    btnAlmoxarifado: TdxBarSubItem;
    btnEstoque: TdxBarSubItem;
    bmRelatorios: TdxBar;
    smiRelatoriosAdministrativo: TdxBarSubItem;
    smiRelatoriosEngenharia: TdxBarSubItem;
    PCP_MN_C_CRG: TdxBarButton;
    CAD_MN_C_CNE: TdxBarButton;
    CAD_MN_C_CID: TdxBarButton;
    CAD_MN_C_RAM: TdxBarButton;
    CAD_MN_C_CIN: TdxBarButton;
    CAD_MN_C_PEC: TdxBarButton;
    CAD_MN_C_PCT: TdxBarButton;
    CAD_MN_C_CCU: TdxBarButton;
    CAD_MN_C_CTC: TdxBarButton;
    CAD_MN_C_LTO: TdxBarButton;
    CAD_MN_C_TIF: TdxBarButton;
    CAD_MN_C_TME: TdxBarButton;
    CAD_MN_C_FPG: TdxBarButton;
    CAD_MN_C_UND: TdxBarButton;
    CAD_MN_C_NCM: TdxBarButton;
    CAD_MN_C_TRI: TdxBarButton;
    CAD_MN_C_GRU: TdxBarButton;
    CAD_MN_C_NAT: TdxBarButton;
    CAD_MN_C_CFO: TdxBarButton;
    CAD_MN_C_INF: TdxBarButton;
    CAD_MN_C_CPG: TdxBarButton;
    EST_MN_M_NFE: TdxBarButton;
    EST_MN_M_NFD: TdxBarButton;
    EST_MN_M_CTE: TdxBarButton;
    PCP_MN_M_ORS: TdxBarButton;
    btnCaixaBanco: TdxBarSubItem;
    btnContasReceber: TdxBarSubItem;
    btnContasPagar: TdxBarSubItem;
    FIN_MN_M_CTA_ABE: TdxBarButton;
    FIN_MN_M_CTA_CXA: TdxBarButton;
    FIN_MN_M_CTA_BCO: TdxBarButton;
    FIN_MN_M_CTA_CON: TdxBarButton;
    FIN_MN_M_PAG: TdxBarButton;
    FIN_MN_M_PBX: TdxBarButton;
    FIN_MN_M_REC: TdxBarButton;
    FIN_MN_M_RBX: TdxBarButton;
    FIN_MN_M_REC_REM: TdxBarButton;
    bmSeguranca: TdxBar;
    smiSeguranca: TdxBarSubItem;
    PCP_MN_M_MCP: TdxBarButton;
    PCP_MN_M_CME: TdxBarButton;
    PCP_MN_M_ROM: TdxBarButton;
    CTC_MN_M_ORC: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    PCP_MN_C_MEQ: TdxBarButton;
    CAD_MN_C_VEI: TdxBarButton;
    CAD_MN_C_TDF: TdxBarButton;
    PCP_MN_C_MDE: TdxBarButton;
    CTC_MN_C_OBR: TdxBarButton;
    CTC_MN_C_TPR: TdxBarButton;
    CAD_MN_C_FAM: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSeparator2: TdxBarSeparator;
    CTC_MN_M_CEP: TdxBarButton;
    CTC_MN_M_CFE: TdxBarButton;
    CTC_MN_M_OFI: TdxBarButton;
    SEG_MN_X_BCK: TdxBarButton;
    enLink: TLabel;
    CAD_MN_C_COR: TdxBarButton;
    CAD_MN_C_MVE: TdxBarButton;
    CTC_MN_M_LOC: TdxBarButton;
    CMP_MN_M_XML: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    CTC_MN_R_BDE: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    CAD_MN_R_FUN: TdxBarButton;
    CAD_MN_R_CLI: TdxBarButton;
    CAD_MN_R_FOR: TdxBarButton;
    CAD_MN_R_ITE: TdxBarButton;
    CAD_MN_R_CNE: TdxBarButton;
    CAD_MN_R_CFO: TdxBarButton;
    CAD_MN_R_FPG: TdxBarButton;
    CAD_MN_R_GRU: TdxBarButton;
    CAD_MN_R_CID: TdxBarButton;
    CAD_MN_R_CCU: TdxBarButton;
    CAD_MN_R_TIF: TdxBarButton;
    CAD_MN_R_CTC: TdxBarButton;
    CAD_MN_R_LTO: TdxBarButton;
    CAD_MN_R_TRI: TdxBarButton;
    CAD_MN_R_NCM: TdxBarButton;
    CAD_MN_R_UND: TdxBarButton;
    CAD_MN_R_TME: TdxBarButton;
    CAD_MN_R_PES: TdxBarButton;
    CAD_MN_R_RAM: TdxBarButton;
    CAD_MN_R_PEC: TdxBarButton;
    CAD_MN_R_PCT: TdxBarButton;
    CAD_MN_R_INF: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    CAD_MN_R_CRG: TdxBarButton;
    CAD_MN_R_COR: TdxBarButton;
    OFI_MN_R_TIO: TdxBarButton;
    CAD_MN_C_ALM: TdxBarButton;
    CTC_MN_C_SER: TdxBarButton;
    CTC_MN_C_EOC: TdxBarButton;
    CTC_MN_R_ORC: TdxBarButton;
    CTC_MN_R_COM: TdxBarButton;
    CTC_MN_M_MED: TdxBarButton;
    CTC_MN_R_MED: TdxBarButton;
    dxBarButton10: TdxBarButton;
    FAT_MN_M_NFE_FRE: TdxBarButton;
    CMP_MN_M_APR: TdxBarButton;
    dxBarButton11: TdxBarButton;
    smiRelatoriosEstoque: TdxBarSubItem;
    smiRelatoriosFinanceiro: TdxBarSubItem;
    EST_MN_R_FIC: TdxBarButton;
    dxBarButton16: TdxBarButton;
    EST_MN_R_DEV: TdxBarButton;
    EST_MN_R_ABC_PRO: TdxBarButton;
    EST_MN_R_INV: TdxBarButton;
    EST_MN_R_CTE: TdxBarButton;
    EST_MN_R_GIR: TdxBarButton;
    EST_MN_R_MOV: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    FIN_MN_M_CRC: TdxBarButton;
    FIN_MN_M_CRF: TdxBarButton;
    FIN_MN_M_REC_RET: TdxBarButton;
    FIN_MN_M_BOL: TdxBarButton;
    FIN_MN_M_ORC: TdxBarButton;
    CSU_MN_M_NFE: TdxBarButton;
    CTC_MN_M_PRO: TdxBarButton;
    CSU_MN_C_ORC: TdxBarButton;
    CTC_MN_M_APG: TdxBarButton;
    dsoAPG: TDataSource;
    CTC_MN_M_SLM: TdxBarButton;
    CTC_MN_R_SLM: TdxBarButton;
    smiCargas: TdxBarSubItem;
    FAT_MN_M_ROM: TdxBarButton;
    FIN_MN_M_PQD: TdxBarButton;
    CTC_MN_M_BDE: TdxBarButton;
    dxBarButton12: TdxBarButton;
    CTC_MN_C_OCO: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    FIN_MN_M_LMF: TdxBarButton;
    FIN_MN_M_PRC: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    FIN_MN_R_LMF: TdxBarButton;
    FIN_MN_R_PRC: TdxBarButton;
    CAD_MN_C_DTS: TdxBarButton;
    CTC_MN_M_PME: TdxBarButton;
    dxBarButton39: TdxBarButton;
    CAD_MN_C_AUS: TdxBarButton;
    FIN_MN_M_MCH: TdxBarButton;
    EST_MN_R_MAL: TdxBarButton;
    CSU_MN_M_AUD: TdxBarButton;
    EST_MN_R_DEZ: TdxBarButton;
    smiOficina: TdxBarSubItem;
    OFI_MN_M_ORP: TdxBarButton;
    OFI_MN_M_RPP: TdxBarButton;
    OFI_MN_M_FEP: TdxBarButton;
    OFI_MN_C_TIO: TdxBarButton;
    smiRelatoriosOficina: TdxBarSubItem;
    OFI_MN_OFP_POS: TdxBarButton;
    OFI_MN_R_COM: TdxBarButton;
    OFI_MN_R_FIP: TdxBarButton;
    OFI_MN_R_HIP: TdxBarButton;
    OFI_MN_R_ABC: TdxBarButton;
    smiDocumentos: TdxBarSubItem;
    dxBarSubItem13: TdxBarSubItem;
    btnControleDocumentos: TdxBarSubItem;
    PCP_MN_C_LME: TdxBarButton;
    PCP_MN_C_TLM: TdxBarButton;
    PCP_MN_C_ORI: TdxBarButton;
    CAD_MN_C_PRG: TdxBarButton;
    OFI_MN_M_CVL: TdxBarButton;
    procedure CTC_MN_M_AVFClick(Sender: TObject);
    procedure CTC_MN_M_FACClick(Sender: TObject);
    procedure CAD_MN_C_CLIClick(Sender: TObject);
    procedure CAD_MN_C_FORClick(Sender: TObject);
    procedure CAD_MN_C_FUNClick(Sender: TObject);
    procedure CAD_MN_C_ITEClick(Sender: TObject);
    procedure CAD_MN_C_SETClick(Sender: TObject);
    procedure PCP_MN_C_CRGClick(Sender: TObject);
    procedure CAD_MN_C_CNEClick(Sender: TObject);
    procedure CAD_MN_C_CIDClick(Sender: TObject);
    procedure CAD_MN_C_RAMClick(Sender: TObject);
    procedure CAD_MN_C_CINClick(Sender: TObject);
    procedure CAD_MN_C_PECClick(Sender: TObject);
    procedure CAD_MN_C_PCTClick(Sender: TObject);
    procedure CAD_MN_C_CCUClick(Sender: TObject);
    procedure CAD_MN_C_CTCClick(Sender: TObject);
    procedure CAD_MN_C_LTOClick(Sender: TObject);
    procedure CAD_MN_C_TIFClick(Sender: TObject);
    procedure CAD_MN_C_TMEClick(Sender: TObject);
    procedure CAD_MN_C_FPGClick(Sender: TObject);
    procedure CAD_MN_C_UNDClick(Sender: TObject);
    procedure CAD_MN_C_NCMClick(Sender: TObject);
    procedure CAD_MN_C_TRIClick(Sender: TObject);
    procedure CAD_MN_C_GRUClick(Sender: TObject);
    procedure CAD_MN_C_NATClick(Sender: TObject);
    procedure CAD_MN_C_CFOClick(Sender: TObject);
    procedure CAD_MN_C_INFClick(Sender: TObject);
    procedure CAD_MN_C_CPGClick(Sender: TObject);
    procedure CMP_MN_M_SOLClick(Sender: TObject);
    procedure CMP_MN_M_COTClick(Sender: TObject);
    procedure CMP_MN_M_PEDClick(Sender: TObject);
    procedure CTC_MN_M_ORCClick(Sender: TObject);
    procedure CTC_MN_C_OBRClick(Sender: TObject);
    procedure CTC_MN_C_TPRClick(Sender: TObject);
    procedure CAD_MN_C_PARClick(Sender: TObject);
    procedure CAD_MN_C_FAMClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CAD_MN_C_TDFClick(Sender: TObject);
    procedure PCP_MN_C_MDEClick(Sender: TObject);
    procedure PCP_MN_C_MEQClick(Sender: TObject);
    procedure CAD_MN_C_VEIClick(Sender: TObject);
    procedure PCP_MN_M_ROMClick(Sender: TObject);
    procedure PCP_MN_M_MCPClick(Sender: TObject);
    procedure PCP_MN_M_CMEClick(Sender: TObject);
    procedure PCP_MN_M_ORSClick(Sender: TObject);
    procedure EST_MN_M_NFEClick(Sender: TObject);
    procedure EST_MN_M_NFDClick(Sender: TObject);
    procedure EST_MN_M_NFSClick(Sender: TObject);
    procedure EST_MN_M_NFCClick(Sender: TObject);
    procedure EST_MN_M_CTEClick(Sender: TObject);
    procedure CTC_MN_C_EPIClick(Sender: TObject);
    procedure CTC_MN_M_CEPClick(Sender: TObject);
    procedure CTC_MN_R_EPIClick(Sender: TObject);
    procedure CTC_MN_M_CFEClick(Sender: TObject);
    procedure CTC_MN_M_OFIClick(Sender: TObject);
    procedure SEG_MN_X_BCKClick(Sender: TObject);
    procedure CAD_MN_R_ITEClick(Sender: TObject);
    procedure enLinkClick(Sender: TObject);
    procedure CAD_MN_C_CORClick(Sender: TObject);
    procedure CAD_MN_C_MVEClick(Sender: TObject);
    procedure CTC_MN_M_LOCClick(Sender: TObject);
    procedure CSU_MN_C_ITEClick(Sender: TObject);
    procedure CSU_MN_C_CLIClick(Sender: TObject);
    procedure CSU_MN_C_FORClick(Sender: TObject);
    procedure CMP_MN_M_XMLClick(Sender: TObject);
    procedure FIN_MN_M_CTA_ABEClick(Sender: TObject);
    procedure FIN_MN_M_CTA_CXAClick(Sender: TObject);
    procedure FIN_MN_M_CTA_BCOClick(Sender: TObject);
    procedure FIN_MN_M_CTA_CONClick(Sender: TObject);
    procedure FIN_MN_M_REC_REMClick(Sender: TObject);
    procedure FIN_MN_M_RECClick(Sender: TObject);
    procedure FIN_MN_M_RBXClick(Sender: TObject);
    procedure FIN_MN_M_PAGClick(Sender: TObject);
    procedure FIN_MN_M_PBXClick(Sender: TObject);
    procedure FAT_MN_M_POSClick(Sender: TObject);
    procedure CAD_MN_C_PESClick(Sender: TObject);
    procedure FAT_MN_M_PEDClick(Sender: TObject);
    procedure CTC_MN_R_BDEClick(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CAD_MN_R_CNEClick(Sender: TObject);
    procedure CAD_MN_R_FUNClick(Sender: TObject);
    procedure CAD_MN_R_CLIClick(Sender: TObject);
    procedure CAD_MN_R_FORClick(Sender: TObject);
    procedure CAD_MN_R_CIDClick(Sender: TObject);
    procedure CAD_MN_R_RAMClick(Sender: TObject);
    procedure CAD_MN_R_PECClick(Sender: TObject);
    procedure CAD_MN_R_CCUClick(Sender: TObject);
    procedure CAD_MN_R_PCTClick(Sender: TObject);
    procedure CAD_MN_R_CTCClick(Sender: TObject);
    procedure CAD_MN_R_LTOClick(Sender: TObject);
    procedure CAD_MN_R_TIFClick(Sender: TObject);
    procedure CAD_MN_R_TMEClick(Sender: TObject);
    procedure CAD_MN_R_PESClick(Sender: TObject);
    procedure CAD_MN_R_UNDClick(Sender: TObject);
    procedure CAD_MN_R_NCMClick(Sender: TObject);
    procedure CAD_MN_R_TRIClick(Sender: TObject);
    procedure CAD_MN_R_GRUClick(Sender: TObject);
    procedure CAD_MN_R_FPGClick(Sender: TObject);
    procedure CAD_MN_R_INFClick(Sender: TObject);
    procedure CAD_MN_R_CFOClick(Sender: TObject);
    procedure CAD_MN_R_CRGClick(Sender: TObject);
    procedure CAD_MN_R_CORClick(Sender: TObject);
    procedure OFI_MN_R_TIOClick(Sender: TObject);
    procedure CAD_MN_C_ALMClick(Sender: TObject);
    procedure CTC_MN_C_EOCClick(Sender: TObject);
    procedure CTC_MN_R_ORCClick(Sender: TObject);
    procedure CTC_MN_R_COMClick(Sender: TObject);
    procedure CTC_MN_M_MEDClick(Sender: TObject);
    procedure CTC_MN_R_MEDClick(Sender: TObject);
    procedure FAT_MN_M_NFE_FREClick(Sender: TObject);
    procedure CMP_MN_M_APRClick(Sender: TObject);
    procedure EST_MN_R_FICClick(Sender: TObject);
    procedure EST_MN_R_DEVClick(Sender: TObject);
    procedure EST_MN_R_ABC_PROClick(Sender: TObject);
    procedure EST_MN_R_INVClick(Sender: TObject);
    procedure EST_MN_R_CTEClick(Sender: TObject);
    procedure EST_MN_R_GIRClick(Sender: TObject);
    procedure EST_MN_R_MOVClick(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure FIN_MN_M_CRCClick(Sender: TObject);
    procedure FIN_MN_M_CRFClick(Sender: TObject);
    procedure FIN_MN_M_REC_RETClick(Sender: TObject);
    procedure FIN_MN_M_BOLClick(Sender: TObject);
    procedure FIN_MN_M_ORCClick(Sender: TObject);
    procedure CSU_MN_M_NFEClick(Sender: TObject);
    procedure CTC_MN_M_PROClick(Sender: TObject);
    procedure CSU_MN_C_ORCClick(Sender: TObject);
    procedure CTC_MN_M_APGClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CTC_MN_M_SLMClick(Sender: TObject);
    procedure CTC_MN_R_SLMClick(Sender: TObject);
    procedure FAT_MN_M_ROMClick(Sender: TObject);
    procedure FIN_MN_M_PQDClick(Sender: TObject);
    procedure CAD_MN_R_FAMClick(Sender: TObject);
    procedure CTC_MN_M_BDEClick(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure CTC_MN_C_OCOClick(Sender: TObject);
    procedure FIN_MN_M_LMFClick(Sender: TObject);
    procedure FIN_MN_M_PRCClick(Sender: TObject);
    procedure FIN_MN_R_LMFClick(Sender: TObject);
    procedure FIN_MN_R_PRCClick(Sender: TObject);
    procedure CAD_MN_C_DTSClick(Sender: TObject);
    procedure CTC_MN_M_PMEClick(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure CAD_MN_C_AUSClick(Sender: TObject);
    procedure FIN_MN_M_MCHClick(Sender: TObject);
    procedure EST_MN_R_MALClick(Sender: TObject);
    procedure CSU_MN_M_AUDClick(Sender: TObject);
    procedure EST_MN_R_DEZClick(Sender: TObject);
    procedure OFI_MN_M_ORPClick(Sender: TObject);
    procedure OFI_MN_M_RPPClick(Sender: TObject);
    procedure OFI_MN_M_FEPClick(Sender: TObject);
    procedure OFI_MN_C_TIOClick(Sender: TObject);
    procedure OFI_MN_OFP_POSClick(Sender: TObject);
    procedure OFI_MN_R_FIPClick(Sender: TObject);
    procedure OFI_MN_R_HIPClick(Sender: TObject);
    procedure PCP_MN_C_LMEClick(Sender: TObject);
    procedure PCP_MN_C_TLMClick(Sender: TObject);
    procedure PCP_MN_C_ORIClick(Sender: TObject);
    procedure CAD_MN_C_PRGClick(Sender: TObject);
    procedure OFI_MN_M_CVLClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirPeqDesp;
  public
    { Public declarations }
  end;

var
  frmSoftMenu: TfrmSoftMenu;
  xExibMsgSolCmp:Boolean;
  xExibMsgEst:Boolean;
implementation

{$R *.dfm}

uses CTC_UN_M_AVF, CTC_UN_M_FAC, CAD_UN_C_CLI, CAD_UN_C_FOR,
     CAD_UN_C_FUN, CAD_UN_C_ITE, PCP_UN_C_CRG, CAD_UN_C_CNE, CAD_UN_C_CID,
     CAD_UN_C_RAM, CAD_UN_C_CIN, CAD_UN_C_PEC, CAD_UN_C_PCT, CAD_UN_C_CCU,
     CAD_UN_C_CTC, CAD_UN_C_LTO, CAD_UN_C_TIF, CAD_UN_C_TME, CAD_UN_C_FPG,
     CAD_UN_C_UND, CAD_UN_C_NCM, CAD_UN_C_TRI, CAD_UN_C_GRU, CAD_UN_C_CFO,
     CAD_UN_C_INF, CAD_UN_C_CPG, CAD_UN_C_NAT, CMP_UN_M_SOL, CMP_UN_M_COT,
     CMP_UN_M_PED, CTC_UN_M_ORC, CTC_UN_C_OBR, CTC_UN_C_TPR, CAD_UN_C_PAR,
     CAD_UN_C_FAM, PCP_UN_C_MDE, PCP_UN_C_MEQ, CAD_UN_C_VEI,
     PCP_UN_M_ROM, PCP_UN_M_ORS, EST_UN_M_NFE,
     EST_UN_M_NFD, EST_UN_M_NFS, EST_UN_M_NFC, EST_UN_M_CTE, CTC_UN_C_EPI,
     CTC_UN_R_EPI, CTC_UN_M_CEP, CTC_UN_M_CFE, CTC_UN_M_OFI, SEG_UN_X_BCK,
  CTC_UN_M_BDE, CTC_UN_R_BDE, CAD_UN_C_COR, CAD_UN_C_MVE, CTC_UN_M_LOC,
  CSU_UN_C_ITE, CSU_UN_C_CLI, CSU_UN_C_FOR, EST_UN_M_MAL, CMP_UN_M_XML,
  FIN_UN_M_CTA_ABE, FIN_UN_M_CTA_CXA, FIN_UN_M_CTA_BCO,
  FIN_UN_M_REC, FIN_UN_M_REC_REM, FIN_UN_M_PAG, FIN_UN_M_PBX, FIN_UN_M_RBX,
  CAD_UN_C_SET, PCP_UN_M_CME, PCP_UN_M_MCP, FAT_UN_M_POS, uDmGeral,
  enConstantes, CAD_UN_C_PES, SEG_UN_X_SEN, CAD_UN_R_CCU, CAD_UN_R_CFO,
  CAD_UN_R_CID, CAD_UN_R_CLI, CAD_UN_R_CNE, CAD_UN_R_COR, CAD_UN_R_CRG,
  CAD_UN_R_CTC, CAD_UN_R_E01, CAD_UN_R_FOR, CAD_UN_R_FPG, CAD_UN_R_FUN,
  CAD_UN_R_GRU, CAD_UN_R_INF, CAD_UN_R_ITE, CAD_UN_R_NCM, CAD_UN_R_RAM,
  CAD_UN_R_LTO, CAD_UN_R_MVE, CAD_UN_R_PCT, CAD_UN_R_PEC, CAD_UN_R_PES,
  CAD_UN_R_PRG, CAD_UN_R_SET, CAD_UN_R_TAM, CAD_UN_R_TDF, CAD_UN_R_TIF,
  CAD_UN_R_TME, CAD_UN_R_TRI, CAD_UN_R_UND, OFI_UN_R_TIO, CAD_UN_C_ALM,
  CTC_UN_C_EOC, CTC_UN_R_ORC, CTC_UN_R_COM, CTC_UN_M_MED, CTC_UN_R_MED,
  FAT_UN_M_NFE_FRE, CMP_UN_M_APR, EST_UN_R_FIC, EST_UN_R_DEV, EST_UN_R_ABC,
  EST_UN_R_INV, EST_UN_R_CTE, EST_UN_R_GIR, EST_UN_R_MOV, FIN_UN_R_PAG,
  FIN_UN_R_PCP, FIN_UN_R_EXF, FIN_UN_R_REC, FIN_UN_R_PCR, FIN_UN_R_EXC,
  FIN_UN_R_COB, FIN_UN_R_MCH, FIN_UN_R_CHQ, FIN_UN_R_CXA, FIN_UN_R_BCO,
  FIN_UN_R_ANV, FIN_UN_M_RCR, FIN_UN_M_PCR, FIN_UN_M_CTA_CON, FIN_UN_M_BOL,
  FIN_UN_M_ORC, FIN_UN_M_REC_RET, PAD_UN_X_PAD, CSU_UN_M_NFE, EST_UN_M_XML,
  CTC_UN_M_PRO, CSU_UN_M_ORC, CTC_UN_M_APG, CTC_UN_M_SLM, CTC_UN_R_SLM,
  FAT_UN_M_ROM, AVS_UN_X_APG, AVS_UN_X_EST, FIN_UN_M_PQD, CAD_UN_R_FAM,
  FAT_UN_R_NFE, CTC_UN_C_OCO, FIN_UN_M_LMF, FIN_UN_R_LMF, FIN_UN_M_PRC,
  FIN_UN_R_PRC, CAD_UN_C_DTS, CTC_UN_M_PME, FIN_UN_R_OBR, CAD_UN_C_AUS,
  FIN_UN_M_MCH, EST_UN_R_MAL, CSU_UN_M_AUD, EST_UN_R_DEZ, AVS_UN_X_SOL,
  OFI_UN_M_ORP, OFI_UN_M_RPP, OFI_UN_M_FEP, OFI_UN_C_TIO, OFI_UN_R_OFP_POS,
  OFI_UN_R_FIP, OFI_UN_R_HIP, PCP_UN_C_LME,
  PCP_UN_C_ORI, PCP_UN_C_TLM, CAD_UN_C_PRG, OFI_UN_M_CVL;

procedure TfrmSoftMenu.CTC_MN_C_OBRClick(Sender: TObject);
begin
 OpenForm(TCTC_FM_C_OBR, CTC_FM_C_OBR);
end;

procedure TfrmSoftMenu.CTC_MN_C_OCOClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_C_OCO, CTC_FM_C_OCO);
end;

procedure TfrmSoftMenu.CTC_MN_C_TPRClick(Sender: TObject);
begin
 OpenForm(TCTC_FM_C_TPR, CTC_FM_C_TPR);
end;

procedure TfrmSoftMenu.CTC_MN_M_ORCClick(Sender: TObject);
begin
 OpenForm(TCTC_FM_M_ORC, CTC_FM_M_ORC);
end;

procedure TfrmSoftMenu.CTC_MN_M_PMEClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_M_PME, CTC_FM_M_PME);
end;

procedure TfrmSoftMenu.CTC_MN_M_PROClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_M_PRO, CTC_FM_M_PRO);
end;

procedure TfrmSoftMenu.CTC_MN_M_SLMClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_M_SLM, CTC_FM_M_SLM);
end;

procedure TfrmSoftMenu.CTC_MN_R_EPIClick(Sender: TObject);
begin
// OpenForm(TCTC_FM_R_EPI, CTC_FM_R_EPI);
end;

procedure TfrmSoftMenu.CTC_MN_R_MEDClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_R_MED, CTC_FM_R_MED);
end;

procedure TfrmSoftMenu.CTC_MN_R_ORCClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_R_ORC, CTC_FM_R_ORC);
end;

procedure TfrmSoftMenu.CTC_MN_R_SLMClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_R_SLM, CTC_FM_R_SLM);
end;

procedure TfrmSoftMenu.FAT_MN_M_NFE_FREClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_NFE_FRE, FAT_FM_M_NFE_FRE);
end;

procedure TfrmSoftMenu.FAT_MN_M_PEDClick(Sender: TObject);
begin
  //OpenForm(TFAT_FM_M_PED, FAT_FM_M_PED);
end;

procedure TfrmSoftMenu.FAT_MN_M_POSClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_POS, FAT_FM_M_POS);
end;

procedure TfrmSoftMenu.FAT_MN_M_ROMClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_ROM, FAT_FM_M_ROM);
end;

procedure TfrmSoftMenu.CAD_MN_C_PESClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_PES, CAD_FM_C_PES);
end;

procedure TfrmSoftMenu.CAD_MN_C_PRGClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_PRG, CAD_FM_C_PRG);
end;

procedure TfrmSoftMenu.CTC_MN_R_BDEClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_R_BDE, CTC_FM_R_BDE);
end;

procedure TfrmSoftMenu.CTC_MN_R_COMClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_R_COM, CTC_FM_R_COM);
end;

procedure TfrmSoftMenu.CAD_MN_R_FUNClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_FUN, CAD_FM_R_FUN);
end;

procedure TfrmSoftMenu.CAD_MN_R_CLIClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CLI, CAD_FM_R_CLI);
end;

procedure TfrmSoftMenu.CAD_MN_R_FAMClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_FAM, CAD_FM_R_FAM);
end;

procedure TfrmSoftMenu.CAD_MN_R_FORClick(Sender: TObject);
begin
OpenForm(TCAD_FM_R_FOR, CAD_FM_R_FOR);
end;

procedure TfrmSoftMenu.CTC_MN_M_APGClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_M_APG,CTC_FM_M_APG);
end;

procedure TfrmSoftMenu.dxBarButton12Click(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_NFE, FAT_FM_R_NFE);
end;

procedure TfrmSoftMenu.dxBarButton13Click(Sender: TObject);
var
  I:integer;
begin
  FreeAndNil(AVS_FM_X_EST);
  FreeAndNil(AVS_FM_X_APG);
  FreeAndNil(AVS_FM_X_SOL);

   for I := 0 to Screen.FormCount -1 do
    begin
      if Screen.Forms[I] is TForm then
        begin
          if Screen.Forms[I].Showing  then
            begin
              if Screen.Forms[I].Name <> 'frmSoftMenu' then
                begin
                  showmessage('É preciso que feche o(s) formulário(s) aberto(s).');
                  //CanClose := False;
                  abort;
                end;
            end;
        end;
    end;


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

procedure TfrmSoftMenu.dxBarButton27Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_ANV, FIN_FM_R_ANV);
end;

procedure TfrmSoftMenu.dxBarButton28Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PAG, FIN_FM_R_PAG);
end;

procedure TfrmSoftMenu.dxBarButton29Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PCP, FIN_FM_R_PCP);
end;

procedure TfrmSoftMenu.dxBarButton30Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_EXF, FIN_FM_R_EXF);
end;

procedure TfrmSoftMenu.dxBarButton31Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_REC,FIN_FM_R_REC );
end;

procedure TfrmSoftMenu.dxBarButton32Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PCR, FIN_FM_R_PCR);
end;

procedure TfrmSoftMenu.dxBarButton33Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_EXC, FIN_FM_R_EXC);
end;

procedure TfrmSoftMenu.dxBarButton34Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_COB, FIN_FM_R_COB);
end;

procedure TfrmSoftMenu.dxBarButton35Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_MCH,FIN_FM_R_MCH);
end;

procedure TfrmSoftMenu.dxBarButton36Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_CHQ, FIN_FM_R_CHQ);
end;

procedure TfrmSoftMenu.dxBarButton37Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_CXA, FIN_FM_R_CXA);
end;

procedure TfrmSoftMenu.dxBarButton38Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_BCO, FIN_FM_R_BCO);
end;

procedure TfrmSoftMenu.CAD_MN_R_ITEClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_ITE, CAD_FM_R_ITE);
end;

procedure TfrmSoftMenu.CAD_MN_R_CNEClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CNE, CAD_FM_R_CNE);
end;

procedure TfrmSoftMenu.CAD_MN_R_CFOClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CFO, CAD_FM_R_CFO);
end;

procedure TfrmSoftMenu.CAD_MN_R_FPGClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_FPG, CAD_FM_R_FPG);
end;

procedure TfrmSoftMenu.CAD_MN_R_GRUClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_GRU, CAD_FM_R_GRU);
end;

procedure TfrmSoftMenu.CAD_MN_R_CIDClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CID, CAD_FM_R_CID);
end;

procedure TfrmSoftMenu.CAD_MN_R_CCUClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CCU, CAD_FM_R_CCU);
end;

procedure TfrmSoftMenu.CAD_MN_R_TIFClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_TIF, CAD_FM_R_TIF);
end;

procedure TfrmSoftMenu.CAD_MN_R_CTCClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CTC, CAD_FM_R_CTC);
end;

procedure TfrmSoftMenu.CAD_MN_R_LTOClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_LTO, CAD_FM_R_LTO);
end;

procedure TfrmSoftMenu.CAD_MN_R_TRIClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_TRI, CAD_FM_R_TRI);
end;

procedure TfrmSoftMenu.CAD_MN_R_NCMClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_NCM, CAD_FM_R_NCM);
end;

procedure TfrmSoftMenu.CAD_MN_R_UNDClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_UND, CAD_FM_R_UND);
end;

procedure TfrmSoftMenu.CAD_MN_R_TMEClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_TME, CAD_FM_R_TME);
end;

procedure TfrmSoftMenu.CAD_MN_R_PESClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_PES, CAD_FM_R_PES);
end;

procedure TfrmSoftMenu.CAD_MN_R_RAMClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_RAM, CAD_FM_R_RAM);
end;

procedure TfrmSoftMenu.CAD_MN_R_PECClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_PEC, CAD_FM_R_PEC);
end;

procedure TfrmSoftMenu.CAD_MN_R_PCTClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_PCT, CAD_FM_R_PCT);
end;

procedure TfrmSoftMenu.CAD_MN_R_INFClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_INF, CAD_FM_R_INF);
end;

procedure TfrmSoftMenu.CAD_MN_R_CRGClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CRG, CAD_FM_R_CRG);
end;

procedure TfrmSoftMenu.CAD_MN_R_CORClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_COR, CAD_FM_R_COR);
end;

procedure TfrmSoftMenu.OFI_MN_C_TIOClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_C_TIO, OFI_FM_C_TIO);
end;

procedure TfrmSoftMenu.OFI_MN_M_CVLClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_M_CVL, OFI_FM_M_CVL);
end;

procedure TfrmSoftMenu.OFI_MN_M_FEPClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_M_FEP, OFI_FM_M_FEP);
end;

procedure TfrmSoftMenu.OFI_MN_M_ORPClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_M_ORP, OFI_FM_M_ORP);
end;

procedure TfrmSoftMenu.OFI_MN_M_RPPClick(Sender: TObject);
begin
   OpenForm(TOFI_FM_M_RPP, OFI_FM_M_RPP);
end;

procedure TfrmSoftMenu.OFI_MN_OFP_POSClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_R_OFP_POS, OFI_FM_R_OFP_POS);
end;

procedure TfrmSoftMenu.OFI_MN_R_FIPClick(Sender: TObject);
begin
   OpenForm(TOFI_FM_R_FIP, OFI_FM_R_FIP);
end;

procedure TfrmSoftMenu.OFI_MN_R_HIPClick(Sender: TObject);
begin
   OpenForm(TOFI_FM_R_HIP, OFI_FM_R_HIP);
end;

procedure TfrmSoftMenu.OFI_MN_R_TIOClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_R_TIO, OFI_FM_R_TIO);
end;

procedure TfrmSoftMenu.CTC_MN_M_LOCClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_M_LOC, CTC_FM_M_LOC);
end;

procedure TfrmSoftMenu.CTC_MN_M_MEDClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_M_MED, CTC_FM_M_MED);
end;

procedure TfrmSoftMenu.CMP_MN_M_XMLClick(Sender: TObject);
begin
  if dmGeral.VerificarLicenca in [3,4,5,7] then
    exit;
  OpenForm(TEST_FM_M_XML, EST_FM_M_XML);
end;

procedure TfrmSoftMenu.CSU_MN_C_ITEClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_C_ITE, CSU_FM_C_ITE);
end;

procedure TfrmSoftMenu.CSU_MN_C_ORCClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_M_ORC, CSU_FM_M_ORC);
end;

procedure TfrmSoftMenu.CSU_MN_M_AUDClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_M_AUD, CSU_FM_M_AUD);
end;

procedure TfrmSoftMenu.CSU_MN_M_NFEClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_M_NFE, CSU_FM_M_NFE);
end;

procedure TfrmSoftMenu.CSU_MN_C_CLIClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_C_CLI, CSU_FM_C_CLI);
end;

procedure TfrmSoftMenu.CSU_MN_C_FORClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_C_FOR, CSU_FM_C_FOR);
end;

procedure TfrmSoftMenu.FIN_MN_M_BOLClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_BOL,FIN_FM_M_BOL);
end;

procedure TfrmSoftMenu.FIN_MN_M_CRCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_RCR, FIN_FM_M_RCR)
end;

procedure TfrmSoftMenu.FIN_MN_M_CRFClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_PCR, FIN_FM_M_PCR);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_ABEClick(Sender: TObject);
begin
   FIN_FM_M_CTA_ABE := TFIN_FM_M_CTA_ABE.Create(Self);
   FIN_FM_M_CTA_ABE.ShowModal;
   FIN_FM_M_CTA_ABE.Free;
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_CXAClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_CTA_CXA, FIN_FM_M_CTA_CXA);
end;

procedure TfrmSoftMenu.FIN_MN_M_LMFClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_LMF,FIN_FM_M_LMF);
end;

procedure TfrmSoftMenu.FIN_MN_M_MCHClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_MCH,FIN_FM_M_MCH);
end;

procedure TfrmSoftMenu.FIN_MN_M_ORCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_ORC,FIN_FM_M_ORC);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_BCOClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_CTA_BCO, FIN_FM_M_CTA_BCO);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_CONClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_CTA_CON, FIN_FM_M_CTA_CON);
end;

procedure TfrmSoftMenu.FIN_MN_M_PAGClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_PAG, FIN_FM_M_PAG);
end;

procedure TfrmSoftMenu.FIN_MN_M_PBXClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_PBX, FIN_FM_M_PBX);
end;

procedure TfrmSoftMenu.FIN_MN_M_PQDClick(Sender: TObject);
begin
  AbrirPeqDesp;
end;

procedure TfrmSoftMenu.FIN_MN_M_PRCClick(Sender: TObject);
begin
   OpenForm(TFIN_FM_M_PRC, FIN_FM_M_PRC);
end;

procedure TfrmSoftMenu.FIN_MN_M_RECClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_REC, FIN_FM_M_REC);
end;

procedure TfrmSoftMenu.FIN_MN_M_RBXClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_RBX, FIN_FM_M_RBX);
end;

procedure TfrmSoftMenu.FIN_MN_M_REC_REMClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_REC_REM, FIN_FM_M_REC_REM);
end;

procedure TfrmSoftMenu.FIN_MN_M_REC_RETClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_REC_RET,FIN_FM_M_REC_RET);
end;

procedure TfrmSoftMenu.FIN_MN_R_LMFClick(Sender: TObject);
begin
   OpenForm(TFIN_FM_R_LMF, FIN_FM_R_LMF);
end;

procedure TfrmSoftMenu.dxBarButton39Click(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_OBR, FIN_FM_R_OBR);
end;

procedure TfrmSoftMenu.FIN_MN_R_PRCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_PRC, FIN_FM_M_PRC);
end;

procedure TfrmSoftMenu.CMP_MN_M_SOLClick(Sender: TObject);
begin
 OpenForm(TCMP_FM_M_SOL, CMP_FM_M_SOL);
end;

procedure TfrmSoftMenu.CTC_MN_C_EOCClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_C_EOC, CTC_FM_C_EOC);
end;

procedure TfrmSoftMenu.CTC_MN_C_EPIClick(Sender: TObject);
begin
//  OpenForm(TCTC_FM_C_EPI, CTC_FM_C_EPI);
end;

procedure TfrmSoftMenu.CMP_MN_M_APRClick(Sender: TObject);
begin
  OpenForm(TCMP_FM_M_APR, CMP_FM_M_APR);
end;

procedure TfrmSoftMenu.CMP_MN_M_COTClick(Sender: TObject);
begin
 OpenForm(TCMP_FM_M_COT, CMP_FM_M_COT);
end;

procedure TfrmSoftMenu.CMP_MN_M_PEDClick(Sender: TObject);
begin
 OpenForm(TCMP_FM_M_PED, CMP_FM_M_PED);
end;

procedure TfrmSoftMenu.CTC_MN_M_CFEClick(Sender: TObject);
begin
OpenForm(TCTC_FM_M_CFE, CTC_FM_M_CFE);
end;

procedure TfrmSoftMenu.CTC_MN_M_OFIClick(Sender: TObject);
begin
OpenForm(TCTC_FM_M_OFI, CTC_FM_M_OFI);
end;

procedure TfrmSoftMenu.CTC_MN_M_FACClick(Sender: TObject);
begin
 OpenForm(TCTC_FM_M_FAC, CTC_FM_M_FAC);
end;

procedure TfrmSoftMenu.EST_MN_M_NFEClick(Sender: TObject);
begin
  if dmGeral.VerificarLicenca in [3,4,5,7] then
    exit;
  OpenForm(TEST_FM_M_NFE, EST_FM_M_NFE);
end;

procedure TfrmSoftMenu.EST_MN_M_NFDClick(Sender: TObject);
begin
 OpenForm(TEST_FM_M_NFD, EST_FM_M_NFD);
end;

procedure TfrmSoftMenu.EST_MN_M_NFSClick(Sender: TObject);
begin
 //OpenForm(TEST_FM_M_NFS, EST_FM_M_NFS);  Suprimento>Estoque>Saida
end;

procedure TfrmSoftMenu.EST_MN_R_ABC_PROClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_ABC, EST_FM_R_ABC);
end;

procedure TfrmSoftMenu.EST_MN_R_CTEClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_CTE, EST_FM_R_CTE);
end;

procedure TfrmSoftMenu.EST_MN_R_DEVClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_DEV, EST_FM_R_DEV);
end;

procedure TfrmSoftMenu.EST_MN_R_FICClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_FIC, EST_FM_R_FIC);
end;

procedure TfrmSoftMenu.EST_MN_R_GIRClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_GIR, EST_FM_R_GIR);
end;

procedure TfrmSoftMenu.EST_MN_R_INVClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_INV, EST_FM_R_INV);
end;

procedure TfrmSoftMenu.EST_MN_R_MALClick(Sender: TObject);
begin
   OpenForm(TEST_FM_R_MAL, EST_FM_R_MAL);
end;

procedure TfrmSoftMenu.EST_MN_R_MOVClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_MOV, EST_FM_R_MOV);
end;

procedure TfrmSoftMenu.EST_MN_M_NFCClick(Sender: TObject);
begin
 //OpenForm(TEST_FM_M_NFC, EST_FM_M_NFC); Suprimento>Estoque>Devolução de Saida
end;

procedure TfrmSoftMenu.EST_MN_R_DEZClick(Sender: TObject);
begin
 OpenForm(TEST_FM_R_DEZ, EST_FM_R_DEZ);
end;

procedure TfrmSoftMenu.EST_MN_M_CTEClick(Sender: TObject);
begin
 OpenForm(TEST_FM_M_CTE, EST_FM_M_CTE);
end;

procedure TfrmSoftMenu.PCP_MN_M_ORSClick(Sender: TObject);
begin
 OpenForm(TEST_FM_M_MAL, EST_FM_M_MAL);
end;

procedure TfrmSoftMenu.PCP_MN_M_CMEClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_M_CME, PCP_FM_M_CME);
end;

procedure TfrmSoftMenu.PCP_MN_M_MCPClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_M_MCP, PCP_FM_M_MCP);
end;

procedure TfrmSoftMenu.PCP_MN_M_ROMClick(Sender: TObject);
begin
// OpenForm(TPCP_FM_M_ROM, PCP_FM_M_ROM);  Romaneio de Carga.
end;

procedure TfrmSoftMenu.SEG_MN_X_BCKClick(Sender: TObject);
begin
 OpenForm(TSEG_FM_X_BCK, SEG_FM_X_BCK);
end;

procedure TfrmSoftMenu.PCP_MN_C_MEQClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_MEQ, PCP_FM_C_MEQ);
end;

procedure TfrmSoftMenu.PCP_MN_C_ORIClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_C_ORI, PCP_FM_C_ORI);
end;

procedure TfrmSoftMenu.PCP_MN_C_TLMClick(Sender: TObject);
begin
   OpenForm(TPCP_FM_C_TLM, PCP_FM_C_TLM);
end;

procedure TfrmSoftMenu.CAD_MN_C_VEIClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_VEI, CAD_FM_C_VEI);
end;

procedure TfrmSoftMenu.PCP_MN_C_MDEClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_MDE, PCP_FM_C_MDE);
end;

procedure TfrmSoftMenu.CAD_MN_C_TDFClick(Sender: TObject);
begin
 //OpenForm(TCAD_FM_C_TDF, CAD_FM_C_TDF);
end;

procedure TfrmSoftMenu.CTC_MN_M_AVFClick(Sender: TObject);
begin
 OpenForm(TCTC_FM_M_AVF, CTC_FM_M_AVF);
end;

procedure TfrmSoftMenu.CTC_MN_M_BDEClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_M_BDE, CTC_FM_M_BDE);
end;

procedure TfrmSoftMenu.CTC_MN_M_CEPClick(Sender: TObject);
begin
 OpenForm(TCTC_FM_M_CEP, CTC_FM_M_CEP);
end;

procedure TfrmSoftMenu.CAD_MN_C_FAMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_FAM, CAD_FM_C_FAM);
end;

procedure TfrmSoftMenu.CAD_MN_C_PARClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_PAR, CAD_FM_C_PAR);
end;

procedure TfrmSoftMenu.CAD_MN_C_CLIClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CLI, CAD_FM_C_CLI);
end;

procedure TfrmSoftMenu.CAD_MN_C_FORClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_FOR, CAD_FM_C_FOR);
end;

procedure TfrmSoftMenu.CAD_MN_C_FUNClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_FUN, CAD_FM_C_FUN);
end;

procedure TfrmSoftMenu.CAD_MN_C_ITEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_ITE, CAD_FM_C_ITE);
end;

procedure TfrmSoftMenu.CAD_MN_C_SETClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_SET, CAD_FM_C_SET);
end;

procedure TfrmSoftMenu.PCP_MN_C_CRGClick(Sender: TObject);
begin
 OpenForm(TPCP_FM_C_CRG, PCP_FM_C_CRG);
end;

procedure TfrmSoftMenu.PCP_MN_C_LMEClick(Sender: TObject);
begin
   OpenForm(TPCP_FM_C_LME, PCP_FM_C_LME);
end;

procedure TfrmSoftMenu.CAD_MN_C_CNEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CNE, CAD_FM_C_CNE);
end;

procedure TfrmSoftMenu.CAD_MN_C_CORClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_COR, CAD_FM_C_COR);
end;

procedure TfrmSoftMenu.CAD_MN_C_CIDClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CID, CAD_FM_C_CID);
end;

procedure TfrmSoftMenu.CAD_MN_C_RAMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_RAM, CAD_FM_C_RAM);
end;

procedure TfrmSoftMenu.CAD_MN_C_CINClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CIN, CAD_FM_C_CIN);
end;

procedure TfrmSoftMenu.CAD_MN_C_PECClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_PEC, CAD_FM_C_PEC);
end;

procedure TfrmSoftMenu.CAD_MN_C_PCTClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_PCT, CAD_FM_C_PCT);
end;

procedure TfrmSoftMenu.AbrirPeqDesp;
var
   mens: String;
begin
  mens := '';

  dmGeral.FIN_CD_M_CXA.Close;
  dmGeral.FIN_CD_M_CXA.Data :=
    dmGeral.FIN_CD_M_CXA.DataRequest(
      VarArrayOf([90, IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_fornecedor').text) = '' then
      begin
        mens := '.Fornecedor para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_local_titulo').text) = '' then
      begin
        mens := '.Local do título para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_forma_pag').text) = '' then
      begin
        mens := '.Forma de pagamento para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_ccusto').text) = '' then
      begin
        mens := '.Centro de Custo para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pde_id_tipo_financeiro').text) = '' then
      begin
        mens := '.Tipo financeiro para pequenas despesas não foi encontrado nos parâmetros' + #13;
      end;

   if trim(dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').text) = '' then
      begin
        mens := '.Não existe caixa aberto' + #13;
      end;

   if mens <> '' then
      begin
        ShowMessage(mens);
        exit;
      end;

   OpenForm(TFIN_FM_M_PQD, FIN_FM_M_PQD);
  {FIN_FM_M_PQD := TFIN_FM_M_PQD.Create(Self);
  FIN_FM_M_PQD.ShowModal;
  FIN_FM_M_PQD.Free;}
end;

procedure TfrmSoftMenu.CAD_MN_C_DTSClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_DTS, CAD_FM_C_DTS);
end;

procedure TfrmSoftMenu.CAD_MN_C_ALMClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_ALM, CAD_FM_C_ALM);
end;

procedure TfrmSoftMenu.CAD_MN_C_AUSClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_AUS, CAD_FM_C_AUS);
end;

procedure TfrmSoftMenu.CAD_MN_C_CCUClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CCU, CAD_FM_C_CCU);
end;

procedure TfrmSoftMenu.CAD_MN_C_CTCClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CTC, CAD_FM_C_CTC);
end;

procedure TfrmSoftMenu.CAD_MN_C_LTOClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_LTO, CAD_FM_C_LTO);
end;

procedure TfrmSoftMenu.CAD_MN_C_MVEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_MVE, CAD_FM_C_MVE);
end;

procedure TfrmSoftMenu.CAD_MN_C_TIFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_TIF, CAD_FM_C_TIF);
end;

procedure TfrmSoftMenu.CAD_MN_C_TMEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_TME, CAD_FM_C_TME);
end;

procedure TfrmSoftMenu.CAD_MN_C_FPGClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_FPG, CAD_FM_C_FPG);
end;

procedure TfrmSoftMenu.CAD_MN_C_UNDClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_UND, CAD_FM_C_UND);
end;

procedure TfrmSoftMenu.CAD_MN_C_NCMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_NCM, CAD_FM_C_NCM);
end;

procedure TfrmSoftMenu.CAD_MN_C_TRIClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_TRI, CAD_FM_C_TRI);
end;

procedure TfrmSoftMenu.CAD_MN_C_GRUClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_GRU, CAD_FM_C_GRU);
end;

procedure TfrmSoftMenu.CAD_MN_C_NATClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_NAT, CAD_FM_C_NAT);
end;

procedure TfrmSoftMenu.CAD_MN_C_CFOClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CFO, CAD_FM_C_CFO);
end;

procedure TfrmSoftMenu.CAD_MN_C_INFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_INF, CAD_FM_C_INF);
end;

procedure TfrmSoftMenu.CAD_MN_C_CPGClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CPG, CAD_FM_C_CPG);
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
  FreeAndNil(AVS_FM_X_APG);
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
var
  Rede:TInifile;
  xCorBotao:String;
  dias,mes,ano:Word;
begin
  DecodeDate(xDataSis,ano,mes,dias);

  xFuncionario  := dmGeral.CAD_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;
  xPerfilUsuario:= dmGeral.CAD_CD_C_FUN.FieldByName('ID_PERFIL_SEG').AsInteger;


  dmGeral.BUS_CD_M_SOL.Close;
  dmGeral.BUS_CD_M_SOL.Data :=
  dmGeral.BUS_CD_M_SOL.DataRequest(VarArrayOf([90,0]));

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));

  dmGeral.BUS_CD_M_APG.Close;
  dmGeral.BUS_CD_M_APG.Data :=
    dmGeral.BUS_CD_M_APG.DataRequest(
      VarArrayOf([1, dmgeral.CAD_CD_C_PARid_empresa.Text, dias ]));


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

  if dmGeral.BUS_CD_C_FUN.FieldByName('SEG_HABILITAR_SEG').AsBoolean = True then
    begin
     xHabBtnAlterar := dmGeral.BUS_CD_C_FUN.FieldByName('seg_hab_bot_alt_fun').AsBoolean;
     xHabBtnExcluir := dmGeral.BUS_CD_C_FUN.FieldByName('seg_hab_bot_exc').AsBoolean;
    end;

  dxStatusBar.Panels[0].Text:='Versão do Sistema : '+CVersaoSistema;
  dxStatusBar.Panels[1].Text:='Data do Sistema : '+DateToStr(xDataSis);
  dxStatusBar.Panels[2].Text:='Usuário : '+ dmGeral.BUS_CD_C_FUN.FieldByName('Nome').AsString;
  dxStatusBar.Panels[3].Text:='Empresa : '+ dmGeral.CAD_CD_C_PAR.FieldByName('emp_razao').AsString;

  dmGeral.enCarregaMenu(MenuManager,inttostr(xFuncionario),xPerfilUsuario);

  {if dmGeral.BUS_CD_C_FUN.FieldByName('SEG_CTC_APG').AsBoolean and dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean then
    CTC_MN_M_APG.Enabled := true
  else
    CTC_MN_M_APG.Enabled := False;}

  if smiTabelas.ItemLinks.AvailableItemCount=0 then
     smiTabelas.Visible:=ivNever;

  if smiCadastros.ItemLinks.AvailableItemCount=0 then
     smiCadastros.Visible:=ivNever;

  if smiConsultas.ItemLinks.AvailableItemCount=0 then
     smiConsultas.Visible:=ivNever;

  if smiSuprimentos.ItemLinks.AvailableItemCount=0 then
     smiSuprimentos.Visible:=ivNever;

  if smiComercial.ItemLinks.AvailableItemCount=0 then
     smiComercial.Visible:=ivNever;

  if smiFinanceiro.ItemLinks.AvailableItemCount=0 then
     smiFinanceiro.Visible:=ivNever;

  if smiEngenharia.ItemLinks.AvailableItemCount=0 then
     smiEngenharia.Visible:=ivNever;

  if smiQualidade.ItemLinks.AvailableItemCount=0 then
     smiQualidade.Visible:=ivNever;

  if smiManutencao.ItemLinks.AvailableItemCount=0 then
     smiManutencao.Visible:=ivNever;

  if smiSeguranca.ItemLinks.AvailableItemCount=0 then
     smiSeguranca.Visible:=ivNever;

  if smiRelatoriosAdministrativo.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosAdministrativo.Visible:=ivNever;

  if smiRelatoriosEngenharia.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosEngenharia.Visible:=ivNever;

  if smiOficina.ItemLinks.AvailableItemCount=0 then
     smiOficina.Visible:=ivNever;

  if smiRelatoriosOficina.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosOficina.Visible:=ivNever;

  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');

  xCorBotao := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
end;

procedure TfrmSoftMenu.FormResize(Sender: TObject);
begin
  if frmSoftMenu <> nil then
     begin
       if (not dmgeral.BUS_CD_M_ITE_EST_MIN.IsEmpty) and  xExibMsgEst then
        begin
          AVS_FM_X_EST.Top := frmSoftMenu.Height - AVS_FM_X_EST.Height - 195;
          AVS_FM_X_EST.Left := 0;
        end;
     end;

  if frmSoftMenu <> nil then
     begin
       if (not dmgeral.BUS_CD_M_APG.IsEmpty) and  (AVS_FM_X_APG <> nil) then
        begin
          AVS_FM_X_APG.Top := frmSoftMenu.Height - AVS_FM_X_APG.Height - 195;
          AVS_FM_X_APG.Left := frmSoftMenu.Width - AVS_FM_X_APG.Width  - 25;
        end;

       if (not dmGeral.BUS_CD_M_SOL.IsEmpty) and xExibMsgSolCmp then
        begin
          AVS_FM_X_SOL.Top := frmSoftMenu.Height - AVS_FM_X_SOL.Height - 190;
          AVS_FM_X_SOL.Left := frmSoftMenu.Width - AVS_FM_X_SOL.Width - 25;
        end;
     end;
end;

procedure TfrmSoftMenu.FormShow(Sender: TObject);
var
  dias,mes,ano:Word;
  x,i,subNiveis:Integer;
begin
  DecodeDate(xDataSis,ano,mes,dias);
  dmGeral.BusFuncionario(0, IntToStr(xFuncionario));
  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
    begin
      xExibMsgSolCmp := dmGeral.BUS_CD_C_FUNseg_vis_ult_cmp_ite.AsBoolean;
      xExibMsgEst := dmGeral.BUS_CD_C_FUNseq_vis_alert_est_min.AsBoolean;
    end;

  if (not dmGeral.BUS_CD_M_APG.IsEmpty) and
    (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_CTC_APG').AsBoolean) and
    (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean) and
    ( dmGeral.BUS_CD_M_APG.FieldByName('DIA').AsInteger = dias) then
    begin
      showmessage('Foi agendado pagamento para hoje!');
      OpenForm(TAVS_FM_X_APG, AVS_FM_X_APG);
    end;

  if xExibMsgEst and (not dmGeral.BUS_CD_M_ITE_EST_MIN.IsEmpty) then
    begin
      showmessage('Existe itens de estoque minimo!');
      OpenForm(TAVS_FM_X_EST, AVS_FM_X_EST);
    end;

  if xExibMsgSolCmp and (not dmGeral.BUS_CD_M_SOL.IsEmpty) then
    begin
      showmessage('Existe solicitação de compra!');
      OpenForm(TAVS_FM_X_SOL, AVS_FM_X_SOL);
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
     end;

   if not (dmGeral.CAD_CD_C_PAR_MODtab.AsBoolean = True) then
     begin
       smiTabelas.Visible := ivNever;
       smiTabelas.Enabled := false;

     end;

   if not (dmGeral.CAD_CD_C_PAR_MODcsu.AsBoolean = True) then
     begin
       smiConsultas.Visible := ivNever;
       smiConsultas.Enabled := false;
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

   if not (dmGeral.CAD_CD_C_PAR_MODomp.AsBoolean = True) then
     begin
       smiOficina.Visible := ivNever;
       smiOficina.Enabled := false;

       smiRelatoriosOficina.Visible := ivNever;
       smiRelatoriosOficina.Enabled := false;
     end;

   subNiveis :=1;
   for I := 0 to subNiveis do   //Faz varredura de acordo quantidade de subniveis
     for x := 0 to ComponentCount-1 do
      begin
        if (components[x] is TdxBarSubItem) and
           (TdxBarSubItem(Components[x]).ItemLinks.VisibleItemCount = 0) then
          begin
             TdxBarSubItem(Components[x]).Visible := ivNever;
          end;

      end;
end;

procedure TfrmSoftMenu.enLinkClick(Sender: TObject);
var
  enSite: string;
begin
  enSite := 'http://www.e-north.com.br';
  ShellExecute(Application.Handle, PChar('open'), PChar(enSite),
   nil, nil, SW_SHOW);
end;

{ Tmythread }

procedure Tmythread.AtualizaVCL;
var
  dias,mes,ano:Word;
begin
  DecodeDate(xDataSis,ano,mes,dias);


  dmGeral.BUS_CD_M_SOL.Close;
  dmGeral.BUS_CD_M_SOL.Data :=
  dmGeral.BUS_CD_M_SOL.DataRequest(VarArrayOf([90,0]));

  dmGeral.BUS_CD_M_APG.Close;
  dmGeral.BUS_CD_M_APG.Data :=
    dmGeral.BUS_CD_M_APG.DataRequest(
      VarArrayOf([2, dmgeral.CAD_CD_C_PARid_empresa.Text, '']));

  dmGeral.BUS_CD_M_APG.Close;
  dmGeral.BUS_CD_M_APG.Data :=
    dmGeral.BUS_CD_M_APG.DataRequest(
      VarArrayOf([1, dmgeral.CAD_CD_C_PARid_empresa.Text, dias ]));

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

  if xExibMsgSolCmp and (not dmGeral.BUS_CD_M_SOL.IsEmpty) and (AVS_FM_X_SOL = nil) then
    begin
      OpenForm(TAVS_FM_X_SOL, AVS_FM_X_SOL);
    end;

  if (AVS_FM_X_SOL <> nil) and (dmGeral.BUS_CD_M_SOL.IsEmpty) then
    begin
      FreeAndNil(AVS_FM_X_SOL);
    end;


   if (not dmGeral.BUS_CD_M_APG.IsEmpty) and
    (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_CTC_APG').AsBoolean) and
    (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean) and
    ( dmGeral.BUS_CD_M_APG.FieldByName('DIA').AsInteger = dias) and (AVS_FM_X_APG = nil) then
    begin
      OpenForm(TAVS_FM_X_APG, AVS_FM_X_APG);
    end;

   if (AVS_FM_X_APG <> nil) and (dmGeral.BUS_CD_M_APG.IsEmpty) then
    begin
      FreeAndNil(AVS_FM_X_APG);
    end;
end;

procedure Tmythread.Execute;
begin
  inherited;
  while xExibMsgSolCmp do
   begin
     sleep(600000);
     Synchronize(AtualizaVCL);
   end;
end;

end.
