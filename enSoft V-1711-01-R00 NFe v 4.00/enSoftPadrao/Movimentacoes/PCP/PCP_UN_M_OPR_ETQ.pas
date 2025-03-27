unit PCP_UN_M_OPR_ETQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, vcl.Wwdbedit,
  Vcl.ComCtrls, Datasnap.DBClient, frxClass, frxDBSet, frxDesgn, Vcl.Buttons,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TPCP_FM_M_OPR_ETQ = class(TPAD_FM_X_FRM)
    pnCabecalho: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    txtEmissao: TJvDBDateEdit;
    pnDados: TPanel;
    pgImpressao: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label5: TLabel;
    wwDBGrid2: TwwDBGrid;
    Panel4: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label7: TLabel;
    grdEtiquetas: TwwDBGrid;
    Panel5: TPanel;
    Label8: TLabel;
    PCP_CD_M_ETQ: TClientDataSet;
    dsOprOpp: TwwDataSource;
    cdsEtiquetas: TClientDataSet;
    cdsEtiquetassequencia: TIntegerField;
    cdsEtiquetasclassificacao: TStringField;
    cdsEtiquetasmedidas: TStringField;
    cdsEtiquetasdata_fabricacao: TDateField;
    cdsEtiquetasetiq_espuma1: TStringField;
    cdsEtiquetasetiq_espuma2: TStringField;
    cdsEtiquetasetiq_espuma3: TStringField;
    cdsEtiquetasmadeira: TStringField;
    cdsEtiquetasetiq_revestimento1: TStringField;
    cdsEtiquetasetiq_revestimento2: TStringField;
    cdsEtiquetasetiq_revestimento3: TStringField;
    cdsEtiquetasetiq_recomendacoes_1: TStringField;
    cdsEtiquetasetiq_recomendacoes_2: TStringField;
    cdsEtiquetasetiq_modelo: TStringField;
    cdsEtiquetasCODIGO_BARRA: TStringField;
    cdsEtiquetasnome_selo: TStringField;
    cdsEtiquetasmsg_etq1: TStringField;
    cdsEtiquetasmsg_etq2: TStringField;
    cdsEtiquetasmsg_etq3: TStringField;
    cdsEtiquetasmsg_etq4: TStringField;
    cdsEtiquetasmsg_etq5: TStringField;
    cdsEtiquetasdesc_uso: TStringField;
    cdsEtiquetasmsg_etq6: TStringField;
    cdsEtiquetasmsg_etq7: TStringField;
    dsEtiquetas: TwwDataSource;
    PCP_CD_M_ETQid_opr: TIntegerField;
    PCP_CD_M_ETQid_item: TIntegerField;
    PCP_CD_M_ETQid_cor: TIntegerField;
    PCP_CD_M_ETQid_tamanho: TIntegerField;
    PCP_CD_M_ETQcod_barra: TWideStringField;
    PCP_CD_M_ETQsequencia: TIntegerField;
    PCP_CD_M_ETQdta_criacao: TDateField;
    PCP_CD_M_ETQhor_criacao: TTimeField;
    PCP_CD_M_ETQimpressa: TBooleanField;
    PCP_CD_M_ETQint_nomeite: TWideStringField;
    PCP_CD_M_ETQint_und_venda: TWideStringField;
    PCP_CD_M_ETQint_nomecor: TWideStringField;
    PCP_CD_M_ETQint_nometam: TWideStringField;
    PCP_CD_M_ETQid_etq: TIntegerField;
    PCP_CD_M_ETQdta_entrada_est: TDateField;
    PCP_CD_M_ETQhor_entrada_est: TTimeField;
    PCP_CD_M_ETQid_funcionario_est: TIntegerField;
    PCP_CD_M_ETQhor_impressa: TTimeField;
    PCP_CD_M_ETQdta_impressa: TDateField;
    PCP_CD_M_ETQid_func_impressa: TIntegerField;
    PCP_CD_M_ETQid_opr_origem: TIntegerField;
    cdsEtiquetasint_nomeite: TStringField;
    cdsEtiquetasint_nomecor: TStringField;
    cdsEtiquetasint_nometam: TStringField;
    cdsEtiquetasid_item: TIntegerField;
    cdsEtiquetasint_undvenda: TStringField;
    PCP_CD_M_ETQint_selecao: TBooleanField;
    BUS_CD_M_OPR_ETQ: TClientDataSet;
    BUS_CD_M_OPR_ETQint_selecao: TBooleanField;
    BUS_CD_M_OPR_ETQid_item: TIntegerField;
    BUS_CD_M_OPR_ETQid_cor: TIntegerField;
    BUS_CD_M_OPR_ETQid_tamanho: TIntegerField;
    BUS_CD_M_OPR_ETQint_undvenda: TWideStringField;
    BUS_CD_M_OPR_ETQint_nomecor: TWideStringField;
    BUS_CD_M_OPR_ETQint_nometam: TWideStringField;
    cdsEtiquetasnome_layout_etq: TStringField;
    cdsEtiquetasimp_msg_etq: TBooleanField;
    PCP_CD_M_ETQint_medidaite: TWideStringField;
    PCP_CD_M_ETQint_etiq_recomendacoes1ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_recomendacoes2ite: TWideStringField;
    PCP_CD_M_ETQint_nomecue: TWideStringField;
    PCP_CD_M_ETQint_nomeseloetq: TWideStringField;
    PCP_CD_M_ETQint_etiq_modelo: TWideStringField;
    PCP_CD_M_ETQint_fteetq: TIntegerField;
    PCP_CD_M_ETQint_impselo: TBooleanField;
    PCP_CD_M_ETQint_impmsgetq: TBooleanField;
    PCP_CD_M_ETQint_modeloftq_etq: TIntegerField;
    cdsEtiquetasimp_selo: TBooleanField;
    cdsEtq2: TClientDataSet;
    BooleanField1: TBooleanField;
    StringField1: TStringField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField2: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateField1: TDateField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    PCP_CD_M_ETQint_nome_layout_etq: TWideStringField;
    cdsEtiquetasint_selecao: TBooleanField;
    PCP_DB_C_ETQ_1_C_MSG: TfrxDBDataset;
    btnImp: TButton;
    PCP_CD_M_ETQcod_int_etq: TWideStringField;
    PCP_CD_M_ETQcod_int_etq_rev: TWideStringField;
    PCP_CD_M_ETQdescricao: TWideStringField;
    PCP_CD_M_ETQetq_tecnica: TBooleanField;
    PCP_CD_M_ETQespecificacoes: TWideStringField;
    PCP_CD_M_ETQtexto_livre1: TWideStringField;
    PCP_CD_M_ETQtexto_livre2: TWideStringField;
    PCP_CD_M_ETQid_fte_etq: TIntegerField;
    PCP_CD_M_ETQmodelo_etq: TIntegerField;
    PCP_CD_M_ETQid_fte: TIntegerField;
    PCP_CD_M_ETQcod_lme: TWideStringField;
    PCP_CD_M_ETQrev_lme: TWideStringField;
    PCP_CD_M_ETQrequisitos: TWideStringField;
    PCP_CD_M_ETQinf_contato: TWideStringField;
    PCP_CD_M_ETQinf_remocao: TWideStringField;
    PCP_CD_M_ETQinf_sac: TWideStringField;
    cdsEtiquetascod_int_etq: TStringField;
    cdsEtiquetascod_int_etq_rev: TStringField;
    cdsEtiquetasdescricao: TStringField;
    cdsEtiquetasetq_tecnica: TBooleanField;
    cdsEtiquetasinf_contato: TStringField;
    cdsEtiquetasinf_remocao: TStringField;
    cdsEtiquetasinf_sac: TStringField;
    cdsEtiquetastexto_livre1: TStringField;
    cdsEtiquetastexto_livre2: TStringField;
    Label4: TLabel;
    Panel6: TPanel;
    lblSelecionarTodos: TLabel;
    lblDesmarcarTodos: TLabel;
    Panel7: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    BUS_CD_M_ETQ: TClientDataSet;
    BUS_CD_M_ETQid_opr: TIntegerField;
    BUS_CD_M_ETQid_item: TIntegerField;
    BUS_CD_M_ETQid_cor: TIntegerField;
    BUS_CD_M_ETQid_tamanho: TIntegerField;
    BUS_CD_M_ETQcod_barra: TWideStringField;
    BUS_CD_M_ETQsequencia: TIntegerField;
    BUS_CD_M_ETQdta_criacao: TDateField;
    BUS_CD_M_ETQhor_criacao: TTimeField;
    BUS_CD_M_ETQimpressa: TBooleanField;
    BUS_CD_M_ETQint_nomeite: TWideStringField;
    BUS_CD_M_ETQint_und_venda: TWideStringField;
    BUS_CD_M_ETQint_nomecor: TWideStringField;
    BUS_CD_M_ETQint_nometam: TWideStringField;
    BUS_CD_M_ETQid_etq: TIntegerField;
    BUS_CD_M_ETQdta_entrada_est: TDateField;
    BUS_CD_M_ETQhor_entrada_est: TTimeField;
    BUS_CD_M_ETQid_funcionario_est: TIntegerField;
    BUS_CD_M_ETQhor_impressa: TTimeField;
    BUS_CD_M_ETQdta_impressa: TDateField;
    BUS_CD_M_ETQid_func_impressa: TIntegerField;
    BUS_CD_M_ETQid_opr_origem: TIntegerField;
    BUS_CD_M_ETQint_selecao: TBooleanField;
    BUS_CD_M_ETQint_medidaite: TWideStringField;
    BUS_CD_M_ETQint_etiq_madeiraite: TWideStringField;
    BUS_CD_M_ETQint_etiq_recomendacoes1ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_recomendacoes2ite: TWideStringField;
    BUS_CD_M_ETQint_nomecue: TWideStringField;
    BUS_CD_M_ETQint_nomecle: TWideStringField;
    BUS_CD_M_ETQint_nomeseloetq: TWideStringField;
    BUS_CD_M_ETQint_etiq_modelo: TWideStringField;
    BUS_CD_M_ETQint_fteetq: TIntegerField;
    BUS_CD_M_ETQint_impselo: TBooleanField;
    BUS_CD_M_ETQint_impmsgetq: TBooleanField;
    BUS_CD_M_ETQint_modeloftq_etq: TIntegerField;
    BUS_CD_M_ETQint_nome_layout_etq: TWideStringField;
    BUS_CD_M_ETQcod_int_etq: TWideStringField;
    BUS_CD_M_ETQcod_int_etq_rev: TWideStringField;
    BUS_CD_M_ETQdescricao: TWideStringField;
    BUS_CD_M_ETQetq_tecnica: TBooleanField;
    BUS_CD_M_ETQespecificacoes: TWideStringField;
    BUS_CD_M_ETQtexto_livre1: TWideStringField;
    BUS_CD_M_ETQtexto_livre2: TWideStringField;
    BUS_CD_M_ETQid_fte_etq: TIntegerField;
    BUS_CD_M_ETQmodelo_etq: TIntegerField;
    BUS_CD_M_ETQid_fte: TIntegerField;
    BUS_CD_M_ETQcod_lme: TWideStringField;
    BUS_CD_M_ETQrev_lme: TWideStringField;
    BUS_CD_M_ETQrequisitos: TWideStringField;
    BUS_CD_M_ETQinf_contato: TWideStringField;
    BUS_CD_M_ETQinf_remocao: TWideStringField;
    BUS_CD_M_ETQinf_sac: TWideStringField;
    pmProdutos: TPopupMenu;
    Inserirmedidas1: TMenuItem;
    PCP_FR_C_ETQ_5: TfrxReport;
    PCP_FR_C_ETQ_4: TfrxReport;
    PCP_FR_C_ETQ_6: TfrxReport;
    PCP_FR_C_ETQ_7: TfrxReport;
    frxCriarEtq: TfrxReport;
    btnCriarEtq: TButton;
    frxDesigner1: TfrxDesigner;
    cdsEtiquetasimp_etq_simples: TBooleanField;
    cdsEtiquetaspath_etq_simples: TStringField;
    PCP_CD_M_ETQint_impetqsimples: TBooleanField;
    PCP_CD_M_ETQint_pathetqsimples: TWideStringField;
    PCP_FR_C_ETQ_1_C_MSG: TfrxReport;
    PCP_FR_C_ETQ_1: TfrxReport;
    PCP_FR_C_ETQ_2: TfrxReport;
    PCP_FR_C_ETQ_3: TfrxReport;
    PCP_FR_C_ETQ_3_C_MSG: TfrxReport;
    pnDadosExt: TPanel;
    deFabricaoExt: TJvDateEdit;
    Label17: TLabel;
    pmEtiquetas: TPopupMenu;
    Alterardatadefabricao1: TMenuItem;
    BUS_CD_M_OPR_ETQint_nomeite: TWideStringField;
    PCP_CD_M_ETQint_etiq_marca: TWideStringField;
    BUS_CD_M_ETQint_etiq_marca: TWideStringField;
    cdsEtiquetasetiq_espuma4: TStringField;
    cdsEtiquetasetiq_espuma5: TStringField;
    cdsEtiquetasetiq_espuma6: TStringField;
    cdsEtiquetasetiq_revestimento4: TStringField;
    cdsEtiquetasetiq_revestimento5: TStringField;
    cdsEtiquetasetiq_revestimento6: TStringField;
    cdsEtiquetasetiq_marca: TStringField;
    cdsEtiquetasint_num_lote_opr: TStringField;
    PCP_CD_M_ETQint_num_lote_opr: TWideStringField;
    BUS_CD_M_ETQint_num_lote_opr: TWideStringField;
    PCP_CD_M_ETQid_empresa: TIntegerField;
    PCP_CD_M_ETQdta_saida: TDateField;
    PCP_CD_M_ETQhor_saida: TTimeField;
    PCP_CD_M_ETQid_ors_saida: TIntegerField;
    PCP_CD_M_ETQid_rom_saida: TIntegerField;
    PCP_CD_M_ETQid_funcionario_sai: TWideStringField;
    PCP_CD_M_ETQid_epp: TIntegerField;
    PCP_CD_M_ETQpcp_obs_item: TWideStringField;
    PCP_CD_M_ETQint_nomeite_pers: TWideStringField;
    PCP_CD_M_ETQint_nomecle: TWideStringField;
    PCP_CD_M_ETQdta_reimpressa: TDateField;
    PCP_CD_M_ETQhor_reimpressa: TTimeField;
    PCP_CD_M_ETQid_func_reimpressa: TIntegerField;
    PCP_CD_M_ETQmotivo_reimpressa: TWideStringField;
    PCP_CD_M_ETQint_nome_func_reimp: TWideStringField;
    txtProduto: TEdit;
    Label21: TLabel;
    SpeedButton2: TSpeedButton;
    btnLocalizar: TSpeedButton;
    pmEtiqProduto: TPopupMenu;
    cbReimprimirEtq: TCheckBox;
    BUS_CD_M_ETQdta_reimpressa: TDateField;
    BUS_CD_M_ETQhor_reimpressa: TTimeField;
    BUS_CD_M_ETQid_func_reimpressa: TIntegerField;
    BUS_CD_M_ETQmotivo_reimpressa: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma1ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma2ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma3ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma4ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma5ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_espuma6ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento1ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento2ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento3ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento4ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento5ite: TWideStringField;
    BUS_CD_M_ETQint_etiq_revestimento6ite: TWideStringField;
    PCP_FR_C_ETQ_GTIN: TfrxReport;
    bus_cd_c_ite: TClientDataSet;
    bus_cd_c_itecod_barra: TWideStringField;
    cxButton1: TcxButton;
    BUS_DB_C_ITE: TfrxDBDataset;
    cdsEtiquetascod_barra_gtin: TStringField;
    PCP_CD_M_ETQint_cod_barra_gtin: TWideStringField;
    PCP_CD_M_ETQint_etiq_espuma1ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_espuma2ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_espuma3ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_espuma4ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_espuma5ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_espuma6ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_madeiraite: TWideStringField;
    PCP_CD_M_ETQint_etiq_revestimento1ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_revestimento2ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_revestimento3ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_revestimento4ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_revestimento5ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_revestimento6ite: TWideStringField;
    BUS_CD_M_OPR_ETQpcp_desc_item_person: TWideStringField;
    cxButton2: TcxButton;
    PCP_FR_C_ETQ_PEQ: TfrxReport;
    PCP_CD_M_ETQint_etiq_tipo_produto: TWideStringField;
    BUS_CD_M_ETQint_etiq_tipo_produto: TWideStringField;
    cdsEtiquetasint_etiq_tipo_produto: TStringField;
    cbEtiqMaq: TCheckBox;
    pnlDadosSobMed: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    lblItemDescOrig: TLabel;
    Label16: TLabel;
    lblUnd: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    txtItemOri: TJvComboEdit;
    txtLinha1: TEdit;
    txtLinha2: TEdit;
    txtLinha3: TEdit;
    txtSobMedida: TEdit;
    btnCancelar: TButton;
    btnSalvar: TButton;
    txtLinha4: TEdit;
    txtLinha5: TEdit;
    txtLinha6: TEdit;
    PCP_CD_M_ETQint_nome_selo_inmetro_etq: TWideStringField;
    BUS_CD_M_ETQint_nome_selo_inmetro_etq: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid1FieldChanged(Sender: TObject; Field: TField);
    procedure PCP_CD_M_ETQint_selecaoChange(Sender: TField);
    procedure btnImprimeClick(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure lblSelecionarTodosClick(Sender: TObject);
    procedure lblDesmarcarTodosClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure PCP_FR_C_ETQ_1_C_MSGAfterPrintReport(Sender: TObject);
    procedure PCP_FR_C_ETQ_1AfterPrintReport(Sender: TObject);
    procedure PCP_FR_C_ETQ_2AfterPrintReport(Sender: TObject);
    procedure PCP_FR_C_ETQ_3AfterPrintReport(Sender: TObject);
    procedure pReportAfterPrintReport(Sender: TObject);
    procedure txtItemOriButtonClick(Sender: TObject);
    procedure txtItemOriExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure Inserirmedidas1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCriarEtqClick(Sender: TObject);
    procedure Alterardatadefabricao1Click(Sender: TObject);
    procedure deFabricaoExtExit(Sender: TObject);
    procedure Reimprimiretiqueta1Click(Sender: TObject);
    procedure cbReimprimirEtqClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cbEtiqMaqClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirEtiqItem;
    procedure AtuEtq;
    procedure LimparDadosSobMed;
    procedure ImpEtqPersonalizada(acao_da_impressao: string);
  public
    { Public declarations }
    var
       HouveImpressao_etiqueta: Boolean;
  end;

var
  PCP_FM_M_OPR_ETQ: TPCP_FM_M_OPR_ETQ;
  xNovaBusca: Boolean;

implementation

{$R *.dfm}

uses PCP_UN_M_OPR, uDmGeral, uDmSgq, PSQ_UN_X_ITE, PCP_UN_M_OPR_ETQ_SEN;

procedure TPCP_FM_M_OPR_ETQ.Alterardatadefabricao1Click(Sender: TObject);
begin
  inherited;
  pnDadosExt.Visible := true;
  deFabricaoExt.SetFocus;
end;

procedure TPCP_FM_M_OPR_ETQ.AtuEtq;
var
  etiquetas_sel: string;
begin
 // Criado em 17/08/2016, por Maxsuel Victor
 // tem a função de atualizar os dados de impressão da etiqueta.

  etiquetas_sel := '';

  cdsEtiquetas.First;
  while not cdsEtiquetas.eof do
    begin
      if etiquetas_sel <> '' then
         begin
          etiquetas_sel :=
          etiquetas_sel + ',' +''''+ cdsEtiquetas.FieldByName('CODIGO_BARRA').AsString+'''';
         end;
      if etiquetas_sel = '' then
         begin
           etiquetas_sel :=
           etiquetas_sel +'''' + cdsEtiquetas.FieldByName('CODIGO_BARRA').AsString+'''';
         end;
      cdsEtiquetas.Next;
    end;
  if etiquetas_sel <> '' then
     begin
       BUS_CD_M_ETQ.Close;
       BUS_CD_M_ETQ.Data :=
       BUS_CD_M_ETQ.DataRequest(
          VarArrayOf([3, etiquetas_sel, dmGeral.PCP_CD_M_OPR.FieldByName('id_empresa').AsString]));
       if not BUS_CD_M_ETQ.IsEmpty then
          begin
            while not BUS_CD_M_ETQ.eof do
               begin
                 BUS_CD_M_ETQ.Edit;
                 if cbReimprimirEtq.Checked = false then
                    begin
                      BUS_CD_M_ETQ.FieldByName('impressa').AsBoolean         := true;
                      BUS_CD_M_ETQ.FieldByName('hor_impressa').AsDateTime    := time;
                      BUS_CD_M_ETQ.FieldByName('dta_impressa').AsDateTime    := Date;
                      BUS_CD_M_ETQ.FieldByName('id_func_impressa').AsInteger := xFuncionario;
                    end
                 else
                    begin
                      BUS_CD_M_ETQ.FieldByName('hor_reimpressa').AsDateTime    := Time;
                      BUS_CD_M_ETQ.FieldByName('dta_reimpressa').AsDateTime    := Date;
                      BUS_CD_M_ETQ.FieldByName('id_func_reimpressa').AsInteger :=
                          PCP_CD_M_ETQ.FieldByName('id_func_reimpressa').AsInteger;
                      BUS_CD_M_ETQ.FieldByName('motivo_reimpressa').AsString  :=
                          PCP_CD_M_ETQ.FieldByName('motivo_reimpressa').AsString;
                    end;

                 HouveImpressao_etiqueta := true;

                 BUS_CD_M_ETQ.Post;
                 BUS_CD_M_ETQ.Next;
               end;
            try
              if BUS_CD_M_ETQ.ApplyUpdates(0) = 0 then
                 begin
                    PCP_CD_M_ETQ.Filtered := false;

                    cdsEtiquetas.First;
                    while not cdsEtiquetas.eof do
                      begin
                        if PCP_CD_M_ETQ.Locate('cod_barra',cdsEtiquetas.FieldByName('CODIGO_BARRA').AsString,[]) then
                           begin
                             PCP_CD_M_ETQ.edit;
                             PCP_CD_M_ETQ.FieldByName('impressa').AsBoolean := true;
                             PCP_CD_M_ETQ.FieldByName('dta_impressa').AsDateTime := xDataSis;
                             PCP_CD_M_ETQ.Post;
                           end;
                        cdsEtiquetas.Next;
                      end;

                    BUS_CD_M_OPR_ETQ.First;
                    ExibirEtiqItem;
                 end;
            except
              on E: Exception do
                 begin
                   ShowMessage('Erro ao tentar atualizar a hora e data da impressão da etiqueta.' +
                               e.Message);
                   abort;
                 end;
            end;
          end;
     end;

end;

procedure TPCP_FM_M_OPR_ETQ.btnCancelarClick(Sender: TObject);
begin
  inherited;
  pnlDadosSobMed.Visible := false;
  btnImp.Enabled  := true;
  btnSair.Enabled := true;
  LimparDadosSobMed;
end;

procedure TPCP_FM_M_OPR_ETQ.btnCriarEtqClick(Sender: TObject);
var
  pReport : TfrxReport;
begin
  inherited;
  try
  {pReport := TfrxReport.Create(Application);
  pReport.Clear;
  pReport.DataSets.Add(PCP_DB_C_ETQ_1_C_MSG);  }
  frxCriarEtq.DesignReport();
  finally
   // FreeAndNil(pReport)
  end;
end;

procedure TPCP_FM_M_OPR_ETQ.btnImprimeClick(Sender: TObject);
begin
  inherited;
   PCP_FR_C_ETQ_1_C_MSG.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);
           PCP_FR_C_ETQ_1_C_MSG.PrepareReport();
           PCP_FR_C_ETQ_1_C_MSG.ShowReport();
end;

procedure TPCP_FM_M_OPR_ETQ.btnSalvarClick(Sender: TObject);
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.close;
  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItemOri.Text]));

  dmSgq.BusClassEtiquetaCol(0,dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_CLASSIFICACAO_PRO').Text);
  dmSgq.BusUsoEtiquetaCol(0,dmgeral.BUS_CD_C_ITE.FieldByName('etiq_id_cue').Text);

  dmgeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').Text);

  PCP_CD_M_ETQ.recordcount;

  PCP_CD_M_ETQ.First;
  while not PCP_CD_M_ETQ.eof do
      begin
        PCP_CD_M_ETQ.edit;

        PCP_CD_M_ETQ.FieldByName('int_etiq_marca').AsString := dmGeral.BUS_CD_C_ITE.FieldByName('etiq_marca').Text;
        PCP_CD_M_ETQ.FieldByName('int_nomeite').AsString    := dmGeral.BUS_CD_C_ITE.FieldByName('descricao').Text;
        PCP_CD_M_ETQ.FieldByName('int_und_venda').AsString  := dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').Text;
        PCP_CD_M_ETQ.FieldByName('int_cod_barra_gtin').AsString := dmGeral.BUS_CD_C_ITE.FieldByName('cod_barra').Text;

        //PCP_CD_M_ETQ.FieldByName('int_nomeseloetq').Text    := dmGeral.BUS_CD_C_GRU.FieldByName('NOME_SELO_ETQ').Text;

        PCP_CD_M_ETQ.FieldByName('int_nomeseloetq').Text    := dmGeral.BUS_CD_C_GRU.FieldByName('nome_selo_inmetro_etq').Text;

        PCP_CD_M_ETQ.FieldByName('int_nomecle').Text        :=
               dmSgq.BUS_CD_C_CLE.FieldByName('DESCRICAO').Text;


        PCP_CD_M_ETQ.FieldByName('int_nomecue').Text       :=
               dmSgq.BUS_CD_C_CUE.FieldByName('DESCRICAO').Text;


        dmSgq.BUS_CD_M_FTE_ETQ.Close;
        dmSgq.BUS_CD_M_FTE_ETQ.Data :=
              dmSgq.BUS_CD_M_FTE_ETQ.DataRequest(VarArrayOf([0, dmGeral.BUS_CD_C_ITEint_fteetq.Text]));

        dmGeral.BUS_PR_X_FTE_MOD_ETQ;
        if dmGeral.BUS_CD_X_FTE_MOD_ETQ.Locate('CODIGO', dmSgq.BUS_CD_M_FTE_ETQ.FieldByName('MODELO_ETQ').Text,[]) then
           begin
             PCP_CD_M_ETQ.FieldByName('int_nome_layout_etq').Text :=  dmGeral.BUS_CD_X_FTE_MOD_ETQDESCRICAO.Text;
           end;
        dmGeral.BUS_CD_X_FTE_MOD_ETQ.close;

        PCP_CD_M_ETQ.FieldByName('int_etiq_modelo').Text := dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MODELO').Text;

        PCP_CD_M_ETQ.FieldByName('int_medidaite').Text := txtSobMedida.Text;

        PCP_CD_M_ETQ.FieldByName('int_etiq_espuma1ite').Text :=
                                                           txtLinha1.Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_espuma2ite').Text :=
                                                           txtLinha2.Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_espuma3ite').Text :=
                                                           txtLinha3.Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_espuma4ite').Text :=
                                                           txtLinha4.Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_espuma5ite').Text :=
                                                           txtLinha5.Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_espuma6ite').Text :=
                                                           txtLinha6.Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_madeiraite').Text :=
                       dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MADEIRA').Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento1ite').Text :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO1').Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento2ite').Text :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO2').Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento3ite').Text :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO3').Text;

        PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento4ite').Text :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO4').Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento5ite').Text :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO5').Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento6ite').Text :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO6').Text;

        PCP_CD_M_ETQ.FieldByName('int_etiq_recomendacoes1ite').Text :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_RECOMENDACOES_1').Text;
        PCP_CD_M_ETQ.FieldByName('int_etiq_recomendacoes2ite').Text :=
                   dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_RECOMENDACOES_2').Text;


        PCP_CD_M_ETQ.FieldByName('int_impmsgetq').AsBoolean :=
                   dmGeral.BUS_CD_C_ITE.FieldByName('int_impmsgetq').AsBoolean;

        PCP_CD_M_ETQ.FieldByName('int_impselo').AsBoolean :=
                   dmGeral.BUS_CD_C_ITE.FieldByName('int_impselo').AsBoolean;


        PCP_CD_M_ETQ.FieldByName('int_impetqsimples').AsBoolean :=
                    dmGeral.BUS_CD_C_ITE.FieldByName('int_impetqsimples').AsBoolean;

        PCP_CD_M_ETQ.FieldByName('int_pathetqsimples').AsString :=
                    dmGeral.BUS_CD_C_ITE.FieldByName('int_pathetqsimples').AsString;

        PCP_CD_M_ETQ.FieldByName('texto_livre1').AsString :=
           dmSgq.BUS_CD_M_FTE_ETQtexto_livre1.AsString;

        PCP_CD_M_ETQ.FieldByName('texto_livre2').AsString :=
           dmSgq.BUS_CD_M_FTE_ETQtexto_livre2.AsString;

        PCP_CD_M_ETQ.FieldByName('cod_int_etq').AsString :=
              dmSgq.BUS_CD_M_FTE_ETQcod_int_etq.AsString;

        PCP_CD_M_ETQ.FieldByName('cod_int_etq_rev').AsString :=
              trim(dmSgq.BUS_CD_M_FTE_ETQcod_int_etq_rev.AsString);

        PCP_CD_M_ETQ.FieldByName('etq_tecnica').AsBoolean :=
               dmSgq.BUS_CD_M_FTE_ETQetq_tecnica.AsBoolean;

        PCP_CD_M_ETQ.FieldByName('inf_contato').AsString :=
               trim(dmSgq.BUS_CD_M_FTE_ETQinf_contato.AsString);

        PCP_CD_M_ETQ.FieldByName('inf_remocao').AsString :=
              dmSgq.BUS_CD_M_FTE_ETQinf_remocao.AsString;

        PCP_CD_M_ETQ.FieldByName('inf_sac').AsString :=
                  dmSgq.BUS_CD_M_FTE_ETQinf_sac.AsString;
        PCP_CD_M_ETQ.Next;
      end;

  dmGeral.BUS_CD_C_GRU.close;
  dmSgq.BUS_CD_C_CLE.close;
  dmSgq.BUS_CD_C_CUE.close;
  dmGeral.BUS_CD_C_ITE.close;

  PCP_CD_M_ETQ.First;
  pnlDadosSobMed.Visible := false;
  btnImp.Enabled  := true;
  btnSair.Enabled := true;

  LimparDadosSobMed;
end;

procedure TPCP_FM_M_OPR_ETQ.Button1Click(Sender: TObject);
var
 MainHandle : THandle;
begin
  inherited;
 try
   MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
   SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
   CloseHandle(MainHandle) ;
 except
 end;
   Application.ProcessMessages;
end;

procedure TPCP_FM_M_OPR_ETQ.cbReimprimirEtqClick(Sender: TObject);
begin
  inherited;
  try

  if not (BUS_CD_M_OPR_ETQ.IsEmpty) then
     begin
       BUS_CD_M_OPR_ETQ.Filtered := true;
       BUS_CD_M_OPR_ETQ.Filter := ' int_selecao = true ';
       if BUS_CD_M_OPR_ETQ.recordcount > 1 then
          begin
            ShowMessage('No grid "Produtos da Ordem de Produção", só é permitido selecionar um produto por vez para a reimpressão!');
            exit;
          end;

       PCP_CD_M_ETQ.Filtered := true;
       PCP_CD_M_ETQ.Filter := ' int_selecao = true ';
       if not (PCP_CD_M_ETQ.IsEmpty) then
          begin
            ShowMessage('Para uma reimpressão correta é preciso que desmarque todas etiquetas abaixo!' + #13 +
                        'O primeito passo é marcar que vai Reimprimir para depois selecionar a etiqueta que deseja reimprimir!');

            exit;
          end;
     end;

  finally
     BUS_CD_M_OPR_ETQ.Filtered := false;
     PCP_CD_M_ETQ.Filtered := false;
  end;

end;

procedure TPCP_FM_M_OPR_ETQ.cbEtiqMaqClick(Sender: TObject);
begin
  inherited;
  if cbEtiqMaq.Checked then
     begin
       try

       if Trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_nome_etq_maquete').AsString) = '' then
          begin
            ShowMessage('A etiqueta para maquete ainda não foi informada nos parâmetros da "Produção".');
            cbEtiqMaq.Checked := false;
            abort;
          end;

        if not (BUS_CD_M_OPR_ETQ.IsEmpty) then
           begin
             BUS_CD_M_OPR_ETQ.Filtered := true;
             BUS_CD_M_OPR_ETQ.Filter   := ' int_selecao = true ';
             if BUS_CD_M_OPR_ETQ.recordcount > 0 then
                begin
                  ShowMessage('Para usar essa opção, todos os itens serão desmarcado no grid "Produtos da Ordem de Produção" .'); 
                  BUS_CD_M_OPR_ETQ.Filtered := false;
                  BUS_CD_M_OPR_ETQ.First;
                  while not BUS_CD_M_OPR_ETQ.eof do
                     begin
                       if BUS_CD_M_OPR_ETQ.FieldByName('int_selecao').AsBoolean then
                          begin
                            BUS_CD_M_OPR_ETQ.Edit;
                            BUS_CD_M_OPR_ETQ.FieldByName('int_selecao').AsBoolean := false;
                            BUS_CD_M_OPR_ETQ.Post;                            
                          end;                       
                       BUS_CD_M_OPR_ETQ.Next;
                     end;
                  BUS_CD_M_OPR_ETQ.First;   
                  exit;
                end;
           end;

       finally
          BUS_CD_M_OPR_ETQ.Filtered := false;
       end;

     end
  else
     begin
       if not PCP_CD_M_ETQ.IsEmpty then
          begin
             PCP_CD_M_ETQ.First;
             while not PCP_CD_M_ETQ.Eof do
                begin
                  PCP_CD_M_ETQ.Edit;
                  PCP_CD_M_ETQint_selecao.AsBoolean := false;
                  PCP_CD_M_ETQ.Post;
                  PCP_CD_M_ETQ.Next;
                end;
          end;
     end;
end;

procedure TPCP_FM_M_OPR_ETQ.cxButton1Click(Sender: TObject);
var
  vAux: String;
begin
  inherited;
  try

  if (BUS_CD_M_OPR_ETQ.IsEmpty) or (BUS_CD_M_OPR_ETQ.FieldByName('id_item').AsString = '') then
      begin
        ShowMessage('Nehum item foi selecionado!');          
        exit;
      end;

 { if (BUS_CD_M_OPR_ETQ.RecordCount > 1) then
      begin
        ShowMessage('Só é permitido selecionar um item por cada vez para poder imprimir o código de barra GTIN!');
        exit;
      end; }

  BUS_CD_C_ITE.close;
  BUS_CD_C_ITE.Data :=
      BUS_CD_C_ITE.DataRequest(VarArrayOf([0, BUS_CD_M_OPR_ETQ.FieldByName('id_item').AsString]));

  if trim(BUS_CD_C_ITE.FieldByName('cod_barra').AsString) = '' then
      begin
        ShowMessage('Item sem código de barra GTIN!');
        exit;
      end;
      
  if (length(BUS_CD_C_ITE.FieldByName('cod_barra').AsString) <> 13) then       
      begin
        ShowMessage('Código de barra GTIN inválido!');
        exit;
      end;

  if not(InputQuery('Informe a qtde de vezes que deseja imprimir', 'Qtde: ', vAux)) then
     exit;

  showMessage('Código de barra GTIN do item a ser impresso: ' +  #13 +
                BUS_CD_M_OPR_ETQ.FieldByName('id_item').AsString + ' - ' +
                BUS_CD_M_OPR_ETQ.FieldByName('int_nomeite').AsString + #13 + 'GTIN: ' + 
                BUS_CD_C_ITE.FieldByName('cod_barra').AsString);                


  PCP_FR_C_ETQ_GTIN.Variables['ft_qtde_etiqueta'] := QuotedStr(vAux);   
  PCP_FR_C_ETQ_GTIN.PrepareReport();
  PCP_FR_C_ETQ_GTIN.ShowReport();   
        
  finally
    BUS_CD_M_OPR_ETQ.Filtered := false;
  end;
end;

procedure TPCP_FM_M_OPR_ETQ.cxButton2Click(Sender: TObject);
var
  vAux: String;
  Reimprimir: Boolean;
  opcao_impressao: String;

  cod_opr: String;

begin
  inherited;

  try

  if (BUS_CD_M_OPR_ETQ.IsEmpty) or (BUS_CD_M_OPR_ETQ.FieldByName('id_item').AsString = '') then
      begin
        ShowMessage('Não há item para imprimir!');
        exit;
      end;


  if not(InputQuery('Opção', '1 - Visualizar; 2 - Imprimir: ',opcao_impressao)) then
     exit;

  if trim(opcao_impressao) = '' then
     begin
       ShowMessage('Nenhuma opção foi escolhida.');
       exit;
     end;

  if (trim(opcao_impressao) <> '1') and (trim(opcao_impressao) <> '2') then
     begin
       ShowMessage('Escolha umas das opções validas: 1 - Visualizar ou 2 - Imprimir.');
       exit;
     end;

  HouveImpressao_etiqueta := false;


  cdsEtiquetas.Filtered := true;
  cdsEtiquetas.Filter   := 'int_selecao = true';

  if cdsEtiquetas.IsEmpty then
     begin
       ShowMessage('Nenhum item foi selecionado para impressão!');
       exit;
     end;

 Reimprimir := false;
 if cbReimprimirEtq.checked then
    begin
      PCP_FM_M_OPR_ETQ_SEN := TPCP_FM_M_OPR_ETQ_SEN.Create(Self);
      PCP_FM_M_OPR_ETQ_SEN.xImprime := false;
      PCP_FM_M_OPR_ETQ_SEN.ShowModal;
      Reimprimir := PCP_FM_M_OPR_ETQ_SEN.xImprime;
      PCP_FM_M_OPR_ETQ_SEN.Free;
    end;

 if cbReimprimirEtq.checked then
    begin
      if Reimprimir = false then
         exit;
    end;


  PCP_FR_C_ETQ_PEQ.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                              pbEdit,pbNavigator,pbExportQuick];


  if opcao_impressao = '1' then //Visualizar
     begin
       PCP_FR_C_ETQ_PEQ.PrepareReport();
       PCP_FR_C_ETQ_PEQ.ShowReport();
     end
  else
     begin
       if opcao_impressao = '2' then  //Imprimir
          begin
            PCP_FR_C_ETQ_PEQ.PrepareReport();
            PCP_FR_C_ETQ_PEQ.PrintOptions.ShowDialog := true;
            PCP_FR_C_ETQ_PEQ.PrepareReport();
            PCP_FR_C_ETQ_PEQ.Print;
          end;
     end;

  finally
    cdsEtiquetas.Filtered := false;

    if cbReimprimirEtq.checked then
      begin
        if Reimprimir = true then
           begin
             PCP_CD_M_ETQ.edit;
             PCP_CD_M_ETQ.FieldByName('int_selecao').asBoolean := false;
             PCP_CD_M_ETQ.post;
             cbReimprimirEtq.checked := false;
           end;
      end;

   if HouveImpressao_etiqueta then
      begin
        HouveImpressao_etiqueta := false;
        cod_opr := dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString;

        cdsEtiquetas.EmptyDataSet;

        dmGeral.PCP_CD_M_OPR.Close;
        dmGeral.PCP_CD_M_OPR.Data :=
        dmGeral.PCP_CD_M_OPR.DataRequest(
                VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                               cod_opr]));
      end;


  end;
end;

procedure TPCP_FM_M_OPR_ETQ.deFabricaoExtExit(Sender: TObject);
begin
  inherited;
  pnDadosExt.Visible := false;

  if deFabricaoExt.Text <> '  /  /    ' then
     begin
       cdsEtiquetas.First;
       while not (cdsEtiquetas.eof) do
          begin
            cdsEtiquetas.Edit;
            cdsEtiquetas.FieldByName('data_fabricacao').AsString :=
                         deFabricaoExt.Text;
            cdsEtiquetas.Post;
            cdsEtiquetas.Next;
          end;
       cdsEtiquetas.First;
     end;
  grdEtiquetas.SetFocus;
  deFabricaoExt.Text := '';
end;

procedure TPCP_FM_M_OPR_ETQ.btnImpClick(Sender: TObject);
var
  etiquetas_sel: String;
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  Reimprimir: Boolean;

  opcao_impressao: string;

  cod_opr: String;

  etiquetas: TStringlist;

  i: integer;

begin
  inherited;

 try

 if not(InputQuery('Opção', '1 - Visualizar; 2 - Imprimir: ',opcao_impressao)) then
        exit;
 if trim(opcao_impressao) = '' then
    begin
      ShowMessage('Nenhuma opção foi escolhida.');
      exit;
    end;

 if (trim(opcao_impressao) <> '1') and (trim(opcao_impressao) <> '2') then
    begin
      ShowMessage('Escolha umas das opções validas: 1 - Visualizar ou 2 - Imprimir.');
      exit;
    end;

 cdsEtiquetas.Filtered := true;
 cdsEtiquetas.Filter   := 'int_selecao = true ';

 try
   if cdsEtiquetas.IsEmpty then
    begin
      ShowMessage('Nenhuma etiqueta foi selecionada.');
      exit;
    end;
 finally
     cdsEtiquetas.Filtered := false;
 end;


 HouveImpressao_etiqueta := false;


 Reimprimir := false;
 if cbReimprimirEtq.checked then
    begin
      if (trim(opcao_impressao) = '2') then  // Imprimir
         begin
           PCP_FM_M_OPR_ETQ_SEN := TPCP_FM_M_OPR_ETQ_SEN.Create(Self);
           PCP_FM_M_OPR_ETQ_SEN.xImprime := false;
           PCP_FM_M_OPR_ETQ_SEN.ShowModal;
           Reimprimir := PCP_FM_M_OPR_ETQ_SEN.xImprime;
           PCP_FM_M_OPR_ETQ_SEN.Free;

           if Reimprimir = false then
              exit;
         end;
    end;

 PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresaEtq.jpg';

 etiquetas :=  TStringList.Create;

 cdsEtiquetas.Filtered := true;

 cdsEtiquetas.Filter   := 'int_selecao = true and path_etq_simples <> '''' ';

 if not cdsEtiquetas.IsEmpty then
    begin
       while not cdsEtiquetas.Eof do
          begin
             if not (etiquetas.IndexOf(cdsEtiquetas.FieldByName('path_etq_simples').AsString) > -1) then
                begin
                   etiquetas.add(cdsEtiquetas.FieldByName('path_etq_simples').AsString);
                end;
             cdsEtiquetas.Next;
          end;
       cdsEtiquetas.First;
    end;

 if etiquetas.count > 0 then
    begin
      for i:=0 to etiquetas.Count -1 do
          begin
            cdsEtiquetas.Filter   := 'int_selecao = true and path_etq_simples = ' +
                                      QuotedStr(etiquetas.Strings[i]);

            cdsEtiquetas.RecordCount;
            ImpEtqPersonalizada(opcao_impressao);
          end;
    end;

 cdsEtiquetas.Filtered := true;

 {cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Colchão padrão'' ' +
                          ' and imp_msg_etq = false ';



 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_C_ETQ_1.FindObject('imgEmpresa'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            PCP_FR_C_ETQ_1.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);
            PCP_FR_C_ETQ_1.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                                      pbEdit,pbNavigator,pbExportQuick];


            if opcao_impressao = '1' then //Visualizar
               begin
                 PCP_FR_C_ETQ_1.PrepareReport();
                 PCP_FR_C_ETQ_1.ShowReport();
               end
            else
               begin
                 if opcao_impressao = '2' then  //Imprimir
                    begin
                      PCP_FR_C_ETQ_1.PrepareReport();
                      PCP_FR_C_ETQ_1.PrintOptions.ShowDialog := true;
                      PCP_FR_C_ETQ_1.PrepareReport();
                      PCP_FR_C_ETQ_1.Print;
                    end;
               end;
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;

 //cdsEtiquetas.Filtered := false;
 cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Colchão padrão'' ' +
                          ' and imp_msg_etq = true ';

 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_C_ETQ_1_C_MSG.FindObject('imgEmpresa'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            PCP_FR_C_ETQ_1_C_MSG.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);
            PCP_FR_C_ETQ_1_C_MSG.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                                            pbEdit,pbNavigator,pbExportQuick];

            if opcao_impressao = '1' then //Visualizar
               begin
                 PCP_FR_C_ETQ_1_C_MSG.PrepareReport();
                 PCP_FR_C_ETQ_1_C_MSG.ShowReport();
               end
            else
               begin
                 if opcao_impressao = '2' then  //Imprimir
                    begin
                      PCP_FR_C_ETQ_1_C_MSG.PrepareReport();
                      PCP_FR_C_ETQ_1_C_MSG.PrintOptions.ShowDialog := true;
                      PCP_FR_C_ETQ_1_C_MSG.PrepareReport();
                      PCP_FR_C_ETQ_1_C_MSG.Print;
                    end;
               end;

         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;

 //cdsEtiquetas.Filtered := false;
 cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Colchão baby'' ';

 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_C_ETQ_2.FindObject('imgEmpresa'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            PCP_FR_C_ETQ_2.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);

            PCP_FR_C_ETQ_2.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                                      pbEdit,pbNavigator,pbExportQuick];

            if opcao_impressao = '1' then //Visualizar
               begin
                 PCP_FR_C_ETQ_2.PrepareReport();
                 PCP_FR_C_ETQ_2.ShowReport();
               end
            else
               begin
                 if opcao_impressao = '2' then  //Imprimir
                    begin
                      PCP_FR_C_ETQ_2.PrepareReport();
                      PCP_FR_C_ETQ_2.PrintOptions.ShowDialog := true;
                      PCP_FR_C_ETQ_2.PrepareReport();
                      PCP_FR_C_ETQ_2.Print;
                    end;
               end;
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;


 cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Colchão bordado'' ' +
                          ' and imp_msg_etq = false ';

 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin

            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_C_ETQ_3.FindObject('imgEmpresa'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            PCP_FR_C_ETQ_3.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);
            PCP_FR_C_ETQ_3.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                                      pbEdit,pbNavigator,pbExportQuick];


            if opcao_impressao = '1' then //Visualizar
               begin
                 PCP_FR_C_ETQ_3.PrepareReport();
                 PCP_FR_C_ETQ_3.ShowReport();
               end
            else
               begin
                 if opcao_impressao = '2' then  //Imprimir
                    begin
                      PCP_FR_C_ETQ_3.PrepareReport();
                      PCP_FR_C_ETQ_3.PrintOptions.ShowDialog := true;
                      PCP_FR_C_ETQ_3.PrepareReport();
                      PCP_FR_C_ETQ_3.Print;
                    end;
               end;
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;

 cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Colchão bordado'' ' +
                          ' and imp_msg_etq = true ';

 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_C_ETQ_3_C_MSG.FindObject('imgEmpresa'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            PCP_FR_C_ETQ_3_C_MSG.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);
            PCP_FR_C_ETQ_3_C_MSG.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                                            pbEdit,pbNavigator,pbExportQuick];


            if opcao_impressao = '1' then //Visualizar
               begin
                 PCP_FR_C_ETQ_3_C_MSG.PrepareReport();
                 PCP_FR_C_ETQ_3_C_MSG.ShowReport();
               end
            else
               begin
                 if opcao_impressao = '2' then  //Imprimir
                    begin
                      PCP_FR_C_ETQ_3_C_MSG.PrepareReport();
                      PCP_FR_C_ETQ_3_C_MSG.PrintOptions.ShowDialog := true;
                      PCP_FR_C_ETQ_3_C_MSG.PrepareReport();
                      PCP_FR_C_ETQ_3_C_MSG.Print;
                    end;
               end;
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;



 cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Colchão de molas'' ' +
                          ' and imp_msg_etq = false ';

 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
           ShowMessage('Não há etiqueta pré-definida layout de impressão (Etiquetas - Colchão de molas)');
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;
  }
  cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Base Box'' ' +
                          ' and imp_msg_etq = false and  path_etq_simples = '''' ';


 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
           ShowMessage('Não há etiqueta pré-definida layout de impressão (Etiquetas - Base Box)');
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;



 cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Colchão colchonete'' ' +
                          ' and imp_msg_etq = false and path_etq_simples = '''' ';

 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresaeEtqHorizontal.jpg';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_C_ETQ_4.FindObject('imgEmpresa'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            PCP_FR_C_ETQ_4.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);
            PCP_FR_C_ETQ_4.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                                      pbEdit,pbNavigator,pbExportQuick];

            if opcao_impressao = '1' then //Visualizar
               begin
                 PCP_FR_C_ETQ_4.PrepareReport();
                 PCP_FR_C_ETQ_4.ShowReport();
               end
            else
               begin
                 if opcao_impressao = '2' then  //Imprimir
                    begin
                      PCP_FR_C_ETQ_4.PrepareReport();
                      PCP_FR_C_ETQ_4.PrintOptions.ShowDialog := true;
                      PCP_FR_C_ETQ_4.PrepareReport();
                      PCP_FR_C_ETQ_4.Print;
                    end;
               end;
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;

 cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Bobina'' ' +
                          ' and imp_msg_etq = false and path_etq_simples = '''' ';

 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresaeEtqHorizontal.jpg';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_C_ETQ_5.FindObject('imgEmpresa'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            PCP_FR_C_ETQ_5.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);
            PCP_FR_C_ETQ_5.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                                      pbEdit,pbNavigator,pbExportQuick];

            if opcao_impressao = '1' then //Visualizar
               begin
                 PCP_FR_C_ETQ_5.PrepareReport();
                 PCP_FR_C_ETQ_5.ShowReport();
               end
            else
               begin
                 if opcao_impressao = '2' then  //Imprimir
                    begin
                      PCP_FR_C_ETQ_5.PrepareReport();
                      PCP_FR_C_ETQ_5.PrintOptions.ShowDialog := true;
                      PCP_FR_C_ETQ_5.PrepareReport();
                      PCP_FR_C_ETQ_5.Print;
                    end;
               end;
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;

 cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Travesseiro'' ' +
                          ' and imp_msg_etq = false and path_etq_simples = '''' ';

 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresaeEtqHorizontal.jpg';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_C_ETQ_6.FindObject('imgEmpresa'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            PCP_FR_C_ETQ_6.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);
            PCP_FR_C_ETQ_6.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                                      pbEdit,pbNavigator,pbExportQuick];


            if opcao_impressao = '1' then //Visualizar
               begin
                 PCP_FR_C_ETQ_6.PrepareReport();
                 PCP_FR_C_ETQ_6.ShowReport();
               end
            else
               begin
                 if opcao_impressao = '2' then  //Imprimir
                    begin
                      PCP_FR_C_ETQ_6.PrepareReport();
                      PCP_FR_C_ETQ_6.PrintOptions.ShowDialog := true;
                      PCP_FR_C_ETQ_6.PrepareReport();
                      PCP_FR_C_ETQ_6.Print;
                    end;
               end;
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;

  cdsEtiquetas.Filter   := 'int_selecao = true and nome_layout_etq = ''Etiquetas - Suave Encosto'' ' +
                          ' and imp_msg_etq = false and path_etq_simples = '''' ';

 if not cdsEtiquetas.IsEmpty then
    begin
      if not (cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean) then
         begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresaeEtqHorizontal.jpg';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_C_ETQ_7.FindObject('imgEmpresa'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            PCP_FR_C_ETQ_7.Variables['ft_qtde'] := inttostr(cdsEtiquetas.recordcount);
            PCP_FR_C_ETQ_7.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                                      pbEdit,pbNavigator,pbExportQuick];

            if opcao_impressao = '1' then //Visualizar
               begin
                 PCP_FR_C_ETQ_7.PrepareReport();
                 PCP_FR_C_ETQ_7.ShowReport();
               end
            else
               begin
                 if opcao_impressao = '2' then  //Imprimir
                    begin
                      PCP_FR_C_ETQ_7.PrepareReport();
                      PCP_FR_C_ETQ_7.PrintOptions.ShowDialog := true;
                      PCP_FR_C_ETQ_7.PrepareReport();
                      PCP_FR_C_ETQ_7.Print;
                    end;
               end;
         end
      else
         begin
           ImpEtqPersonalizada(opcao_impressao);
         end;
    end;

 finally
   cdsEtiquetas.Filtered := false;
   cdsEtiquetas.First;

   if cbReimprimirEtq.checked then
      begin
        if Reimprimir = true then
           begin
             if (trim(opcao_impressao) = '2') then  // Imprimir
                 begin
                   PCP_CD_M_ETQ.edit;
                   PCP_CD_M_ETQ.FieldByName('int_selecao').asBoolean := false;
                   PCP_CD_M_ETQ.post;
                   cbReimprimirEtq.checked := false;
                 end;
           end;
      end;

   if HouveImpressao_etiqueta then
      begin
        HouveImpressao_etiqueta := false;
        cod_opr := dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString;

        cdsEtiquetas.Filtered := false;

        while not cdsEtiquetas.eof do
              cdsEtiquetas.delete;

        ShowMessage('Mémoria das etiquetas foi limpa.');

        dmGeral.PCP_CD_M_OPR.Close;
        dmGeral.PCP_CD_M_OPR.Data :=
        dmGeral.PCP_CD_M_OPR.DataRequest(
                VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                               cod_opr]));

        pcp_fm_m_opr_etq.FormShow(self);
      end;
 end;
end;

procedure TPCP_FM_M_OPR_ETQ.ExibirEtiqItem;
begin
   if not dmGeral.PCP_CD_M_OPR_OPP.IsEmpty then
     begin
       if BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').AsString <> '' then
          begin
             dmGeral.BUS_CD_C_ITE.close;
             dmGeral.BUS_CD_C_ITE.Data :=
                      dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').Text]));


             if (BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').Text <>
                 dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) and
                 (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean = false) then
                 begin
                   PCP_CD_M_ETQ.Filtered := true;
                   PCP_CD_M_ETQ.Filter   := ' ID_ITEM = ' + BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').AsString +
                                            ' AND ID_COR = ' + BUS_CD_M_OPR_ETQ.FieldByName('ID_COR').AsString +
                                            ' AND ID_TAMANHO = ' + BUS_CD_M_OPR_ETQ.FieldByName('ID_TAMANHO').AsString;
                 end
             else
                 begin
                   PCP_CD_M_ETQ.Filtered := true;
                   PCP_CD_M_ETQ.Filter   := ' ID_ITEM = ' + BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').AsString +
                                            ' AND ID_COR = ' + BUS_CD_M_OPR_ETQ.FieldByName('ID_COR').AsString +
                                            ' AND ID_TAMANHO = ' + BUS_CD_M_OPR_ETQ.FieldByName('ID_TAMANHO').AsString +
                                            ' AND pcp_obs_item = ' + ''''+ BUS_CD_M_OPR_ETQ.FieldByName('pcp_desc_item_person').AsString +'''' ;
                 end;
             dmGeral.BUS_CD_C_ITE.close;
          end
       else
          begin
            BUS_CD_M_OPR_ETQ.cancel;
          end;
     end
  else
     begin
       PCP_CD_M_ETQ.Filter   := ' ID_ITEM = 0 ' +
                                ' AND ID_COR = 0 ' +
                                ' AND ID_TAMANHO = 0 ' ;
     end;

end;

procedure TPCP_FM_M_OPR_ETQ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  PCP_CD_M_ETQ.Cancel;
  FreeAndNil(PCP_FM_M_OPR_ETQ);
end;

procedure TPCP_FM_M_OPR_ETQ.FormShow(Sender: TObject);
begin
  inherited;

  BUS_CD_M_OPR_ETQ.Close;
  BUS_CD_M_OPR_ETQ.Data :=
  BUS_CD_M_OPR_ETQ.DataRequest(
          VarArrayOf([0, dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString]));



  PCP_CD_M_ETQ.Close;
  PCP_CD_M_ETQ.Data :=
  PCP_CD_M_ETQ.DataRequest(
          VarArrayOf([2, dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString]));


  ExibirEtiqItem;

end;

procedure TPCP_FM_M_OPR_ETQ.ImpEtqPersonalizada(acao_da_impressao: string);
var
  pReport : TfrxReport;
  arquivo, PathImgInmetro: String;
  SeloInmetro: TfrxPictureView;
begin

  if trim(cdsEtiquetas.FieldByName('path_etq_simples').AsString) = '' then
     begin
       dmGeral.BusItens(0,cdsEtiquetas.FieldByName('id_item').AsString);
       ShowMessage('A etiqueta personalizada não foi informada no grupo (' +
                   dmGeral.BUS_CD_C_ITE.FieldByName('id_grupo').AsString + ') do item :' + #13 +
                   cdsEtiquetas.FieldByName('id_item').AsString + ' - ' +
                   cdsEtiquetas.FieldByName('int_nomeite').AsString);
       dmGeral.BUS_CD_C_ITE.close;
       abort;
     end;

  arquivo := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\Etiquetas\'+
             cdsEtiquetas.FieldByName('path_etq_simples').AsString;
  if not (FileExists(arquivo)) then
     begin
       dmGeral.BusItens(0,cdsEtiquetas.FieldByName('id_item').AsString);
       ShowMessage('A etiqueta personalizada (' + cdsEtiquetas.FieldByName('path_etq_simples').AsString +
                   ') do grupo (' + dmGeral.BUS_CD_C_ITE.FieldByName('id_grupo').AsString+ ') do item : ' + #13 +
                   cdsEtiquetas.FieldByName('id_item').AsString + ' - ' +
                   cdsEtiquetas.FieldByName('int_nomeite').AsString + ', não foi encontrada!');
       dmGeral.BUS_CD_C_ITE.close;
       abort;
     end;
  pReport := TfrxReport.Create(Application);
  pReport.OnAfterPrintReport := pReportAfterPrintReport;
  pReport.Clear;
  pReport.LoadFromFile(arquivo);


  PathImgInmetro := ExtractFilePath(Application.ExeName)+'emp'+
                    dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\Etiquetas\SelosInmetro\'+cdsEtiquetas.FieldByName('nome_selo').AsString;

  if FileExists(PathImgInmetro) then
     begin
        SeloInmetro := TfrxPictureView(pReport.FindObject('imgSeloInmetro'));

        if Assigned(SeloInmetro) then
           SeloInmetro.Picture.LoadFromFile(PathImgInmetro);
     end;

  //  Comentado por Maxsuel Victor, 28/05/2024, devido as novas etiquetas com selo do inmetro.

 { if cdsEtiquetas.FieldByName('path_etq_simples').AsString = 'etq_3_bordado_tipo_01_rev03.fr3' then
     TfrxMemoView(pReport.FindObject('imgBordColchaoBoxConj')).Visible := true;
  if (cdsEtiquetas.FieldByName('path_etq_simples').AsString = 'etq_3_bordado_tipo_02_rev03.fr3') or
     (cdsEtiquetas.FieldByName('path_etq_simples').AsString = 'etiqueta_espuma_tam_normal.fr3')  then
     TfrxMemoView(pReport.FindObject('ImgBordColchaoEsp')).Visible := true;
  if cdsEtiquetas.FieldByName('path_etq_simples').AsString = 'etq_2_baby_tipo_01_rev01.fr3' then
     TfrxMemoView(pReport.FindObject('imgBordColchaoBaby')).Visible := true; }


    pReport.PreviewOptions.Buttons := [pbLoad,pbload,pbsave,pbExport,pbZoom,pbFind,pbOutline,
                                       pbEdit,pbNavigator,pbExportQuick];

    if acao_da_impressao = '1' then //Visualizar
       begin
         pReport.PrepareReport();
         pReport.ShowReport();
       end
    else
       begin
         if acao_da_impressao = '2' then  //Imprimir
            begin
              pReport.PrepareReport();
              pReport.PrintOptions.ShowDialog := true;
              pReport.PrepareReport();
              pReport.Print;
            end;
       end;
end;

procedure TPCP_FM_M_OPR_ETQ.Inserirmedidas1Click(Sender: TObject);
begin
  inherited;

  if BUS_CD_M_OPR_ETQ.IsEmpty then
     begin
       Showmessage('Não há item para inserir as informações.');
       exit;
     end;

  dmGeral.BUS_CD_C_ITE.close;
  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').Text]));


  if (BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').Text <>
      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) and
     (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean = false)
      then
      begin
        Showmessage('O item selecionado não é Sob-Medida.');
        dmGeral.BUS_CD_C_ITE.close;
        exit;
      end;
  dmGeral.BUS_CD_C_ITE.close;

  btnImp.Enabled  := false;
  btnSair.Enabled := false;
  pnlDadosSobMed.Visible := true;
  txtItemOri.SetFocus;
end;

procedure TPCP_FM_M_OPR_ETQ.Label6Click(Sender: TObject);
begin
  inherited;
  if not PCP_CD_M_ETQ.IsEmpty then
     begin
       PCP_CD_M_ETQ.First;
       while not PCP_CD_M_ETQ.Eof do
          begin
            PCP_CD_M_ETQ.Edit;
            PCP_CD_M_ETQint_selecao.AsBoolean := true;
            PCP_CD_M_ETQ.Post;
            PCP_CD_M_ETQ.Next;
          end;
     end;

end;

procedure TPCP_FM_M_OPR_ETQ.Label9Click(Sender: TObject);
begin
  inherited;
  if not PCP_CD_M_ETQ.IsEmpty then
     begin
       PCP_CD_M_ETQ.First;
       while not PCP_CD_M_ETQ.Eof do
          begin
            PCP_CD_M_ETQ.Edit;
            PCP_CD_M_ETQint_selecao.AsBoolean := false;
            PCP_CD_M_ETQ.Post;
            PCP_CD_M_ETQ.Next;
          end;
     end;

end;

procedure TPCP_FM_M_OPR_ETQ.lblDesmarcarTodosClick(Sender: TObject);
begin
  inherited;
  if not BUS_CD_M_OPR_ETQ.IsEmpty then
     begin
       BUS_CD_M_OPR_ETQ.First;
       while not BUS_CD_M_OPR_ETQ.Eof do
          begin
            BUS_CD_M_OPR_ETQ.Edit;
            BUS_CD_M_OPR_ETQint_selecao.AsBoolean := false;
            BUS_CD_M_OPR_ETQ.Post;
            BUS_CD_M_OPR_ETQ.Next;
          end;
     end;

end;

procedure TPCP_FM_M_OPR_ETQ.lblSelecionarTodosClick(Sender: TObject);
begin
  inherited;
  if not BUS_CD_M_OPR_ETQ.IsEmpty then
     begin
       BUS_CD_M_OPR_ETQ.First;
       while not BUS_CD_M_OPR_ETQ.Eof do
          begin
            BUS_CD_M_OPR_ETQ.Edit;
            BUS_CD_M_OPR_ETQint_selecao.AsBoolean := true;
            BUS_CD_M_OPR_ETQ.Post;
            BUS_CD_M_OPR_ETQ.Next;
          end;
     end;
end;

procedure TPCP_FM_M_OPR_ETQ.LimparDadosSobMed;
begin
  txtItemOri.Text := '';
  lblItemDescOrig.Caption := '';
  lblUnd.Caption := '';
  txtSobMedida.Text := '';
  txtLinha1.Text := '';
  txtLinha2.Text := '';
  txtLinha3.Text := '';
end;

procedure TPCP_FM_M_OPR_ETQ.PCP_CD_M_ETQint_selecaoChange(Sender: TField);
begin
  inherited;
  if PCP_CD_M_ETQ.FieldByName('int_selecao').AsBoolean then
     begin
       if (PCP_CD_M_ETQ.FieldByName('impressa').AsBoolean) and (cbReimprimirEtq.checked = false) then
          begin
            Showmessage('Para reimprimir uma etiqueta é preciso que marque a caixa Reimprimir etiqueta!');
            PCP_CD_M_ETQ.cancel;
            exit;
          end;

       if not cdsEtiquetas.Locate('CODIGO_BARRA',PCP_CD_M_ETQ.FieldByName('cod_barra').AsInteger,[]) then
          begin

             dmGeral.BUS_CD_C_ITE.close;
             dmGeral.BUS_CD_C_ITE.Data :=
                  dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, PCP_CD_M_ETQ.FieldByName('id_item').AsString]));

             if dmGeral.BUS_CD_C_ITE.FieldByName('int_verif_cod_barra_ped').AsBoolean then
                begin
                  if trim(PCP_CD_M_ETQ.FieldByName('int_cod_barra_gtin').AsString) = '' then
                     begin
                       ShowMessage('Item sem código de barra GTIN!');
                       PCP_CD_M_ETQ.cancel;
                       abort;
                     end;
                end;
             dmGeral.BUS_CD_C_ITE.close;

             cdsEtiquetas.Insert;

             cdsEtiquetas.FieldByName('id_item').AsString :=
                          PCP_CD_M_ETQ.FieldByName('id_item').AsString;
             cdsEtiquetas.FieldByName('int_nomeite').AsString :=
                          PCP_CD_M_ETQ.FieldByName('int_nomeite').AsString;
             cdsEtiquetas.FieldByName('int_undvenda').AsString :=
                          PCP_CD_M_ETQ.FieldByName('int_und_venda').AsString;

             cdsEtiquetas.FieldByName('cod_barra_gtin').AsString :=
                          PCP_CD_M_ETQ.FieldByName('int_cod_barra_gtin').AsString;

             cdsEtiquetas.FieldByName('int_nomecor').AsString :=
                          PCP_CD_M_ETQ.FieldByName('int_nomecor').AsString;

             cdsEtiquetas.FieldByName('int_nometam').AsString :=
                          PCP_CD_M_ETQ.FieldByName('int_nometam').AsString;
             cdsEtiquetas.FieldByName('codigo_barra').AsInteger :=
                          PCP_CD_M_ETQ.FieldByName('cod_barra').AsInteger;


             //cdsEtiquetas.FieldByName('nome_selo').AsString    := PCP_CD_M_ETQ.FieldByName('int_nomeseloetq').Text;

             cdsEtiquetas.FieldByName('nome_selo').AsString    := PCP_CD_M_ETQ.FieldByName('int_nome_selo_inmetro_etq').Text;

             cdsEtiquetas.FieldByName('classificacao').AsString   := PCP_CD_M_ETQ.FieldByName('int_nomecle').Text;
             cdsEtiquetas.FieldByName('desc_uso').AsString        := PCP_CD_M_ETQ.FieldByName('int_nomecue').Text;

             cdsEtiquetas.FieldByName('nome_layout_etq').AsString := PCP_CD_M_ETQ.FieldByName('int_nome_layout_etq').Text;

             cdsEtiquetas.FieldByName('etiq_modelo').AsString     := PCP_CD_M_ETQ.FieldByName('int_etiq_modelo').Text;

             cdsEtiquetas.FieldByName('medidas').AsString         :=
                          PCP_CD_M_ETQ.FieldByName('int_medidaite').Text;

             cdsEtiquetas.FieldByName('etiq_marca').AsString    :=
                          PCP_CD_M_ETQ.FieldByName('int_etiq_marca').Text;

             cdsEtiquetas.FieldByName('etiq_espuma1').AsString    :=
                          PCP_CD_M_ETQ.FieldByName('int_etiq_espuma1ite').Text;
             cdsEtiquetas.FieldByName('etiq_espuma2').AsString    :=
                          PCP_CD_M_ETQ.FieldByName('int_etiq_espuma2ite').Text;
             cdsEtiquetas.FieldByName('etiq_espuma3').AsString    :=
                          PCP_CD_M_ETQ.FieldByName('int_etiq_espuma3ite').Text;
             cdsEtiquetas.FieldByName('etiq_espuma4').AsString    :=
                          PCP_CD_M_ETQ.FieldByName('int_etiq_espuma4ite').Text;
             cdsEtiquetas.FieldByName('etiq_espuma5').AsString    :=
                          PCP_CD_M_ETQ.FieldByName('int_etiq_espuma5ite').Text;
             cdsEtiquetas.FieldByName('etiq_espuma6').AsString    :=
                          PCP_CD_M_ETQ.FieldByName('int_etiq_espuma6ite').Text;
             cdsEtiquetas.FieldByName('madeira').AsString              :=
                         PCP_CD_M_ETQ.FieldByName('int_etiq_madeiraite').Text;
             cdsEtiquetas.FieldByName('etiq_revestimento1').AsString   :=
                         PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento1ite').Text;
             cdsEtiquetas.FieldByName('etiq_revestimento2').AsString   :=
                         PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento2ite').Text;
             cdsEtiquetas.FieldByName('etiq_revestimento3').AsString   :=
                         PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento3ite').Text;
             cdsEtiquetas.FieldByName('etiq_recomendacoes_1').AsString :=
                         PCP_CD_M_ETQ.FieldByName('int_etiq_recomendacoes1ite').Text;
             cdsEtiquetas.FieldByName('etiq_recomendacoes_2').AsString :=
                         PCP_CD_M_ETQ.FieldByName('int_etiq_recomendacoes2ite').Text;
             cdsEtiquetas.FieldByName('etiq_revestimento4').AsString   :=
                         PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento4ite').Text;
             cdsEtiquetas.FieldByName('etiq_revestimento5').AsString   :=
                         PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento5ite').Text;
             cdsEtiquetas.FieldByName('etiq_revestimento6').AsString   :=
                         PCP_CD_M_ETQ.FieldByName('int_etiq_revestimento6ite').Text;
             cdsEtiquetas.FieldByName('data_fabricacao').AsDateTime :=
                         dmGeral.PCP_CD_M_OPR.FieldByName('dta_emissao').AsDateTime;

             cdsEtiquetas.FieldByName('imp_msg_etq').AsBoolean :=
                         PCP_CD_M_ETQ.FieldByName('int_impmsgetq').AsBoolean;

             cdsEtiquetas.FieldByName('imp_selo').AsBoolean :=
                         PCP_CD_M_ETQ.FieldByName('int_impselo').AsBoolean;

             cdsEtiquetas.FieldByName('imp_etq_simples').AsBoolean :=
                         PCP_CD_M_ETQ.FieldByName('int_impetqsimples').AsBoolean;

              if cbEtiqMaq.Checked then
                 cdsEtiquetas.FieldByName('path_etq_simples').AsString := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_nome_etq_maquete').AsString
              else
                 cdsEtiquetas.FieldByName('path_etq_simples').AsString := PCP_CD_M_ETQ.FieldByName('int_pathetqsimples').AsString;

             cdsEtiquetas.FieldByName('texto_livre1').AsString  := PCP_CD_M_ETQ.FieldByName('texto_livre1').AsString;
             cdsEtiquetas.FieldByName('texto_livre2').AsString  := PCP_CD_M_ETQ.FieldByName('texto_livre2').AsString;

             cdsEtiquetas.FieldByName('cod_int_etq').AsString     := PCP_CD_M_ETQ.FieldByName('cod_int_etq').AsString;
             cdsEtiquetas.FieldByName('cod_int_etq_rev').AsString := PCP_CD_M_ETQ.FieldByName('cod_int_etq_rev').AsString;
             cdsEtiquetas.FieldByName('descricao').AsString    := PCP_CD_M_ETQ.FieldByName('cod_int_etq_rev').AsString;
             cdsEtiquetas.FieldByName('etq_tecnica').AsBoolean := PCP_CD_M_ETQ.FieldByName('etq_tecnica').AsBoolean;
             cdsEtiquetas.FieldByName('inf_contato').AsString  := PCP_CD_M_ETQ.FieldByName('inf_contato').AsString;
             cdsEtiquetas.FieldByName('inf_remocao').AsString  := PCP_CD_M_ETQ.FieldByName('inf_remocao').AsString;
             cdsEtiquetas.FieldByName('inf_sac').AsString      := PCP_CD_M_ETQ.FieldByName('inf_sac').AsString;

             cdsEtiquetas.FieldByName('int_num_lote_opr').AsString :=
                 PCP_CD_M_ETQ.FieldByName('int_num_lote_opr').AsString;

             cdsEtiquetas.FieldByName('int_etiq_tipo_produto').AsString :=
                 PCP_CD_M_ETQ.FieldByName('int_etiq_tipo_produto').AsString;

             cdsEtiquetas.FieldByName('int_selecao').AsBoolean := true;

             cdsEtiquetas.Post;
             {
             cdsItens.First;
             while not cdsItens.Eof do
                begin
                  if cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean then
                      dmGeral.BusItens(0, cdsItens.FieldByName('ID_ITEM_ORIG').Text)
                  else
                      dmGeral.BusItens(0, cdsItens.FieldByName('ID_ITEM').Text);

                  dmgeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').Text);

                  cdsEtiquetas.Insert;

                  if trim(dmGeral.BUS_CD_C_GRU.FieldByName('NOME_SELO_ETQ').Text) <> '' then
                     begin
                       if not (FileExists(ExtractFilePath(Application.ExeName)+'emp'+
                                          dmGeral.CAD_CD_C_PARid_empresa.text+'\'+dmGeral.BUS_CD_C_GRU.FieldByName('NOME_SELO_ETQ').Text)) then
                          begin
                            ShowMessage('O selo do inmetro do item: ' + dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').Text + ', não foi encontrado.');
                            cdsEtiquetas.cancel;
                            dmGeral.BUS_CD_C_ITE.close;
                            dmGeral.BUS_CD_C_GRU.Close;
                            abort;
                          end;
                     end;

                  cdsEtiquetas.FieldByName('nome_selo').AsString            := dmGeral.BUS_CD_C_GRU.FieldByName('NOME_SELO_ETQ').Text;

                  dmSgq.BusClassEtiquetaCol(0,dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_CLASSIFICACAO_PRO').Text);
                  dmSgq.BusUsoEtiquetaCol(0,dmgeral.BUS_CD_C_ITE.FieldByName('etiq_id_cue').Text);

                  cdsEtiquetas.FieldByName('classificacao').AsString        :=
                         dmSgq.BUS_CD_C_CLE.FieldByName('DESCRICAO').Text;
                  dmSgq.BUS_CD_C_CLE.close;

                  cdsEtiquetas.FieldByName('desc_uso').AsString        :=
                         dmSgq.BUS_CD_C_CUE.FieldByName('DESCRICAO').Text;
                  dmSgq.BUS_CD_C_CUE.close;

                  cdsEtiquetas.FieldByName('etiq_modelo').AsString          :=
                         dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MODELO').Text;
                  if cdsItens.FieldByName('SOBRE_MEDIDA').AsBoolean then
                     begin
                       cdsEtiquetas.FieldByName('medidas').AsString              :=
                          cdsItensMEDIDA.Text;
                       cdsEtiquetas.FieldByName('etiq_espuma1').AsString         :=
                          cdsItensDAD_ESPUMA_1.Text;
                       cdsEtiquetas.FieldByName('etiq_espuma2').AsString         :=
                          cdsItensDAD_ESPUMA_2.Text;
                       cdsEtiquetas.FieldByName('etiq_espuma3').AsString         :=
                          cdsItensDAD_ESPUMA_3.Text;
                     end
                  else
                     begin
                       cdsEtiquetas.FieldByName('medidas').AsString              :=
                          dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MEDIDAS').Text;
                       cdsEtiquetas.FieldByName('etiq_espuma1').AsString         :=
                          dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA1').Text;
                       cdsEtiquetas.FieldByName('etiq_espuma2').AsString         :=
                          dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA2').Text;
                       cdsEtiquetas.FieldByName('etiq_espuma3').AsString         :=
                          dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA3').Text;
                     end;

                  cdsEtiquetas.FieldByName('madeira').AsString              :=
                         dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MADEIRA').Text;
                  cdsEtiquetas.FieldByName('etiq_revestimento1').AsString   :=
                         dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO1').Text;
                  cdsEtiquetas.FieldByName('etiq_revestimento2').AsString   :=
                         dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO2').Text;
                  cdsEtiquetas.FieldByName('etiq_revestimento3').AsString   :=
                         dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_REVESTIMENTO3').Text;
                  cdsEtiquetas.FieldByName('etiq_recomendacoes_1').AsString :=
                         dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_RECOMENDACOES_1').Text;
                  cdsEtiquetas.FieldByName('etiq_recomendacoes_2').AsString :=
                         dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_RECOMENDACOES_2').Text;

                  cdsEtiquetas.FieldByName('codigo_barra').AsString :=
                         cdsItensCODIGO_BARRA.Text;
                  cdsEtiquetas.FieldByName('data_fabricacao').AsString :=
                         cdsItensDTA_FABRICACAO.Text;


                  if dmGeral.BUS_CD_C_ITE.FieldByName('int_impmsgetq').AsBoolean then
                     begin
                        cdsEtiquetas.FieldByName('msg_etq1').AsString :=
                            dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq1').Text;
                        cdsEtiquetas.FieldByName('msg_etq2').AsString :=
                            dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq2').Text;
                        cdsEtiquetas.FieldByName('msg_etq3').AsString :=
                            dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq3').Text;
                        cdsEtiquetas.FieldByName('msg_etq4').AsString :=
                            dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq4').Text;
                        cdsEtiquetas.FieldByName('msg_etq5').AsString :=
                            dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq5').Text;
                        cdsEtiquetas.FieldByName('msg_etq6').AsString :=
                            dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq6').Text;
                        cdsEtiquetas.FieldByName('msg_etq7').AsString :=
                            dmgeral.BUS_CD_C_ITE.FieldByName('int_msg_etq7').Text;
                     end;

                  cdsEtiquetas.Post;

                  cdsItens.Next;
                end; }
          end;
     end
  else
     begin
       if cdsEtiquetas.Locate('codigo_barra',PCP_CD_M_ETQ.FieldByName('cod_barra').AsInteger,[]) then
          begin
            cdsEtiquetas.delete;
          end;
     end;
end;

procedure TPCP_FM_M_OPR_ETQ.PCP_FR_C_ETQ_1AfterPrintReport(Sender: TObject);
begin
  inherited;
  AtuEtq;
end;

procedure TPCP_FM_M_OPR_ETQ.PCP_FR_C_ETQ_1_C_MSGAfterPrintReport(
  Sender: TObject);
begin
  inherited;
  AtuEtq;
end;

procedure TPCP_FM_M_OPR_ETQ.PCP_FR_C_ETQ_2AfterPrintReport(Sender: TObject);
begin
  inherited;
  AtuEtq;
end;

procedure TPCP_FM_M_OPR_ETQ.PCP_FR_C_ETQ_3AfterPrintReport(Sender: TObject);
begin
  inherited;
  AtuEtq;
end;

procedure TPCP_FM_M_OPR_ETQ.pReportAfterPrintReport(Sender: TObject);
begin
  AtuEtq;
end;

procedure TPCP_FM_M_OPR_ETQ.Reimprimiretiqueta1Click(Sender: TObject);
begin
  inherited;
  if not (cdsEtiquetas.IsEmpty) then
     begin
        ShowMessage('Para poder reimprimir uma etiqueta é preciso desmarque todas as etiquetas!');
        exit;
     end;

  if PCP_CD_M_ETQ.IsEmpty then
     begin
       Showmessage('Não há etiqueta para ser reimpressa!');
       exit;
     end;

  if not (PCP_CD_M_ETQ.FieldByName('impressa').AsBoolean) then
     begin
       Showmessage('Só é permitido reimprimir uma etiqueta que já tenha sido impressa!');
       exit;
     end;

  PCP_FM_M_OPR_ETQ := TPCP_FM_M_OPR_ETQ.Create(Self);
  PCP_FM_M_OPR_ETQ.ShowModal;
  PCP_FM_M_OPR_ETQ.Free;

end;

procedure TPCP_FM_M_OPR_ETQ.SpeedButton2Click(Sender: TObject);
var
  ProdEncontrado: Boolean;
begin
  inherited;

  ProdEncontrado := false;

  if trim(txtProduto.text) = '' then
     begin
       Showmessage('Digite o código do produto que deseja procurar!');
       exit;
     end;

  if BUS_CD_M_OPR_ETQ.IsEmpty then
     begin
       Showmessage('Não há produto para ser procurado!');
       exit;
     end;

  if xNovaBusca = true then
     BUS_CD_M_OPR_ETQ.Next;

  while not (BUS_CD_M_OPR_ETQ.Eof) do
      begin
         if BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').AsString = txtProduto.text then
            begin
              ProdEncontrado := true;
              break;
            end;
         BUS_CD_M_OPR_ETQ.next
      end;

  if ProdEncontrado = false then
      begin
        ShowMessage('Produto não encontrado!');
      end;
end;

procedure TPCP_FM_M_OPR_ETQ.btnLocalizarClick(Sender: TObject);
var
  ProdEncontrado: Boolean;
begin
  inherited;

  ProdEncontrado := false;

  if trim(txtProduto.text) = '' then
     begin
       Showmessage('Digite o código do produto que deseja procurar!');
       exit;
     end;

  xNovaBusca := true;

  if BUS_CD_M_OPR_ETQ.IsEmpty then
     begin
       Showmessage('Não há produto para ser procurado!');
       exit;
     end;

   if xNovaBusca then
      BUS_CD_M_OPR_ETQ.First;

   while not (BUS_CD_M_OPR_ETQ.Eof) do
      begin
         if BUS_CD_M_OPR_ETQ.FieldByName('ID_ITEM').AsString = txtProduto.text then
            begin
              ProdEncontrado := true;
              break;
            end;
         BUS_CD_M_OPR_ETQ.next
      end;
   if ProdEncontrado = false then
      begin
        ShowMessage('Produto não encontrado!');
      end;

end;

procedure TPCP_FM_M_OPR_ETQ.txtItemOriButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       txtItemOri.Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
       lblItemDescOrig.Caption :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_OPR_ETQ.txtItemOriExit(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused  then
    begin
      exit;
    end;

  if (trim(txtItemOri.text) = '') or (trim(txtItemOri.text) = '0') then
     begin
       Showmessage('O campo "Item" deve ser preenchido.');
       txtItemOri.Setfocus;
       exit;
     end;

  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItemOri.Text]));

  if dmGeral.BUS_CD_C_ITE.IsEmpty then
     begin
       ShowMessage('Item não encontrado.');
       txtItemOri.SetFocus;
       exit;
     end;

  if dmGeral.BUS_CD_C_ITE.FieldByName('ATIVO').AsBoolean = false then
     begin
       ShowMessage('Item inativo.');
       txtItemOri.SetFocus;
       exit;
     end;

  if dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger = 9 then
     begin
       ShowMessage('Não é permitido item de serviço.');
       txtItemOri.SetFocus;
       exit;
     end;


  lblItemDescOrig.Caption :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  lblUnd.Caption :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;


  txtSobMedida.Text   :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_MEDIDAS').Text;
  txtLinha1.Text :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA1').Text;
  txtLinha2.Text :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA2').Text;
  txtLinha3.Text :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA3').Text;

  txtLinha4.Text :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA4').Text;
  txtLinha5.Text :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA5').Text;
  txtLinha6.Text :=
                    dmgeral.BUS_CD_C_ITE.FieldByName('ETIQ_ESPUMA6').Text;

  dmgeral.BUS_CD_C_ITE.close;
end;

procedure TPCP_FM_M_OPR_ETQ.wwDBGrid1FieldChanged(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Field.Name = 'BUS_CD_M_OPR_ETQint_selecao' then
     begin
       PCP_CD_M_ETQ.First;
       if Field.Value = true then
          begin
            if not PCP_CD_M_ETQ.IsEmpty then
               begin

                 {if trim(PCP_CD_M_ETQ.FieldByName('int_nome_layout_etq').AsString) = 'Etiquetas - Colchão colchonete' then
                    begin
                      if not (PCP_CD_M_ETQ.FieldByName('int_impselo').AsBoolean) then
                         begin
                           ShowMessage('Para etiqueta "Colchonete" o grupo do item deve estar configurado para imprimir o selo do inmetro.');
                           exit;
                         end;
                    end; }

                 if (trim(PCP_CD_M_ETQ.FieldByName('int_nome_layout_etq').AsString) = 'Etiquetas - Colchão bordado')    or
                    (trim(PCP_CD_M_ETQ.FieldByName('int_nome_layout_etq').AsString) = 'Etiquetas - Colchão colchonete') then
                    begin
                       if PCP_CD_M_ETQ.FieldByName('int_impselo').AsBoolean then
                          begin
                            if trim(PCP_CD_M_ETQ.FieldByName('int_nomeseloetq').text) = '' then
                               begin
                                 ShowMessage('Não foi encontrado o nome do selo no grupo do item.');
                                 abort;
                               end;

                            if not FileExists(ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\'+PCP_CD_M_ETQ.FieldByName('int_nomeseloetq').text) then
                               begin
                                 ShowMessage('O selo do Inmetro não foi encontrado no caminho especificado: ' + #13 +
                                              ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PARid_empresa.text+'\'+PCP_CD_M_ETQ.FieldByName('int_nomeseloetq').text);
                                 abort;
                               end;
                          end;
                    end;

                 while not PCP_CD_M_ETQ.eof do
                    begin
                      PCP_CD_M_ETQ.edit;
                      PCP_CD_M_ETQ.FieldByName('int_selecao').AsBoolean := true;
                      PCP_CD_M_ETQ.Next;
                    end;
               end;
          end
       else
          begin
             if not PCP_CD_M_ETQ.IsEmpty then
                begin
                  while not PCP_CD_M_ETQ.eof do
                     begin
                       PCP_CD_M_ETQ.edit;
                       PCP_CD_M_ETQ.FieldByName('int_selecao').AsBoolean := false;
                       PCP_CD_M_ETQ.Next;
                     end;
                end;
          end;
       PCP_CD_M_ETQ.First;

       cdsEtiquetas.IndexFieldNames := 'CODIGO_BARRA';
     end;

end;

procedure TPCP_FM_M_OPR_ETQ.wwDBGrid1RowChanged(Sender: TObject);
begin
  inherited;
  ExibirEtiqItem;
end;

end.

