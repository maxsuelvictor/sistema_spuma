unit FAT_UN_R_PVE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, frxClass, frxDBSet, frxExportPDF, frxExportXLS,
  Vcl.Menus, Data.DB, Datasnap.DBClient;

type
  TFAT_FM_R_PVE = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsTipoEstoque: TTabSheet;
    tsCondicaoPagamento: TTabSheet;
    lblCondicaoPagamentoDisponivel: TLabel;
    lblCondicaoPagamentoSelecionado: TLabel;
    lboxCondicaoPagamentoSelecionada: TListBox;
    lboxCondicaoPagamentoDisponivel: TListBox;
    tsVendedor: TTabSheet;
    tsPerfilCliente: TTabSheet;
    lblPerfilClienteDisponiveis: TLabel;
    lblPerfilClienteSelecionado: TLabel;
    lboxPerfilClienteSelecionado: TListBox;
    lboxPerfilClienteDisponiveis: TListBox;
    tsFornecedor: TTabSheet;
    tsCfop: TTabSheet;
    lblCfopDisponiveis: TLabel;
    lboxCfopDisponiveis: TListBox;
    lboxCfopSelecionado: TListBox;
    lblCfopSelecionado: TLabel;
    lblVendedoresDisponiveis: TLabel;
    lboxVendedores: TListBox;
    lblTipoEstoqueDisponiveis: TLabel;
    lboxTipoEstoqueDisponiveis: TListBox;
    lboxTipoEstoqueSelecionado: TListBox;
    lblTipoEstoqueSelecionado: TLabel;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    FAT_XL_R_PVE: TfrxXLSExport;
    FAT_PD_R_PVE: TfrxPDFExport;
    FAT_DB_R_PVE_01: TfrxDBDataset;
    FAT_FR_R_PVE_CLI: TfrxReport;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelTipoEstoque: TPopupMenu;
    btnTodosTipoEstoque: TMenuItem;
    pmRemoverTipoEstoque: TPopupMenu;
    btnRemoverTiposEstoque: TMenuItem;
    pmSelCfop: TPopupMenu;
    btnSelCfop: TMenuItem;
    pmRemoverCfop: TPopupMenu;
    btnRemoverCfop: TMenuItem;
    pmSelCondicaoPag: TPopupMenu;
    btnSelFormaPag: TMenuItem;
    pmRemoverCondicaoPag: TPopupMenu;
    btnRemoverFormaPag: TMenuItem;
    pmSelPerfilCliente: TPopupMenu;
    btnSelPerfilCliente: TMenuItem;
    pmRemoverPerfilCliente: TPopupMenu;
    btnRemoverPerfilCliente: TMenuItem;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    pmRemoverFornecedor: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    FAT_FR_R_PVE_VEN: TfrxReport;
    FAT_FR_R_PVE_CPG: TfrxReport;
    FAT_FR_R_PVE_GRU: TfrxReport;
    FAT_FR_R_PVE_EST: TfrxReport;
    FAT_FR_R_PVE_ITE: TfrxReport;
    FAT_FR_R_PVE_FOR: TfrxReport;
    FAT_FR_R_PVE_PER: TfrxReport;
    FAT_FR_R_PVE_CLI_ITE: TfrxReport;
    FAT_FR_R_PVE_FOR_ITE: TfrxReport;
    FAT_FR_R_PVE_ITE_CLI: TfrxReport;
    FAT_FR_R_PVE_RES_VEN: TfrxReport;
    FAT_FR_R_PVE_RES_GRP: TfrxReport;
    FAT_DB_R_PVE_02: TfrxDBDataset;
    FAT_DB_R_PVE_04: TfrxDBDataset;
    FAT_DB_R_PVE_03: TfrxDBDataset;
    FAT_DB_R_PVE_05: TfrxDBDataset;
    FAT_FR_R_PVE_PER_REG: TfrxReport;
    tsRegiao: TTabSheet;
    lboxRegDisp: TListBox;
    lboxRegSel: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    pmRemoverRegiao: TPopupMenu;
    btnRemoverTodosRegiao: TMenuItem;
    pmSelTodasRegiao: TPopupMenu;
    btnSelTodosRegiao: TMenuItem;
    FAT_FR_R_PVE_CID: TfrxReport;
    gbRelatorio: TGroupBox;
    cbbTipoRel: TComboBox;
    Label5: TLabel;
    cbbQuebra: TComboBox;
    Label6: TLabel;
    cbbQuebra2: TComboBox;
    Label7: TLabel;
    FAT_FR_R_PVE_GER: TfrxReport;
    FAT_CD_R_PVE_01: TClientDataSet;
    FAT_CD_R_PVE_02: TClientDataSet;
    FAT_CD_R_PVE_03: TClientDataSet;
    FAT_CD_R_PVE_04: TClientDataSet;
    FAT_CD_R_PVE_05: TClientDataSet;
    FAT_FR_R_PVE_CLI_NFE_ITE: TfrxReport;
    FAT_CD_R_PVE_06: TClientDataSet;
    FAT_DB_R_PVE_06: TfrxDBDataset;
    FAT_FR_R_PVE_RES_FPG: TfrxReport;
    FAT_CD_R_PVE_07: TClientDataSet;
    FAT_DB_R_PVE_07: TfrxDBDataset;
    Cliente: TTabSheet;
    lboxCliente: TListBox;
    Label8: TLabel;
    pmExcluirCliente: TPopupMenu;
    btnRemoverRegistroCliente: TMenuItem;
    tsProduto: TTabSheet;
    Label9: TLabel;
    lboxProduto: TListBox;
    pmRemoverProduto: TPopupMenu;
    MenuItem1: TMenuItem;
    FAT_FR_R_PVE_GER_FPG: TfrxReport;
    FAT_CD_R_PVE_08: TClientDataSet;
    FAT_DB_R_PVE_08: TfrxDBDataset;
    tsRota: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    lboxRotDisp: TListBox;
    lboxRotSel: TListBox;
    pmRemoverRota: TPopupMenu;
    MenuItem2: TMenuItem;
    pmSelRota: TPopupMenu;
    MenuItem3: TMenuItem;
    FAT_CD_R_NOT_ROT: TClientDataSet;
    FAT_DB_R_NOT_ROT: TfrxDBDataset;
    Label12: TLabel;
    cbbOficina: TComboBox;
    FAT_CD_R_PVE_QTD_CLI: TClientDataSet;
    chbExibirQtdeCliente: TCheckBox;
    chbExibirAuxVend: TCheckBox;
    FAT_CD_R_PVE_AXC: TClientDataSet;
    FAT_CD_R_PVE_AXP: TClientDataSet;
    FAT_CD_R_PVE_AXV: TClientDataSet;
    FAT_CD_R_PVE_AXCint_id_empresa: TIntegerField;
    FAT_CD_R_PVE_AXCint_nomeemp: TWideStringField;
    FAT_CD_R_PVE_AXCnumero: TIntegerField;
    FAT_CD_R_PVE_AXCid_pedido_venda: TIntegerField;
    FAT_CD_R_PVE_AXCdta_emissao: TDateField;
    FAT_CD_R_PVE_AXCid_condicao_pag: TIntegerField;
    FAT_CD_R_PVE_AXCint_nomecpg: TWideStringField;
    FAT_CD_R_PVE_AXCid_vendedor: TIntegerField;
    FAT_CD_R_PVE_AXCint_nomevnd: TWideStringField;
    FAT_CD_R_PVE_AXCid_emitente: TIntegerField;
    FAT_CD_R_PVE_AXCint_nomecli: TWideStringField;
    FAT_CD_R_PVE_AXCid_perfil_cli: TIntegerField;
    FAT_CD_R_PVE_AXCint_nomepec: TWideStringField;
    FAT_CD_R_PVE_AXCid_regiao: TIntegerField;
    FAT_CD_R_PVE_AXCint_nomereg: TWideStringField;
    FAT_CD_R_PVE_AXCid_rota: TIntegerField;
    FAT_CD_R_PVE_AXCint_nomerot: TWideStringField;
    FAT_CD_R_PVE_AXCestado: TWideStringField;
    FAT_CD_R_PVE_AXCint_nomecidade: TWideMemoField;
    FAT_CD_R_PVE_AXCvlr_bruto: TFloatField;
    FAT_CD_R_PVE_AXCvlr_desconto: TFMTBCDField;
    FAT_CD_R_PVE_AXCvlr_liquido: TFloatField;
    FAT_CD_R_PVE_AXCqtde: TFloatField;
    FAT_CD_R_PVE_AXCqtde_dev: TFloatField;
    FAT_DB_R_PVE_AXC: TfrxDBDataset;
    FAT_CD_R_PVE_AXVint_id_empresa: TIntegerField;
    FAT_CD_R_PVE_AXVint_nomeemp: TWideStringField;
    FAT_CD_R_PVE_AXVnumero: TIntegerField;
    FAT_CD_R_PVE_AXVid_pedido_venda: TIntegerField;
    FAT_CD_R_PVE_AXVdta_emissao: TDateField;
    FAT_CD_R_PVE_AXVid_condicao_pag: TIntegerField;
    FAT_CD_R_PVE_AXVint_nomecpg: TWideStringField;
    FAT_CD_R_PVE_AXVid_vendedor: TIntegerField;
    FAT_CD_R_PVE_AXVint_nomevnd: TWideStringField;
    FAT_CD_R_PVE_AXVid_emitente: TIntegerField;
    FAT_CD_R_PVE_AXVint_nomecli: TWideStringField;
    FAT_CD_R_PVE_AXVid_perfil_cli: TIntegerField;
    FAT_CD_R_PVE_AXVint_nomepec: TWideStringField;
    FAT_CD_R_PVE_AXVid_regiao: TIntegerField;
    FAT_CD_R_PVE_AXVint_nomereg: TWideStringField;
    FAT_CD_R_PVE_AXVid_rota: TIntegerField;
    FAT_CD_R_PVE_AXVint_nomerot: TWideStringField;
    FAT_CD_R_PVE_AXVestado: TWideStringField;
    FAT_CD_R_PVE_AXVint_nomecidade: TWideMemoField;
    FAT_CD_R_PVE_AXVvlr_bruto: TFloatField;
    FAT_CD_R_PVE_AXVvlr_desconto: TFMTBCDField;
    FAT_CD_R_PVE_AXVvlr_liquido: TFloatField;
    FAT_CD_R_PVE_AXVqtde: TFloatField;
    FAT_CD_R_PVE_AXVqtde_dev: TFloatField;
    FAT_DB_R_PVE_AXP: TfrxDBDataset;
    FAT_DB_R_PVE_AXV: TfrxDBDataset;
    FAT_CD_R_PVE_AXD: TClientDataSet;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    IntegerField4: TIntegerField;
    WideStringField2: TWideStringField;
    IntegerField5: TIntegerField;
    WideStringField3: TWideStringField;
    IntegerField6: TIntegerField;
    WideStringField4: TWideStringField;
    IntegerField7: TIntegerField;
    WideStringField5: TWideStringField;
    IntegerField8: TIntegerField;
    WideStringField6: TWideStringField;
    IntegerField9: TIntegerField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideMemoField1: TWideMemoField;
    FloatField1: TFloatField;
    FMTBCDField1: TFMTBCDField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FAT_DB_R_PVE_AXD: TfrxDBDataset;
    FAT_CD_R_PVE_AXPid_pedido: TIntegerField;
    FAT_CD_R_PVE_AXPid_empresa: TIntegerField;
    FAT_CD_R_PVE_AXPdta_pedido: TDateField;
    FAT_CD_R_PVE_AXPid_tipo_mov_estoque: TIntegerField;
    FAT_CD_R_PVE_AXPid_vendedor: TIntegerField;
    FAT_CD_R_PVE_AXPobs: TWideStringField;
    FAT_CD_R_PVE_AXPvlr_bruto: TFMTBCDField;
    FAT_CD_R_PVE_AXPvlr_desconto: TFMTBCDField;
    FAT_CD_R_PVE_AXPper_desconto: TFloatField;
    FAT_CD_R_PVE_AXPvlr_liquido: TFMTBCDField;
    FAT_CD_R_PVE_AXPhor_pedido: TSQLTimeStampField;
    FAT_CD_R_PVE_AXPid_condicao_pag: TIntegerField;
    FAT_CD_R_PVE_AXPpcp_obs: TWideStringField;
    FAT_CD_R_PVE_AXPpcp_id_opr: TIntegerField;
    FAT_CD_R_PVE_AXPsituacao: TIntegerField;
    FAT_CD_R_PVE_AXPsituacao_aprovacao: TIntegerField;
    FAT_CD_R_PVE_AXPid_atendente: TIntegerField;
    FAT_CD_R_PVE_AXPid_responsavel: TIntegerField;
    FAT_CD_R_PVE_AXPid_cliente: TIntegerField;
    FAT_CD_R_PVE_AXPtipo_restricao: TWideStringField;
    FAT_CD_R_PVE_AXPid_almoxarifado: TIntegerField;
    FAT_CD_R_PVE_AXPjustificativa: TWideStringField;
    FAT_CD_R_PVE_AXPid_usuario_lib: TIntegerField;
    FAT_CD_R_PVE_AXPcod_lme: TWideStringField;
    FAT_CD_R_PVE_AXPrev_lme: TWideStringField;
    FAT_CD_R_PVE_AXPorigem: TIntegerField;
    FAT_CD_R_PVE_AXPdispositivo: TWideStringField;
    FAT_CD_R_PVE_AXPgps_latitude: TFloatField;
    FAT_CD_R_PVE_AXPgps_longitude: TFloatField;
    FAT_CD_R_PVE_AXPcubagem: TFloatField;
    FAT_CD_R_PVE_AXPid_orcamento: TIntegerField;
    FAT_CD_R_PVE_AXPenvia_carga: TBooleanField;
    FAT_CD_R_PVE_AXPdta_prev_entrega: TDateField;
    FAT_CD_R_PVE_AXPid_abertura: TIntegerField;
    FAT_CD_R_PVE_AXPdias_cpg_prazo: TIntegerField;
    FAT_CD_R_PVE_AXPoffline: TBooleanField;
    FAT_CD_R_PVE_AXPconferido: TBooleanField;
    FAT_CD_R_PVE_AXPid_conf: TIntegerField;
    FAT_CD_R_PVE_AXPdta_conf: TDateField;
    FAT_CD_R_PVE_AXPhor_conf: TTimeField;
    FAT_CD_R_PVE_AXPresultado_conf: TIntegerField;
    FAT_CD_R_PVE_AXPid_resp_conf: TIntegerField;
    FAT_CD_R_PVE_AXPid_propriedade: TIntegerField;
    FAT_CD_R_PVE_AXPid_mkt: TIntegerField;
    FAT_CD_R_PVE_AXPvlr_frete: TFMTBCDField;
    FAT_CD_R_PVE_AXPmod_frete: TIntegerField;
    FAT_CD_R_PVE_AXPcan_usuario: TIntegerField;
    FAT_CD_R_PVE_AXPcan_data: TDateField;
    FAT_CD_R_PVE_AXPcan_motivo: TWideStringField;
    FAT_CD_R_PVE_AXPcan_hora: TTimeField;
    FAT_CD_R_PVE_AXPid_pedido_temp_mob: TIntegerField;
    FAT_CD_R_PVE_AXPsemana: TIntegerField;
    FAT_CD_R_PVE_AXPid_pedido_mob: TIntegerField;
    FAT_CD_R_PVE_AXPid_motorista: TIntegerField;
    FAT_CD_R_PVE_AXPid_placa: TWideStringField;
    FAT_CD_R_PVE_AXPvlr_credito: TFMTBCDField;
    FAT_CD_R_PVE_AXPvlr_desc_especial: TFMTBCDField;
    FAT_CD_R_PVE_AXPvlr_desc_basico: TFMTBCDField;
    FAT_CD_R_PVE_AXPint_nomecli: TWideStringField;
    tsGrupo: TTabSheet;
    lboxGrupo: TListBox;
    Label13: TLabel;
    pmRemoverGrupo: TPopupMenu;
    btnExcluirGrupo: TMenuItem;
    tsMecanico: TTabSheet;
    lboxMecanico: TListBox;
    Label14: TLabel;
    pmRemoverMecanico: TPopupMenu;
    btnExcluirMecanico: TMenuItem;
    chbVendaFunLog: TCheckBox;
    FAT_CD_R_PVE_TOL_GRU: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
    procedure lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnTodosTipoEstoqueClick(Sender: TObject);
    procedure btnRemoverTiposEstoqueClick(Sender: TObject);
    procedure btnSelCfopClick(Sender: TObject);
    procedure btnRemoverCfopClick(Sender: TObject);
    procedure btnSelFormaPagClick(Sender: TObject);
    procedure btnRemoverFormaPagClick(Sender: TObject);
    procedure lboxCondicaoPagamentoDisponivelDblClick(Sender: TObject);
    procedure lboxCondicaoPagamentoSelecionadaDblClick(Sender: TObject);
    procedure btnSelPerfilClienteClick(Sender: TObject);
    procedure btnRemoverPerfilClienteClick(Sender: TObject);
    procedure btnRemoverVendedorClick(Sender: TObject);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxCfopDisponiveisDblClick(Sender: TObject);
    procedure lboxCfopSelecionadoDblClick(Sender: TObject);
    procedure lboxPerfilClienteDisponiveisDblClick(Sender: TObject);
    procedure lboxPerfilClienteSelecionadoDblClick(Sender: TObject);
    procedure btnRemoverTodosRegiaoClick(Sender: TObject);
    procedure btnSelTodosRegiaoClick(Sender: TObject);
    procedure lboxRegDispDblClick(Sender: TObject);
    procedure lboxRegSelClick(Sender: TObject);
    procedure cbbTipoRelClick(Sender: TObject);
    procedure cbbQuebraClick(Sender: TObject);
    procedure lboxClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroClienteClick(Sender: TObject);
    procedure lboxProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuItem1Click(Sender: TObject);
    procedure lboxRotDispClick(Sender: TObject);
    procedure lboxRotSelClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure FAT_FR_R_PVE_GERBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_ITEBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_FORBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_CLI_ITEBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_ITE_CLIBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_FOR_ITEBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_RES_VENBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_GER_FPGBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_RES_FPGBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_CLI_NFE_ITEBeforePrint(Sender: TfrxReportComponent);
    procedure FAT_FR_R_PVE_GRUBeforePrint(Sender: TfrxReportComponent);
    procedure btnExcluirGrupoClick(Sender: TObject);
    procedure lboxMecanicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirMecanicoClick(Sender: TObject);
    procedure lboxGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FAT_DB_R_PVE_05CheckEOF(Sender: TObject; var Eof: Boolean);
  private
    { Private declarations }
    procedure MontarListaQuebraVenda;
    var
      codEmpresa:String;
      codGruN1,codGruN2,codEmp:String;
      vlrDescN1,vlrDescN2,vlrLiqN1,vlrLiqN2:Currency;
  public
    { Public declarations }
  end;

var
  FAT_FM_R_PVE: TFAT_FM_R_PVE;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FUN, PSQ_UN_X_FOR, FAT_RN_R_PVE, uDmSgq,
  PSQ_UN_X_CLI, PSQ_UN_X_ITE, PSQ_UN_X_GRU;

procedure TFAT_FM_R_PVE.btnRemoverTodosEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpresaSelecionada.ClearSelection;

  if lboxEmpresaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Items.Count - 1 do
           begin
             lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[i]);
             lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.MontarListaQuebraVenda;
begin

  cbbQuebra.Clear;
  cbbQuebra2.Clear;
  if cbbTipoRel.Items[cbbTipoRel.ItemIndex]='01 - Analítico' then
    begin
      cbbQuebra.AddItem('01 - Cidade',nil);
      cbbQuebra.AddItem('02 - Cliente',nil);
      //cbbQuebra.AddItem('03 - Cond. Pag',nil);
      cbbQuebra.AddItem('04 - Estado',nil);
      cbbQuebra.AddItem('05 - Fornecedor',nil);
      cbbQuebra.AddItem('06 - Grupo',nil);
      cbbQuebra.AddItem('07 - Item',nil);
      cbbQuebra.AddItem('08 - Perfil',nil);
      cbbQuebra.AddItem('09 - Vendedor',nil);
      cbbQuebra.AddItem('10 - Forma de Pag.',nil);
      cbbQuebra.AddItem('11 - Rota',nil);
      cbbQuebra.AddItem('12 - Mecânico',nil);

      if cbbQuebra.Items[cbbQuebra.ItemIndex]='02 - Cliente' then
        begin
          cbbQuebra2.AddItem('00 - Nenhum',nil);
          cbbQuebra2.AddItem('01 - Cidade',nil);
          cbbQuebra2.AddItem('02 - Cliente',nil);
         // cbbQuebra2.AddItem('03 - Cond. Pag',nil);
          cbbQuebra2.AddItem('04 - Estado',nil);
          cbbQuebra2.AddItem('05 - Fornecedor',nil);
          cbbQuebra2.AddItem('06 - Grupo',nil);
          cbbQuebra2.AddItem('07 - Item',nil);
          cbbQuebra2.AddItem('08 - Perfil',nil);
          cbbQuebra2.AddItem('09 - Vendedor',nil);
          cbbQuebra2.AddItem('10 - Nota/Item',nil);
          cbbQuebra2.AddItem('12 - Mecânico',nil);
        end
      else if cbbQuebra.Items[cbbQuebra.ItemIndex]='10 - Forma de Pag.'  then
        begin
          cbbQuebra2.AddItem('00 - Nenhum',nil);
          cbbQuebra2.AddItem('01 - Cidade',nil);
          cbbQuebra2.AddItem('02 - Cliente',nil);
         // cbbQuebra2.AddItem('03 - Cond. Pag',nil);
          cbbQuebra2.AddItem('08 - Perfil',nil);
          cbbQuebra2.AddItem('09 - Vendedor',nil);
        end
      else
        begin
          cbbQuebra2.AddItem('00 - Nenhum',nil);
          cbbQuebra2.AddItem('01 - Cidade',nil);
          cbbQuebra2.AddItem('02 - Cliente',nil);
         // cbbQuebra2.AddItem('03 - Cond. Pag',nil);
          cbbQuebra2.AddItem('04 - Estado',nil);
          cbbQuebra2.AddItem('05 - Fornecedor',nil);
          cbbQuebra2.AddItem('06 - Grupo',nil);
          cbbQuebra2.AddItem('07 - Item',nil);
          cbbQuebra2.AddItem('08 - Perfil',nil);
          cbbQuebra2.AddItem('09 - Vendedor',nil);
          cbbQuebra2.AddItem('12 - Mecânico',nil);
        end;
    end;

  if cbbTipoRel.Items[cbbTipoRel.ItemIndex]='02 - Resumo' then
    begin
      cbbQuebra.AddItem('01 - Grupo',nil);
      cbbQuebra.AddItem('02 - Vendedor',nil);
      cbbQuebra.AddItem('03 - Forma Pag.',nil);
      cbbQuebra2.AddItem('00 - Nenhum',nil);
    end;

  cbbQuebra.ItemIndex := 0;
  cbbQuebra2.ItemIndex := 0;
end;

procedure TFAT_FM_R_PVE.btnRemoverTodosRegiaoClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxRegSel.ClearSelection;

  if lboxRegSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxRegSel.Items.Count > 0 then
     begin
       for i := 0 to lboxRegSel.Items.Count - 1 do
           begin
             lboxRegDisp.Items.Add(lboxRegSel.Items[i]);
             lboxRegSel.Items.Delete(lboxRegSel.ItemIndex);
           end;
       lboxRegSel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.btnSelCfopClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCfopDisponiveis.ClearSelection;
  if lboxCfopDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCfopDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxCfopDisponiveis.Items.Count - 1 do
           begin
             lboxCfopSelecionado.Items.Add(lboxCfopDisponiveis.Items[i]);
             lboxCfopDisponiveis.Items.Delete(lboxCfopDisponiveis.ItemIndex);
           end;
       lboxCfopDisponiveis.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.btnSelFormaPagClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCondicaoPagamentoDisponivel.ClearSelection;
  if lboxCondicaoPagamentoDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCondicaoPagamentoDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxCondicaoPagamentoDisponivel.Items.Count - 1 do
           begin
             lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[i]);
             lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
           end;
       lboxCondicaoPagamentoDisponivel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.FAT_DB_R_PVE_05CheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
   inherited;


  if (chbExibirQtdeCliente.Checked=false) then
    begin
        if ( codGruN1 <> copy(FAT_CD_R_PVE_05.FieldByName('id_grupo_n1').AsString,1,1)) then
          begin
            codGruN1 := copy(FAT_CD_R_PVE_05.FieldByName('id_grupo_n1').AsString,1,1);

            FAT_CD_R_PVE_TOL_GRU.Close;
            FAT_CD_R_PVE_TOL_GRU.Data :=
            FAT_CD_R_PVE_TOL_GRU.DataRequest(
                         VarArrayOf([xCondEmpresa, deInicial.text,deFinal.text, xCondTipoEstoque, xCondCfop,
                                     xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                                     xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,'',xCondRota,cbboficina.ItemIndex,'',xCondGrupo,xCondMecanico,codGruN1]));

            vlrDescN1 := FAT_CD_R_PVE_TOL_GRU.FieldByname('VLR_DESCONTO_TOTAL').AsCurrency;
            vlrLiqN1 := FAT_CD_R_PVE_TOL_GRU.FieldByName('VLR_LIQUIDO_TOTAL').AsCurrency;

            FAT_FR_R_PVE_RES_GRP.Variables['vlr_desconto_total_n1'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrDescN1));
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_liquido_total_n1'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrLiqN1));

          end
        else
          begin
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_desconto_total_n1'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrDescN1));
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_liquido_total_n1'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrLiqN1));

          end;
        if ( codGruN2 <> copy(FAT_CD_R_PVE_05.FieldByName('id_grupo_n2').AsString,1,4)) then
          begin
            codGruN2 := copy(FAT_CD_R_PVE_05.FieldByName('id_grupo_n2').AsString,1,4);

            FAT_CD_R_PVE_TOL_GRU.Close;
            FAT_CD_R_PVE_TOL_GRU.Data :=
            FAT_CD_R_PVE_TOL_GRU.DataRequest(
                         VarArrayOf([xCondEmpresa, deInicial.text,deFinal.text, xCondTipoEstoque, xCondCfop,
                                     xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                                     xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,'',xCondRota,cbboficina.ItemIndex,'',xCondGrupo,xCondMecanico,codGruN2]));

            vlrDescN2 := FAT_CD_R_PVE_TOL_GRU.FieldByname('VLR_DESCONTO_TOTAL').AsCurrency;
            vlrLiqN2 := FAT_CD_R_PVE_TOL_GRU.FieldByName('VLR_LIQUIDO_TOTAL').AsCurrency;

            FAT_FR_R_PVE_RES_GRP.Variables['vlr_desconto_total_n2'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrDescN2));
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_liquido_total_n2'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrLiqN2));

          end
        else
          begin
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_desconto_total_n2'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrDescN2));
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_liquido_total_n2'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrLiqN2));

          end;
    end
  else
    begin
        if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_05.FieldByName('INT_ID_EMPRESA').AsString,[]) then
          begin
            FAT_FR_R_PVE_RES_GRP.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
          end
        else
          begin
           FAT_FR_R_PVE_RES_GRP.Variables['qtde_cliente'] := QuotedStr('0');
         end;



         if (codEmp <> FAT_CD_R_PVE_05.FieldByName('int_id_empresa').AsString) or
            (codGruN1 <> copy(FAT_CD_R_PVE_05.FieldByName('id_grupo_n1').AsString,1,1)) then
          begin
            codEmp := FAT_CD_R_PVE_05.FieldByName('int_id_empresa').AsString;
            codGruN1 := copy(FAT_CD_R_PVE_05.FieldByName('id_grupo_n1').AsString,1,1);

            FAT_CD_R_PVE_TOL_GRU.Close;
            FAT_CD_R_PVE_TOL_GRU.Data :=
            FAT_CD_R_PVE_TOL_GRU.DataRequest(
                         VarArrayOf([codEmp, deInicial.text,deFinal.text, xCondTipoEstoque, xCondCfop,
                                     xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                                     xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,'',xCondRota,cbboficina.ItemIndex,'',xCondGrupo,xCondMecanico,codGruN1]));

            vlrDescN1 := FAT_CD_R_PVE_TOL_GRU.FieldByname('VLR_DESCONTO_TOTAL').AsCurrency;
            vlrLiqN1 := FAT_CD_R_PVE_TOL_GRU.FieldByName('VLR_LIQUIDO_TOTAL').AsCurrency;

            FAT_FR_R_PVE_RES_GRP.Variables['vlr_desconto_total_n1'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrDescN1));
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_liquido_total_n1'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrLiqN1));

          end
        else
          begin
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_desconto_total_n1'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrDescN1));
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_liquido_total_n1'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrLiqN1));

          end;
        if (codEmp <> FAT_CD_R_PVE_05.FieldByName('int_id_empresa').AsString) or
          ( codGruN2 <> copy(FAT_CD_R_PVE_05.FieldByName('id_grupo_n2').AsString,1,4)) then
          begin
            codEmp := FAT_CD_R_PVE_05.FieldByName('int_id_empresa').AsString;
            codGruN2 := copy(FAT_CD_R_PVE_05.FieldByName('id_grupo_n2').AsString,1,4);

            FAT_CD_R_PVE_TOL_GRU.Close;
            FAT_CD_R_PVE_TOL_GRU.Data :=
            FAT_CD_R_PVE_TOL_GRU.DataRequest(
                         VarArrayOf([codEmp, deInicial.text,deFinal.text, xCondTipoEstoque, xCondCfop,
                                     xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                                     xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,'',xCondRota,cbboficina.ItemIndex,'',xCondGrupo,xCondMecanico,codGruN2]));

            vlrDescN2 := FAT_CD_R_PVE_TOL_GRU.FieldByname('VLR_DESCONTO_TOTAL').AsCurrency;
            vlrLiqN2 := FAT_CD_R_PVE_TOL_GRU.FieldByName('VLR_LIQUIDO_TOTAL').AsCurrency;

            FAT_FR_R_PVE_RES_GRP.Variables['vlr_desconto_total_n2'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrDescN2));
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_liquido_total_n2'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrLiqN2));

          end
        else
          begin
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_desconto_total_n2'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrDescN2));
            FAT_FR_R_PVE_RES_GRP.Variables['vlr_liquido_total_n2'] := QuotedStr( FormatCurr('###,###,##0.00' ,vlrLiqN2));

          end;

    end;

end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_CLI_ITEBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_03.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_CLI_ITE.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_CLI_ITE.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_CLI_NFE_ITEBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_06.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_CLI_NFE_ITE.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_CLI_NFE_ITE.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_FORBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_02.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_FOR.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_FOR.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_FOR_ITEBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_03.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_FOR_ITE.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_FOR_ITE.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_GERBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_01.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_GER.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_GER.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;

end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_GER_FPGBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_08.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_GER_FPG.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_GER_FPG.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_GRUBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_02.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_GRU.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_GRU.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_ITEBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_02.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_ITE.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_ITE.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_ITE_CLIBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_03.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_ITE_CLI.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_ITE_CLI.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_RES_FPGBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_07.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_RES_FPG.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_RES_FPG.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FAT_FR_R_PVE_RES_VENBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  if chbExibirQtdeCliente.Checked then
    begin
      if (not FAT_CD_R_PVE_QTD_CLI.IsEmpty) and
         FAT_CD_R_PVE_QTD_CLI.Locate('ID_EMPRESA',FAT_CD_R_PVE_04.FieldByName('INT_ID_EMPRESA').AsString,[]) then
        begin
            FAT_FR_R_PVE_RES_VEN.Variables['qtde_cliente'] := QuotedStr(FAT_CD_R_PVE_QTD_CLI.FieldByName('INT_QTDE_CLIENTE').AsString);
        end
      else
        begin
           FAT_FR_R_PVE_RES_VEN.Variables['qtde_cliente'] := QuotedStr('0');
        end;
    end;
end;

procedure TFAT_FM_R_PVE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_PVE);
end;

procedure TFAT_FM_R_PVE.FormShow(Sender: TObject);
var
  cdsBusFun: TClientDataSet;

begin
  inherited;
  codEmpresa := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

  lbxRelatorios.ItemIndex := 0;

  {cbbTipoRel.Clear;
  cbbTipoRel.AddItem('00 - Resumo',nil);
  cbbTipoRel.AddItem('01 - Vendas',nil);
  cbbTipoRel.ItemIndex := 1;

  cbbQuebra.Clear;
  MontarListaQuebraVenda;
  cbbQuebra.ItemIndex := 0;

  cbbQuebra2.Clear;
  cbbQuebra2.AddItem('00 - Cliente',nil);
  cbbQuebra2.ItemIndex := 0; }

  cbbTipoRel.Clear;
  cbbTipoRel.AddItem('01 - Analítico',nil);
  cbbTipoRel.AddItem('02 - Resumo',nil);
  cbbTipoRel.ItemIndex := 0;


  MontarListaQuebraVenda;

  if dmgeral.CAD_CD_C_PAR_MODome.AsBoolean or
    dmgeral.CAD_CD_C_PAR_MODota.AsBoolean or
    dmgeral.CAD_CD_C_PAR_MODoqp.AsBoolean then
    begin
      label10.Visible := true;
      cbbOficina.Visible := true;
      gbRelatorio.Height := 100;
      tsMecanico.TabVisible := true;
    end
  else
    begin
      label10.Visible := false;
      cbbOficina.Visible := false;
      gbRelatorio.Height := 81;
      tsMecanico.TabVisible := false;
    end;

  // Empresas ------------------------------------------------------------------
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;

       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;

  // Tipos de Estoque ----------------------------------------------------------
  dmGeral.BUS_CD_C_TME.Close;
  dmGeral.BUS_CD_C_TME.Data :=
  dmGeral.BUS_CD_C_TME.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       dmGeral.BUS_CD_C_TME.First;

       while not dmGeral.BUS_CD_C_TME.eof do
          begin
            lboxTipoEstoqueDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_TME.FieldByName('ID_TIPO_MOV_ESTOQUE').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TME.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_TME.Next;
          end;
     end;

 dmGeral.BUS_CD_C_TME.Close;

  // CFOP ----------------------------------------------------------------------
  dmGeral.BUS_CD_C_CFO.Close;
  dmGeral.BUS_CD_C_CFO.Data :=
  dmGeral.BUS_CD_C_CFO.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_CFO.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CFO.First;

       while not dmGeral.BUS_CD_C_CFO.eof do
          begin
            lboxCfopDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_CFO.FieldByName('ID_CFO').AsFloat,4,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CFO.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CFO.Next;
          end;
     end;

 dmGeral.BUS_CD_C_CFO.Close;

  // Condição de Pagamento -------------------------------------------------------
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
  dmGeral.BUS_CD_C_CPG.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CPG.First;

       while not dmGeral.BUS_CD_C_CPG.eof do
          begin
            lboxCondicaoPagamentoDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_CPG.FieldByName('ID_CONDICAO_PAG').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CPG.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CPG.Next;
          end;
     end;

 dmGeral.BUS_CD_C_CPG.Close;

  // Vendedor ------------------------------------------------------------------

  // Perfil do Cliente ---------------------------------------------------------
  dmGeral.BUS_CD_C_PEC.Close;
  dmGeral.BUS_CD_C_PEC.Data :=
  dmGeral.BUS_CD_C_PEC.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_PEC.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PEC.First;

       while not dmGeral.BUS_CD_C_PEC.eof do
          begin
            lboxPerfilClienteDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PEC.Next;
          end;
     end;

 dmGeral.BUS_CD_C_PEC.Close;

  // Regiao ----------------------------------------------------------------

 dmSGQ.BUS_CD_C_REG.Close;
 dmSGQ.BUS_CD_C_REG.Data :=
 dmSGQ.BUS_CD_C_REG.DataRequest(
          VarArrayOf([1, '%']));

 if not dmSGQ.BUS_CD_C_REG.IsEmpty then
     begin
       dmSGQ.BUS_CD_C_REG.First;

       while not dmSGQ.BUS_CD_C_REG.eof do
          begin
            lboxRegDisp.Items.Add(StrZero(dmSGQ.BUS_CD_C_REG.FieldByName('ID_REGIAO').AsFloat,4,0) +
                                    ' - ' + dmSGQ.BUS_CD_C_REG.FieldByName('DESCRICAO').AsString);
            dmSGQ.BUS_CD_C_REG.Next;
          end;
     end;

  dmSGQ.BUS_CD_C_REG.Close;

  // Rota ----------------------------------------------------------------------
  dmGeral.BUS_CD_C_ROT.Close;
  dmGeral.BUS_CD_C_ROT.Data :=
  dmGeral.BUS_CD_C_ROT.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_ROT.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ROT.First;

       while not dmGeral.BUS_CD_C_ROT.eof do
          begin
            lboxRotDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_ROT.FieldByName('ID_ROTA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_ROT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_ROT.Next;
          end;
     end;
  dmGeral.BUS_CD_C_ROT.Close;



  cdsBusFun :=  TClientDataSet.Create(nil);
  cdsBusFun.RemoteServer :=  dmGeral.pcConecao;
  cdsBusFun.ProviderName := 'CAD_DP_C_FUN';

  cdsBusFun.Close;
   cdsBusFun.Data :=
          cdsBusFun.DataRequest(
               VarArrayOf([0, IntToStr(xFuncionario)]));
  if (cdsBusFun.FieldByName('vnd_interno_externo').AsInteger = 1) then
      begin
        lboxVendedores.Items.Add(StrZero(cdsBusFun.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + cdsBusFun.FieldByName('NOME').AsString);
        lboxVendedores.Color    := $00DADADA;
        lboxVendedores.enabled  := false;
        tsFornecedor.TabVisible := false;
        tsGrupo.TabVisible      := false;
      end;
end;

procedure TFAT_FM_R_PVE.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxCfopDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopDisponiveis.ItemIndex > - 1 then
     begin
       lboxCfopSelecionado.Items.Add(lboxCfopDisponiveis.Items[lboxCfopDisponiveis.ItemIndex]);
       lboxCfopDisponiveis.Items.Delete(lboxCfopDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxCfopSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopSelecionado.ItemIndex > -1 then
     begin
       lboxCfopDisponiveis.Items.Add(lboxCfopSelecionado.Items[lboxCfopSelecionado.ItemIndex]);
       lboxCfopSelecionado.Items.Delete(lboxCfopSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
    begin
      PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
      PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
        begin
          if not dmGeral.ExisteRegNoListBox(lboxCliente,6,StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0)) then
            begin
              lboxCliente.Items.Add(StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0) +
                                         ' - ' +  PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString);
            end;
        end;
      PSQ_FM_X_CLI.Free;
    end;
end;

procedure TFAT_FM_R_PVE.lboxCondicaoPagamentoDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoDisponivel.ItemIndex > - 1 then
     begin
       lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[lboxCondicaoPagamentoDisponivel.ItemIndex]);
       lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxCondicaoPagamentoSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoSelecionada.ItemIndex > -1 then
     begin
       lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[lboxCondicaoPagamentoSelecionada.ItemIndex]);
       lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedores,6,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0)) then
                begin
                  lboxFornecedores.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TFAT_FM_R_PVE.lboxGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_GRU := TPSQ_FM_X_GRU.Create(Self);
        PSQ_FM_X_GRU.ShowModal;
        if not PSQ_FM_X_GRU.BUS_CD_C_GRU.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxGrupo,8,PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString) then
                begin
                  lboxGrupo.Items.Add(PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                             ' - ' + PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_GRU.Free;
     end;
end;

procedure TFAT_FM_R_PVE.lboxMecanicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxMecanico,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxMecanico.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_PVE.lboxPerfilClienteDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxPerfilClienteDisponiveis.ItemIndex > - 1 then
     begin
       lboxPerfilClienteSelecionado.Items.Add(lboxPerfilClienteDisponiveis.Items[lboxPerfilClienteDisponiveis.ItemIndex]);
       lboxPerfilClienteDisponiveis.Items.Delete(lboxPerfilClienteDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxPerfilClienteSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPerfilClienteSelecionado.ItemIndex > -1 then
     begin
       lboxPerfilClienteDisponiveis.Items.Add(lboxPerfilClienteSelecionado.Items[lboxPerfilClienteSelecionado.ItemIndex]);
       lboxPerfilClienteSelecionado.Items.Delete(lboxPerfilClienteSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxRegDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxRegDisp.ItemIndex > - 1 then
     begin
       lboxRegSel.Items.Add(lboxRegDisp.Items[lboxRegDisp.ItemIndex]);
       lboxRegDisp.Items.Delete(lboxRegDisp.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxRegSelClick(Sender: TObject);
begin
  inherited;
  if lboxRegSel.ItemIndex > -1 then
     begin
       lboxRegDisp.Items.Add(lboxRegSel.Items[lboxRegSel.ItemIndex]);
       lboxRegSel.Items.Delete(lboxRegSel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxRotDispClick(Sender: TObject);
begin
  inherited;
  if lboxRotDisp.ItemIndex > - 1 then
     begin
       lboxRotSel.Items.Add(lboxRotDisp.Items[lboxRotDisp.ItemIndex]);
       lboxRotDisp.Items.Delete(lboxRotDisp.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxRotSelClick(Sender: TObject);
begin
  inherited;
  if lboxRotSel.ItemIndex > -1 then
     begin
       lboxRotDisp.Items.Add(lboxRotSel.Items[lboxRotSel.ItemIndex]);
       lboxRotSel.Items.Delete(lboxRotSel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueDisponiveis.ItemIndex > - 1 then
     begin
       lboxTipoEstoqueSelecionado.Items.Add(lboxTipoEstoqueDisponiveis.Items[lboxTipoEstoqueDisponiveis.ItemIndex]);
       lboxTipoEstoqueDisponiveis.Items.Delete(lboxTipoEstoqueDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueSelecionado.ItemIndex > -1 then
     begin
       lboxTipoEstoqueDisponiveis.Items.Add(lboxTipoEstoqueSelecionado.Items[lboxTipoEstoqueSelecionado.ItemIndex]);
       lboxTipoEstoqueSelecionado.Items.Delete(lboxTipoEstoqueSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PVE.lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendedores,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxVendedores.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_PVE.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if lboxProduto.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxProduto.DeleteSelected;
end;

procedure TFAT_FM_R_PVE.MenuItem2Click(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxRotSel.ClearSelection;

  if lboxRotSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxRotSel.Items.Count > 0 then
     begin
       for i := 0 to lboxRotSel.Items.Count - 1 do
           begin
             lboxRotDisp.Items.Add(lboxRotSel.Items[i]);
             lboxRotSel.Items.Delete(lboxRotSel.ItemIndex);
           end;
       lboxRotSel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.MenuItem3Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxRotDisp.ClearSelection;

  if lboxRotDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxRotDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxRotDisp.Items.Count - 1 do
           begin
             lboxRotSel.Items.Add(lboxRotDisp.Items[i]);
             lboxRotDisp.Items.Delete(lboxRotDisp.ItemIndex);
           end;
       lboxRotDisp.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.lboxProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
    begin
      PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
      PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
        begin
          if not dmGeral.ExisteRegNoListBox(lboxProduto,6,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0)) then
            begin
              lboxProduto.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0) +
                                         ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
            end;
        end;
      PSQ_FM_X_ITE.Free;
    end;
end;

procedure TFAT_FM_R_PVE.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFAT_FM_R_PVE.btnRemoverFormaPagClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCondicaoPagamentoSelecionada.ClearSelection;

  if lboxCondicaoPagamentoSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCondicaoPagamentoSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxCondicaoPagamentoSelecionada.Items.Count - 1 do
           begin
             lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[i]);
             lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
           end;
       lboxCondicaoPagamentoSelecionada.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.btnRemoverPerfilClienteClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxPerfilClienteSelecionado.ClearSelection;

  if lboxPerfilClienteSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPerfilClienteSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxPerfilClienteSelecionado.Items.Count - 1 do
           begin
             lboxPerfilClienteDisponiveis.Items.Add(lboxPerfilClienteSelecionado.Items[i]);
             lboxPerfilClienteSelecionado.Items.Delete(lboxPerfilClienteSelecionado.ItemIndex);
           end;
       lboxPerfilClienteSelecionado.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.btnRemoverRegistroClienteClick(Sender: TObject);
begin
  inherited;
  if lboxCliente.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxCliente.DeleteSelected;
end;

procedure TFAT_FM_R_PVE.btnRemoverVendedorClick(Sender: TObject);
begin
  inherited;
  if lboxVendedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedores.DeleteSelected;
end;

procedure TFAT_FM_R_PVE.btnSelPerfilClienteClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPerfilClienteDisponiveis.ClearSelection;
  if lboxPerfilClienteDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPerfilClienteDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxPerfilClienteDisponiveis.Items.Count - 1 do
           begin
             lboxPerfilClienteSelecionado.Items.Add(lboxPerfilClienteDisponiveis.Items[i]);
             lboxPerfilClienteDisponiveis.Items.Delete(lboxPerfilClienteDisponiveis.ItemIndex);
           end;
       lboxPerfilClienteDisponiveis.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.btnSelTodosRegiaoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxRegDisp.ClearSelection;
  if lboxRegDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxRegDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxRegDisp.Items.Count - 1 do
           begin
             lboxRegSel.Items.Add(lboxRegDisp.Items[i]);
             lboxRegDisp.Items.Delete(lboxRegDisp.ItemIndex);
           end;
       lboxRegDisp.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.btnExcluirGrupoClick(Sender: TObject);
begin
  inherited;
    if lboxGrupo.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxGrupo.DeleteSelected;
end;

procedure TFAT_FM_R_PVE.btnExcluirMecanicoClick(Sender: TObject);
begin
  inherited;
  if lboxMecanico.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxMecanico.DeleteSelected;
end;

procedure TFAT_FM_R_PVE.btnImprimirClick(Sender: TObject);
var
  codigoRel:string;
begin
  inherited;
  codEmp := '';
  codGruN1 := '';
  codGruN2 := '';

  if TestarCampos(deInicial,deFinal,lboxEmpresaSelecionada) then
    begin
     codigoRel := copy(cbbTipoRel.Items[cbbTipoRel.ItemIndex],1,pos(' - ',cbbTipoRel.Items[cbbTipoRel.ItemIndex])-1)+
         copy(cbbQuebra.Items[cbbQuebra.ItemIndex],1,pos(' - ',cbbQuebra.Items[cbbQuebra.ItemIndex])-1);
      if cbbQuebra2.Enabled then
        begin
           codigoRel := codigoRel +
                  copy(cbbQuebra2.Items[cbbQuebra2.ItemIndex],1,pos(' - ',cbbQuebra2.Items[cbbQuebra2.ItemIndex])-1);
        end;

      try
        dmgeral.CAD_CD_C_PAR.Filtered := true;
        dmGeral.CAD_CD_C_PAR.Filter := 'ID_EMPRESA='+codEmpresa;

        ExibirRel(codigoRel,lbxRelatorios,lboxEmpresaSelecionada,lboxTipoEstoqueSelecionado,lboxCfopSelecionado,
        lboxCondicaoPagamentoSelecionada,lboxVendedores,lboxPerfilClienteSelecionado,lboxFornecedores,
        lboxTipoEstoqueDisponiveis,lboxCfopDisponiveis,lboxCondicaoPagamentoDisponivel,lboxPerfilClienteDisponiveis,
        lboxRegDisp,lboxRegSel,lboxCliente,lboxProduto,lboxRotSel,lboxRotDisp,lboxGrupo,lboxMecanico,
        deInicial,deFinal,cbbTipoRel,cbbQuebra,cbbQuebra2,cbbOficina,chbExibirQtdeCliente,chbExibirAuxVend,chbVendaFunLog,FAT_FR_R_PVE_GER,FAT_FR_R_PVE_CPG,
        FAT_FR_R_PVE_VEN,FAT_FR_R_PVE_GRU,FAT_FR_R_PVE_EST,FAT_FR_R_PVE_CLI,
        FAT_FR_R_PVE_ITE,FAT_FR_R_PVE_FOR,FAT_FR_R_PVE_PER,FAT_FR_R_PVE_CLI_ITE,FAT_FR_R_PVE_ITE_CLI,FAT_FR_R_PVE_FOR_ITE,
        FAT_FR_R_PVE_RES_VEN,FAT_FR_R_PVE_RES_GRP,FAT_FR_R_PVE_PER_REG,FAT_FR_R_PVE_CID,FAT_FR_R_PVE_CLI_NFE_ITE,FAT_FR_R_PVE_RES_FPG,FAT_FR_R_PVE_GER_FPG);

      finally
        dmgeral.CAD_CD_C_PAR.Filtered := false;
        dmgeral.CAD_CD_C_PAR.Locate('ID_EMPRESA',codEmpresa,[]);
      end;

    end;
end;

procedure TFAT_FM_R_PVE.btnRemoverCfopClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCfopSelecionado.ClearSelection;

  if lboxCfopSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCfopSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxCfopSelecionado.Items.Count - 1 do
           begin
             lboxCfopDisponiveis.Items.Add(lboxCfopSelecionado.Items[i]);
             lboxCfopSelecionado.Items.Delete(lboxCfopSelecionado.ItemIndex);
           end;
       lboxCfopSelecionado.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.btnRemoverTiposEstoqueClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxTipoEstoqueSelecionado.ClearSelection;

  if lboxTipoEstoqueSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoEstoqueSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoEstoqueSelecionado.Items.Count - 1 do
           begin
             lboxTipoEstoqueDisponiveis.Items.Add(lboxTipoEstoqueSelecionado.Items[i]);
             lboxTipoEstoqueSelecionado.Items.Delete(lboxTipoEstoqueSelecionado.ItemIndex);
           end;
       lboxTipoEstoqueSelecionado.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PVE.btnTodosTipoEstoqueClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxTipoEstoqueDisponiveis.ClearSelection;

  if lboxTipoEstoqueDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoEstoqueDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoEstoqueDisponiveis.Items.Count - 1 do
           begin
             lboxTipoEstoqueSelecionado.Items.Add(lboxTipoEstoqueDisponiveis.Items[i]);
             lboxTipoEstoqueDisponiveis.Items.Delete(lboxTipoEstoqueDisponiveis.ItemIndex);
           end;
       lboxTipoEstoqueDisponiveis.Items.Clear;
     end;
end;
procedure TFAT_FM_R_PVE.cbbQuebraClick(Sender: TObject);
begin
  inherited;
  tsFornecedor.TabVisible := true;
  tsProduto.TabVisible := true;

  if cbbTipoRel.Items[cbbTipoRel.ItemIndex]='01 - Analítico' then
    begin
      cbbQuebra2.Clear;
      if cbbQuebra.Items[cbbQuebra.ItemIndex]='02 - Cliente' then
        begin
          cbbQuebra2.AddItem('00 - Nenhum',nil);
          cbbQuebra2.AddItem('01 - Cidade',nil);
          cbbQuebra2.AddItem('02 - Cliente',nil);
         // cbbQuebra2.AddItem('03 - Cond. Pag',nil);
          cbbQuebra2.AddItem('04 - Estado',nil);
          cbbQuebra2.AddItem('05 - Fornecedor',nil);
          cbbQuebra2.AddItem('06 - Grupo',nil);
          cbbQuebra2.AddItem('07 - Item',nil);
          cbbQuebra2.AddItem('08 - Perfil',nil);
          cbbQuebra2.AddItem('09 - Vendedor',nil);
          cbbQuebra2.AddItem('10 - Nota/Item',nil);
        end
      else if cbbQuebra.Items[cbbQuebra.ItemIndex]='10 - Forma de Pag.'  then
        begin
          tsFornecedor.TabVisible := false;
          tsProduto.TabVisible := false;
          cbbQuebra2.AddItem('00 - Nenhum',nil);
          cbbQuebra2.AddItem('01 - Cidade',nil);
          cbbQuebra2.AddItem('02 - Cliente',nil);
         // cbbQuebra2.AddItem('03 - Cond. Pag',nil);
          cbbQuebra2.AddItem('08 - Perfil',nil);
          cbbQuebra2.AddItem('09 - Vendedor',nil);
        end
      else
        begin
          cbbQuebra2.AddItem('00 - Nenhum',nil);
          cbbQuebra2.AddItem('01 - Cidade',nil);
          cbbQuebra2.AddItem('02 - Cliente',nil);
        //  cbbQuebra2.AddItem('03 - Cond. Pag',nil);
          cbbQuebra2.AddItem('04 - Estado',nil);
          cbbQuebra2.AddItem('05 - Fornecedor',nil);
          cbbQuebra2.AddItem('06 - Grupo',nil);
          cbbQuebra2.AddItem('07 - Item',nil);
          cbbQuebra2.AddItem('08 - Perfil',nil);
          cbbQuebra2.AddItem('09 - Vendedor',nil);
        end;
       cbbQuebra2.ItemIndex := 0;
    end;


end;

procedure TFAT_FM_R_PVE.cbbTipoRelClick(Sender: TObject);
begin
  inherited;
  cbbQuebra.Clear;
  cbbQuebra2.Clear;
 { if cbbTipoRel.Items[cbbTipoRel.ItemIndex]='00 - Resumo' then
    begin
      cbbQuebra.AddItem('00 - Grupo',nil);
      cbbQuebra.AddItem('01 - Vendedor',nil);
      cbbQuebra.ItemIndex := 0;
      cbbQuebra2.Enabled := false;
    end;
  if cbbTipoRel.Items[cbbTipoRel.ItemIndex]='01 - Vendas' then
    begin
      cbbQuebra2.Enabled := true;
      MontarListaQuebraVenda;
      cbbQuebra.ItemIndex := 0;
      cbbQuebra2.AddItem('00 - Cliente',nil);
      cbbQuebra2.ItemIndex := 0;
    end; }

   {if cbbTipoRel.Items[cbbTipoRel.ItemIndex]='01 - Analítico' then
    begin
      cbbQuebra2.Enabled := true;
      MontarListaQuebraVenda;
      cbbQuebra.ItemIndex := 0;
      cbbQuebra2.ItemIndex := 0;
    end;
  if cbbTipoRel.Items[cbbTipoRel.ItemIndex]='02 - Resumo' then
    begin
      cbbQuebra.AddItem('01 - Grupo',nil);
      cbbQuebra.AddItem('02 - Vendedor',nil);
      cbbQuebra.ItemIndex := 0;
      cbbQuebra2.Enabled := false;
    end;}

     MontarListaQuebraVenda;
end;

procedure TFAT_FM_R_PVE.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpresas.ClearSelection;

  if lboxEmpresas.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresas.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresas.Items.Count - 1 do
           begin
             lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[i]);
             lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
           end;
       lboxEmpresas.Items.Clear;
     end;
end;
end.
