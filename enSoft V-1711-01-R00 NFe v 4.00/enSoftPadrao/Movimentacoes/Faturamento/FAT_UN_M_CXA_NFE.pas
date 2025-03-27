{$I ACBr.inc}
unit FAT_UN_M_CXA_NFE;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, Vcl.DBCtrls,
  ACBrNFe,pcnConversao,pnfsConversao, pcnConversaoNFe, ACBrNFeDANFEClass, ACBrUtil,
  pcnNFeW, pcnNFeRTXT, pcnAuxiliar, ACBrDFeUtil, Math,
  XMLIntf, XMLDoc, ACBrNFeDANFEFR,

  Vcl.OleCtrls, SHDocVw, Vcl.ComCtrls, Vcl.Menus, frxExportXLS, frxClass,
  frxExportPDF, frxDBSet, Vcl.Buttons, ACBrNFeDANFEFRDM, Vcl.ImgList,
  ACBrNFeDANFeESCPOS, ACBrBase, ACBrDFe, ACBrMail, ACBrNFSe, RDprint,
  ACBrDFeReport, ACBrDFeDANFeReport, Data.DBXDataSnap, IPPeerClient, System.IniFiles,
  Data.DBXCommon, Data.SqlExpr, Datasnap.DBClient, vcl.Wwdbedit,
  Datasnap.DSConnect;


type
  TFAT_FM_M_CXA_NFE = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    pnlPrincipal: TPanel;
    gbxFaturamento: TGroupBox;
    lblProtocolo: TLabel;
    lblChave: TLabel;
    txtProtocolo: TDBEdit;
    txtChave: TDBEdit;
    dbGrid: TwwDBGrid;
    dso: TwwDataSource;
    lblPedido: TLabel;
    txtPedido: TDBEdit;
    gbStatus: TGroupBox;
    FAT_DS_M_NFE_ITE: TwwDataSource;
    FAT_DS_M_NFE_TIT: TwwDataSource;
    txtVendedor: TDBEdit;
    Label1: TLabel;
    txtResponsavel: TDBEdit;
    Label2: TLabel;
    NFE: TACBrNFe;
    Danfe: TACBrNFeDANFEFR;
    odNfe: TOpenDialog;
    pgNfeDados: TPageControl;
    tsItens: TTabSheet;
    dgItens: TwwDBGrid;
    btnGeraPdf: TButton;
    Label3: TLabel;
    txtValidadeCert: TEdit;
    Label4: TLabel;
    txtSerieCert: TEdit;
    tsTitulos: TTabSheet;
    grdTitulos: TwwDBGrid;
    MemoDados: TMemo;
    memoLog: TMemo;
    WBResposta: TWebBrowser;
    MemoResp: TMemo;
    memoRespWS: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    lblAberto: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnlAberto: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel1: TPanel;
    Label9: TLabel;
    pmApoio: TPopupMenu;
    GerarPrVenda1: TMenuItem;
    FAT_PD_M_TER_NFE: TfrxPDFExport;
    FAT_XL_M_TER_NFE: TfrxXLSExport;
    tsInfFiscal: TTabSheet;
    txtNfeObs: TDBMemo;
    DadosdoTransportador1: TMenuItem;
    btnSalvarInfFis: TBitBtn;
    btnAlterarInfFis: TBitBtn;
    TreeViewRetornoConsulta: TTreeView;
    btnEnviarEmail: TButton;
    mmEmailMsg: TMemo;
    FAT_CD_M_TER_NFE: TfrxReport;
    BUS_DB_M_CXA_NFE: TfrxDBDataset;
    FAT_DB_M_TER_NFE: TfrxDBDataset;
    ImprimirTermo1: TMenuItem;
    pmApoioTit: TPopupMenu;
    Informarmaquineta1: TMenuItem;
    ImageListBtn: TImageList;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    ACBrMail1: TACBrMail;
    Label10: TLabel;
    txtCSC: TEdit;
    Label11: TLabel;
    txtToken: TEdit;
    txtAmbiente: TEdit;
    Label12: TLabel;
    txtSchemas: TEdit;
    Label13: TLabel;
    txtReport: TEdit;
    mmoReciboBoleto: TMemo;
    NFSe: TACBrNFSe;
    FaturarnotafiscalapsXML1: TMenuItem;
    Cancelarnotafiscalsomentenosistema1: TMenuItem;
    CancelarnotafiscalsomentenaSEFAZ1: TMenuItem;
    btnGerarXMLImportacao: TMenuItem;
    btnImprimirPedVenda: TMenuItem;
    FAT_FR_M_PED_REV: TfrxReport;
    FAT_FR_M_PED_SGQ2: TfrxReport;
    FAT_FR_M_PED_SGQ: TfrxReport;
    FAT_FD_M_PED: TfrxDBDataset;
    FAT_FD_M_PED_ITE: TfrxDBDataset;
    CAD_FD_C_PAR: TfrxDBDataset;
    FAT_FD_M_PED_TIT: TfrxDBDataset;
    BUS_FD_C_CLI: TfrxDBDataset;
    rdPedCompleto: TRDprint;
    btnImprimirDupAceite: TMenuItem;
    FAT_FR_M_CXA_DUP: TfrxReport;
    FAT_DP_M_CXA_NFE: TfrxDBDataset;
    FAT_DP_M_CXA_NFE_TIT: TfrxDBDataset;
    FAT_FR_M_CXA_RVS: TfrxReport;
    Reimprimir1: TMenuItem;
    pmApoioNFSe: TPopupMenu;
    FaturarsemRPS1: TMenuItem;
    pnNfeNFSe: TPanel;
    lblPIS: TLabel;
    btnNotaFiscal: TButton;
    btnCupomFiscal: TButton;
    btnNfc: TBitBtn;
    btnInutilizar: TButton;
    btnCancelaNFE: TButton;
    btnCartaCorrecao: TButton;
    btnImprimeEvento: TButton;
    btnCancelaNfeAnt: TButton;
    btnCancelaEcf: TButton;
    btnImprimeNFE: TButton;
    btnVerificaServico: TButton;
    btnConsultaNfe: TButton;
    btnImprimirPromissoria: TButton;
    btnAtualizaTela: TButton;
    btnGeraBoleto: TButton;
    btnImprimeTitulo: TButton;
    btnGeraNFeECF: TButton;
    btnBuscarPedido: TButton;
    btnSair: TButton;
    btnGeraEnviaRPS: TBitBtn;
    btnNFSeAvulsa: TBitBtn;
    btnCancelarNFSe: TButton;
    btnImpEtiqueta: TMenuItem;
    pmImpTitCheque: TPopupMenu;
    ImprimirTttuloparaCheque1: TMenuItem;
    btnCancelarNFSDiaAnt: TBitBtn;
    btnDesfazerPreVenda: TMenuItem;
    tsPedidosProd: TTabSheet;
    txtPedidoProd1: TwwDBEdit;
    Label14: TLabel;
    vlrPedProd1: TwwDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    txtPedidoProd2: TwwDBEdit;
    vlrPedProd2: TwwDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    txtPedidoProd3: TwwDBEdit;
    vlrPedProd3: TwwDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    vlrPedProd4: TwwDBEdit;
    txtPedidoProd4: TwwDBEdit;
    Label22: TLabel;
    txtPedidoProd5: TwwDBEdit;
    vlrPedProd5: TwwDBEdit;
    Label23: TLabel;
    BUS_CD_M_PED_PCP: TClientDataSet;
    BUS_CD_M_PED_PCPid_pedido: TIntegerField;
    BUS_CD_M_PED_PCPid_empresa: TIntegerField;
    BUS_CD_M_PED_PCPdta_pedido: TDateField;
    BUS_CD_M_PED_PCPid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_PED_PCPid_vendedor: TIntegerField;
    BUS_CD_M_PED_PCPvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_PCPvlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_PCPper_desconto: TFloatField;
    BUS_CD_M_PED_PCPvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_PCPid_condicao_pag: TIntegerField;
    BUS_CD_M_PED_PCPpcp_id_opr: TIntegerField;
    BUS_CD_M_PED_PCPsituacao: TIntegerField;
    BUS_CD_M_PED_PCPsituacao_aprovacao: TIntegerField;
    BUS_CD_M_PED_PCPid_atendente: TIntegerField;
    BUS_CD_M_PED_PCPid_responsavel: TIntegerField;
    BUS_CD_M_PED_PCPid_cliente: TIntegerField;
    BUS_CD_M_PED_PCPtipo_restricao: TWideStringField;
    BUS_CD_M_PED_PCPid_almoxarifado: TIntegerField;
    BUS_CD_M_PED_PCPint_nomecli: TWideStringField;
    BUS_CD_M_PED_PCPint_nometme: TWideStringField;
    BUS_CD_M_PED_PCPint_nomefun: TWideStringField;
    BUS_CD_M_PED_PCPint_nomecpg: TWideStringField;
    BUS_CD_M_PED_PCPint_nomeate: TWideStringField;
    BUS_CD_M_PED_PCPint_nomeres: TWideStringField;
    BUS_CD_M_PED_PCPFAT_SQ_M_PED_TIT: TDataSetField;
    BUS_CD_M_PED_PCPFAT_SQ_M_PED_ITE: TDataSetField;
    BUS_CD_M_PED_PCPint_nomeest: TWideStringField;
    BUS_CD_M_PED_PCPint_cpfcnpj: TWideStringField;
    BUS_CD_M_PED_PCPint_id_perfil: TIntegerField;
    BUS_CD_M_PED_PCPjustificativa: TWideStringField;
    BUS_CD_M_PED_PCPid_usuario_lib: TIntegerField;
    BUS_CD_M_PED_PCPhor_pedido: TSQLTimeStampField;
    BUS_CD_M_PED_PCPcod_lme: TWideStringField;
    BUS_CD_M_PED_PCPrev_lme: TWideStringField;
    BUS_CD_M_PED_PCPorigem: TIntegerField;
    BUS_CD_M_PED_PCPdispositivo: TWideStringField;
    BUS_CD_M_PED_PCPgps_latitude: TFloatField;
    BUS_CD_M_PED_PCPgps_longitude: TFloatField;
    BUS_CD_M_PED_PCPcubagem: TFloatField;
    BUS_CD_M_PED_PCPint_pessoacli: TIntegerField;
    BUS_CD_M_PED_PCPid_orcamento: TIntegerField;
    BUS_CD_M_PED_PCPint_sitaprov: TWideStringField;
    BUS_CD_M_PED_PCPint_sitped: TWideStringField;
    BUS_CD_M_PED_PCPenvia_carga: TBooleanField;
    BUS_CD_M_PED_PCPdta_prev_entrega: TDateField;
    BUS_CD_M_PED_PCPid_ors: TIntegerField;
    BUS_CD_M_PED_PCPint_nomecid: TWideStringField;
    BUS_CD_M_PED_PCPid_abertura: TIntegerField;
    BUS_CD_M_PED_PCPint_ie_rg_cli: TWideStringField;
    BUS_CD_M_PED_PCPint_selecao: TBooleanField;
    BUS_CD_M_PED_PCPdias_cpg_prazo: TIntegerField;
    BUS_CD_M_PED_PCPint_nomereg: TWideStringField;
    BUS_CD_M_PED_PCPoffline: TBooleanField;
    BUS_CD_M_PED_PCPconferido: TBooleanField;
    BUS_CD_M_PED_PCPid_conf: TIntegerField;
    BUS_CD_M_PED_PCPdta_conf: TDateField;
    BUS_CD_M_PED_PCPhor_conf: TTimeField;
    BUS_CD_M_PED_PCPresultado_conf: TIntegerField;
    BUS_CD_M_PED_PCPid_resp_conf: TIntegerField;
    BUS_CD_M_PED_PCPint_nome_rcn: TWideStringField;
    BUS_CD_M_PED_PCPid_propriedade: TIntegerField;
    BUS_CD_M_PED_PCPmod_frete: TIntegerField;
    BUS_CD_M_PED_PCPvlr_frete: TFMTBCDField;
    BUS_CD_M_PED_PCPid_mkt: TIntegerField;
    BUS_CD_M_PED_PCPint_numloteopr: TWideStringField;
    BUS_CD_M_PED_PCPid_motorista: TIntegerField;
    BUS_CD_M_PED_PCPid_placa: TWideStringField;
    BUS_CD_M_PED_PCPint_nomemta: TWideStringField;
    BUS_CD_M_PED_PCPvlr_credito: TFMTBCDField;
    BUS_CD_M_PED_PCPvlr_desc_especial: TFMTBCDField;
    BUS_CD_M_PED_PCPvlr_desc_basico: TFMTBCDField;
    BUS_CD_M_PED_PCPsgq_per_comissao: TFloatField;
    BUS_CD_M_PED_PCPint_sitped2: TWideStringField;
    BUS_CD_M_PED_PCPqtde_volume: TFloatField;
    BUS_CD_M_PED_PCPvlr_icm_desn: TFMTBCDField;
    BUS_CD_M_PED_PCPint_sitord: TIntegerField;
    BUS_CD_M_PED_PCPvlr_desc_produtos: TFMTBCDField;
    BUS_CD_M_PED_PCPper_desc_produtos: TFloatField;
    BUS_CD_M_PED_PCPvlr_produtos: TFMTBCDField;
    BUS_CD_M_PED_PCPvlr_serv_bruto: TFMTBCDField;
    BUS_CD_M_PED_PCPvlr_desc_servicos: TFMTBCDField;
    BUS_CD_M_PED_PCPper_desc_servicos: TFloatField;
    BUS_CD_M_PED_PCPvlr_ser_liquido: TFMTBCDField;
    BUS_CD_M_PED_PCPvlr_terceiro: TFMTBCDField;
    BUS_CD_M_PED_PCPvlr_desc_terceiro: TFMTBCDField;
    BUS_CD_M_PED_PCPper_desc_terceiro: TFloatField;
    BUS_CD_M_PED_PCPvlr_terc_liquido: TFMTBCDField;
    BUS_CD_M_PED_PCPped_gera_fin_separado: TBooleanField;
    BUS_CD_M_PED_PCPFAT_SQ_M_PED_TIT_SER: TDataSetField;
    BUS_CD_M_PED_PCPvlr_prod_liquido: TFMTBCDField;
    BUS_CD_M_PED_PCPsepara_prod_serv: TBooleanField;
    BUS_CD_M_PED_PCPvlr_cred_produtos: TFMTBCDField;
    BUS_CD_M_PED_PCPvlr_cred_servicos: TFMTBCDField;
    BUS_CD_M_PED_PCPobs: TWideStringField;
    BUS_CD_M_PED_PCPid_mecanico: TIntegerField;
    BUS_CD_M_PED_PCPsgq_texto_cond_pgto: TWideStringField;
    BUS_CD_M_PED_PCPper_desc_basico: TFloatField;
    BUS_CD_M_PED_PCPper_desc_especial: TFloatField;
    BUS_CD_M_PED_PCPdta_liberacao: TDateField;
    BUS_CD_M_PED_PCPint_nomelib: TWideStringField;
    BUS_CD_M_PED_PCPpcp_obs: TWideStringField;
    BUS_CD_M_PED_PCPpedido_origem_aut: TIntegerField;
    BUS_CD_M_PED_PCPpedido_automatico: TBooleanField;
    ConexaoBDFat: TSQLConnection;
    pcConecaoDBFat: TDSProviderConnection;
    FIN_CD_M_REC_PCP: TClientDataSet;
    FIN_CD_M_REC_PCPid_empresa: TIntegerField;
    FIN_CD_M_REC_PCPhistorico: TWideStringField;
    FIN_CD_M_REC_PCPid_titulo: TIntegerField;
    FIN_CD_M_REC_PCPid_cliente: TIntegerField;
    FIN_CD_M_REC_PCPnum_parcela: TWideStringField;
    FIN_CD_M_REC_PCPdta_emissao: TDateField;
    FIN_CD_M_REC_PCPvlr_parcela: TFMTBCDField;
    FIN_CD_M_REC_PCPvlr_original: TFMTBCDField;
    FIN_CD_M_REC_PCPdta_vencimento: TDateField;
    FIN_CD_M_REC_PCPdta_original: TDateField;
    FIN_CD_M_REC_PCPvlr_saldo: TFMTBCDField;
    FIN_CD_M_REC_PCPid_fiscal: TIntegerField;
    FIN_CD_M_REC_PCPorigem: TIntegerField;
    FIN_CD_M_REC_PCPid_forma_pag: TIntegerField;
    FIN_CD_M_REC_PCPche_conta: TIntegerField;
    FIN_CD_M_REC_PCPche_cheque: TIntegerField;
    FIN_CD_M_REC_PCPche_banco: TWideStringField;
    FIN_CD_M_REC_PCPche_emitente: TWideStringField;
    FIN_CD_M_REC_PCPche_agencia: TWideStringField;
    FIN_CD_M_REC_PCPtipo_lancamento: TIntegerField;
    FIN_CD_M_REC_PCPid_local_titulo: TIntegerField;
    FIN_CD_M_REC_PCPid_plano: TWideStringField;
    FIN_CD_M_REC_PCPint_nomecli: TWideStringField;
    FIN_CD_M_REC_PCPint_nomefpg: TWideStringField;
    FIN_CD_M_REC_PCPint_nomelto: TWideStringField;
    FIN_CD_M_REC_PCPint_nomepct: TWideStringField;
    FIN_CD_M_REC_PCPcod_lme: TWideStringField;
    FIN_CD_M_REC_PCPrev_lme: TWideStringField;
    FIN_CD_M_REC_PCPcar_taxa: TFloatField;
    FIN_CD_M_REC_PCPcar_motivo_can: TWideStringField;
    FIN_CD_M_REC_PCPcar_dta_can: TDateField;
    FIN_CD_M_REC_PCPbol_nosso_numero: TWideStringField;
    FIN_CD_M_REC_PCPint_cnpjcpf: TWideStringField;
    FIN_CD_M_REC_PCPint_bairrocob: TWideStringField;
    FIN_CD_M_REC_PCPint_endcob: TWideStringField;
    FIN_CD_M_REC_PCPint_estadocob: TWideStringField;
    FIN_CD_M_REC_PCPint_cepcob: TWideStringField;
    FIN_CD_M_REC_PCPint_cidcob: TWideStringField;
    FIN_CD_M_REC_PCPint_emailcli: TWideStringField;
    FIN_CD_M_REC_PCPseq_nosso_numero: TIntegerField;
    FIN_CD_M_REC_PCPbol_chave: TIntegerField;
    FIN_CD_M_REC_PCPint_numeronf: TIntegerField;
    FIN_CD_M_REC_PCPbol_id_conta: TIntegerField;
    FIN_CD_M_REC_PCPcar_taxa_ope: TFloatField;
    FIN_CD_M_REC_PCPcar_n_lote_id_resp: TIntegerField;
    FIN_CD_M_REC_PCPcar_n_lote_id_conta: TIntegerField;
    FIN_CD_M_REC_PCPid_baixa: TIntegerField;
    FIN_CD_M_REC_PCPcar_n_lote: TWideStringField;
    FIN_CD_M_REC_PCPsituacao_chq: TIntegerField;
    FIN_CD_M_REC_PCPid_mch: TIntegerField;
    FIN_CD_M_REC_PCPid_vendedor: TIntegerField;
    FIN_CD_M_REC_PCPcar_id_maquineta: TIntegerField;
    FIN_CD_M_REC_PCPid_credito: TIntegerField;
    FIN_CD_M_REC_PCPint_docimpresso: TIntegerField;
    FIN_CD_M_REC_PCPbol_banco: TIntegerField;
    FIN_CD_M_REC_PCPid_obra: TIntegerField;
    FIN_CD_M_REC_PCPdta_venc_original: TDateField;
    FIN_CD_M_REC_PCPint_descobra: TWideStringField;
    PCP_CD_M_ORS_PCP: TClientDataSet;
    PCP_CD_M_ORS_PCPid_ors: TIntegerField;
    PCP_CD_M_ORS_PCPdta_emissao: TDateField;
    PCP_CD_M_ORS_PCPint_nomeres: TWideStringField;
    PCP_CD_M_ORS_PCPid_empresa: TIntegerField;
    PCP_CD_M_ORS_PCPid_responsavel: TIntegerField;
    PCP_CD_M_ORS_PCPobservacao: TWideStringField;
    PCP_CD_M_ORS_PCPid_pedido: TIntegerField;
    PCP_CD_M_ORS_PCPPCP_SQ_M_ORS_TIT: TDataSetField;
    PCP_CD_M_ORS_PCPPCP_SQ_M_ORS_ITE: TDataSetField;
    PCP_CD_M_ORS_PCPcod_lme: TWideStringField;
    PCP_CD_M_ORS_PCPrev_lme: TWideStringField;
    PCP_CD_M_ORS_PCPid_motorista: TIntegerField;
    PCP_CD_M_ORS_PCPint_nomemta: TWideStringField;
    PCP_CD_M_ORS_PCPint_nomecli: TWideStringField;
    PCP_CD_M_ORS_PCPint_telfixo: TWideStringField;
    PCP_CD_M_ORS_PCPid_rom: TIntegerField;
    PCP_CD_M_ORS_PCPint_nomeresp_rom: TWideStringField;
    PCP_CD_M_ORS_PCPint_dta_rom: TDateField;
    PCP_CD_M_ORS_PCPint_id_opr: TIntegerField;
    PCP_CD_M_ORS_PCPint_nomeven: TWideStringField;
    PCP_CD_M_ORS_PCPid_tipo_mov_estoque: TIntegerField;
    PCP_CD_M_ORS_PCPid_almoxarifado: TIntegerField;
    PCP_CD_M_ORS_PCPvlr_bruto: TFMTBCDField;
    PCP_CD_M_ORS_PCPvlr_desconto: TFMTBCDField;
    PCP_CD_M_ORS_PCPper_desconto: TFloatField;
    PCP_CD_M_ORS_PCPvlr_liquido: TFMTBCDField;
    PCP_CD_M_ORS_PCPhor_emissao: TTimeField;
    PCP_CD_M_ORS_PCPid_abertura: TIntegerField;
    PCP_CD_M_ORS_PCPfin_gerado: TBooleanField;
    PCP_CD_M_ORS_PCPint_id_condicao_pag: TIntegerField;
    PCP_CD_M_ORS_PCPint_desc_cpg: TWideStringField;
    PCP_CD_M_ORS_PCPPCP_SQ_M_ORS_ICO: TDataSetField;
    PCP_CD_M_ORS_PCPint_numloteopr: TWideStringField;
    PCP_CD_M_ORS_PCPint_id_cliente: TIntegerField;
    PCP_CD_M_ORS_PCPid_fiscal: TIntegerField;
    N1: TMenuItem;
    miFaturaSemPedido: TMenuItem;
    Button1: TButton;
    cbTimeServices: TComboBox;
    Label24: TLabel;
    procedure btnImprimeNFEClick(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure btnVerificaServicoClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnCancelaNFEClick(Sender: TObject);
    procedure btnCartaCorrecaoClick(Sender: TObject);
    procedure btnGeraPdfClick(Sender: TObject);
    procedure btnImprimeEventoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NFEStatusChange(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure GerarPrVenda1Click(Sender: TObject);
    procedure btnCupomFiscalClick(Sender: TObject);
    procedure btnImprimeTituloClick(Sender: TObject);
    procedure DadosdoTransportador1Click(Sender: TObject);
    procedure btnSalvarInfFisClick(Sender: TObject);
    procedure btnAlterarInfFisClick(Sender: TObject);
    procedure grdTitulosDblClick(Sender: TObject);
    procedure grdTitulosCellChanged(Sender: TObject);
    procedure grdTitulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsInfFiscalExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnGeraBoletoClick(Sender: TObject);
    procedure btnGeraNFeECFClick(Sender: TObject);
    procedure btnAtualizaTelaClick(Sender: TObject);
    procedure btnConsultaNfeClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure ImprimirTermo1Click(Sender: TObject);
    procedure Informarmaquineta1Click(Sender: TObject);
    procedure btnImprimirPromissoriaClick(Sender: TObject);
    procedure btnFaturarClick(Sender: TObject);
    procedure btnNfcClick(Sender: TObject);
    procedure NFEGerarLog(const ALogLine: string; var Tratado: Boolean);
    procedure btnGeraEnviaRPSClick(Sender: TObject);
    procedure btnFaturarPosXMLClick(Sender: TObject);
    procedure FaturarnotafiscalapsXML1Click(Sender: TObject);
    procedure Cancelarnotafiscalsomentenosistema1Click(Sender: TObject);
    procedure CancelarnotafiscalsomentenaSEFAZ1Click(Sender: TObject);
    procedure btnBuscarPedidoClick(Sender: TObject);
    procedure btnGerarXMLImportacaoClick(Sender: TObject);
    procedure btnImprimirPedVendaClick(Sender: TObject);
    procedure btnImprimirDupAceiteClick(Sender: TObject);
    procedure btnCancelaNfeAntClick(Sender: TObject);
    procedure btnCancelaEcfClick(Sender: TObject);
    procedure Reimprimir1Click(Sender: TObject);
    procedure FaturarsemRPS1Click(Sender: TObject);
    procedure btnCancelarNFSeClick(Sender: TObject);
    procedure btnNFSeAvulsaClick(Sender: TObject);
    procedure btnImpEtiquetaClick(Sender: TObject);
    procedure ImprimirTttuloparaCheque1Click(Sender: TObject);
    procedure btnCancelarNFSDiaAntClick(Sender: TObject);
    procedure btnDesfazerPreVendaClick(Sender: TObject);
    procedure txtPedidoProd1Exit(Sender: TObject);
    procedure txtPedidoProd2Exit(Sender: TObject);
    procedure txtPedidoProd3Exit(Sender: TObject);
    procedure txtPedidoProd4Exit(Sender: TObject);
    procedure txtPedidoProd5Exit(Sender: TObject);
    procedure tsPedidosProdShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure miFaturaSemPedidoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    procedure GerarNFe(NumNFe : String);

    procedure VerCertificado;
    procedure LerConfiguracao;
    procedure LerConfiguracaoRPS;
    procedure AtuGridNota;
    procedure LoadConsulta201(XML: String);
    procedure ChamarLanctoFPG;
    procedure ImprimirPedidoMatricial;
    procedure GerarDuplicataAceite;
    procedure FaturarNFSeAvulsa(tipo:integer);
    function  BuscaDiretorio(diretorio, arquivo: string):String;
    Var
      EmpAtual:String;
      rpsConfigurado:boolean;
  public
    { Public declarations }
    procedure CancelarNota(tipo: integer);
    procedure CancelarNotaDiaAnt(tipo: integer);
    procedure CancelarNFSDiaAnterior;
    procedure ConectarBancoProd;
    var
      cxanfe_GeraNFCe: Boolean;
  end;

var
  FAT_FM_M_CXA_NFE: TFAT_FM_M_CXA_NFE;
  xCodTransport_CxaNfe, xPlaca_Transp_CxaNfe, xUF_Transp_CxaNfe: string;  // usado pela tela do Transportador FAT_FM_M_CXA_NFE_TRA

implementation
uses FileCtrl, ufrmStatus, ACBrNFeNotasFiscais, DateUtils,uDmGeral,enFunc,
  enConstantes, FAT_RN_M_CXA, uProxy, FAT_UN_M_CXA_NFE_TRA,TypInfo, blcksock,
  FIN_RN_M_BOL, CAD_UN_C_CTC, PSQ_UN_X_CTC, CAD_UN_R_E01, FAT_UN_M_CXA_NFE_FPG,
  FAT_RN_M_NFE, FAT_UN_M_CXA_NFE_MAQ, Unit1,ACBrDFeSSL, FAT_UN_M_CXA_NFE_NCF,
  FAT_UN_M_LIB, FAT_UN_M_CXA_NFE_IMP, FAT_UN_M_CXA_NFE_CAN,
  FAT_UN_M_CXA_NFE_CRT, uNfse, ACBrNFe.Classes;
  //pcnNFe

const
  SELDIRHELP = 1000;

{$R *.dfm}



function TFAT_FM_M_CXA_NFE.BuscaDiretorio(diretorio, arquivo: string):String;
var
  f: TSearchRec;
  r: integer;
begin
  //Metodo utilizado para buscar o arquivo em qualquer sub-diretorio, a partir do diretorio especificado no
  //parametro desta função.Esse metodo surgiu da necessidade de fazer o cancelamento de nota fiscal com
  //sistema configurado para salvar arquivos xml em pastas mensais. Resp.:Luan.Data:21/07/2017
  Result := '';
  if diretorio[length(diretorio)]<>'\' then
    diretorio := diretorio+'\';

  if FileExists(diretorio+arquivo) then
    begin
      Result := diretorio+arquivo;
      exit;
    end;

  r := FindFirst(diretorio+'\*.*',faAnyFile,f);
  while (r=0) do
   begin
    if (f.Name <> '.') and (f.Name<>'..') then
      begin
        if f.Attr = fadirectory then
          Result := BuscaDiretorio(diretorio+f.Name,arquivo);
        if Result <>'' then
          break;
      end;
    r := FindNext(f);
   end;

  FindClose(F);

end;

procedure TFAT_FM_M_CXA_NFE.AtuGridNota;
var
  id_fiscal: string;
begin
  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
  FAT_RN_M_CXA.FatAtuDadosTelaCxa;
  if id_fiscal <> '' then
     dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
end;


procedure TFAT_FM_M_CXA_NFE.GerarDuplicataAceite;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin


  if (dmGeral.BUS_CD_M_NFE_CXA.IsEmpty) then
     begin
       ShowMessage('Nenhuma nota fiscal foi selecionada.');
       abort;
     end;

  if dmGeral.BUS_CD_M_NFE_CXAtipo_nf.AsString <> 'S' then
    begin
      ShowMessage('Nota fiscal deve ser de venda.');
      abort;
    end;

  if not (dmGeral.BUS_CD_M_NFE_CXAfaturada.AsBoolean=true) then
    begin
      ShowMessage('Nota fiscal não está faturada.');
      abort;
    end;


   try
       dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := true;
       dmGeral.BUS_CD_M_NFE_TIT_CXA.Filter := 'int_tipopgto=1 and int_docimpresso<>1';
       if dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount >0 then
          begin
             dmGeral.BUS_CD_M_NFE_TIT_CXA.First;

             dmGeral.BUS_CD_C_CLI.Close;
             dmGeral.BUS_CD_C_CLI.Data :=
             dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXAid_emitente.Text]));


             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
               begin
                LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_DUP.FindObject('Picture1'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             FAT_FR_M_CXA_DUP.PrepareReport();
             FAT_FR_M_CXA_DUP.ShowReport();
          end
       else
         begin
           ShowMessage('É somente formas de pagamento a prazo.');
         end;
    finally
       dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := false;
       dmGeral.BUS_CD_C_CLI.Close;
    end;

end;

procedure TFAT_FM_M_CXA_NFE.btnNfcClick(Sender: TObject);
{var
 vAux, vNumLote, vSincrono : String;
 Sincrono : boolean;
 numNFe,numLote:String;
 xVersaoNfe: Integer;
 Ano, Mes, Dia : Word;

 SMPrincipal: TSMClient;
 id_fiscal,retorno: String;    }
begin
  //if dmGeral.BuscarLicensa in [3,4,5,6,7] then
  //  exit;

  frmNFCe := TfrmNFCe.Create(Self);
  cxanfe_GeraNFCe := true;
  frmNFCe.ShowModal;
  frmNFCe.Free;

  {
  dmGeral.BUS_CD_M_NFE_CXA.edit;
  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
          dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
  dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0 then
     begin

        if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0) or
           (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) then
            begin
              // Maxsuel Victor 22/09/2015
              // Se alterar algum código aqui , verificar se é necessário fazer pra Pré-Venda, pois o código
              // abaixo existe no momento da geração da pré-venda também.
              FAT_RN_M_NFE.FatRecalTributItens(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
              fatNfeCalcTotal(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
              dmGeral.BUS_CD_M_NFE_CXA.Post;
              dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
            end;


        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
          retorno   := SMPrincipal.enAtuDadosNF(id_fiscal,dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString,'2');
          if retorno <> 'OK' then
             begin
               ShowMessage(Retorno);
               abort;
             end;
          FAT_RN_M_CXA.FatAtuDadosTelaCxa;
          dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

        finally
          FreeAndNil(SMPrincipal);
        end;
     end;

  numNfe  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString;
  DecodeDate(xDataSis, Ano, Mes, Dia);
  numLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
  numLote := OnlyNumber(numLote);




  //if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
  //  exit;

  //if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
  //  exit;

  //vSincrono := '1';
  //if not(InputQuery('WebServices Enviar', 'Envio Síncrono(1=Sim, 0=Não)', vSincrono)) then
  //  exit;


  {if (Trim(vSincrono) <> '1') and
     (Trim(vSincrono) <> '0') then
   begin
     MessageDlg('Valor síncrono inválido.',mtError,[mbok],0);
     exit;
   end;  }

  {if (Trim(vSincrono) = '1') then
    Sincrono := True
  else }
 {
  Sincrono := false;

  Nfe.NotasFiscais.Clear;

  Nfe.Configuracoes.Geral.ModeloDF := TpcnModeloDF(1); //moNfCe
  xVersaoNfe                       := 2; // Versão 3.10
  NFe.Configuracoes.Geral.VersaoDF :=  TpcnVersaoDF(xVersaoNfe);
  NFe.Configuracoes.Geral.IncluirQRCodeXMLNFCe := chkImprimieQRCode.Checked;

  GerarNFCe(numNfe);

  NFe.NotasFiscais.GerarNFe;

  Nfe.Enviar(vNumLote,True,Sincrono);
  // v antigo
  //MemoResp.Lines.Text := UTF8Encode(Nfe.WebServices.Retorno.RetWS);
  //memoRespWS.Lines.Text := UTF8Encode(Nfe.WebServices.Retorno.RetornoWS);

  MemoResp.Lines.Text := Nfe.WebServices.Retorno.RetWS;
  memoRespWS.Lines.Text := Nfe.WebServices.Retorno.RetornoWS;
  LoadXML(Nfe.WebServices.Retorno.RetWS, WBResposta);

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(Nfe.WebServices.Retorno.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ Nfe.WebServices.Retorno.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(Nfe.WebServices.Retorno.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(Nfe.WebServices.Retorno.cUF));
  MemoDados.Lines.Add('xMotivo: '+ Nfe.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('cMsg: '+ IntToStr(Nfe.WebServices.Retorno.cMsg));
  MemoDados.Lines.Add('xMsg: '+ Nfe.WebServices.Retorno.xMsg);
  MemoDados.Lines.Add('Recibo: '+ Nfe.WebServices.Retorno.Recibo);
  MemoDados.Lines.Add('Protocolo: '+ Nfe.WebServices.Retorno.Protocolo);
// MemoDados.Lines.Add('cStat: '+ ACBrNFe1.WebServices.Retorno.NFeRetorno;

{ ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].tpAmb
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].verAplic
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo }

 // Nfe.NotasFiscais.Clear;

end;

procedure TFAT_FM_M_CXA_NFE.btnNFSeAvulsaClick(Sender: TObject);
begin
  FaturarNFSeAvulsa(1);
end;

procedure TFAT_FM_M_CXA_NFE.btnAlterarInfFisClick(Sender: TObject);
begin
  if not FAT_RN_M_CXA.FatVerifDadosNfCxa(1) then
     begin
       exit;
     end;

  dmGeral.BUS_CD_M_NFE_CXA.Edit;
  if ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_OBS').AsString) = '') and
     (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S'))  then
    begin
     FAT_RN_M_NFE.PreencherFisco(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
     FAT_RN_M_NFE.FatFormarNfeObs(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
    end;

  dmGeral.BUS_CD_M_NFE_CXA.Edit;
  txtNfeObs.Enabled := true;
  txtNfeObs.SetFocus;

  btnAlterarInfFis.Enabled := false;
  btnSalvarInfFis.Enabled  := true;
end;

procedure TFAT_FM_M_CXA_NFE.btnCancelaEcfClick(Sender: TObject);
begin
  CancelarNota(3);
end;

procedure TFAT_FM_M_CXA_NFE.btnCancelaNfeAntClick(Sender: TObject);
var
  result: boolean;
  mens: String;
begin

  result := false;
  mens   := '';

  if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_id_tipo_fin_canc_ant').AsString) = '') then
     begin
       mens := mens + 'Parâmetro "Tipo Financeiro" para cancelamento de NFe dia anterior não foi preenchido.' + #13;
       result := true;
     end;

  if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_id_plano_canc_ant').AsString) = '') then
     begin
       mens := mens + 'Parâmetro "Plano de contas" para cancelamento de NFe dia anterior não foi preenchido.' + #13;
       result := true;
     end;

  if result = true then
     begin
       Showmessage(mens);
       abort;
     end;

  FAT_FM_M_CXA_NFE_CAN := TFAT_FM_M_CXA_NFE_CAN.Create(Self);
  FAT_FM_M_CXA_NFE_CAN.ShowModal;
  FAT_FM_M_CXA_NFE_CAN.Free;

  FAT_RN_M_CXA.FatAtuDadosTelaCxa;;
end;

procedure TFAT_FM_M_CXA_NFE.btnCancelaNFEClick(Sender: TObject);
begin
  if dmGeral.BuscarLicensa in [3,4,5,6,7] then
    exit;
  CancelarNota(0);
end;

procedure TFAT_FM_M_CXA_NFE.btnCancelarNFSDiaAntClick(Sender: TObject);
var
  Result:Boolean;
  mens:String;
begin
  result := false;
  mens   := '';

  if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_id_tipo_fin_canc_ant').AsString) = '') then
     begin
       mens := mens + 'Parâmetro "Tipo Financeiro" para cancelamento de NFe dia anterior não foi preenchido.' + #13;
       result := true;
     end;

  if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_id_plano_canc_ant').AsString) = '') then
     begin
       mens := mens + 'Parâmetro "Plano de contas" para cancelamento de NFe dia anterior não foi preenchido.' + #13;
       result := true;
     end;

  if result = true then
     begin
       Showmessage(mens);
       abort;
     end;

  FAT_FM_M_CXA_NFE_CAN := TFAT_FM_M_CXA_NFE_CAN.Create(Self);
  FAT_FM_M_CXA_NFE_CAN.notaServico := true;
  FAT_FM_M_CXA_NFE_CAN.ShowModal;
  FAT_FM_M_CXA_NFE_CAN.Free;

  FAT_RN_M_CXA.FatAtuDadosTelaCxa;;
end;

procedure TFAT_FM_M_CXA_NFE.btnCancelarNFSeClick(Sender: TObject);
var
  vAux : String;
  xml: String;
  SMPrincipal: TSMClient;
  retorno: String;
  idLote: String;
  Ano,Mes,Dia: Word;
  CanStatus:string;
  CanProtocolo:string;
  msgPergunta,ReabrePed: String;
begin

  AtuGridNota;


  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;

   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;


  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
     begin
       ShowMessage('Nota fiscal com pré-venda.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_nf').AsInteger <> 2) then // 2 - Nota de Serviço
      begin
        ShowMessage('Só é permitido cancelar nota fiscal que tenha somente serviço.');
        exit;
      end;

  if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
           (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
     begin
        ShowMessage('Nota fiscal em aberto! ' + #13 +
                    'Só é permitido cancelar nota fiscal encerrada.');
        exit;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
     begin
       ShowMessage('Nota fiscal já foi cancelada.');
       exit;
     end;

  msgPergunta := '';

  msgPergunta := 'Deseja realmente cancelar a nota fiscal: ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString+'?';


  if MessageDlg(msgPergunta, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       try

         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
            begin

               ReabrePed := 'S';
               dmGeral.BUS_CD_M_NFE.Close;
               dmGeral.BUS_CD_M_NFE.Data :=
               dmGeral.BUS_CD_M_NFE.DataRequest(
                  VarArrayOf([15,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
               dmGeral.BUS_CD_M_NFE.First;
               if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                  begin
                    while not dmGeral.BUS_CD_M_NFE.Eof do
                       begin
                         if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                            begin
                              if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                 (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                  (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                  (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                  (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                     ReabrePed := 'N';

                            end;
                         dmGeral.BUS_CD_M_NFE.Next;
                       end;
                  end;
               dmGeral.BUS_CD_M_NFE.close;

               if ReabrePed = 'S' then
                  begin
                   if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                      begin
                        ReabrePed := 'S';
                      end
                   else
                      begin
                         ReabrePed := 'N';
                      end;
                  end
               else
                  begin
                    ShowMessage('Não será possivel reabrir pedido pois há notas faturadas.');
                  end;
            end;


         if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) and
            ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString = '') or
            (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0)))) then
            begin
             ReabrePed := 'S';
             dmGeral.BUS_CD_M_NFE.Close;
             dmGeral.BUS_CD_M_NFE.Data :=
             dmGeral.BUS_CD_M_NFE.DataRequest(
                VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
             dmGeral.BUS_CD_M_NFE.First;
             if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                begin
                  while not dmGeral.BUS_CD_M_NFE.Eof do
                     begin
                       if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger then
                          begin
                            if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                  ReabrePed := 'N';
                          end;
                       dmGeral.BUS_CD_M_NFE.Next;
                     end;
                end;
             dmGeral.BUS_CD_M_NFE.close;

             if ReabrePed = 'S' then
                begin
                 if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                    begin
                      ReabrePed := 'S';
                    end
                 else
                    begin
                       ReabrePed := 'N';
                    end;
                end
             else
                begin
                  ShowMessage('Não será possivel reabrir OS pois há outras notas não canceladas.');
                end;
           end;

         if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
            begin
              ReabrePed := 'N';
            end;

         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
         retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','Somente sistema',ReabrePed,'');
         if retorno <> 'OK' then
            begin
              ShowMessage('Erro: ' + retorno);
            end
         else
            begin
              Showmessage('Nota fiscal cancelada com sucesso!');
            end;
       finally
         FreeAndNil(SMPrincipal);
         AtuGridNota;
       end;
     end;
end;





procedure TFAT_FM_M_CXA_NFE.CancelarNFSDiaAnterior;
var
  vAux : String;
  xml: String;
  SMPrincipal: TSMClient;
  retorno: String;
  idLote: String;
  Ano,Mes,Dia: Word;
  CanStatus:string;
  CanProtocolo:string;
  msgPergunta,ReabrePed: String;
begin




  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;

   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;


  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
     begin
       ShowMessage('Nota fiscal com pré-venda.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_nf').AsInteger <> 2) then // 2 - Nota de Serviço
      begin
        ShowMessage('Só é permitido cancelar nota fiscal que tenha somente serviço.');
        exit;
      end;

  if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
           (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
     begin
        ShowMessage('Nota fiscal em aberto! ' + #13 +
                    'Só é permitido cancelar nota fiscal encerrada.');
        exit;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
     begin
       ShowMessage('Nota fiscal já foi cancelada.');
       exit;
     end;

  msgPergunta := '';

  msgPergunta := 'Deseja realmente cancelar a nota fiscal: ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString+'?';


  if MessageDlg(msgPergunta, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       try

         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
            begin

               ReabrePed := 'S';
               dmGeral.BUS_CD_M_NFE.Close;
               dmGeral.BUS_CD_M_NFE.Data :=
               dmGeral.BUS_CD_M_NFE.DataRequest(
                  VarArrayOf([15,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
               dmGeral.BUS_CD_M_NFE.First;
               if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                  begin
                    while not dmGeral.BUS_CD_M_NFE.Eof do
                       begin
                         if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                            begin
                              if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                 (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                  (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                  (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                  (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                     ReabrePed := 'N';

                            end;
                         dmGeral.BUS_CD_M_NFE.Next;
                       end;
                  end;
               dmGeral.BUS_CD_M_NFE.close;

               if ReabrePed = 'S' then
                  begin
                   if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                      begin
                        ReabrePed := 'S';
                      end
                   else
                      begin
                         ReabrePed := 'N';
                      end;
                  end
               else
                  begin
                    ShowMessage('Não será possivel reabrir pedido pois há notas faturadas.');
                  end;
            end;


         if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) and
            ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString = '') or
            (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0)))) then
            begin
             ReabrePed := 'S';
             dmGeral.BUS_CD_M_NFE.Close;
             dmGeral.BUS_CD_M_NFE.Data :=
             dmGeral.BUS_CD_M_NFE.DataRequest(
                VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
             dmGeral.BUS_CD_M_NFE.First;
             if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                begin
                  while not dmGeral.BUS_CD_M_NFE.Eof do
                     begin
                       if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger then
                          begin
                            if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                  ReabrePed := 'N';
                          end;
                       dmGeral.BUS_CD_M_NFE.Next;
                     end;
                end;
             dmGeral.BUS_CD_M_NFE.close;

             if ReabrePed = 'S' then
                begin
                 if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                    begin
                      ReabrePed := 'S';
                    end
                 else
                    begin
                       ReabrePed := 'N';
                    end;
                end
             else
                begin
                  ShowMessage('Não será possivel reabrir OS pois há outras notas não canceladas.');
                end;
           end;

         if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
            begin
              ReabrePed := 'N';
            end;

         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
         retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','Somente sistema',ReabrePed,
                                            dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString);
         if retorno <> 'OK' then
            begin
              ShowMessage('Erro: ' + retorno);
            end
         else
            begin
              Showmessage('Nota fiscal cancelada com sucesso!');
            end;
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;
end;


procedure TFAT_FM_M_CXA_NFE.btnCartaCorrecaoClick(Sender: TObject);
var
 id_fiscal:String;
begin
   id_fiscal := '';
   if not dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
     end;

   ShowMessage('Lembre-se que depois de criar a carta de correção, você deve clicar no botão abaixo "Imprimir Evento" para ' + #13 +
               'selecionar a NF-e e o procEvento gerado pela sefaz, para poder emitir a carta de correção.');

   FAT_FM_M_CXA_NFE_CRT := TFAT_FM_M_CXA_NFE_CRT.Create(Self);
   FAT_FM_M_CXA_NFE_CRT.Nfe := Nfe;
   FAT_FM_M_CXA_NFE_CRT.ShowModal;
   FAT_FM_M_CXA_NFE_CRT.Free;

   FAT_RN_M_CXA.FatAtuDadosTelaCxa;

   if id_fiscal <> '' then
     begin
       dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
     end;



end;

procedure TFAT_FM_M_CXA_NFE.btnCupomFiscalClick(Sender: TObject);
begin
  FatProcessarCupomCxa;
end;

procedure TFAT_FM_M_CXA_NFE.btnDesfazerPreVendaClick(Sender: TObject);
begin
  FAT_RN_M_CXA.FatDesfazerPreVendaCxa;
end;

procedure TFAT_FM_M_CXA_NFE.btnEnviarEmailClick(Sender: TObject);
var
 Para : String;
 CC: Tstrings;
 xSeguro:Boolean;
 xNomeXml:String;
begin

   if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
      begin
        ShowMessage('Não existe registro de nota fiscal.');
        exit;
      end;

  if not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') then
     begin
       ShowMessage('Só é permitido enviar e-mail para notas fiscais de venda');
       exit;
     end;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString) = '' then
     begin
       Showmessage('Nota fiscal sem chave de acesso.');
       exit;
     end;

  try
  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S' then
     begin
       dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
               dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXAid_emitente.Text]));
       if dmGeral.BUS_CD_C_CLI.FieldByName('EMAIL').AsString='' then
           begin
             Showmessage('Não foi encontrado um e-mail para este cliente, verifique o cadastro deste cliente.');
             exit;
           end;

       para := '';
       para := dmGeral.BUS_CD_C_CLI.FieldByName('email').AsString;

       if para = '' then
          if not(InputQuery('Enviar e-mail', 'e-mail de destino', Para)) then
             exit;


       xNomeXml := '';
       // v antigo
       //xNomeXml := NFe.Configuracoes.Geral.PathSalvar+
       //            Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString)+'-nfe.xml';

       xNomeXml := NFe.Configuracoes.Arquivos.PathNfe+{Alterado PathSalvar para PathNfe}
                   Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString)+'-nfe.xml';

       // v antigo
       //if not FilesExists(NFe.Configuracoes.Geral.PathSalvar+
       //                  Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString)+'-nfe.xml') then

         if not FilesExists(NFe.Configuracoes.Arquivos.PathNfe+
                           Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString)+'-nfe.xml') then
            begin
              Showmessage('Arquivo XML não foi encontrado para o envio.');
              exit;
            end;

       if not dmGeral.CAD_CD_C_PAR_NFE.IsEmpty then
          begin
              if dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_SEGURO').asString='S' then
                 xSeguro:=True
              else
                 xSeguro:=False;
              // v antigo
              //NFE.DANFE.PathPDF := NFe.Configuracoes.Geral.PathSalvar;
              NFE.DANFE.PathPDF := NFe.Configuracoes.Arquivos.PathSalvar;

              Nfe.NotasFiscais.Clear;
              Nfe.NotasFiscais.LoadFromFile(xNomeXml);
              CC:=TstringList.Create;
              CC.Add('analista@e-north.com.br'); //especifique um email válido
              CC.Add('analista@e-north.com.br'); //especifique um email válido

              ACBrMail1.Host := dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP').asString;
              ACBrMail1.Port := dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_PORTA').asString;
              ACBrMail1.Username := dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString;
              ACBrMail1.Password := dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SENHA').asString;
              ACBrMail1.From := dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString;
              ACBrMail1.SetSSL := true; // SSL - ConexÃ£o Segura
              ACBrMail1.SetTLS := true; // Auto TLS
              ACBrMail1.ReadingConfirmation := False; //Pede confirmaÃ§Ã£o de leitura do email
              ACBrMail1.UseThread := False;           //Aguarda Envio do Email(nÃ£o usa thread)
              ACBrMail1.FromName := 'Projeto ACBr - ACBrNFe';

              //v antigo
              {Nfe.NotasFiscais.Items[0].EnviarEmail(
                  dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP').asString
                , dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_PORTA').asString
                , dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString
                , dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SENHA').asString
                , dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString
                , Para
                , 'Envio de NFe.'
                , mmEmailMsg.Lines
                , xSeguro
                , false   //Enviar PDF junto
                , nil     //Lista com emails que serão enviado cópias - TStrings
                , nil     // Lista de anexos - TStrings
                , True ); //Pede confirmação de leitura do email  }
                Nfe.NotasFiscais.Items[0].EnviarEmail(Para
                , 'Envio de NFe.'
                , mmEmailMsg.Lines
                , false
                , nil     //Lista com emails que serão enviado cópias - TStrings
                , nil );
              CC.Free;
           end
     end;
  finally
     dmGeral.BUS_CD_C_CLI.Close;
  end;
end;


procedure TFAT_FM_M_CXA_NFE.btnGeraBoletoClick(Sender: TObject);
var
  Qtde:Integer;
begin

  AtuGridNota;

  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'S' then
     begin
       ShowMessage('Nota fiscal deve ser de "Venda".');
       exit;
     end;

  if (not((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean = true) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '00'))) then
     begin
       ShowMessage('A nota fiscal não está faturada.');
       exit;
     end;

  dmGeral.BUS_CD_M_REC_BOL.Close;
  dmGeral.BUS_CD_M_REC_BOL.Data :=
           dmGeral.BUS_CD_M_REC_BOL.DataRequest(VarArrayOf([92,
                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString]));
  if dmGeral.BUS_CD_M_REC_BOL.IsEmpty then
     begin
       ShowMessage('Não existe forma de pagamento do tipo "Boleto" nesta nota fiscal.');
       exit;
     end;

  Qtde := dmGeral.BUS_CD_M_REC_BOL.RecordCount;

  PSQ_FM_X_CTC := TPSQ_FM_X_CTC.Create(Self);

  PSQ_FM_X_CTC.BUS_CD_C_CTC.Close;
  PSQ_FM_X_CTC.BUS_CD_C_CTC.Data :=
     PSQ_FM_X_CTC.BUS_CD_C_CTC.DataRequest(
          VarArrayOf([3, '1']));

  PSQ_FM_X_CTC.ShowModal;
  if not PSQ_FM_X_CTC.BUS_CD_C_CTC.IsEmpty then
     begin
       {Licenca := trim(PSQ_FM_X_CTC.BUS_CD_C_CTC.FieldByName('LICENCA').AsString);
       if Licenca = '' then
          begin
            ShowMessage('Conta corrente com o campo "Licenca" vazio.');
            PSQ_FM_X_CTC.BUS_CD_C_CTC.Close;
            exit;
          end; }
     end
  else
     begin
       ShowMessage('Nenhuma conta corrente foi selecionada.');
       exit;
     end;

  {if trim(Licenca) = '' then
     begin
       ShowMessage('Conta corrente com o campo "Licenca" vazio.');
       exit;
     end;}

  try
    FIN_RN_M_BOL.GerarBoleto(1,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsString,dmGeral.BUS_CD_M_REC_BOL,
                               PSQ_FM_X_CTC.BUS_CD_C_CTC,false,0,mmoReciboBoleto);

    if miFaturaSemPedido.Checked = false then
       begin
          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_fin_base_prod').AsBoolean then
             begin
              if FatAtualizarFinPcp(1,PCP_CD_M_ORS_PCP,FIN_CD_M_REC_PCP,dmGeral.BUS_CD_M_REC_BOL,true) = 'OK' then
                 begin
                   FIN_CD_M_REC_PCP.ApplyUpdates(0);
                 end;
             end;
       end;

  finally
    PSQ_FM_X_CTC.Free;
    dmGeral.BUS_CD_M_REC_BOL.Close;
  end;
end;

procedure TFAT_FM_M_CXA_NFE.btnGeraEnviaRPSClick(Sender: TObject);
var
  Ok:boolean;
  discriminacao,num_lot_rps:string;
  vlrServicos,vlrPIS,vlrCofins,vlrIss,aliquota:currency;
  SMPrincipal: TSMClient;
  id_fiscal, retorno: String;
  Numero: String;

  i,diff_dias:integer; // Provisório
  QtdeReg: String;
begin
   if dmGeral.BuscarLicensa in [3,4,5,6,7] then
    exit;


  frmNFSe := TfrmNFSe.Create(Self);
  frmNFSe.ShowModal;
  frmNFSe.Free;


    {id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;

    if MessageDlg('Deseja realmente gerar/enviar RPS?',mtConfirmation,[mbYes,mbNo],0) = mrYes  then
      begin



         if (rpsConfigurado = False) then
            begin
              ShowMessage('A pasta: ' + PathWithDelim(ExtractFilePath(Application.ExeName)) + 'Schemas\NFSe\ABRASFv2' + ', não foi encontrada!' + #13 +
                          'A geração do documento fiscal eletrônico de serviço não será possível!');
              exit;
            end;

         if (dmGeral.BUS_CD_M_NFE_CXA.IsEmpty) then
             begin
               ShowMessage('Nenhuma nota fiscal foi selecionada!');
               exit;
             end;


         if id_fiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
           begin
             ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
             abort;
           end;


         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_nf').AsInteger <> 2) then // 2 - Somente nota de Serviço
            begin
              ShowMessage('Nota fiscal deve ser somente de serviço.');
              exit;
            end;

         // Situação de NFe FATURADA normnal. Cor Verde
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
            ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString <> '')  or
              (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) = 'X') or
              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 1) or
              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 3) ) then
            begin
              ShowMessage('A nota fiscal já foi faturada.');
              exit;
            end;

         // Situação de NFe Inutilizada. Cor Marrom  -
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '05') then
            begin
              ShowMessage('Nota fiscal está inutilizada.');
              exit;
            end;

         // Situação de NFe CANCELADA. Cor Vermelho
         if(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') then
            begin
              ShowMessage('Nota fiscal está cancelada.');
              exit;
            end;

         // Situação de NFe DENEGADA. Cor Roxa
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04') then
            begin
              ShowMessage('Nota fiscal está denegada.');
              exit;
            end;

         // Situação Nota fiscal com Pré-venda pendente. Cor Rosa
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
            begin
              ShowMessage('Nota fiscal está com Pré-venda pendente.');
              exit;
            end;

          if not(InputQuery('Faturar NFS-e', 'Número da nota de serviço', Numero)) then
             exit;

          AtuGridNota;

          if id_fiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
             begin
               ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
               abort;
             end;

          if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0 then
             begin
               if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) then
                    begin

                      // A linha do IF foi Colocado por Maxsuel Victor em 14/07/2016
                      if ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'5929') and
                          (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'6929')) then
                         begin
                           // Maxsuel Victor 22/09/2015
                              // Se alterar algum código aqui , verificar se é necessário fazer pra Pré-Venda, pois o código
                              // abaixo existe no momento da geração da pré-venda também.
                           FAT_RN_M_NFE.FatRecalTributItens(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                           FAT_RN_M_NFE.FatFormarNfeObs(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                           fatNfeCalcTotal(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                           dmGeral.BUS_CD_M_NFE_CXA.Post;
                           dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                         end;
                    end;

               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
               try
                  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                  retorno   := SMPrincipal.enAtuDadosNF(id_fiscal,dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString,'3');
                  if retorno <> 'OK' then
                     begin
                       ShowMessage(Retorno);
                       abort;
                     end;
                  FAT_RN_M_CXA.FatAtuDadosTelaCxa;
                  dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

               finally
                  FreeAndNil(SMPrincipal);
               end;
             end;

         vlrServicos   := 0;
         vlrPIS        := 0;
         vlrCofins     := 0;
         vlrIss        := 0;
         aliquota      := 0;
         discriminacao := '';

         dmGeral.BUS_CD_M_NFE_ITE_CXA.First;
         while (not dmGeral.BUS_CD_M_NFE_ITE_CXA.EOF) do
             begin
               vlrServicos   := vlrServicos+dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('VLR_MERCADORIA').AsCurrency;
               vlrPIS        := vlrPIS+dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('PIS_VALOR').AsCurrency;
               vlrCofins     := vlrCofins+dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('COF_VALOR').AsCurrency;
               vlrIss        := vlrIss+dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ISS_VALOR').AsCurrency;
               aliquota      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ISS_ALIQUOTA').AsCurrency;
               discriminacao := discriminacao + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ITEM').AsString+'-'+
                                dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_DESC_ITEM').AsString+';';
               dmGeral.BUS_CD_M_NFE_ITE_CXA.Next;
             end;


        num_lot_rps := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cod_lot_rps').AsString;
        Nfse.NotasFiscais.Clear;

        with Nfse do
          begin
            dmGeral.BUS_CD_C_PAR.Close;
            dmGeral.BUS_CD_C_PAR.Data :=
            dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsString]));

            NotasFiscais.NumeroLote := num_lot_rps;
            NotasFiscais.Transacao  := True;
            NotasFiscais.Assinar(false);

            with NotasFiscais.Add.NFse do
              begin
                //Dados do RPS
                IdentificacaoRps.Numero := '1'; //dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString;
                IdentificacaoRps.Serie  := '8'; // '1'; o oito é para ambiene em homologação
                IdentificacaoRps.Tipo   := trRPS;
                DataEmissao             := Now;

                NaturezaOperacao        := no1;



                RegimeEspecialTributacao := StrToRegimeEspecialTributacao(Ok,dmGeral.CAD_CD_C_PAR_NFE.FieldByName('reg_esp_tri').AsString);

                if (dmGeral.BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsString = '1') then
                   begin
                     OptanteSimplesNacional := snSim;
                   end
                else
                   begin
                    OptanteSimplesNacional := snNao;
                   end;
                IncentivadorCultural := snNao;

                Producao := snNao;
                // TnfseStatusRPS = ( srNormal, srCancelado );
                Status   := srNormal;

                //Dados do Serviço
                Servico.Valores.ValorServicos := vlrServicos;
                Servico.Valores.ValorDeducoes := 0.00;
                Servico.Valores.ValorPis      := vlrPIS;
                Servico.Valores.ValorCofins   := vlrCofins;
                Servico.Valores.ValorIss      := vlrIss;
                Servico.Valores.ValorInss     := 0.00;
                Servico.Valores.ValorIr       := 0.00;
                Servico.Valores.ValorCsll     := 0.00;

                // Servico.Valores.Aliquota      := aliquota;
                Servico.Valores.IssRetido              := stNormal;
                Servico.Valores.ValorIssRetido         := 0.00;

                Servico.Valores.OutrasRetencoes        := 0.00;
                Servico.Valores.DescontoIncondicionado := 0.00;
                Servico.Valores.DescontoCondicionado   := 0.00;

                Servico.Valores.BaseCalculo := Servico.Valores.ValorServicos -
                                      Servico.Valores.ValorDeducoes -
                                      Servico.Valores.DescontoIncondicionado;

                Servico.Valores.ValorLiquidoNfse := Servico.Valores.ValorServicos -
                                           Servico.Valores.ValorPis -
                                           Servico.Valores.ValorCofins -
                                           Servico.Valores.ValorInss -
                                           Servico.Valores.ValorIr -
                                           Servico.Valores.ValorCsll -
                                           Servico.Valores.OutrasRetencoes -
                                           Servico.Valores.ValorIssRetido -
                                           Servico.Valores.DescontoIncondicionado -
                                           Servico.Valores.DescontoCondicionado;


                // CodigoTributacaoMunicipio , tem essa junção , por exemplo:
                   //Código do benefício: 123
                   //Código do serviço no município: 07.02.01
                   // então:  123070201
                Servico.CodigoTributacaoMunicipio  := trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cod_tri_mcp').AsString);

                Servico.Discriminacao              := 'Itens:'+discriminacao;
                Servico.CodigoCnae                 := trim(dmGeral.BUS_CD_C_PAR.FieldByName('INT_ID_CNAE').AsString);
                Servico.CodigoMunicipio            := trim(dmGeral.BUS_CD_C_PAR.FieldByName('ID_CIDADE').AsString);
                Servico.ItemListaServico           := trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cod_ite_ser').AsString);

                // Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
                //Servico.ExigibilidadeISS           := exiExigivel;



                //Dados do Prestador
                Prestador.Cnpj               := dmGeral.BUS_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;
                Prestador.InscricaoMunicipal := dmGeral.BUS_CD_C_PAR.FieldByName('EMP_IM').AsString;



                //Dados do Tomador de Serviço  (Dados do Cliente)
                dmGeral.BusCliente(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsString);
                if (not dmGeral.BUS_CD_C_CLI.IsEmpty) then
                  begin
                     Tomador.IdentificacaoTomador.CpfCnpj            := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').AsString;
                     Tomador.IdentificacaoTomador.InscricaoMunicipal := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IM').AsString;
                     Tomador.RazaoSocial := dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
                     Tomador.Endereco.Endereco        := dmGeral.BUS_CD_C_CLI.FieldByName('ENDERECO').AsString;
                     Tomador.Endereco.Numero          := dmGeral.BUS_CD_C_CLI.FieldByName('NUMERO').AsString;
                     Tomador.Endereco.Complemento     := dmGeral.BUS_CD_C_CLI.FieldByName('END_COMPLEMENTO').AsString;
                     Tomador.Endereco.Bairro          := dmGeral.BUS_CD_C_CLI.FieldByName('BAIRRO').AsString;
                     Tomador.Endereco.CodigoMunicipio := dmGeral.BUS_CD_C_CLI.FieldByName('ID_CIDADE').AsString;
                     Tomador.Endereco.UF              := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
                     Tomador.Endereco.CodigoPais      := 1058; // Brasil
                     Tomador.Endereco.CEP             := dmGeral.BUS_CD_C_CLI.FieldByName('CEP').AsString;
                     Tomador.Contato.Telefone := dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').AsString;
                     Tomador.Contato.Email    := dmGeral.BUS_CD_C_CLI.FieldByName('EMAIL').AsString;
                  end;
              end;
          end;
          // Nfse.Gravar(num_lot_rps+'-rps.xml',Nfse.NotasFiscais.Items[0].GerarXML,ExtractFilePath(Application.ExeName) +
                                                        // dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML_RPS').AsString);
          Nfse.Gravar(num_lot_rps+'-rps.xml',Nfse.NotasFiscais.Items[0].GerarXML,ExtractFilePath(Application.ExeName) +
                                                         dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString);

          dmGeral.BUS_CD_C_PAR.Close;
          dmGeral.BUS_CD_C_PAR.Data :=
          dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsString]));
          if (dmGeral.BUS_CD_C_PAR_NFE.FieldByName('cod_lot_rps').AsString <> num_lot_rps) then
              begin
                ShowMessage('Falha no processo de geração do Lote RPS.');
                exit;
              end;
          if Nfse.GerarLote(num_lot_rps) then
             begin
               ShowMessage('Arquivo gerado em: '+NFSe.NotasFiscais.Items[0].NomeArq);
               if Nfse.Enviar(num_lot_rps) then
                  begin
                    ShowMessage('Lote RPS enviado com sucesso. Nº RPS:'+num_lot_rps);
                    dmGeral.CAD_CD_C_PAR_NFE.Edit;
                    dmGeral.CAD_CD_C_PAR_NFE.FieldByName('COD_LOT_RPS').AsInteger := StrToInt(num_lot_rps)+1;
                    dmGeral.CAD_CD_C_PAR_NFE.Post;
                    dmGeral.CAD_CD_C_PAR.Post;
                    dmGeral.CAD_CD_C_PAR.ApplyUpdates(0);

                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 1;
                    dmGeral.BUS_CD_M_NFE_CXA.Post;
                    try
                       if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                          begin
                            ShowMessage('Geração da NFe foi realizada com sucesso!');
                          end;
                    except
                      on e:exception do
                         begin
                           Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                         end;
                    end;

                  end
               else
                  begin
                    ShowMessage('Falha no processo de envio do Lote RPS.');
                  end;
             end
          else
             begin
               ShowMessage('Falha no processo de geração do Lote RPS.');
             end;
      end; }
end;

procedure TFAT_FM_M_CXA_NFE.LerConfiguracaoRPS;
VAR
  Ok:boolean;
  xCaminho,xSenha:string;
begin
   rpsConfigurado := true;
  {$IFDEF ACBrNFSeOpenSSL}
     // NFSe.Configuracoes.Certificados.Certificado :=  dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie_rps').AsString;
     // NFSe.Configuracoes.Certificados.Senha       :=  dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_senha_rps').AsString;
     NFSe.Configuracoes.Certificados.Certificado    :=  dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie').AsString;
     NFSe.Configuracoes.Certificados.Senha          :=  dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_senha').AsString;
 {$ELSE}
     // NFSe.Configuracoes.Certificados.NumeroSerie :=  dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie_rps').AsString ;
     NFSe.Configuracoes.Certificados.NumeroSerie    :=  dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie').AsString ;
 {$ENDIF}

 rpsConfigurado := true;
 NFSe.Configuracoes.Certificados.VerificarValidade := True;

 NFSe.Configuracoes.Arquivos.AdicionarLiteral := True;
 NFSe.Configuracoes.Arquivos.EmissaoPathNFSe  := True;
 NFSe.Configuracoes.Arquivos.SepararPorMes    := True;
 NFSe.Configuracoes.Arquivos.SepararPorCNPJ   := False;


 if not DirectoryExists(PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFSe\ABRASFv2') then
   begin
     ShowMessage('A pasta: ' + PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFSe\ABRASFv2' + ', não foi encontrada!' + #13 +
                        'A geração do documento fiscal eletrônico de serviço não será possível!');
        rpsConfigurado := false;
     exit;
   end
 else
   begin
     NFSe.Configuracoes.Arquivos.PathSchemas := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFSe\ABRASFv2';
     rpsConfigurado := true;
   end;

  //NFSe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName) +
                                                   //  dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML_RPS').AsString;
  NFSe.Configuracoes.Arquivos.PathSalvar    := ExtractFilePath(Application.ExeName) +
                                               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;

  NFSe.Configuracoes.Arquivos.Salvar := True;

  NFSe.Configuracoes.Geral.PathIniCidades   := ExtractFilePath(Application.ExeName) + 'ArqINI';
  NFSe.Configuracoes.Geral.PathIniProvedor  := ExtractFilePath(Application.ExeName) + 'ArqINI';
  NFSe.Configuracoes.Geral.CodigoMunicipio  := StrToInt(trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));

  NFSe.Configuracoes.Geral.Emitente.CNPJ       := dmGeral.CAD_CD_C_PAR.FieldByName('emp_cnpj').AsString;
  NFSe.Configuracoes.Geral.Emitente.InscMun    := dmGeral.CAD_CD_C_PAR.FieldByName('emp_im').AsString;
  NFSe.Configuracoes.Geral.Emitente.RazSocial  := dmGeral.CAD_CD_C_PAR.FieldByName('emp_razao').AsString;

  NFSe.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsInteger));
  NFSe.Configuracoes.WebServices.Visualizar := True;
  //NFSe.Configuracoes.WebServices.ProxyHost  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_host_rps').AsString;
  //NFSe.Configuracoes.WebServices.ProxyPort  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_porta_rps').AsString;
  //NFSe.Configuracoes.WebServices.ProxyUser  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_usuario_rps').AsString;
  //NFSe.Configuracoes.WebServices.ProxyPass  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_senha_rps').AsString;
  NFSe.Configuracoes.WebServices.ProxyHost  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_host').AsString;
  NFSe.Configuracoes.WebServices.ProxyPort  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_porta').AsString;
  NFSe.Configuracoes.WebServices.ProxyUser  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_usuario').AsString;
  NFSe.Configuracoes.WebServices.ProxyPass  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_senha').AsString;

end;

procedure TFAT_FM_M_CXA_NFE.btnGeraNFeECFClick(Sender: TObject);
var
  id_fiscal:string;
begin
//  FAT_RN_M_CXA.FatGerarNfeDeEcfCxa(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger);

  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
  FAT_FM_M_CXA_NFE_NCF := TFAT_FM_M_CXA_NFE_NCF.Create(Self);
  FAT_FM_M_CXA_NFE_NCF.ShowModal;
  FAT_FM_M_CXA_NFE_NCF.Free;
  FAT_RN_M_CXA.FatAtuDadosTelaCxa;
  dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
end;

procedure TFAT_FM_M_CXA_NFE.btnGeraPdfClick(Sender: TObject);
begin
  // v antigo
  //NFe.Configuracoes.Geral.PathSalvar := ExtractFilePath(Application.ExeName) +
  // dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;

  NFe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName) +
   dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML_OUTROS').AsString;//Alterado PATH_XML para PATH_XML_OUTROS


  odNFe.Title := 'Selecione a NFE';
  odNFe.DefaultExt := '*-nfe.XML';
  odNFe.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  // v antigo
  //odNFe.InitialDir := NFe.Configuracoes.Geral.PathSalvar;

  odNFe.InitialDir := NFe.Configuracoes.Arquivos.PathNfe;//Alterado PathSalvar para Path Nfe

  NFe.NotasFiscais.Clear;
  if odNFe.Execute then
    NFe.NotasFiscais.LoadFromFile(odNFe.FileName);

  // v angito
  //NFE.DANFE.PathPDF := NFe.Configuracoes.Geral.PathSalvar;
  NFE.DANFE.PathPDF := NFe.Configuracoes.Arquivos.PathSalvar;


{  NFE.DANFE.PathPDF := ExtractFilePath(Application.ExeName) + EmpAtual+
   dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_PDF').AsString;}

  NFe.NotasFiscais.ImprimirPDF;
end;

procedure TFAT_FM_M_CXA_NFE.btnGerarXMLImportacaoClick(Sender: TObject);
begin

    if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty  then
     begin
      ShowMessage('É necessário selecionar nota fiscal de entrada.');
      exit;
     end;

    if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'E' then
     begin
      ShowMessage('Somente para notas fiscais de entrada.');
      exit;
     end;

    if pos(TRIM(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString),'3101-3102-3126-3127-3211-3503') = 0 then
     begin
      ShowMessage('CFOP tem que ser 3101, 3102, 3126, 3127, 3211 ou 3503.');
      exit;
     end;

    if (dmGeral.BUS_CD_M_NFE_ITE_CXA.RecordCount = 0) then
     begin
       ShowMessage('Não há nenhum item da nota selecionada.');
       exit;
     end;


    FAT_FM_M_CXA_NFE_IMP := TFAT_FM_M_CXA_NFE_IMP.Create(Self);
    FAT_FM_M_CXA_NFE_IMP.ShowModal;
end;

procedure TFAT_FM_M_CXA_NFE.btnImpEtiquetaClick(Sender: TObject);
begin
  if dmgeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('É necessário selecionar nota.');
       exit;
     end;

  if MessageDlg('Deseja imprimir a etiqueta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       CAD_FM_R_E01 := TCAD_FM_R_E01.Create(Self);
       CAD_FM_R_E01.Show;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.btnImprimeEventoClick(Sender: TObject);
begin
  odNfe.Title := 'Selecione a NFE';
  odNfe.DefaultExt := '*.XML';
  odNfe.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  //v antigo
  //odNfe.InitialDir := NFe.Configuracoes.Geral.PathSalvar;
  odNfe.InitialDir := NFe.Configuracoes.Arquivos.PathSalvar;
  if odNfe.Execute then
  begin
    NFe.NotasFiscais.Clear;
    NFe.NotasFiscais.LoadFromFile(odNfe.FileName);
  end;

  odNfe.Title := 'Selecione o Evento';
  odNfe.DefaultExt := '*.XML';
  odNfe.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  //v antigo
  //odNfe.InitialDir := NFe.Configuracoes.Geral.PathSalvar;
  odNfe.InitialDir := NFe.Configuracoes.Arquivos.PathSalvar;
  if odNfe.Execute then
  begin
    NFe.EventoNFe.Evento.Clear;
    NFe.EventoNFe.LerXML(odNfe.FileName) ;
    NFe.ImprimirEvento;
  end;

end;

procedure TFAT_FM_M_CXA_NFE.btnImprimeNFEClick(Sender: TObject);
begin




  odNfe.Title      := 'Selecione a NFE';
  odNfe.DefaultExt := '*-nfe.XML';
  odNfe.Filter     := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  //v antigo
  //odNfe.InitialDir := NFe.Configuracoes.Geral.PathSalvar;
  odNfe.InitialDir := NFe.Configuracoes.Arquivos.PathNFe;//Alterado de PathSalvar para PathNfe
  odNfe.FileName   := '';
  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString) <> '' then
     begin
       odNfe.FileName := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe';
     end;
  if odNfe.Execute then
     begin
       NFE.NotasFiscais.Clear;
       NFE.NotasFiscais.LoadFromFile(odNfe.FileName,false);
      // v antigo
      { if NFE.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
         begin
           NFE.WebServices.ConsultaDPEC.NFeChave := NFE.NotasFiscais.Items[0].NFe.infNFe.ID;
           NFE.WebServices.ConsultaDPEC.Executar;
           NFE.DANFE.ProtocoloNFe := NFE.WebServices.ConsultaDPEC.nRegDPEC +' '+
              DateTimeToStr(NFE.WebServices.ConsultaDPEC.dhRegDPEC);
         end;}
       if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
          danfe.Cancelada := true;
       Nfe.NotasFiscais.Imprimir;
       danfe.Cancelada := false;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.btnImprimeTituloClick(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin
  if (dmGeral.BUS_CD_M_NFE_CXA.IsEmpty) then
    begin
      ShowMessage('Nenhuma nota fiscal foi selecionada.');
      abort;
    end;

 { if dmGeral.BUS_CD_M_NFE_CXAstatus.AsInteger <> 1 then
    begin
      ShowMessage('Nota fiscal não foi finalizada.');
      abort;
    end;

  if dmGeral.BUS_CD_M_NFE_CXAtipo_nf.AsString <> 'S' then
    begin
      ShowMessage('Nota fiscal deve ser de venda.');
      abort;
    end; }
  try

  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
      dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([97,dmGeral.BUS_CD_M_NFE_CXAid_fiscal.Text]));

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
      dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXAid_emitente.Text]));

  dmGeral.BUS_CD_C_FPG2.Close;
  dmGeral.BUS_CD_C_FPG2.Data :=
      dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_RECid_forma_pag.Text]));

  if DmGeral.BUS_CD_M_REC.IsEmpty then
     begin
       ShowMessage('Não existe forma de pagamento tipo "Duplicata" nesta nota fiscal.');
       exit;
     end;

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if FileExists(PathImg) then
     begin
        LogoEmpresa := TfrxPictureView(dmGeral.FIN_FR_M_REC_DUP.FindObject('Picture1'));
        if Assigned(LogoEmpresa) then
           LogoEmpresa.Picture.LoadFromFile(PathImg);
        LogoEmpresa := TfrxPictureView(dmGeral.FIN_FR_M_REC_DUP.FindObject('Picture2'));
        if Assigned(LogoEmpresa) then
           LogoEmpresa.Picture.LoadFromFile(PathImg);
     end;

  if dmGeral.BUS_CD_C_FPG2.FieldByName('aval_duplicata').AsBoolean then
    dmGeral.FIN_FR_M_REC_DUP.Variables['Aval'] := QuotedStr( 'T')
  else
    dmGeral.FIN_FR_M_REC_DUP.Variables['Aval'] := QuotedStr('F');

  dmGeral.FIN_FR_M_REC_DUP.PrepareReport();
  dmGeral.FIN_FR_M_REC_DUP.ShowReport();

  finally
    dmGeral.BUS_CD_M_REC.Close;
    dmGeral.BUS_CD_C_CLI.Close;
  end;
end;


procedure TFAT_FM_M_CXA_NFE.ImprimirPedidoMatricial;
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
   rdPedCompleto.imp(12, 01, '| Codigo  Descricao do Produto                      Und    Qtde  Vlr.Unitario  Vlr. Desc     Vlr.Total  Rua  Prateleira  Escaninho |');
   rdPedCompleto.imp(13, 01, '|' + Repete('-', 130) + '|');


   linha := 14;

   while (not dmGeral.FAT_CD_M_PED_ITE.Eof) do
     begin
       rdPedCompleto.imp(linha, 01, '| ' + Copy(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').asString, 1, 6));
       rdPedCompleto.imp(linha, 11, Copy(dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_NOMEITE').asString, 1, 41));


       rdPedCompleto.imp(linha, 53, Copy(dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_ID_UND_VENDA').asString, 1, 3));
       rdPedCompleto.impval(linha, 53, '##########0', dmGeral.FAT_CD_M_PED_ITE.FieldByname('Qtde').asFloat, []);


       rdPedCompleto.impval(linha, 64, '###,###,##0.00', dmGeral.FAT_CD_M_PED_ITE.FieldByname('Vlr_Unitario').asCurrency, []);
       rdPedCompleto.impval(linha, 79, '###,##0.00', dmGeral.FAT_CD_M_PED_ITE.FieldByname('Vlr_Desconto').asCurrency, []);
       rdPedCompleto.impval(linha, 89, '###,###,##0.00', dmGeral.FAT_CD_M_PED_ITE.FieldByname('Vlr_Liquido').asCurrency, []);

       rdPedCompleto.imp(linha, 105, dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_RUA').asString);
       rdPedCompleto.imp(linha, 110,  dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_PRATELEIRA').asString);
       rdPedCompleto.imp(linha, 122, dmGeral.FAT_CD_M_PED_ITE.FieldByName('INT_ESCANINHO').asString);
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


procedure TFAT_FM_M_CXA_NFE.btnImprimirDupAceiteClick(Sender: TObject);
begin
  GerarDuplicataAceite;
end;

procedure TFAT_FM_M_CXA_NFE.btnImprimirPedVendaClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  codigo,empresa: string;
  memo1,memo2 :TfrxMemoView;
  tipo_impressao:integer;
begin
  inherited;

  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
    begin
      ShowMessage('É necessário selecionar registro de nota fiscal.');
      exit;
    end;

  if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsString = '') or
      (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger = 0)) then
    begin
      ShowMessage('Não existe pedido de venda associado à nota fiscal selecionado.');
      exit;
    end;

   dmGeral.FAT_CD_M_PED.Close;
        dmGeral.FAT_CD_M_PED.Data :=
        dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsString,
                                                       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsString]));

  if not dmGeral.FAT_CD_M_PED.IsEmpty then
      begin


      {  empresa := dmGeral.FAT_CD_M_PEDid_empresa.text;
        codigo := dmGeral.FAT_CD_M_PEDid_pedido.text; }


        {dmGeral.FAT_CD_M_PED.Close;
        dmGeral.FAT_CD_M_PED.Data :=
        dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([0,empresa,codigo]));  }

        dmGeral.BusCliente(0, dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);


       { case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
              0: pplbSituacaoPed.Caption := 'Em aberto';
              1: pplbSituacaoPed.Caption := 'Reprovado';
              2: pplbSituacaoPed.Caption := 'Em produção';
              3: pplbSituacaoPed.Caption := 'Faturado';
              4: pplbSituacaoPed.Caption := 'Cancelado';
        else
             pplbSituacaoPed.Caption := '??????';
        end;

        FAT_RB_M_PED.PrintReport;     }



        if dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean  then //enSoftSpuma;
          begin

             if MessageDlg('Deseja impressão matricial?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                if not dmGeral.FAT_CD_M_PED.IsEmpty then
                  begin
                    case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
                      0: FAT_FR_M_PED_SGQ.Variables['SituacaoPed'] := QuotedStr('Em aberto');
                      1: FAT_FR_M_PED_SGQ.Variables['SituacaoPed'] := QuotedStr('Reprovado');
                      2: FAT_FR_M_PED_SGQ.Variables['SituacaoPed'] := QuotedStr('Em produção');
                      3: FAT_FR_M_PED_SGQ.Variables['SituacaoPed'] := QuotedStr('Faturado');
                      4: FAT_FR_M_PED_SGQ.Variables['SituacaoPed'] := QuotedStr('Cancelado');
                    else
                    FAT_FR_M_PED_SGQ.Variables['SituacaoPed'] := QuotedStr('??????');
                    end;


                    FAT_FR_M_PED_SGQ.Variables['ativado_sgq'] := false;
                    if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
                         (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
                      begin
                        FAT_FR_M_PED_SGQ.Variables['ativado_sgq'] := true;
                      end;

                    FAT_FR_M_PED_SGQ.Variables['ativado_cor'] := false;
                    if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
                         (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
                      begin
                        FAT_FR_M_PED_SGQ.Variables['ativado_cor'] := true;
                      end;

                    {memo1 := TfrxMemoView (FAT_FR_M_PED_SGQ.FindComponent('Memo30'));
                    memo2 := TfrxMemoView (FAT_FR_M_PED_SGQ.FindComponent('Memo31'));

                    if dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
                      begin
                        memo1.Visible := True;
                        memo2.Visible := True;
                      end
                    else
                      begin
                        memo1.Visible := False;
                        memo2.Visible := False;
                      end;}
                    PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                    if FileExists(PathImg) then
                      begin
                        LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_SGQ.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                          LogoEmpresa.Picture.LoadFromFile(PathImg);
                      end;
                    FAT_FR_M_PED_SGQ.PrepareReport();
                    FAT_FR_M_PED_SGQ.ShowReport();
                  end;
              end

             else
              begin
                if not dmGeral.FAT_CD_M_PED.IsEmpty then
                  begin
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

                    {memo1 := TfrxMemoView (FAT_FR_M_PED_SGQ.FindComponent('Memo30'));
                    memo2 := TfrxMemoView (FAT_FR_M_PED_SGQ.FindComponent('Memo31'));

                    if dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
                      begin
                        memo1.Visible := True;
                        memo2.Visible := True;
                      end
                    else
                      begin
                        memo1.Visible := False;
                        memo2.Visible := False;
                      end;}
                    PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                    if FileExists(PathImg) then
                      begin
                        LogoEmpresa := TfrxPictureView(FAT_FR_M_PED_SGQ2.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                          LogoEmpresa.Picture.LoadFromFile(PathImg);
                      end;
                    FAT_FR_M_PED_SGQ2.PrepareReport();
                    FAT_FR_M_PED_SGQ2.ShowReport();
                  end
              end;

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

                 {memo1 := TfrxMemoView (FAT_FR_M_PED_REV.FindComponent('Memo30'));
                 memo2 := TfrxMemoView (FAT_FR_M_PED_REV.FindComponent('Memo31'));

                 if dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
                  begin
                    memo1.Visible := True;
                    memo2.Visible := True;
                  end
                 else
                  begin
                    memo1.Visible := False;
                    memo2.Visible := False;
                  end;}
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
      end;
   dmGeral.FAT_CD_M_PED.Close;

end;

procedure TFAT_FM_M_CXA_NFE.btnImprimirPromissoriaClick(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin
  if (dmGeral.BUS_CD_M_NFE_CXA.IsEmpty) then
    begin
      ShowMessage('Nenhuma nota fiscal foi selecionada.');
      abort;
    end;

  if dmGeral.BUS_CD_M_NFE_CXAstatus.AsInteger <> 1 then
    begin
      ShowMessage('Nota fiscal não foi finalizada.');
      abort;
    end;

  if dmGeral.BUS_CD_M_NFE_CXAtipo_nf.AsString <> 'S' then
    begin
      ShowMessage('Nota fiscal deve ser de venda.');
      abort;
    end;
  try

  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
      dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([101,dmGeral.BUS_CD_M_NFE_CXAid_fiscal.Text]));

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
      dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXAid_emitente.Text]));

  if DmGeral.BUS_CD_M_REC.IsEmpty then
     begin
       ShowMessage('Não existe forma de pagamento tipo "Promissória" nesta nota fiscal.');
       exit;
     end;

  //PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  {if FileExists(PathImg) then
     begin
        LogoEmpresa := TfrxPictureView(FAT_FR_M_NFE_DUP.FindObject('Picture1'));
        if Assigned(LogoEmpresa) then
           LogoEmpresa.Picture.LoadFromFile(PathImg);
     end;}

  dmGeral.FIN_FR_M_REC_PRO.PrepareReport();
  dmGeral.FIN_FR_M_REC_PRO.ShowReport();

  finally
    dmGeral.BUS_CD_M_REC.Close;
    dmGeral.BUS_CD_C_CLI.Close;
  end;
end;

procedure TFAT_FM_M_CXA_NFE.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa,msg : String;
// memoRespWS,MemoResp:TMemo;
 ReabrePed: String;
 SMPrincipal: TSMClient;
 retorno: String;
 xAno:integer;
begin
   if dmGeral.BuscarLicensa in [3,4,5,6,7] then
      exit;


   if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;


   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0) then
     begin
       dmGeral.BUS_CD_M_NFE.Close;
       dmGeral.BUS_CD_M_NFE.Data :=
       dmGeral.BUS_CD_M_NFE.DataRequest(
         VarArrayOf([116,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsString,
                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString]));

       msg := '';
       try
         dmGeral.BUS_CD_M_NFE.Filtered := true;
         dmGeral.BUS_CD_M_NFE.Filter := 'ID_SEQ_FAT_GAR>'+dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_SEQ_FAT_GAR').AsString;
         dmGeral.BUS_CD_M_NFE.IndexFieldNames := 'ID_SEQ_FAT_GAR';
         if not dmGeral.BUS_CD_M_NFE.IsEmpty  then
            begin
              dmGeral.BUS_CD_M_NFE.First;
              while (not dmGeral.BUS_CD_M_NFE.EOF) do
               begin
                if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                    (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                    (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                    (not((dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                    (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0))) then
                    begin
                      if msg <> '' then
                        begin
                           msg := msg+ ', '+dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
                        end
                      else
                        begin
                           msg := msg+dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
                        end;
                    end;

                 dmGeral.BUS_CD_M_NFE.Next;
               end;
            end;

       finally
         dmGeral.BUS_CD_M_NFE.Filtered := false;
       end;

      if msg <> '' then
        begin
          ShowMessage('As notas abaixo deverão ser primeiramente canceladas ou inutilizadas na seguinte ordem: '+#13+#10+'Cód. fiscal: '+msg);
          exit;
        end;
     end;

  dmGeral.BUS_CD_M_NFE.Close;
  dmGeral.BUS_CD_M_NFE.Data :=
  dmGeral.BUS_CD_M_NFE.DataRequest(
      VarArrayOf([115,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsString,
                      dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString]));

  msg := '';
  if not dmGeral.BUS_CD_M_NFE.IsEmpty  then
    begin
      dmGeral.BUS_CD_M_NFE.First;
      while (not dmGeral.BUS_CD_M_NFE.EOF) do
       begin
        if  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString <> '02') and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString <> '04') and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString <> '05') and
            (not((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger =0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger =0))) then
           msg := msg + dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString+', ';
         dmGeral.BUS_CD_M_NFE.Next;
       end;
    end;
  if msg <> '' then
    begin
      ShowMessage('A nota fiscal possui outras notas complementares que não estão canceladas ou inutilizadas'+#13+#10+'Nº fiscal:'+msg);
      exit;
    end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('numero').AsInteger = 0) then
     begin
       ShowMessage('Nota fiscal não tem número.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('modelo').AsString = '2D') OR
     (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('modelo').AsString = '65') then
     begin
       ShowMessage('Só é permitido inutilizar NFe.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('status').AsInteger = 1) then
     begin
       ShowMessage('Não é permitido INUTILIZAR nota fiscal já encerrada.');
       exit;
     end;

  try

  if MessageDlg('Deseja realmente inutilizar a nota '+
     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Numero').asString+' de '+
     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('dta_emissao').AsString , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin

       xAno := YearOf(dmGeral.BUS_CD_M_NFE_CXAdta_emissao.AsDateTime);

       Ano           := inttostr(xAno);
       NumeroInicial := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Numero').asString;
       NumeroFinal   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Numero').asString;
       Modelo        := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Modelo').asString;
       Serie         := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Serie').asString);

       if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
          exit;
        NFe.WebServices.Inutiliza(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString,
                                 Justificativa,
                                 StrToInt(Ano),
                                 StrToInt(Modelo),
                                 StrToInt(Serie),
                                 StrToInt(NumeroInicial),
                                 StrToInt(NumeroFinal));



        MemoResp.Lines.Text :=  NFe.WebServices.Inutilizacao.RetWS;
        memoRespWS.Lines.Text :=  NFe.WebServices.Inutilizacao.RetornoWS;
        LoadXML(NFe.WebServices.Inutilizacao.RetornoWS, WBResposta);



        MemoDados.Lines.Add('');
        MemoDados.Lines.Add('Inutilização');
        MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(Nfe.WebServices.Inutilizacao.tpAmb));
        MemoDados.Lines.Add('verAplic: ' +Nfe.WebServices.Inutilizacao.verAplic);
        MemoDados.Lines.Add('cStat: '    +IntToStr(Nfe.WebServices.Inutilizacao.cStat));
        MemoDados.Lines.Add('xMotivo: '  +Nfe.WebServices.Inutilizacao.xMotivo);
        MemoDados.Lines.Add('cUF: '      +IntToStr(Nfe.WebServices.Inutilizacao.cUF));
        MemoDados.Lines.Add('Ano: '      +IntToStr(Nfe.WebServices.Inutilizacao.Ano));
        MemoDados.Lines.Add('CNPJ: '      +Nfe.WebServices.Inutilizacao.CNPJ);
        MemoDados.Lines.Add('Modelo: '      +IntToStr(Nfe.WebServices.Inutilizacao.Modelo));
        MemoDados.Lines.Add('Serie: '      +IntToStr(Nfe.WebServices.Inutilizacao.Serie));
        MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(Nfe.WebServices.Inutilizacao.NumeroInicial));
        MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(Nfe.WebServices.Inutilizacao.NumeroFinal));
        MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(Nfe.WebServices.Inutilizacao.dhRecbto));
        MemoDados.Lines.Add('Protocolo: '      +Nfe.WebServices.Inutilizacao.Protocolo);

        try
          if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger > 0) OR
             (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_ordem').AsInteger > 0) then
             begin
                if MessageDlg('A NFe foi realmente inutilizada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                   begin
                     dmGeral.BUS_CD_M_NFE_CXA.edit;
                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger     := 1;
                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean   := true;
                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString := '05';
                     dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                     ReabrePed := 'N';
                     {if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger > 0) then
                        begin
                         if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            begin
                              ReabrePed := 'S';
                            end;
                        end;}


                     if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
                      begin

                         ReabrePed := 'S';
                         dmGeral.BUS_CD_M_NFE.Close;
                         dmGeral.BUS_CD_M_NFE.Data :=
                         dmGeral.BUS_CD_M_NFE.DataRequest(
                            VarArrayOf([15,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
                         dmGeral.BUS_CD_M_NFE.First;
                         if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                            begin
                              while not dmGeral.BUS_CD_M_NFE.Eof do
                                 begin
                                   if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                      begin
                                        if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                           (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                            (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                               ReabrePed := 'N';

                                      end;
                                   dmGeral.BUS_CD_M_NFE.Next;
                                 end;
                            end;
                         dmGeral.BUS_CD_M_NFE.close;

                         if ReabrePed = 'S' then
                            begin
                             if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                  ReabrePed := 'S';
                                end
                             else
                                begin
                                   ReabrePed := 'N';
                                end;
                            end
                         else
                            begin
                              ShowMessage('Não será possivel reabrir pedido pois há notas faturadas.');
                            end;
                      end;



                     if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) and
                            ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString = '') or
                           (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0)))) then
                      begin

                         ReabrePed := 'S';
                         dmGeral.BUS_CD_M_NFE.Close;
                         dmGeral.BUS_CD_M_NFE.Data :=
                         dmGeral.BUS_CD_M_NFE.DataRequest(
                            VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
                         dmGeral.BUS_CD_M_NFE.First;
                         if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                            begin
                              while not dmGeral.BUS_CD_M_NFE.Eof do
                                 begin
                                   if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                      begin
                                        if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                           (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                            (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                               ReabrePed := 'N';

                                      end;
                                   dmGeral.BUS_CD_M_NFE.Next;
                                 end;
                            end;
                         dmGeral.BUS_CD_M_NFE.close;

                         if ReabrePed = 'S' then
                            begin
                             if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                  ReabrePed := 'S';
                                end
                             else
                                begin
                                   ReabrePed := 'N';
                                end;
                            end
                         else
                            begin
                              ShowMessage('Não será possivel reabrir OS pois há notas faturadas.');
                            end;
                      end;

                     if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
                       begin
                         ReabrePed := 'N';
                       end;

                      try
                         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                         retorno := SMPrincipal.enReabrePed(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,ReabrePed);
                         if retorno <> 'OK' then
                            begin
                              ShowMessage('Erro: ' + retorno);
                            end
                         else
                            begin
                              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_ordem').AsInteger>0 then
                                begin
                                  if ReabrePed='N' then
                                    Showmessage('Ordem de serviço cancelado com sucesso!');
                                  if ReabrePed='S' then
                                    Showmessage('Ordem de serviço reaberto com sucesso!');
                                end;
                              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger>0 then
                                begin
                                  if ReabrePed='N' then
                                    Showmessage('Pedido de venda cancelado com sucesso!');
                                  if ReabrePed='S' then
                                    Showmessage('Pedido de venda reaberto com sucesso!');
                                end;
                            end;
                      finally
                         FreeAndNil(SMPrincipal);
                         //AtuGridNota;
                      end;

                  end;
             end
          else
             begin
                dmGeral.BUS_CD_M_NFE_CXA.edit;
                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger     := 1;
                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean   := true;
                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString := '05';
                dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
             end;
        finally
         // AtuGridNota;
        end;
     end
  else
     begin
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger > 0) or
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_ordem').AsInteger > 0) then
          begin
              try
                if MessageDlg('Deseja inutilizar a nota fiscal no sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                   begin
                     dmGeral.BUS_CD_M_NFE_CXA.edit;
                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger     := 1;
                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean   := true;
                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString := '05';
                     dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);


                     ReabrePed := 'N';
                     {if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger > 0) then
                        begin
                         if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            begin
                              ReabrePed := 'S';
                            end;
                        end;}


                      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
                      begin

                         ReabrePed := 'S';
                         dmGeral.BUS_CD_M_NFE.Close;
                         dmGeral.BUS_CD_M_NFE.Data :=
                         dmGeral.BUS_CD_M_NFE.DataRequest(
                            VarArrayOf([15,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
                         dmGeral.BUS_CD_M_NFE.First;
                         if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                            begin
                              while not dmGeral.BUS_CD_M_NFE.Eof do
                                 begin
                                   if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                      begin
                                        if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                           (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                            (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                               ReabrePed := 'N';

                                      end;
                                   dmGeral.BUS_CD_M_NFE.Next;
                                 end;
                            end;
                         dmGeral.BUS_CD_M_NFE.close;

                         if ReabrePed = 'S' then
                            begin
                             if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                  ReabrePed := 'S';
                                end
                             else
                                begin
                                   ReabrePed := 'N';
                                end;
                            end
                         else
                            begin
                              ShowMessage('Não será possivel reabrir pedido pois há notas faturadas.');
                            end;
                      end;



                     if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) and
                            ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString = '') or
                           (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0)))) then
                       begin
                         ReabrePed := 'S';
                         dmGeral.BUS_CD_M_NFE.Close;
                         dmGeral.BUS_CD_M_NFE.Data :=
                         dmGeral.BUS_CD_M_NFE.DataRequest(
                            VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
                         dmGeral.BUS_CD_M_NFE.First;
                         if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                            begin
                              while not dmGeral.BUS_CD_M_NFE.Eof do
                                 begin
                                   if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                      begin
                                        if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                           (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                            (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                                ReabrePed := 'N';
                                      end;
                                   dmGeral.BUS_CD_M_NFE.Next;
                                 end;
                            end;
                         dmGeral.BUS_CD_M_NFE.close;

                         if ReabrePed = 'S' then
                            begin
                             if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                  ReabrePed := 'S';
                                end
                             else
                                begin
                                   ReabrePed := 'N';
                                end;
                            end
                         else
                            begin
                              ShowMessage('Não será possivel reabrir OS pois há notas faturadas.');
                            end;
                      end;
                    if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
                     begin
                       ReabrePed := 'N';
                     end;


                      try
                         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                         retorno := SMPrincipal.enReabrePed(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,ReabrePed);
                         if retorno <> 'OK' then
                            begin
                              ShowMessage('Erro: ' + retorno);
                            end
                         else
                            begin

                              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_ordem').AsInteger>0 then
                                begin
                                  if ReabrePed='N' then
                                    Showmessage('Ordem de serviço cancelado com sucesso!');
                                  if ReabrePed='S' then
                                    Showmessage('Ordem de serviço reaberto com sucesso!');
                                end;
                              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger>0 then
                                begin
                                  if ReabrePed='N' then
                                    Showmessage('Pedido de venda cancelado com sucesso!');
                                  if ReabrePed='S' then
                                    Showmessage('Pedido de venda reaberto com sucesso!');
                                end;

                            end;
                      finally
                         FreeAndNil(SMPrincipal);
                         //AtuGridNota;
                      end;

                  end;
              finally
                 //AtuGridNota;
              end;
          end
       else
          begin
            if MessageDlg('Deseja somente inutilizar a nota fiscal no sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                 if MessageDlg('Continua?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                    begin
                      dmGeral.BUS_CD_M_NFE_CXA.edit;
                      dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger     := 1;
                      dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean   := true;
                      dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString := '05';
                      dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                    end;
               end;
          end;
     end;
  finally
    AtuGridNota;
  end;


end;

procedure TFAT_FM_M_CXA_NFE.btnNotaFiscalClick(Sender: TObject);
Var
  numNFe,numLote:String;
  Ano, Mes, Dia : Word;
  SMPrincipal: TSMClient;
  retorno: String;
  Ambiente, Versao, Status, Estado, Motivo,
  cMsg, xMsg, Recibo, Protocolo, chave: String;
  id_fiscal, ReabrePed: String;
  vlrTotalTit:currency;
  PathImg,msg: string;
  LogoEmpresa: TfrxPictureView;
begin
  if dmGeral.BuscarLicensa in [3,4,5,6,7] then
    exit;

  cxanfe_GeraNFCe := false;

  retorno := '';

  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;



  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0) then
    begin
      if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PED_MOD_FRETE').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldBYName('ped_vlr_frete').AsCurrency > 0))  then
        begin
          ShowMessage('Não se Gera NF-e de um pedido de venda com frete do tipo "CIF" e com o total dos itens diferente do total do pedido.');
          exit;
        end;
    end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0) then
     begin
       dmGeral.BUS_CD_M_NFE.Close;
       dmGeral.BUS_CD_M_NFE.Data :=
       dmGeral.BUS_CD_M_NFE.DataRequest(
         VarArrayOf([116,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsString,
                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString]));

       msg := '';
       try
         dmGeral.BUS_CD_M_NFE.Filtered := true;
         dmGeral.BUS_CD_M_NFE.Filter := 'ID_SEQ_FAT_GAR<'+dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_SEQ_FAT_GAR').AsString;
         dmGeral.BUS_CD_M_NFE.IndexFieldNames := 'ID_SEQ_FAT_GAR';
         if not dmGeral.BUS_CD_M_NFE.IsEmpty  then
            begin
              dmGeral.BUS_CD_M_NFE.First;
              while (not dmGeral.BUS_CD_M_NFE.EOF) do
               begin

                if not ((dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0)   and
                   (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1)   and
                   ((dmGeral.BUS_CD_M_NFE.FieldByName('NFE_RECIBO').AsString <> '') or
                   (dmGeral.BUS_CD_M_NFE.FieldByName('IND_NF').AsString = '2')) and
                   (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString ='00')) then
                   begin

                    if msg <> '' then
                      begin
                         msg := msg+ ', '+dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
                      end
                    else
                      begin
                         msg := msg+dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
                      end;
                   end;

                 dmGeral.BUS_CD_M_NFE.Next;
               end;
            end;
       finally
         dmGeral.BUS_CD_M_NFE.Filtered := false;
       end;

       if msg <> '' then
        begin
          ShowMessage('As notas abaixo deverão ser primeiramente faturadas na seguinte ordem: '+#13+#10+'Cód. fiscal: '+msg);
          exit;
        end;
     end;




  if MessageDlg('Deseja realmente gerar a NFe?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       try
            AtuGridNota;

            if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_nf').AsInteger in [2]) then // 2 - Nota de Serviço
              begin
                ShowMessage('Não é permitido emitir NFe para uma nota fiscal de serviço.');
                exit;
              end;

            if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'E') and
               (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('IND_EMITENTE').AsString = '0') and
               (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_OBS').AsString = '')) then
               begin
                 ShowMessage('Esta nota fiscal de entrada não pode ser emitida sem observação fiscal.');
                 exit;
               end;

            if not FAT_RN_M_CXA.FatVerifDadosNfCxa(1) then
               begin
                 exit;
               end;

            if id_fiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
               begin
                 ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
                 abort;
               end;

            dmGeral.BusCondPgto(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_condicao_pag').AsString);
            if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger in [0,1]) then // Se a condição de pagamento for a vista ou a prazo
               begin
                  // Entra neste IF caso as formas de pagamento devam ser informada pela pessoa do Caixa.
                  if not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ativa_titulos').AsBoolean) then
                      begin
                        ChamarLanctoFPG;

                        AtuGridNota;

                        dmGeral.BUS_CD_M_NFE_TIT_CXA.Cancel;
                        if dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
                           begin
                             ShowMessage('Nenhuma forma de pagamento foi informada na nota fiscal!');
                             AtuGridNota;
                             exit;
                           end;
                      end;
               end;

            if id_fiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
               begin
                 ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
                 abort;
               end;

            if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0 then
               begin

                  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0) or
                     (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) then
                      begin

                        // A linha do IF foi Colocado por Maxsuel Victor em 14/07/2016
                        if ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'5929') and
                            (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'6929')) then
                           begin
                             // Maxsuel Victor 22/09/2015
                                // Se alterar algum código aqui , verificar se é necessário fazer pra Pré-Venda, pois o código
                                // abaixo existe no momento da geração da pré-venda também.
                             FAT_RN_M_NFE.FatRecalTributItens(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                             if (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_OBS').AsString) = '') then
                                FAT_RN_M_NFE.FatFormarNfeObs(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                             fatNfeCalcTotal(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);

                             dmGeral.BUS_CD_M_NFE_CXA.Post;

                             if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                                begin
                                  if miFaturaSemPedido.Checked = false then
                                     begin
                                       if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_fin_base_prod').AsBoolean then
                                          begin
                                            if FatAtualizarFinPcp(1,PCP_CD_M_ORS_PCP,FIN_CD_M_REC_PCP,dmGeral.BUS_CD_M_REC_BOL,false) = 'OK' then
                                               begin
                                                 FIN_CD_M_REC_PCP.ApplyUpdates(0);
                                               end;
                                          end;
                                     end;
                                end;
                           end;
                      end;
                  { Irá atualizar alguns campos da nota fiscal e a sequência da numeração antes de enviar para Sefaz:
                    Tabela: FAT_TB_M_NFE
                        ID_ABERTURA - NUMERO - MODELO - SERIE - NFE_TIPO_EMISSAO - NFE_TIPO_AMBIENTE - NFE_ECF
                    Tabela: CAD_TB_C_PAR_SER
                        NFE_NUMERO }
                  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                  try
                    id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                    retorno   := SMPrincipal.enAtuDadosNF(id_fiscal,dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString,'1');
                    if retorno <> 'OK' then
                       begin
                         ShowMessage(Retorno);
                         abort;
                       end;
                    FAT_RN_M_CXA.FatAtuDadosTelaCxa;
                    dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

                  finally
                    FreeAndNil(SMPrincipal);
                  end;
                  // -------------------------------------------------------------------------
               end;

            if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_ecf').AsInteger <> 0 then
               begin
                 ShowMessage('ATENÇÃO: Esta nota fiscal não pode ser mais emitida como NFe.');
                 if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_ecf').AsInteger = 2 then // NFCe
                    begin
                      ShowMessage('Usuário deverá emitir o documento eletrônico pelo botão Gerar NFCe, pois esta nota fiscal já foi preparada para ser emitida como NFCe.');
                    end;
                 abort;
               end;

            dmGeral.BUS_CD_M_NFE_CXA.Edit;

            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime :=
                    dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
                    dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;

            dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);

            numNfe  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString;
            DecodeDate(xDataSis, Ano, Mes, Dia);
            numLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
            numLote := OnlyNumber(numLote);

            NFe.NotasFiscais.Clear;
            // v antigo
            //NFe.Configuracoes.Geral.PathSalvar := ExtractFilePath(Application.ExeName) +
            //   dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;

           {NFe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName) +
               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;}

            NFe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName) +
               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML_OUTROS').AsString;

            NFe.Configuracoes.Arquivos.PathNfe := ExtractFilePath(Application.ExeName) +
               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;

            DANFE.NumCopias := 1;


            GerarNFe(numNFe);

            NFe.NotasFiscais.GerarNFe;
            //try  esse try estava gerando a msg Arguments out of range, escondendo para o cliente a msg detelhada.
            NFe.Enviar(numLote,True,false);

            showmessage(NFE.NotasFiscais.Items[0].NFe.infNFe.ID);
            showmessage(inttostr(NFE.NotasFiscais.Items[0].NFe.procNFe.cStat));
            //except
               MemoResp.Lines.Text   := UTF8Encode(NFe.WebServices.Retorno.RetWS);
               memoRespWS.Lines.Text := UTF8Encode(NFe.WebServices.Retorno.RetornoWS);
               // v antigo
               // LoadXML(MemoResp, WBResposta);
               LoadXML(Nfe.WebServices.Retorno.RetornoWS, WBResposta);
            //end;

            MemoDados.Lines.Clear;

            Ambiente   := TpAmbToStr(NFe.WebServices.Retorno.TpAmb);
            Versao     := NFe.WebServices.Retorno.verAplic;
            Status     := IntToStr(NFe.WebServices.retorno.cStat);
            Estado     := IntToStr(NFe.WebServices.retorno.cUF);
            Motivo     := NFe.WebServices.Retorno.xMotivo;
            cMsg       := IntToStr(NFe.WebServices.Retorno.cMsg);
            xMsg       := NFe.WebServices.Retorno.xMsg;
            Recibo     := NFe.WebServices.Retorno.Recibo;
            Protocolo  := NFe.WebServices.Retorno.Protocolo;
            chave      := NFe.WebServices.Retorno.ChaveNFe;

            MemoDados.Lines.Add('Envio NFe');
            MemoDados.Lines.Add('Ambiente: ' + Ambiente );
            MemoDados.Lines.Add('Versão: '   + Versao);
            MemoDados.Lines.Add('Status: '   + Status);
            MemoDados.Lines.Add('Estado: '   + Estado);
            MemoDados.Lines.Add('Motivo: '   + Motivo);
            MemoDados.Lines.Add('cMsg: '     + cMsg);
            MemoDados.Lines.Add('xMsg: '     + xMsg);
            MemoDados.Lines.Add('Nº Recibo: '+ Recibo);
            MemoDados.Lines.Add('Nº Protocolo: '+ Protocolo);

            dmGeral.BUS_CD_M_NFE_CXA.Edit;
            //dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString    := 'Testes';
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString    := Recibo;
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString     := chave;
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString := Protocolo;
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean     := true;  // Quer dizer que a nota foi emitida pela própria empresa e não de terceiros.

            // If inserido por Maxsuel Victor, em 14/06/2017 devido a tarefa 3466
            if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_permite_salv_xml').AsBoolean then
               begin
                  dmGeral.BUS_CD_M_NFE_ARQ_CXA.Open;
                  if not dmGeral.BUS_CD_M_NFE_ARQ_CXA.IsEmpty then
                     dmGeral.BUS_CD_M_NFE_ARQ_CXA.edit
                  else
                     dmGeral.BUS_CD_M_NFE_ARQ_CXA.Insert;
                  dmGeral.BUS_CD_M_NFE_ARQ_CXAarq_xml.LoadFromFile(NFE.NotasFiscais.Items[0].NomeArq);
                  dmGeral.BUS_CD_M_NFE_ARQ_CXA.Post;
               end;
           try

                   //showmessage(inttostr(NFE.NotasFiscais.Items[0].NFe.procNFe.cStat));

                   //case NFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat of
                   //case 100 of
            case NFE.NotasFiscais.Items[0].NFe.procNFe.cStat of
               100:
                begin
                   dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 1;
                   dmGeral.BUS_CD_M_NFE_CXA.Post;
                   try
                     if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                        begin
                          ShowMessage('Geração da NFe foi realizada com sucesso!');
                          if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_IMPRIME_ETQ').AsBoolean = True) then
                              begin
                                if MessageDlg('Deseja imprimir a etiqueta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                   begin
                                     CAD_FM_R_E01 := TCAD_FM_R_E01.Create(Self);
                                     CAD_FM_R_E01.Show;
                                   end;
                              end;
                          if (
                              (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean) and
                              (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ASSOCIADO_ACAVASF').AsBoolean)
                             ) then
                             begin
                               dmgeral.BUS_CD_M_TER_NFE.Close;
                               dmGeral.BUS_CD_M_TER_NFE.Data :=
                               dmGeral.BUS_CD_M_TER_NFE.DataRequest(VarArrayOf([dmgeral.BUS_CD_M_NFE_CXAid_fiscal.AsInteger]));
                               if not  dmgeral.BUS_CD_M_TER_NFE.IsEmpty then
                                  begin
                                    if MessageDlg('Deseja imprimir o termo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                       begin
                                         FAT_CD_M_TER_NFE.PrepareReport();
                                         FAT_CD_M_TER_NFE.ShowReport();
                                       end;
                                   end;
                               dmGeral.BUS_CD_M_TER_NFE.close;
                             end;



                           if (dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount>0) then
                             begin

                               vlrTotalTit :=0;
                               dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                               while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                                 begin
                                   if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_DOCIMPRESSO').AsInteger in [3,5,6] then
                                     begin
                                       vlrTotalTit :=vlrTotalTit + dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('VLR_TITULO').AsCurrency;
                                     end;
                                   dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                                 end;

                               if vlrTotalTit > 0 then
                                 begin
                                    if MessageDlg('Deseja imprimir o recibo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                      begin
                                          try

                                           dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
                                           dmGeral.BUS_CD_M_NFE_CXA.Filter := 'id_fiscal ='+id_fiscal;

                                           dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := true;
                                           dmGeral.BUS_CD_M_NFE_TIT_CXA.Filter := 'int_docimpresso = 3 or int_docimpresso = 5 or int_docimpresso = 6';

                                           dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                                           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                                           FAT_FR_M_CXA_RVS.Variables['vlr_total_tit'] := QuotedStr(FormatCurr('###,###,##0.00' ,vlrTotalTit));
                                           FAT_FR_M_CXA_RVS.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(vlrTotalTit));

                                           if FileExists(PathImg) then
                                              begin
                                                 LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RVS.FindObject('imgEmpresa1'));
                                                 if Assigned(LogoEmpresa) then
                                                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                                                 LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RVS.FindObject('imgEmpresa2'));
                                                 if Assigned(LogoEmpresa) then
                                                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                                              end;
                                           dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_M_CXA_RVS.Name,xCodLme,xRevLme,nil);
                                           FAT_FR_M_CXA_RVS.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                                           FAT_FR_M_CXA_RVS.Variables['Opcoes'] := QuotedStr('');
                                           FAT_FR_M_CXA_RVS.PrepareReport();
                                           FAT_FR_M_CXA_RVS.ShowReport();
                                          finally
                                              dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
                                              dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := false;
                                          end;
                                      end;
                                 end;
                             end;

                        end;
                   except
                     on e:exception do
                        begin
                          Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                        end;
                   end;
                end
               else
                  begin
                    if (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 110) or
                       (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 205) or
                       (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 301) or
                       (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 302) or
                       (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 303) or
                       (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 358) or
                       (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 650) or
                       (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 651) or
                       (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 654) or
                       (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 687) then
                        begin
                          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger      := 1;
                          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString  := '04';
                          dmGeral.BUS_CD_M_NFE_CXA.Post;
                          try
                            if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                               begin
                                 ShowMessage('***ATENÇÃO***' +#13 +  'A NFe foi gerada mas foi "Denegada" pela Sefaz!');

                                 if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger > 0 then
                                    begin
                                        ReabrePed := 'N';

                                        if MessageDlg('Deseja reabrir o pedido? ' + #13 +
                                                      'Se for "NÃO", o pedido de venda será cancelado.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                           begin
                                             ReabrePed := 'S';
                                           end;

                                        try
                                           SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                                           retorno := SMPrincipal.enReabrePed(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,ReabrePed);
                                           if retorno <> 'OK' then
                                              begin
                                                ShowMessage('Erro: ' + retorno);
                                              end
                                           else
                                              begin
                                                Showmessage('Operação realizada com sucesso!');
                                              end;
                                        finally
                                           FreeAndNil(SMPrincipal);
                                           AtuGridNota;
                                        end;
                                    end;
                               end;
                          except
                             on e:exception do
                                begin
                                  Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                                end;

                          end;
                        end
                    else
                        begin
                          if (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat>200) then
                              begin
                                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 0;
                                dmGeral.BUS_CD_M_NFE_CXA.Post;
                                try
                                    if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                                       begin
                                         ShowMessage('***ATENÇÃO***' +#13 +
                                          'A NFe foi gerada mas foi "Rejeitada" pela Sefaz!');
                                       end;
                                except
                                   on e:exception do
                                      begin
                                        Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                                      end;
                                end;
                              end
                          else
                             begin
                               dmGeral.BUS_CD_M_NFE_CXA.Post;
                               try
                                 if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                                    begin
                                      ShowMessage('***ATENÇÃO***' +#13 + 'A NFe foi gerada mas sem o status de "Encerrada" devido a algum problema retornado pela Sefaz!');
                                    end;
                               except
                                  on e:exception do
                                     begin
                                       Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                                     end;
                               end;
                             end;
                        end;
                  end
              end;

            finally
              NFE.NotasFiscais.Clear;
            end;
       finally
          AtuGridNota;
          miFaturaSemPedido.Checked := false;

          //pmApoio.Items[pmApoio.Items.miFaturaSemPedido].Checked := false;
       end;
     end;
end;


procedure TFAT_FM_M_CXA_NFE.btnSairClick(Sender: TObject);
begin
  FAT_RN_M_CXA.FatAtuDadosTelaCxa;
  Close;
end;

procedure TFAT_FM_M_CXA_NFE.btnSalvarInfFisClick(Sender: TObject);
begin
   dmGeral.BUS_CD_M_NFE_CXA.Post;
   try
      dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
   except
     on e: Exception do
        begin
          ShowMessage('Erro ao tentar atualizar a informação fiscal: ' + e.Message);
        end;
    end;

   btnAlterarInfFis.Enabled := true;
   btnSalvarInfFis.Enabled  := false;
end;

procedure TFAT_FM_M_CXA_NFE.VerCertificado;
Var xDias:Double;
    xDiasFalta:Double;
begin
  xDias:=10;
  //v antigo
  //txtValidadeCert.Text := DateToStr(NFe.Configuracoes.Certificados.DataVenc);
  //xDiasFalta:=NFe.Configuracoes.Certificados.DataVenc-Date;

  txtValidadeCert.Text := DateToStr(NFE.SSL.CertDataVenc);
  xDiasFalta:=NFE.SSL.CertDataVenc;;
  if xDiasFalta<=xDias then
     begin
       MemoDados.Lines.Clear;
       MemoDados.Lines.Add('Certificado:');
       MemoDados.Lines.Add('Faltam '+floatToStr(xDiasFalta)+' para seu certificado expirar.');
     end;
end;


procedure TFAT_FM_M_CXA_NFE.btnVerificaServicoClick(Sender: TObject);
begin
 //v antigo
 //NFe.Configuracoes.Geral.PathSalvar := ExtractFilePath(Application.ExeName) +
 //  dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_STATUS').AsString;

 NFe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName) +
   dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_STATUS').AsString;


 NFe.WebServices.StatusServico.Executar;
 MemoResp.Lines.Text   := UTF8Encode(NFe.WebServices.StatusServico.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(NFe.WebServices.StatusServico.RetornoWS);
 //v antigo
 // LoadXML(MemoResp, WBResposta);
 LoadXML(NFe.WebServices.StatusServico.RetornoWS, WBResposta);
 // v antigo
 {MemoDados.Lines.Clear;
 MemoDados.Lines.Add('Status Serviço');
 MemoDados.Lines.Add('  Ambiente: ' +TpAmbToStr(NFe.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('    Versão: ' +NFe.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('    Status: ' +IntToStr(NFe.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('    Motivo: ' +NFe.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('        UF: ' +IntToStr(NFe.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('Observação: ' +NFe.WebServices.StatusServico.xObs);  }

 MemoDados.Lines.Add('Status Serviço');
 MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(NFe.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('verAplic: ' +NFe.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('cStat: '    +IntToStr(NFe.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('xMotivo: '  +NFe.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('cUF: '      +IntToStr(NFe.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(NFe.WebServices.StatusServico.dhRecbto));
 MemoDados.Lines.Add('tMed: '     +IntToStr(NFe.WebServices.StatusServico.TMed));
 MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(NFe.WebServices.StatusServico.dhRetorno));
 MemoDados.Lines.Add('xObs: '     +NFe.WebServices.StatusServico.xObs);



end;

procedure TFAT_FM_M_CXA_NFE.btnAtualizaTelaClick(Sender: TObject);
begin

 Screen.Cursor := crHourGlass;
 try
   // Comentado por Maxsuel Victor, em 22/07/2016 isso funcinava para o Mercadinho
  {if trim(dmGeral.FIN_CD_M_CXA.FieldByName('ecf_serial_impressora').AsString) <> '' then
     begin
       FAT_RN_M_CXA.FatGerarCuponsGerConWin(dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger);
     end;}
  AtuGridNota;
 finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_CXA_NFE.btnBuscarPedidoClick(Sender: TObject);
var
  id_pedido:string;
  i:integer;
begin
  if not(InputQuery('Pedido de Venda', 'Cód. Pedido',id_pedido)) then
     exit;

  if (trim(id_pedido) = '') then
     begin
       Showmessage('O nº do cód. pedido deve ser informado.');
       exit;
     end;
  i := 1;
  while i <= Length(trim(id_pedido)) do
    begin
      if pos(copy(trim(id_pedido),i,1),'0123456789') = 0 then
        begin
          Showmessage('O nº do cód. pedido inválido.');
          exit;
        end;
      inc(i);
    end;

  if StrToInt(trim(id_pedido)) = 0 then
    begin
      Showmessage('O nº do cód. pedido inválido.');
      exit;
    end;

  dmGeral.BUS_CD_M_NFE_CXA.Close;
  dmGeral.BUS_CD_M_NFE_CXA.Data :=
            dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                     VarArrayOf([96,2,''''+ dmGeral.CAD_CD_C_PARid_empresa.AsString +'''',
                                   dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsString,
                                   dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString,trim(id_pedido)]));

end;

procedure TFAT_FM_M_CXA_NFE.btnFaturarClick(Sender: TObject);
begin
 CAD_FM_R_E01 := TCAD_FM_R_E01.Create(Self);
        CAD_FM_R_E01.Show;


end;

procedure TFAT_FM_M_CXA_NFE.btnFaturarPosXMLClick(Sender: TObject);
var
  chave,Protocolo: String;
begin
  if not(InputQuery('Faturar pós XML NFe', 'Chave de acesso', chave)) then
                     exit;
  if not(InputQuery('Faturar pós XML NFe', 'Protocolo', Protocolo)) then
                     exit;
  if (trim(chave) = '') then
     begin
       Showmessage('O nº da chave deve ser informado.');
       exit;
     end;

  if (trim(Protocolo) = '') then
     begin
       Showmessage('O nº do protocolo deve ser informado.');
       exit;
     end;

  if MessageDlg('O xml desta nota fiscal foi realmente gerado e assinado pela Sefaz?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if MessageDlg('Deseja realmente terminar de faturar o pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             try
              dmGeral.BUS_CD_M_NFE_CXA.Edit;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime :=
                      dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
                      dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString    := 'sem recibo - Pós XML';
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString     := chave;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString := Protocolo;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean     := true;  // Quer dizer que a nota foi emitida pela própria empresa e não de terceiros.

              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 1;
              dmGeral.BUS_CD_M_NFE_CXA.Post;
              try
                 if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                    begin
                      ShowMessage('Geração da NFe foi realizada com sucesso!');
                      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_IMPRIME_ETQ').AsBoolean = True) then
                          begin
                            if MessageDlg('Deseja imprimir a etiqueta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                               begin
                                 CAD_FM_R_E01 := TCAD_FM_R_E01.Create(Self);
                                 CAD_FM_R_E01.Show;
                               end;
                          end;

                      dmgeral.BUS_CD_M_TER_NFE.Close;
                      dmGeral.BUS_CD_M_TER_NFE.Data :=
                      dmGeral.BUS_CD_M_TER_NFE.DataRequest(VarArrayOf([dmgeral.BUS_CD_M_NFE_CXAid_fiscal.AsInteger]));
                      if not  dmgeral.BUS_CD_M_TER_NFE.IsEmpty then
                         begin
                           if MessageDlg('Deseja imprimir o termo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                              begin
                                FAT_CD_M_TER_NFE.PrepareReport();
                                FAT_CD_M_TER_NFE.ShowReport();
                              end;
                         end;
                      dmGeral.BUS_CD_M_TER_NFE.close;
                    end;
              except
                 on e:exception do
                    begin
                      Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                    end;
              end;

              finally
                NFE.NotasFiscais.Clear;
              end;

              AtuGridNota;
           end;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.CancelarNota(tipo: integer);
var
  vAux : String;
  xml: String;
  SMPrincipal: TSMClient;
  retorno: String;
  idLote: String;
  Ano,Mes,Dia: Word;
  CanStatus:string;
  CanProtocolo:string;
  msgPergunta,ReabrePed,msg: String;
begin

  { Tipo: 0 - Cancelamento normal -> executa todos os procedimentos;
          1 - Cancelamento somente no sistema
          2 - Cancelamento somente na sefaz
          3 - Cancelamento Cupom GerConWin
  }


  // Ao mexer nesta rotina lembrar de verificar a tela de NFCe
  AtuGridNota;


  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;


  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0) then
     begin
       dmGeral.BUS_CD_M_NFE.Close;
       dmGeral.BUS_CD_M_NFE.Data :=
       dmGeral.BUS_CD_M_NFE.DataRequest(
         VarArrayOf([116,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsString,
                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString]));

       msg := '';
       try
         dmGeral.BUS_CD_M_NFE.Filtered := true;
         dmGeral.BUS_CD_M_NFE.Filter := 'ID_SEQ_FAT_GAR>'+dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_SEQ_FAT_GAR').AsString;
         dmGeral.BUS_CD_M_NFE.IndexFieldNames := 'ID_SEQ_FAT_GAR';
         if not dmGeral.BUS_CD_M_NFE.IsEmpty  then
            begin
              dmGeral.BUS_CD_M_NFE.First;
              while (not dmGeral.BUS_CD_M_NFE.EOF) do
               begin
                if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                    (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                    (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                    (not((dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                    (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0))) then
                   begin
                    if msg <> '' then
                      begin
                         msg := msg+ ', '+dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
                      end
                    else
                      begin
                         msg := msg+dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
                      end;
                   end;
                 dmGeral.BUS_CD_M_NFE.Next;
               end;
            end;
       finally
         dmGeral.BUS_CD_M_NFE.Filtered := false;
       end;

       if msg <> '' then
        begin
          ShowMessage('As notas abaixo deverão ser primeiramente canceladas ou inutilizadas na seguinte ordem: '+#13+#10+'Cód. fiscal: '+msg);
          exit;
        end;
     end;


    dmGeral.BUS_CD_M_NFE.Close;
    dmGeral.BUS_CD_M_NFE.Data :=
    dmGeral.BUS_CD_M_NFE.DataRequest(
        VarArrayOf([115,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsString,
                        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString]));
    msg := '';
    if not dmGeral.BUS_CD_M_NFE.IsEmpty  then
      begin
        dmGeral.BUS_CD_M_NFE.First;
        while (not dmGeral.BUS_CD_M_NFE.EOF) do
         begin
          if (not (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString ='02')) and
             (not ((dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
             (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1) and
             (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '05'))) then
             msg := msg + dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString+', ';
           dmGeral.BUS_CD_M_NFE.Next;
         end;
      end;
    if msg <> '' then
      begin
        ShowMessage('A nota fiscal possui outras notas complementares que não estão canceladas ou inutilizadas'+#13+#10+'Cód. fiscal:'+msg);
        exit;
      end;




  if tipo <> 3 then
     begin
       if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
          begin
            ShowMessage('Nota fiscal com pré-venda.');
            exit;
          end;

       if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) <> 'X' then
           begin
              if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                       ( trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString) <> '') and
                       (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
                 begin
                   ShowMessage('Nota fiscal em aberto! ' + #13 +
                                'Só é permitido cancelar nota fiscal encerrada.');
                   exit;
                 end;
           end
       else
           begin
              if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                       (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
                 begin
                   ShowMessage('Nota fiscal em aberto! ' + #13 +
                                'Só é permitido cancelar nota fiscal encerrada.');
                   exit;
                 end;
           end;
     end;

  if tipo = 3 then
     begin
       if not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
          begin
            ShowMessage('Nota fiscal não tem pré-venda.');
            exit;
          end;

       if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
          begin
            ShowMessage('Pré-venda em aberto! ' + #13 +
                        'Só é permitido cancelar cupom fiscal encerrado.');
            exit;
          end;
     end;


  if (tipo = 0) or (tipo = 1)  then  // Se for um cancelamento normal ou Somente no sistema.
      begin
        if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
            begin
              ShowMessage('Nota fiscal já foi cancelada.');
              exit;
            end;
      end;

  if (tipo = 3) then  // Se for um cancelamento de cupom fiscal
      begin
        if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
           begin
             ShowMessage('Cupom fiscal já foi cancelado.');
             exit;
           end;

         // Buscar dados do cupom fiscal
         dmGeral.CD_BR_CUPOM_MESTRE.Close;
         dmGeral.CD_BR_CUPOM_MESTRE.Data :=
         dmGeral.CD_BR_CUPOM_MESTRE.DataRequest(VarArrayOf([9,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('numero').AsString,
                                             dmGeral.FIN_CD_M_CXA.FieldByName('ecf_serial_impressora').AsString]));
         if dmGeral.CD_BR_CUPOM_MESTRE.FieldByName('CANCELADO').AsString <> 'S' then
           begin
             ShowMessage('Cupom fiscal não foi cancelado no GerConWin.');
             dmGeral.CD_BR_CUPOM_MESTRE.Close;
             exit;
           end;
         dmGeral.CD_BR_CUPOM_MESTRE.Close;
     end;

  msgPergunta := '';
  if tipo = 0  then
     msgPergunta := 'Deseja realmente cancelar a nota fiscal: ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString+'?';
  if tipo = 1 then
     msgPergunta := 'Deseja cancelar a nota fiscal ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString+ ' somente no sistema?';
  if tipo = 2 then
     msgPergunta := 'Deseja cancelar a nota fiscal ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString+ ' somente na SEFAZ?';
  if tipo = 3 then
     msgPergunta := 'Deseja cancelar o cupom fiscal ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString;


  if MessageDlg(msgPergunta, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) <> 'X') and
          (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04'))  then
          begin
            {odNfe.Title := 'Selecione a NFE';
            odNfe.DefaultExt := '*-nfe.XML';
            odNfe.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
            odNfe.InitialDir := NFe.Configuracoes.Geral.PathSalvar;
            if odNfe.Execute then
               begin}

                  if (tipo = 0) or (tipo = 1) or (tipo = 3) then  // Se for um cancelamento normal ou Cancelamento somente no sistema
                     begin
                        ReabrePed := '';
                        {if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
                           begin
                             ReabrePed := 'N';
                             if MessageDlg('Deseja reabrir o pedido de venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                  ReabrePed := 'S';
                                end;
                           end; }
                       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
                          begin

                             ReabrePed := 'S';
                             dmGeral.BUS_CD_M_NFE.Close;
                             dmGeral.BUS_CD_M_NFE.Data :=
                             dmGeral.BUS_CD_M_NFE.DataRequest(
                                VarArrayOf([15,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
                             dmGeral.BUS_CD_M_NFE.First;
                             if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                                begin
                                  while not dmGeral.BUS_CD_M_NFE.Eof do
                                     begin
                                       if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                          begin
                                            if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                               (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                                (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                                   ReabrePed := 'N';

                                          end;
                                       dmGeral.BUS_CD_M_NFE.Next;
                                     end;
                                end;
                             dmGeral.BUS_CD_M_NFE.close;

                             if ReabrePed = 'S' then
                                begin
                                 if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                    begin
                                      ReabrePed := 'S';
                                    end
                                 else
                                    begin
                                       ReabrePed := 'N';
                                    end;
                                end
                             else
                                begin
                                  ShowMessage('Não será possivel reabrir pedido pois há notas faturadas.');
                                end;
                          end;


                        if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) and
                            ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString = '') or
                           (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0)))) then
                           begin
                             ReabrePed := 'S';
                             dmGeral.BUS_CD_M_NFE.Close;
                             dmGeral.BUS_CD_M_NFE.Data :=
                             dmGeral.BUS_CD_M_NFE.DataRequest(
                                VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
                             dmGeral.BUS_CD_M_NFE.First;
                             if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                                begin
                                  while not dmGeral.BUS_CD_M_NFE.Eof do
                                     begin
                                       if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                          begin
                                             if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                                (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                                   ReabrePed := 'N';
                                          end;
                                       dmGeral.BUS_CD_M_NFE.Next;
                                     end;
                                end;
                             dmGeral.BUS_CD_M_NFE.close;

                             if ReabrePed = 'S' then
                                begin
                                 if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                    begin
                                      ReabrePed := 'S';
                                    end
                                 else
                                    begin
                                       ReabrePed := 'N';
                                    end;
                                end
                             else
                                begin
                                  ShowMessage('Não será possivel reabrir OS pois há notas faturadas.');
                                end;
                           end;

                        if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
                           begin
                             ReabrePed := 'N';
                           end;
                     end;

                  if (tipo = 0) or (tipo = 2) then  // Se for um cancelamento normal ou Cancelamento somente na Sefaz
                     begin
                        // v antigo
                        //danfe.NFeCancelada := true;
                        // v antigo
                        //xml := NFe.Configuracoes.Geral.PathSalvar+'\'+
                        //       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml';

                        {xml := NFe.Configuracoes.Arquivos.PathNfe+'\'+
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml';}

                        //Buscal o local do xml nos sub-diretorios
                        xml := BuscaDiretorio(NFe.Configuracoes.Arquivos.PathNfe,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml');

                        if xml='' then
                          begin
                            ShowMessage('Não foi encontrado arquivo '+dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml');
                            exit;
                          end;

                        NFe.NotasFiscais.Clear;
                        NFe.NotasFiscais.LoadFromFile(xml);

                        DecodeDate(xDataSis, Ano, Mes, Dia);
                        idLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
                        idLote := OnlyNumber(idLote);
                        if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
                           exit;
                        if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa', vAux)) then
                           exit;
                        NFe.EventoNFe.Evento.Clear;
                        NFe.EventoNFe.idLote := StrToInt(idLote) ;

                        with NFe.EventoNFe.Evento.New do
                       // with NFe.EventoNFe.Evento.Add do
                             begin
                               infEvento.dhEvento := now;
                               infEvento.tpEvento := teCancelamento;
                               infEvento.detEvento.xJust := vAux;
                             end;
                        //v antigo
                        //NFe.EnviarEventoNFe(StrToInt(idLote));
                        NFe.EnviarEvento(StrToInt(idLote));

                        // v antigo
                        //MemoResp.Lines.Text := UTF8Encode(NFe.WebServices.EnvEvento.RetWS);
                        //memoRespWS.Lines.Text :=  UTF8Encode(NFe.WebServices.EnvEvento.RetornoWS);
                        //LoadXML(MemoResp, WBResposta);

                        MemoResp.Lines.Text := NFe.WebServices.EnvEvento.RetWS;
                        memoRespWS.Lines.Text := NFe.WebServices.EnvEvento.RetornoWS;
                        LoadXML(NFe.WebServices.EnvEvento.RetornoWS, WBResposta);
                        ShowMessage(IntToStr(Nfe.WebServices.EnvEvento.cStat));
                        ShowMessage(Nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);

                         // Maxsuel, em 21-08-2024
                              MemoDados.Lines.Add('');
                              MemoDados.Lines.Add('Retorno do Evento');
                              MemoDados.Lines.Add('');
                              MemoDados.Lines.Add('Id.........: ' + Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.Id);
                              MemoDados.Lines.Add('tpAmb......: ' + TpAmbToStr(Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.TpAmb));
                              MemoDados.Lines.Add('verAplic...: ' + Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.verAplic);
                              MemoDados.Lines.Add('cOrgao.....: ' + IntToStr(Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cOrgao));
                              MemoDados.Lines.Add('cStat......: ' + IntToStr(Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat));
                              MemoDados.Lines.Add('xMotivo....: ' + Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo);
                              MemoDados.Lines.Add('chNFe......: ' + Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.chNFe);
                              MemoDados.Lines.Add('tpEvento...: ' + TpEventoToStr(Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.tpEvento));
                              MemoDados.Lines.Add('xEvento....: ' + Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xEvento);
                              MemoDados.Lines.Add('nSeqEvento.: ' + IntToStr(Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nSeqEvento));
                              MemoDados.Lines.Add('CNPJDest...: ' + Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.CNPJDest);
                              MemoDados.Lines.Add('emailDest..: ' + Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.emailDest);
                              MemoDados.Lines.Add('dhRegEvento: ' + DateTimeToStr(Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.dhRegEvento));
                              MemoDados.Lines.Add('Protocolo..: '+ Nfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt);
                        // ------------------------

                        NFe.WebServices.Consulta.NFeChave := Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString);
                        NFe.WebServices.Consulta.Executar;
                        CanStatus    := IntToStr(NFe.WebServices.Consulta.cStat);
                        CanProtocolo := NFe.WebServices.Consulta.Protocolo;
                                                                                        //  if NFe.WebServices.EnvEvento.cStat = 101 then
                        //101: Cancelamento de NF-e homologado';
                        //135: Evento registrado e vinculado a NF-e';

                        if tipo = 0  then // Se for um cancelamento normal
                           begin
                              if (trim(CanStatus) = '101') or (trim(CanStatus) = '135') then
                                 begin
                                   try
                                     SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                                     retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,CanStatus,CanProtocolo,ReabrePed,'');
                                     if retorno <> 'OK' then
                                        begin
                                          ShowMessage('Erro: ' + retorno);
                                        end
                                     else
                                        begin
                                          Showmessage('Nota fiscal cancelada com sucesso!');
                                        end;
                                   finally
                                     FreeAndNil(SMPrincipal);
                                     AtuGridNota;
                                   end;
                                 end;
                           end;
                     end;

                  if tipo = 1 then  // Se for um cancelamento somente no sistema
                     begin
                       try
                         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                         retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','Somente sistema',ReabrePed,'');
                         if retorno <> 'OK' then
                            begin
                              ShowMessage('Erro: ' + retorno);
                            end
                         else
                            begin
                              Showmessage('Nota fiscal cancelada com sucesso!');
                            end;
                       finally
                         FreeAndNil(SMPrincipal);
                         AtuGridNota;
                       end;
                     end;

                  if tipo = 3 then  // Se for um cancelamento de cupom fiscal gerconwin
                     begin
                       try
                         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                         retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','Canc. Cupom GerConWin',ReabrePed,'');
                         if retorno <> 'OK' then
                            begin
                              ShowMessage('Erro: ' + retorno);
                            end
                         else
                            begin
                              Showmessage('Cupom Fiscal cancelado com sucesso!');
                            end;
                       finally
                         FreeAndNil(SMPrincipal);
                         AtuGridNota;
                       end;
                     end;
               //end;
          end
       else
          begin
             if tipo = 2 then
                begin
                  Showmessage('Nota fiscal não é um documento eletrônico.');
                  abort;
                end;
             try
              ReabrePed := '';
              {if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
                     begin
                       ReabrePed := 'N';
                       if MessageDlg('Deseja reabrir o pedido de venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                          begin
                            ReabrePed := 'S';
                          end;
                     end; }
               if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
                  begin

                     ReabrePed := 'S';
                     dmGeral.BUS_CD_M_NFE.Close;
                     dmGeral.BUS_CD_M_NFE.Data :=
                     dmGeral.BUS_CD_M_NFE.DataRequest(
                        VarArrayOf([15,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
                     dmGeral.BUS_CD_M_NFE.First;
                     if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                        begin
                          while not dmGeral.BUS_CD_M_NFE.Eof do
                             begin
                               if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                  begin
                                    if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                       (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                        (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                        (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                        (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                           ReabrePed := 'N';

                                  end;
                               dmGeral.BUS_CD_M_NFE.Next;
                             end;
                        end;
                     dmGeral.BUS_CD_M_NFE.close;

                     if ReabrePed = 'S' then
                        begin
                         if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            begin
                              ReabrePed := 'S';
                            end
                         else
                            begin
                               ReabrePed := 'N';
                            end;
                        end
                     else
                        begin
                          ShowMessage('Não será possivel reabrir pedido pois há notas faturadas.');
                        end;
                  end;



              if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) and
                   ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString = '') or
                   (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0)))) then
                 begin
                   ReabrePed := 'S';
                   dmGeral.BUS_CD_M_NFE.Close;
                   dmGeral.BUS_CD_M_NFE.Data :=
                   dmGeral.BUS_CD_M_NFE.DataRequest(
                      VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
                   dmGeral.BUS_CD_M_NFE.First;
                   if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                      begin
                        while not dmGeral.BUS_CD_M_NFE.Eof do
                           begin
                             if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                   dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                begin
                                   if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                      (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                      (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                      (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                      (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                      ReabrePed := 'N';
                                end;
                             dmGeral.BUS_CD_M_NFE.Next;
                           end;
                      end;
                   dmGeral.BUS_CD_M_NFE.close;

                   if ReabrePed = 'S' then
                      begin
                       if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                          begin
                            ReabrePed := 'S';
                          end
                       else
                          begin
                             ReabrePed := 'N';
                          end;
                      end
                   else
                      begin
                        ShowMessage('Não será possivel reabrir OS pois há notas faturadas.');
                      end;
                 end;

               if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
                 begin
                   ReabrePed := 'N';
                 end;

               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
               retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','',ReabrePed,'');
             finally
               FreeAndNil(SMPrincipal);
               AtuGridNota;
             end;
          end;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.CancelarNotaDiaAnt(tipo: integer);
var
  vAux : String;
  xml: String;
  SMPrincipal: TSMClient;
  retorno: String;
  idLote: String;
  Ano,Mes,Dia: Word;
  CanStatus:string;
  CanProtocolo:string;
  msgPergunta,ReabrePed: String;
begin

   if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
      begin
        ShowMessage('Nota fiscal com pré-venda.');
        exit;
      end;

   if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) <> 'X' then
       begin
          if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                   ( trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString) <> '') and
                   (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
             begin
               ShowMessage('Nota fiscal em aberto! ' + #13 +
                            'Só é permitido cancelar nota fiscal encerrada.');
               exit;
             end;
       end
   else
       begin
          if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                   (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
             begin
               ShowMessage('Nota fiscal em aberto! ' + #13 +
                            'Só é permitido cancelar nota fiscal encerrada.');
               exit;
             end;
       end;

   if (tipo = 1) or (tipo = 3) then  // Se for um cancelamento normal ou Somente no sistema.
      begin
         if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
            begin
              ShowMessage('Nota fiscal já foi cancelada.');
              exit;
            end;
      end;


   if MessageDlg('Deseja realmente cancelar a nota fiscal: '+ dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) <> 'X') and
          (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04'))  then
          begin
                if (tipo = 1) or (tipo = 3) then  //  Cancelamento somente no sitema ou Se for um cancelamento normal
                   begin
                      ReabrePed := '';
                      {if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
                           begin
                             ReabrePed := 'N';
                             if MessageDlg('Deseja reabrir o pedido de venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                  ReabrePed := 'S';
                                end;
                           end; }
                       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
                          begin

                             ReabrePed := 'S';
                             dmGeral.BUS_CD_M_NFE.Close;
                             dmGeral.BUS_CD_M_NFE.Data :=
                             dmGeral.BUS_CD_M_NFE.DataRequest(
                                VarArrayOf([15,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
                             dmGeral.BUS_CD_M_NFE.First;
                             if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                                begin
                                  while not dmGeral.BUS_CD_M_NFE.Eof do
                                     begin
                                       if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                          begin
                                            if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                               (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                                (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                                   ReabrePed := 'N';

                                          end;
                                       dmGeral.BUS_CD_M_NFE.Next;
                                     end;
                                end;
                             dmGeral.BUS_CD_M_NFE.close;

                             if ReabrePed = 'S' then
                                begin
                                 if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                    begin
                                      ReabrePed := 'S';
                                    end
                                 else
                                    begin
                                       ReabrePed := 'N';
                                    end;
                                end
                             else
                                begin
                                  ShowMessage('Não será possivel reabrir pedido pois há notas faturadas.');
                                end;
                          end;

                      if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) and
                          ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString = '') or
                          (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0)))) then
                           begin
                             ReabrePed := 'S';
                             dmGeral.BUS_CD_M_NFE.Close;
                             dmGeral.BUS_CD_M_NFE.Data :=
                             dmGeral.BUS_CD_M_NFE.DataRequest(
                                VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
                             dmGeral.BUS_CD_M_NFE.First;
                             if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                                begin
                                  while not dmGeral.BUS_CD_M_NFE.Eof do
                                     begin
                                       if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                          begin
                                             if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                                (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                                (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                                   ReabrePed := 'N';
                                          end;
                                       dmGeral.BUS_CD_M_NFE.Next;
                                     end;
                                end;
                             dmGeral.BUS_CD_M_NFE.close;

                             if ReabrePed = 'S' then
                                begin
                                 if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                    begin
                                      ReabrePed := 'S';
                                    end
                                 else
                                    begin
                                       ReabrePed := 'N';
                                    end;
                                end
                             else
                                begin
                                  ShowMessage('Não será possivel reabrir OS pois há notas faturadas.');
                                end;
                           end;

                       if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
                         begin
                           ReabrePed := 'N';
                         end;
                   end;

                  if (tipo = 2) or (tipo = 3) then  //  Cancelamento somente na Sefaz or  Se for um cancelamento normal
                     begin
                       { xml := NFe.Configuracoes.Arquivos.PathNfe+'\'+
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml';  }

                        xml := BuscaDiretorio(NFe.Configuracoes.Arquivos.PathNfe,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml');

                        if xml='' then
                          begin
                            ShowMessage('Não foi encontrado arquivo '+dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml');
                            exit;
                          end;

                        NFe.NotasFiscais.Clear;
                        NFe.NotasFiscais.LoadFromFile(xml);

                        DecodeDate(xDataSis, Ano, Mes, Dia);
                        idLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
                        idLote := OnlyNumber(idLote);
                        if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
                           exit;
                        if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa', vAux)) then
                           exit;
                        NFe.EventoNFe.Evento.Clear;
                        NFe.EventoNFe.idLote := StrToInt(idLote) ;
                        with NFe.EventoNFe.Evento.Add do
                             begin
                               infEvento.dhEvento := now;
                               infEvento.tpEvento := teCancelamento;
                               infEvento.detEvento.xJust := vAux;
                             end;

                        NFe.EnviarEvento(StrToInt(idLote));


                        MemoResp.Lines.Text := NFe.WebServices.EnvEvento.RetWS;
                        memoRespWS.Lines.Text := NFe.WebServices.EnvEvento.RetornoWS;
                        LoadXML(NFe.WebServices.EnvEvento.RetornoWS, WBResposta);
                        ShowMessage(IntToStr(Nfe.WebServices.EnvEvento.cStat));
                        ShowMessage(Nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);


                        NFe.WebServices.Consulta.NFeChave := Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString);
                        NFe.WebServices.Consulta.Executar;
                        CanStatus    := IntToStr(NFe.WebServices.Consulta.cStat);
                        CanProtocolo := NFe.WebServices.Consulta.Protocolo;

                        if (tipo = 3) then // Se for um cancelamento normal
                           begin
                              if (trim(CanStatus) = '101') or (trim(CanStatus) = '135') then
                                 begin
                                   try
                                     SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                                     retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,CanStatus,CanProtocolo,ReabrePed,
                                                                         dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString);
                                     if retorno <> 'OK' then
                                        begin
                                          ShowMessage('Erro: ' + retorno);
                                        end
                                     else
                                        begin
                                          Showmessage('Nota fiscal cancelada com sucesso!');
                                        end;
                                   finally
                                     FreeAndNil(SMPrincipal);
                                     //AtuGridNota;
                                   end;
                                 end;
                           end;
                     end;

                  if tipo = 1 then  // Se for um cancelamento somente no sistema
                     begin
                       try
                         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                         retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','Somente sistema',ReabrePed,
                                                             dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString);
                         if retorno <> 'OK' then
                            begin
                              ShowMessage('Erro: ' + retorno);
                            end
                         else
                            begin
                              Showmessage('Nota fiscal cancelada com sucesso!');
                            end;
                       finally
                         FreeAndNil(SMPrincipal);
                        // AtuGridNota;
                       end;
                     end;

          end
       else
          begin
             if tipo = 2 then
                begin
                  Showmessage('Nota fiscal não é um documento eletrônico.');
                  abort;
                end;
             try
              ReabrePed := '';
              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
                 begin
                   ReabrePed := 'N';
                   if MessageDlg('Deseja reabrir o pedido de venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                      begin
                        ReabrePed := 'S';
                      end;
                 end;

              if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) and
                  ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString = '') or
                  (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0)))) then
                   begin
                     ReabrePed := 'S';
                     dmGeral.BUS_CD_M_NFE.Close;
                     dmGeral.BUS_CD_M_NFE.Data :=
                     dmGeral.BUS_CD_M_NFE.DataRequest(
                        VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
                     dmGeral.BUS_CD_M_NFE.First;
                     if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                        begin
                          while not dmGeral.BUS_CD_M_NFE.Eof do
                             begin
                               if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                  begin
                                     if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                        (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                        (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                        (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                        (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                           ReabrePed := 'N';
                                  end;
                               dmGeral.BUS_CD_M_NFE.Next;
                             end;
                        end;
                     dmGeral.BUS_CD_M_NFE.close;

                     if ReabrePed = 'S' then
                        begin
                         if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            begin
                              ReabrePed := 'S';
                            end
                         else
                            begin
                               ReabrePed := 'N';
                            end;
                        end
                     else
                        begin
                          ShowMessage('Não será possivel reabrir OS pois há notas faturadas.');
                        end;
                   end;

               if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
                 begin
                   ReabrePed := 'N';
                 end;

               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
               retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','',ReabrePed,
                                                   dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString);
             finally
               FreeAndNil(SMPrincipal);
               //AtuGridNota;
             end;
          end;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.CancelarnotafiscalsomentenaSEFAZ1Click(
  Sender: TObject);
begin
  CancelarNota(2);
end;

procedure TFAT_FM_M_CXA_NFE.Cancelarnotafiscalsomentenosistema1Click(
  Sender: TObject);
begin
  CancelarNota(1);
end;

procedure TFAT_FM_M_CXA_NFE.ChamarLanctoFPG;
begin
  FAT_FM_M_CXA_NFE_FPG := TFAT_FM_M_CXA_NFE_FPG.Create(Self);
  FAT_FM_M_CXA_NFE_FPG.ShowModal;
  FAT_FM_M_CXA_NFE_FPG.Free;
end;


procedure TFAT_FM_M_CXA_NFE.ConectarBancoProd;
var
  SMPrincipal : TSMClient;
  cds: TClientDataSet;
  x,z: integer;
  i: integer;
  xx:string;
  Rede:TInifile;
  msg: String;
begin
  msg:='';
  if ConexaoBDFat.Connected = true then
     begin
       msg := msg + 'A conexão esta aberta' + #13;
       ConexaoBDFat.Connected := false;
       msg := msg + 'A Conexão será reiniciada' + #13;
     end;


  if not FileExists(ExtractFilePath(Application.ExeName)+'RedeCliProd.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCliProd.Ini');
       Rede.WriteString('DEFINICAO_DE_DATABASE','HOST','');
       Application.MessageBox('O Arquivo RedeCliProd.Ini Encontra-se desconfigurado, Configure-o e reinicie o sistema!',
        'Atenção', MB_ICONINFORMATION or MB_OK);
       Application.Terminate;
     end;
  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCliProd.Ini');
  ConexaoBDFat.Close;
  ConexaoBDFat.Params.Clear;
  ConexaoBDFat.Params.Add('DriverUnit=Data.DBXDataSnap');
  ConexaoBDFat.Params.Add('HostName='+Rede.ReadString('DEFINICAO_DE_DATABASE','HOST',''));
  ConexaoBDFat.Params.Add('Port='+Rede.ReadString('DEFINICAO_DE_DATABASE','PORTA',''));
  //Conexao.Params.Add('Port=211');
  ConexaoBDFat.Params.Add('CommunicationProtocol=tcp/ip');
  ConexaoBDFat.Params.Add('DatasnapContext=datasnap/');
  ConexaoBDFat.Params.Add('DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland.Data.DbxClientDriver,Version=18.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
  ConexaoBDFat.Params.Add('Filters={}');
  Try
    begin
      ConexaoBDFat.Open;
    end;
  Except on E:Exception do
    Begin
      Application.MessageBox(Pchar('Não foi possível conectar-se ao banco de dados para buscar os dados dos pedidos!'+#13+#13+#13+
        'Descrição do erro: '+
        #13+#13+E.Message),'Atenção', MB_ICONERROR or MB_OK);
        Application.Terminate;
    end;
  end;
end;

procedure TFAT_FM_M_CXA_NFE.btnConsultaNfeClick(Sender: TObject);
begin
  if dmGeral.BuscarLicensa in [3,4,5,6,7] then
    exit;
  odNFe.Title := 'Selecione a NFE';
  odNFe.DefaultExt := '*-nfe.XML';
  odNFe.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  // v antigo
  //odNFe.InitialDir := NFe.Configuracoes.Geral.PathSalvar;
  odNFe.InitialDir := NFe.Configuracoes.Arquivos.PathNfe; //Alterado de PathSalvar para PathNfe
  if odNFe.Execute then
    begin
      NFe.NotasFiscais.Clear;
      NFe.NotasFiscais.LoadFromFile(odNFe.FileName);
      NFe.Consultar;
      ShowMessage(NFe.WebServices.Consulta.Protocolo);
      MemoResp.Lines.Text := UTF8Encode(NFe.WebServices.Consulta.RetWS);
      memoRespWS.Lines.Text := UTF8Encode(NFe.WebServices.Consulta.RetornoWS);
      //v antigo
      //LoadXML(MemoResp, WBResposta);
      LoadXML(NFe.WebServices.Consulta.RetornoWS, WBResposta);
      LoadConsulta201(NFe.WebServices.Consulta.RetWS);
    end;
end;

procedure TFAT_FM_M_CXA_NFE.DadosdoTransportador1Click(Sender: TObject);
var
  IdFiscal: integer;
begin

  if not FAT_RN_M_CXA.FatVerifDadosNfCxa(1) then
     begin
       exit;
     end;

  IdFiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger;

  Application.CreateForm(TFAT_FM_M_CXA_NFE_TRA,FAT_FM_M_CXA_NFE_TRA);
  FAT_FM_M_CXA_NFE_TRA.ShowModal;
  FAT_FM_M_CXA_NFE_TRA.close;

  FAT_RN_M_CXA.FatAtuDadosTelaCxa;

  dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',IdFiscal,[]);

end;

procedure TFAT_FM_M_CXA_NFE.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
    if Field.FieldName = 'legenda' then
     begin
       {  *** ATENÇÃO ****

          Caso este código abaixo seja alterado , você deverá alterar o código
          do Grid de Notas Fiscais da tela FAT_FM_M_CXA e FAT_FM_M_CXA_CAN e da tela NFCe também para que os
          códigos fiquem iguais.

          Maxsuel Victor
        }

       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger > 0) then
           Abrush.Color := clBlue;

        // Situação de NFe FATURADA normnal. Cor Verde
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          // foi retirado o NFE_RECBIDO e colocado NFE_PROTOCOLO , devido nota técnica SICRÓNO nfce , 10-10-2021
          ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString <> '')  or
            (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) = 'X') or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 0) or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 1) or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 3)
             ) then
          begin
            Abrush.Color := clGreen;
          end;

       // Situação de NFe Inutilizada. Cor Marrom  -
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '05') then
          begin
            Abrush.Color := clMaroon;
          end;

       // Situação de NFe CANCELADA. Cor Vermelho
       if(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') then
          begin
            Abrush.Color := clRed;
          end;

       // Situação de NFe DENEGADA. Cor Roxa
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04') then
          begin
            Abrush.Color := clPurple;
          end;

       // Situação Nota fiscal com Pré-venda pendente. Cor Rosa
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
          begin
            Abrush.Color := $00B56AFF;
          end;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.dbGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  id_fiscal: String;
  AvisoEmi: string;
begin
  if ord(key) = VK_F10 then
     BEGIN
       FAT_FM_M_LIB := TFAT_FM_M_LIB.Create(Self);
       FAT_FM_M_LIB.Visible := false;
       FAT_FM_M_LIB.ShowModal;
       FAT_FM_M_LIB.Free;
       FAT_RN_M_CXA.FatAtuDadosTelaCxa;
     END;


  if ord(key) = VK_F11 then
     begin
       if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_F11_PEDIDO').AsBoolean then
          begin
             if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
                begin
                  ShowMessage('Não existe registro de nota fiscal.');
                  exit;
                end;

             if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
                 begin
                   ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
                   exit;
                 end;

             if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger >0) then
                 begin
                   ShowMessage('A nota já tem número.');
                   exit;
                 end;

             if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') or
                (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'R') then
                AvisoEmi := ' do cliente: ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nomeemi').AsString;

             if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'E') or
                (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'D') then
                AvisoEmi := ' do fornecedor: ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nomeemi').AsString;

             if MessageDlg('Deseja realmente encerrar a nota fiscal,' + AvisoEmi +  '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                   id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                   FAT_RN_M_CXA.FatAtuDadosTelaCxa;
                   dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

                   if not FAT_RN_M_CXA.FatVerifDadosNfCxa(1) then
                      begin
                         exit;
                      end;
                   dmGeral.BusCondPgto(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_condicao_pag').AsString);
                   if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger in [0,1]) then // Se a condição de pagamento for a vista ou a prazo
                       begin
                          // Entra neste IF caso as formas de pagamento devam ser informada pela pessoa do Caixa.
                          if not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ativa_titulos').AsBoolean) then
                              begin
                                ChamarLanctoFPG;

                                AtuGridNota;

                                dmGeral.BUS_CD_M_NFE_TIT_CXA.Cancel;
                                if dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
                                   begin
                                     ShowMessage('Nennhum forma de pagamento foi informada na nota fiscal!');
                                     AtuGridNota;
                                     exit;
                                   end;
                              end;
                      end;

                   try
                    FAT_RN_M_CXA.FatEncerrPedNfe;

                    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_fin_base_prod').AsBoolean then
                       begin
                         if FatAtualizarFinPcp(1,PCP_CD_M_ORS_PCP,FIN_CD_M_REC_PCP,dmGeral.BUS_CD_M_REC_BOL,false) = 'OK' then
                            begin
                              FIN_CD_M_REC_PCP.ApplyUpdates(0);
                            end;
                       end;

                   finally
                      FAT_RN_M_CXA.FatAtuDadosTelaCxa;
                      dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
                   end;
                end;
          end;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.grdTitulosCellChanged(Sender: TObject);
begin
  if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'id_forma_pag' then
     begin
       grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
     end;

  if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'int_nomefpg' then
     begin
       grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
     end;

  if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'dta_vencimento' then
     begin
       grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
     end;

  if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'vlr_titulo' then
     begin
       grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
     end;


  if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_agencia' then
     begin
       grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
     end;

    if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_banco' then
       begin
         grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
       end;

    if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_conta' then
       begin
         grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly :=true;
       end;

    if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_numero' then
       begin
         grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
       end;

    if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_emitente' then
       begin
         grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
       end;



  if dmGeral.BUS_CD_M_NFE_TIT_CXA.State in [dsInsert,dsEdit] then
    begin
      if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_agencia' then
       begin
         grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := false;
       end;

      if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_banco' then
         begin
           grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := false;
         end;

      if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_conta' then
         begin
           grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly :=false;
         end;

      if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_numero' then
         begin
           grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := false;
         end;

      if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_emitente' then
         begin
           grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := false;
         end;
    end;

end;

procedure TFAT_FM_M_CXA_NFE.grdTitulosDblClick(Sender: TObject);
begin



  if dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
     begin
       ShowMessage('Não há registro para ser alterado.');
       exit;
     end;

   if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
      begin
        ShowMessage('Nota fiscal com pré-venda.');
        exit;
      end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'S' then
     begin
       ShowMessage('Só é permitido alterar vencimentos de nota fiscal de saída.');
       exit;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean then
     begin
       Showmessage('Não é permitido alterações nas formas de pagamento.');
       exit;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_FORMA_PAG').AsString);
  if not dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
          begin
            dmGeral.BUS_CD_M_NFE_TIT_CXA.Edit;

            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_agencia' then
             begin
               grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := false;
             end;

            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_banco' then
               begin
                 grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := false;
               end;

            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_conta' then
               begin
                 grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly :=false;
               end;

            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_numero' then
               begin
                 grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := false;
               end;

            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_emitente' then
               begin
                 grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := false;
               end;

          end
       else
          begin
            ShowMessage('Só é permitido alterar forma de pagamento do tipo "Cheque".');
            dmGeral.BUS_CD_M_NFE_TIT_CXA.cancel;
            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_agencia' then
             begin
               grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
             end;

            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_banco' then
               begin
                 grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
               end;

            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_conta' then
               begin
                 grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
               end;

            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_numero' then
               begin
                 grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
               end;

            if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName =  'che_emitente' then
               begin
                 grdTitulos.Columns[grdTitulos.SelectedIndex].ReadOnly := true;
               end;



          end;
      end;

end;

procedure TFAT_FM_M_CXA_NFE.grdTitulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = vk_f3 then
   begin
     dmGeral.BusCondPgto(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_condicao_pag').AsString);
     if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger in [0,1]) then // Se a condição de pagamento for a vista ou a prazo
         begin
           if not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ativa_titulos').AsBoolean) then
              begin
                 ChamarLanctoFPG;

                 AtuGridNota;

                 dmGeral.BUS_CD_M_NFE_TIT_CXA.Cancel;
                 if dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
                    begin
                      ShowMessage('AVISO: Nota fiscal continua sem forma de pagamento!');
                      AtuGridNota;
                      exit;
                    end;
              end
           else
              begin
                Showmessage('O sistema está parametrizado para não permitir lançamento de formas de pagamento pelo controle de caixa!');
              end;
         end;
   end;

 if key = vk_return then
     begin
       if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName = 'che_emitente' then
          begin
            if dmGeral.BUS_CD_M_NFE_TIT_CXA.eof then
               dmGeral.BUS_CD_M_NFE_TIT_CXA.First
            else
               begin
                  if dmGeral.BUS_CD_M_NFE_TIT_CXA.State in [dsInsert,dsEdit] then
                     begin
                       dmGeral.BUS_CD_M_NFE_TIT_CXA.Post;
                       dmGeral.BUS_CD_M_NFE_TIT_CXA.ApplyUpdates(0);
                     end;

                 dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                 if dmGeral.BUS_CD_M_NFE_TIT_CXA.eof then
                    dmGeral.BUS_CD_M_NFE_TIT_CXA.First
               end;
            grdTitulos.SelectedIndex := 3; // Primeiro indique qual coluna do grid voce quer se posicionar.
            grdTitulos.SetFocus; // depois de um setfocus que o foco ira direto para a coluna posicionada.
          end;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.ImprimirTermo1Click(Sender: TObject);
begin
   AtuGridNota;

   if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
      begin
        ShowMessage('Não existe registro de nota fiscal.');
        exit;
      end;

   if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
      begin
        ShowMessage('Nota fiscal com pré-venda.');
        exit;
      end;

   if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
      begin
        ShowMessage('Nota fiscal já foi cancelada.');
        exit;
      end;

  dmgeral.BUS_CD_M_TER_NFE.Close;
  dmGeral.BUS_CD_M_TER_NFE.Data :=
      dmGeral.BUS_CD_M_TER_NFE.DataRequest(VarArrayOf([dmgeral.BUS_CD_M_NFE_CXAid_fiscal.AsInteger]));

  if not  dmgeral.BUS_CD_M_TER_NFE.IsEmpty then
    begin
     FAT_CD_M_TER_NFE.PrepareReport();
     FAT_CD_M_TER_NFE.ShowReport();
    end
  else
    ShowMessage('Não há dados para poder imprimir o Termo!');
end;

procedure TFAT_FM_M_CXA_NFE.ImprimirTttuloparaCheque1Click(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin
  if (dmGeral.BUS_CD_M_NFE_CXA.IsEmpty) then
    begin
      ShowMessage('Nenhuma nota fiscal foi selecionada.');
      abort;
    end;


  try

  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
      dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([121,dmGeral.BUS_CD_M_NFE_CXAid_fiscal.Text]));

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
      dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXAid_emitente.Text]));

  dmGeral.BUS_CD_C_FPG2.Close;
  dmGeral.BUS_CD_C_FPG2.Data :=
      dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_RECid_forma_pag.Text]));

  if DmGeral.BUS_CD_M_REC.IsEmpty then
     begin
       ShowMessage('Não existe forma de pagamento tipo "Cheque" nesta nota fiscal.');
       exit;
     end;

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if FileExists(PathImg) then
     begin
        LogoEmpresa := TfrxPictureView(dmGeral.FIN_FR_M_REC_DUP.FindObject('Picture1'));
        if Assigned(LogoEmpresa) then
           LogoEmpresa.Picture.LoadFromFile(PathImg);
        LogoEmpresa := TfrxPictureView(dmGeral.FIN_FR_M_REC_DUP.FindObject('Picture2'));
        if Assigned(LogoEmpresa) then
           LogoEmpresa.Picture.LoadFromFile(PathImg);
     end;

  TfrxMasterData (dmGeral.FIN_FR_M_REC_DUP.FindComponent('MasterData1')).Visible := false;
  TfrxFooter (dmGeral.FIN_FR_M_REC_DUP.FindComponent('Footer2')).Visible := false;
  TfrxHeader (dmGeral.FIN_FR_M_REC_DUP.FindComponent('Header2')).Visible := false;


  if dmGeral.BUS_CD_C_FPG2.FieldByName('aval_duplicata').AsBoolean then
    dmGeral.FIN_FR_M_REC_DUP.Variables['Aval'] := QuotedStr( 'T')
  else
    dmGeral.FIN_FR_M_REC_DUP.Variables['Aval'] := QuotedStr('F');

  dmGeral.FIN_FR_M_REC_DUP.PrepareReport();
  dmGeral.FIN_FR_M_REC_DUP.ShowReport();

  finally
    dmGeral.BUS_CD_M_REC.Close;
    dmGeral.BUS_CD_C_CLI.Close;
    TfrxMasterData (dmGeral.FIN_FR_M_REC_DUP.FindComponent('MasterData1')).Visible := true;
    TfrxFooter (dmGeral.FIN_FR_M_REC_DUP.FindComponent('Footer2')).Visible := true;
    TfrxHeader (dmGeral.FIN_FR_M_REC_DUP.FindComponent('Header2')).Visible := true;
  end;
end;

procedure TFAT_FM_M_CXA_NFE.Informarmaquineta1Click(Sender: TObject);
begin
  FAT_FM_M_CXA_NFE_MAQ := TFAT_FM_M_CXA_NFE_MAQ.Create(Self);
  FAT_FM_M_CXA_NFE_MAQ.MontarResumoFpg(dmGeral.BUS_CD_M_NFE_TIT_CXA);
  FAT_FM_M_CXA_NFE_MAQ.ShowModal;
  FAT_FM_M_CXA_NFE_MAQ.Free;

  AtuGridNota;
end;



procedure TFAT_FM_M_CXA_NFE.GerarNFe(NumNFe : String);
Var iSeq: Integer;
    iRet:Boolean;
    contribuinte: Boolean;
    lDocIE,lDocIP,lUFEmitente: String;

    pAliqInterna, pAliqSaida, pInterPart:double;
    xDifAliquota, vBasePartilha, vPartilhaDest, vPartilhaOrigem:currency;
    vTotPartilhaDest, vTotPartilhaOrigem:currency;
    vBaseInterna, vBaseInter:currency;
    PercTributo: Currency;
    MensagemCpl: String;

    NroAutorizCartao: String;
    NumParcela: Integer;
begin

  with NFe.NotasFiscais.Add.NFe do
   begin
     if trim(dmGeral.CAD_CD_C_PAR.FieldByName('cnt_cnpj').AsString) <>'' then
       begin
         autXML.Add.CNPJCPF := trim(dmGeral.CAD_CD_C_PAR.FieldByName('cnt_cnpj').AsString);
       end;

     Ide.cNF       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger; //Caso não seja preenchido será gerado um número aleatório pelo componente

     if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_finalidade').AsInteger = 2) and
         (dmGeral.CAD_CD_C_PAR_NFE.FieldByName('ativar_nat_ope_nfe_comp').AsBoolean=true)) then
       Ide.natOp     := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('inf_nat_ope_nfe_comp').AsString
     else
       Ide.natOp     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_natope_nfe').AsString;


     // por Maxsuel Victor, 23/05/2024
     // Esse if foi devido a tabela de Condição de pagamento não ter opção Outras , pois só tem
     //   0 - a vista , 1 - a prazo , 2 sem pagamentos, gerando problema pra função  StrToIndpag do acbr

     if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_indPag').AsInteger in [0,1] then // a vista ou a prazo
        Ide.indPag    := StrToIndpag(iRet,Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_indPag').AsString))
     else
        Ide.indPag    := StrToIndpag(iRet,Trim(''));

     Ide.modelo    := StrToInt(Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('MODELO').AsString));
     Ide.serie     := StrToInt(Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString));
     Ide.nNF       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger;
     // If inserido no dia 19/09/23 - por Maxsuel Victor
     if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_emissao').AsInteger in [1,6] then // contigência ou contigência do Rio Grande Sul SVCRS
        Ide.dEmi      := StrToDateTime(datetostr(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime) + timetostr(time))
     else
        Ide.dEmi      := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime;
     Ide.dSaiEnt   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime;
     Ide.hSaiEnt   := Now;
     Ide.tpNF      := StrToTpNF(iRet,InttoStr(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_operacao').asInteger));
     Ide.tpEmis    := StrToTpEmis(iRet, inttoStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_emissao').AsInteger+1));
     Ide.tpAmb     := StrToTpAmb(iRet,inttoStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsInteger));
     Ide.verProc   := CVersaoSistema;
     Ide.cUF       := UFtoCUF(dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString);
     Ide.cMunFG    := StrToInt(trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));
     Ide.finNFe    := StrToFinNFe(iRet,inttostr(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_finalidade').AsInteger));

     if Assigned( NFe.DANFE ) then
        Ide.tpImp     := NFe.DANFE.TipoDANFE;

     if Ide.tpEmis <> teNormal then
        begin
          Ide.dhCont := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('contigencia_data').AsDateTime;
          Ide.xJust  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('contigencia_just').AsString;
        end;

     //## cfNao, cfConsumidorFinal
     //Ide.indFinal  := cfNao;
     if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_TIPOFINAL').AsInteger = 0 Then
        Ide.indFinal  := cfConsumidorFinal
     else
        Ide.indFinal  := cfNao;



     //## (pcNao, pcPresencial, pcInternet, pcTeleatendimento, pcEntregaDomicilio, pcOutros)
     Ide.indPres  :=pcNao;

     if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMPRESA').AsString <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString Then
        begin
          if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString)='EX' then
             ide.idDest := doExterior
          else
             ide.idDest := doInterestadual;
        end
     else if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMPRESA').AsString = dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString  Then
        ide.idDest := doInterna;

     {if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMPRESA').AsString <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString Then
        ide.idDest := doInterestadual
     else if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMPRESA').AsString = dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString  Then
        ide.idDest := doInterna
     else
        ide.idDest := doExterior; }





     if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_FINALIDADE').AsInteger = 2) or
        (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_FINALIDADE').AsInteger = 4))  then// -> Nota complementar
        begin
          if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'R') or
             (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'D') then
             begin
               dmGeral.BUS_CD_M_NFE_DEV.Close;
               dmGeral.BUS_CD_M_NFE_DEV.Data :=
                     dmGeral.BUS_CD_M_NFE_DEV.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString]));

               if not dmGeral.BUS_CD_M_NFE_DEV.IsEmpty then
                  begin
                    while not dmGeral.BUS_CD_M_NFE_DEV.eof do
                       begin
                           //Para NFe referenciada use os campos abaixo
                           with Ide.NFref.Add do
                                begin
                                  dmGeral.BUS_CD_M_NFE.Close;
                                  dmGeral.BUS_CD_M_NFE.Data :=
                                      dmGeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([12,
                                              dmGeral.BUS_CD_M_NFE_DEV.FieldByName('ID_FISCAL_DEV').AsString]));

                                  refNFe       := dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString; //NFe Eletronica

                                  {RefNF.cUF    := 0;  // |
                                  RefNF.AAMM   := ''; // |
                                  RefNF.CNPJ   := ''; // |
                                  RefNF.modelo := 1;  // |- NFe Modelo 1/1A
                                  RefNF.serie  := 1;  // |
                                  RefNF.nNF    := 0;  // |

                                  RefNFP.cUF     := 0;  // |
                                  RefNFP.AAMM    := ''; // |
                                  RefNFP.CNPJCPF := ''; // |
                                  RefNFP.IE      := ''; // |- NF produtor Rural
                                  RefNFP.modelo  := ''; // |
                                  RefNFP.serie   := 1;  // |
                                  RefNFP.nNF     := 0;  // |

                                  RefECF.modelo  := ECFModRef2B; // |
                                  RefECF.nECF    := '';          // |- Cupom Fiscal
                                  RefECF.nCOO    := '';          // |}
                                end;
                           dmGeral.BUS_CD_M_NFE_DEV.Next;
                       end;
                  end;
                dmGeral.BUS_CD_M_NFE_DEV.Close;
                dmGeral.BUS_CD_M_NFE.Close;
             end;


           if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') or
              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'E') then
             begin
              dmGeral.BUS_CD_M_NFE_2.Close;
              dmGeral.BUS_CD_M_NFE_2.Data :=
              dmGeral.BUS_CD_M_NFE_2.DataRequest(
                 VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tipo_nf').AsString,
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal_ref_comp').AsString]));

              if not dmGeral.BUS_CD_M_NFE_2.IsEmpty then
                begin
                 with Ide.NFref.Add do
                   begin
                     refNFe       := dmGeral.BUS_CD_M_NFE_2.FieldByName('NFE_CHAVE').AsString;
                   end;
                end;
               dmGeral.BUS_CD_M_NFE_2.Close;
             end;
       end;

     if ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)='5929') or
         (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)='6929')) then
        begin
          //Busca onumero danota pelo id_fiscal_referenciado
          dmGeral.BUS_CD_M_NFE_2.Close;
          dmGeral.BUS_CD_M_NFE_2.Data :=
          dmGeral.BUS_CD_M_NFE_2.DataRequest(
                 VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tipo_nf').AsString,
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal_referenciado').AsString]));
          if not dmGeral.BUS_CD_M_NFE_2.IsEmpty then
             begin
              with Ide.NFref.Add do
                begin
                  RefECF.modelo := ECFModRef2D;
                  RefECF.nCOO   := dmGeral.BUS_CD_M_NFE_2.FieldByName('NUMERO').asString;
                  refECF.nECF   := '01';
                end;
             end;
           dmGeral.BUS_CD_M_NFE_2.Close;
        end;

      Emit.CNPJCPF           := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;
      Emit.IE                := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_IE').AsString;
      Emit.xNome             := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').AsString;
      Emit.xFant             := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;

      Emit.EnderEmit.fone    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_TELEFONE').AsString;
      Emit.EnderEmit.CEP     := StrToInt(RemoveChars(['-'],Trim(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CEP').AsString)));
      Emit.EnderEmit.xLgr    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_ENDERECO').AsString;
      Emit.EnderEmit.nro     := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_NUMERO').AsString;
      Emit.EnderEmit.xCpl    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_COMPLEMENTO').AsString;
      Emit.EnderEmit.xBairro := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_BAIRRO').AsString;
      Emit.EnderEmit.cMun    := StrToInt(Trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));
      Emit.EnderEmit.xMun    := dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString;
      Emit.EnderEmit.UF      := dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString;





      Emit.IEST              := '';
      // Preencher no caso de existir serviços na nota
      Emit.IM                := Trim(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_IM').AsString);
      // Verifique na cidade do emissor da NFe se é permitido a inclusão de serviços na NFe
      Emit.CNAE              := Trim(  StringReplace(StringReplace(StringReplace( dmGeral.CAD_CD_C_PAR.FieldByName('int_id_cnae').AsString,
                                                  '.','',[rfReplaceAll]),
                                                  '-','',[rfReplaceAll]),
                                                  '/','',[rfReplaceAll])  );

      // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
      if dmGeral.CAD_CD_C_PAR.FieldByName('int_reg_tributario').AsInteger=0 then
         Emit.CRT               := crtSimplesNacional
      else
         Emit.CRT               := crtRegimeNormal;

      Dest.CNPJCPF           := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnpjcpf').AsString;
      // Dest.IE mais abaixo
      Dest.ISUF              := '';
      Dest.xNome             := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nomeemi').AsString+
                                ' - Cod.: '+dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_emitente').AsString;

      // Esse IF foi colocado por Maxsuel Victor em 31-03-2016 , pra atender um pedido do Colchões Globo;
      if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
         Dest.EnderDest.Fone    := ''
      else
         Dest.EnderDest.Fone    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_telefone').AsString;

      Dest.EnderDest.CEP     := StrToInt(RemoveChars(['-'],Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cep').AsString)));

      Dest.EnderDest.xLgr    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_endereco').AsString;
      Dest.EnderDest.nro     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_numero').AsString;
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_bairro').AsString;
      Dest.EnderDest.cMun    := strtoint(trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cod_cidade').AsString));
      Dest.EnderDest.xMun    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nom_cidade').AsString;
      Dest.EnderDest.UF      := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_estado').AsString;

      if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString)='EX' then
        begin
         Dest.EnderDest.cPais   := StrToInt(trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_COD_PAIS').AsString));
         Dest.EnderDest.xPais   := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOM_PAIS').AsString);
        end
      else
        begin
          Dest.EnderDest.cPais   := 1058;
          Dest.EnderDest.xPais   := 'BRASIL';
        end;

      if copy(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_cfo').AsString,1,1) = '3' then
        begin
         Dest.idEstrangeiro := TRIM(dmGeral.BUS_CD_M_NFE_CXA.fieldByName('DI_ESTRANGEIRO').AsString);
        end;

      Contribuinte := false;

      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'E') or
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'D') then
         begin
           dmGeral.BusFornecedor(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsString);

           if length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) = 14 then  // Jurídica
              Dest.IE := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_doc_ie').AsString);

           lDocIE      := dmGeral.BUS_CD_C_FOR.FieldByName('DOC_IE').AsString;
           lUFEmitente := dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').AsString;

           if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) = 14) and  // Jurídica
              ((trim(lDocIE) <> '') and (trim(lDocIE) <> 'ISENTO')) then
                begin
                   Contribuinte := true;
                end;
         end;



      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') or
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'R') then
         begin
           dmGeral.BusCliente(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsString);

           if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1 then  // Jurídica
             begin
              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_contribuinte').AsInteger=0  then
                 begin
                   Dest.IE := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_doc_ie').AsString);
                 end;
             end;
           lDocIE        := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString;
           lDocIP        := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IP').AsString;
           lUFEmitente   := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;

           if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1)   and   // Jurídica
              ((trim(lDocIE) <> '') and (trim(lDocIE) <> 'ISENTO')) then
                begin
                  Contribuinte := true;
                end;

           if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0) and // Física
              ( (trim(lDocIP) <> '') and (trim(lDocIP) <> 'ISENTO') ) then
               begin
                 Contribuinte := true;
               end;
         end;


      // Comentado devido nota tecnica de 2016
      // Para notas de entrada e devolução de fornecedor

      {if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'E') or
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'D') then
         begin
            //## (inContribuinte, inIsento, inNaoContribuinte)
            if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) <> 14) AND  // Fisica
               (Contribuinte=true) then
               begin
                 Dest.indIEDest := inContribuinte;
                 Dest.IE        := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
               end
            else
               if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) <> 14) AND
                  (contribuinte=false) then
                  begin
                    Dest.indIEDest := inNaoContribuinte;
                  end
                else
                  if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) = 14) AND
                     (Contribuinte=true) then
                     begin
                       Dest.indIEDest := inContribuinte;
                       Dest.IE := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
                     end
                  else
                     if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) = 14) AND
                        (contribuinte=false) then
                         begin
                           Dest.indIEDest := inIsento;
                         end;
         end;

      // Para notas de saída e devolução de cliente
      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') or
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'R') then
         begin
            //## (inContribuinte, inIsento, inNaoContribuinte)
            if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0) AND  // Fisica
               (Contribuinte=true) then
               begin
                 Dest.indIEDest := inContribuinte;
                 if trim(lDocIP) <> '' then
                    Dest.IE        := lDocIP
                 else
                    Dest.IE        := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
               end
            else
               if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0) AND
                  (contribuinte=false) then
                  begin
                    Dest.indIEDest := inNaoContribuinte;
                  end
                else
                  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1) AND
                     (Contribuinte=true) then
                     begin
                       Dest.indIEDest := inContribuinte;
                       Dest.IE := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
                     end
                  else
                     if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1) AND
                        (contribuinte=false) then
                         begin
                           Dest.indIEDest := inIsento;
                         end;
         end; }

       //Nota Tecnica 2015.003 v04
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_contribuinte').AsInteger=0) then
           begin
             Dest.indIEDest := inContribuinte;
             //Dest.IE        := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
             // if colocado no dia 27/01/2016 , devido erro com nota fiscal de Produtor.
             if trim(lDocIP) <> '' then
                Dest.IE        := lDocIP
             else
                Dest.IE        := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString);
           end;

       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_contribuinte').AsInteger=1) then
          begin
             Dest.indIEDest := inNaoContribuinte;
             Dest.IE := '';
          end;

       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_contribuinte').AsInteger=2) then
          begin
            Dest.indIEDest := inIsento;
          end;


      iSeq := 0;
      dmGeral.BUS_CD_M_NFE_ITE_CXA.First;
      while not dmGeral.BUS_CD_M_NFE_ITE_CXA.eof do
        begin
          with Det.Add do
           begin
             inc(iSeq);
             Prod.nItem    := iSeq;

             Prod.cProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ITEM').AsString;
             if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danfe_cod_item').AsInteger = 0 then
                  Prod.cProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ITEM').AsString;
             if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danfe_cod_item').AsInteger = 1 then
                  Prod.cProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_COD_FABRICA').AsString;

             Prod.cEAN     := '';
             Prod.cEANTrib  := '';
             // Nota técnica: NT_2016_002_v1.42
             if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_versao').AsInteger = 3 then  //  3 - Versão 4.00;    2- Versão 3.10
                begin
                  if trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_COD_BARRA').AsString) <> '' then
                     begin
                       Prod.cEAN  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_COD_BARRA').AsString;
                       Prod.cEANTrib  :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_COD_BARRA').AsString;
                     end
                  else
                     begin
                       Prod.cEAN  := 'SEM GTIN';
                       Prod.cEANTrib  := 'SEM GTIN';
                     end;
                end;

             Prod.xProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_desc_item').AsString;
             Prod.NCM      := Trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_id_ncm').AsString);
             if trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cest_ncm').AsString) <> '' then
                Prod.CEST     := trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cest_ncm').AsString);

             Prod.EXTIPI   := '';
             Prod.CFOP     := Trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_cfo').AsString);
             Prod.uCom     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_und_venda').AsString;
             Prod.qCom     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('Qtde').AsFloat;
             Prod.vUnCom   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_unitario').AsVariant;
             Prod.vProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_mercadoria').AsCurrency;



             Prod.uTrib     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_und_venda').AsString;
             Prod.qTrib     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('Qtde').AsFloat;
             Prod.vUnTrib   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_unitario').AsVariant;

             Prod.vFrete    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('fre_valor').AsCurrency;
             Prod.vSeg      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_seguro').AsCurrency;
             Prod.vOutro    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_outras_desp').AsCurrency;
             Prod.vDesc     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_desconto').AsCurrency;

             // Nota técnica: NT_2016_002_v1.42
             if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_versao').AsInteger = 3 then  //  3 - Versão 4.00;    2- Versão 3.10
                Prod.indEscala := ieNenhum;

             infAdProd      := '';

             if (dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_fcp_ope_int').asCurrency > 0) or
                (dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_fcp_st_ope_int').asCurrency > 0)then
                begin
                  infAdProd := 'Inf. relativas ao Fundo de Combate à Pobreza(FCP): ';
                end;

             if dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_fcp_ope_int').asCurrency > 0 then
                begin
                  infAdProd := infAdProd + ' Base FCP(R$): ' +
                                FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp_base_ope_int').AsCurrency)+
                                ' , FCP(%): ' + FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('per_fcp_ope_int').AsCurrency)+
                                ' , FCP(R$): ' + FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp_ope_int').AsCurrency)+';';
                end;

             if dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_fcp_st_ope_int').asCurrency > 0 then
                begin
                  infAdProd := infAdProd + ' Base FCPST(R$): ' +
                                FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp_st_base_ope_int').AsCurrency)+
                                ' , FCPST(%): ' + FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('per_fcp_st_ope_int').AsCurrency)+
                                ' , FCPST(R$): ' + FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp_st_ope_int').AsCurrency)+';';
                end;


             if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_COD_FAB_DANFE').AsBoolean then
                 infAdProd := 'Cód. Fáb.: ' + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cod_fabrica').AsString+';';

              // Comentário inserido em 31/03/2018 por Maxsuel Victor, acordado com Robertinho da Globo

              //if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
              //   infAdProd := ' Cor: ' + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_nomecor').AsString+';';

              //if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
              //   infAdProd := infAdProd + ' Tamanho: ' + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_nometam').AsString+';';

              //Inserido por Maxsuel Victor em 19/07/2016
              if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_composicao').AsString<>'' then
                 infAdProd := infAdProd + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_composicao').AsString+';';

              if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_registro').AsString<>'' then
                 infAdProd := infAdProd + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_registro').AsString+';';

              //Mariel Colocou este codigo em 08/01/2016
              if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cod_onu').AsString<>'' then
                 infAdProd := infAdProd + ' Cod.Onu: ' + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cod_onu').AsString+';';

              //Inserido por Maxsuel Victor em 31/03/2018
              if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_SGQ_PERSON').AsBoolean = true then
                 if trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('pcp_obs_item').AsString) <> '' then
                    infAdProd := infAdProd + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('pcp_obs_item').AsString+';';

             //Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
             if copy(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_cfo').AsString,1,1) = '3' then
                begin
                 {  with Prod.DI.Add do
                     begin
                       nDi         := '';
                       dDi         := now;
                       xLocDesemb  := '';
                       UFDesemb    := '';
                       dDesemb     := now;
                       cExportador := '';

                       with adi.Add do
                         begin
                           nAdicao     := 1;
                           nSeqAdi     := 1;
                           cFabricante := '';
                           vDescDI     := 0;
                         end;
                     end; }

                IF dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_NUMERO').asString<>'' THEN
                     begin

                       with Prod.DI.Add do
                         begin
                           nDi         := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_NUMERO').asString;
                           dDi         := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_DATA').AsDateTime;
                           xLocDesemb  := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_LOCAL_DESEMB').AsString;
                           UFDesemb    := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_UF_DESEMB').AsString;
                           dDesemb     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_DATA_DESEMB').AsDateTime;
                           cExportador := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_EXPORTADOR').AsString;

                           //## (tvMaritima, tvFluvial, tvLacustre, tvAerea, tvPostal,tvFerroviaria, tvRodoviaria, tvConduto, tvMeiosProprios,tvEntradaSaidaFicta, tvCourier, tvHandcarry)
                           tpViaTransp :=StrToTipoViaTransp(iRet,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_tp_viatransp').AsString);
                           if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_tp_viatransp').AsString='1' then
                              vAFRMM := 0;

                           with adi.Add do
                             begin
                               nAdicao     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_NUMERO_ADICAO').asInteger;
                               nSeqAdi     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_SEQ_ADICAO').asInteger;
                               cFabricante := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_FABRICANTE').AsString;
                               vDescDI     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_VLR_DESCONTO').AsCurrency;
                               nDraw       :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_DRAW').AsString;
                             end;
                         end;
                     end;
                end;






             with Imposto do
              begin
                // lei da transparencia nos impostos
                vTotTrib := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('tri_valor').AsCurrency;
                with ICMS do
                 begin
                   if Emit.CRT=crtRegimeNormal then
                     CST   :=StrToCSTICMS(iRet, dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_icm').AsString)
                   else
                     CSOSN :=StrToCSOSNIcms(iRet, dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_icm').AsString);

                     //Foi conversado com sangia paraque origem pega qualquer tipo de nota. Responsavel:Luan. Data:12/08/2016
                  // if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger >0 then
                     // begin
                         // Esta linha foi alterada para pegar o INT_ORIGEM , feito por Maxsuel Victor em 17/10/2023
                         //ICMS.orig := StrToOrig(iRet,trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('origem_mercadoria').AsString));
                         ICMS.orig := StrToOrig(iRet,trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_origem').AsString));

                     // end
                  // else
                     // begin
                       //  ICMS.orig    := oeNacional;
                     // end;

                   ICMS.modBC   := dbiValorOperacao;
                   ICMS.vBC     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_base').AsCurrency;
                   ICMS.pICMS   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_aliquota').AsFloat;
                   ICMS.vICMS   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_valor').AsFloat;
                   ICMS.modBCST := dbisMargemValorAgregado;
                   ICMS.pMVAST  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ICM_S_PER_MVA').AsFloat;
                   ICMS.pRedBCST:= 0;
                   ICMS.vBCST   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_s_base').AsCurrency;
                   ICMS.pICMSST := 0;
                   ICMS.vICMSST := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_s_valor').AsFloat;
                   ICMS.pRedBC  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_per_reducao').AsFloat;
                   ICMS.vICMSDeson := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_icm_desc').AsCurrency;
                   if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('motivo_icms_des').AsString<>'' then
                      ICMS.motDesICMS := StrTomotDesICMS(iRet, dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('motivo_icms_des').AsString)
                   else
                      ICMS.motDesICMS := StrTomotDesICMS(iRet, '9');  { 3=Uso na agropecuária;  9=Outros;   12=Órgão de fomento e desenvolvimento agropecuário.}


                   // Nota técnica: NT_2016_002_v1.42
                   if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_versao').AsInteger = 3 then  //  3 - Versão 4.00;    2- Versão 3.10
                      begin
                         if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_ope_int').AsCurrency > 0 then
                            begin
                              ICMS.pFCP := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('per_fcp_ope_int').AsCurrency;
                              ICMS.vFCP := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_ope_int').AsCurrency;
                            end;

                         if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_base_ope_int').AsCurrency > 0 then
                            begin
                              ICMS.vBCFCP :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_base_ope_int').AsCurrency;
                            end;

                         if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_st_ope_int').AsCurrency > 0 then
                            begin
                               ICMS.vBCFCPST :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_st_base_ope_int').AsCurrency;
                               ICMS.pFCPST   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('per_fcp_st_ope_int').AsCurrency;
                               ICMS.vFCPST   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_st_ope_int').AsCurrency;
                            end;

                         if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('per_st_sup_cons_final_ope_int').AsCurrency > 0 then
                            begin
                              ICMS.pST :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('per_st_sup_cons_final_ope_int').AsCurrency;
                            end;

                         if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_st_ret_ope_int').AsCurrency > 0 then
                            begin
                              ICMS.vBCFCPSTRet :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_st_ret_base_ope_int').AsCurrency;
                              ICMS.pFCPSTRet   :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('per_fcp_st_ret_ope_int').AsCurrency;
                              ICMS.vFCPSTRet   :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp_st_ret_ope_int').AsCurrency;
                            end;
                      end;

                 end;

             //Nota Tecnica 2015.003 v04
             if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'R') and
                (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'D') then
                begin
                   if (ide.idDest = doInterestadual) and (Ide.indFinal = cfConsumidorFinal) and
                      (Dest.indIEDest = inNaoContribuinte) then
                       begin
                          with ICMSUFDest do
                            begin
                              if (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '101') and
                                 (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '102') and
                                 (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '103') and
                                 (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '201') and
                                 (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '202') and
                                 (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '203') and
                                 (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '500') and
                                 (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '900') and
                                 (dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_part_orig').asCurrency = 0) and
                                 (dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_part_dest').asCurrency = 0) then
                                  begin
                                   // Comentário inserido 06/07/16 por Maxsuel Victor, foi detectado isso depois que a Sefaz passou a validar
                                   // o grupo de partilha de icms
                                   { vBCUFDest      := 0;
                                    pICMSUFDest    := 0;
                                    pICMSInter     := 0;
                                    pICMSInterPart := 0;
                                    pFCPUFDest     := 0;
                                    vFCPUFDest     := 0;}

                                    if (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '60') or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '41') then
                                        begin
                                          pICMSInter    := 12;
                                          if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_origem').AsInteger in [1,2,3,8] then
                                             pICMSInter  := 4;
                                        end
                                    else
                                       pICMSInter     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_aliquota').AsFloat;

                                    vBCUFDest      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_base').AsCurrency;

                                    pICMSUFDest    := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('part_per_aliq_dest').asCurrency;


                                    pICMSInterPart := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency;

                                    vBCFCPUFDest   := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_fcp_base_uf_dest').asCurrency;
                                    pFCPUFDest     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('PER_FCP').asCurrency;
                                    vFCPUFDest     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp').AsCurrency;


                                    vICMSUFDest    := 0;
                                    vICMSUFRemet   := 0;
                                  end
                              else
                                  begin
                                    if (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '41')  or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '60')  or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '101') or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '102') or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '103') or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '201') or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '202') or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '203') or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '500') or
                                       (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '900') then
                                       begin
                                         //vBCUFDest      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_base').AsCurrency;
                                         vBCUFDest      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_base_icms_dest').AsCurrency;

                                         pICMSInter    := 12;
                                         if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_origem').AsInteger in [1,2,3,8] then
                                            pICMSInter  := 4;
                                         if (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '60') and
                                            (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '41') then
                                            // vBCUFDest := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_liquido').asCurrency;
                                            vBCUFDest      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_base_icms_dest').AsCurrency;
                                       end
                                    else
                                       begin
                                         //vBCUFDest      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_base').AsCurrency;
                                         vBCUFDest      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_base_icms_dest').AsCurrency;

                                         pICMSInter     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_aliquota').AsFloat;
                                       end;
                                    //vBCUFDest      :=
                                    pICMSUFDest    := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('part_per_aliq_dest').asCurrency;

                                    //pICMSInter     :=
                                    pICMSInterPart := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency;

                                    vBCFCPUFDest   := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_fcp_base_uf_dest').asCurrency;
                                    pFCPUFDest     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('PER_FCP').asCurrency;
                                    vFCPUFDest     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp').AsCurrency;

                                    vICMSUFDest    := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_part_dest').asCurrency;
                                    vICMSUFRemet   := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_part_orig').asCurrency;

                                  end;

                             // Comentado em 23-03-2016 por Maxsuel Victor
                                // Devido a novo cálculo da PARTILHA passado por Mariel.

                             { if Pos(Emit.EnderEmit.UF, 'MG,RJ,SP,PR,RS,SC')<>0 then
                                 pAliqSaida:=7
                              else
                                 pAliqSaida:=12;

                              if (ICMS.orig=oeEstrangeiraImportacaoDireta) or
                                 (ICMS.orig=oeEstrangeiraAdquiridaBrasil) or
                                 (ICMS.orig=oeNacionalConteudoImportacaoSuperior40) or
                                 (ICMS.orig=oeNacionalConteudoImportacaoSuperior70) Then
                                  pAliqSaida:=4;

                              pAliqInterna := dmGeral.CAD_CD_C_PAR_CTR.fieldByName('NFE_PER_ICMS_SAIDA').asFloat;
                              pInterPart   := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsFloat;
                              vBaseInterna :=(dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('VLR_LIQUIDO').asCurrency*pAliqInterna)/100;
                              vBaseInter   :=(dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('VLR_LIQUIDO').asCurrency*pAliqSaida)/100;
                              xDifAliquota := vBaseInterna - vBaseInter;

                              vPartilhaDest   := strtoCurr(formatCurr('#######0.00',(xDifAliquota*dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsFloat)/100));
                              vPartilhaOrigem := strtoCurr(formatCurr('#######0.00',(xDifAliquota*dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_ORIG').AsFloat)/100));

                              vTotPartilhaDest   := vTotPartilhaDest + vPartilhaDest;
                              vTotPartilhaOrigem := vTotPartilhaOrigem + vPartilhaOrigem;

                              vBCUFDest     :=dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('VLR_LIQUIDO').asCurrency;
                              pFCPUFDest    :=0;
                              pICMSUFDest   :=pAliqInterna;
                              pICMSInter    :=pAliqSaida;
                              pICMSInterPart:=pInterPart;
                              vFCPUFDest    :=0;
                              vICMSUFDest   :=vPartilhaDest;
                              vICMSUFRemet  :=vPartilhaOrigem;  }
                            end;
                       end;
                end;


               if (dmgeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'D') then
                  begin
                    with IPI do
                     begin
                       CST    := StrToCSTIPI(iRet,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_ipi').AsString);
                       vBC    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ipi_base').AsCurrency;
                       if pos(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_ipi').text,'00-49-50-99') <> 0 then
                          begin
                            qUnid  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('Qtde').AsFloat;
                            vUnid  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_unitario').AsCurrency;
                          end;
                       pIPI   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ipi_aliquota').AsFloat;
                       vIPI   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ipi_valor').AsFloat;
                     end;
                  end;

               if (dmgeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'D') then
                  begin
                     with IPI do
                       begin
                         CST    := StrToCSTIPI(iRet,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_ipi').AsString);
                         vBC    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ipi_base').AsCurrency;
                         pIPI   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ipi_aliquota').AsFloat;
                         vIPI   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ipi_valor').AsFloat;
                       end;
                  end;

                //Imposto de Importacao - Ver com sangia e criar no banco estes campos
                with II do
                 begin
                   vBc      := 0;
                   vDespAdu := 0;
                   vII      := 0;
                   vIOF     := 0;
                 end;

                with PIS do
                 begin
                   CST      :=StrToCSTPIS( iRet,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_pis').AsString);
                   PIS.vBC  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('pis_base').AsCurrency;
                   PIS.pPIS := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('pis_aliquota').AsFloat;
                   PIS.vPIS := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('pis_valor').AsCurrency;
                   if pos(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_pis').text,'03') <> 0 then
                      begin
                        PIS.qBCProd   := 0;
                        PIS.vAliqProd := 0;
                        PIS.vPIS      := 0;
                      end;
                 end;

                with COFINS do
                 begin
                   CST            := StrToCSTCOFINS( iRet,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_cof').AsString);;
                   COFINS.vBC     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('cof_base').AsCurrency;
                   COFINS.pCOFINS := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('cof_aliquota').AsFloat;
                   COFINS.vCOFINS := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('cof_valor').AsCurrency;

                   if pos(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_cof').text,'03') <> 0 then
                      begin
                        COFINS.qBCProd   := 0;
                        COFINS.vAliqProd := 0;
                      end;
                 end;

              end;
           end ;
           dmGeral.BUS_CD_M_NFE_ITE_CXA.Next;
        end;

      Total.ICMSTot.vBC     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_n_base').AsCurrency;
      Total.ICMSTot.vICMS   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_n_valor').AsCurrency;
      Total.ICMSTot.vBCST   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_s_base').AsCurrency;
      Total.ICMSTot.vST     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_s_valor').AsCurrency;

      Total.ICMSTot.vICMSDeson  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_icm_desc').AsCurrency;
      //Nota Tecnica 2015.003 v04

      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'R') and
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'D') then
         begin
            if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency > 0) or
               (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_dest').AsCurrency > 0)  then
               begin
                 total.ICMSTot.vFCPUFDest   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp').AsCurrency;
                 total.ICMSTot.vICMSUFDest  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_dest').AsCurrency;
                 total.ICMSTot.vICMSUFRemet := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency;
               end;
         end;
      // Comentado por Maxsuel , em 23-03-2016
        // devido mudanças feitas por Mariel.
      {if vTotPartilhaDest>0 then
         begin
           total.ICMSTot.vFCPUFDest:=0;
           total.ICMSTot.vICMSUFDest:=vTotPartilhaDest;
           total.ICMSTot.vICMSUFRemet:=vTotPartilhaOrigem;
         end;}

      Total.ICMSTot.vProd   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_mercadoria').AsCurrency;
      Total.ICMSTot.vFrete  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('fre_valor').AsCurrency;
      Total.ICMSTot.vSeg    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_seguro').AsCurrency;
      Total.ICMSTot.vDesc   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_desconto').AsCurrency;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ipi_valor').AsCurrency;
      Total.ICMSTot.vPIS    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('pis_valor').AsCurrency;
      Total.ICMSTot.vCOFINS := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('cof_valor').AsCurrency;
      Total.ICMSTot.vOutro  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_outras_desp').AsCurrency;
      Total.ICMSTot.vNF     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido').AsCurrency;

      Total.ICMSTot.vFCP       := dmGeral.BUS_CD_M_NFE_CXA.fieldByName('vlr_fcp_ope_int').asCurrency;
      Total.ICMSTot.vFCPST     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp_st_ope_int').AsCurrency;
      Total.ICMSTot.vFCPSTRET  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp_st_ret_ope_int').AsCurrency;

      // lei da transparencia de impostos
      Total.ICMSTot.vTotTrib := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tri_valor').AsCurrency;

      Transp.modFrete :=StrTomodFrete(iRet, inttoStr(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_frete').AsInteger));
      Transp.Transporta.CNPJCPF  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnptra').AsString;
      Transp.Transporta.xNome    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nometra').AsString;
      Transp.Transporta.IE       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_instra').AsString;
      Transp.Transporta.xEnder   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_endtra').AsString;
      Transp.Transporta.xMun     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cidtra').AsString;
      Transp.Transporta.UF       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_esttra').AsString;

      //if ide.idDest <> doInterestadual then

      //Transp.veicTransp.placa := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_placa').AsString;
      //Transp.veicTransp.UF    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_uf').AsString;
      //Transp.veicTransp.RNTC  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_rntc').AsString;

      with Transp.Vol.Add do
       begin
         qVol  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_qtde_vol').AsInteger;
         esp   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_especie').AsString;
         marca := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_marca').AsString;
         nVol  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_num_vol').AsString;
         pesoL := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('peso_liquido').AsFloat;
         pesoB := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('peso_bruto').AsFloat;
       end;


      if (Ide.indPag <> ipNenhum)  Then
         begin
           NumParcela := 0;
           // Nota técnica: NT_2016_002_v1.42
           if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_versao').AsInteger = 3 then  //  3 - Versão 4.00;    2- Versão 3.10
              begin
                 if Ide.indPag = ipPrazo then    // Nota técnica: NT_2016_002_v1.42
                    begin
                       // Adicionado por Maxsuel Victor em 03/07/2018
                       cobr.Fat.nFat  :=  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString;
                       // por Maxsuel Victor, em 24/07/2020, foi adicionado a linha do valor do IPI_VALOR
                       cobr.Fat.vOrig :=  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_mercadoria').AsCurrency +
                                          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ipi_valor').AsCurrency;
                       cobr.Fat.vDesc :=  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_desconto').AsCurrency;
                       cobr.Fat.vLiq  :=  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido').AsCurrency;
                       // -------------------------------------------


                       dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                       while not dmGeral.BUS_CD_M_NFE_TIT_CXA.Eof do
                           begin
                             if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger in [1,2,4] then // Duplicata ou Promissória
                                begin
                                   with Cobr.Dup.Add do
                                      begin

                                        //nDup  := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('NUM_PARCELA').AsString;
                                        // Nota técnica: NT_2016_002_v1.60
                                        inc(NumParcela);
                                        if length(IntToStr(NumParcela)) = 1 then
                                           nDup  := '00'+IntToStr(NumParcela);
                                        if length(IntToStr(NumParcela)) = 2 then
                                           nDup  := '0'+IntToStr(NumParcela);
                                        dVenc := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime;
                                        vDup  := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('vlr_titulo').AsCurrency;
                                      end;
                                end;
                             dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                           end;

                    end;
              end
           else
              begin
                 dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                 while not dmGeral.BUS_CD_M_NFE_TIT_CXA.Eof do
                   begin
                     with Cobr.Dup.Add do
                      begin
                        inc(NumParcela);
                        // Nota técnica: NT_2016_002_v1.60
                        if length(IntToStr(NumParcela)) = 1 then
                           nDup  := '00'+IntToStr(NumParcela);
                        if length(IntToStr(NumParcela)) = 2 then
                           nDup  := '0'+IntToStr(NumParcela);
                        dVenc := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime;
                        vDup  := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('vlr_titulo').AsCurrency;
                      end;
                     dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                   end;
              end;
         end;




     // Inserido por Maxsuel Victor contemplando a NFe 4.0
     // Nota técnica: NT_2016_002_v1.42
     //  YA. Informações de Pagamento Obrigatório o preenchimento do Grupo Informações de Pagamento
     //     para NF-e e NFC-e. Para as notas com finalidade de Ajuste ou Devolução o campo Forma de Pagamento
     //     deve ser preenchido com 90=Sem Pagamento.
            // Normal, Ajuste ou Devolução
     if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_finalidade').AsInteger in [3,4] ) or
        ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_finalidade').AsInteger in [1])  and (Ide.indPag = ipNenhum) )  then
         begin
           with pag.Add do
                begin
                  tpag := fpSemPagamento;
                end;
         end
     else
         begin
            // Nota técnica: NT_2016_002_v1.42: passou a funcionar para NFe

            dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
            while not dmGeral.BUS_CD_M_NFE_TIT_CXA.Eof do
                begin
                           { doc_impresso
                            0 - Nenhum,
                            1 - Duplicata,
                            2 - Promissoria,
                            3 - Cartao,
                            4 - Boleto,
                            5 - Dinheiro,
                            6 - Cheque
                            7 - Credito
                            }

                        {  (fpDinheiro, fpCheque, fpCartaoCredito, fpCartaoDebito, fpCreditoLoja,
                            fpValeAlimentacao, fpValeRefeicao, fpValePresente, fpValeCombustivel,
                            fpDuplicataMercantil, fpBoletoBancario, fpSemPagamento, fpOutro);}

                    with pag.Add do
                         begin
                           if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger in [1,2,4] then
                              tPag := fpDuplicataMercantil;

                           // EM 23-04-18, por Maxsuel victor, foi feito o comentário devido a necessidade da Globo informar os boeltos
                              // no corpo do danfe.  portanto ele se enquadrou na parte de Duplicata Mercantil

                              // if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger = 4 then
                              //    tPag := fpBoletoBancario;

                           if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger = 5 then
                              tPag := fpDinheiro;

                           if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger = 3 then
                              begin
                                if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_cardebcre').AsInteger = 0 then
                                   tPag := fpCartaoCredito;
                                if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_cardebcre').AsInteger = 1 then
                                   tPag := fpCartaoDebito;

                                CNPJ := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_cnpj_ccr').AsString;

                                tpIntegra := tiPagNaoIntegrado;

                                if not(InputQuery('Nro Autorização:', 'Nro autorização:',   NroAutorizCartao)) then
                                   exit
                                else
                                   cAut := NroAutorizCartao
                              end;

                           if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger = 6 then
                              begin
                                tPag := fpCheque;
                              end;

                           if (ide.indPag = ipOutras) or (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_finalidade').AsInteger in [3,4]) then // sem pagamentos , não achei necessário colocar na NFC-e
                               tpag := fpSemPagamento;

                           if (ide.indPag <> ipOutras) and (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_finalidade').AsInteger in [3,4])) then  // diferente de sem pagamentos e diferente de (nota fiscal de Ajuste e de Devolução)
                              vPag := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('vlr_titulo').AsCurrency;
                         end;
                  dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                end;
         end;



      if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tri_valor').AsCurrency > 0 then
         begin
           PercTributo := roundTo( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tri_valor').AsCurrency*100)/dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido').AsCurrency,-2);
           InfAdic.infCpl     :=  'Valor aproximado dos tributos R$ ' +
                                   FormatCurr('###,###,###,###,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tri_valor').AsCurrency) +
                                   ' ('+FormatCurr('###,###,###,###,##0.00',PercTributo) + '%) ' +
                                   ' Fonte: IBPT ';
         end;


      MensagemCpl :=  InfAdic.infCpl;



      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('VLR_ICM_DESC').AsCurrency > 0) then
        begin
           MensagemCpl :=
                 'Valor ICMS Desonerado R$ ' +FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_icm_desc').AsCurrency)+#13+MensagemCpl;
        end;


      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'R') and
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'D') then
         begin
            if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_dest').AsCurrency + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency) > 0 then
               begin
                 if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp').AsCurrency > 0 then
                    begin
                      MensagemCpl :=
                                   'Partilha de ICMS de ' + dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsString + '% para a UF de destino no valor de R$ ' +
                                    FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_dest').AsCurrency)+
                                    ' + FCP no valor de R$ ' +
                                    FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp').AsCurrency)+
                                    '  e  ' + dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_ORIG').AsString + '% para a UF de origem no valor R$ ' +
                                    FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency)+' , conforme Emenda Const. 87/2015 Art.99 .'
                                    + #13 + MensagemCpl;
                    end
                 else
                    begin
                      MensagemCpl :=
                        'Partilha de ICMS de '+ dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsString +'% para a UF de destino no valor de R$ ' +
                        FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_dest').AsCurrency)+
                        '  e  '+dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_ORIG').AsString+'% para a UF de origem no valor R$ ' +
                        FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency)+' , conforme Emenda Const. 87/2015 Art.99 .'
                        + #13 + MensagemCpl;
                    end;
               end;
         end;

       if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('calc_icm_dispensado').AsBoolean  then
          begin
            MensagemCpl := MensagemCpl + ' (-) Icms Dispensado '+FormatCurr('###,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByname('dis_icm_dispensado').asCurrency)+#13;
          end;

       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('qtde_volume').AsString<>'')  then
          begin
            MensagemCpl := MensagemCpl + ' Volume total: '+FormatCurr('###,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByname('qtde_volume').asCurrency);
          end;



       if trim(MensagemCpl) <> '' then
          InfAdic.infCpl := MensagemCpl;

       InfAdic.infAdFisco := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_obs').AsString;

      // Comentado por Maxsuel , em 23-03-2016
      // devido mudanças feitas por Mariel.
       {with InfAdic.obsCont.Add do
         begin
           xCampo := 'ObsCont';
           xTexto := '. ';

           //Nota Tecnica 2015.003 v04
           if vTotPartilhaDest>0 then
              begin
                xCampo := 'Partilha :';
                xTexto := 'vlr do icms Inter para a UF de destino: '+FormatCurr('#####,##0.00',vTotPartilhaDest);
              end;
         end; }



     {
            with InfAdic.obsFisco.Add do
             begin
               xCampo := 'ObsFisco';
               xTexto := 'Texto';
             end;
      }

      //Processo referenciado
      {     with InfAdic.procRef.Add do
             begin
               nProc := '';
               indProc := ipSEFAZ;
             end;                 }


      exporta.UFembarq   := '';;
      exporta.xLocEmbarq := '';

      compra.xNEmp := '';
      compra.xPed  := '';
      compra.xCont := '';


      // Inserido em 03/06/2019 devido nota técnica 2018_005 por Maxsuel Victor.
         // Mas esse código deve ser melhorado.
//      if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_estado').AsString = 'PI' then
//         begin
            //Showmessage('Informando os dados do responsável técnico.');
            infRespTec.CNPJ     := '24063730000108';
            infRespTec.xContato := 'MAXSUEL VICTOR MENEZES DAMASCENO'; // Nome do responsável técnico
            infRespTec.email    := 'maxsuelvictor@hotmail.com';
            infRespTec.fone     := '87988537008';
//         end;


     { IF not dm.Cds_NotasCapa.FieldByname('EXP_LOCAL_EMBARQUE').IsNull then
       begin
         exporta.UFembarq     := dm.Cds_NotasCapa.FieldByname('EXP_UF_EMBARQUE').asString;
         exporta.xLocEmbarq   := dm.Cds_NotasCapa.FieldByname('EXP_LOCAL_EMBARQUE').asString;
         exporta.UFSaidaPais  := dm.Cds_NotasCapa.FieldByname('EXP_UF_EMBARQUE').asString;
         exporta.xLocDespacho := dm.Cds_NotasCapa.FieldByname('EXP_LOCAL_EMBARQUE').asString;
         exporta.xLocExporta  := dm.Cds_NotasCapa.FieldByname('EXP_LOCAL_EMBARQUE').asString;
       end; }
   end;

end;

procedure TFAT_FM_M_CXA_NFE.GerarPrVenda1Click(Sender: TObject);
var
  IdFiscal: String;
begin
   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;

  IdFiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
  AtuGridNota;

  if IdFiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
     begin
       ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
       abort;
     end;

  FAT_RN_M_CXA.FatGerarPreVendaCxa;
end;

procedure TFAT_FM_M_CXA_NFE.LoadConsulta201(XML: String);
var
  DOM: IXMLDocument;
  lXML: String;

  procedure AddNodes(XMLNode: IXMLNode; TreeNode: TTreeNode);
  var
    Index: Integer;
    NewNode: TTreeNode;
    Value: string;
  begin
    if XMLNode.nodeType in [ntTEXT, ntCDATA, ntCOMMENT] then
      Value := XMLNode.text
    else
      Value := XMLNode.nodeName;
    NewNode := TreeViewRetornoConsulta.Items.AddChild(TreeNode, {XMLNode.NodeName +} ' ' + Value);
    for Index := 0 to XMLNode.childNodes.Count - 1 do
      AddNodes(XMLNode.childNodes[Index], NewNode);
  end;

  function ReplaceStr( Fonte, De, Para:string ):string;
  begin
    result:=fonte;
    while pos(de,result) <> 0 do
      result:=copy(result, 1, pos(de,result)-1 )+Para+copy(result,pos(de,result)+length(de),length(result) );
  end;

  function LimpaXML(XML: String; TagRemover:String): String;
  begin
    Result := XML;
    while pos('<'+TagRemover,Result) <> 0 do
    begin
      Result := ReplaceStr(Result,
                           '<'+TagRemover+
                              RetornarConteudoEntre(Result,'<'+TagRemover,'</'+TagRemover+'>')+
                           '</'+TagRemover+'>','');
    end;
  end;
begin
  DOM := TXMLDocument.Create(nil);
  try
    lXML := LimpaXML(XML,'Signature');
    DOM.LoadFromXML(lXML);
    DOM.Active := True;
    TreeViewRetornoConsulta.Items.BeginUpdate;
    TreeViewRetornoConsulta.Items.Clear;
    AddNodes(dom.DocumentElement, nil);
    TreeViewRetornoConsulta.TopItem := TreeViewRetornoConsulta.Items[0];
  finally
    TreeViewRetornoConsulta.Items.EndUpdate;
  end;
end;

procedure TFAT_FM_M_CXA_NFE.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  // v antigo
  //MyMemo.Lines.SaveToFile(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
  //MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');


  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');


end;

procedure TFAT_FM_M_CXA_NFE.miFaturaSemPedidoClick(Sender: TObject);
begin
  if miFaturaSemPedido.Checked then
     begin
       miFaturaSemPedido.Checked := false;
     end
  else
     if miFaturaSemPedido.Checked = false then
        begin
          miFaturaSemPedido.Checked := true;
        end;
end;

procedure TFAT_FM_M_CXA_NFE.NFEGerarLog(const ALogLine: string;
  var Tratado: Boolean);
begin
   memoLog.Lines.Add(ALogLine);
end;

procedure TFAT_FM_M_CXA_NFE.NFEStatusChange(Sender: TObject);
begin
  case NFe.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCCe :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEvento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Evento...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;
  // v antigo
  {case NFe.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEnvDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeConsultaDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCCe :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEvento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Evento...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;


  Application.ProcessMessages;  }

end;

procedure TFAT_FM_M_CXA_NFE.Reimprimir1Click(Sender: TObject);
var
  vlrTotalTit : Currency;
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if (dmGeral.BUS_CD_M_NFE_CXA.IsEmpty) then
    begin
      ShowMessage('Nenhuma nota fiscal foi selecionada.');
      abort;
    end;

  if dmGeral.BUS_CD_M_NFE_CXAstatus.AsInteger <> 1 then
    begin
      ShowMessage('Nota fiscal não foi finalizada.');
      abort;
    end;

  if dmGeral.BUS_CD_M_NFE_CXAtipo_nf.AsString <> 'S' then
    begin
      ShowMessage('Nota fiscal deve ser de venda.');
      abort;
    end;

  if (dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount>0) then
   begin
     vlrTotalTit :=0;
     dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
     while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
       begin
         if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_DOCIMPRESSO').AsInteger in [3,5,6] then
           begin
             vlrTotalTit :=vlrTotalTit + dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('VLR_TITULO').AsCurrency;
           end;
         dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
       end;

     if vlrTotalTit > 0 then
       begin
          try
           dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
           dmGeral.BUS_CD_M_NFE_CXA.Filter := 'id_fiscal ='+
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;

           dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := true;
           dmGeral.BUS_CD_M_NFE_TIT_CXA.Filter := 'int_docimpresso = 3 or int_docimpresso = 5 or int_docimpresso = 6';

           dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
           FAT_FR_M_CXA_RVS.Variables['vlr_total_tit'] := QuotedStr(FormatCurr('###,###,##0.00' ,vlrTotalTit));
           FAT_FR_M_CXA_RVS.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(vlrTotalTit));

           if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RVS.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                 LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RVS.FindObject('imgEmpresa2'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
           dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_M_CXA_RVS.Name,xCodLme,xRevLme,nil);
           FAT_FR_M_CXA_RVS.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
           FAT_FR_M_CXA_RVS.Variables['Opcoes'] := QuotedStr('');
           FAT_FR_M_CXA_RVS.PrepareReport();
           FAT_FR_M_CXA_RVS.ShowReport();
          finally
              dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
              dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := false;
          end;
       end
     else
      begin
        ShowMessage('Não é permitida a impressão de recibo desta forma de pagamento.');
      end;
   end
  else
    begin
      ShowMessage('Nenhum Titulo selecionado.');
    end;
end;

procedure TFAT_FM_M_CXA_NFE.tsInfFiscalExit(Sender: TObject);
begin
  txtNfeObs.Enabled := false;
  btnAlterarInfFis.Enabled := true;
  btnSalvarInfFis.Enabled  := false;

  if not dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     dmGeral.BUS_CD_M_NFE_CXA.cancel;
end;

procedure TFAT_FM_M_CXA_NFE.tsPedidosProdShow(Sender: TObject);
begin
  tsPedidosProd.Enabled := true;
  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger <> 0 then
     begin
       Showmessage('Só permitido informar pedido de venda da produção para nota fiscal que vai ser faturada ainda.');
       pgNfeDados.ActivePage := tsTitulos;
       tsPedidosProd.Enabled := false;
       exit;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.txtPedidoProd1Exit(Sender: TObject);
begin

 { if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').Text = '' then
     begin
       ShowMessage('O campo "Pedido 1" deve ser preenchido.');
       txtPedidoProd1.SetFocus;
       abort;
     end;}


   if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text) = '' then
      begin
        ShowMessage('Não foi informado nos parâmetros o "Código da empresa da base da produção".');
        txtPedidoProd1.SetFocus;
        abort;
      end;

   if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').Text) <> '' then
      begin

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').Text) = '0' then
           begin
             if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
                begin
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_1').AsCurrency := 0;
                  dmGeral.BUS_CD_M_NFE_CXA.Post;
                  dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                end;
             exit;
           end;

        BUS_CD_M_PED_PCP.Close;
          BUS_CD_M_PED_PCP.Data :=
              BUS_CD_M_PED_PCP.DataRequest(
                  VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').Text]));

         if BUS_CD_M_PED_PCP.IsEmpty then
            begin
              Showmessage('Pedido não encontrado na produção.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_1').AsCurrency := 0;
              txtPedidoProd1.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 1 then
            begin
              Showmessage('Este pedido foi reprovado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_1').AsCurrency := 0;
              txtPedidoProd1.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 4 then
            begin
              Showmessage('Este pedido foi cancelado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_1').AsCurrency := 0;
              txtPedidoProd1.SetFocus;
              exit;
            end;


          dmGeral.BUS_CD_C_CLI.Close;
          dmGeral.BUS_CD_C_CLI.Data :=
               dmGeral.BUS_CD_C_CLI.DataRequest(
              VarArrayOf([0, dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_emitente').Text]));

          if (BUS_CD_M_PED_PCP.FieldByName('INT_CPFCNPJ').Text <>
              dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').Text) then
             begin
               ShowMessage('O cnpj/cpf do cliente do pedido de venda está diferente do cnpj/cpf desta nosta fiscal.');
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').AsInteger := 0;
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_1').AsCurrency := 0;
               txtPedidoProd1.SetFocus;
               BUS_CD_M_PED_PCP.close;
               abort;
             end;

          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_1').AsCurrency :=
               BUS_CD_M_PED_PCP.FieldByName('vlr_liquido').AsCurrency;

          if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
             begin
               dmGeral.BUS_CD_M_NFE_CXA.Post;
               dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
             end;

         BUS_CD_M_PED_PCP.close;
      end;

end;

procedure TFAT_FM_M_CXA_NFE.txtPedidoProd2Exit(Sender: TObject);
begin
  if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text) = '' then
      begin
        ShowMessage('Não foi informado nos parâmetros o "Código da empresa da base da produção".');
        txtPedidoProd2.SetFocus;
        abort;
      end;

   if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').Text) <> '' then
      begin

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').Text) = '0' then
           begin

             if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
                begin
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_2').AsCurrency := 0;
                  dmGeral.BUS_CD_M_NFE_CXA.Post;
                  dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                end;
             exit;
           end;

          BUS_CD_M_PED_PCP.Close;
          BUS_CD_M_PED_PCP.Data :=
              BUS_CD_M_PED_PCP.DataRequest(
                  VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').Text]));


         if BUS_CD_M_PED_PCP.IsEmpty then
            begin
              Showmessage('Pedido não encontrado na produção.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_2').AsCurrency := 0;
              txtPedidoProd2.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 1 then
            begin
              Showmessage('Este pedido foi reprovado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_2').AsCurrency := 0;
              txtPedidoProd2.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 4 then
            begin
              Showmessage('Este pedido foi cancelado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_2').AsCurrency := 0;
              txtPedidoProd2.SetFocus;
              exit;
            end;

          dmGeral.BUS_CD_C_CLI.Close;
          dmGeral.BUS_CD_C_CLI.Data :=
               dmGeral.BUS_CD_C_CLI.DataRequest(
                       VarArrayOf([0, dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_emitente').Text]));

          if (BUS_CD_M_PED_PCP.FieldByName('INT_CPFCNPJ').Text <>
              dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').Text) then
             begin
               ShowMessage('O cnpj/cpf do cliente do pedido de venda está diferente do cnpj/cpf desta nosta fiscal.');
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').AsInteger := 0;
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_2').AsCurrency := 0;
               BUS_CD_M_PED_PCP.close;
               abort;
             end;

           dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_2').AsCurrency :=
               BUS_CD_M_PED_PCP.FieldByName('vlr_liquido').AsCurrency;

         if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
            begin
              dmGeral.BUS_CD_M_NFE_CXA.Post;
              dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
            end;

         BUS_CD_M_PED_PCP.close;
      end;
end;

procedure TFAT_FM_M_CXA_NFE.txtPedidoProd3Exit(Sender: TObject);
begin
  if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text) = '' then
      begin
        ShowMessage('Não foi informado nos parâmetros o "Código da empresa da base da produção".');
        txtPedidoProd3.SetFocus;
        abort;
      end;

   if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').Text) <> '' then
      begin

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').Text) = '0' then
           begin
             if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
                begin
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_3').AsCurrency := 0;
                  dmGeral.BUS_CD_M_NFE_CXA.Post;
                  dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                end;
             exit;
           end;

          BUS_CD_M_PED_PCP.Close;
          BUS_CD_M_PED_PCP.Data :=
              BUS_CD_M_PED_PCP.DataRequest(
                  VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').Text]));

        if BUS_CD_M_PED_PCP.IsEmpty then
            begin
              Showmessage('Pedido não encontrado na produção.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_3').AsCurrency := 0;
              txtPedidoProd3.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 1 then
            begin
              Showmessage('Este pedido foi reprovado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_3').AsCurrency := 0;
              txtPedidoProd3.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 4 then
            begin
              Showmessage('Este pedido foi cancelado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_3').AsCurrency := 0;
              txtPedidoProd3.SetFocus;
              exit;
            end;

          dmGeral.BUS_CD_C_CLI.Close;
          dmGeral.BUS_CD_C_CLI.Data :=
               dmGeral.BUS_CD_C_CLI.DataRequest(
                       VarArrayOf([0, dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_emitente').Text]));

          if (BUS_CD_M_PED_PCP.FieldByName('INT_CPFCNPJ').Text <>
              dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').Text) then
              begin
                ShowMessage('O cnpj/cpf do cliente do pedido de venda está diferente do cnpj/cpf desta nosta fiscal.');
                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').AsInteger := 0;
                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_3').AsCurrency := 0;
                BUS_CD_M_PED_PCP.close;
                abort;
              end;

          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_3').AsCurrency :=
               BUS_CD_M_PED_PCP.FieldByName('vlr_liquido').AsCurrency;

          if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
             begin
                dmGeral.BUS_CD_M_NFE_CXA.Post;
                dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
             end;

          BUS_CD_M_PED_PCP.close;
      end;
end;

procedure TFAT_FM_M_CXA_NFE.txtPedidoProd4Exit(Sender: TObject);
begin
  if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text) = '' then
      begin
        ShowMessage('Não foi informado nos parâmetros o "Código da empresa da base da produção".');
        txtPedidoProd4.SetFocus;
        abort;
      end;

   if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').Text) <> '' then
      begin

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').Text) = '0' then
           begin

             if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
                begin
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_4').AsCurrency := 0;
                  dmGeral.BUS_CD_M_NFE_CXA.Post;
                  dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                end;
             exit;
           end;

          BUS_CD_M_PED_PCP.Close;
          BUS_CD_M_PED_PCP.Data :=
              BUS_CD_M_PED_PCP.DataRequest(
                  VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').Text]));

         if BUS_CD_M_PED_PCP.IsEmpty then
            begin
              Showmessage('Pedido não encontrado na produção.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_4').AsCurrency := 0;
              txtPedidoProd4.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 1 then
            begin
              Showmessage('Este pedido foi reprovado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_4').AsCurrency := 0;
              txtPedidoProd4.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 4 then
            begin
              Showmessage('Este pedido foi cancelado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_4').AsCurrency := 0;
              txtPedidoProd4.SetFocus;
              exit;
            end;

          dmGeral.BUS_CD_C_CLI.Close;
          dmGeral.BUS_CD_C_CLI.Data :=
               dmGeral.BUS_CD_C_CLI.DataRequest(
              VarArrayOf([0, dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_emitente').Text]));

          if (BUS_CD_M_PED_PCP.FieldByName('INT_CPFCNPJ').Text <>
              dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').Text) then
             begin
               ShowMessage('O cnpj/cpf do cliente do pedido de venda está diferente do cnpj/cpf desta nosta fiscal.');
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').AsInteger := 0;
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_4').AsCurrency := 0;
               BUS_CD_M_PED_PCP.close;
               abort;
             end;

          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_4').AsCurrency :=
               BUS_CD_M_PED_PCP.FieldByName('vlr_liquido').AsCurrency;

          if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
             begin
               dmGeral.BUS_CD_M_NFE_CXA.Post;
               dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
             end;

          BUS_CD_M_PED_PCP.close;
      end;
end;

procedure TFAT_FM_M_CXA_NFE.txtPedidoProd5Exit(Sender: TObject);
begin

  if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text) = '' then
      begin
        ShowMessage('Não foi informado nos parâmetros o "Código da empresa da base da produção".');
        txtPedidoProd5.SetFocus;
        abort;
      end;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').Text) <> '' then
     begin

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').Text) = '0' then
           begin

             if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
                begin
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_5').AsCurrency := 0;
                  dmGeral.BUS_CD_M_NFE_CXA.Post;
                  dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                end;
             exit;
           end;

        BUS_CD_M_PED_PCP.Close;
          BUS_CD_M_PED_PCP.Data :=
              BUS_CD_M_PED_PCP.DataRequest(
                  VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').Text,
                                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').Text]));

        if BUS_CD_M_PED_PCP.IsEmpty then
            begin
              Showmessage('Pedido não encontrado na produção.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_5').AsCurrency := 0;
              txtPedidoProd5.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 1 then
            begin
              Showmessage('Este pedido foi reprovado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_5').AsCurrency := 0;
              txtPedidoProd5.SetFocus;
              exit;
            end;

         if BUS_CD_M_PED_PCP.FieldByName('situacao').AsInteger = 4 then
            begin
              Showmessage('Este pedido foi cancelado.');
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').AsInteger := 0;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_5').AsCurrency := 0;
              txtPedidoProd5.SetFocus;
              exit;
            end;

          dmGeral.BUS_CD_C_CLI.Close;
          dmGeral.BUS_CD_C_CLI.Data :=
               dmGeral.BUS_CD_C_CLI.DataRequest(
                       VarArrayOf([0, dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_emitente').Text]));

          if (BUS_CD_M_PED_PCP.FieldByName('INT_CPFCNPJ').Text <>
              dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').Text) then
             begin
               ShowMessage('O cnpj/cpf do cliente do pedido de venda está diferente do cnpj/cpf desta nosta fiscal.');
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').AsInteger := 0;
               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_5').AsCurrency := 0;
               BUS_CD_M_PED_PCP.close;
               abort;
             end;

           dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_5').AsCurrency :=
               BUS_CD_M_PED_PCP.FieldByName('vlr_liquido').AsCurrency;

           if dmGeral.BUS_CD_M_NFE_CXA.State in [dsInsert,dsEdit] then
              begin
                dmGeral.BUS_CD_M_NFE_CXA.Post;
                dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
              end;

           BUS_CD_M_PED_PCP.close;
     end;
end;

procedure TFAT_FM_M_CXA_NFE.FaturarNFSeAvulsa(tipo: integer);
var
  Ok:boolean;
  discriminacao,num_lot_rps:string;
  vlrServicos,vlrPIS,vlrCofins,vlrIss,aliquota:currency;
  SMPrincipal: TSMClient;
  id_fiscal, retorno: String;
  Numero: String;

  i,diff_dias:integer; // Provisório
  QtdeReg,codFiscal: String;
begin

   // tipo
      //  1 - Nota fiscal avulsa com Número informado pelo usuário
      //  2 - Nota fiscal avulsa com número informado pelo sistema

    if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;
    id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;

    if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;

   

    if MessageDlg('Deseja realmente faturar a nota de serviço?',mtConfirmation,[mbYes,mbNo],0) = mrYes  then
      begin

         if (dmGeral.BUS_CD_M_NFE_CXA.IsEmpty) then
             begin
               ShowMessage('Nenhuma nota fiscal foi selecionada!');
               exit;
             end;


         if id_fiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
           begin
             ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
             abort;
           end;


         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_nf').AsInteger <> 2) then // 2 - Somente nota de Serviço
            begin
              ShowMessage('Nota fiscal deve ser somente de serviço.');
              exit;
            end;

         // Situação de NFe CANCELADA. Cor Vermelho
         if(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') then
            begin
              ShowMessage('Nota fiscal está cancelada.');
              exit;
            end;


         // Situação de NFe FATURADA normnal. Cor Verde
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
            ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString <> '')  or
              (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) = 'X') or
              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 1) or
              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 3) ) then
            begin
              ShowMessage('A nota fiscal já foi faturada.');
              exit;
            end;

         // Situação de NFe Inutilizada. Cor Marrom  -
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '05') then
            begin
              ShowMessage('Nota fiscal está inutilizada.');
              exit;
            end;


         // Situação de NFe DENEGADA. Cor Roxa
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04') then
            begin
              ShowMessage('Nota fiscal está denegada.');
              exit;
            end;

         // Situação Nota fiscal com Pré-venda pendente. Cor Rosa
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
            begin
              ShowMessage('Nota fiscal está com Pré-venda pendente.');
              exit;
            end;

        if dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime <
           dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime then
           begin
             ShowMessage('Operação não permitida! A data do seu caixa é menor que a data de emissão da nota fiscal selecionada.' + #13 +
                          'Verifique a data do seu caixa.');
             exit;
           end;

          if tipo = 1 then
             begin
               if not(InputQuery('Faturar NFS-e', 'Número da nota de serviço', Numero)) then
                  exit;

               dmGeral.BUS_CD_M_NFE.Close;
               dmGeral.BUS_CD_M_NFE.Data :=
                        dmGeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([109,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_empresa').AsInteger,Numero]));
               if not dmGeral.BUS_CD_M_NFE.IsEmpty then
                  begin
                    ShowMessage('Já existe nota fiscal de serviço com este número!');
                    abort;
                  end;
               dmGeral.BUS_CD_M_NFE.Close;
             end
          else
             begin
               Numero := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsString;

               dmGeral.BUS_CD_M_NFE.Close;
               dmGeral.BUS_CD_M_NFE.Data :=
                        dmGeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([110,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_empresa').AsInteger,Numero]));
               if not dmGeral.BUS_CD_M_NFE.IsEmpty then
                  begin
                    ShowMessage('Já existe nota fiscal de serviço com este número!');
                    abort;
                  end;
               dmGeral.BUS_CD_M_NFE.Close;
             end;

          AtuGridNota;

          if id_fiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
             begin
               ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
               abort;
             end;

          if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) or
             (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0) then
              begin
                // A linha do IF foi Colocado por Maxsuel Victor em 14/07/2016
                if ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'5929') and
                    (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'6929')) then
                   begin
                     // Maxsuel Victor 22/09/2015
                        // Se alterar algum código aqui , verificar se é necessário fazer pra Pré-Venda, pois o código
                        // abaixo existe no momento da geração da pré-venda também.
                     FAT_RN_M_NFE.FatRecalTributItens(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                     FAT_RN_M_NFE.FatFormarNfeObs(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                     fatNfeCalcTotal(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);

                     if tipo = 1 then
                        begin
                           diff_dias := DaysBetween(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime,dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime);
                           if not dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
                              begin
                                i:= 0;
                                QtdeReg := IntToStr(dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount);
                                dmGeral.BUS_CD_M_NFE_TIT_CXA.IndexFieldNames := 'DIAS';
                                dmGeral.BUS_CD_M_NFE_TIT_CXA.First;


                                while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                                   begin
                                     inc(i);
                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.edit;
                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('NUM_PARCELA').AsString :=
                                             Numero + '-' +
                                             inttostr(i) + '/' + QtdeReg;
                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                                        dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime + diff_dias;
                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.Post;
                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                                   end;
                              end;
                        end;
                     dmGeral.BUS_CD_M_NFE_CXA.Post;
                     dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                   end;
              end;





         dmGeral.BUS_CD_M_NFE_CXA.Edit;
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString       :=  Numero;

         if tipo = 2 then
            begin
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString   := 'X';
            end;

         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime :=
           dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
           dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;

         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ABERTURA').AsString  :=
                 dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString;
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_TIPO_EMISSAO').AsString  :=
                 dmGeral.BUS_CD_C_PAR_NFE.FieldByName('danf_tipo_emissao').AsString;
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_TIPO_AMBIENTE').AsString :=
                 dmGeral.BUS_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsString;
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('MODELO').AsString    := '55';
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger  := 3;
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean := true;
         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger   := 1;


         if tipo = 2 then
            begin
               diff_dias := DaysBetween(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime,dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime);
               if not dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
                  begin
                    i:= 0;
                    QtdeReg := IntToStr(dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount);
                    dmGeral.BUS_CD_M_NFE_TIT_CXA.IndexFieldNames := 'DIAS';
                    dmGeral.BUS_CD_M_NFE_TIT_CXA.First;


                    while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                       begin
                         inc(i);
                         dmGeral.BUS_CD_M_NFE_TIT_CXA.edit;
                         dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('NUM_PARCELA').AsString :=
                                 Numero + '-' +
                                 inttostr(i) + '/' + QtdeReg;
                         dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                            dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime + diff_dias;
                         dmGeral.BUS_CD_M_NFE_TIT_CXA.Post;
                         dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                       end;
                  end;
            end;


         dmGeral.BUS_CD_M_NFE_CXA.Post;

         if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
            begin
              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0 then
                  begin
                     dmGeral.BUS_CD_M_ORV.Close;
                     dmGeral.BUS_CD_M_ORV.Data :=
                         dmGeral.BUS_CD_M_ORV.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger,
                                                                        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsInteger,'1','']));
                     if not dmGeral.BUS_CD_M_ORV.IsEmpty then
                       begin
                         dmGeral.BUS_CD_M_ORV.Edit;
                         dmGeral.BUS_CD_M_ORV.FieldByName('STATUS').AsInteger := 3;
                         dmGeral.BUS_CD_M_ORV.Post;
                         if dmGeral.BUS_CD_M_ORV.ApplyUpdates(0) = 0 then
                            begin
                              Showmessage('Nota fiscal de Serviço faturada com sucesso!');
                            end;
                         dmGeral.BUS_CD_M_ORV.Close;
                       end;
                  end
              else if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
                 begin
                    dmGeral.BUS_CD_M_PED.Close;
                    dmGeral.BUS_CD_M_PED.Data :=
                         dmGeral.BUS_CD_M_PED.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsInteger,
                                                                        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
                     if not dmGeral.BUS_CD_M_PED.IsEmpty then
                       begin
                         dmGeral.BUS_CD_M_PED.Edit;
                         dmGeral.BUS_CD_M_PED.FieldByName('SITUACAO').AsInteger := 3;
                         dmGeral.BUS_CD_M_PED.Post;
                         if dmGeral.BUS_CD_M_PED.ApplyUpdates(0) = 0 then
                            begin
                              Showmessage('Nota fiscal de Serviço faturada com sucesso!');
                            end;
                         dmGeral.BUS_CD_M_PED.Close;
                       end;
                 end
              else
                 begin
                   Showmessage('Nota fiscal de Serviço faturada com sucesso!');
                 end;
            end;
         FAT_RN_M_CXA.FatAtuDadosTelaCxa;
      end;
end;

procedure TFAT_FM_M_CXA_NFE.FaturarnotafiscalapsXML1Click(Sender: TObject);
var
  chave,Protocolo,PathImg: String;
  LogoEmpresa: TfrxPictureView;
   id_fiscal:string;
   vlrTotalTit:currency;
begin
  if not(InputQuery('Faturar pós XML NFe', 'Chave de acesso', chave)) then
     exit;

  if (trim(chave) = '') then
     begin
       Showmessage('O nº da chave deve ser informado.');
       exit;
     end
  else
     begin
        if  (not dmGeral.ValComposicaoChaveNFe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger,trim(chave))) or (not dmGeral.ValChaveNFe(trim(chave))) then
           begin
             Showmessage('O nº da chave é inválido.');
             exit;
           end;
     end;

  if not(InputQuery('Faturar pós XML NFe', 'Protocolo', Protocolo)) then
     exit;


  if (trim(Protocolo) = '') then
     begin
       Showmessage('O nº do protocolo deve ser informado.');
       exit;
     end;

  if MessageDlg('O xml desta nota fiscal foi realmente gerado e assinado pela Sefaz?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if MessageDlg('Deseja realmente terminar de faturar o pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             try
              dmGeral.BUS_CD_M_NFE_CXA.Edit;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime :=
                      dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
                      dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString    := 'sem recibo - Pós XML';
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString     := chave;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString := Protocolo;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean     := true;  // Quer dizer que a nota foi emitida pela própria empresa e não de terceiros.

              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 1;
              dmGeral.BUS_CD_M_NFE_CXA.Post;
              try
                 if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                    begin
                      ShowMessage('Geração da NFe foi realizada com sucesso!');
                      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_IMPRIME_ETQ').AsBoolean = True) then
                          begin
                            if MessageDlg('Deseja imprimir a etiqueta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                               begin
                                 CAD_FM_R_E01 := TCAD_FM_R_E01.Create(Self);
                                 CAD_FM_R_E01.Show;
                               end;
                          end;

                      dmgeral.BUS_CD_M_TER_NFE.Close;
                      dmGeral.BUS_CD_M_TER_NFE.Data :=
                      dmGeral.BUS_CD_M_TER_NFE.DataRequest(VarArrayOf([dmgeral.BUS_CD_M_NFE_CXAid_fiscal.AsInteger]));
                      if not  dmgeral.BUS_CD_M_TER_NFE.IsEmpty then
                         begin
                           if MessageDlg('Deseja imprimir o termo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                              begin
                                FAT_CD_M_TER_NFE.PrepareReport();
                                FAT_CD_M_TER_NFE.ShowReport();
                              end;
                         end;
                      dmGeral.BUS_CD_M_TER_NFE.close;

                     id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;


                     if (dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount>0) then
                       begin

                         vlrTotalTit :=0;
                         dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                         while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                           begin
                             if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_DOCIMPRESSO').AsInteger in [3,5,6] then
                               begin
                                 vlrTotalTit :=vlrTotalTit + dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('VLR_TITULO').AsCurrency;
                               end;
                             dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                           end;

                         if vlrTotalTit > 0 then
                           begin
                              if MessageDlg('Deseja imprimir o recibo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                    try

                                     dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
                                     dmGeral.BUS_CD_M_NFE_CXA.Filter := 'id_fiscal ='+id_fiscal;

                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := true;
                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.Filter := 'int_docimpresso = 3 or int_docimpresso = 5 or int_docimpresso = 6';

                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                                     PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                                     FAT_FR_M_CXA_RVS.Variables['vlr_total_tit'] := QuotedStr(FormatCurr('###,###,##0.00' ,vlrTotalTit));
                                     FAT_FR_M_CXA_RVS.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(vlrTotalTit));

                                     if FileExists(PathImg) then
                                        begin
                                           LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RVS.FindObject('imgEmpresa1'));
                                           if Assigned(LogoEmpresa) then
                                              LogoEmpresa.Picture.LoadFromFile(PathImg);

                                           LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RVS.FindObject('imgEmpresa2'));
                                           if Assigned(LogoEmpresa) then
                                              LogoEmpresa.Picture.LoadFromFile(PathImg);
                                        end;
                                     dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_M_CXA_RVS.Name,xCodLme,xRevLme,nil);
                                     FAT_FR_M_CXA_RVS.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                                     FAT_FR_M_CXA_RVS.Variables['Opcoes'] := QuotedStr('');
                                     FAT_FR_M_CXA_RVS.PrepareReport();
                                     FAT_FR_M_CXA_RVS.ShowReport();
                                    finally
                                        dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
                                        dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := false;
                                    end;
                                end;
                           end;
                       end;


                    end;
              except
                 on e:exception do
                    begin
                      Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                    end;
              end;

              finally
                NFE.NotasFiscais.Clear;
              end;

              AtuGridNota;
           end;
     end;
end;



procedure TFAT_FM_M_CXA_NFE.FaturarsemRPS1Click(Sender: TObject);
begin
   FaturarNFSeAvulsa(2);
end;

procedure TFAT_FM_M_CXA_NFE.FormActivate(Sender: TObject);
begin
  cxanfe_GeraNFCe := false;
end;

procedure TFAT_FM_M_CXA_NFE.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_CXA_NFE.FormShow(Sender: TObject);
var
  DiasRest: extended;
begin

  cxanfe_GeraNFCe := false;

  pgNfeDados.TabIndex := 1;

  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('emite_duplicata_aceite').IsNull) or
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('emite_duplicata_aceite').AsBoolean = false)) then
    begin
     pmApoio.Items[3].Visible := false;
    end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByname('OQP').AsBoolean=false) and
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByname('OTA').AsBoolean=false) and
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByname('OME').AsBoolean=false) and
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByname('TOR').AsBoolean=false) then
    begin
       dbGrid.ColumnByName('id_ordem').Visible := false;
    end;

  EmpAtual:='Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

  //Danfe.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFE.fr3';
  //Danfe.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeRetrato.fr3';

  // Comentado em 08/07/2021
     // Danfe.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeRetrato_2019.fr3';



  // Depois da atualização do acbr em 08/07/2021, precicei informar o tamanho
     // das margens do DANFE E DAMDFE.
  // Original do componente.
     //  NFE.DANFE.MargemDireita  := 0.51;
     //  NFE.DANFE.MargemEsquerda := 0.6;
     //  NFE.DANFE.MargemSuperior := 0.8;
     //  NFE.DANFE.MargemInferior := 0.8;

  NFE.DANFE.MargemDireita  := 7;
  NFE.DANFE.MargemEsquerda := 7;
  NFE.DANFE.MargemSuperior := 5;
  NFE.DANFE.MargemInferior := 5;

  Danfe.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeRetrato.fr3';
  Danfe.FastFileEvento := ExtractFileDir(application.ExeName) + '\Report\EVENTOS.fr3';

  LerConfiguracao;
  {if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean then
     LerConfiguracaoRPS;}
  VerCertificado;

  btnAlterarInfFis.Enabled := true;
  btnSalvarInfFis.Enabled  := false;

  // Comentado em 18/07/2022 para poder usar o NFC-e
   // Maxsuel Victor
  // if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
  //    btnNfc.Visible  := false;

 if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = false) and
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = false) and
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = false)
      then
     begin
       //btnGeraEnviaRPS.Visible := true;
       pnNfeNFSe.top    := 410;
       pnNfeNFSe.Height := 141;
     end;

  dmGeral.AtualizarGridItens(dgItens,'int_desc_item',8,10);

  tsPedidosProd.TabVisible  := false;
  miFaturaSemPedido.visible := false;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_fin_base_prod').AsBoolean then
     begin
       tsPedidosProd.TabVisible := true;
       miFaturaSemPedido.visible := true;
       ConectarBancoProd;
     end;

  xCodTransport_CxaNfe := '';
  xPlaca_Transp_CxaNfe := '';
  xUF_Transp_CxaNfe    := '';

  if txtValidadeCert.Text <> '' then
     begin
       DiasRest := (strtodate(txtValidadeCert.Text) - xDataSis);
       if DiasRest <= 45 then
          begin
            Showmessage('O certificado digital irá vencer em '  + txtValidadeCert.Text + '.' + #13 +
                        'Faltam ' + Currtostr( DiasRest ) + ' dias. ');

          end;
     end;

end;


procedure TFAT_FM_M_CXA_NFE.LerConfiguracao;
Var Ok : Boolean;
    StreamMemo : TMemoryStream;
    xCaminho, xSenha:string;
    xVersaoNfe: Integer;
    PathXml,xAguardar,xTentativas,xIntervalo,dir:String;

begin
  // Nota técnica: NT_2016_002_v1.42
  if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_versao').AsInteger = 3 then  //  3 - Versão 4.00;    2- Versão 3.10
     begin
       NFe.Configuracoes.Certificados.ArquivoPFX  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_caminho_pfx').AsString;
       NFe.Configuracoes.Certificados.Senha       := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_senha_pfx').AsString;
     end
  else
     begin
       {$IFDEF ACBrNFeOpenSSL}
         xCaminho  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie').AsString;
         xSenha    := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_senha').AsString;
         NFe.Configuracoes.Certificados.Certificado  := xCaminho;
         NFe.Configuracoes.Certificados.Senha        := xSenha;
         edtNumSerie.Visible := False;
         Label25.Visible     := False;
         sbtnGetCert.Visible := False;
       {$ELSE}
         xCaminho  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie').AsString;
         NFe.Configuracoes.Certificados.NumeroSerie := xCaminho;
         txtSerieCert.Text := NFe.Configuracoes.Certificados.NumeroSerie;
       {$ENDIF}
     end;

  with NFe.Configuracoes.Geral do
     begin
        //v antig/a

        // Foi reativado em 25/04/2019, devido nova atualização do ACBR em 25/04/2019 conforme o demo do acbr -------
           AtualizarXMLCancelado := true;
        // -----------------------------------

        ExibirErroSchema      := true;
        FormatoAlerta         := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';
        FormaEmissao          := StrToTpEmis(OK,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_emissao').AsInteger+1));
        ModeloDF              := TpcnModeloDF(0);
        xVersaoNfe            := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_versao').AsInteger;  //  3 - Versão 4.00;    2- Versão 3.10
        VersaoDF              := TpcnVersaoDF(xVersaoNfe);
        txtToken.text         := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_id_token').AsString;
        txtCSC.text           := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_csc').AsString;
        IdCSC                 := txtToken.text;
        CSC                   := txtCSC.text;
        Salvar                := True;
        //IncluirQRCodeXMLNFCe  := false;  // Mas a frente pode ser mudado de acordo com checked marcado

        SSLLib                := TSSLLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_ssllib').AsInteger); //libCapicom;
        if xVersaoNfe = 3 then // 4.00
           begin
              // Nota técnica: NT_2016_002_v1.42
              SSLCryptLib           := TSSLCryptLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_criptlib').AsInteger);
              SSLHttpLib            := TSSLHttpLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_httplib').AsInteger);
              SSLXmlSignLib         := TSSLXmlSignLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_xmlsignlib').AsInteger);

              NFe.SSL.SSLType       := TSSLType(5);
              //AtualizarXMLCancelado := true;
              CamposFatObrigatorios := true;
           end;


        //v antiga
          //PathSalvar            := ExtractFilePath(Application.ExeName) +
          //                         dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;
          //PathSchemas           := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(xVersaoNfe));
     end;

  with NFe.Configuracoes.WebServices do
       begin
          UF         := dmGeral.CAD_CD_C_PAR.FieldByName('int_uf').AsString;
          Ambiente   := StrToTpAmb(Ok,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsInteger));

          if Ambiente = taProducao then
             begin
               txtAmbiente.Text := 'Ambiente: Produção';
               txtAmbiente.Color := $00BBFF77;
             end;
          if Ambiente = taHomologacao then
             begin
               txtAmbiente.Text := 'Ambiente: Homologação';
               txtAmbiente.Color := $00ACC0FB;
             end;

          Visualizar := true;
          Salvar     := false;
          AjustaAguardaConsultaRet := false;
          //if DFeUtil.NaoEstaVazio('')then
          if NaoEstaVazio('')then
             AguardarConsultaRet := ifThen(StrToInt('0')<1000,StrToInt('0')*1000,StrToInt('0'))
             //AguardarConsultaRet := DFeUtil.SeSenao(StrToInt('0')<1000,StrToInt('0')*1000,StrToInt('0'))
          else
             xAguardar := IntToStr(AguardarConsultaRet);

          if NaoEstaVazio('') then
             Tentativas := StrToInt('0')
          else
             xTentativas := IntToStr(Tentativas);

          if NaoEstaVazio('') then
             // IntervaloTentativas := DFeUtil.SeSenao(StrToInt('0')<1000,StrToInt('0')*1000,StrToInt('0'))
             IntervaloTentativas := ifThen(StrToInt('0')<1000,StrToInt('0')*1000,StrToInt('0'))
          else
             xIntervalo := IntToStr(NFe.Configuracoes.WebServices.IntervaloTentativas);

          ProxyHost := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_host').AsString;
          ProxyPort := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_porta').AsString;
          ProxyUser := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_usuario').AsString;
          ProxyPass := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_senha').AsString;

          TimeOut := strtoint(cbTimeServices.Text);
       end;

  if NFe.DANFE <> nil then
     begin
       NFe.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_impressao').AsInteger+1));
       NFe.DANFE.Logo       := ExtractFilePath(Application.ExeName)+dmGeral.CAD_CD_C_PAR_NFE.FieldByName('path_logo').AsString;
     end;

  // v Antigo
  //PathXml := NFe.Configuracoes.Geral.PathSalvar;

  with NFe.Configuracoes.Arquivos do
       begin
         Salvar             := True;
         if (dmGeral.CAD_CD_C_PAR_NFE.FieldByName('NFE_SEPARAR_XML_MES').AsBoolean=true) then
           SepararPorMes := true
         else
           SepararPorMes := false;
         // v Antigo
         //PastaMensal        := True;
         SalvarEvento       := true;
         AdicionarLiteral   := False;
         EmissaoPathNFe     := False;

         SepararPorCNPJ     := False;
         SepararPorModelo   := False;
         PathSalvar         := {ExtractFilePath(Application.ExeName) +
                               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;}

                               ExtractFilePath(Application.ExeName) +
                               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML_OUTROS').AsString;

         PathSchemas        := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe';
         if not DirectoryExists(PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe') then
            begin
              ShowMessage('A pasta: ' + PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe' + ', não foi encontrada!' + #13 +
                          'A geração do documento fiscal eletrônico não será possível!');

              btnNotaFiscal.Enabled := false;
              btnNfc.Enabled := false;
            end
         else
            txtSchemas.text    := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe';
         if not DirectoryExists(PathWithDelim(ExtractFilePath(Application.ExeName))+'Report') then
            begin
              ShowMessage('A pasta: ' + PathWithDelim(ExtractFilePath(Application.ExeName))+'Report' + ', não foi encontrada!' + #13 +
                          'A geração do documento fiscal eletrônico não será possível!');

              btnNotaFiscal.Enabled := false;
              btnNfc.Enabled := false;
            end
         else
            txtReport.Text     := PathWithDelim(ExtractFilePath(Application.ExeName))+'Report';
         // v antigo
         //PathSchemas           := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(xVersaoNfe));
         // teste showmessage(PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(xVersaoNfe)));
         PathNFe            := {PathXml; }
                               ExtractFilePath(Application.ExeName) +
                               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;
         PathInu            := PathXml;
         // V antigo
           //PathDPEC           := PathXml;
           //PathCan            := PathXml;
           //PathCCe            := PathXml;
           //SalvarCCeCanEvento := True;
         PathEvento         := {PathXml;}
                               ExtractFilePath(Application.ExeName) +
                               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML_OUTROS').AsString;
       end;
   // v antigo
   // PathXml := NFe.Configuracoes.Geral.PathSalvar;
   PathXml := NFe.Configuracoes.Arquivos.PathSalvar;


end;
end.
