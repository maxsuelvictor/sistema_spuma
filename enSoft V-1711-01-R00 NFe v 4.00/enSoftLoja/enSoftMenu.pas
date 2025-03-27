unit enSoftMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBar, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, cxClasses, dxRibbon,
  Vcl.ImgList, enFunc, dxStatusBar, dxRibbonStatusBar, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter,
  dxRibbonCustomizationForm, Data.DB, Vcl.StdCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ExtCtrls, dxBarExtItems, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

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
    smiEstoque: TdxBarSubItem;
    smiComercial: TdxBarSubItem;
    smiFinanceiro: TdxBarSubItem;
    smiFaturamento: TdxBarSubItem;
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
    CAD_MN_C_PAR: TdxBarButton;
    CAD_MN_C_CLI: TdxBarButton;
    CAD_MN_C_FOR: TdxBarButton;
    CAD_MN_C_FUN: TdxBarButton;
    CSU_MN_C_ITE: TdxBarButton;
    CAD_MN_C_ITE: TdxBarButton;
    CSU_MN_C_CLI: TdxBarButton;
    CSU_MN_C_FOR: TdxBarButton;
    bmRelatorios: TdxBar;
    smiRelatoriosAdministrativo: TdxBarSubItem;
    smiRelatoriosOficina: TdxBarSubItem;
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
    EST_MN_M_NFS: TdxBarButton;
    EST_MN_M_NFC: TdxBarButton;
    EST_MN_M_CTE: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    dxBarSubItem13: TdxBarSubItem;
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
    dxBarSeparator1: TdxBarSeparator;
    smiOficina: TdxBarSubItem;
    OFI_MN_M_AGE: TdxBarButton;
    OFI_MN_M_OCV: TdxBarButton;
    FAT_MN_M_CXA: TdxBarButton;
    OFI_MN_M_ORV: TdxBarButton;
    OFI_MN_C_TIO: TdxBarButton;
    OFI_MN_M_RQV: TdxBarButton;
    FAT_MN_M_LIB: TdxBarButton;
    CSU_MN_C_DRE: TdxBarButton;
    CSU_MN_C_FLU: TdxBarButton;
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
    CAD_MN_R_GRU: TdxBarButton;
    CAD_MN_R_COR: TdxBarButton;
    CAD_MN_R_FPG: TdxBarButton;
    CAD_MN_R_INF: TdxBarButton;
    CAD_MN_R_CFO: TdxBarButton;
    CAD_MN_R_CRG: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    smiRelatoriosFinanceiro: TdxBarSubItem;
    btnContasAPagarRelatorios: TdxBarSubItem;
    FIN_MN_R_PAG: TdxBarButton;
    smiRelatoriosCadastros: TdxBarSubItem;
    CAD_MN_R_FUN: TdxBarButton;
    CAD_MN_R_CLI: TdxBarButton;
    CAD_MN_R_FOR: TdxBarButton;
    CAD_MN_R_ITE: TdxBarButton;
    dxBarSeparator2: TdxBarSeparator;
    FAT_MN_M_ORC: TdxBarButton;
    FIN_MN_M_COB: TdxBarButton;
    CAD_MN_C_SUB_OFI: TdxBarSubItem;
    OFI_MN_C_COR: TdxBarButton;
    smiRelatoriosTabelas: TdxBarSubItem;
    CAD_MN_R_SUB_OFI: TdxBarSubItem;
    smiRelatoriosEstoque: TdxBarSubItem;
    smiRelatoriosFaturamento: TdxBarSubItem;
    EST_MN_R_FIC: TdxBarButton;
    EST_MN_R_ABC_PRO: TdxBarButton;
    EST_MN_R_INV: TdxBarButton;
    EST_MN_R_CTE: TdxBarButton;
    EST_MN_R_GIR: TdxBarButton;
    FAT_MN_R_NFE2: TdxBarButton;
    EST_MN_R_PVE: TdxBarButton;
    FAT_MN_R_REN: TdxBarButton;
    FIN_MN_R_CSC: TdxBarButton;
    FAT_MN_R_PPC: TdxBarButton;
    FAT_MN_R_POS: TdxBarButton;
    FAT_MN_R_COV: TdxBarButton;
    OFI_MN_R_OFV_POS: TdxBarButton;
    OFI_MN_R_FIV: TdxBarButton;
    OFI_MN_R_ABC: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    FIN_MN_R_PCR: TdxBarButton;
    FIN_MN_R_PCP: TdxBarButton;
    FIN_MN_R_CXA: TdxBarButton;
    FIN_MN_R_BCO: TdxBarButton;
    FIN_MN_R_ANV: TdxBarButton;
    FIN_MN_R_COB: TdxBarButton;
    FIN_MN_R_EXF: TdxBarButton;
    FIN_MN_R_EXC: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    EST_MN_R_DEV: TdxBarButton;
    FAT_MN_R_PIC: TdxBarButton;
    FAT_MN_R_ABC_FAT: TdxBarButton;
    dxBarButton15: TdxBarButton;
    FIN_MN_M_BOL: TdxBarButton;
    dxBarButton23: TdxBarButton;
    FIN_MN_R_REC2: TdxBarButton;
    FIN_MN_M_CHE_MOV: TdxBarButton;
    dxBarButton24: TdxBarButton;
    FIN_MN_M_MCC: TdxBarButton;
    FIN_MN_M_CRC: TdxBarButton;
    FIN_MN_M_CRF: TdxBarButton;
    bmEmpresa: TdxBar;
    txtFuncionario: TdxBarEdit;
    txtEmpresa: TdxBarEdit;
    CAD_MN_R_TIO: TdxBarButton;
    CAD_MN_C_VEI: TdxBarButton;
    FIN_MN_M_ORC: TdxBarButton;
    OFI_MN_R_PVE: TdxBarButton;
    OFI_MN_R_COM: TdxBarButton;
    OFI_MN_C_MVE: TdxBarButton;
    FAT_MN_M_GAM: TdxBarButton;
    PCP_MN_C_REG: TdxBarButton;
    CAD_MN_C_ECF: TdxBarButton;
    FAT_MN_M_E01: TdxBarButton;
    CSU_MN_C_GER: TdxBarButton;
    OFI_MN_R_TIO: TdxBarButton;
    CAD_MN_BACKUP: TdxBarButton;
    CAD_MN_C_FAM: TdxBarButton;
    CAD_MN_C_E01: TdxBarButton;
    dxBarButton10: TdxBarButton;
    FIN_MN_M_MCH: TdxBarButton;
    FIN_MN_R_MCH: TdxBarButton;
    CAD_MN_C_MCT: TdxBarButton;
    CAD_MN_R_MCT: TdxBarButton;
    PCP_MN_C_MTA: TdxBarButton;
    FAT_MN_M_NFE_FRE: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    FAT_MN_M_PEDteste: TdxBarButton;
    FAT_MN_M_PEDteste2: TdxBarButton;
    OFI_MN_M_POS: TdxBarButton;
    dxBarButton11: TdxBarButton;
    OFI_MN_R_POS: TdxBarButton;
    dxBarButton12: TdxBarButton;
    CSU_MN_M_NPO: TdxBarButton;
    OFI_MN_M_MTC: TdxBarButton;
    FIN_MN_M_POR: TdxBarButton;
    FIN_MN_R_CHQ: TdxBarButton;
    CAD_MN_C_CCR: TdxBarButton;
    EST_MN_R_MOV: TdxBarButton;
    EST_MN_M_MAL: TdxBarButton;
    CAD_MN_C_COR: TdxBarButton;
    FIN_MN_R_IND: TdxBarButton;
    FIN_MN_M_REC_RET: TdxBarButton;
    FIN_MN_M_CBX: TdxBarButton;
    FAT_MN_M_PNF: TdxBarButton;
    EST_MN_M_MET: TdxBarButton;
    EST_MN_M_NCF: TdxBarButton;
    EST_MN_M_XML: TdxBarButton;
    EST_MN_M_APR: TdxBarButton;
    FAT_MN_M_FPR: TdxBarButton;
    CSU_MN_M_NFE: TdxBarButton;
    CSU_MN_M_ORC: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    ESP_MN_M_SUB_ACE: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    ESP_MN_M_ACE: TdxBarButton;
    FAT_MN_R_PED: TdxBarButton;
    EST_MN_R_DEZ: TdxBarButton;
    smiCargas: TdxBarSubItem;
    FAT_MN_M_ROM: TdxBarButton;
    FAT_MN_M_PCA: TdxBarButton;
    EST_MN_R_PES: TdxBarButton;
    CSU_MN_M_PEQ: TdxBarButton;
    dxBarButton17: TdxBarButton;
    smiCompras: TdxBarSubItem;
    CMP_MN_M_SOL: TdxBarButton;
    CMP_MN_M_COT: TdxBarButton;
    CMP_MN_M_APR: TdxBarButton;
    CMP_MN_M_PED: TdxBarButton;
    FAT_MN_M_SEP: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSeparator4: TdxBarSeparator;
    dxBarSeparator5: TdxBarSeparator;
    dxBarButton18: TdxBarButton;
    dxBarSeparator6: TdxBarSeparator;
    dxBarSeparator7: TdxBarSeparator;
    dxBarStatic1: TdxBarStatic;
    CAD_MN_C_EQP: TdxBarButton;
    CAD_MN_R_EQP: TdxBarButton;
    dxBarSeparator8: TdxBarSeparator;
    dxBarStatic2: TdxBarStatic;
    dxBarSeparator9: TdxBarSeparator;
    dxBarSeparator10: TdxBarSeparator;
    FAT_MN_M_EXP: TdxBarButton;
    FIN_MN_M_CAR: TdxBarButton;
    CAD_MN_C_HFG: TdxBarButton;
    CAD_MN_C_MAR: TdxBarButton;
    smiRelatoriosFiscal: TdxBarSubItem;
    FIS_MN_R_LAI: TdxBarButton;
    FIN_MN_M_BRD: TdxBarButton;
    FIS_MN_R_LRE: TdxBarButton;
    FIS_MN_R_LRS: TdxBarButton;
    CAD_MN_C_CAT: TdxBarButton;
    EST_MN_R_ISM: TdxBarButton;
    PCP_MN_C_ROT: TdxBarButton;
    CAD_MN_R_FAM: TdxBarButton;
    CAD_MN_C_CUL: TdxBarButton;
    FAT_MN_M_MKT: TdxBarButton;
    OFI_MN_R_HIV: TdxBarButton;
    CAD_MN_C_GRP: TdxBarButton;
    OFI_MN_R_OFV_POC: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    FIN_MN_M_LMF: TdxBarButton;
    FIN_MN_M_PRC: TdxBarButton;
    FAT_MN_M_PED_CAN: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    FIN_MN_R_LMF: TdxBarButton;
    FIN_MN_R_PRC: TdxBarButton;
    CAD_MN_C_VIS: TdxBarButton;
    CAD_MN_C_VIT: TdxBarButton;
    CSU_MN_M_VPR: TdxBarButton;
    CAD_MN_C_DTS: TdxBarButton;
    CAD_MN_C_MTV: TdxBarButton;
    CSU_MN_C_MTV: TdxBarButton;
    CAD_MN_C_RVD: TdxBarButton;
    FIN_MN_M_DCT: TdxBarButton;
    OFI_MN_M_OCQ: TdxBarButton;
    OFI_MN_M_FEV: TdxBarButton;
    FIN_MN_M_ECH: TdxBarButton;
    CAD_MN_C_AUS: TdxBarButton;
    CAD_MN_R_QVP: TdxBarButton;
    EST_MN_R_MAL: TdxBarButton;
    FAT_MN_R_VIS: TdxBarButton;
    CSU_MN_M_AUD: TdxBarButton;
    CAD_MN_C_PAI: TdxBarButton;
    EST_MN_M_COF: TdxBarButton;
    CSU_MN_M_ETG: TdxBarButton;
    CSU_MN_M_GER_VND: TdxBarButton;
    CAD_MN_C_PCC: TdxBarButton;
    CAD_MN_C_NTR: TdxBarButton;
    procedure OFI_MN_M_AGEClick(Sender: TObject);
    procedure OFI_MN_M_OCVClick(Sender: TObject);
    procedure OFI_MN_M_ORVClick(Sender: TObject);
    procedure OFI_MN_C_TIOClick(Sender: TObject);
    procedure OFI_MN_M_RQVClick(Sender: TObject);
    procedure PCP_MN_C_CRGClick(Sender: TObject);
    procedure CAD_MN_C_CNEClick(Sender: TObject);
    procedure CAD_MN_C_CIDClick(Sender: TObject);
    procedure CAD_MN_C_RAMClick(Sender: TObject);
    procedure CAD_MN_C_CINClick(Sender: TObject);
    procedure CAD_MN_C_PECClick(Sender: TObject);
    procedure CAD_MN_C_PCTClick(Sender: TObject);
    procedure CAD_MN_C_INFClick(Sender: TObject);
    procedure CAD_MN_C_CCUClick(Sender: TObject);
    procedure CAD_MN_C_CTCClick(Sender: TObject);
    procedure CAD_MN_C_LTOClick(Sender: TObject);
    procedure CAD_MN_C_TIFClick(Sender: TObject);
    procedure CAD_MN_C_CPGClick(Sender: TObject);
    procedure CAD_MN_C_FPGClick(Sender: TObject);
    procedure CAD_MN_C_NATClick(Sender: TObject);
    procedure CAD_MN_C_CFOClick(Sender: TObject);
    procedure CAD_MN_C_TMEClick(Sender: TObject);
    procedure CAD_MN_C_UNDClick(Sender: TObject);
    procedure CAD_MN_C_NCMClick(Sender: TObject);
    procedure CAD_MN_C_TRIClick(Sender: TObject);
    procedure CAD_MN_C_GRUClick(Sender: TObject);
    procedure CAD_MN_C_PARClick(Sender: TObject);
    procedure CAD_MN_C_FUNClick(Sender: TObject);
    procedure CAD_MN_C_CLIClick(Sender: TObject);
    procedure CAD_MN_C_FORClick(Sender: TObject);
    procedure CAD_MN_C_ITEClick(Sender: TObject);
    procedure CAD_MN_R_CNEClick(Sender: TObject);
    procedure CAD_MN_R_CIDClick(Sender: TObject);
    procedure CAD_MN_R_PECClick(Sender: TObject);
    procedure CAD_MN_R_PCTClick(Sender: TObject);
    procedure CAD_MN_R_CCUClick(Sender: TObject);
    procedure CAD_MN_R_CTCClick(Sender: TObject);
    procedure CAD_MN_R_LTOClick(Sender: TObject);
    procedure CAD_MN_R_TIFClick(Sender: TObject);
    procedure CAD_MN_R_NCMClick(Sender: TObject);
    procedure CAD_MN_R_TRIClick(Sender: TObject);
    procedure CAD_MN_R_GRUClick(Sender: TObject);
    procedure CAD_MN_R_CORClick(Sender: TObject);
    procedure CAD_MN_R_INFClick(Sender: TObject);
    procedure CAD_MN_R_CFOClick(Sender: TObject);
    procedure CAD_MN_R_CRGClick(Sender: TObject);
    procedure FIN_MN_R_PAGClick(Sender: TObject);
    procedure CTC_MN_C_OBRClick(Sender: TObject);
    procedure CTC_MN_C_TPRClick(Sender: TObject);
    procedure EST_MN_M_NFCClick(Sender: TObject);
    procedure CSU_MN_C_ITEClick(Sender: TObject);
    procedure CSU_MN_C_CLIClick(Sender: TObject);
    procedure EST_MN_M_NFEClick(Sender: TObject);
    procedure EST_MN_M_NFDClick(Sender: TObject);
    procedure EST_MN_M_NFSClick(Sender: TObject);
    procedure EST_MN_M_CTEClick(Sender: TObject);
    procedure FAT_MN_M_ORCClick(Sender: TObject);
    procedure FAT_MN_M_PEDClick(Sender: TObject);
    procedure FAT_MN_M_POSClick(Sender: TObject);
    procedure FAT_MN_M_CXAClick(Sender: TObject);
    procedure FAT_MN_M_LIBClick(Sender: TObject);
    procedure FIN_MN_M_CTA_ABEClick(Sender: TObject);
    procedure FIN_MN_M_CTA_CXAClick(Sender: TObject);
    procedure FIN_MN_M_CTA_BCOClick(Sender: TObject);
    procedure FIN_MN_M_CTA_CONClick(Sender: TObject);
    procedure FIN_MN_M_REC_REMClick(Sender: TObject);
    procedure FIN_MN_M_RECClick(Sender: TObject);
    procedure FIN_MN_M_RBXClick(Sender: TObject);
    procedure FIN_MN_M_COBClick(Sender: TObject);
    procedure FIN_MN_M_PAGClick(Sender: TObject);
    procedure FIN_MN_M_PBXClick(Sender: TObject);
    procedure OFI_MN_C_CORClick(Sender: TObject);
    procedure EST_MN_R_FICClick(Sender: TObject);
    procedure EST_MN_R_CTEClick(Sender: TObject);
    procedure EST_MN_R_PVEClick(Sender: TObject);
    procedure EST_MN_R_ABC_PROClick(Sender: TObject);
    procedure EST_MN_R_DEVClick(Sender: TObject);
    procedure EST_MN_R_INVClick(Sender: TObject);
    procedure EST_MN_R_GIRClick(Sender: TObject);
    procedure FAT_MN_R_COVClick(Sender: TObject);
    procedure FAT_MN_R_RENClick(Sender: TObject);
    procedure FAT_MN_R_POSClick(Sender: TObject);
    procedure FAT_MN_R_PPCClick(Sender: TObject);
    procedure FAT_MN_R_PICClick(Sender: TObject);
    procedure CSU_MN_C_FORClick(Sender: TObject);
    procedure FAT_MN_R_NFE2Click(Sender: TObject);
    procedure FAT_MN_R_ABC_FATClick(Sender: TObject);
    procedure FIN_MN_M_BOLClick(Sender: TObject);
    procedure FIN_MN_R_REC2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CAD_MN_R_FUNClick(Sender: TObject);
    procedure CAD_MN_R_FORClick(Sender: TObject);
    procedure CAD_MN_R_ITEClick(Sender: TObject);
    procedure CAD_MN_R_RAMClick(Sender: TObject);
    procedure CAD_MN_R_FPGClick(Sender: TObject);
    procedure FIN_MN_R_CXAClick(Sender: TObject);
    procedure FIN_MN_R_BCOClick(Sender: TObject);
    procedure FIN_MN_R_ANVClick(Sender: TObject);
    procedure FIN_MN_R_CSCClick(Sender: TObject);
    procedure FIN_MN_R_COBClick(Sender: TObject);
    procedure FIN_MN_R_EXCClick(Sender: TObject);
    procedure FIN_MN_R_EXFClick(Sender: TObject);
    procedure FIN_MN_R_PCPClick(Sender: TObject);
    procedure FIN_MN_R_PCRClick(Sender: TObject);
    procedure CAD_MN_C_VEIClick(Sender: TObject);
    procedure FIN_MN_M_ORCClick(Sender: TObject);
    procedure OFI_MN_R_OFV_POSClick(Sender: TObject);
    procedure OFI_MN_R_FIVClick(Sender: TObject);
    procedure OFI_MN_R_COMClick(Sender: TObject);
    procedure OFI_MN_R_ABCClick(Sender: TObject);
    procedure OFI_MN_C_MVEClick(Sender: TObject);
    procedure CAD_MN_R_CLIClick(Sender: TObject);
    procedure FAT_MN_M_GAMClick(Sender: TObject);
    procedure FIN_MN_M_CRCClick(Sender: TObject);
    procedure CAD_MN_C_PESClick(Sender: TObject);
    procedure PCP_MN_C_REGClick(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure CAD_MN_C_ECFClick(Sender: TObject);
    procedure OFI_MN_R_TIOClick(Sender: TObject);
    procedure CAD_MN_BACKUPClick(Sender: TObject);
    procedure CAD_MN_C_FAMClick(Sender: TObject);
    procedure CAD_MN_C_E01Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CAD_MN_R_PESClick(Sender: TObject);
    procedure CAD_MN_R_TMEClick(Sender: TObject);
    procedure CAD_MN_R_UNDClick(Sender: TObject);
    procedure FAT_MN_M_ROMClick(Sender: TObject);
    procedure FIN_MN_M_MCHClick(Sender: TObject);
    procedure FIN_MN_R_MCHClick(Sender: TObject);
    procedure CAD_MN_C_MCTClick(Sender: TObject);
    procedure CAD_MN_R_MCTClick(Sender: TObject);
    procedure PCP_MN_C_MTAClick(Sender: TObject);
    procedure FAT_MN_M_NFE_FREClick(Sender: TObject);
    procedure OFI_MN_M_POSClick(Sender: TObject);
    procedure OFI_MN_R_POSClick(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure CSU_MN_M_NPOClick(Sender: TObject);
    procedure OFI_MN_M_MTCClick(Sender: TObject);
    procedure FIN_MN_R_CHQClick(Sender: TObject);
    procedure CAD_MN_C_CCRClick(Sender: TObject);
    procedure EST_MN_R_MOVClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure EST_MN_M_MALClick(Sender: TObject);
    procedure CAD_MN_C_CORClick(Sender: TObject);
    procedure FIN_MN_R_INDClick(Sender: TObject);
    procedure FIN_MN_M_REC_RETClick(Sender: TObject);
    procedure FIN_MN_M_CBXClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FAT_MN_M_PNFClick(Sender: TObject);
    procedure EST_MN_M_METClick(Sender: TObject);
    procedure EST_MN_M_NCFClick(Sender: TObject);
    procedure FAT_MN_M_PCAClick(Sender: TObject);
    procedure EST_MN_M_XMLClick(Sender: TObject);
    procedure EST_MN_M_APRClick(Sender: TObject);
    procedure FIN_MN_M_CRFClick(Sender: TObject);
    procedure FAT_MN_M_FPRClick(Sender: TObject);
    procedure CSU_MN_M_NFEClick(Sender: TObject);
    procedure CSU_MN_M_ORCClick(Sender: TObject);
    procedure ESP_MN_M_ACEClick(Sender: TObject);
    procedure FAT_MN_R_PEDClick(Sender: TObject);
    procedure EST_MN_R_DEZClick(Sender: TObject);
    procedure CSU_MN_C_GERClick(Sender: TObject);
    procedure EST_MN_R_PESClick(Sender: TObject);
    procedure CSU_MN_M_PEQClick(Sender: TObject);
    procedure CSU_MN_C_DREClick(Sender: TObject);
    procedure CMP_MN_M_SOLClick(Sender: TObject);
    procedure CMP_MN_M_COTClick(Sender: TObject);
    procedure CMP_MN_M_APRClick(Sender: TObject);
    procedure CMP_MN_M_PEDClick(Sender: TObject);
    procedure FAT_MN_M_SEPClick(Sender: TObject);
    procedure CAD_MN_C_EQPClick(Sender: TObject);
    procedure CAD_MN_R_EQPClick(Sender: TObject);
    procedure FAT_MN_M_EXPClick(Sender: TObject);
    procedure FIN_MN_M_CARClick(Sender: TObject);
    procedure CAD_MN_C_HFGClick(Sender: TObject);
    procedure CAD_MN_C_MARClick(Sender: TObject);
    procedure FIS_MN_R_LAIClick(Sender: TObject);
    procedure FIN_MN_M_BRDClick(Sender: TObject);
    procedure FIS_MN_R_LREClick(Sender: TObject);
    procedure FIS_MN_R_LRSClick(Sender: TObject);
    procedure CAD_MN_C_CATClick(Sender: TObject);
    procedure EST_MN_R_ISMClick(Sender: TObject);
    procedure PCP_MN_C_ROTClick(Sender: TObject);
    procedure CAD_MN_R_FAMClick(Sender: TObject);
    procedure CAD_MN_C_CULClick(Sender: TObject);
    procedure FAT_MN_M_MKTClick(Sender: TObject);
    procedure OFI_MN_R_HIVClick(Sender: TObject);
    procedure CAD_MN_C_GRPClick(Sender: TObject);
    procedure OFI_MN_R_OFV_POCClick(Sender: TObject);
    procedure FIN_MN_M_LMFClick(Sender: TObject);
    procedure FIN_MN_M_PRCClick(Sender: TObject);
    procedure FAT_MN_M_PED_CANClick(Sender: TObject);
    procedure FIN_MN_R_LMFClick(Sender: TObject);
    procedure FIN_MN_R_PRCClick(Sender: TObject);
    procedure CAD_MN_C_VISClick(Sender: TObject);
    procedure CAD_MN_C_VITClick(Sender: TObject);
    procedure CSU_MN_M_VPRClick(Sender: TObject);
    procedure CAD_MN_C_DTSClick(Sender: TObject);
    procedure CAD_MN_C_MTVClick(Sender: TObject);
    procedure CSU_MN_C_MTVClick(Sender: TObject);
    procedure CAD_MN_C_RVDClick(Sender: TObject);
    procedure FIN_MN_M_DCTClick(Sender: TObject);
    procedure OFI_MN_M_OCQClick(Sender: TObject);
    procedure OFI_MN_M_FEVClick(Sender: TObject);
    procedure FIN_MN_M_ECHClick(Sender: TObject);
    procedure CAD_MN_C_AUSClick(Sender: TObject);
    procedure CAD_MN_R_QVPClick(Sender: TObject);
    procedure EST_MN_R_MALClick(Sender: TObject);
    procedure FAT_MN_R_VISClick(Sender: TObject);
    procedure CSU_MN_M_AUDClick(Sender: TObject);
    procedure CAD_MN_C_PAIClick(Sender: TObject);
    procedure EST_MN_M_COFClick(Sender: TObject);
    procedure CSU_MN_M_ETGClick(Sender: TObject);
    procedure FAT_MN_M_E01Click(Sender: TObject);
    procedure CSU_MN_M_GER_VNDClick(Sender: TObject);
    procedure CAD_MN_C_PCCClick(Sender: TObject);
    procedure CAD_MN_C_NTRClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmSoftMenu: TfrmSoftMenu;
  xDataSistema:TDate;
  xExibMsgSolCmp:Boolean;
  xExibMsgEst:Boolean;
  xExibMsgAnv:Boolean;
implementation

{$R *.dfm}

uses OFI_UN_M_AGE, OFI_UN_M_OCV, OFI_UN_M_ORV, OFI_UN_C_TIO, OFI_UN_M_RQV,
  OFI_UN_R_TIO, CAD_UN_C_CNE, CAD_UN_C_CID, CAD_UN_C_RAM, CAD_UN_C_CIN,
  CAD_UN_C_PEC, CAD_UN_C_PCT, CAD_UN_C_INF, CAD_UN_C_CTC, CAD_UN_C_CCU,
  CAD_UN_C_LTO, CAD_UN_C_TIF, CAD_UN_C_CPG, CAD_UN_C_FPG, CAD_UN_C_NAT,
  CAD_UN_C_CFO, CAD_UN_C_TME, CAD_UN_C_UND, CAD_UN_C_NCM, CAD_UN_C_TRI,
  CAD_UN_C_GRU, CAD_UN_C_PAR, CAD_UN_C_FUN, CAD_UN_C_CLI, CAD_UN_C_FOR,
  CAD_UN_C_ITE, CAD_UN_R_ALM, CAD_UN_R_CNE, CAD_UN_R_CID, CAD_UN_R_SET,
  CAD_UN_R_PEC, CAD_UN_R_PCT, CAD_UN_R_CCU, CAD_UN_R_CTC, CAD_UN_R_LTO,
  CAD_UN_R_TIF, CAD_UN_R_TDF, CAD_UN_R_NCM, CAD_UN_R_TRI, CAD_UN_R_GRU,
  CAD_UN_R_COR, CAD_UN_R_TAM, CAD_UN_R_INF, CAD_UN_R_CFO, CAD_UN_R_CRG,
  FIN_UN_R_PAG, CTC_UN_C_OBR, CTC_UN_C_TPR, EST_UN_M_NFC,
  CSU_UN_C_ITE, CSU_UN_C_CLI, CMP_UN_M_XML, EST_UN_M_NFE, EST_UN_M_NFD,
  EST_UN_M_NFS, EST_UN_M_CTE, FAT_UN_M_ORC, FAT_UN_M_PED, FAT_UN_M_POS,
  FAT_UN_M_CXA, FAT_UN_M_LIB, FIN_UN_M_CTA_ABE, FIN_UN_M_CTA_CXA,
  FIN_UN_M_CTA_BCO, FIN_UN_M_CTA_CON, FIN_UN_M_REC_REM, FIN_UN_M_REC,
  FIN_UN_M_RBX, FIN_UN_M_COB, FIN_UN_M_PAG, FIN_UN_M_PBX, CAD_UN_C_COR,
  PCP_UN_C_CRG, EST_UN_R_CTE, EST_UN_R_FIC,
  EST_UN_R_DEV, EST_UN_R_INV, EST_UN_R_GIR, FAT_UN_R_COV,
  FAT_UN_R_POS, FAT_UN_R_PPC, CSU_UN_C_FOR, FAT_UN_R_NFE, FIN_UN_M_BOL,
  OFI_RN_M_AGE, OFI_RN_M_OCV, OFI_RN_M_ORV,
  OFI_RN_M_RQV, CTC_RN_C_OFI, OFI_RN_C_TIO, OFI_RN_R_TIO, FIN_UN_R_REC,
  uDmGeral,enConstantes, CAD_UN_R_FOR, CAD_UN_R_FUN,
  CAD_UN_R_ITE, CAD_UN_R_FPG, CAD_UN_R_RAM, OFI_UN_M_FEV,
  FIN_UN_R_BCO, FIN_UN_R_ANV, FIN_UN_R_CSC, FIN_UN_R_COB, FIN_UN_R_EXC,
  FIN_UN_R_EXF, FIN_UN_R_PCP, FIN_UN_R_PCR, CAD_UN_C_VEI, FIN_UN_M_ORC,
  OFI_UN_R_POS, OFI_UN_R_FIV, OFI_UN_R_COM, OFI_UN_R_ABC, FAT_UN_R_PVE,
  FAT_UN_R_ICM, FAT_UN_R_PIS, FAT_UN_R_RET, FIN_UN_R_CXA, CAD_UN_C_MVE,
  EST_UN_R_ABC, FAT_UN_R_ABC, CAD_UN_R_CLI, FAT_UN_M_GAM, FIN_UN_M_RCR,
  CAD_UN_C_PES, PCP_UN_C_REG, SEG_UN_X_SEN, CAD_UN_C_ECF,
  SEG_UN_X_BCK, CAD_UN_C_FAM, CAD_UN_C_E01, CAD_UN_R_PES, CAD_UN_R_TME,
  CAD_UN_R_UND, FIN_UN_M_MCH, FAT_UN_M_ROM, FIN_UN_R_MCH, CAD_UN_C_MCT,
  CAD_UN_R_MCT, PCP_UN_C_MTA, FAT_UN_M_NFE_FRE, uValidacoes,
  OFI_UN_M_POS, OFI_UN_R_OFV_POS, CSU_UN_M_NPO, OFI_UN_M_MTC, FIN_UN_R_CHQ,
  CAD_UN_C_CCR, EST_UN_R_MOV, EST_RN_M_CTE, EST_UN_M_MAL, FIN_UN_R_IND,
  FIN_UN_M_REC_RET, FIN_UN_M_CBX, uSuporte001, PAD_UN_X_PAD, FAT_UN_M_PNF,
  EST_UN_M_MET, EST_UN_M_NCF, FAT_UN_M_PCA, EST_UN_M_XML, EST_UN_M_APR,
  FIN_UN_M_PCR, FAT_UN_M_FPR, CSU_UN_M_NFE, CSU_UN_M_ORC, ESP_UN_M_ACE,
  FAT_UN_R_PED, EST_UN_R_DEZ, CSU_UN_M_GER, EST_UN_R_PES, CSU_UN_M_PEQ,
  CSU_UN_M_DRE, AVS_UN_X_EST, AVS_UN_X_COB, CMP_UN_M_SOL, CMP_UN_M_COT,
  CMP_UN_M_APR, CMP_UN_M_PED, FAT_UN_M_SEP, CAD_UN_C_EQP, CAD_UN_R_EQP,
  FAT_UN_M_EXP, FIN_UN_M_CAR, CAD_UN_C_HFG, CAD_UN_C_MAR, FIS_UN_R_LAI,
  FIN_UN_M_BRD, FIS_UN_R_LRE, FIS_UN_R_LRS, CAD_UN_C_CAT, OFI_UN_M_ORQ,
  OFI_UN_M_RQP, OFI_UN_M_FEQ, EST_UN_R_ISM, PCP_UN_C_ROT, CAD_UN_R_FAM,
  CAD_UN_C_CUL, FAT_UN_M_MKT, OFI_UN_R_HIV, CAD_UN_C_GRP, CAD_UN_C_MTV,
  OFI_UN_M_OCT, OFI_UN_M_ORT, OFI_UN_M_RQT, CSU_UN_C_MTV, OFI_UN_M_FET,
  OFI_UN_R_OFV_POC, OFI_UN_R_OFT_POS, OFI_UN_R_OFT_POC, FIN_UN_M_LMF,
  FIN_UN_M_PRC, FAT_UN_M_PED_CAN, OFI_UN_R_FIT, OFI_UN_R_HIT, FIN_UN_R_LMF,
  FIN_UN_R_PRC, FAT_UN_R_ROT, CAD_UN_C_VIS, CAD_UN_C_VIT, CSU_UN_M_VPR,
  CAD_UN_C_DTS, CAD_UN_C_RVD, FIN_UN_M_DCT, OFI_UN_M_OCQ, FIN_UN_M_ECH,
  CAD_UN_C_AUS, FAT_UN_R_QVP, EST_UN_R_MAL, AVS_UN_X_ANV, FAT_UN_R_VIS,
  CSU_UN_M_AUD, CAD_UN_C_PAI, EST_UN_M_COF, CSU_UN_M_ETG, uProxy, CAD_UN_R_E01,
  CSU_UN_M_GER_VND, CAD_UN_C_PCC, CAD_UN_C_NTR;


{$R *.dfm}
{ TfrmMenuGeral }




procedure TfrmSoftMenu.OFI_MN_M_ORVClick(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_MODoqp.AsBoolean or  dmGeral.CAD_CD_C_PAR_MODtor.AsBoolean  then
     begin
       OpenForm(TOFI_FM_M_ORQ, OFI_FM_M_ORQ);
     end
  else
     begin
       if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
          begin
            OpenForm(TOFI_FM_M_ORT, OFI_FM_M_ORT);
          end
       else
         begin
           OpenForm(TOFI_FM_M_ORV, OFI_FM_M_ORV);
         end;
     end;
end;

procedure TfrmSoftMenu.OFI_MN_M_POSClick(Sender: TObject);
begin
   OpenForm(TOFI_FM_M_POS, OFI_FM_M_POS);
end;

procedure TfrmSoftMenu.OFI_MN_M_RQVClick(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_MODoqp.AsBoolean or  dmGeral.CAD_CD_C_PAR_MODtor.AsBoolean then
     begin
       OpenForm(TOFI_FM_M_RQP, OFI_FM_M_RQP);
     end
  else
     begin
        if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
          begin
            OpenForm(TOFI_FM_M_RQT, OFI_FM_M_RQT);
          end
        else
          begin
            OpenForm(TOFI_FM_M_RQV, OFI_FM_M_RQV);
          end;
     end;
end;

procedure TfrmSoftMenu.PCP_MN_C_REGClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_C_REG, PCP_FM_C_REG);
end;

procedure TfrmSoftMenu.PCP_MN_C_ROTClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_C_ROT, PCP_FM_C_ROT);
end;

procedure TfrmSoftMenu.FAT_MN_M_ROMClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_ROM, FAT_FM_M_ROM);
end;

procedure TfrmSoftMenu.FAT_MN_M_SEPClick(Sender: TObject);
begin
  Application.CreateForm(TFAT_FM_M_SEP, FAT_FM_M_SEP);
end;

procedure TfrmSoftMenu.PCP_MN_C_CRGClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_C_CRG, PCP_FM_C_CRG);
end;

procedure TfrmSoftMenu.PCP_MN_C_MTAClick(Sender: TObject);
begin
  OpenForm(TPCP_FM_C_MTA, PCP_FM_C_MTA);
end;

procedure TfrmSoftMenu.CAD_MN_C_RAMClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_RAM, CAD_FM_C_RAM);
end;

procedure TfrmSoftMenu.CAD_MN_C_RVDClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_RVD, CAD_FM_C_RVD);
end;

procedure TfrmSoftMenu.CAD_MN_C_TIFClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_TIF, CAD_FM_C_TIF);
end;

procedure TfrmSoftMenu.CAD_MN_C_TMEClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_TME, CAD_FM_C_TME);
end;

procedure TfrmSoftMenu.CAD_MN_C_UNDClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_UND, CAD_FM_C_UND);
end;

procedure TfrmSoftMenu.CAD_MN_C_VISClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_VIS, CAD_FM_C_VIS);
end;

procedure TfrmSoftMenu.CAD_MN_C_VITClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_VIT, CAD_FM_C_VIT);
end;

procedure TfrmSoftMenu.CAD_MN_C_PAIClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_PAI, CAD_FM_C_PAI);
end;

procedure TfrmSoftMenu.CAD_MN_C_PARClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_PAR, CAD_FM_C_PAR);
end;

procedure TfrmSoftMenu.CAD_MN_C_CLIClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CLI, CAD_FM_C_CLI);
end;

procedure TfrmSoftMenu.CAD_MN_C_FAMClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_FAM, CAD_FM_C_FAM);
end;

procedure TfrmSoftMenu.CAD_MN_C_FORClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_FOR, CAD_FM_C_FOR);
end;

procedure TfrmSoftMenu.CAD_MN_R_CNEClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CNE, CAD_FM_R_CNE);
end;

procedure TfrmSoftMenu.CAD_MN_R_CORClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_COR, CAD_FM_R_COR);
end;

procedure TfrmSoftMenu.CAD_MN_R_CRGClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CRG, CAD_FM_R_CRG);
end;

procedure TfrmSoftMenu.CAD_MN_R_CTCClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_CTC, CAD_FM_R_CTC);
end;

procedure TfrmSoftMenu.CAD_MN_R_EQPClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_EQP, CAD_FM_R_EQP);
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

procedure TfrmSoftMenu.CAD_MN_R_MCTClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_R_MCT, CAD_FM_R_MCT);
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

procedure TfrmSoftMenu.CAD_MN_R_QVPClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_QVP, FAT_FM_R_QVP);
end;

procedure TfrmSoftMenu.CAD_MN_R_RAMClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_R_RAM, CAD_FM_R_RAM);
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

procedure TfrmSoftMenu.CMP_MN_M_SOLClick(Sender: TObject);
begin
  OpenForm(TCMP_FM_M_SOL, CMP_FM_M_SOL);
end;

procedure TfrmSoftMenu.CTC_MN_C_OBRClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_C_OBR, CTC_FM_C_OBR);
end;

procedure TfrmSoftMenu.CTC_MN_C_TPRClick(Sender: TObject);
begin
  OpenForm(TCTC_FM_C_TPR, CTC_FM_C_TPR);
end;

procedure TfrmSoftMenu.OFI_MN_C_CORClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_COR, CAD_FM_C_COR);
end;

procedure TfrmSoftMenu.OFI_MN_R_COMClick(Sender: TObject);
begin
OpenForm(TOFI_FM_R_COM, OFI_FM_R_COM);
end;

procedure TfrmSoftMenu.FAT_MN_M_GAMClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_GAM, FAT_FM_M_GAM);
end;

procedure TfrmSoftMenu.CAD_MN_C_MARClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_MAR, CAD_FM_C_MAR);
end;

procedure TfrmSoftMenu.CAD_MN_C_MCTClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_MCT, CAD_FM_C_MCT);
end;

procedure TfrmSoftMenu.CAD_MN_C_MTVClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_MTV, CAD_FM_C_MTV);
end;

procedure TfrmSoftMenu.FAT_MN_M_NFE_FREClick(Sender: TObject);
begin

  if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TFAT_FM_M_NFE_FRE, FAT_FM_M_NFE_FRE);
    end;
end;

procedure TfrmSoftMenu.dxBarButton12Click(Sender: TObject);
begin
  OpenForm(TCSU_FM_M_NPO,CSU_FM_M_NPO);
end;

procedure TfrmSoftMenu.dxBarButton13Click(Sender: TObject);
var
I:integer;
begin
  FreeAndNil(AVS_FM_X_EST);
  FreeAndNil(AVS_FM_X_COB);
  FreeAndNil(AVS_FM_X_ANV);

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

procedure TfrmSoftMenu.CSU_MN_M_VPRClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_M_VPR, CSU_FM_M_VPR);
end;

procedure TfrmSoftMenu.FAT_MN_M_FPRClick(Sender: TObject);
begin
   FAT_FM_M_FPR := TFAT_FM_M_FPR.Create(Self);
   FAT_FM_M_FPR.ShowModal;
   FAT_FM_M_FPR.Free;
end;

procedure TfrmSoftMenu.FAT_MN_M_MKTClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_MKT, FAT_FM_M_MKT);
end;

procedure TfrmSoftMenu.OFI_MN_M_MTCClick(Sender: TObject);
begin
  Application.CreateForm(TOFI_FM_M_MTC, OFI_FM_M_MTC);
end;

procedure TfrmSoftMenu.OFI_MN_C_MVEClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_MVE, CAD_FM_C_MVE);
end;

procedure TfrmSoftMenu.FIN_MN_M_BOLClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_BOL, FIN_FM_M_BOL);
end;

procedure TfrmSoftMenu.FIN_MN_M_BRDClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_BRD, FIN_FM_M_BRD);
end;

procedure TfrmSoftMenu.FAT_MN_R_NFE2Click(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_NFE, FAT_FM_R_NFE);
end;

procedure TfrmSoftMenu.FIN_MN_M_CRCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_RCR, FIN_FM_M_RCR)
end;

procedure TfrmSoftMenu.FIN_MN_M_CRFClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_PCR,FIN_FM_M_PCR);
end;

procedure TfrmSoftMenu.FIN_MN_R_CSCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_CSC, FIN_FM_R_CSC);
end;

procedure TfrmSoftMenu.CSU_MN_C_FORClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_C_FOR, CSU_FM_C_FOR);
end;

procedure TfrmSoftMenu.CSU_MN_C_GERClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_M_GER, CSU_FM_M_GER);
end;

procedure TfrmSoftMenu.OFI_MN_R_OFV_POSClick(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
    begin
      OpenForm(TOFI_FM_R_OFT_POS, OFI_FM_R_OFT_POS);
    end
  else
    begin
      OpenForm(TOFI_FM_R_OFV_POS, OFI_FM_R_OFV_POS);
    end;
end;

procedure TfrmSoftMenu.OFI_MN_R_OFV_POCClick(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
    begin
      OpenForm(TOFI_FM_R_OFT_POC, OFI_FM_R_OFT_POC);
    end
  else
    begin
      OpenForm(TOFI_FM_R_OFV_POC, OFI_FM_R_OFV_POC);
    end;
end;

procedure TfrmSoftMenu.OFI_MN_R_POSClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_R_POS, OFI_FM_R_POS);
end;

procedure TfrmSoftMenu.OFI_MN_R_TIOClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_R_TIO, OFI_FM_R_TIO);
end;

procedure TfrmSoftMenu.OFI_MN_R_FIVClick(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
    begin
      OpenForm(TOFI_FM_R_FIT, OFI_FM_R_FIT);
    end
  else
    begin
      OpenForm(TOFI_FM_R_FIV, OFI_FM_R_FIV);
    end;
end;

procedure TfrmSoftMenu.OFI_MN_R_HIVClick(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
    begin
      OpenForm(TOFI_FM_R_HIT, OFI_FM_R_HIT);
    end
  else
    begin
      OpenForm(TOFI_FM_R_HIV, OFI_FM_R_HIV);
    end;

end;

procedure TfrmSoftMenu.OFI_MN_R_ABCClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_R_ABC, OFI_FM_R_ABC);
end;

procedure TfrmSoftMenu.FIN_MN_R_PCRClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PCR, FIN_FM_R_PCR);
end;

procedure TfrmSoftMenu.FIN_MN_R_PRCClick(Sender: TObject);
begin
   OpenForm(TFIN_FM_R_PRC, FIN_FM_R_PRC);
end;

procedure TfrmSoftMenu.FIN_MN_R_PCPClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PCP, FIN_FM_R_PCP);
end;

procedure TfrmSoftMenu.FIN_MN_R_CXAClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_CXA, FIN_FM_R_CXA);
end;

procedure TfrmSoftMenu.FIN_MN_R_BCOClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_BCO, FIN_FM_R_BCO);
end;

procedure TfrmSoftMenu.FIN_MN_R_ANVClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_ANV, FIN_FM_R_ANV);
end;

procedure TfrmSoftMenu.FIN_MN_R_CHQClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_CHQ, FIN_FM_R_CHQ);
end;

procedure TfrmSoftMenu.FIN_MN_R_COBClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_COB, FIN_FM_R_COB);
end;

procedure TfrmSoftMenu.FIN_MN_R_EXFClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_EXF, FIN_FM_R_EXF);
end;

procedure TfrmSoftMenu.FIN_MN_R_INDClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_IND,FIN_FM_R_IND);
end;

procedure TfrmSoftMenu.FIN_MN_R_LMFClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_LMF,FIN_FM_R_LMF);
end;

procedure TfrmSoftMenu.FIN_MN_R_MCHClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_MCH,FIN_FM_R_MCH);
end;

procedure TfrmSoftMenu.FIN_MN_R_EXCClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_EXC, FIN_FM_R_EXC);
end;

procedure TfrmSoftMenu.FAT_MN_R_PPCClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_PIS, FAT_FM_R_PIS);
end;

procedure TfrmSoftMenu.FAT_MN_R_PEDClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_PED, FAT_FM_R_PED);
end;

procedure TfrmSoftMenu.FAT_MN_R_PICClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_ICM, FAT_FM_R_ICM);
end;

procedure TfrmSoftMenu.FAT_MN_R_POSClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_POS, FAT_FM_R_POS);
end;

procedure TfrmSoftMenu.EST_MN_R_DEVClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_DEV, EST_FM_R_DEV);
end;

procedure TfrmSoftMenu.EST_MN_R_DEZClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_DEZ, EST_FM_R_DEZ);
end;

procedure TfrmSoftMenu.FAT_MN_R_RENClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_RET, FAT_FM_R_RET);
end;

procedure TfrmSoftMenu.FAT_MN_R_VISClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_VIS, FAT_FM_R_VIS);
end;

procedure TfrmSoftMenu.FAT_MN_R_ABC_FATClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_ABC, FAT_FM_R_ABC);
end;

procedure TfrmSoftMenu.FAT_MN_R_COVClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_COV, FAT_FM_R_COV);
end;

procedure TfrmSoftMenu.EST_MN_R_GIRClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_GIR, EST_FM_R_GIR);
end;

procedure TfrmSoftMenu.EST_MN_R_INVClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_INV, EST_FM_R_INV);
end;

procedure TfrmSoftMenu.EST_MN_R_ISMClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_ISM, EST_FM_R_ISM);
end;

procedure TfrmSoftMenu.EST_MN_R_MALClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_MAL, EST_FM_R_MAL);
end;

procedure TfrmSoftMenu.EST_MN_R_MOVClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_MOV, EST_FM_R_MOV);
end;

procedure TfrmSoftMenu.EST_MN_R_ABC_PROClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_ABC, EST_FM_R_ABC);
end;

procedure TfrmSoftMenu.EST_MN_R_CTEClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_CTE, EST_FM_R_CTE);
end;

procedure TfrmSoftMenu.EST_MN_R_PESClick(Sender: TObject);
begin
 OpenForm(TEST_FM_R_PES, EST_FM_R_PES);
end;

procedure TfrmSoftMenu.EST_MN_R_PVEClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_R_PVE, FAT_FM_R_PVE);
end;

procedure TfrmSoftMenu.EST_MN_R_FICClick(Sender: TObject);
begin
  OpenForm(TEST_FM_R_FIC, EST_FM_R_FIC);
end;

procedure TfrmSoftMenu.FIN_MN_M_PBXClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_PBX, FIN_FM_M_PBX);
end;

procedure TfrmSoftMenu.FIN_MN_M_PRCClick(Sender: TObject);
begin
   OpenForm(TFIN_FM_M_PRC, FIN_FM_M_PRC);
end;

procedure TfrmSoftMenu.FIN_MN_M_PAGClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_PAG, FIN_FM_M_PAG);
end;

procedure TfrmSoftMenu.FIN_MN_M_CARClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_CAR,FIN_FM_M_CAR);
end;

procedure TfrmSoftMenu.FIN_MN_M_CBXClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_CBX,FIN_FM_M_CBX);
end;



procedure TfrmSoftMenu.FIN_MN_R_REC2Click(Sender: TObject);
begin
   OpenForm(TFIN_FM_R_REC,FIN_FM_R_REC );
end;

procedure TfrmSoftMenu.FIS_MN_R_LAIClick(Sender: TObject);
begin
  OpenForm(TFIS_FM_R_LAI, FIS_FM_R_LAI);
end;

procedure TfrmSoftMenu.FIS_MN_R_LREClick(Sender: TObject);
begin
  OpenForm(TFIS_FM_R_LRE, FIS_FM_R_LRE);
end;

procedure TfrmSoftMenu.FIS_MN_R_LRSClick(Sender: TObject);
begin
  OpenForm(TFIS_FM_R_LRS, FIS_FM_R_LRS);
end;

procedure TfrmSoftMenu.FIN_MN_M_COBClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_COB, FIN_FM_M_COB);
end;

procedure TfrmSoftMenu.FIN_MN_M_RBXClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_RBX, FIN_FM_M_RBX);
  xOriChamada := 0;
end;

procedure TfrmSoftMenu.FIN_MN_M_RECClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_REC, FIN_FM_M_REC);
end;

procedure TfrmSoftMenu.FIN_MN_M_REC_REMClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_REC_REM, FIN_FM_M_REC_REM);
end;

procedure TfrmSoftMenu.FIN_MN_M_REC_RETClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_REC_RET, FIN_FM_M_REC_RET);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_CONClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_CTA_CON, FIN_FM_M_CTA_CON);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_BCOClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_CTA_BCO, FIN_FM_M_CTA_BCO);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_CXAClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_CTA_CXA, FIN_FM_M_CTA_CXA);
end;

procedure TfrmSoftMenu.FIN_MN_M_DCTClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_DCT,FIN_FM_M_DCT);
end;

procedure TfrmSoftMenu.FIN_MN_M_ECHClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_M_ECH,FIN_FM_M_ECH);
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
  OpenForm(TFIN_FM_M_ORC, FIN_FM_M_ORC);
end;

procedure TfrmSoftMenu.FIN_MN_M_CTA_ABEClick(Sender: TObject);
begin
   FIN_FM_M_CTA_ABE := TFIN_FM_M_CTA_ABE.Create(Self);
   FIN_FM_M_CTA_ABE.ShowModal;
   FIN_FM_M_CTA_ABE.Free;
  //OpenForm(TFIN_FM_M_CTA_ABE, FIN_FM_M_CTA_ABE);
end;

procedure TfrmSoftMenu.FAT_MN_M_LIBClick(Sender: TObject);
begin
  //OpenForm(TFAT_FM_M_LIB, FAT_FM_M_LIB);
  Application.CreateForm(TFAT_FM_M_LIB, FAT_FM_M_LIB);
end;

procedure TfrmSoftMenu.FAT_MN_M_CXAClick(Sender: TObject);
begin
  if dmGeral.VerificarLicenca in [3,4,5,7] then
    exit;
  OpenForm(TFAT_FM_M_CXA, FAT_FM_M_CXA);
end;

procedure TfrmSoftMenu.FAT_MN_M_E01Click(Sender: TObject);
begin
   CAD_FM_R_E01 := TCAD_FM_R_E01.Create(Self);
   CAD_FM_R_E01.xFormCall := frmSoftMenu.Name;
   CAD_FM_R_E01.Show;
end;

procedure TfrmSoftMenu.FAT_MN_M_EXPClick(Sender: TObject);
begin
   Application.CreateForm(TFAT_FM_M_EXP, FAT_FM_M_EXP);
end;

procedure TfrmSoftMenu.FAT_MN_M_POSClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_POS, FAT_FM_M_POS);
end;

procedure TfrmSoftMenu.FAT_MN_M_PCAClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_PCA,FAT_FM_M_PCA);
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

procedure TfrmSoftMenu.FAT_MN_M_PNFClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_PNF, FAT_FM_M_PNF);
end;

procedure TfrmSoftMenu.ESP_MN_M_ACEClick(Sender: TObject);
begin
  OpenForm(TESP_FM_M_ACE, ESP_FM_M_ACE);
end;

procedure TfrmSoftMenu.EST_MN_M_APRClick(Sender: TObject);
begin
  Application.CreateForm(TEST_FM_M_APR, EST_FM_M_APR);
end;

procedure TfrmSoftMenu.EST_MN_M_COFClick(Sender: TObject);
begin
   OpenForm(TEST_FM_M_COF, EST_FM_M_COF);
end;

procedure TfrmSoftMenu.EST_MN_M_CTEClick(Sender: TObject);
begin
  OpenForm(TEST_FM_M_CTE, EST_FM_M_CTE);
end;

procedure TfrmSoftMenu.EST_MN_M_MALClick(Sender: TObject);
begin
  OpenForm(TEST_FM_M_MAL, EST_FM_M_MAL);
end;

procedure TfrmSoftMenu.EST_MN_M_METClick(Sender: TObject);
begin
  OpenForm(TEST_FM_M_MET, EST_FM_M_MET);
end;

procedure TfrmSoftMenu.CSU_MN_C_CLIClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_C_CLI, CSU_FM_C_CLI);
end;

procedure TfrmSoftMenu.CSU_MN_C_DREClick(Sender: TObject);
begin
  Application.CreateForm(TCSU_FM_M_DRE, CSU_FM_M_DRE);
end;

procedure TfrmSoftMenu.CSU_MN_C_ITEClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_C_ITE, CSU_FM_C_ITE);
end;

procedure TfrmSoftMenu.CSU_MN_C_MTVClick(Sender: TObject);
begin
  Application.CreateForm(TCSU_FM_C_MTV, CSU_FM_C_MTV);
end;

procedure TfrmSoftMenu.CSU_MN_M_AUDClick(Sender: TObject);
begin
  OpenForm(TCSU_FM_M_AUD, CSU_FM_M_AUD);
end;

procedure TfrmSoftMenu.CSU_MN_M_ETGClick(Sender: TObject);
begin
   OpenForm(TCSU_FM_M_ETG, CSU_FM_M_ETG);
end;

procedure TfrmSoftMenu.CSU_MN_M_GER_VNDClick(Sender: TObject);
begin
    OpenForm(TCSU_FM_M_GER_VND, CSU_FM_M_GER_VND);
end;

procedure TfrmSoftMenu.CSU_MN_M_NFEClick(Sender: TObject);
begin
  Application.CreateForm(TCSU_FM_M_NFE, CSU_FM_M_NFE);
end;

procedure TfrmSoftMenu.CSU_MN_M_NPOClick(Sender: TObject);
begin
  Application.CreateForm(TCSU_FM_M_NPO, CSU_FM_M_NPO);
end;

procedure TfrmSoftMenu.CSU_MN_M_ORCClick(Sender: TObject);
begin
  Application.CreateForm(TCSU_FM_M_ORC, CSU_FM_M_ORC);
end;

procedure TfrmSoftMenu.CSU_MN_M_PEQClick(Sender: TObject);
begin
  Application.CreateForm(TCSU_FM_M_PEQ, CSU_FM_M_PEQ);
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

procedure TfrmSoftMenu.EST_MN_M_NFDClick(Sender: TObject);
begin
  if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TEST_FM_M_NFD, EST_FM_M_NFD);
    end;
end;

procedure TfrmSoftMenu.EST_MN_M_NFSClick(Sender: TObject);
begin
  if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TEST_FM_M_NFS, EST_FM_M_NFS);
    end;
end;

procedure TfrmSoftMenu.EST_MN_M_XMLClick(Sender: TObject);
begin
   if dmGeral.VerificarLicenca in [3,4,5,7] then
     exit;

   if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
       OpenForm(TEST_FM_M_XML,EST_FM_M_XML);
    end;
end;

procedure TfrmSoftMenu.EST_MN_M_NCFClick(Sender: TObject);
begin
  if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TEST_FM_M_NCF,EST_FM_M_NCF);
    end;
end;

procedure TfrmSoftMenu.EST_MN_M_NFCClick(Sender: TObject);
begin
  if (VerificarTelasAbertasFAT_CD_M_NFE = true) then
    begin
     OpenForm(TEST_FM_M_NFC, EST_FM_M_NFC);
    end;
end;

procedure TfrmSoftMenu.FAT_MN_M_ORCClick(Sender: TObject);
begin
  OpenForm(TFAT_FM_M_ORC, FAT_FM_M_ORC);
end;

procedure TfrmSoftMenu.FIN_MN_R_PAGClick(Sender: TObject);
begin
  OpenForm(TFIN_FM_R_PAG, FIN_FM_R_PAG);
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
  FreeAndNil(AVS_FM_X_COB);
  FreeAndNil(AVS_FM_X_ANV);
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
  dia,mes, ano: word;
begin
  DecodeDate(xDataSis,ano,mes,dia);

  xFuncionario  := dmGeral.CAD_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;
  xPerfilUsuario:= dmGeral.CAD_CD_C_FUN.FieldByName('ID_PERFIL_SEG').AsInteger;

  dmGeral.BUS_CD_M_COB.Close;
  dmGeral.BUS_CD_M_COB.Data :=
  dmGeral.BUS_CD_M_COB.DataRequest(VarArrayOf([4,dmgeral.CAD_CD_C_PARid_empresa.Text,DateToStr(xDataSis)]));

  dmGeral.BUS_CD_C_ANV.Close;
  dmGeral.BUS_CD_C_ANV.Data :=
  dmGeral.BUS_CD_C_ANV.DataRequest(VarArrayOf([mes]));

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


  if dmGeral.BUS_CD_C_FUN.FieldByName('SEG_HABILITAR_SEG').AsBoolean = True then
    begin
     xHabBtnAlterar := dmGeral.BUS_CD_C_FUN.FieldByName('seg_hab_bot_alt_fun').AsBoolean;
     xHabBtnExcluir := dmGeral.BUS_CD_C_FUN.FieldByName('seg_hab_bot_exc').AsBoolean;
    end;

  txtFuncionario.Text := dmGeral.BUS_CD_C_FUN.FieldByName('Nome').AsString;
  txtEmpresa.Text := dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString;
  dxStatusBar.Panels[0].Text:='Versão do Sistema :'+CVersaoSistema;
  dxStatusBar.Panels[1].Text:='Data do Sistema :'+DateToStr(xDataSis);
  dxStatusBar.Panels[2].Text:='Computador :'+TEnorth.NomeComputador();

  dmGeral.enCarregaMenu(MenuManager,inttostr(xFuncionario),xPerfilUsuario);

  if smiTabelas.ItemLinks.AvailableItemCount=0 then
     smiTabelas.Visible:=ivNever;

  if smiCadastros.ItemLinks.AvailableItemCount=0 then
     smiCadastros.Visible:=ivNever;

  if smiConsultas.ItemLinks.AvailableItemCount=0 then
     smiConsultas.Visible:=ivNever;

  if smiEstoque.ItemLinks.AvailableItemCount=0 then
     smiEstoque.Visible:=ivNever;

  if smiComercial.ItemLinks.AvailableItemCount=0 then
     smiComercial.Visible:=ivNever;

  if smiFinanceiro.ItemLinks.AvailableItemCount=0 then
     smiFinanceiro.Visible:=ivNever;

  if smiFaturamento.ItemLinks.AvailableItemCount=0 then
     smiFaturamento.Visible:=ivNever;

  if smiOficina.ItemLinks.AvailableItemCount=0 then
     smiOficina.Visible:=ivNever;

  if smiSeguranca.ItemLinks.AvailableItemCount=0 then
     smiSeguranca.Visible:=ivNever;

  if smiRelatoriosCadastros.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosCadastros.Visible:=ivNever;

  if smiRelatoriosEstoque.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosEstoque.Visible:=ivNever;

  if smiRelatoriosFaturamento.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosFaturamento.Visible:=ivNever;

  if smiRelatoriosFinanceiro.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosFinanceiro.Visible:=ivNever;

  if smiRelatoriosOficina.ItemLinks.AvailableItemCount=0 then
     smiRelatoriosOficina.Visible:=ivNever;

  if not dmgeral.CAD_CD_C_PAR_MODcmp.AsBoolean then
     smiCompras.Visible:=ivNever;
end;

procedure TfrmSoftMenu.FormDblClick(Sender: TObject);
var
  i: integer;
begin
  FreeAndNil(AVS_FM_X_EST);
  FreeAndNil(AVS_FM_X_COB);
  FreeAndNil(AVS_FM_X_ANV);
  for I := 0 to Screen.FormCount -1 do
     begin
       if Screen.Forms[I] is TForm then
          begin
            if Screen.Forms[I].Showing  then
               begin
                 if Screen.Forms[I].Name <> 'frmSoftMenu' then
                    begin
                      showmessage('É preciso que feche o(s) formulário(s) aberto(s).');
                      abort;
                    end;
               end;
          end;
     end;

//   if ord(key) = VK_F11 then
//     begin
      try
         Screen.Cursor := crHourGlass;

       Application.CreateForm(TfrmSuporte001, frmSuporte001);
       frmSuporte001.ShowModal;
       FreeAndNil(frmSuporte001);
      finally
         Screen.Cursor := crDefault;
      end;
 //    end;
end;

procedure TfrmSoftMenu.FormResize(Sender: TObject);
begin
  if frmSoftMenu <> nil then
     begin
       if (not dmgeral.BUS_CD_M_ITE_EST_MIN.IsEmpty) and  xExibMsgEst and (AVS_FM_X_EST<> nil) then
        begin
          AVS_FM_X_EST.Top := frmSoftMenu.Height - AVS_FM_X_EST.Height - 195;
          AVS_FM_X_EST.Left := 0;
        end;
     end;

   if frmSoftMenu <> nil then
     begin
       if (not dmgeral.BUS_CD_M_COB.IsEmpty) and  xExibMsgSolCmp and (AVS_FM_X_COB<> nil) then
        begin
           AVS_FM_X_COB.Top := frmSoftMenu.Height - AVS_FM_X_COB.Height - 195;
           AVS_FM_X_COB.Left := frmSoftMenu.Width - AVS_FM_X_COB.Width - 25;
        end;
     end;


   if frmSoftMenu <> nil then
     begin
       if (not dmgeral.BUS_CD_C_ANV.IsEmpty) and (xExibMsgAnv) then
        begin
           AVS_FM_X_ANV.Top := frmSoftMenu.Height - AVS_FM_X_ANV.Height - 195;
           AVS_FM_X_ANV.Left := frmSoftMenu.Width - AVS_FM_X_ANV.Width - 50;
        end;
     end;
end;

procedure TfrmSoftMenu.FormShow(Sender: TObject);
var
  x,i,subNiveis:Integer;
begin
  // Solicitações Pendentes
  dmGeral.BusFuncionario(0, IntToStr(xFuncionario));
  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
    begin
      xExibMsgSolCmp := dmGeral.BUS_CD_C_FUNseg_vis_ult_cmp_ite.AsBoolean;
      xExibMsgEst := dmGeral.BUS_CD_C_FUNseq_vis_alert_est_min.AsBoolean;
      xExibMsgAnv := dmGeral.BUS_CD_C_FUNaniversariante_mes.AsBoolean;
    end;

  if xExibMsgSolCmp and (not dmGeral.BUS_CD_M_COB.IsEmpty) then
    begin
      showmessage('Existe acordo para hoje!');
      OpenForm(TAVS_FM_X_COB, AVS_FM_X_COB);
    end;

  if (not dmGeral.BUS_CD_C_ANV.IsEmpty )and (xExibMsgAnv) then
    begin
      showmessage('Existe aniversariante este mês!');
      OpenForm(TAVS_FM_X_ANV, AVS_FM_X_ANV);
    end;

  if xExibMsgEst and (not dmGeral.BUS_CD_M_ITE_EST_MIN.IsEmpty) then
    begin
      showmessage('Existe itens de estoque minimo!');
      OpenForm(TAVS_FM_X_EST, AVS_FM_X_EST);
    end;
  rbMenu.ActiveTab := tbDados;

  if ((dmgeral.CAD_CD_C_PAR_MODome.AsBoolean = True) or (dmgeral.CAD_CD_C_PAR_MODota.AsBoolean = True)
      or (dmgeral.CAD_CD_C_PAR_MODoqp.AsBoolean = True) or (dmgeral.CAD_CD_C_PAR_MODtor.AsBoolean = True)) then
    begin
      smiOficina.Visible := ivAlways;
      smiOficina.Enabled := true;

      smiRelatoriosOficina.Visible := ivAlways;
      smiRelatoriosOficina.Enabled := true;

      CAD_MN_C_SUB_OFI.Visible := ivAlways;
      CAD_MN_C_SUB_OFI.Enabled := true;
    end
  else
    begin
      smiOficina.Visible := ivNever;
      smiOficina.Enabled := false;

      smiRelatoriosOficina.Visible := ivNever;
      smiRelatoriosOficina.Enabled := false;

      CAD_MN_C_SUB_OFI.Visible := ivNever;
      CAD_MN_C_SUB_OFI.Enabled := false;
    end;

  if (dmgeral.CAD_CD_C_PAR_MODsnf.AsBoolean = false) then
    begin
      EST_MN_M_MET.Visible := ivNever;
      EST_MN_M_MET.Enabled := false;

      EST_MN_M_NCF.Visible := ivNever;
      EST_MN_M_NCF.Enabled := false;

      FAT_MN_M_PNF.Visible := ivNever;
      FAT_MN_M_PNF.Enabled := false;
    end;


  if (dmgeral.CAD_CD_C_PAR_MODrev.AsBoolean = false) then
    begin
      CAD_MN_C_CUL.Visible := ivNever;
      CAD_MN_C_CUL.Enabled := false;

      CAD_MN_C_MTV.Visible := ivNever;
      CAD_MN_C_MTV.Enabled := false;

      CAD_MN_C_GRP.Visible := ivNever;
      CAD_MN_C_GRP.Enabled := false;

      CSU_MN_C_MTV.Visible := ivNever;
      CSU_MN_C_MTV.Enabled := false;
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
     end;

   if not (dmGeral.CAD_CD_C_PAR_MODcsu.AsBoolean = True) then
     begin
       smiConsultas.Visible := ivNever;
       smiConsultas.Enabled := false;
     end;

   if not (dmGeral.CAD_CD_C_PAR_MODcmp.AsBoolean = True) then
     begin
       smiCompras.Visible := ivNever;
       smiCompras.Enabled := false;
     end;

   if not (dmGeral.CAD_CD_C_PAR_MODest.AsBoolean = True) then
     begin
       smiEstoque.Visible := ivNever;
       smiEstoque.Enabled := false;

       smiRelatoriosEstoque.Visible := ivNever;
       smiRelatoriosEstoque.Enabled := false;
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

   if not (dmGeral.CAD_CD_C_PAR_MODcar.AsBoolean = True)  then
     begin
       smiCargas.Visible := ivNever;
       smiCargas.Enabled := false;
     end;

   if (dmgeral.CAD_CD_C_PAR_CTRativa_forma_fpg_hrq.AsBoolean = True) then
    begin
      CAD_MN_C_HFG.Visible := ivAlways;
      CAD_MN_C_HFG.Enabled := true;
    end
   else
    begin
      CAD_MN_C_HFG.Visible := ivNever;
      CAD_MN_C_HFG.Enabled := false;
    end;

   { if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
      begin
        OFI_MN_M_AGE.Visible := ivNever;
        OFI_MN_M_AGE.Enabled := false;

        OFI_MN_M_POS.Visible := ivNever;
        OFI_MN_M_POS.Enabled := false;

        OFI_MN_M_MTC.Visible := ivNever;
        OFI_MN_M_MTC.Enabled := false;
      end
    else
      begin
        OFI_MN_M_AGE.Visible := ivAlways;
        OFI_MN_M_AGE.Enabled := true;

        OFI_MN_M_POS.Visible := ivAlways;
        OFI_MN_M_POS.Enabled := true;

        OFI_MN_M_MTC.Visible := ivAlways;
        OFI_MN_M_MTC.Enabled := true;
      end; }


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



  if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
    begin
      OFI_MN_R_FIV.Caption :=  'Ficha do Trator';
      OFI_MN_R_HIV.Caption :=  'Histórico de Trator';
    end;

  if dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
    FAT_MN_R_COV.Caption := 'Comissão do Representante'
  else
    FAT_MN_R_COV.Caption := 'Comissão do Vendedor';


  Tmythread.Create(false);
end;

procedure TfrmSoftMenu.CAD_MN_C_FUNClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_FUN, CAD_FM_C_FUN);
end;

procedure TfrmSoftMenu.CAD_MN_C_GRPClick(Sender: TObject);
begin
   OpenForm(TCAD_FM_C_GRP, CAD_FM_C_GRP);
end;

procedure TfrmSoftMenu.CAD_MN_C_GRUClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_GRU, CAD_FM_C_GRU);
end;

procedure TfrmSoftMenu.CAD_MN_C_HFGClick(Sender: TObject);
begin
   OpenForm(TCAD_FM_C_HFG, CAD_FM_C_HFG);
end;

procedure TfrmSoftMenu.CAD_MN_C_TRIClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_TRI, CAD_FM_C_TRI);
end;

procedure TfrmSoftMenu.CAD_MN_C_NCMClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_NCM, CAD_FM_C_NCM);
end;

procedure TfrmSoftMenu.CAD_MN_C_NTRClick(Sender: TObject);
begin
    OpenForm(TCAD_FM_C_NTR, CAD_FM_C_NTR);
end;

procedure TfrmSoftMenu.CAD_MN_C_CFOClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CFO, CAD_FM_C_CFO);
end;

procedure TfrmSoftMenu.CAD_MN_C_NATClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_NAT, CAD_FM_C_NAT);
end;

procedure TfrmSoftMenu.CAD_MN_C_FPGClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_FPG, CAD_FM_C_FPG);
end;

procedure TfrmSoftMenu.CAD_MN_C_CPGClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CPG, CAD_FM_C_CPG);
end;

procedure TfrmSoftMenu.CAD_MN_C_LTOClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_LTO, CAD_FM_C_LTO);
end;

procedure TfrmSoftMenu.CAD_MN_C_CTCClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CTC, CAD_FM_C_CTC);
end;

procedure TfrmSoftMenu.CAD_MN_C_CULClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_CUL, CAD_FM_C_CUL);
end;

procedure TfrmSoftMenu.CAD_MN_C_DTSClick(Sender: TObject);
begin
   OpenForm(TCAD_FM_C_DTS, CAD_FM_C_DTS);
end;

procedure TfrmSoftMenu.CAD_MN_C_ECFClick(Sender: TObject);
begin
 OpenForm(TCAD_FM_C_ECF, CAD_FM_C_ECF);
end;

procedure TfrmSoftMenu.CAD_MN_C_EQPClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_EQP, CAD_FM_C_EQP);
end;

procedure TfrmSoftMenu.CAD_MN_C_E01Click(Sender: TObject);
begin
  Application.CreateForm(TCAD_FM_C_E01,CAD_FM_C_E01);
  CAD_FM_C_E01.SHOW;
end;

procedure TfrmSoftMenu.CAD_MN_BACKUPClick(Sender: TObject);
begin
  OpenForm(TSEG_FM_X_BCK,SEG_FM_X_BCK);
end;

procedure TfrmSoftMenu.CAD_MN_C_AUSClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_AUS, CAD_FM_C_AUS);
end;

procedure TfrmSoftMenu.CAD_MN_C_CATClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CAT, CAD_FM_C_CAT);
end;

procedure TfrmSoftMenu.CAD_MN_C_CCRClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CCR, CAD_FM_C_CCR);
end;

procedure TfrmSoftMenu.CAD_MN_C_CCUClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CCU, CAD_FM_C_CCU);
end;

procedure TfrmSoftMenu.CAD_MN_C_INFClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_INF, CAD_FM_C_INF);
end;

procedure TfrmSoftMenu.CAD_MN_C_ITEClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_ITE, CAD_FM_C_ITE);
end;

procedure TfrmSoftMenu.CAD_MN_C_PCCClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_PCC, CAD_FM_C_PCC);
end;

procedure TfrmSoftMenu.CAD_MN_C_PCTClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_PCT, CAD_FM_C_PCT);
end;

procedure TfrmSoftMenu.CAD_MN_C_PECClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_PEC, CAD_FM_C_PEC);
end;

procedure TfrmSoftMenu.CAD_MN_C_PESClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_PES, CAD_FM_C_PES);
end;

procedure TfrmSoftMenu.CAD_MN_C_CINClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CIN, CAD_FM_C_CIN);
end;

procedure TfrmSoftMenu.CAD_MN_C_CIDClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CID, CAD_FM_C_CID);
end;

procedure TfrmSoftMenu.CAD_MN_C_CNEClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_CNE, CAD_FM_C_CNE);
end;

procedure TfrmSoftMenu.CAD_MN_C_CORClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_COR, CAD_FM_C_COR);
end;

procedure TfrmSoftMenu.OFI_MN_C_TIOClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_C_TIO, OFI_FM_C_TIO);
end;

procedure TfrmSoftMenu.CAD_MN_C_VEIClick(Sender: TObject);
begin
  OpenForm(TCAD_FM_C_VEI, CAD_FM_C_VEI);

end;

procedure TfrmSoftMenu.OFI_MN_M_AGEClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_M_AGE, OFI_FM_M_AGE);
end;

procedure TfrmSoftMenu.OFI_MN_M_FEVClick(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_MODoqp.AsBoolean or  dmGeral.CAD_CD_C_PAR_MODtor.AsBoolean then
     begin
       OpenForm(TOFI_FM_M_FEQ, OFI_FM_M_FEQ);
     end
  else
     begin
       if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
          begin
            OpenForm(TOFI_FM_M_FET, OFI_FM_M_FET);
          end
       else
          begin
            OpenForm(TOFI_FM_M_FEV, OFI_FM_M_FEV);
          end;
     end;
end;

procedure TfrmSoftMenu.OFI_MN_M_OCQClick(Sender: TObject);
begin
  OpenForm(TOFI_FM_M_OCQ, OFI_FM_M_OCQ);
end;

procedure TfrmSoftMenu.OFI_MN_M_OCVClick(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
    begin
      OpenForm(TOFI_FM_M_OCT, OFI_FM_M_OCT);
    end
  else
    begin
      OpenForm(TOFI_FM_M_OCV, OFI_FM_M_OCV);
    end;
end;

{ Tmythread }

procedure Tmythread.AtualizaVCL;
begin
  dmGeral.BUS_CD_M_COB.Close;
  dmGeral.BUS_CD_M_COB.Data :=
  dmGeral.BUS_CD_M_COB.DataRequest(VarArrayOf([4,dmgeral.CAD_CD_C_PARid_empresa.Text,DateToStr(xDataSis)]));

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

   if xExibMsgSolCmp and (not dmGeral.BUS_CD_M_COB.IsEmpty) and (AVS_FM_X_COB = nil) then
    begin
      OpenForm(TAVS_FM_X_COB, AVS_FM_X_COB);
    end;

   if (AVS_FM_X_COB <> nil) and (dmGeral.BUS_CD_M_COB.IsEmpty) then
    begin
      FreeAndNil(AVS_FM_X_COB);
    end;

   if (not dmGeral.BUS_CD_C_ANV.IsEmpty) and (AVS_FM_X_ANV = nil) and (xExibMsgAnv) then
    begin
      OpenForm(TAVS_FM_X_ANV, AVS_FM_X_ANV);
    end;

   if (AVS_FM_X_ANV <> nil) and (dmGeral.BUS_CD_C_ANV.IsEmpty) then
    begin
      FreeAndNil(AVS_FM_X_ANV);
    end;


end;

procedure Tmythread.Execute;
begin
  inherited;
  while xExibMsgSolCmp or xExibMsgEst or xExibMsgAnv do
     begin
       sleep(600000);
       Synchronize(AtualizaVCL);
     end;
end;

end.
