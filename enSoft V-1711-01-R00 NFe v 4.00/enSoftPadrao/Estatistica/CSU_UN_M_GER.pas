unit CSU_UN_M_GER;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, cxControls, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbonBackstageView, dxRibbon, cxClasses, dxBar,
  Vcl.Buttons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ComCtrls, JvgPage,
  Vcl.CheckLst, Datasnap.DBClient, System.Math, frxExportXLS, frxClass,
  frxExportPDF, frxDBSet ;

type
  TCSU_FM_M_GER = class(TPAD_FM_X_FRM)
    jpgGerencial: TJvgPageControl;
    tbPosFin: TTabSheet;
    tsPosEstAtual: TTabSheet;
    tbFluxoCxa: TTabSheet;
    Label6: TLabel;
    dgFlxRecebimento: TwwDBGrid;
    Label7: TLabel;
    dgFlxPagamentos: TwwDBGrid;
    Label8: TLabel;
    dgFlxSldCxaBco: TwwDBGrid;
    cdsPosFT: TClientDataSet;
    cdsPosFTid_empresa: TIntegerField;
    cdsPosFTemp_fantasia: TWideStringField;
    cdsPosFTdescricao: TWideStringField;
    cdsPosFTmes_jan_ant: TFMTBCDField;
    cdsPosFTmes_jan: TFMTBCDField;
    cdsPosFTmes_fev_ant: TFMTBCDField;
    cdsPosFTmes_fev: TFMTBCDField;
    cdsPosFTmes_mar_ant: TFMTBCDField;
    cdsPosFTmes_mar: TFMTBCDField;
    cdsPosFTmes_abr_ant: TFMTBCDField;
    cdsPosFTmes_abr: TFMTBCDField;
    cdsPosFTmes_mai_ant: TFMTBCDField;
    cdsPosFTmes_mai: TFMTBCDField;
    cdsPosFTmes_jun_ant: TFMTBCDField;
    cdsPosFTmes_jun: TFMTBCDField;
    cdsPosFTmes_jul_ant: TFMTBCDField;
    cdsPosFTmes_jul: TFMTBCDField;
    cdsPosFTmes_ago_ant: TFMTBCDField;
    cdsPosFTmes_ago: TFMTBCDField;
    cdsPosFTmes_set_ant: TFMTBCDField;
    cdsPosFTmes_set: TFMTBCDField;
    cdsPosFTmes_out_ant: TFMTBCDField;
    cdsPosFTmes_out: TFMTBCDField;
    cdsPosFTmes_nov_ant: TFMTBCDField;
    cdsPosFTmes_nov: TFMTBCDField;
    cdsPosFTmes_dez_ant: TFMTBCDField;
    cdsPosFTmes_dez: TFMTBCDField;
    cdsPosRE: TClientDataSet;
    cdsPosREid_empresa: TIntegerField;
    cdsPosREemp_fantasia: TWideStringField;
    cdsPosREano: TFloatField;
    cdsPosREid_forma_pag: TIntegerField;
    cdsPosREdescricao: TWideStringField;
    cdsPosREano_anterior: TFMTBCDField;
    cdsPosREano_atual: TFMTBCDField;
    cdsPosREperc_ano_anterior: TFMTBCDField;
    cdsPosREperc_ano_atual: TFMTBCDField;
    cdsPosREtotal_geral: TFMTBCDField;
    cdsPosREmes_jan: TFMTBCDField;
    cdsPosREmes_fev: TFMTBCDField;
    cdsPosREmes_mar: TFMTBCDField;
    cdsPosREmes_abr: TFMTBCDField;
    cdsPosREmes_mai: TFMTBCDField;
    cdsPosREmes_jun: TFMTBCDField;
    cdsPosREmes_jul: TFMTBCDField;
    cdsPosREmes_ago: TFMTBCDField;
    cdsPosREmes_set: TFMTBCDField;
    cdsPosREmes_out: TFMTBCDField;
    cdsPosREmes_nov: TFMTBCDField;
    cdsPosREmes_dez: TFMTBCDField;
    dsPosRE: TwwDataSource;
    cdsPosDP: TClientDataSet;
    cdsPosDPid_empresa: TIntegerField;
    cdsPosDPemp_fantasia: TWideStringField;
    cdsPosDPano: TFloatField;
    cdsPosDPdescricao: TWideStringField;
    cdsPosDPano_anterior: TFMTBCDField;
    cdsPosDPano_atual: TFMTBCDField;
    cdsPosDPperc_ano_anterior: TFMTBCDField;
    cdsPosDPperc_ano_atual: TFMTBCDField;
    cdsPosDPtotal_geral: TFMTBCDField;
    cdsPosDPmes_jan: TFMTBCDField;
    cdsPosDPmes_fev: TFMTBCDField;
    cdsPosDPmes_mar: TFMTBCDField;
    cdsPosDPmes_abr: TFMTBCDField;
    cdsPosDPmes_mai: TFMTBCDField;
    cdsPosDPmes_jun: TFMTBCDField;
    cdsPosDPmes_jul: TFMTBCDField;
    cdsPosDPmes_ago: TFMTBCDField;
    cdsPosDPmes_set: TFMTBCDField;
    cdsPosDPmes_out: TFMTBCDField;
    cdsPosDPmes_nov: TFMTBCDField;
    cdsPosDPmes_dez: TFMTBCDField;
    dsPosDP: TwwDataSource;
    cdsPosFTtotal_ano_atual: TCurrencyField;
    cdsPosFTtotal_ano_anterior: TCurrencyField;
    cdsPosFTrent_med_jan: TCurrencyField;
    cdsPosFTrent_med_fev: TCurrencyField;
    cdsPosFTrent_med_mar: TCurrencyField;
    cdsPosFTrent_med_abr: TCurrencyField;
    cdsPosFTrent_med_mai: TCurrencyField;
    cdsPosFTrent_med_jun: TCurrencyField;
    cdsPosFTrent_med_jul: TCurrencyField;
    cdsPosFTrent_med_ago: TCurrencyField;
    cdsPosFTrent_med_set: TCurrencyField;
    cdsPosFTrent_med_out: TCurrencyField;
    cdsPosFTrent_med_nov: TCurrencyField;
    cdsPosFTrent_med_dez: TCurrencyField;
    cdsPosFTtotal_grupo_ano_atual: TCurrencyField;
    cdsPosFTtotal_grupo_ano_anterior: TCurrencyField;
    cdsPosFTperc_grupo_ano_anterior: TCurrencyField;
    cdsPosFTperc_grupo_ano_atual: TCurrencyField;
    cdsPosFTid_grupo: TStringField;
    cdsPosFTtipo_reg: TStringField;
    ScrollBox1: TScrollBox;
    lblPagamentos: TLabel;
    dgPosFaturamento: TwwDBGrid;
    cdsPosREtipo_reg: TStringField;
    cdsPosDPperc_faturamento: TCurrencyField;
    cdsPosDPtipo_reg: TStringField;
    cdsPosDPid_plano: TStringField;
    dsRc: TwwDataSource;
    dsPg: TwwDataSource;
    dsPFe: TwwDataSource;
    dsXRC: TwwDataSource;
    dsXPG: TwwDataSource;
    dsXCB: TwwDataSource;
    cdsPosXCB: TClientDataSet;
    cdsPosXCBid_empresa: TIntegerField;
    cdsPosXCBemp_fantasia: TWideStringField;
    cdsPosXCBid_conta: TIntegerField;
    cdsPosXCBdescricao: TWideStringField;
    cdsPosXCBsaldo: TFMTBCDField;
    cdsPosXCBsaldo_disponivel: TFMTBCDField;
    cdsPosXCBtipo_reg: TStringField;
    tsRecPag: TTabSheet;
    tbFiltro: TTabSheet;
    Panel1: TPanel;
    gbxFiltro: TGroupBox;
    lblCampoBusca: TLabel;
    Label9: TLabel;
    chkEmpresa: TCheckListBox;
    txtAno: TEdit;
    btnFiltro: TcxButton;
    ScrollBox2: TScrollBox;
    lbPosRec: TLabel;
    dgContasRec: TwwDBGrid;
    lbPosPag: TLabel;
    dgContasPag: TwwDBGrid;
    tsSair: TTabSheet;
    pnPosEstAtual: TPanel;
    pnPosEstAtual2: TPanel;
    dgEstoque: TwwDBGrid;
    lblPosEstAtual: TLabel;
    cdsPosFe: TClientDataSet;
    cdsPosFeid_empresa: TIntegerField;
    cdsPosFeemp_fantasia: TWideStringField;
    cdsPosFedescricao: TWideStringField;
    cdsPosFetotal_custo_medio: TFMTBCDField;
    cdsPosFeid_grupo: TWideStringField;
    cdsPosFetipo_reg: TStringField;
    cdsPosXCBtipo: TIntegerField;
    tsImprimir: TTabSheet;
    GroupBox1: TGroupBox;
    chbContRecPag: TCheckBox;
    chbPosAtuEst: TCheckBox;
    chbFluCai: TCheckBox;
    CSU_FR_M_GER_PF1: TfrxReport;
    cdsDBPosFt: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    cdsDBPosRE: TfrxDBDataset;
    cdsDBPosDP: TfrxDBDataset;
    chbPosFin: TCheckBox;
    btnImprimir: TButton;
    cdsPosFF: TClientDataSet;
    cdsPosFFid_empresa: TIntegerField;
    cdsPosFFemp_fantasia: TStringField;
    cdsPosFFid_fornecedor: TIntegerField;
    cdsPosFFfantasia: TStringField;
    cdsPosFFtotal_custo_medio: TCurrencyField;
    cdsPosFFtipo_reg: TStringField;
    dsPosFF: TwwDataSource;
    Label3: TLabel;
    dgEstoqueFF: TwwDBGrid;
    CSU_FR_M_GER_CRP: TfrxReport;
    BUS_DB_M_CSU_GER_PRC: TfrxDBDataset;
    BUS_DB_M_CSU_GER_PPG: TfrxDBDataset;
    CSU_FR_M_GER_PAE: TfrxReport;
    cdsDBPosFe: TfrxDBDataset;
    cdsDBPosFF: TfrxDBDataset;
    BUS_DB_M_CSU_GER_XRC: TfrxDBDataset;
    BUS_DB_M_CSU_GER_XPG: TfrxDBDataset;
    cdsDBPosXCB: TfrxDBDataset;
    CSU_FR_M_GER_FCX: TfrxReport;
    tsRentabilidade: TTabSheet;
    Label4: TLabel;
    dgRentForn: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    Label5: TLabel;
    dsRentForn: TwwDataSource;
    dsRentColab: TwwDataSource;
    cdsRentForn: TClientDataSet;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    FMTBCDField7: TFMTBCDField;
    FMTBCDField8: TFMTBCDField;
    FMTBCDField9: TFMTBCDField;
    FMTBCDField10: TFMTBCDField;
    FMTBCDField11: TFMTBCDField;
    FMTBCDField12: TFMTBCDField;
    FMTBCDField13: TFMTBCDField;
    FMTBCDField14: TFMTBCDField;
    FMTBCDField15: TFMTBCDField;
    FMTBCDField16: TFMTBCDField;
    FMTBCDField17: TFMTBCDField;
    FMTBCDField18: TFMTBCDField;
    FMTBCDField19: TFMTBCDField;
    FMTBCDField20: TFMTBCDField;
    FMTBCDField21: TFMTBCDField;
    FMTBCDField22: TFMTBCDField;
    FMTBCDField23: TFMTBCDField;
    FMTBCDField24: TFMTBCDField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    CurrencyField13: TCurrencyField;
    CurrencyField14: TCurrencyField;
    CurrencyField15: TCurrencyField;
    CurrencyField16: TCurrencyField;
    CurrencyField17: TCurrencyField;
    CurrencyField18: TCurrencyField;
    StringField2: TStringField;
    cdsRentVen: TClientDataSet;
    IntegerField2: TIntegerField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    FMTBCDField25: TFMTBCDField;
    FMTBCDField26: TFMTBCDField;
    FMTBCDField27: TFMTBCDField;
    FMTBCDField28: TFMTBCDField;
    FMTBCDField29: TFMTBCDField;
    FMTBCDField30: TFMTBCDField;
    FMTBCDField31: TFMTBCDField;
    FMTBCDField32: TFMTBCDField;
    FMTBCDField33: TFMTBCDField;
    FMTBCDField34: TFMTBCDField;
    FMTBCDField35: TFMTBCDField;
    FMTBCDField36: TFMTBCDField;
    FMTBCDField37: TFMTBCDField;
    FMTBCDField38: TFMTBCDField;
    FMTBCDField39: TFMTBCDField;
    FMTBCDField40: TFMTBCDField;
    FMTBCDField41: TFMTBCDField;
    FMTBCDField42: TFMTBCDField;
    FMTBCDField43: TFMTBCDField;
    FMTBCDField44: TFMTBCDField;
    FMTBCDField45: TFMTBCDField;
    FMTBCDField46: TFMTBCDField;
    FMTBCDField47: TFMTBCDField;
    FMTBCDField48: TFMTBCDField;
    CurrencyField19: TCurrencyField;
    CurrencyField20: TCurrencyField;
    CurrencyField21: TCurrencyField;
    CurrencyField22: TCurrencyField;
    CurrencyField23: TCurrencyField;
    CurrencyField24: TCurrencyField;
    CurrencyField25: TCurrencyField;
    CurrencyField26: TCurrencyField;
    CurrencyField27: TCurrencyField;
    CurrencyField28: TCurrencyField;
    CurrencyField29: TCurrencyField;
    CurrencyField30: TCurrencyField;
    CurrencyField31: TCurrencyField;
    CurrencyField32: TCurrencyField;
    CurrencyField33: TCurrencyField;
    CurrencyField34: TCurrencyField;
    CurrencyField35: TCurrencyField;
    CurrencyField36: TCurrencyField;
    StringField4: TStringField;
    cdsRentFornid_fornecedor: TIntegerField;
    cdsRentVenid_vendedor: TIntegerField;
    JvgPageControl1: TJvgPageControl;
    TabSheet1: TTabSheet;
    dgPosRecebimento: TwwDBGrid;
    TabSheet2: TTabSheet;
    dgPosDespesas: TwwDBGrid;
    TabSheet3: TTabSheet;
    cdsPosDPInvest: TClientDataSet;
    IntegerField3: TIntegerField;
    WideStringField5: TWideStringField;
    FloatField1: TFloatField;
    WideStringField6: TWideStringField;
    FMTBCDField49: TFMTBCDField;
    FMTBCDField50: TFMTBCDField;
    FMTBCDField51: TFMTBCDField;
    FMTBCDField52: TFMTBCDField;
    FMTBCDField53: TFMTBCDField;
    FMTBCDField54: TFMTBCDField;
    FMTBCDField55: TFMTBCDField;
    FMTBCDField56: TFMTBCDField;
    FMTBCDField57: TFMTBCDField;
    FMTBCDField58: TFMTBCDField;
    FMTBCDField59: TFMTBCDField;
    FMTBCDField60: TFMTBCDField;
    FMTBCDField61: TFMTBCDField;
    FMTBCDField62: TFMTBCDField;
    FMTBCDField63: TFMTBCDField;
    FMTBCDField64: TFMTBCDField;
    FMTBCDField65: TFMTBCDField;
    CurrencyField37: TCurrencyField;
    StringField1: TStringField;
    StringField3: TStringField;
    dsPosDPInvest: TwwDataSource;
    dgPosDepInvest: TwwDBGrid;
    lbPosPagFut: TLabel;
    dgContasPagFut: TwwDBGrid;
    BUS_CD_M_CSU_GER_PGF: TClientDataSet;
    dsGerPgf: TwwDataSource;
    BUS_CD_M_CSU_GER_PGFtipo_reg: TWideMemoField;
    BUS_CD_M_CSU_GER_PGFid_empresa: TIntegerField;
    BUS_CD_M_CSU_GER_PGFemp_fantasia: TWideStringField;
    BUS_CD_M_CSU_GER_PGFid_forma_pag: TIntegerField;
    BUS_CD_M_CSU_GER_PGFint_nomefpg: TWideStringField;
    BUS_CD_M_CSU_GER_PGFvlr_saldo_vencido: TFMTBCDField;
    BUS_CD_M_CSU_GER_PGFvlr_saldo_hoje: TFMTBCDField;
    BUS_CD_M_CSU_GER_PGFPrimeiro_mes: TFMTBCDField;
    BUS_CD_M_CSU_GER_PGFSegundo_mes: TFMTBCDField;
    BUS_CD_M_CSU_GER_PGFTereceiro_mes: TFMTBCDField;
    BUS_CD_M_CSU_GER_PGFQuarto_mes: TFMTBCDField;
    BUS_CD_M_CSU_GER_PGFQuinto_mes: TFMTBCDField;
    BUS_CD_M_CSU_GER_PGFSexto_mes: TFMTBCDField;
    CSU_FR_M_GER_PF: TfrxReport;
    tsVeiculo: TTabSheet;
    Panel2: TPanel;
    wwDBGrid2: TwwDBGrid;
    BUS_CD_M_CSU_GER_ORV_MAR: TClientDataSet;
    dsGerOrvMar: TwwDataSource;
    BUS_CD_M_CSU_GER_ORV_MARid_empresa: TIntegerField;
    BUS_CD_M_CSU_GER_ORV_MARint_nomemp: TWideStringField;
    BUS_CD_M_CSU_GER_ORV_MARano: TFloatField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_total: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_total: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_01: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_01: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_02: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_02: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_03: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_03: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_04: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_04: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_05: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_05: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_06: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_06: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_07: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_07: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_08: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_08: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_09: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_09: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_10: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_10: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_11: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_11: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARqtde_mes_12: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARvalor_mes_12: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORV_MARid_mar: TIntegerField;
    BUS_CD_M_CSU_GER_ORV_MARint_nomemar: TWideStringField;
    Label1: TLabel;
    wwDBGrid3: TwwDBGrid;
    BUS_CD_M_CSU_GER_ORV: TClientDataSet;
    dsGerOrv: TwwDataSource;
    BUS_CD_M_CSU_GER_ORVid_empresa: TIntegerField;
    BUS_CD_M_CSU_GER_ORVint_nomemp: TWideStringField;
    BUS_CD_M_CSU_GER_ORVano: TFloatField;
    BUS_CD_M_CSU_GER_ORVqtde_total: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_total: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_01: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_01: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_02: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_02: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_03: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_03: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_04: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_04: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_05: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_05: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_06: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_06: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_07: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_07: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_08: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_08: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_09: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_09: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_10: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_10: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_11: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_11: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVqtde_mes_12: TFMTBCDField;
    BUS_CD_M_CSU_GER_ORVvalor_mes_12: TFMTBCDField;
    Label2: TLabel;
    chbVeiculo: TCheckBox;
    CSU_FR_M_GER_VEI: TfrxReport;
    BUS_DB_M_CSU_GER_VEI: TfrxDBDataset;
    BUS_DB_M_CSU_GER_VEI_MAR: TfrxDBDataset;
    procedure acSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure dgPosFaturamentoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cdsPosFTBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dgPosRecebimentoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgPosDespesasCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cdsPosREBeforeOpen(DataSet: TDataSet);
    procedure cdsPosDPBeforeOpen(DataSet: TDataSet);
    procedure dgFlxSldCxaBcoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cdsPosXCBBeforeOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure tbFluxoCxaShow(Sender: TObject);
    procedure dgEstoqueCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormResize(Sender: TObject);
    procedure jpgGerencialChange(Sender: TObject);
    procedure dgPosFaturamentoDrawTitleCell(Sender: TObject; Canvas: TCanvas;
      Field: TField; Rect: TRect; var DefaultDrawing: Boolean);
    procedure cdsPosFeBeforeOpen(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure cdsPosFFBeforeOpen(DataSet: TDataSet);
    procedure dgEstoqueFFCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgRentFornCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgPosDepInvestCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgContasPagFutCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure BUS_CD_M_CSU_GER_ORV_MARBeforeOpen(DataSet: TDataSet);
    procedure wwDBGrid3RowChanged(Sender: TObject);
    procedure BUS_CD_M_CSU_GER_ORVBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure BuscarDados;
    procedure BuscarPosFt(Empresas: String);
    procedure BuscarPosRentFor(Empresas: String);
    procedure BuscarPosRentVen(Empresas: String);
    procedure BuscarPosRe(Empresas: String);
    procedure BuscarPosPd(Empresas: String);
    procedure BuscarPosRc_Pg(Empresas: String);
    procedure BuscarPosFichaEst(Empresas: String);
    procedure BuscarPosFluxoCxa(Empresas: String);
    procedure BuscarPosFluxoXCB(Empresas: String);
    procedure BuscarTotalNotasVeiculo(Empresas: String);

  public
    { Public declarations }
    xMesFat: array[1..10,1..12] of Currency;
    xTotFlxCxaRc: array[1..50] of Currency;
    xTotFlxCxaPg: array[1..50] of Currency;

    xMesIni_PGF, xMesFim_GER_PGF  : Integer;
    xDataIni_GER_PGF, xDataFim_GER_PGF : TDate;
  end;

var
  CSU_FM_M_GER: TCSU_FM_M_GER;


implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes, enSoftMenu, DateUtils;

procedure TCSU_FM_M_GER.acSairExecute(Sender: TObject);
begin
  inherited;
  cdsPosFT.Close;
  Close;
end;

procedure TCSU_FM_M_GER.BitBtn1Click(Sender: TObject);
var
  i: integer;
  Dias: Array[1..15] of String;
  dia,mes,ano: word;
  Data: TDate;
  t: Integer;
begin
  inherited;
  dgFlxRecebimento.Columns[4].DisplayLabel := 'Hoje';
  dgFlxPagamentos.Columns[4].DisplayLabel := 'Hoje';

  data := now;
  t := 5;
  for i := 1 to 15 do
   begin
     Data    := Data + 1;
     DecodeDate(Data,ano,mes,dia);
     Dias[i] := inttostr(dia);
     dgFlxRecebimento.Columns[t].DisplayLabel := 'Dia ' + Dias[i];
     dgFlxPagamentos.Columns[t].DisplayLabel := 'Dia ' + Dias[i];
     inc(t);
   end;
end;

procedure TCSU_FM_M_GER.btnFiltroClick(Sender: TObject);
var
  i: integer;
  EmpSel: boolean;
begin
  inherited;

  if trim(txtAno.Text) = '' then
     begin
       ShowMessage('O campo "Ano" deve ser preenchido.');
       exit;
     end;

  EmpSel := false;

  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
             EmpSel := true;
           end;
      end;

  if not EmpSel then
     begin
       ShowMessage('Nenhuma empresa foi selecionada!');
       exit;
     end;
  Screen.Cursor := crHourGlass;
  try
    BuscarDados;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCSU_FM_M_GER.BuscarDados;
var
  i: integer;
  CondEmp: String;
begin
   CondEmp := ''''+'0'+'''';
   for i := 0 to chkEmpresa.Count - 1 do
      begin
        if CondEmp <> '' then
           begin
             if chkEmpresa.Checked[i] then
                begin
                   CondEmp :=
                   CondEmp + ',' +''''+ trim(copy(chkEmpresa.Items[i],1,2))+'''';
                end;
           end;
        if CondEmp = '' then
           begin
             if chkEmpresa.Checked[i] then
                begin
                  CondEmp :=
                  CondEmp +''''+trim(copy(chkEmpresa.Items[i],1,2))+'''';
                end;
           end;
      end;

  BuscarPosFt(CondEmp);

  BuscarPosRentFor(CondEmp);

  BuscarPosRentVen(CondEmp);

  BuscarPosRe(CondEmp);

  BuscarPosPd(CondEmp);

  BuscarPosRc_Pg(CondEmp);

  BuscarPosFichaEst(CondEmp);

  BuscarPosFluxoCxa(CondEmp);

  BuscarPosFluxoXCB(CondEmp);

  BuscarTotalNotasVeiculo(CondEmp);

  jpgGerencial.ActivePage := tbPosFin;
end;


procedure TCSU_FM_M_GER.BuscarPosFichaEst(Empresas: String);
var
  IdEmpresa,i: integer;
  NomeEmp: String;
  vlrTotal: Currency;
begin

  dmGeral.BUS_CD_M_CSU_GER_PFE.Close;
     dmGeral.BUS_CD_M_CSU_GER_PFE.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PFE.DataRequest(
                  VarArrayOf([Empresas]));

  if not cdsPosFe.IsEmpty then
     begin
       cdsPosFe.EmptyDataSet;
     end;

  dmGeral.BUS_CD_M_CSU_GER_PFF.Close;
     dmGeral.BUS_CD_M_CSU_GER_PFF.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PFF.DataRequest(
                  VarArrayOf([Empresas]));

   if not cdsPosFF.IsEmpty then
     begin
       cdsPosFF.EmptyDataSet;
     end;


  try

  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
              dmGeral.BUS_CD_M_CSU_GER_PFE.Filtered :=  true;
              dmGeral.BUS_CD_M_CSU_GER_PFE.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2));

              IdEmpresa   := 0;
              NomeEmp     := '';
              vlrTotal    := 0;

              if not dmGeral.BUS_CD_M_CSU_GER_PFE.IsEmpty then
                 begin
                   while not dmGeral.BUS_CD_M_CSU_GER_PFE.eof do
                      begin
                        cdsPosFe.Append;
                        cdsPosFe.FieldByName('tipo_reg').AsString      := 'A';
                        cdsPosFe.FieldByName('id_empresa').AsInteger   :=  dmGeral.BUS_CD_M_CSU_GER_PFE.FieldByName('id_empresa').AsInteger;
                        cdsPosFe.FieldByName('emp_fantasia').AsString  :=  dmGeral.BUS_CD_M_CSU_GER_PFE.FieldByName('emp_fantasia').AsString;
                        cdsPosFe.FieldByName('id_grupo').AsString     :=  dmGeral.BUS_CD_M_CSU_GER_PFE.FieldByName('id_grupo').AsString;
                        cdsPosFe.FieldByName('descricao').AsString     :=  dmGeral.BUS_CD_M_CSU_GER_PFE.FieldByName('descricao').AsString;
                        cdsPosFe.FieldByName('total_custo_medio').AsCurrency     :=  dmGeral.BUS_CD_M_CSU_GER_PFE.FieldByName('total_custo_medio').AsCurrency;
                        vlrTotal  := vlrTotal + cdsPosFe.FieldByName('total_custo_medio').AsCurrency;

                        IdEmpresa :=  dmGeral.BUS_CD_M_CSU_GER_PFE.FieldByName('id_empresa').AsInteger;
                        NomeEmp   :=  dmGeral.BUS_CD_M_CSU_GER_PFE.FieldByName('emp_fantasia').AsString;

                        dmGeral.BUS_CD_M_CSU_GER_PFE.Next;
                      end;

                   cdsPosFe.Append;
                   cdsPosFe.FieldByName('tipo_reg').AsString      := 'B';

                   cdsPosFe.Append;
                   cdsPosFe.FieldByName('tipo_reg').AsString      := 'C';

                   cdsPosFe.FieldByName('id_empresa').AsInteger   := IdEmpresa;
                   cdsPosFe.FieldByName('emp_fantasia').AsString  := NomeEmp;
                   cdsPosFe.FieldByName('descricao').AsString  := 'Total';
                   cdsPosFe.FieldByName('total_custo_medio').AsCurrency  :=  vlrTotal;

                   cdsPosFe.Append;
                   cdsPosFe.FieldByName('tipo_reg').AsString      := 'B';

                   dmGeral.BUS_CD_M_CSU_GER_PFE.Filtered :=  false;

                   cdsPosFe.First;
                 end;

              dmGeral.BUS_CD_M_CSU_GER_PFF.Filtered :=  true;
              dmGeral.BUS_CD_M_CSU_GER_PFF.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2));

              IdEmpresa   := 0;
              NomeEmp     := '';
              vlrTotal    := 0;

              if not dmGeral.BUS_CD_M_CSU_GER_PFF.IsEmpty then
                 begin
                   while not dmGeral.BUS_CD_M_CSU_GER_PFF.eof do
                      begin
                        cdsPosFF.Append;
                        cdsPosFF.FieldByName('tipo_reg').AsString      := 'A';
                        cdsPosFF.FieldByName('id_empresa').AsInteger   :=  dmGeral.BUS_CD_M_CSU_GER_PFF.FieldByName('id_empresa').AsInteger;
                        cdsPosFF.FieldByName('emp_fantasia').AsString  :=  dmGeral.BUS_CD_M_CSU_GER_PFF.FieldByName('emp_fantasia').AsString;
                        cdsPosFF.FieldByName('id_fornecedor').AsString     :=  dmGeral.BUS_CD_M_CSU_GER_PFF.FieldByName('id_fornecedor').AsString;
                        cdsPosFF.FieldByName('fantasia').AsString     :=  dmGeral.BUS_CD_M_CSU_GER_PFF.FieldByName('fantasia').AsString;
                        cdsPosFF.FieldByName('total_custo_medio').AsCurrency     :=  dmGeral.BUS_CD_M_CSU_GER_PFF.FieldByName('total_custo_medio').AsCurrency;
                        vlrTotal  := vlrTotal + cdsPosFF.FieldByName('total_custo_medio').AsCurrency;

                        IdEmpresa :=  dmGeral.BUS_CD_M_CSU_GER_PFF.FieldByName('id_empresa').AsInteger;
                        NomeEmp   :=  dmGeral.BUS_CD_M_CSU_GER_PFF.FieldByName('emp_fantasia').AsString;

                        dmGeral.BUS_CD_M_CSU_GER_PFF.Next;
                      end;

                   cdsPosFF.Append;
                   cdsPosFF.FieldByName('tipo_reg').AsString      := 'B';

                   cdsPosFF.Append;
                   cdsPosFF.FieldByName('tipo_reg').AsString      := 'C';

                   cdsPosFF.FieldByName('id_empresa').AsInteger   := IdEmpresa;
                   cdsPosFF.FieldByName('emp_fantasia').AsString  := NomeEmp;
                   cdsPosFF.FieldByName('fantasia').AsString      := 'Total';
                   cdsPosFF.FieldByName('total_custo_medio').AsCurrency  :=  vlrTotal;

                   cdsPosFF.Append;
                   cdsPosFF.FieldByName('tipo_reg').AsString      := 'B';

                   dmGeral.BUS_CD_M_CSU_GER_PFF.Filtered :=  false;

                   cdsPosFF.First;
                 end;
           end;
      end;
  finally
      dmGeral.BUS_CD_M_CSU_GER_PFE.Filtered :=  false;
      dmGeral.BUS_CD_M_CSU_GER_PFF.Filtered :=  false;
  end;

end;

procedure TCSU_FM_M_GER.BuscarPosFluxoCxa(Empresas: String);
var
  IdEmpresa,i: integer;
begin

  for i := 1 to 50 do
      begin
        xTotFlxCxaRc[i] := 0;
        xTotFlxCxaPg[i] := 0;
      end;

  dmGeral.BUS_CD_M_CSU_GER_XRC.Close;
     dmGeral.BUS_CD_M_CSU_GER_XRC.Data :=
          dmGeral.BUS_CD_M_CSU_GER_XRC.DataRequest(
                  VarArrayOf([Empresas]));

  if not dmGeral.BUS_CD_M_CSU_GER_XRC.IsEmpty then
     begin
       for i := 0 to chkEmpresa.Count - 1 do
          begin
             if chkEmpresa.Checked[i] then
                begin
                  try
                    dmGeral.BUS_CD_M_CSU_GER_XRC.Filtered :=  true;
                    dmGeral.BUS_CD_M_CSU_GER_XRC.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2));
                    while not dmGeral.BUS_CD_M_CSU_GER_XRC.eof do
                       begin
                          IdEmpresa := dmGeral.BUS_CD_M_CSU_GER_XRC.FieldByName('id_empresa').AsInteger;
                          xTotFlxCxaRc[IdEmpresa] := xTotFlxCxaRc[IdEmpresa] +
                                                     dmGeral.BUS_CD_M_CSU_GER_XRC.FieldByName('01').AsCurrency;
                          dmGeral.BUS_CD_M_CSU_GER_XRC.Next;
                       end;

                  finally
                    dmGeral.BUS_CD_M_CSU_GER_XRC.Filtered :=  false;
                  end;
                end;
          end;
     end;


  dmGeral.BUS_CD_M_CSU_GER_XPG.Close;
     dmGeral.BUS_CD_M_CSU_GER_XPG.Data :=
          dmGeral.BUS_CD_M_CSU_GER_XPG.DataRequest(
                  VarArrayOf([Empresas]));

  if not dmGeral.BUS_CD_M_CSU_GER_XPG.IsEmpty then
     begin
       for i := 0 to chkEmpresa.Count - 1 do
          begin
             if chkEmpresa.Checked[i] then
                begin
                  try
                    dmGeral.BUS_CD_M_CSU_GER_XPG.Filtered :=  true;
                    dmGeral.BUS_CD_M_CSU_GER_XPG.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2));
                    while not dmGeral.BUS_CD_M_CSU_GER_XPG.eof do
                       begin
                          IdEmpresa := dmGeral.BUS_CD_M_CSU_GER_XPG.FieldByName('id_empresa').AsInteger;
                          xTotFlxCxaPg[IdEmpresa] := xTotFlxCxaPg[IdEmpresa] +
                                                     dmGeral.BUS_CD_M_CSU_GER_XPG.FieldByName('01').AsCurrency;
                          dmGeral.BUS_CD_M_CSU_GER_XPG.Next;
                       end;

                  finally
                    dmGeral.BUS_CD_M_CSU_GER_XPG.Filtered :=  false;
                  end;
                end;
          end;
     end;


{  dmGeral.BUS_CD_M_CSU_GER_XCB.Close;
     dmGeral.BUS_CD_M_CSU_GER_XCB.Data :=
          dmGeral.BUS_CD_M_CSU_GER_XCB.DataRequest(
                  VarArrayOf([Empresas]));}



end;



procedure TCSU_FM_M_GER.BuscarTotalNotasVeiculo(Empresas: String);
begin

  BUS_CD_M_CSU_GER_ORV_MAR.Close;
  BUS_CD_M_CSU_GER_ORV.Close;
  BUS_CD_M_CSU_GER_ORV.Data :=
  BUS_CD_M_CSU_GER_ORV.DataRequest(
                  VarArrayOf([Empresas]));

end;

procedure TCSU_FM_M_GER.BUS_CD_M_CSU_GER_ORVBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  BUS_CD_M_CSU_GER_ORVvalor_total.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_01.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_02.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_03.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_04.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_05.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_06.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_07.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_08.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_09.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_10.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_11.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORVvalor_mes_12.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER.BUS_CD_M_CSU_GER_ORV_MARBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  BUS_CD_M_CSU_GER_ORV_MARvalor_total.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_01.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_02.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_03.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_04.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_05.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_06.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_07.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_08.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_09.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_10.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_11.DisplayFormat := CMascaraValor;
  BUS_CD_M_CSU_GER_ORV_MARvalor_mes_12.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER.BuscarPosFluxoXCB(Empresas: String);
var
  i: integer;
  IdEmpresa: Integer;
  vlrTotalSaldo, vlrTotalSaldoDisp: Currency;
  vlrDispon,vlrDisponDisp: Currency;
  NomeEmp: String;

begin
  dmGeral.BUS_CD_M_CSU_GER_XCB.Close;
     dmGeral.BUS_CD_M_CSU_GER_XCB.Data :=
          dmGeral.BUS_CD_M_CSU_GER_XCB.DataRequest(
                  VarArrayOf([Empresas]));

 if not cdsPosXCB.IsEmpty then
     begin
       cdsPosXCB.EmptyDataSet;
     end;

  try

  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
              dmGeral.BUS_CD_M_CSU_GER_XCB.Filtered :=  true;
              dmGeral.BUS_CD_M_CSU_GER_XCB.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2));

              IdEmpresa          := 0;
              vlrTotalSaldo      := 0;
              vlrTotalSaldoDisp  := 0;
              NomeEmp  := '';
              vlrDispon := 0;
              vlrDisponDisp := 0;

              if not dmGeral.BUS_CD_M_CSU_GER_XCB.IsEmpty then
                 begin
                   while not dmGeral.BUS_CD_M_CSU_GER_XCB.eof do
                      begin
                        cdsPosXCB.Append;
                        cdsPosXCB.FieldByName('tipo_reg').AsString      := 'A';
                        cdsPosXCB.FieldByName('id_empresa').AsInteger         :=  dmGeral.BUS_CD_M_CSU_GER_XCB.FieldByName('id_empresa').AsInteger;
                        cdsPosXCB.FieldByName('emp_fantasia').AsString        :=  dmGeral.BUS_CD_M_CSU_GER_XCB.FieldByName('emp_fantasia').AsString;
                        cdsPosXCB.FieldByName('id_conta').AsInteger           :=  dmGeral.BUS_CD_M_CSU_GER_XCB.FieldByName('id_conta').AsInteger;
                        cdsPosXCB.FieldByName('tipo').AsInteger               :=  dmGeral.BUS_CD_M_CSU_GER_XCB.FieldByName('tipo').AsInteger;
                        cdsPosXCB.FieldByName('descricao').AsString           :=  dmGeral.BUS_CD_M_CSU_GER_XCB.FieldByName('descricao').AsString;
                        cdsPosXCB.FieldByName('saldo').AsCurrency             :=  dmGeral.BUS_CD_M_CSU_GER_XCB.FieldByName('saldo').AsCurrency;
                        cdsPosXCB.FieldByName('saldo_disponivel').AsCurrency  :=  dmGeral.BUS_CD_M_CSU_GER_XCB.FieldByName('saldo_disponivel').AsCurrency;

                        vlrTotalSaldo     := vlrTotalSaldo      +  cdsPosXCB.FieldByName('saldo').AsCurrency;
                        vlrTotalSaldoDisp := vlrTotalSaldoDisp  +  cdsPosXCB.FieldByName('saldo_disponivel').AsCurrency;

                        if cdsPosXCB.FieldByName('tipo').AsInteger = 0 then //  Caixa
                           begin
                             vlrDispon      := vlrDispon + cdsPosXCB.FieldByName('saldo').AsCurrency;
                             vlrDisponDisp  := vlrDisponDisp + cdsPosXCB.FieldByName('saldo_disponivel').AsCurrency;;
                           end;



                        IdEmpresa :=  dmGeral.BUS_CD_M_CSU_GER_XCB.FieldByName('id_empresa').AsInteger;
                        NomeEmp   :=  dmGeral.BUS_CD_M_CSU_GER_XCB.FieldByName('emp_fantasia').AsString;



                        dmGeral.BUS_CD_M_CSU_GER_XCB.Next;
                      end;

                   cdsPosXCB.Append;
                   cdsPosXCB.FieldByName('tipo_reg').AsString           := 'B';

                   cdsPosXCB.Append;
                   cdsPosXCB.FieldByName('tipo_reg').AsString           := 'C';

                   cdsPosXCB.FieldByName('id_empresa').AsInteger        := IdEmpresa;
                   cdsPosXCB.FieldByName('emp_fantasia').AsString       := NomeEmp;
                   cdsPosXCB.FieldByName('descricao').AsString          := 'Total';
                   cdsPosXCB.FieldByName('saldo').AsCurrency            := vlrTotalSaldo;
                   cdsPosXCB.FieldByName('saldo_disponivel').AsCurrency := vlrTotalSaldoDisp;

                   cdsPosXCB.Append;
                   cdsPosXCB.FieldByName('tipo_reg').AsString           := 'D';

                   cdsPosXCB.FieldByName('id_empresa').AsInteger        := IdEmpresa;
                   cdsPosXCB.FieldByName('emp_fantasia').AsString       := NomeEmp;
                   cdsPosXCB.FieldByName('descricao').AsString          := 'Disponibilidade';
                   cdsPosXCB.FieldByName('saldo').AsCurrency            := (vlrDispon + xTotFlxCxaRc[IdEmpresa]) -
                                                                            xTotFlxCxaPg[IdEmpresa];
                   cdsPosXCB.FieldByName('saldo_disponivel').AsCurrency := (vlrDisponDisp + xTotFlxCxaRc[IdEmpresa]) -
                                                                            xTotFlxCxaPg[IdEmpresa];
                   cdsPosXCB.Append;
                   cdsPosXCB.FieldByName('tipo_reg').AsString           := 'C';


                   dmGeral.BUS_CD_M_CSU_GER_XCB.Filtered                :=  false;

                   cdsPosXCB.First;
                 end;
           end;
      end;
  finally
      dmGeral.BUS_CD_M_CSU_GER_XCB.Filtered :=  false;
  end;

end;

procedure TCSU_FM_M_GER.BuscarPosFt(Empresas: String);
var
  IdEmpresa: integer;
  IdGrupo: String;
  vTotalEmpAtual,vTotalEmpAnterior, vTotGrupoAnoAtual,  vTotGrupoAnoAnterior: Currency;
  cdsPFT_AnoAnt, cdsPFT_EmpAnoAnt: TClientDataSet;
  z,i: integer;
begin
  cdsPFT_AnoAnt    := TClientDataSet.Create(nil);
  cdsPFT_EmpAnoAnt := TClientDataSet.Create(nil);


  dmGeral.BUS_CD_M_CSU_GER_PFT.Close;
     dmGeral.BUS_CD_M_CSU_GER_PFT.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PFT.DataRequest(
                  VarArrayOf([Empresas,txtAno.Text,strtoint(txtAno.Text)-1]));

  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Close;
     dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.DataRequest(
                  VarArrayOf([Empresas,txtAno.Text,strtoint(txtAno.Text)-1]));

  if not cdsPosFT.IsEmpty then
     begin
       cdsPosFT.EmptyDataSet;
     end;

  for z := 1 to 10 do
      begin
        for i := 1 to 12 do
            begin
              xMesFat[z][i] := 0;
            end;
      end;


  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
              cdsPFT_AnoAnt.data  := dmGeral.BUS_CD_M_CSU_GER_PFT.data;

              dmGeral.BUS_CD_M_CSU_GER_PFT.Filtered :=  true;
              dmGeral.BUS_CD_M_CSU_GER_PFT.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2)) +
                                                        ' and ano =  ' + txtAno.Text;
              cdsPFT_AnoAnt.Filtered := true;
              cdsPFT_AnoAnt.Filter   := ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2)) +
                                        ' and ano =  ' + inttostr(strtoint(txtAno.Text) - 1);
              IdEmpresa := 0;
              IdGrupo   := '';

              if not dmGeral.BUS_CD_M_CSU_GER_PFT.IsEmpty then
                 begin
                   while not dmGeral.BUS_CD_M_CSU_GER_PFT.eof do
                      begin
                        if IdGrupo <> dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('id_grupo').AsString then
                           begin
                             if IdGrupo <> '' then
                                begin
                                  cdsPosFT.FieldByName('total_grupo_ano_atual').AsCurrency    := vTotGrupoAnoAtual;
                                  cdsPosFT.FieldByName('total_grupo_ano_anterior').AsCurrency := vTotGrupoAnoAnterior;
                                  cdsPosFT.FieldByName('perc_grupo_ano_anterior').AsCurrency  := 0;
                                  if vTotGrupoAnoAnterior > 0 then
                                     begin
                                       cdsPosFT.FieldByName('perc_grupo_ano_anterior').AsCurrency := ((vTotGrupoAnoAtual - vTotGrupoAnoAnterior) * 100)
                                                                                              / vTotGrupoAnoAnterior;
                                     end;
                                  vTotalEmpAtual := 0;

                                  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filtered := true;
                                  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filter := ' id_empresa = ' + dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('id_empresa').AsString +
                                                                             ' and ano =  '   + inttostr(strtoint(txtAno.Text));
                                  if not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.IsEmpty then
                                     begin
                                       vTotalEmpAtual := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Fieldbyname('total_emp').AsCurrency;
                                     end;

                                  cdsPosFT.FieldByName('perc_grupo_ano_atual').AsCurrency := (vTotGrupoAnoAtual * 100) / vTotalEmpAtual;

                                end;

                             cdsPosFT.Append;
                             cdsPosFT.FieldByName('tipo_reg').AsString                   := 'A';
                             cdsPosFT.FieldByName('total_grupo_ano_anterior').AsCurrency := 0;
                             cdsPosFT.FieldByName('total_grupo_ano_atual').AsCurrency    := 0;
                             cdsPosFT.FieldByName('perc_grupo_ano_anterior').AsCurrency  := 0;
                             cdsPosFT.FieldByName('perc_grupo_ano_atual').AsCurrency     := 0;
                             cdsPosFT.FieldByName('mes_jan').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_fev').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_mar').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_abr').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_mai').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_jun').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_jul').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_ago').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_set').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_out').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_nov').AsCurrency := 0;
                             cdsPosFT.FieldByName('mes_dez').AsCurrency := 0;
                             cdsPosFT.FieldByName('rent_med_jan').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_fev').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_mar').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_abr').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_mai').AsCurrency := 0;
                             cdsPosFT.FieldByName('rent_med_jun').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_jul').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_ago').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_set').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_out').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_nov').AsCurrency  := 0;
                             cdsPosFT.FieldByName('rent_med_dez').AsCurrency  := 0;
                             vTotGrupoAnoAtual    := 0;
                             vTotGrupoAnoAnterior := 0;

                             cdsPosFT.FieldByName('id_empresa').AsInteger  := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('id_empresa').AsInteger;
                             IdEmpresa := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('id_empresa').AsInteger;
                             cdsPosFT.FieldByName('emp_fantasia').AsString := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('emp_fantasia').AsString;
                             IdGrupo                                       := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('id_grupo').AsString;
                             cdsPosFT.FieldByName('id_grupo').AsString     := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('id_grupo').AsString;
                             cdsPosFT.FieldByName('descricao').AsString    := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('descricao').AsString;

                             cdsPFT_AnoAnt.Filtered := true;
                             cdsPFT_AnoAnt.Filter   := ' ano =  ' + inttostr(strtoint(txtAno.Text) - 1) +
                                                       ' and id_empresa = ' +  dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('id_empresa').AsString +
                                                       ' and id_grupo   = ''' +  VarToStr(dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('id_grupo').AsString) + '''';

                             if not cdsPFT_AnoAnt.IsEmpty then
                                while not cdsPFT_AnoAnt.eof do
                                      begin
                                        vTotGrupoAnoAnterior := vTotGrupoAnoAnterior  + cdsPFT_AnoAnt.FieldByName('total_mes').AsCurrency;
                                        cdsPFT_AnoAnt.Next;
                                      end;
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 1 then
                           begin
                             cdsPosFT.FieldByName('mes_jan').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                             vTotGrupoAnoAtual    := vTotGrupoAnoAtual  + cdsPosFT.FieldByName('mes_jan').AsCurrency;
                             xMesFat[IdEmpresa][1] := xMesFat[IdEmpresa][1] + cdsPosFT.FieldByName('mes_jan').AsCurrency;

                             cdsPosFT.FieldByName('rent_med_jan').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_jan').AsCurrency) ),-2);
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 2 then
                           begin
                             cdsPosFT.FieldByName('mes_fev').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                             vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_fev').AsCurrency;
                             xMesFat[IdEmpresa][2] := xMesFat[IdEmpresa][2] + cdsPosFT.FieldByName('mes_fev').AsCurrency;

                             cdsPosFT.FieldByName('rent_med_fev').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_fev').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 3 then
                           begin
                              cdsPosFT.FieldByName('mes_mar').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                              vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_mar').AsCurrency;
                              xMesFat[IdEmpresa][3] := xMesFat[IdEmpresa][3] + cdsPosFT.FieldByName('mes_mar').AsCurrency;

                              cdsPosFT.FieldByName('rent_med_mar').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_mar').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 4 then
                           begin
                             cdsPosFT.FieldByName('mes_abr').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                              vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_abr').AsCurrency;
                              xMesFat[IdEmpresa][4] := xMesFat[IdEmpresa][4] + cdsPosFT.FieldByName('mes_abr').AsCurrency;

                              cdsPosFT.FieldByName('rent_med_abr').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_abr').AsCurrency) ),-2);
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 5 then
                           begin
                             cdsPosFT.FieldByName('mes_mai').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                              vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_mai').AsCurrency;
                              xMesFat[IdEmpresa][5] := xMesFat[IdEmpresa][5] + cdsPosFT.FieldByName('mes_mai').AsCurrency;

                             cdsPosFT.FieldByName('rent_med_mai').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_mai').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 6 then
                           begin
                             cdsPosFT.FieldByName('mes_jun').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                              vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_jun').AsCurrency;
                              xMesFat[IdEmpresa][6] := xMesFat[IdEmpresa][6] + cdsPosFT.FieldByName('mes_jun').AsCurrency;

                              cdsPosFT.FieldByName('rent_med_jun').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_jun').AsCurrency) ),-2);
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 7 then
                           begin
                             cdsPosFT.FieldByName('mes_jul').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                             vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_jul').AsCurrency;
                             xMesFat[IdEmpresa][7] := xMesFat[IdEmpresa][7] + cdsPosFT.FieldByName('mes_jul').AsCurrency;

                             cdsPosFT.FieldByName('rent_med_jul').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_jul').AsCurrency) ),-2);
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 8 then
                           begin
                             cdsPosFT.FieldByName('mes_ago').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                             vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_ago').AsCurrency;
                             xMesFat[IdEmpresa][8] := xMesFat[IdEmpresa][8] + cdsPosFT.FieldByName('mes_ago').AsCurrency;

                             cdsPosFT.FieldByName('rent_med_ago').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_ago').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 9 then
                           begin
                             cdsPosFT.FieldByName('mes_set').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                             vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_set').AsCurrency;
                             xMesFat[IdEmpresa][9] := xMesFat[IdEmpresa][9] + cdsPosFT.FieldByName('mes_set').AsCurrency;

                             cdsPosFT.FieldByName('rent_med_set').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_set').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 10 then
                           begin
                             cdsPosFT.FieldByName('mes_out').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                             vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_out').AsCurrency;
                             xMesFat[IdEmpresa][10] := xMesFat[IdEmpresa][10] + cdsPosFT.FieldByName('mes_out').AsCurrency;

                             cdsPosFT.FieldByName('rent_med_out').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_out').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 11 then
                           begin
                             cdsPosFT.FieldByName('mes_nov').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                             vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_nov').AsCurrency;
                             xMesFat[IdEmpresa][11] := xMesFat[IdEmpresa][11] + cdsPosFT.FieldByName('mes_nov').AsCurrency;

                             cdsPosFT.FieldByName('rent_med_nov').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_nov').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('mes').AsInteger = 12 then
                           begin
                             cdsPosFT.FieldByName('mes_dez').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes').AsCurrency;
                             vTotGrupoAnoAtual    := vTotGrupoAnoAtual + cdsPosFT.FieldByName('mes_dez').AsCurrency;
                             xMesFat[IdEmpresa][12] := xMesFat[IdEmpresa][12] + cdsPosFT.FieldByName('mes_dez').AsCurrency;

                             cdsPosFT.FieldByName('rent_med_dez').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsPosFT.FieldByName('mes_dez').AsCurrency) ),-2);
                           end;

                        dmGeral.BUS_CD_M_CSU_GER_PFT.Next;
                      end;

                      cdsPosFT.FieldByName('total_grupo_ano_atual').AsCurrency    := vTotGrupoAnoAtual;
                      cdsPosFT.FieldByName('total_grupo_ano_anterior').AsCurrency := vTotGrupoAnoAnterior;
                      cdsPosFT.FieldByName('perc_grupo_ano_anterior').AsCurrency  := 0;
                      if vTotGrupoAnoAnterior > 0 then
                         begin
                           cdsPosFT.FieldByName('perc_grupo_ano_anterior').AsCurrency := ((vTotGrupoAnoAtual - vTotGrupoAnoAnterior) * 100)
                                                                                  / vTotGrupoAnoAnterior;
                         end;
                      vTotalEmpAtual := 0;

                      dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filtered := true;
                      dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filter := ' id_empresa = ' + dmGeral.BUS_CD_M_CSU_GER_PFT.FieldByName('id_empresa').AsString +
                                                                 ' and ano =  '   + inttostr(strtoint(txtAno.Text));
                      if not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.IsEmpty then
                         begin
                           vTotalEmpAtual := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Fieldbyname('total_emp').AsCurrency;
                         end;

                      cdsPosFT.FieldByName('perc_grupo_ano_atual').AsCurrency := (vTotGrupoAnoAtual * 100) / vTotalEmpAtual;


                   if not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.IsEmpty then
                      begin
                        cdsPosFT.Append;  // Espaço em branco;
                        cdsPosFT.FieldByName('tipo_reg').AsString := 'B';

                        cdsPFT_EmpAnoAnt.Data := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Data;
                        //while not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.eof do
                        //   begin
                             if dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Locate('id_empresa',IdEmpresa,[]) then
                                begin
                                  cdsPosFT.Append;
                                  cdsPosFT.FieldByName('tipo_reg').AsString := 'C';
                                  cdsPosFT.FieldByName('id_empresa').AsInteger  := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('id_empresa').AsInteger;
                                  cdsPosFT.FieldByName('emp_fantasia').AsString := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('emp_fantasia').AsString;
                                  cdsPosFT.FieldByName('descricao').AsString   := 'Total ';

                                  cdsPosFT.FieldByName('total_grupo_ano_atual').AsCurrency    := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('total_emp').AsCurrency;

                                  cdsPosFT.FieldByName('total_grupo_ano_anterior').AsCurrency :=  0;

                                  cdsPFT_EmpAnoAnt.Filtered := true;
                                  cdsPFT_EmpAnoAnt.Filter := ' id_empresa = ' + cdsPosFT.FieldByName('id_empresa').AsString +
                                                             ' and ano =  ' + inttostr(strtoint(txtAno.Text) - 1);

                                  if not cdsPFT_EmpAnoAnt.IsEmpty then
                                     begin
                                       cdsPosFT.FieldByName('total_grupo_ano_anterior').AsCurrency :=
                                                 cdsPFT_EmpAnoAnt.FieldByName('total_emp').AsCurrency;
                                     end;

                                  cdsPosFT.FieldByName('mes_jan').AsCurrency := xMesFat[IdEmpresa][1];
                                  cdsPosFT.FieldByName('mes_fev').AsCurrency := xMesFat[IdEmpresa][2];
                                  cdsPosFT.FieldByName('mes_mar').AsCurrency := xMesFat[IdEmpresa][3];
                                  cdsPosFT.FieldByName('mes_abr').AsCurrency := xMesFat[IdEmpresa][4];
                                  cdsPosFT.FieldByName('mes_mai').AsCurrency := xMesFat[IdEmpresa][5];
                                  cdsPosFT.FieldByName('mes_jun').AsCurrency := xMesFat[IdEmpresa][6];
                                  cdsPosFT.FieldByName('mes_jul').AsCurrency := xMesFat[IdEmpresa][7];
                                  cdsPosFT.FieldByName('mes_ago').AsCurrency := xMesFat[IdEmpresa][8];
                                  cdsPosFT.FieldByName('mes_set').AsCurrency := xMesFat[IdEmpresa][9];
                                  cdsPosFT.FieldByName('mes_out').AsCurrency := xMesFat[IdEmpresa][10];
                                  cdsPosFT.FieldByName('mes_nov').AsCurrency := xMesFat[IdEmpresa][11];
                                  cdsPosFT.FieldByName('mes_dez').AsCurrency := xMesFat[IdEmpresa][12];

                                  //dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Next;
                                end;
                        cdsPosFT.Append;  // Espaço em branco;
                        cdsPosFT.FieldByName('tipo_reg').AsString := 'B';
                           //end;
                      end;

                   dmGeral.BUS_CD_M_CSU_GER_PFT.Filtered := false;
                   //IdEmpresa         := 0;
                   vTotalEmpAnterior := 0;
                 end;
           end;
        cdsPosFT.First;
      end;
end;

procedure TCSU_FM_M_GER.BuscarPosPd(Empresas: String);
var
  i: integer;
  IdEmpresa: integer;
  NomeEmp: String;
  vlrTotalAnt, vlrTotal: Currency;
  TotMesJan,TotMesFev,TotMesMar,TotMesAbr,TotMesMai,TotMesJun,TotMesJul,
  TotMesAgo,TotMesSet,TotMesOut,TotMesNov,TotMesDez: Currency;
begin

  // Posição de Despesas

  dmGeral.BUS_CD_M_CSU_GER_PDE.Close;
     dmGeral.BUS_CD_M_CSU_GER_PDE.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PDE.DataRequest(
                  VarArrayOf([Empresas,txtAno.Text,strtoint(txtAno.Text)-1,1]));

  if not cdsPosDP.IsEmpty then
     begin
       cdsPosDP.EmptyDataSet;
     end;


  try

  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
              dmGeral.BUS_CD_M_CSU_GER_PDE.Filtered :=  true;
              dmGeral.BUS_CD_M_CSU_GER_PDE.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2)) +
                                                        ' and ano =  ' + txtAno.Text;
              IdEmpresa := 0;

              if not dmGeral.BUS_CD_M_CSU_GER_PDE.IsEmpty then
                 begin
                    TotMesJan := 0;
                    TotMesFev := 0;
                    TotMesMar := 0;
                    TotMesAbr := 0;
                    TotMesMai := 0;
                    TotMesJun := 0;
                    TotMesJul := 0;
                    TotMesAgo := 0;
                    TotMesSet := 0;
                    TotMesOut := 0;
                    TotMesNov := 0;
                    TotMesDez := 0;
                    IdEmpresa := 0;

                   vlrTotalAnt := 0;
                   while not dmGeral.BUS_CD_M_CSU_GER_PDE.eof do
                      begin

                        cdsPosDP.Append;
                        cdsPosDP.FieldByName('tipo_reg').AsString       := 'A';
                        cdsPosDP.FieldByName('id_empresa').AsInteger    := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('id_empresa').AsInteger;
                        cdsPosDP.FieldByName('emp_fantasia').AsString   := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('emp_fantasia').AsString;
                        cdsPosDP.FieldByName('ano').AsInteger           := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('ano').AsInteger;
                        cdsPosDP.FieldByName('id_plano').AsString       := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('id_plano').AsString;
                        cdsPosDP.FieldByName('descricao').AsString      := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('descricao').AsString;
                        cdsPosDP.FieldByName('ano_anterior').AsCurrency      := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('ano_anterior').AsCurrency;
                        cdsPosDP.FieldByName('ano_atual').AsCurrency         := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('ano_atual').AsCurrency;
                        cdsPosDP.FieldByName('perc_ano_anterior').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('perc_ano_anterior').AsCurrency;
                        cdsPosDP.FieldByName('perc_ano_atual').AsCurrency    := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('perc_ano_atual').AsCurrency;
                        cdsPosDP.FieldByName('perc_faturamento').AsCurrency  := 0;
                        if dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Locate('id_empresa',cdsPosDP.FieldByName('id_empresa').AsInteger,[]) then
                           begin
                             cdsPosDP.FieldByName('perc_faturamento').AsCurrency  :=
                                      RoundTo( (cdsPosDP.FieldByName('ano_atual').AsCurrency * 100) /
                                                dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('total_emp').AsCurrency,-4);
                           end;
                        cdsPosDP.FieldByName('total_geral').AsCurrency       := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('total_geral').AsCurrency;
                        cdsPosDP.FieldByName('mes_jan').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_jan').AsCurrency;
                        TotMesJan := TotMesJan + cdsPosDP.FieldByName('mes_jan').AsCurrency;
                        cdsPosDP.FieldByName('mes_fev').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_fev').AsCurrency;
                        TotMesFev := TotMesFev + cdsPosDP.FieldByName('mes_fev').AsCurrency;
                        cdsPosDP.FieldByName('mes_mar').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_mar').AsCurrency;
                        TotMesMar := TotMesMar + cdsPosDP.FieldByName('mes_mar').AsCurrency;
                        cdsPosDP.FieldByName('mes_abr').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_abr').AsCurrency;
                        TotMesAbr := TotMesAbr + cdsPosDP.FieldByName('mes_abr').AsCurrency;
                        cdsPosDP.FieldByName('mes_mai').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_mai').AsCurrency;
                        TotMesMai := TotMesMai + cdsPosDP.FieldByName('mes_mai').AsCurrency;
                        cdsPosDP.FieldByName('mes_jun').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_jun').AsCurrency;
                        TotMesJun := TotMesJun + cdsPosDP.FieldByName('mes_jun').AsCurrency;
                        cdsPosDP.FieldByName('mes_jul').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_jul').AsCurrency;
                        TotMesJul := TotMesJul + cdsPosDP.FieldByName('mes_jul').AsCurrency;
                        cdsPosDP.FieldByName('mes_ago').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_ago').AsCurrency;
                        TotMesAgo := TotMesAgo + cdsPosDP.FieldByName('mes_ago').AsCurrency;
                        cdsPosDP.FieldByName('mes_set').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_set').AsCurrency;
                        TotMesSet := TotMesSet + cdsPosDP.FieldByName('mes_set').AsCurrency;
                        cdsPosDP.FieldByName('mes_out').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_out').AsCurrency;
                        TotMesOut := TotMesOut + cdsPosDP.FieldByName('mes_out').AsCurrency;
                        cdsPosDP.FieldByName('mes_nov').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_nov').AsCurrency;
                        TotMesNov := TotMesNov + cdsPosDP.FieldByName('mes_nov').AsCurrency;
                        cdsPosDP.FieldByName('mes_dez').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_dez').AsCurrency;
                        TotMesDez := TotMesDez + cdsPosDP.FieldByName('mes_dez').AsCurrency;

                        IdEmpresa   :=  dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('id_empresa').AsInteger;
                        NomeEmp     :=  dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('emp_fantasia').AsString;
                        vlrTotal    :=  dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('total_geral').AsCurrency;
                        vlrTotalAnt :=  vlrTotalAnt  +  dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('ano_anterior').AsCurrency;

                        dmGeral.BUS_CD_M_CSU_GER_PDE.Next;
                      end;

                   cdsPosDP.Append;
                   cdsPosDP.FieldByName('tipo_reg').AsString       := 'B';

                   cdsPosDP.Append;
                   cdsPosDP.FieldByName('tipo_reg').AsString       := 'C';

                   cdsPosDP.FieldByName('id_empresa').AsInteger    := IdEmpresa;
                   cdsPosDP.FieldByName('emp_fantasia').AsString   := NomeEmp;
                   cdsPosDP.FieldByName('id_plano').AsString       := 'Total';
                   cdsPosDP.FieldByName('ano_anterior').AsCurrency := vlrTotalAnt;
                   cdsPosDP.FieldByName('ano_atual').AsCurrency    := vlrTotal;

                   cdsPosDP.FieldByName('mes_jan').AsCurrency := TotMesJan;
                   cdsPosDP.FieldByName('mes_fev').AsCurrency := TotMesFev;
                   cdsPosDP.FieldByName('mes_mar').AsCurrency := TotMesMar;
                   cdsPosDP.FieldByName('mes_abr').AsCurrency := TotMesAbr;
                   cdsPosDP.FieldByName('mes_mai').AsCurrency := TotMesMai;
                   cdsPosDP.FieldByName('mes_jun').AsCurrency := TotMesJun;
                   cdsPosDP.FieldByName('mes_jul').AsCurrency := TotMesJul;
                   cdsPosDP.FieldByName('mes_ago').AsCurrency := TotMesAgo;
                   cdsPosDP.FieldByName('mes_set').AsCurrency := TotMesSet;
                   cdsPosDP.FieldByName('mes_out').AsCurrency := TotMesOut;
                   cdsPosDP.FieldByName('mes_nov').AsCurrency := TotMesNov;
                   cdsPosDP.FieldByName('mes_dez').AsCurrency := TotMesDez;

                   cdsPosDP.Append;
                   cdsPosDP.FieldByName('tipo_reg').AsString      := 'B';

                   vlrTotalAnt := 0;

                   cdsPosDP.First;

                   dmGeral.BUS_CD_M_CSU_GER_PDE.Filtered :=  false;
                 end;
           end;
      end;
  finally
     dmGeral.BUS_CD_M_CSU_GER_PDE.Filtered :=  false;
  end;



  // Posição de Investimentos

  dmGeral.BUS_CD_M_CSU_GER_PDE.Close;
     dmGeral.BUS_CD_M_CSU_GER_PDE.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PDE.DataRequest(
                  VarArrayOf([Empresas,txtAno.Text,strtoint(txtAno.Text)-1,2]));

  if not cdsPosDPInvest.IsEmpty then
     begin
       cdsPosDPInvest.EmptyDataSet;
     end;


  try

  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
              dmGeral.BUS_CD_M_CSU_GER_PDE.Filtered :=  true;
              dmGeral.BUS_CD_M_CSU_GER_PDE.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2)) +
                                                        ' and ano =  ' + txtAno.Text;
              IdEmpresa := 0;

              if not dmGeral.BUS_CD_M_CSU_GER_PDE.IsEmpty then
                 begin
                    TotMesJan := 0;
                    TotMesFev := 0;
                    TotMesMar := 0;
                    TotMesAbr := 0;
                    TotMesMai := 0;
                    TotMesJun := 0;
                    TotMesJul := 0;
                    TotMesAgo := 0;
                    TotMesSet := 0;
                    TotMesOut := 0;
                    TotMesNov := 0;
                    TotMesDez := 0;
                    IdEmpresa := 0;

                   vlrTotalAnt := 0;
                   while not dmGeral.BUS_CD_M_CSU_GER_PDE.eof do
                      begin

                        cdsPosDPInvest.Append;
                        cdsPosDPInvest.FieldByName('tipo_reg').AsString       := 'A';
                        cdsPosDPInvest.FieldByName('id_empresa').AsInteger    := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('id_empresa').AsInteger;
                        cdsPosDPInvest.FieldByName('emp_fantasia').AsString   := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('emp_fantasia').AsString;
                        cdsPosDPInvest.FieldByName('ano').AsInteger           := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('ano').AsInteger;
                        cdsPosDPInvest.FieldByName('id_plano').AsString       := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('id_plano').AsString;
                        cdsPosDPInvest.FieldByName('descricao').AsString      := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('descricao').AsString;
                        cdsPosDPInvest.FieldByName('ano_anterior').AsCurrency      := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('ano_anterior').AsCurrency;
                        cdsPosDPInvest.FieldByName('ano_atual').AsCurrency         := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('ano_atual').AsCurrency;
                        cdsPosDPInvest.FieldByName('perc_ano_anterior').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('perc_ano_anterior').AsCurrency;
                        cdsPosDPInvest.FieldByName('perc_ano_atual').AsCurrency    := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('perc_ano_atual').AsCurrency;
                        cdsPosDPInvest.FieldByName('perc_faturamento').AsCurrency  := 0;
                        if dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Locate('id_empresa',cdsPosDPInvest.FieldByName('id_empresa').AsInteger,[]) then
                           begin
                             cdsPosDPInvest.FieldByName('perc_faturamento').AsCurrency  :=
                                      RoundTo( (cdsPosDPInvest.FieldByName('ano_atual').AsCurrency * 100) /
                                                dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('total_emp').AsCurrency,-4);
                           end;
                        cdsPosDPInvest.FieldByName('total_geral').AsCurrency       := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('total_geral').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_jan').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_jan').AsCurrency;
                        TotMesJan := TotMesJan + cdsPosDPInvest.FieldByName('mes_jan').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_fev').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_fev').AsCurrency;
                        TotMesFev := TotMesFev + cdsPosDPInvest.FieldByName('mes_fev').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_mar').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_mar').AsCurrency;
                        TotMesMar := TotMesMar + cdsPosDPInvest.FieldByName('mes_mar').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_abr').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_abr').AsCurrency;
                        TotMesAbr := TotMesAbr + cdsPosDPInvest.FieldByName('mes_abr').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_mai').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_mai').AsCurrency;
                        TotMesMai := TotMesMai + cdsPosDPInvest.FieldByName('mes_mai').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_jun').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_jun').AsCurrency;
                        TotMesJun := TotMesJun + cdsPosDPInvest.FieldByName('mes_jun').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_jul').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_jul').AsCurrency;
                        TotMesJul := TotMesJul + cdsPosDPInvest.FieldByName('mes_jul').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_ago').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_ago').AsCurrency;
                        TotMesAgo := TotMesAgo + cdsPosDPInvest.FieldByName('mes_ago').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_set').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_set').AsCurrency;
                        TotMesSet := TotMesSet + cdsPosDPInvest.FieldByName('mes_set').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_out').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_out').AsCurrency;
                        TotMesOut := TotMesOut + cdsPosDPInvest.FieldByName('mes_out').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_nov').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_nov').AsCurrency;
                        TotMesNov := TotMesNov + cdsPosDPInvest.FieldByName('mes_nov').AsCurrency;
                        cdsPosDPInvest.FieldByName('mes_dez').AsCurrency     := dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('mes_dez').AsCurrency;
                        TotMesDez := TotMesDez + cdsPosDPInvest.FieldByName('mes_dez').AsCurrency;

                        IdEmpresa   :=  dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('id_empresa').AsInteger;
                        NomeEmp     :=  dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('emp_fantasia').AsString;
                        vlrTotal    :=  dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('total_geral').AsCurrency;
                        vlrTotalAnt :=  vlrTotalAnt  +  dmGeral.BUS_CD_M_CSU_GER_PDE.FieldByName('ano_anterior').AsCurrency;

                        dmGeral.BUS_CD_M_CSU_GER_PDE.Next;
                      end;

                   cdsPosDPInvest.Append;
                   cdsPosDPInvest.FieldByName('tipo_reg').AsString       := 'B';

                   cdsPosDPInvest.Append;
                   cdsPosDPInvest.FieldByName('tipo_reg').AsString       := 'C';

                   cdsPosDPInvest.FieldByName('id_empresa').AsInteger    := IdEmpresa;
                   cdsPosDPInvest.FieldByName('emp_fantasia').AsString   := NomeEmp;
                   cdsPosDPInvest.FieldByName('id_plano').AsString       := 'Total';
                   cdsPosDPInvest.FieldByName('ano_anterior').AsCurrency := vlrTotalAnt;
                   cdsPosDPInvest.FieldByName('ano_atual').AsCurrency    := vlrTotal;

                   cdsPosDPInvest.FieldByName('mes_jan').AsCurrency := TotMesJan;
                   cdsPosDPInvest.FieldByName('mes_fev').AsCurrency := TotMesFev;
                   cdsPosDPInvest.FieldByName('mes_mar').AsCurrency := TotMesMar;
                   cdsPosDPInvest.FieldByName('mes_abr').AsCurrency := TotMesAbr;
                   cdsPosDPInvest.FieldByName('mes_mai').AsCurrency := TotMesMai;
                   cdsPosDPInvest.FieldByName('mes_jun').AsCurrency := TotMesJun;
                   cdsPosDPInvest.FieldByName('mes_jul').AsCurrency := TotMesJul;
                   cdsPosDPInvest.FieldByName('mes_ago').AsCurrency := TotMesAgo;
                   cdsPosDPInvest.FieldByName('mes_set').AsCurrency := TotMesSet;
                   cdsPosDPInvest.FieldByName('mes_out').AsCurrency := TotMesOut;
                   cdsPosDPInvest.FieldByName('mes_nov').AsCurrency := TotMesNov;
                   cdsPosDPInvest.FieldByName('mes_dez').AsCurrency := TotMesDez;

                   cdsPosDPInvest.Append;
                   cdsPosDPInvest.FieldByName('tipo_reg').AsString      := 'B';

                   vlrTotalAnt := 0;

                   cdsPosDPInvest.First;

                   dmGeral.BUS_CD_M_CSU_GER_PDE.Filtered :=  false;
                 end;
           end;
      end;
  finally
     dmGeral.BUS_CD_M_CSU_GER_PDE.Filtered :=  false;
  end;
end;

procedure TCSU_FM_M_GER.BuscarPosRc_Pg(Empresas: String);
begin
  dmGeral.BUS_CD_M_CSU_GER_PRC.Close;
     dmGeral.BUS_CD_M_CSU_GER_PRC.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PRC.DataRequest(
                  VarArrayOf([Empresas]));


  dmGeral.BUS_CD_M_CSU_GER_PPG.Close;
     dmGeral.BUS_CD_M_CSU_GER_PPG.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PPG.DataRequest(
                  VarArrayOf([Empresas]));

  BUS_CD_M_CSU_GER_PGF.Close;
     BUS_CD_M_CSU_GER_PGF.Data :=
          BUS_CD_M_CSU_GER_PGF.DataRequest(
                           // VarArrayOf([Empresas,xMesIni_GER_PGF, '01/08/2016', '31/01/2017']));
                            VarArrayOf([Empresas,xMesIni_PGF, DateToStr(xDataSis+1), DateToStr(xDataFim_GER_PGF)]));
end;

procedure TCSU_FM_M_GER.BuscarPosRe(Empresas: String);
var
  i: integer;
  IdEmpresa: integer;
  NomeEmp: String;
  vlrTotalAnt, vlrTotal: Currency;
  vlrTotJan,vlrTotFev,vlrTotMar,vlrTotAbr,vlrTotMai,vlrTotJun,vlrTotJul,vlrTotAgo,
  vlrTotSet,vlrTotOut,vlrTotNov,vlrTotDez: Currency;
begin

  dmGeral.BUS_CD_M_CSU_GER_PRE.Close;
     dmGeral.BUS_CD_M_CSU_GER_PRE.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PRE.DataRequest(
                  VarArrayOf([Empresas,txtAno.Text,strtoint(txtAno.Text)-1]));

  if not cdsPosRE.IsEmpty then
     begin
       cdsPosRE.EmptyDataSet;
     end;

  try

  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
              dmGeral.BUS_CD_M_CSU_GER_PRE.Filtered :=  true;
              dmGeral.BUS_CD_M_CSU_GER_PRE.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2)) +
                                                        ' and ano =  ' + txtAno.Text;
              IdEmpresa   := 0;
              vlrTotalAnt := 0;

              vlrTotJan := 0;
              vlrTotFev := 0;
              vlrTotMar := 0;
              vlrTotAbr := 0;
              vlrTotMai := 0;
              vlrTotJun := 0;
              vlrTotJul := 0;
              vlrTotAgo := 0;
              vlrTotSet := 0;
              vlrTotOut := 0;
              vlrTotNov := 0;
              vlrTotDez := 0;

              if not dmGeral.BUS_CD_M_CSU_GER_PRE.IsEmpty then
                 begin
                   while not dmGeral.BUS_CD_M_CSU_GER_PRE.eof do
                      begin
                        cdsPosRE.Append;
                        cdsPosRE.FieldByName('tipo_reg').AsString      := 'A';
                        cdsPosRE.FieldByName('id_empresa').AsInteger   :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('id_empresa').AsInteger;
                        cdsPosRE.FieldByName('emp_fantasia').AsString  :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('emp_fantasia').AsString;
                        cdsPosRE.FieldByName('ano').AsCurrency         :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('ano').AsCurrency;
                        cdsPosRE.FieldByName('Id_forma_pag').AsInteger :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('id_forma_pag').AsInteger;
                        cdsPosRE.FieldByName('descricao').AsString     :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('descricao').AsString;
                        vlrTotalAnt := vlrTotalAnt  +  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('ano_anterior').AsCurrency;
                        cdsPosRE.FieldByName('ano_anterior').AsCurrency      :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('ano_anterior').AsCurrency;
                        cdsPosRE.FieldByName('ano_atual').AsCurrency         :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('ano_atual').AsCurrency;
                        cdsPosRE.FieldByName('perc_ano_anterior').AsCurrency :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('perc_ano_anterior').AsCurrency;
                        cdsPosRE.FieldByName('perc_ano_atual').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('perc_ano_atual').AsCurrency;

                        cdsPosRE.FieldByName('mes_jan').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_jan').AsCurrency;
                        vlrTotJan := vlrTotJan + cdsPosRE.FieldByName('mes_jan').AsCurrency;

                        cdsPosRE.FieldByName('mes_fev').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_fev').AsCurrency;
                        vlrTotFev := vlrTotFev + cdsPosRE.FieldByName('mes_fev').AsCurrency;

                        cdsPosRE.FieldByName('mes_mar').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_mar').AsCurrency;
                        vlrTotMar := vlrTotMar + cdsPosRE.FieldByName('mes_mar').AsCurrency;

                        cdsPosRE.FieldByName('mes_abr').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_abr').AsCurrency;
                        vlrTotAbr := vlrTotAbr + cdsPosRE.FieldByName('mes_abr').AsCurrency;

                        cdsPosRE.FieldByName('mes_mai').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_mai').AsCurrency;
                        vlrTotMai := vlrTotMai + cdsPosRE.FieldByName('mes_mai').AsCurrency;

                        cdsPosRE.FieldByName('mes_jun').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_jun').AsCurrency;
                        vlrTotJun := vlrTotJun + cdsPosRE.FieldByName('mes_jun').AsCurrency;

                        cdsPosRE.FieldByName('mes_jul').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_jul').AsCurrency;
                        vlrTotJul := vlrTotJul + cdsPosRE.FieldByName('mes_jul').AsCurrency;

                        cdsPosRE.FieldByName('mes_ago').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_ago').AsCurrency;
                        vlrTotAgo := vlrTotAgo + cdsPosRE.FieldByName('mes_ago').AsCurrency;

                        cdsPosRE.FieldByName('mes_set').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_set').AsCurrency;
                        vlrTotSet := vlrTotSet + cdsPosRE.FieldByName('mes_set').AsCurrency;

                        cdsPosRE.FieldByName('mes_out').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_out').AsCurrency;
                        vlrTotOut := vlrTotOut + cdsPosRE.FieldByName('mes_out').AsCurrency;

                        cdsPosRE.FieldByName('mes_nov').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_nov').AsCurrency;
                        vlrTotNov := vlrTotNov + cdsPosRE.FieldByName('mes_nov').AsCurrency;

                        cdsPosRE.FieldByName('mes_dez').AsCurrency    :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('mes_dez').AsCurrency;
                        vlrTotDez := vlrTotDez + cdsPosRE.FieldByName('mes_dez').AsCurrency;

                        IdEmpresa :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('id_empresa').AsInteger;
                        NomeEmp   :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('emp_fantasia').AsString;
                        vlrTotal  :=  dmGeral.BUS_CD_M_CSU_GER_PRE.FieldByName('total_geral').AsCurrency;

                        dmGeral.BUS_CD_M_CSU_GER_PRE.Next;
                      end;

                   cdsPosRE.Append;
                   cdsPosRE.FieldByName('tipo_reg').AsString      := 'B';

                   cdsPosRE.Append;
                   cdsPosRE.FieldByName('tipo_reg').AsString      := 'C';

                   cdsPosRE.FieldByName('id_empresa').AsInteger    := IdEmpresa;
                   cdsPosRE.FieldByName('emp_fantasia').AsString   := NomeEmp;
                   cdsPosRE.FieldByName('descricao').AsString      := 'Total';
                   cdsPosRE.FieldByName('ano_anterior').AsCurrency := vlrTotalAnt;
                   cdsPosRE.FieldByName('ano_atual').AsCurrency    := vlrTotal;

                   cdsPosRE.FieldByName('mes_jan').AsCurrency := vlrTotJan;
                   cdsPosRE.FieldByName('mes_fev').AsCurrency := vlrTotFev;
                   cdsPosRE.FieldByName('mes_mar').AsCurrency := vlrTotMar;
                   cdsPosRE.FieldByName('mes_abr').AsCurrency := vlrTotAbr;
                   cdsPosRE.FieldByName('mes_mai').AsCurrency := vlrTotMai;
                   cdsPosRE.FieldByName('mes_jun').AsCurrency := vlrTotJun;
                   cdsPosRE.FieldByName('mes_jul').AsCurrency := vlrTotJul;
                   cdsPosRE.FieldByName('mes_ago').AsCurrency := vlrTotAgo;
                   cdsPosRE.FieldByName('mes_set').AsCurrency := vlrTotSet;
                   cdsPosRE.FieldByName('mes_out').AsCurrency := vlrTotOut;
                   cdsPosRE.FieldByName('mes_nov').AsCurrency := vlrTotNov;
                   cdsPosRE.FieldByName('mes_dez').AsCurrency := vlrTotDez;

                   cdsPosRE.Append;

                   cdsPosRE.FieldByName('tipo_reg').AsString      := 'B';

                   vlrTotalAnt := 0;

                   dmGeral.BUS_CD_M_CSU_GER_PRE.Filtered :=  false;

                   cdsPosRE.First;
                 end;
           end;
      end;
  finally
      dmGeral.BUS_CD_M_CSU_GER_PRE.Filtered :=  false;
  end;
end;

procedure TCSU_FM_M_GER.BuscarPosRentFor(Empresas: String);
var
  IdEmpresa: integer;
  IdFornecedor: String;
  vTotalEmpAtual,vTotalEmpAnterior,vTotal10FornecedoresAtual, vTotal10FornecedoresAnt,vTotFornecedorAnoAtual,
   vTotFornecedorAnoAnterior: Currency;
  cdsPRentFor_AnoAnt, cdsPRentFor_EmpAnoAnt: TClientDataSet;
  z,i, t,n: integer;
begin
  cdsPRentFor_AnoAnt    := TClientDataSet.Create(nil);
  cdsPRentFor_EmpAnoAnt := TClientDataSet.Create(nil);


  dmGeral.BUS_CD_M_CSU_GER_RFO.Close;
     dmGeral.BUS_CD_M_CSU_GER_RFO.Data :=
          dmGeral.BUS_CD_M_CSU_GER_RFO.DataRequest(
                  VarArrayOf([Empresas,txtAno.Text,strtoint(txtAno.Text)-1]));

  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Close;
     dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.DataRequest(
                  VarArrayOf([Empresas,txtAno.Text,strtoint(txtAno.Text)-1]));

  if not cdsRentForn.IsEmpty then
     begin
       cdsRentForn.EmptyDataSet;
     end;

  for z := 1 to 10 do
      begin
        for i := 1 to 12 do
            begin
              xMesFat[z][i] := 0;
            end;
      end;

  // No clientdataset  cdsRentForn está usando indexField, para ordenação
  n:= 1;
  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
             inc(n);
           end;
      end;

  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
              cdsPRentFor_AnoAnt.data  := dmGeral.BUS_CD_M_CSU_GER_RFO.data;

              dmGeral.BUS_CD_M_CSU_GER_RFO.Filtered :=  true;
              dmGeral.BUS_CD_M_CSU_GER_RFO.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2)) +
                                                        ' and ano =  ' + txtAno.Text;
              cdsPRentFor_AnoAnt.Filtered := true;
              cdsPRentFor_AnoAnt.Filter   := ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2)) +
                                             ' and ano =  ' + inttostr(strtoint(txtAno.Text) - 1);
              IdEmpresa := 0;
              IdFornecedor   := '';
              vTotal10FornecedoresAtual := 0;
              vTotal10FornecedoresAnt   := 0;
              t := 1;
              n := n - 1;
              if not dmGeral.BUS_CD_M_CSU_GER_RFO.IsEmpty then
                 begin
                   while not dmGeral.BUS_CD_M_CSU_GER_RFO.eof do
                      begin
                        if t <= 9 then // Esse código faz com que se pegue 10 registros, pois mais no final tem um cógido complementar.
                           begin
                              if (IdFornecedor <> dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('id_fornecedor').AsString) then
                                 begin
                                   if IdFornecedor <> '' then
                                      begin
                                        cdsRentForn.FieldByName('total_fornecedor_ano_atual').AsCurrency    := vTotFornecedorAnoAtual;
                                        vTotal10FornecedoresAtual := vTotal10FornecedoresAtual + vTotFornecedorAnoAtual;

                                        cdsRentForn.FieldByName('total_fornecedor_ano_anterior').AsCurrency := vTotFornecedorAnoAnterior;
                                        vTotal10FornecedoresAnt := vTotal10FornecedoresAnt + vTotFornecedorAnoAnterior;
                                        cdsRentForn.FieldByName('perc_fornecedor_ano_anterior').AsCurrency := 0;
                                        if vTotFornecedorAnoAnterior > 0 then
                                           begin
                                             cdsRentForn.FieldByName('perc_fornecedor_ano_anterior').AsCurrency := ((vTotFornecedorAnoAtual - vTotFornecedorAnoAnterior) * 100)
                                                                                                    / vTotFornecedorAnoAnterior;
                                           end;
                                        vTotalEmpAtual := 0;

                                        dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filtered := true;
                                        dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filter := ' id_empresa = ' + dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('id_empresa').AsString +
                                                                                   ' and ano =  '   + inttostr(strtoint(txtAno.Text));
                                        if not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.IsEmpty then
                                           begin
                                             vTotalEmpAtual := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Fieldbyname('total_emp').AsCurrency;
                                           end;

                                        cdsRentForn.FieldByName('perc_fornecedor_ano_atual').AsCurrency := (vTotFornecedorAnoAtual * 100) / vTotalEmpAtual;

                                        inc(t);
                                        IdFornecedor := '';
                                      end;

                                   cdsRentForn.Append;
                                   cdsRentForn.FieldByName('tipo_reg').AsString                   := inttostr(n)+'E';
                                   cdsRentForn.FieldByName('total_fornecedor_ano_anterior').AsCurrency := 0;
                                   cdsRentForn.FieldByName('total_fornecedor_ano_atual').AsCurrency    := 0;
                                   cdsRentForn.FieldByName('perc_fornecedor_ano_anterior').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('perc_fornecedor_ano_atual').AsCurrency     := 0;
                                   cdsRentForn.FieldByName('mes_jan').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_fev').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_mar').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_abr').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_mai').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_jun').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_jul').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_ago').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_set').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_out').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_nov').AsCurrency := 0;
                                   cdsRentForn.FieldByName('mes_dez').AsCurrency := 0;
                                   cdsRentForn.FieldByName('rent_med_jan').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_fev').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_mar').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_abr').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_mai').AsCurrency := 0;
                                   cdsRentForn.FieldByName('rent_med_jun').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_jul').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_ago').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_set').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_out').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_nov').AsCurrency  := 0;
                                   cdsRentForn.FieldByName('rent_med_dez').AsCurrency  := 0;
                                   vTotFornecedorAnoAtual    := 0;
                                   vTotFornecedorAnoAnterior := 0;

                                   cdsRentForn.FieldByName('id_empresa').AsInteger  := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('id_empresa').AsInteger;
                                   IdEmpresa := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('id_empresa').AsInteger;
                                   cdsRentForn.FieldByName('emp_fantasia').AsString := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('emp_fantasia').AsString;
                                   IdFornecedor                                       := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('id_fornecedor').AsString;
                                   cdsRentForn.FieldByName('id_fornecedor').AsString     := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('id_fornecedor').AsString;
                                   cdsRentForn.FieldByName('descricao').AsString    := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('descricao').AsString;

                                   cdsPRentFor_AnoAnt.Filtered := true;
                                   cdsPRentFor_AnoAnt.Filter   := ' ano =  ' + inttostr(strtoint(txtAno.Text) - 1) +
                                                             ' and id_empresa = ' +  dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('id_empresa').AsString +
                                                             ' and id_fornecedor = ''' +  VarToStr(dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('id_fornecedor').AsString) + '''';

                                   if not cdsPRentFor_AnoAnt.IsEmpty then
                                      while not cdsPRentFor_AnoAnt.eof do
                                            begin
                                              vTotFornecedorAnoAnterior := vTotFornecedorAnoAnterior  + cdsPRentFor_AnoAnt.FieldByName('total_mes').AsCurrency;
                                              cdsPRentFor_AnoAnt.Next;
                                            end;
                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 1 then
                                 begin
                                   cdsRentForn.FieldByName('mes_jan').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                   vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual  + cdsRentForn.FieldByName('mes_jan').AsCurrency;
                                   xMesFat[IdEmpresa][1] := xMesFat[IdEmpresa][1] + cdsRentForn.FieldByName('mes_jan').AsCurrency;

                                   cdsRentForn.FieldByName('rent_med_jan').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_jan').AsCurrency) ),-2);
                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 2 then
                                 begin
                                   cdsRentForn.FieldByName('mes_fev').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                   vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_fev').AsCurrency;
                                   xMesFat[IdEmpresa][2] := xMesFat[IdEmpresa][2] + cdsRentForn.FieldByName('mes_fev').AsCurrency;

                                   cdsRentForn.FieldByName('rent_med_fev').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_fev').AsCurrency) ),-2);

                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 3 then
                                 begin
                                    cdsRentForn.FieldByName('mes_mar').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                    vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_mar').AsCurrency;
                                    xMesFat[IdEmpresa][3] := xMesFat[IdEmpresa][3] + cdsRentForn.FieldByName('mes_mar').AsCurrency;

                                    cdsRentForn.FieldByName('rent_med_mar').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_mar').AsCurrency) ),-2);

                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 4 then
                                 begin
                                   cdsRentForn.FieldByName('mes_abr').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                    vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_abr').AsCurrency;
                                    xMesFat[IdEmpresa][4] := xMesFat[IdEmpresa][4] + cdsRentForn.FieldByName('mes_abr').AsCurrency;

                                    cdsRentForn.FieldByName('rent_med_abr').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_abr').AsCurrency) ),-2);
                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 5 then
                                 begin
                                   cdsRentForn.FieldByName('mes_mai').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                    vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_mai').AsCurrency;
                                    xMesFat[IdEmpresa][5] := xMesFat[IdEmpresa][5] + cdsRentForn.FieldByName('mes_mai').AsCurrency;

                                   cdsRentForn.FieldByName('rent_med_mai').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_mai').AsCurrency) ),-2);

                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 6 then
                                 begin
                                   cdsRentForn.FieldByName('mes_jun').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                    vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_jun').AsCurrency;
                                    xMesFat[IdEmpresa][6] := xMesFat[IdEmpresa][6] + cdsRentForn.FieldByName('mes_jun').AsCurrency;

                                    cdsRentForn.FieldByName('rent_med_jun').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_jun').AsCurrency) ),-2);
                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 7 then
                                 begin
                                   cdsRentForn.FieldByName('mes_jul').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                   vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_jul').AsCurrency;
                                   xMesFat[IdEmpresa][7] := xMesFat[IdEmpresa][7] + cdsRentForn.FieldByName('mes_jul').AsCurrency;

                                   cdsRentForn.FieldByName('rent_med_jul').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_jul').AsCurrency) ),-2);
                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 8 then
                                 begin
                                   cdsRentForn.FieldByName('mes_ago').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                   vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_ago').AsCurrency;
                                   xMesFat[IdEmpresa][8] := xMesFat[IdEmpresa][8] + cdsRentForn.FieldByName('mes_ago').AsCurrency;

                                   cdsRentForn.FieldByName('rent_med_ago').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_ago').AsCurrency) ),-2);

                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 9 then
                                 begin
                                   cdsRentForn.FieldByName('mes_set').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                   vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_set').AsCurrency;
                                   xMesFat[IdEmpresa][9] := xMesFat[IdEmpresa][9] + cdsRentForn.FieldByName('mes_set').AsCurrency;

                                   cdsRentForn.FieldByName('rent_med_set').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_set').AsCurrency) ),-2);

                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 10 then
                                 begin
                                   cdsRentForn.FieldByName('mes_out').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                   vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_out').AsCurrency;
                                   xMesFat[IdEmpresa][10] := xMesFat[IdEmpresa][10] + cdsRentForn.FieldByName('mes_out').AsCurrency;

                                   cdsRentForn.FieldByName('rent_med_out').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_out').AsCurrency) ),-2);

                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 11 then
                                 begin
                                   cdsRentForn.FieldByName('mes_nov').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                   vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_nov').AsCurrency;
                                   xMesFat[IdEmpresa][11] := xMesFat[IdEmpresa][11] + cdsRentForn.FieldByName('mes_nov').AsCurrency;

                                   cdsRentForn.FieldByName('rent_med_nov').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_nov').AsCurrency) ),-2);

                                 end;

                              if dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('mes').AsInteger = 12 then
                                 begin
                                   cdsRentForn.FieldByName('mes_dez').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes').AsCurrency;
                                   vTotFornecedorAnoAtual    := vTotFornecedorAnoAtual + cdsRentForn.FieldByName('mes_dez').AsCurrency;
                                   xMesFat[IdEmpresa][12] := xMesFat[IdEmpresa][12] + cdsRentForn.FieldByName('mes_dez').AsCurrency;

                                   cdsRentForn.FieldByName('rent_med_dez').AsCurrency :=
                                       roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('total_mes_custo').AsCurrency * 100) /
                                               cdsRentForn.FieldByName('mes_dez').AsCurrency) ),-2);
                                 end;
                           end
                        else
                           dmGeral.BUS_CD_M_CSU_GER_RFO.Last;

                        dmGeral.BUS_CD_M_CSU_GER_RFO.Next;
                      end;

                  cdsRentForn.FieldByName('total_fornecedor_ano_atual').AsCurrency    := vTotFornecedorAnoAtual;
                  vTotal10FornecedoresAtual := vTotal10FornecedoresAtual + vTotFornecedorAnoAtual;

                  cdsRentForn.FieldByName('total_fornecedor_ano_anterior').AsCurrency := vTotFornecedorAnoAnterior;
                  vTotal10FornecedoresAnt := vTotal10FornecedoresAnt + vTotFornecedorAnoAnterior;
                  cdsRentForn.FieldByName('perc_fornecedor_ano_anterior').AsCurrency := 0;
                  if vTotFornecedorAnoAnterior > 0 then
                     begin
                       cdsRentForn.FieldByName('perc_fornecedor_ano_anterior').AsCurrency := ((vTotFornecedorAnoAtual - vTotFornecedorAnoAnterior) * 100)
                                                                              / vTotFornecedorAnoAnterior;
                     end;
                  vTotalEmpAtual := 0;

                  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filtered := true;
                  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filter := ' id_empresa = ' + dmGeral.BUS_CD_M_CSU_GER_RFO.FieldByName('id_empresa').AsString +
                                                             ' and ano =  '   + inttostr(strtoint(txtAno.Text));
                  if not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.IsEmpty then
                     begin
                       vTotalEmpAtual := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Fieldbyname('total_emp').AsCurrency;
                     end;

                  cdsRentForn.FieldByName('perc_fornecedor_ano_atual').AsCurrency := (vTotFornecedorAnoAtual * 100) / vTotalEmpAtual;






                   if not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.IsEmpty then
                      begin
                        cdsRentForn.Append;  // Espaço em branco;
                        cdsRentForn.FieldByName('tipo_reg').AsString :=  inttostr(n)+'D';

                        cdsPRentFor_EmpAnoAnt.Data := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Data;
                        //while not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.eof do
                        //   begin
                             if dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Locate('id_empresa',IdEmpresa,[]) then
                                begin
                                  cdsRentForn.Append;
                                  cdsRentForn.FieldByName('tipo_reg').AsString := inttostr(n)+'C';

                                  cdsRentForn.FieldByName('descricao').AsString   := 'Total 10 fornecedores ';
                                  cdsRentForn.FieldByName('total_fornecedor_ano_atual').AsCurrency    :=
                                                    vTotal10FornecedoresAtual;

                                  cdsRentForn.FieldByName('total_fornecedor_ano_anterior').AsCurrency :=
                                                    vTotal10FornecedoresAnt;

                                  cdsRentForn.FieldByName('mes_jan').AsCurrency := xMesFat[IdEmpresa][1];
                                  cdsRentForn.FieldByName('mes_fev').AsCurrency := xMesFat[IdEmpresa][2];
                                  cdsRentForn.FieldByName('mes_mar').AsCurrency := xMesFat[IdEmpresa][3];
                                  cdsRentForn.FieldByName('mes_abr').AsCurrency := xMesFat[IdEmpresa][4];
                                  cdsRentForn.FieldByName('mes_mai').AsCurrency := xMesFat[IdEmpresa][5];
                                  cdsRentForn.FieldByName('mes_jun').AsCurrency := xMesFat[IdEmpresa][6];
                                  cdsRentForn.FieldByName('mes_jul').AsCurrency := xMesFat[IdEmpresa][7];
                                  cdsRentForn.FieldByName('mes_ago').AsCurrency := xMesFat[IdEmpresa][8];
                                  cdsRentForn.FieldByName('mes_set').AsCurrency := xMesFat[IdEmpresa][9];
                                  cdsRentForn.FieldByName('mes_out').AsCurrency := xMesFat[IdEmpresa][10];
                                  cdsRentForn.FieldByName('mes_nov').AsCurrency := xMesFat[IdEmpresa][11];
                                  cdsRentForn.FieldByName('mes_dez').AsCurrency := xMesFat[IdEmpresa][12];

                                  cdsRentForn.Append;
                                  cdsRentForn.FieldByName('tipo_reg').AsString := inttostr(n)+'B';

                                  cdsRentForn.FieldByName('id_empresa').AsInteger  := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('id_empresa').AsInteger;
                                  cdsRentForn.FieldByName('emp_fantasia').AsString := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('emp_fantasia').AsString;
                                  cdsRentForn.FieldByName('descricao').AsString   := 'Total geral ';

                                  cdsRentForn.FieldByName('total_fornecedor_ano_atual').AsCurrency    := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('total_emp').AsCurrency;

                                  cdsRentForn.FieldByName('total_fornecedor_ano_anterior').AsCurrency :=  0;

                                  cdsPRentFor_EmpAnoAnt.Filtered := true;
                                  cdsPRentFor_EmpAnoAnt.Filter := ' id_empresa = ' + cdsRentForn.FieldByName('id_empresa').AsString +
                                                                  ' and ano =  ' + inttostr(strtoint(txtAno.Text) - 1);

                                  if not cdsPRentFor_EmpAnoAnt.IsEmpty then
                                     begin
                                       cdsRentForn.FieldByName('total_fornecedor_ano_anterior').AsCurrency :=
                                                 cdsPRentFor_EmpAnoAnt.FieldByName('total_emp').AsCurrency;
                                     end;

                                  //dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Next;
                                end;
                        cdsRentForn.Append;  // Espaço em branco;
                        cdsRentForn.FieldByName('tipo_reg').AsString := inttostr(n)+'A';
                           //end;
                      end;

                   dmGeral.BUS_CD_M_CSU_GER_RFO.Filtered := false;
                   //IdEmpresa         := 0;
                   vTotalEmpAnterior := 0;
                 end;
           end;
        cdsRentForn.First;
      end;
end;

procedure TCSU_FM_M_GER.BuscarPosRentVen(Empresas: String);
var
  IdEmpresa: integer;
  IdVendedor: String;
  vTotalEmpAtual,vTotalEmpAnterior, vTotVendedorAnoAtual,  vTotVendedorAnoAnterior: Currency;
  cdsPRentVen_AnoAnt, cdsPRentVen_EmpAnoAnt: TClientDataSet;
  z,i,n: integer;
begin
  cdsPRentVen_AnoAnt    := TClientDataSet.Create(nil);
  cdsPRentVen_EmpAnoAnt := TClientDataSet.Create(nil);


  dmGeral.BUS_CD_M_CSU_GER_RVE.Close;
     dmGeral.BUS_CD_M_CSU_GER_RVE.Data :=
          dmGeral.BUS_CD_M_CSU_GER_RVE.DataRequest(
                  VarArrayOf([Empresas,txtAno.Text,strtoint(txtAno.Text)-1]));

  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Close;
     dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Data :=
          dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.DataRequest(
                  VarArrayOf([Empresas,txtAno.Text,strtoint(txtAno.Text)-1]));

  if not cdsRentVen.IsEmpty then
     begin
       cdsRentVen.EmptyDataSet;
     end;

  for z := 1 to 10 do
      begin
        for i := 1 to 12 do
            begin
              xMesFat[z][i] := 0;
            end;
      end;

  // No clientdataset  cdsRentForn está usando indexField, para ordenação
  n:= 1;
  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
             inc(n);
           end;
      end;



  for i := 0 to chkEmpresa.Count - 1 do
      begin
        if chkEmpresa.Checked[i] then
           begin
              cdsPRentVen_AnoAnt.data  := dmGeral.BUS_CD_M_CSU_GER_RVE.data;

              dmGeral.BUS_CD_M_CSU_GER_RVE.Filtered :=  true;
              dmGeral.BUS_CD_M_CSU_GER_RVE.Filter   :=  ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2)) +
                                                        ' and ano =  ' + txtAno.Text;
              cdsPRentVen_AnoAnt.Filtered := true;
              cdsPRentVen_AnoAnt.Filter   := ' id_empresa = ' + trim(copy(chkEmpresa.Items[i],1,2)) +
                                             ' and ano =  ' + inttostr(strtoint(txtAno.Text) - 1);
              IdEmpresa := 0;
              IdVendedor   := '';

              n := n - 1;

              if not dmGeral.BUS_CD_M_CSU_GER_RVE.IsEmpty then
                 begin
                   while not dmGeral.BUS_CD_M_CSU_GER_RVE.eof do
                      begin
                        if IdVendedor <> dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('id_vendedor').AsString then
                           begin
                             if IdVendedor <> '' then
                                begin
                                  cdsRentVen.FieldByName('total_vendedor_ano_atual').AsCurrency    := vTotVendedorAnoAtual;
                                  cdsRentVen.FieldByName('total_vendedor_ano_anterior').AsCurrency := vTotVendedorAnoAnterior;
                                  cdsRentVen.FieldByName('perc_vendedor_ano_anterior').AsCurrency  := 0;
                                  if vTotVendedorAnoAnterior > 0 then
                                     begin
                                      cdsRentVen.FieldByName('perc_vendedor_ano_anterior').AsCurrency := ((vTotVendedorAnoAtual - vTotVendedorAnoAnterior) * 100)
                                                                                              / vTotVendedorAnoAnterior;
                                     end;
                                  vTotalEmpAtual := 0;

                                  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filtered := true;
                                  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filter := ' id_empresa = ' + dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('id_empresa').AsString +
                                                                             ' and ano =  '   + inttostr(strtoint(txtAno.Text));
                                  if not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.IsEmpty then
                                     begin
                                       vTotalEmpAtual := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Fieldbyname('total_emp').AsCurrency;
                                     end;

                                  cdsRentVen.FieldByName('perc_vendedor_ano_atual').AsCurrency := (vTotVendedorAnoAtual * 100) / vTotalEmpAtual;

                                end;

                             cdsRentVen.Append;
                             cdsRentVen.FieldByName('tipo_reg').AsString                   := inttostr(n)+'D';
                             cdsRentVen.FieldByName('total_vendedor_ano_anterior').AsCurrency := 0;
                             cdsRentVen.FieldByName('total_vendedor_ano_atual').AsCurrency    := 0;
                             cdsRentVen.FieldByName('perc_vendedor_ano_anterior').AsCurrency  := 0;
                             cdsRentVen.FieldByName('perc_vendedor_ano_atual').AsCurrency     := 0;
                             cdsRentVen.FieldByName('mes_jan').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_fev').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_mar').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_abr').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_mai').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_jun').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_jul').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_ago').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_set').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_out').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_nov').AsCurrency := 0;
                             cdsRentVen.FieldByName('mes_dez').AsCurrency := 0;
                             cdsRentVen.FieldByName('rent_med_jan').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_fev').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_mar').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_abr').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_mai').AsCurrency := 0;
                             cdsRentVen.FieldByName('rent_med_jun').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_jul').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_ago').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_set').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_out').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_nov').AsCurrency  := 0;
                             cdsRentVen.FieldByName('rent_med_dez').AsCurrency  := 0;
                             vTotVendedorAnoAtual    := 0;
                             vTotVendedorAnoAnterior := 0;

                             cdsRentVen.FieldByName('id_empresa').AsInteger  := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('id_empresa').AsInteger;
                             IdEmpresa := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('id_empresa').AsInteger;
                             cdsRentVen.FieldByName('emp_fantasia').AsString := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('emp_fantasia').AsString;
                             IdVendedor                                      := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('id_vendedor').AsString;
                             cdsRentVen.FieldByName('id_vendedor').AsString  := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('id_vendedor').AsString;
                             cdsRentVen.FieldByName('descricao').AsString    := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('descricao').AsString;

                             cdsPRentVen_AnoAnt.Filtered := true;
                             cdsPRentVen_AnoAnt.Filter   := ' ano =  ' + inttostr(strtoint(txtAno.Text) - 1) +
                                                            ' and id_empresa = ' +  dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('id_empresa').AsString +
                                                            ' and id_vendedor = ''' +  VarToStr(dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('id_vendedor').AsString) + '''';

                             if not cdsPRentVen_AnoAnt.IsEmpty then
                                while not cdsPRentVen_AnoAnt.eof do
                                      begin
                                        vTotVendedorAnoAnterior := vTotVendedorAnoAnterior  + cdsPRentVen_AnoAnt.FieldByName('total_mes').AsCurrency;
                                        cdsPRentVen_AnoAnt.Next;
                                      end;
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 1 then
                           begin
                             cdsRentVen.FieldByName('mes_jan').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                             vTotVendedorAnoAtual    := vTotVendedorAnoAtual  + cdsRentVen.FieldByName('mes_jan').AsCurrency;
                             xMesFat[IdEmpresa][1] := xMesFat[IdEmpresa][1] + cdsRentVen.FieldByName('mes_jan').AsCurrency;

                             cdsRentVen.FieldByName('rent_med_jan').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_jan').AsCurrency) ),-2);
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 2 then
                           begin
                             cdsRentVen.FieldByName('mes_fev').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                             vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_fev').AsCurrency;
                             xMesFat[IdEmpresa][2] := xMesFat[IdEmpresa][2] + cdsRentVen.FieldByName('mes_fev').AsCurrency;

                             cdsRentVen.FieldByName('rent_med_fev').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_fev').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 3 then
                           begin
                              cdsRentVen.FieldByName('mes_mar').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                              vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_mar').AsCurrency;
                              xMesFat[IdEmpresa][3] := xMesFat[IdEmpresa][3] + cdsRentVen.FieldByName('mes_mar').AsCurrency;

                              cdsRentVen.FieldByName('rent_med_mar').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_mar').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 4 then
                           begin
                             cdsRentVen.FieldByName('mes_abr').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                              vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_abr').AsCurrency;
                              xMesFat[IdEmpresa][4] := xMesFat[IdEmpresa][4] + cdsRentVen.FieldByName('mes_abr').AsCurrency;

                              cdsRentVen.FieldByName('rent_med_abr').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_abr').AsCurrency) ),-2);
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 5 then
                           begin
                             cdsRentVen.FieldByName('mes_mai').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                              vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_mai').AsCurrency;
                              xMesFat[IdEmpresa][5] := xMesFat[IdEmpresa][5] + cdsRentVen.FieldByName('mes_mai').AsCurrency;

                             cdsRentVen.FieldByName('rent_med_mai').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_mai').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 6 then
                           begin
                             cdsRentVen.FieldByName('mes_jun').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                              vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_jun').AsCurrency;
                              xMesFat[IdEmpresa][6] := xMesFat[IdEmpresa][6] + cdsRentVen.FieldByName('mes_jun').AsCurrency;

                              cdsRentVen.FieldByName('rent_med_jun').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_jun').AsCurrency) ),-2);
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 7 then
                           begin
                             cdsRentVen.FieldByName('mes_jul').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                             vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_jul').AsCurrency;
                             xMesFat[IdEmpresa][7] := xMesFat[IdEmpresa][7] + cdsRentVen.FieldByName('mes_jul').AsCurrency;

                             cdsRentVen.FieldByName('rent_med_jul').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_jul').AsCurrency) ),-2);
                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 8 then
                           begin
                             cdsRentVen.FieldByName('mes_ago').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                             vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_ago').AsCurrency;
                             xMesFat[IdEmpresa][8] := xMesFat[IdEmpresa][8] + cdsRentVen.FieldByName('mes_ago').AsCurrency;

                             cdsRentVen.FieldByName('rent_med_ago').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_ago').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 9 then
                           begin
                             cdsRentVen.FieldByName('mes_set').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                             vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_set').AsCurrency;
                             xMesFat[IdEmpresa][9] := xMesFat[IdEmpresa][9] + cdsRentVen.FieldByName('mes_set').AsCurrency;

                             cdsRentVen.FieldByName('rent_med_set').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_set').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 10 then
                           begin
                             cdsRentVen.FieldByName('mes_out').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                             vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_out').AsCurrency;
                             xMesFat[IdEmpresa][10] := xMesFat[IdEmpresa][10] + cdsRentVen.FieldByName('mes_out').AsCurrency;

                             cdsRentVen.FieldByName('rent_med_out').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_out').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 11 then
                           begin
                             cdsRentVen.FieldByName('mes_nov').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                             vTotVendedorAnoAtual    := vTotVendedorAnoAtual + cdsRentVen.FieldByName('mes_nov').AsCurrency;
                             xMesFat[IdEmpresa][11] := xMesFat[IdEmpresa][11] + cdsRentVen.FieldByName('mes_nov').AsCurrency;

                             cdsRentVen.FieldByName('rent_med_nov').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_nov').AsCurrency) ),-2);

                           end;

                        if dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('mes').AsInteger = 12 then
                           begin
                             cdsRentVen.FieldByName('mes_dez').AsCurrency := dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes').AsCurrency;
                             vTotVendedorAnoAtual    := vTotVendedorAnoAtual  + cdsRentVen.FieldByName('mes_dez').AsCurrency;
                             xMesFat[IdEmpresa][12] := xMesFat[IdEmpresa][12] + cdsRentVen.FieldByName('mes_dez').AsCurrency;

                             cdsRentVen.FieldByName('rent_med_dez').AsCurrency :=
                                 roundTo((100-((dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('total_mes_custo').AsCurrency * 100) /
                                         cdsRentVen.FieldByName('mes_dez').AsCurrency) ),-2);
                           end;

                        dmGeral.BUS_CD_M_CSU_GER_RVE.Next;
                      end;

                    cdsRentVen.FieldByName('total_vendedor_ano_atual').AsCurrency    := vTotVendedorAnoAtual;
                    cdsRentVen.FieldByName('total_vendedor_ano_anterior').AsCurrency := vTotVendedorAnoAnterior;
                    cdsRentVen.FieldByName('perc_vendedor_ano_anterior').AsCurrency  := 0;
                    if vTotVendedorAnoAnterior > 0 then
                       begin
                        cdsRentVen.FieldByName('perc_vendedor_ano_anterior').AsCurrency := ((vTotVendedorAnoAtual - vTotVendedorAnoAnterior) * 100)
                                                                                / vTotVendedorAnoAnterior;
                       end;
                    vTotalEmpAtual := 0;

                    dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filtered := true;
                    dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Filter := ' id_empresa = ' + dmGeral.BUS_CD_M_CSU_GER_RVE.FieldByName('id_empresa').AsString +
                                                               ' and ano =  '   + inttostr(strtoint(txtAno.Text));
                    if not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.IsEmpty then
                       begin
                         vTotalEmpAtual := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Fieldbyname('total_emp').AsCurrency;
                       end;

                    cdsRentVen.FieldByName('perc_vendedor_ano_atual').AsCurrency := (vTotVendedorAnoAtual * 100) / vTotalEmpAtual;


                   if not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.IsEmpty then
                      begin
                        cdsRentVen.Append;  // Espaço em branco;
                        cdsRentVen.FieldByName('tipo_reg').AsString := inttostr(n)+'C';;

                        cdsPRentVen_EmpAnoAnt.Data := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Data;
                        //while not dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.eof do
                        //   begin
                             if dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Locate('id_empresa',IdEmpresa,[]) then
                                begin
                                  cdsRentVen.Append;
                                  cdsRentVen.FieldByName('tipo_reg').AsString := inttostr(n)+'B';
                                  cdsRentVen.FieldByName('id_empresa').AsInteger  := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('id_empresa').AsInteger;
                                  cdsRentVen.FieldByName('emp_fantasia').AsString := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('emp_fantasia').AsString;
                                  cdsRentVen.FieldByName('descricao').AsString   := 'Total ';

                                  cdsRentVen.FieldByName('total_vendedor_ano_atual').AsCurrency    := dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.FieldByName('total_emp').AsCurrency;

                                  cdsRentVen.FieldByName('total_vendedor_ano_anterior').AsCurrency :=  0;

                                  cdsPRentVen_EmpAnoAnt.Filtered := true;
                                  cdsPRentVen_EmpAnoAnt.Filter := ' id_empresa = ' + cdsRentVen.FieldByName('id_empresa').AsString +
                                                                  ' and ano =  ' + inttostr(strtoint(txtAno.Text) - 1);

                                  if not cdsPRentVen_EmpAnoAnt.IsEmpty then
                                     begin
                                       cdsRentVen.FieldByName('total_vendedor_ano_anterior').AsCurrency :=
                                                 cdsPRentVen_EmpAnoAnt.FieldByName('total_emp').AsCurrency;
                                     end;

                                  cdsRentVen.FieldByName('mes_jan').AsCurrency := xMesFat[IdEmpresa][1];
                                  cdsRentVen.FieldByName('mes_fev').AsCurrency := xMesFat[IdEmpresa][2];
                                  cdsRentVen.FieldByName('mes_mar').AsCurrency := xMesFat[IdEmpresa][3];
                                  cdsRentVen.FieldByName('mes_abr').AsCurrency := xMesFat[IdEmpresa][4];
                                  cdsRentVen.FieldByName('mes_mai').AsCurrency := xMesFat[IdEmpresa][5];
                                  cdsRentVen.FieldByName('mes_jun').AsCurrency := xMesFat[IdEmpresa][6];
                                  cdsRentVen.FieldByName('mes_jul').AsCurrency := xMesFat[IdEmpresa][7];
                                  cdsRentVen.FieldByName('mes_ago').AsCurrency := xMesFat[IdEmpresa][8];
                                  cdsRentVen.FieldByName('mes_set').AsCurrency := xMesFat[IdEmpresa][9];
                                  cdsRentVen.FieldByName('mes_out').AsCurrency := xMesFat[IdEmpresa][10];
                                  cdsRentVen.FieldByName('mes_nov').AsCurrency := xMesFat[IdEmpresa][11];
                                  cdsRentVen.FieldByName('mes_dez').AsCurrency := xMesFat[IdEmpresa][12];

                                  //dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Next;
                                end;
                        cdsRentVen.Append;  // Espaço em branco;
                        cdsRentVen.FieldByName('tipo_reg').AsString := inttostr(n)+'A';
                           //end;
                      end;

                   dmGeral.BUS_CD_M_CSU_GER_RVE.Filtered := false;
                   //IdEmpresa         := 0;
                   vTotalEmpAnterior := 0;
                 end;
           end;
        cdsRentVen.First;
      end;
end;

procedure TCSU_FM_M_GER.btnImprimirClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if (not cdsPosFT.IsEmpty) and (not cdsPosRE.IsEmpty) and (not cdsPosDP.IsEmpty) and (chbPosFin.Checked) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        cdsPosFT.Filtered :=  true;
        cdsPosFT.Filter   :=  ' tipo_reg <> ''B'' ';
        cdsPosRE.Filtered :=  true;
        cdsPosRE.Filter   :=  ' tipo_reg <> ''B'' ';
        cdsPosDP.Filtered :=  true;
        cdsPosDP.Filter   :=  ' tipo_reg <> ''B'' ';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(CSU_FR_M_GER_PF.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;
        dmGeral.BusCodigoRevListMestre(true,false,CSU_FR_M_GER_PF.Name,xCodLme,xRevLme,nil);
        CSU_FR_M_GER_PF.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        CSU_FR_M_GER_PF.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        CSU_FR_M_GER_PF.PrepareReport();
        CSU_FR_M_GER_PF.ShowReport();

        cdsPosFT.Filtered :=  False;
        cdsPosRE.Filtered :=  False;
        cdsPosDP.Filtered :=  False;
      end;

  if (not dmGeral.BUS_CD_M_CSU_GER_PRC.IsEmpty) and (not dmGeral.BUS_CD_M_CSU_GER_PPG.IsEmpty) and (chbContRecPag.Checked) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(CSU_FR_M_GER_CRP.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;
        dmGeral.BusCodigoRevListMestre(true,false,CSU_FR_M_GER_CRP.Name,xCodLme,xRevLme,nil);
        CSU_FR_M_GER_CRP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        CSU_FR_M_GER_CRP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        CSU_FR_M_GER_CRP.PrepareReport();
        CSU_FR_M_GER_CRP.ShowReport();
      end;

  if (not cdsPosFe.IsEmpty) and (not cdsPosFF.IsEmpty) and (chbPosAtuEst.Checked) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        cdsPosFe.Filtered :=  true;
        cdsPosFe.Filter   :=  ' tipo_reg <> ''B'' ';
        cdsPosFF.Filtered :=  true;
        cdsPosFF.Filter   :=  ' tipo_reg <> ''B'' ';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(CSU_FR_M_GER_PAE.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;
        dmGeral.BusCodigoRevListMestre(true,false,CSU_FR_M_GER_PAE.Name,xCodLme,xRevLme,nil);
        CSU_FR_M_GER_PAE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        CSU_FR_M_GER_PAE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        CSU_FR_M_GER_PAE.PrepareReport();
        CSU_FR_M_GER_PAE.ShowReport();

        cdsPosFe.Filtered :=  false;
        cdsPosFF.Filtered :=  false;
      end;

  if (not dmGeral.BUS_CD_M_CSU_GER_XRC.IsEmpty) and (not dmGeral.BUS_CD_M_CSU_GER_XPG.IsEmpty)
    and (not cdsPosXCB.IsEmpty) and (chbFluCai.Checked) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        cdsPosXCB.Filtered :=  true;
        cdsPosXCB.Filter   :=  ' (tipo_reg <> ''B'') ';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(CSU_FR_M_GER_FCX.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;
        dmGeral.BusCodigoRevListMestre(true,false,CSU_FR_M_GER_FCX.Name,xCodLme,xRevLme,nil);
        CSU_FR_M_GER_FCX.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        CSU_FR_M_GER_FCX.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        CSU_FR_M_GER_FCX.PrepareReport();
        CSU_FR_M_GER_FCX.ShowReport();

        cdsPosXCB.Filtered :=  false;
    end;

  if (not BUS_CD_M_CSU_GER_ORV.IsEmpty) and (not BUS_CD_M_CSU_GER_ORV_MAR.IsEmpty)
     and (chbVeiculo.Checked) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(CSU_FR_M_GER_VEI.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;
        dmGeral.BusCodigoRevListMestre(true,false,CSU_FR_M_GER_VEI.Name,xCodLme,xRevLme,nil);
        CSU_FR_M_GER_VEI.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        CSU_FR_M_GER_VEI.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        CSU_FR_M_GER_VEI.PrepareReport();
        CSU_FR_M_GER_VEI.ShowReport();
      end;
end;

procedure TCSU_FM_M_GER.cdsPosFeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPosFetotal_custo_medio.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER.cdsPosFFBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPosFFtotal_custo_medio.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER.cdsPosDPBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  cdsPosDPano_anterior.DisplayFormat      := CMascaraValor;
  cdsPosDPano_atual.DisplayFormat         := CMascaraValor;
  cdsPosDPperc_ano_anterior.DisplayFormat := CMascaraValor;
  cdsPosDPperc_ano_atual.DisplayFormat    := CMascaraValor;
  cdsPosDPperc_faturamento.DisplayFormat  := '###,###,####0.0000';
  cdsPosDPtotal_geral.DisplayFormat       := CMascaraValor;
  cdsPosDPmes_jan.DisplayFormat := CMascaraValor;
  cdsPosDPmes_fev.DisplayFormat := CMascaraValor;
  cdsPosDPmes_mar.DisplayFormat := CMascaraValor;
  cdsPosDPmes_abr.DisplayFormat := CMascaraValor;
  cdsPosDPmes_mai.DisplayFormat := CMascaraValor;
  cdsPosDPmes_jun.DisplayFormat := CMascaraValor;
  cdsPosDPmes_jul.DisplayFormat := CMascaraValor;
  cdsPosDPmes_ago.DisplayFormat := CMascaraValor;
  cdsPosDPmes_set.DisplayFormat := CMascaraValor;
  cdsPosDPmes_out.DisplayFormat := CMascaraValor;
  cdsPosDPmes_nov.DisplayFormat := CMascaraValor;
  cdsPosDPmes_dez.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER.cdsPosFTBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPosFTmes_jan.DisplayFormat := CMascaraValor;
  cdsPosFTmes_fev.DisplayFormat := CMascaraValor;
  cdsPosFTmes_mar.DisplayFormat := CMascaraValor;
  cdsPosFTmes_abr.DisplayFormat := CMascaraValor;
  cdsPosFTmes_mai.DisplayFormat := CMascaraValor;
  cdsPosFTmes_jun.DisplayFormat := CMascaraValor;
  cdsPosFTmes_jul.DisplayFormat := CMascaraValor;
  cdsPosFTmes_ago.DisplayFormat := CMascaraValor;
  cdsPosFTmes_set.DisplayFormat := CMascaraValor;
  cdsPosFTmes_out.DisplayFormat := CMascaraValor;
  cdsPosFTmes_nov.DisplayFormat := CMascaraValor;
  cdsPosFTmes_dez.DisplayFormat := CMascaraValor;

  cdsPosFTtotal_grupo_ano_anterior.DisplayFormat := CMascaraValor;
  cdsPosFTtotal_grupo_ano_atual.DisplayFormat    := CMascaraValor;

  cdsPosFTperc_grupo_ano_anterior.DisplayFormat := CMascaraValor;
  cdsPosFTperc_grupo_ano_atual.DisplayFormat    := CMascaraValor;

  cdsPosFTrent_med_jan.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_fev.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_mar.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_abr.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_mai.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_jun.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_jul.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_ago.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_set.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_out.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_nov.DisplayFormat := CMascaraValor;
  cdsPosFTrent_med_dez.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER.cdsPosREBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPosREano_anterior.DisplayFormat      := CMascaraValor;
  cdsPosREano_atual.DisplayFormat         := CMascaraValor;
  cdsPosREperc_ano_anterior.DisplayFormat := CMascaraValor;
  cdsPosREperc_ano_atual.DisplayFormat    := CMascaraValor;
  cdsPosREtotal_geral.DisplayFormat       := CMascaraValor;
  cdsPosREmes_jan.DisplayFormat := CMascaraValor;
  cdsPosREmes_fev.DisplayFormat := CMascaraValor;
  cdsPosREmes_mar.DisplayFormat := CMascaraValor;
  cdsPosREmes_abr.DisplayFormat := CMascaraValor;
  cdsPosREmes_mai.DisplayFormat := CMascaraValor;
  cdsPosREmes_jun.DisplayFormat := CMascaraValor;
  cdsPosREmes_jul.DisplayFormat := CMascaraValor;
  cdsPosREmes_ago.DisplayFormat := CMascaraValor;
  cdsPosREmes_set.DisplayFormat := CMascaraValor;
  cdsPosREmes_out.DisplayFormat := CMascaraValor;
  cdsPosREmes_nov.DisplayFormat := CMascaraValor;
  cdsPosREmes_dez.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER.cdsPosXCBBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPosXCBsaldo.DisplayFormat            := CMascaraValor;
  cdsPosXCBsaldo_disponivel.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER.dgContasPagFutCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if BUS_CD_M_CSU_GER_PGF.FieldByName('tipo_reg').AsString = 'C' then
      begin
        AFont.Color := clWhite;
        ABrush.Color := clWhite;
      end;

  if BUS_CD_M_CSU_GER_PGF.FieldByName('tipo_reg').AsString = 'B' then
      begin
        AFont.Style  := [fsBold];
        ABrush.Color := $00F4F5F7;

        if (Field.Name = 'BUS_CD_M_CSU_GER_PGFid_forma_pag')  then
           begin
             AFont.Color := $00F4F5F7;
           end;
      end;

end;

procedure TCSU_FM_M_GER.dgEstoqueCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;

   if cdsPosFe.FieldByName('tipo_reg').AsString = 'C' then
      begin
        AFont.Style  := [fsBold];
        ABrush.Color := $00F4F5F7;
      end;


   if (Field.DataType = ftCurrency) or
      (Field.DataType = ftFMTBcd) or
      (Field.DataType = ftBCD) or
      (Field.DataType = ftExtended)  then
      if Field.AsCurrency < 0 then
         AFont.Color := clRed;

end;

procedure TCSU_FM_M_GER.dgEstoqueFFCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
    if cdsPosFF.FieldByName('tipo_reg').AsString = 'C' then
      begin
        AFont.Style  := [fsBold];
        ABrush.Color := $00F4F5F7;
      end;


   if (Field.DataType = ftCurrency) or
      (Field.DataType = ftFMTBcd) or
      (Field.DataType = ftBCD) or
      (Field.DataType = ftExtended)  then
      if Field.AsCurrency < 0 then
         AFont.Color := clRed;
end;

procedure TCSU_FM_M_GER.dgFlxSldCxaBcoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if (cdsPosXCB.FieldByName('tipo_reg').AsString = 'C') or
     (cdsPosXCB.FieldByName('tipo_reg').AsString = 'D') then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end;


   if (Field.DataType = ftCurrency) or
      (Field.DataType = ftFMTBcd) or
      (Field.DataType = ftBCD) or
      (Field.DataType = ftExtended)  then
      if Field.AsCurrency < 0 then
         AFont.Color := clRed;

end;

procedure TCSU_FM_M_GER.dgPosDepInvestCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if cdsPosDPInvest.FieldByName('tipo_reg').AsString = 'C' then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end;
end;

procedure TCSU_FM_M_GER.dgPosDespesasCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if cdsPosDP.FieldByName('tipo_reg').AsString = 'C' then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end;
end;

procedure TCSU_FM_M_GER.dgPosFaturamentoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;

  if cdsPosFT.FieldByName('tipo_reg').AsString = 'C' then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end;

  //if pos('rent_med',Field.Name) <> 0  then
  //   begin
       if (Field.DataType = ftCurrency) or
          (Field.DataType = ftFMTBcd) or
          (Field.DataType = ftBCD) or
          (Field.DataType = ftExtended)  then
          if Field.AsCurrency < 0 then
             AFont.Color := clRed;
   //  end;
  {if ABrush.Color = clWindow then
     ABrush.Color := $00DADADA
   else
     ABrush.Color := clWindow;}

   if (Field.FieldName = 'total_grupo_ano_atual') or (Field.FieldName = 'perc_grupo_ano_atual') then
       ABrush.Color := $00FCD1D1;

   if (Field.FieldName = 'mes_jan') or (Field.FieldName = 'rent_med_jan') or
     (Field.FieldName = 'mes_mar') or (Field.FieldName = 'rent_med_mar') or
     (Field.FieldName = 'mes_mai') or (Field.FieldName = 'rent_med_mai') or
     (Field.FieldName = 'mes_jul') or (Field.FieldName = 'rent_med_jul') or
     (Field.FieldName = 'mes_set') or (Field.FieldName = 'rent_med_set') or
     (Field.FieldName = 'mes_nov') or (Field.FieldName = 'rent_med_nov') then
     begin
       ABrush.Color :=  $00DCEEDB;
     end;
end;

procedure TCSU_FM_M_GER.dgPosFaturamentoDrawTitleCell(Sender: TObject;
  Canvas: TCanvas; Field: TField; Rect: TRect; var DefaultDrawing: Boolean);
var
 x: string;
begin
  inherited;

  {if (Field.FieldName = 'mes_jan') or (Field.FieldName = 'rent_med_jan') or
     (Field.FieldName = 'mes_mar') or (Field.FieldName = 'rent_med_mar') or
     (Field.FieldName = 'mes_mai') or (Field.FieldName = 'rent_med_mai') or
     (Field.FieldName = 'mes_jul') or (Field.FieldName = 'rent_med_jul') or
     (Field.FieldName = 'mes_set') or (Field.FieldName = 'rent_med_set') or
     (Field.FieldName = 'mes_nov') or (Field.FieldName = 'rent_med_nov') then
     begin
       dgPosFaturamento.Canvas.Brush.Color :=  $00DCEEDB;
       dgPosFaturamento.Canvas.Font.Color :=  clBlack;
       dgPosFaturamento.Canvas.FillRect(Rect);
     end;  }


{  if Field.FieldNo = 8 then
     begin
       dgPosFaturamento.Canvas.Brush.Color :=  $00DCEEDB;
       dgPosFaturamento.Canvas.Font.Color :=  clBlack;
       dgPosFaturamento.Canvas.FillRect(Rect);
//       canvas. .DefaultDrawDataCell(Rect,Field,dgPosFaturamento.);
     end;

  if Field.FieldNo = 9 then
     begin
       dgPosFaturamento.Canvas.Brush.Color :=  $00DCEEDB;
       dgPosFaturamento.Canvas.Font.Color :=  clBlack;
       dgPosFaturamento.Canvas.FillRect(Rect);
//       canvas. .DefaultDrawDataCell(Rect,Field,dgPosFaturamento.);
     end;

  if Field.FieldNo = 10 then
     begin
       dgPosFaturamento.Canvas.Brush.Color :=  $00DCEEDB;
       dgPosFaturamento.Canvas.Font.Color :=  clBlack;
       dgPosFaturamento.Canvas.FillRect(Rect);
//       canvas. .DefaultDrawDataCell(Rect,Field,dgPosFaturamento.);
     end; }

end;

procedure TCSU_FM_M_GER.dgPosRecebimentoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if cdsPosRE.FieldByName('tipo_reg').AsString = 'C' then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end;
end;

procedure TCSU_FM_M_GER.dgRentFornCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (pos('C',cdsRentForn.FieldByName('tipo_reg').AsString) <> 0) or
     (pos('B',cdsRentForn.FieldByName('tipo_reg').AsString) <> 0) then
//  if (cdsRentForn.FieldByName('tipo_reg').AsString = 'C') or
//     (cdsRentForn.FieldByName('tipo_reg').AsString = 'D') then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end;

       if (Field.DataType = ftCurrency) or
          (Field.DataType = ftFMTBcd) or
          (Field.DataType = ftBCD) or
          (Field.DataType = ftExtended)  then
          if Field.AsCurrency < 0 then
             AFont.Color := clRed;

   if (Field.FieldName = 'total_fornecedor_ano_atual') or (Field.FieldName = 'perc_fornecedor_ano_atual') then
       ABrush.Color := $00FCD1D1;

   if (Field.FieldName = 'mes_jan') or (Field.FieldName = 'rent_med_jan') or
     (Field.FieldName = 'mes_mar') or (Field.FieldName = 'rent_med_mar') or
     (Field.FieldName = 'mes_mai') or (Field.FieldName = 'rent_med_mai') or
     (Field.FieldName = 'mes_jul') or (Field.FieldName = 'rent_med_jul') or
     (Field.FieldName = 'mes_set') or (Field.FieldName = 'rent_med_set') or
     (Field.FieldName = 'mes_nov') or (Field.FieldName = 'rent_med_nov') then
     begin
       ABrush.Color :=  $00DCEEDB;
     end;
end;

procedure TCSU_FM_M_GER.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_M_CSU_GER_PFT.Close;
  dmGeral.BUS_CD_M_CSU_GER_PFT_EMP.Close;
  dmGeral.BUS_CD_M_CSU_GER_PRE.Close;
  dmGeral.BUS_CD_M_CSU_GER_PDE.Close;
  dmGeral.BUS_CD_M_CSU_GER_PRC.Close;
  dmGeral.BUS_CD_M_CSU_GER_PPG.Close;
  dmGeral.BUS_CD_M_CSU_GER_PFE.Close;

  dmGeral.BUS_CD_M_CSU_GER_XRC.Close;
  dmGeral.BUS_CD_M_CSU_GER_XPG.Close;
  dmGeral.BUS_CD_M_CSU_GER_XCB.Close;

  dmGeral.BUS_CD_M_CSU_GER_XCB.Close;

  FreeAndNil(CSU_FM_M_GER);
end;

procedure TCSU_FM_M_GER.FormCreate(Sender: TObject);
begin
  inherited;

//  cdsPosFT.close;
  cdsPosFT.CreateDataSet;
  cdsRentForn.CreateDataSet;
  cdsRentVen.CreateDataSet;
  cdsPosRE.CreateDataSet;
  cdsPosDP.CreateDataSet;
  cdsPosDPInvest.CreateDataSet;
  cdsPosFe.CreateDataSet;
  cdsPosFF.CreateDataSet;

  cdsPosXCB.CreateDataSet;


end;

procedure TCSU_FM_M_GER.FormResize(Sender: TObject);
begin
  inherited;
//  dgContasRec.top := (ts.Height div 2) - (pnlCentral.height div 2);
  lbPosRec.left := (tsRecPag.Width div 2) - (lbPosRec.width div 2);
  lbPosPag.left := (tsRecPag.Width div 2) - (lbPosPag.width div 2);
  dgContasRec.left := (tsRecPag.Width div 2) - (dgContasRec.width div 2);
  dgContasPag.left := (tsRecPag.Width div 2) - (dgContasPag.width div 2);
  lbPosPagFut.left := (tsRecPag.Width div 2) - (lbPosPagFut.width div 2);
  dgContasPagFut.left := (tsRecPag.Width div 2) - (dgContasPagFut.width div 2);



 { lblPosEstAtual.Left := (tsPosEstAtual.Width div 2) - (lblPosEstAtual.width div 2);
 // dgEstoque.top := (tsPosEstAtual.Height div 2) - (pnPosEstAtual.height div 2);
  dgEstoque.Left      := (tsPosEstAtual.Width div 2) - (dgEstoque.width div 2);
  lblPosEstAtual.top := dgEstoque.Top - 20;  }

  pnPosEstAtual2.Left := (tsPosEstAtual.Width div 2) - (pnPosEstAtual2.width div 2);



end;

procedure TCSU_FM_M_GER.FormShow(Sender: TObject);
var
  i: integer;
  Dias: Array[1..15] of String;
  dia,mes,ano: word;
  Data: TDate;
  t: Integer;
  UltDiaMesIni,UltDiaMesFim: Integer;
  x: Extended;
  MesIni_GER_PGF: Integer;
begin
  inherited;
  //------Preenche dados das Filiais
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
          dmGeral.BUS_CD_C_PAR.DataRequest(
                  VarArrayOf([1, '']));

   dmGeral.BUS_CD_C_PAR.First;
   while not dmGeral.BUS_CD_C_PAR.Eof do
         begin
           chkEmpresa.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('id_empresa').AsInteger,2,0)+'-'+
                                       dmGeral.BUS_CD_C_PAR.FieldByName('emp_fantasia').AsString   );
           dmGeral.BUS_CD_C_PAR.Next;
         end;

  dmGeral.BUS_CD_C_PAR.close;
  //txtAno.SetFocus;

//  dmGeral.BUS_CD_M_CSU_GER_XRC.Open;
//  dmGeral.BUS_CD_M_CSU_GER_XPG.Open;

  dgFlxRecebimento.Columns[4].DisplayLabel := 'Hoje';
  dgFlxPagamentos.Columns[4].DisplayLabel := 'Hoje';

  data := xDataSis;
  t := 5;
  for i := 1 to 15 do
   begin
     Data    := Data + 1;
     DecodeDate(Data,ano,mes,dia);
     Dias[i] := inttostr(dia);
     dgFlxRecebimento.Columns[t].DisplayLabel := 'Dia ' + Dias[i];
     dgFlxPagamentos.Columns[t].DisplayLabel := 'Dia ' + Dias[i];
     inc(t);
   end;

  frmSoftMenu.rbMenu.ShowTabGroups := false;

  jpgGerencial.ActivePage := tsRecPag;

  BUS_CD_M_CSU_GER_PGF.Open;
  // Aba Contas a Receber e Contas a Pagar, Grid Pagamentos Futuros.
  DecodeDate(xDataSis,ano,mes,dia);

  UltDiaMesIni :=  StrToInt(copy(DateToStr(EndOfTheMonth(date)),1,2));

  MesIni_GER_PGF  := mes;
  xMesIni_PGF :=  MesIni_GER_PGF;
  if dia = UltDiaMesIni  then
     begin
       MesIni_GER_PGF := mes + 1;
       xMesIni_PGF :=  MesIni_GER_PGF;
     end;

  if MesIni_GER_PGF = 13 then
     begin
       MesIni_GER_PGF := 1;
       ano             := ano + 1;

       xMesIni_PGF :=  MesIni_GER_PGF;
     end;


  dgContasPagFut.Columns[6].DisplayLabel := inttostr(MesIni_GER_PGF)+'/'+inttostr(ano);
  inc(MesIni_GER_PGF);
  if MesIni_GER_PGF = 13 then
     begin
       MesIni_GER_PGF := 1;
       ano             := ano + 1;
     end;
  dgContasPagFut.Columns[7].DisplayLabel := inttostr(MesIni_GER_PGF)+'/'+inttostr(ano);

  inc(MesIni_GER_PGF);
  if MesIni_GER_PGF = 13 then
     begin
       MesIni_GER_PGF := 1;
       ano             := ano + 1;
     end;
  dgContasPagFut.Columns[8].DisplayLabel := inttostr(MesIni_GER_PGF)+'/'+inttostr(ano);

  inc(MesIni_GER_PGF);
  if MesIni_GER_PGF = 13 then
     begin
       MesIni_GER_PGF := 1;
       ano             := ano + 1;
     end;
  dgContasPagFut.Columns[9].DisplayLabel := inttostr(MesIni_GER_PGF)+'/'+inttostr(ano);

  inc(MesIni_GER_PGF);
  if MesIni_GER_PGF = 13 then
     begin
       MesIni_GER_PGF := 1;
       ano             := ano + 1;
     end;
  dgContasPagFut.Columns[10].DisplayLabel := inttostr(MesIni_GER_PGF)+'/'+inttostr(ano);

  inc(MesIni_GER_PGF);
  if MesIni_GER_PGF = 13 then
     begin
       MesIni_GER_PGF := 1;
       ano             := ano + 1;
     end;
  dgContasPagFut.Columns[11].DisplayLabel := inttostr(MesIni_GER_PGF)+'/'+inttostr(ano);

  xMesFim_GER_PGF  := MesIni_GER_PGF;

  xDataFim_GER_PGF :=  enCodeDate(ano,xMesFim_GER_PGF,1);

  UltDiaMesFim := StrToInt(copy(DateToStr(EndOfTheMonth(xDataFim_GER_PGF)),1,2));

  xDataFim_GER_PGF := enCodeDate(ano,xMesFim_GER_PGF,UltDiaMesFim);


  tsVeiculo.TabVisible := false;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldBYName('OME').AsBoolean = true) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldBYName('OTA').AsBoolean = true) or
     (dmGeral.CAD_CD_C_PAR_MOD.FieldBYName('OQP').AsBoolean = true) then
     tsVeiculo.TabVisible := true;


  jpgGerencial.ActivePage :=  tbFiltro;
end;

procedure TCSU_FM_M_GER.jpgGerencialChange(Sender: TObject);
begin
  inherited;
  if jpgGerencial.ActivePage = tsSair then
     begin
       frmSoftMenu.rbMenu.ShowTabGroups := true;
       cdsPosFT.Close;
       Close;
     end;
end;

procedure TCSU_FM_M_GER.tbFluxoCxaShow(Sender: TObject);
var
  i: integer;
  Dias: Array[1..15] of String;
  dia,mes,ano: word;
  Data: TDate;
  t: Integer;
begin
  inherited;
  dgFlxRecebimento.Columns[4].DisplayLabel := 'Hoje';
  dgFlxPagamentos.Columns[4].DisplayLabel := 'Hoje';

  data := now;
  t := 5;
  for i := 1 to 15 do
   begin
     Data    := Data + 1;
     DecodeDate(Data,ano,mes,dia);
     Dias[i] := inttostr(dia);
     dgFlxRecebimento.Columns[t].DisplayLabel := 'Dia ' + Dias[i];
     dgFlxPagamentos.Columns[t].DisplayLabel := 'Dia ' + Dias[i];
     inc(t);
   end;
end;

procedure TCSU_FM_M_GER.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;


  if (pos('B',cdsRentVen.FieldByName('tipo_reg').AsString) <> 0) then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end;

 { if cdsRentVen.FieldByName('tipo_reg').AsString = 'C' then
     begin
       AFont.Style  := [fsBold];
       ABrush.Color := $00F4F5F7;
     end; }

       if (Field.DataType = ftCurrency) or
          (Field.DataType = ftFMTBcd) or
          (Field.DataType = ftBCD) or
          (Field.DataType = ftExtended)  then
          if Field.AsCurrency < 0 then
             AFont.Color := clRed;

   if (Field.FieldName = 'total_vendedor_ano_atual') or (Field.FieldName = 'perc_vendedor_ano_atual') then
       ABrush.Color := $00FCD1D1;

   if (Field.FieldName = 'mes_jan') or (Field.FieldName = 'rent_med_jan') or
     (Field.FieldName = 'mes_mar') or (Field.FieldName = 'rent_med_mar') or
     (Field.FieldName = 'mes_mai') or (Field.FieldName = 'rent_med_mai') or
     (Field.FieldName = 'mes_jul') or (Field.FieldName = 'rent_med_jul') or
     (Field.FieldName = 'mes_set') or (Field.FieldName = 'rent_med_set') or
     (Field.FieldName = 'mes_nov') or (Field.FieldName = 'rent_med_nov') then
     begin
       ABrush.Color :=  $00DCEEDB;
     end;
end;

procedure TCSU_FM_M_GER.wwDBGrid3RowChanged(Sender: TObject);
begin
  inherited;

    if not BUS_CD_M_CSU_GER_ORV.IsEmpty then
      begin
         BUS_CD_M_CSU_GER_ORV_MAR.Close;
         BUS_CD_M_CSU_GER_ORV_MAR.Data :=
         BUS_CD_M_CSU_GER_ORV_MAR.DataRequest(
                     VarArrayOf([BUS_CD_M_CSU_GER_ORV.FieldByName('ID_EMPRESA').AsString,
                                 BUS_CD_M_CSU_GER_ORV.FieldBYName('ANO').AsString]));
      end;



end;

end.
