unit FIN_UN_R_PAG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Menus, enFunc,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  vcl.wwdblook;

type
  TFIN_FM_R_PAG = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    cbbOrdenacao: TComboBox;
    Label3: TLabel;
    cbbPorData: TComboBox;
    tsFornecedores: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    tsFormaPagamento: TTabSheet;
    lblFormaDisponivel: TLabel;
    lblFormaSelecionada: TLabel;
    lboxFormaSelecionada: TListBox;
    lboxFormaDisponivel: TListBox;
    tsLocalTitulo: TTabSheet;
    lblLocaisDisponiveis: TLabel;
    lblLocalSelecionado: TLabel;
    lboxLocalSelecionado: TListBox;
    lboxLocaisDisponiveis: TListBox;
    tsPlanoContas: TTabSheet;
    lblPlanosDisponiveis: TLabel;
    lblPlanoSelecionado: TLabel;
    lboxPlanoSelecionado: TListBox;
    lboxPlanosDisponiveis: TListBox;
    tsCentroCusto: TTabSheet;
    lblCentroCustoDisponiveis: TLabel;
    lblCentroCustoSelecionado: TLabel;
    lboxCentroCustoSelecionado: TListBox;
    lboxCentroCustoDisponiveis: TListBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelFormasPagamento: TPopupMenu;
    MenuItemFormasPagamento: TMenuItem;
    pmSelLocaisTitulo: TPopupMenu;
    MenuItemLocalTitulo: TMenuItem;
    pmSelPlanosConta: TPopupMenu;
    MenuItemPlanoConta: TMenuItem;
    pmSelCentrosCusto: TPopupMenu;
    MenuItemCentroCusto: TMenuItem;
    FIN_FR_R_PAG_ABE_GER: TfrxReport;
    FIN_XL_R_PAG_ABE: TfrxXLSExport;
    FIN_PD_R_PAG_ABE: TfrxPDFExport;
    FIN_DB_R_PAG_ABE: TfrxDBDataset;
    pmExcluirFornecedor: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    FIN_FR_R_PAG_ABE_PCT: TfrxReport;
    FIN_DB_R_PAG_ABE_PPG: TfrxDBDataset;
    cbbTipoRel: TComboBox;
    lblTipoRel: TLabel;
    FIN_DB_R_PAG_BXA: TfrxDBDataset;
    FIN_XL_R_PAG_BXA: TfrxXLSExport;
    FIN_PD_R_PAG_BXA: TfrxPDFExport;
    FIN_FR_R_PAG_BXA_GERs: TfrxReport;
    pmRemoverTodosPlanoContas: TPopupMenu;
    btnRemoverRegistros: TMenuItem;
    pmRemoverTodosCentroCusto: TPopupMenu;
    btnRemoverTodosCentroCusto: TMenuItem;
    pmRemoverTodosLocalTitulo: TPopupMenu;
    btnRemoverTodosLocalTitulo: TMenuItem;
    pmRemoverTodosFormaPag: TPopupMenu;
    btnRemoverTodosFormaPag: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    FIN_FR_R_PAG_ABE_FOR: TfrxReport;
    FIN_FR_R_PAG_ABE_FPG: TfrxReport;
    FIN_FR_R_PAG_ABE_RPC: TfrxReport;
    FIN_FR_R_PAG_ABE_RFP: TfrxReport;
    FIN_FR_R_PAG_BXA_FOR: TfrxReport;
    FIN_FR_R_PAG_BXA_PCT: TfrxReport;
    FIN_FR_R_PAG_BXA_FPG: TfrxReport;
    FIN_FR_R_PAG_BXA_RPC: TfrxReport;
    FIN_FR_R_PAG_BXA_RFP: TfrxReport;
    FIN_FR_R_PAG_ABE_PPG: TfrxReport;
    cdsTempResABE_PPG: TClientDataSet;
    cdsTempResABE_PPGFAIXA: TStringField;
    cdsTempResABE_PPGtotAVencer: TCurrencyField;
    cdsTempResABE_PPGtotVencidos: TCurrencyField;
    DBTempResABE_PPG: TfrxDBDataset;
    cdsTempResABE_PPGOrdemGrupo: TIntegerField;
    FIN_FR_R_PAG_ABE_PRD: TfrxReport;
    FIN_CD_R_PAG_ABE: TClientDataSet;
    FIN_CD_R_PAG_ABE_PPG: TClientDataSet;
    FIN_CD_R_PAG_ABE_PPGprazo: TWideMemoField;
    FIN_CD_R_PAG_ABE_PPGid_forma_pag: TIntegerField;
    FIN_CD_R_PAG_ABE_PPGnum_parcela: TWideStringField;
    FIN_CD_R_PAG_ABE_PPGdta_emissao: TDateField;
    FIN_CD_R_PAG_ABE_PPGdta_vencimento: TDateField;
    FIN_CD_R_PAG_ABE_PPGid_fornecedor: TIntegerField;
    FIN_CD_R_PAG_ABE_PPGvlr_saldo: TFMTBCDField;
    FIN_CD_R_PAG_ABE_PPGint_nomefor: TWideStringField;
    FIN_CD_R_PAG_ABE_PPGint_nomefpg: TWideStringField;
    FIN_CD_R_PAG_ABE_PPGint_atraso: TIntegerField;
    FIN_CD_R_PAG_ABE_PPGvlr_parcela: TFMTBCDField;
    FIN_CD_R_PAG_BXA: TClientDataSet;
    tsObra: TTabSheet;
    lboxObraDisp: TListBox;
    lboxObraSel: TListBox;
    Label6: TLabel;
    Label7: TLabel;
    pmSelObra: TPopupMenu;
    pmExcluirObra: TPopupMenu;
    btnSelObra: TMenuItem;
    btnRemoverObra: TMenuItem;
    lblConta: TLabel;
    cbbConta: TwwDBLookupCombo;
    FIN_FR_R_PAG_ABE_OBR: TfrxReport;
    FIN_FR_R_PAG_BXA_OBR: TfrxReport;
    FIN_CD_R_PAG_ABEid_empresa: TIntegerField;
    FIN_CD_R_PAG_ABEnum_parcela: TWideStringField;
    FIN_CD_R_PAG_ABEid_forma_pag: TIntegerField;
    FIN_CD_R_PAG_ABEdta_emissao: TDateField;
    FIN_CD_R_PAG_ABEdta_vencimento: TDateField;
    FIN_CD_R_PAG_ABEid_fornecedor: TIntegerField;
    FIN_CD_R_PAG_ABEid_local_titulo: TIntegerField;
    FIN_CD_R_PAG_ABEid_plano: TWideStringField;
    FIN_CD_R_PAG_ABEid_ccusto: TIntegerField;
    FIN_CD_R_PAG_ABEid_obra: TIntegerField;
    FIN_CD_R_PAG_ABEint_nomefor: TWideStringField;
    FIN_CD_R_PAG_ABEint_nomefpg: TWideStringField;
    FIN_CD_R_PAG_ABEint_nomelto: TWideStringField;
    FIN_CD_R_PAG_ABEint_nomepct: TWideStringField;
    FIN_CD_R_PAG_ABEint_nomeccu: TWideStringField;
    FIN_CD_R_PAG_ABEint_nomeobr: TWideStringField;
    FIN_CD_R_PAG_ABEvlr_saldo: TFMTBCDField;
    FIN_CD_R_PAG_ABEvlr_parcela: TFMTBCDField;
    FIN_CD_R_PAG_ABEhistorico: TWideStringField;
    FIN_CD_R_PAG_ABEprazo: TWideMemoField;
    FIN_CD_R_PAG_ABEint_atraso: TIntegerField;
    FIN_CD_R_PAG_ABEint_vlr_corrigido: TFloatField;
    FIN_CD_R_PAG_ABEint_vlr_juros: TFloatField;
    FIN_CD_R_PAG_BXAint_substituicao: TBooleanField;
    FIN_CD_R_PAG_BXAid_titulo: TIntegerField;
    FIN_CD_R_PAG_BXAid_baixa: TIntegerField;
    FIN_CD_R_PAG_BXAdta_pagamento: TDateField;
    FIN_CD_R_PAG_BXAvlr_pagamento: TFMTBCDField;
    FIN_CD_R_PAG_BXAper_juros: TFMTBCDField;
    FIN_CD_R_PAG_BXAvlr_juros: TFMTBCDField;
    FIN_CD_R_PAG_BXAvlr_desconto: TFMTBCDField;
    FIN_CD_R_PAG_BXAhistorico: TWideStringField;
    FIN_CD_R_PAG_BXAid_forma_pag: TIntegerField;
    FIN_CD_R_PAG_BXAid_plano: TWideStringField;
    FIN_CD_R_PAG_BXAid_plano_juros: TWideStringField;
    FIN_CD_R_PAG_BXAchp_vlr_anterior: TFMTBCDField;
    FIN_CD_R_PAG_BXAid_responsavel: TIntegerField;
    FIN_CD_R_PAG_BXAid_ccusto: TIntegerField;
    FIN_CD_R_PAG_BXAid_plano_desconto: TWideStringField;
    FIN_CD_R_PAG_BXAvlr_multa: TFMTBCDField;
    FIN_CD_R_PAG_BXAid_abertura: TIntegerField;
    FIN_CD_R_PAG_BXAvlr_cred_utilizado: TFMTBCDField;
    FIN_CD_R_PAG_BXAcom_substituicao: TBooleanField;
    FIN_CD_R_PAG_BXAid_empresa_bxa: TIntegerField;
    FIN_CD_R_PAG_BXAid_brd: TIntegerField;
    FIN_CD_R_PAG_BXAid_fornecedor: TIntegerField;
    FIN_CD_R_PAG_BXAvlr_titulo: TFMTBCDField;
    FIN_CD_R_PAG_BXAnum_parcela: TWideStringField;
    FIN_CD_R_PAG_BXAdta_emissao: TDateField;
    FIN_CD_R_PAG_BXAdta_vencimento: TDateField;
    FIN_CD_R_PAG_BXAid_obra: TIntegerField;
    FIN_CD_R_PAG_BXAint_nomefor: TWideStringField;
    FIN_CD_R_PAG_BXAint_nomefpg: TWideStringField;
    FIN_CD_R_PAG_BXAint_nomepct: TWideStringField;
    FIN_CD_R_PAG_BXAint_nomeccu: TWideStringField;
    FIN_CD_R_PAG_BXAint_nomeobr: TWideStringField;
    FIN_CD_R_PAG_CXA: TClientDataSet;
    FIN_CD_R_PAG_CXAdeb_cre: TIntegerField;
    FIN_CD_R_PAG_CXAdta_movimento: TDateField;
    FIN_CD_R_PAG_CXAnum_doc: TIntegerField;
    FIN_CD_R_PAG_CXAsigla: TWideStringField;
    FIN_CD_R_PAG_CXAid_plano: TWideStringField;
    FIN_CD_R_PAG_CXAid_tipo_financeiro: TIntegerField;
    FIN_CD_R_PAG_CXAhistorico: TWideStringField;
    FIN_CD_R_PAG_CXAvlr_creditodia: TFMTBCDField;
    FIN_CD_R_PAG_CXAvlr_debitodia: TFMTBCDField;
    FIN_CD_R_PAG_CXAvlr_saldodia: TFMTBCDField;
    FIN_CD_R_PAG_CXAvlr_acumulado: TFMTBCDField;
    FIN_DB_R_PAG_CXA: TfrxDBDataset;
    FIN_FR_R_PAG_GER_OBR: TfrxReport;
    FIN_CD_R_PAG_SLD: TClientDataSet;
    FIN_CD_R_PAG_SLDid_titulo: TIntegerField;
    FIN_CD_R_PAG_SLDid_empresa: TIntegerField;
    FIN_CD_R_PAG_SLDint_nomeemp: TWideStringField;
    FIN_CD_R_PAG_SLDid_fornecedor: TIntegerField;
    FIN_CD_R_PAG_SLDint_nomefor: TWideStringField;
    FIN_CD_R_PAG_SLDid_forma_pag: TIntegerField;
    FIN_CD_R_PAG_SLDint_nomefpg: TWideStringField;
    FIN_CD_R_PAG_SLDdta_emissao: TDateField;
    FIN_CD_R_PAG_SLDdta_vencimento: TDateField;
    FIN_CD_R_PAG_SLDvlr_parcela: TFMTBCDField;
    FIN_CD_R_PAG_SLDint_vlr_saldo_atual: TFMTBCDField;
    FIN_DB_R_PAG_SLD: TfrxDBDataset;
    FIN_FR_R_PAG_SLD: TfrxReport;
    FIN_CD_R_PAG_SLDnum_parcela: TWideStringField;
    txtDtaPagamento: TJvDateEdit;
    lblDtaPagamento: TLabel;
    chbExibirHistorico: TCheckBox;
    FIN_CD_R_PAG_SLDhistorico: TWideStringField;
    FIN_CD_R_PAG_ABEpre_conta: TIntegerField;
    FIN_CD_R_PAG_ABEpre_cheque: TIntegerField;
    FIN_CD_R_PAG_ABEpre_banco: TWideStringField;
    FIN_CD_R_PAG_ABEpre_emitente: TWideStringField;
    FIN_CD_R_PAG_ABEpre_agencia: TWideStringField;
    FIN_FR_R_PAG_ABE_FCH: TfrxReport;
    FIN_CD_R_PAG_BXAint_cnpjcpf: TWideStringField;
    FIN_FR_R_PAG_BXA_GER: TfrxReport;
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxFormaDisponivelDblClick(Sender: TObject);
    procedure lboxLocaisDisponiveisDblClick(Sender: TObject);
    procedure lboxPlanosDisponiveisDblClick(Sender: TObject);
    procedure lboxCentroCustoDisponiveisDblClick(Sender: TObject);
    procedure lboxFormaSelecionadaDblClick(Sender: TObject);
    procedure lboxLocalSelecionadoDblClick(Sender: TObject);
    procedure lboxPlanoSelecionadoDblClick(Sender: TObject);
    procedure lboxCentroCustoSelecionadoDblClick(Sender: TObject);
    procedure MenuItemFormasPagamentoClick(Sender: TObject);
    procedure MenuItemLocalTituloClick(Sender: TObject);
    procedure MenuItemPlanoContaClick(Sender: TObject);
    procedure MenuItemCentroCustoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure btnRemoverRegistrosClick(Sender: TObject);
    procedure btnRemoverTodosCentroCustoClick(Sender: TObject);
    procedure btnRemoverTodosLocalTituloClick(Sender: TObject);
    procedure btnRemoverTodosFormaPagClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnSelObraClick(Sender: TObject);
    procedure btnRemoverObraClick(Sender: TObject);
    procedure lboxObraDispDblClick(Sender: TObject);
    procedure lboxObraSelDblClick(Sender: TObject);
    procedure cbbTipoRelChange(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;

    procedure MontarDadosABE_PPG;
    procedure MontarTotResumo;
    var
      xOpcoes, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
      xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto,xCondObra: string;

  public
    { Public declarations }
  end;

var
  FIN_FM_R_PAG: TFIN_FM_R_PAG;
  vPixelPorCM:Extended = 37.7953;
implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, enConstantes;

procedure TFIN_FM_R_PAG.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_PAG.btnRemoverObraClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxObraSel.ClearSelection;

  if lboxObraSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxObraSel.Items.Count > 0 then
     begin
       for i := 0 to lboxObraSel.Items.Count - 1 do
           begin
             lboxObraDisp.Items.Add(lboxObraSel.Items[i]);
             lboxObraSel.Items.Delete(lboxObraSel.ItemIndex);
           end;
       lboxObraSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PAG.btnRemoverRegistroFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFIN_FM_R_PAG.btnRemoverRegistrosClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxPlanoSelecionado.ClearSelection;

  if lboxPlanoSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanoSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanoSelecionado.Items.Count - 1 do
           begin
             lboxPlanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[i]);
             lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
           end;
       lboxPlanoSelecionado.Items.Clear;
     end;

end;

procedure TFIN_FM_R_PAG.btnRemoverTodosCentroCustoClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCentroCustoSelecionado.ClearSelection;

  if lboxCentroCustoSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCentroCustoSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxCentroCustoSelecionado.Items.Count - 1 do
           begin
             lboxCentroCustoDisponiveis.Items.Add(lboxCentroCustoSelecionado.Items[i]);
             lboxCentroCustoSelecionado.Items.Delete(lboxCentroCustoSelecionado.ItemIndex);
           end;
       lboxCentroCustoSelecionado.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PAG.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIN_FM_R_PAG.btnRemoverTodosFormaPagClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxFormaSelecionada.ClearSelection;

  if lboxFormaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFormaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxFormaSelecionada.Items.Count - 1 do
           begin
             lboxFormaDisponivel.Items.Add(lboxFormaSelecionada.Items[i]);
             lboxFormaSelecionada.Items.Delete(lboxFormaSelecionada.ItemIndex);
           end;
       lboxFormaSelecionada.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PAG.btnRemoverTodosLocalTituloClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxLocalSelecionado.ClearSelection;

  if lboxLocalSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxLocalSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxLocalSelecionado.Items.Count - 1 do
           begin
             lboxLocaisDisponiveis.Items.Add(lboxLocalSelecionado.Items[i]);
             lboxLocalSelecionado.Items.Delete(lboxLocalSelecionado.ItemIndex);
           end;
       lboxLocalSelecionado.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PAG.btnSelObraClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxObraDisp.ClearSelection;
  if lboxObraDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxObraDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxObraDisp.Items.Count - 1 do
           begin
             lboxObraSel.Items.Add(lboxObraDisp.Items[i]);
             lboxObraDisp.Items.Delete(lboxObraDisp.ItemIndex);
           end;
       lboxObraDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PAG.cbbTipoRelChange(Sender: TObject);
begin
  inherited;
   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '10 - Cheques Por Fornecedor') and
     (cbbTipoRel.ItemIndex = 1) then
    begin
      cbbTipoRel.OnChange := nil;
      ShowMessage('O tipo de relatório selecionado é incompativel.');
      cbbTipoRel.ItemIndex := 0;
    end;


  cbbPorData.Clear;
  if (cbbTipoRel.ItemIndex = 0) then
    begin
      cbbPorData.AddItem('0 - Emissão',nil);
      cbbPorData.AddItem('1 - Vencimento',nil);
      cbbPorData.AddItem('2 - Prev. de Baixa',nil);
      cbbPorData.AddItem('3 - Lançamento',nil);
      cbbPorData.ItemIndex := 0;
    end;
  if (cbbTipoRel.ItemIndex = 1) then
    begin
      cbbPorData.AddItem('0 - Emissão',nil);
      cbbPorData.AddItem('1 - Vencimento',nil);
      cbbPorData.AddItem('2 - Prev. de Baixa',nil);
      cbbPorData.AddItem('3 - Lançamento',nil);
      cbbPorData.AddItem('4 - Pagamento',nil);
      cbbPorData.ItemIndex := 0;
    end;
  if (cbbTipoRel.ItemIndex = 2) then
    begin
      cbbPorData.AddItem('0 - Emissão',nil);
      cbbPorData.AddItem('1 - Vencimento',nil);
      cbbPorData.AddItem('2 - Prev. de Baixa',nil);
      cbbPorData.ItemIndex := 0;
    end;
end;

procedure TFIN_FM_R_PAG.ExibirRel;
var
  rTipoData, rDtaIni, rDtaFin, rOrdenacao, PathImg,rDtaPagamento: String;
  rIndexRelatorio:integer;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

    // Por Data de Emissão / Vencimento
    rTipoData := copy(cbbPorData.Text,1,1);

    // Período
    rDtaIni := deInicial.Text;
    rDtaFin := deFinal.Text;

    // Ordenação
    rOrdenacao := copy(cbbOrdenacao.Text,1,1);

    //Data Pagamento
    rDtaPagamento := txtDtaPagamento.Text;

    PreencherCondicao;

  if  (cbbTipoRel.Visible=true) and  (cbbTipoRel.ItemIndex = 0) then
    begin
         if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Fornecedor') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Plano de Contas') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Forma de Pagamento') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Resumo por Plano de Contas') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Resumo por Forma de Pagamento') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07 - Por Vencimento') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Por Obra') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '10 - Cheques Por Fornecedor') then
             begin
               FIN_CD_R_PAG_ABE.Active:= False;
               FIN_CD_R_PAG_ABE.Close;
               FIN_CD_R_PAG_ABE.Data :=
                 FIN_CD_R_PAG_ABE.DataRequest(
                      VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
                                  xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto,xCondObra, rOrdenacao, lbxRelatorios.ItemIndex]));

               PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

               if not FIN_CD_R_PAG_ABE.IsEmpty then
                  begin
                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral' then
                      begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_GER.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_GER.Name,xCodLme,xRevLme,nil);

                        TfrxMemoView (FIN_FR_R_PAG_ABE_GER.FindComponent('mmCabHist')).Visible := chbExibirHistorico.Checked;
                        TfrxMemoView (FIN_FR_R_PAG_ABE_GER.FindComponent('FIN_DB_R_PAG_ABEhistorico')).Visible := chbExibirHistorico.Checked;
                        if chbExibirHistorico.Checked then
                          begin
                            TfrxMemoView (FIN_FR_R_PAG_ABE_GER.FindComponent('FIN_DB_R_PAG_ABEhistorico')).StretchMode := smActualHeight;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_GER.FindComponent('MasterData1')).Stretched := true;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_GER.FindComponent('MasterData1')).Height := vPixelPorCM*0.94;
                            TfrxHeader (FIN_FR_R_PAG_ABE_GER.FindComponent('Header1')).Height := vPixelPorCM*1.00;
                            TfrxMemoView (FIN_FR_R_PAG_ABE_GER.FindComponent('mmShape')).Height := vPixelPorCM*1.00;
                          end
                        else
                          begin
                            TfrxMemoView (FIN_FR_R_PAG_ABE_GER.FindComponent('FIN_DB_R_PAG_ABEhistorico')).StretchMode := smDontStretch;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_GER.FindComponent('MasterData1')).Stretched := false;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_GER.FindComponent('MasterData1')).Height :=vPixelPorCM*0.40;
                            TfrxHeader (FIN_FR_R_PAG_ABE_GER.FindComponent('Header1')).Height := vPixelPorCM*0.50;
                            TfrxMemoView (FIN_FR_R_PAG_ABE_GER.FindComponent('mmShape')).Height := vPixelPorCM*0.50;
                          end;
                        if rTipoData = '2' then
                          FIN_FR_R_PAG_ABE_GER.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_PAG_ABE_GER.Variables['ft_data'] := QuotedStr('Vencimento');

                        FIN_FR_R_PAG_ABE_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_PAG_ABE_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_PAG_ABE_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_PAG_ABE_GER.PrepareReport();
                        FIN_FR_R_PAG_ABE_GER.ShowReport();
                      end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Fornecedor' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_FOR.FindObject('imgEmpresa2'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        if rTipoData = '2' then
                          FIN_FR_R_PAG_ABE_FOR.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_PAG_ABE_FOR.Variables['ft_data'] := QuotedStr('Vencimento');

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_FOR.Name,xCodLme,xRevLme,nil);
                         FIN_FR_R_PAG_ABE_FOR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         FIN_FR_R_PAG_ABE_FOR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         FIN_FR_R_PAG_ABE_FOR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         FIN_FR_R_PAG_ABE_FOR.PrepareReport();
                         FIN_FR_R_PAG_ABE_FOR.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Plano de Contas' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_PCT.FindObject('imgEmpresa3'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_PCT.Name,xCodLme,xRevLme,nil);


                        TfrxMemoView (FIN_FR_R_PAG_ABE_PCT.FindComponent('mmCabHist')).Visible := chbExibirHistorico.Checked;
                        TfrxMemoView (FIN_FR_R_PAG_ABE_PCT.FindComponent('FIN_DB_R_PAG_ABEhistorico')).Visible := chbExibirHistorico.Checked;
                        if chbExibirHistorico.Checked then
                          begin
                            TfrxMemoView (FIN_FR_R_PAG_ABE_PCT.FindComponent('FIN_DB_R_PAG_ABEhistorico')).StretchMode := smActualHeight;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_PCT.FindComponent('MasterData1')).Stretched := true;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_PCT.FindComponent('MasterData1')).Height := vPixelPorCM*0.94;
                            TfrxHeader (FIN_FR_R_PAG_ABE_PCT.FindComponent('Header1')).Height := vPixelPorCM*1.00;
                            TfrxMemoView (FIN_FR_R_PAG_ABE_PCT.FindComponent('mmShape')).Height := vPixelPorCM*1.00;
                          end
                        else
                          begin
                            TfrxMemoView (FIN_FR_R_PAG_ABE_PCT.FindComponent('FIN_DB_R_PAG_ABEhistorico')).StretchMode := smDontStretch;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_PCT.FindComponent('MasterData1')).Stretched := false;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_PCT.FindComponent('MasterData1')).Height :=vPixelPorCM*0.40;
                            TfrxHeader (FIN_FR_R_PAG_ABE_PCT.FindComponent('Header1')).Height := vPixelPorCM*0.50;
                            TfrxMemoView (FIN_FR_R_PAG_ABE_PCT.FindComponent('mmShape')).Height := vPixelPorCM*0.50;
                          end;



                        if rTipoData = '2' then
                          FIN_FR_R_PAG_ABE_PCT.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_PAG_ABE_PCT.Variables['ft_data'] := QuotedStr('Vencimento');

                         FIN_FR_R_PAG_ABE_PCT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         FIN_FR_R_PAG_ABE_PCT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         FIN_FR_R_PAG_ABE_PCT.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         FIN_FR_R_PAG_ABE_PCT.PrepareReport();
                         FIN_FR_R_PAG_ABE_PCT.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Forma de Pagamento' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_FPG.FindObject('imgEmpresa4'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_FPG.Name,xCodLme,xRevLme,nil);

                        if rTipoData = '2' then
                          FIN_FR_R_PAG_ABE_FPG.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_PAG_ABE_FPG.Variables['ft_data'] := QuotedStr('Vencimento');

                         FIN_FR_R_PAG_ABE_FPG.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         FIN_FR_R_PAG_ABE_FPG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         FIN_FR_R_PAG_ABE_FPG.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         FIN_FR_R_PAG_ABE_FPG.PrepareReport();
                         FIN_FR_R_PAG_ABE_FPG.ShowReport();
                       end;



                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Resumo por Plano de Contas' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_RPC.FindObject('imgEmpresa6'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_RPC.Name,xCodLme,xRevLme,nil);

                        FIN_FR_R_PAG_ABE_RPC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_PAG_ABE_RPC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_PAG_ABE_RPC.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_PAG_ABE_RPC.PrepareReport();
                        FIN_FR_R_PAG_ABE_RPC.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Resumo por Forma de Pagamento' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_RFP.FindObject('imgEmpresa7'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_RFP.Name,xCodLme,xRevLme,nil);

                        FIN_FR_R_PAG_ABE_RFP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_PAG_ABE_RFP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_PAG_ABE_RFP.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_PAG_ABE_RFP.PrepareReport();
                        FIN_FR_R_PAG_ABE_RFP.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07 - Por Vencimento' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_PRD.FindObject('imgEmpresa8'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_PRD.Name,xCodLme,xRevLme,nil);

                        TfrxMemoView (FIN_FR_R_PAG_ABE_PRD.FindComponent('mmCabHist')).Visible := chbExibirHistorico.Checked;
                        TfrxMemoView (FIN_FR_R_PAG_ABE_PRD.FindComponent('FIN_DB_R_PAG_ABEhistorico')).Visible := chbExibirHistorico.Checked;
                        if chbExibirHistorico.Checked then
                          begin
                            TfrxMemoView (FIN_FR_R_PAG_ABE_PRD.FindComponent('FIN_DB_R_PAG_ABEhistorico')).StretchMode := smActualHeight;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_PRD.FindComponent('MasterData1')).Stretched := true;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_PRD.FindComponent('MasterData1')).Height := vPixelPorCM*0.94;
                            TfrxHeader (FIN_FR_R_PAG_ABE_PRD.FindComponent('Header1')).Height := vPixelPorCM*1.00;
                            TfrxShapeView (FIN_FR_R_PAG_ABE_PRD.FindComponent('mmShape')).Height := vPixelPorCM*1.00;
                          end
                        else
                          begin
                            TfrxMemoView (FIN_FR_R_PAG_ABE_PRD.FindComponent('FIN_DB_R_PAG_ABEhistorico')).StretchMode := smDontStretch;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_PRD.FindComponent('MasterData1')).Stretched := false;
                            TfrxMasterData (FIN_FR_R_PAG_ABE_PRD.FindComponent('MasterData1')).Height :=vPixelPorCM*0.40;
                            TfrxHeader (FIN_FR_R_PAG_ABE_PRD.FindComponent('Header1')).Height := vPixelPorCM*0.50;
                            TfrxShapeView (FIN_FR_R_PAG_ABE_PRD.FindComponent('mmShape')).Height := vPixelPorCM*0.50;
                          end;


                        if rTipoData = '2' then
                          FIN_FR_R_PAG_ABE_PRD.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_PAG_ABE_PRD.Variables['ft_data'] := QuotedStr('Vencimento');

                        FIN_FR_R_PAG_ABE_PRD.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_PAG_ABE_PRD.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_PAG_ABE_PRD.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_PAG_ABE_PRD.PrepareReport();
                        FIN_FR_R_PAG_ABE_PRD.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Por Obra' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_OBR.FindObject('imgEmpresa2'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_OBR.Name,xCodLme,xRevLme,nil);



                        FIN_FR_R_PAG_ABE_OBR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_PAG_ABE_OBR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_PAG_ABE_OBR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_PAG_ABE_OBR.PrepareReport();
                        FIN_FR_R_PAG_ABE_OBR.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '10 - Cheques Por Fornecedor' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_FCH.FindObject('imgEmpresa2'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        if rTipoData = '2' then
                          FIN_FR_R_PAG_ABE_FCH.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_PAG_ABE_FCH.Variables['ft_data'] := QuotedStr('Vencimento');

                         dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_FCH.Name,xCodLme,xRevLme,nil);
                         FIN_FR_R_PAG_ABE_FCH.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         FIN_FR_R_PAG_ABE_FCH.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         FIN_FR_R_PAG_ABE_FCH.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         FIN_FR_R_PAG_ABE_FCH.PrepareReport();
                         FIN_FR_R_PAG_ABE_FCH.ShowReport();
                       end;

                  end
               else
                  begin
                     ShowMessage('Nenhum registro foi encontrado.');
                  end;
             end
         else
             begin
               FIN_CD_R_PAG_ABE_PPG.Active:= False;
               FIN_CD_R_PAG_ABE_PPG.Close;
               FIN_CD_R_PAG_ABE_PPG.Data :=
                 FIN_CD_R_PAG_ABE_PPG.DataRequest(
                      VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
                                  xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto,xCondObra, rOrdenacao, lbxRelatorios.ItemIndex]));

               if not FIN_CD_R_PAG_ABE_PPG.IsEmpty then
                  begin
                    PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Por Faixa de Vencimento' then
                       begin
                          if FileExists(PathImg) then
                             begin
                                LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_ABE_PPG.FindObject('imgEmpresa5'));
                                if Assigned(LogoEmpresa) then
                                   LogoEmpresa.Picture.LoadFromFile(PathImg);
                             end;

                          MontarTotResumo;

                          dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_ABE_PPG.Name,xCodLme,xRevLme,nil);

                          if rTipoData = '2' then
                            FIN_FR_R_PAG_ABE_PPG.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                          else
                            FIN_FR_R_PAG_ABE_PPG.Variables['ft_data'] := QuotedStr('Vencimento');

                          FIN_FR_R_PAG_ABE_PPG.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                          FIN_FR_R_PAG_ABE_PPG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                          FIN_FR_R_PAG_ABE_PPG.Variables['Opcoes'] := QuotedStr(xOpcoes);
                          FIN_FR_R_PAG_ABE_PPG.PrepareReport();
                          FIN_FR_R_PAG_ABE_PPG.ShowReport();
                       end;
                  end
               else
                  begin
                     ShowMessage('Nenhum registro foi encontrado.');
                  end;
             end;
      end
   else
     if (cbbTipoRel.Visible=true) and  (cbbTipoRel.ItemIndex = 1) then
        begin
          if ((lbxRelatorios.ItemIndex <> 4) AND (lbxRelatorios.ItemIndex <> 7)) then
             begin
               if lbxRelatorios.ItemIndex in [0,1,2,3] then
                  begin
                    rIndexRelatorio := lbxRelatorios.ItemIndex;
                  end
               else
                  begin
                    rIndexRelatorio := lbxRelatorios.ItemIndex - 1;
                  end;

              {   showmessage(
                        'Empresa: ' +  xCondEmpresa + #13 +
                        'Data ini: ' +  rDtaIni + #13 +
                        'Data fin: ' +  rDtaFin + #13 +
                        'Forn: ' +  xCondFornecedor + #13 +
                        'Forma: ' +  xCondFormaPagamento + #13 +
                        'Plano: ' +  xCondPlanoContas + #13 +
                        'Centro: ' +  xCondCentroCusto + #13 +
                        'Orden: ' +  rOrdenacao + #13 +
                        'Rel: ' +  inttostr(lbxRelatorios.ItemIndex) + #13); }


                FIN_CD_R_PAG_BXA.Active := False;
                FIN_CD_R_PAG_BXA.Close;
                FIN_CD_R_PAG_BXA.Data :=
                FIN_CD_R_PAG_BXA.DataRequest(
                      VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondFornecedor, xCondFormaPagamento,
                                  xCondPlanoContas,xCondCentroCusto,xCondObra,rOrdenacao, rIndexRelatorio,rTipoData]));

                if not FIN_CD_R_PAG_BXA.IsEmpty then
                  begin
                   PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral' then
                    begin
                     if FileExists(PathImg) then
                       begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_BXA_GER.FindObject('imgEmpresa8'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;

                     dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_BXA_GER.Name,xCodLme,xRevLme,nil);


                     TfrxMemoView (FIN_FR_R_PAG_BXA_GER.FindComponent('mmCabHist')).Visible := chbExibirHistorico.Checked;
                     TfrxMemoView (FIN_FR_R_PAG_BXA_GER.FindComponent('FIN_DB_R_PAG_BXAhistorico')).Visible := chbExibirHistorico.Checked;
                    { if chbExibirHistorico.Checked then
                      begin
                        TfrxMasterData (FIN_FR_R_PAG_BXA_GER.FindComponent('MasterData1')).Stretched := true;
                        TfrxMasterData (FIN_FR_R_PAG_BXA_GER.FindComponent('MasterData1')).Height := vPixelPorCM*0.94;
                        TfrxHeader (FIN_FR_R_PAG_BXA_GER.FindComponent('Header1')).Height := vPixelPorCM*1.00;
                        TfrxMemoView (FIN_FR_R_PAG_BXA_GER.FindComponent('mmShape')).Height := vPixelPorCM*1.00;
                      end
                     else
                      begin
                     //    TfrxMasterData (FIN_FR_R_PAG_BXA_GER.FindComponent('MasterData1')).Stretched := false;
                     //   TfrxMasterData (FIN_FR_R_PAG_BXA_GER.FindComponent('MasterData1')).Height :=vPixelPorCM*0.40;
                      //  TfrxHeader (FIN_FR_R_PAG_BXA_GER.FindComponent('Header1')).Height := vPixelPorCM*0.50;
                      //  TfrxMemoView (FIN_FR_R_PAG_BXA_GER.FindComponent('mmShape')).Height := vPixelPorCM*0.50;
                      end;    }


                     if rTipoData = '2' then
                        FIN_FR_R_PAG_BXA_GER.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                      else
                        FIN_FR_R_PAG_BXA_GER.Variables['ft_data'] := QuotedStr('Vencimento');

                     FIN_FR_R_PAG_BXA_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     FIN_FR_R_PAG_BXA_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     FIN_FR_R_PAG_BXA_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     FIN_FR_R_PAG_BXA_GER.PrepareReport();
                     FIN_FR_R_PAG_BXA_GER.ShowReport();
                    end;

                   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Fornecedor' then
                     begin
                     if FileExists(PathImg) then
                       begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_BXA_FOR.FindObject('imgEmpresa9'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;

                     dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_BXA_FOR.Name,xCodLme,xRevLme,nil);

                     if rTipoData = '2' then
                        FIN_FR_R_PAG_BXA_FOR.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                      else
                        FIN_FR_R_PAG_BXA_FOR.Variables['ft_data'] := QuotedStr('Vencimento');

                     FIN_FR_R_PAG_BXA_FOR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     FIN_FR_R_PAG_BXA_FOR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     FIN_FR_R_PAG_BXA_FOR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     FIN_FR_R_PAG_BXA_FOR.PrepareReport();
                     FIN_FR_R_PAG_BXA_FOR.ShowReport();
                   end;

                   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Plano de Contas' then
                    begin
                     if FileExists(PathImg) then
                      begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_BXA_PCT.FindObject('imgEmpresa10'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                      end;

                     dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_BXA_PCT.Name,xCodLme,xRevLme,nil);

                     if rTipoData = '2' then
                      FIN_FR_R_PAG_BXA_PCT.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                    else
                      FIN_FR_R_PAG_BXA_PCT.Variables['ft_data'] := QuotedStr('Vencimento');

                     FIN_FR_R_PAG_BXA_PCT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     FIN_FR_R_PAG_BXA_PCT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     FIN_FR_R_PAG_BXA_PCT.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     FIN_FR_R_PAG_BXA_PCT.PrepareReport();
                     FIN_FR_R_PAG_BXA_PCT.ShowReport();
                    end;

                   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Forma de Pagamento' then
                    begin
                     if FileExists(PathImg) then
                      begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_BXA_FPG.FindObject('imgEmpresa11'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;

                    dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_BXA_FPG.Name,xCodLme,xRevLme,nil);

                    if rTipoData = '2' then
                      FIN_FR_R_PAG_BXA_FPG.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                    else
                      FIN_FR_R_PAG_BXA_FPG.Variables['ft_data'] := QuotedStr('Vencimento');

                    FIN_FR_R_PAG_BXA_FPG.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                    FIN_FR_R_PAG_BXA_FPG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                    FIN_FR_R_PAG_BXA_FPG.Variables['Opcoes'] := QuotedStr(xOpcoes);
                    FIN_FR_R_PAG_BXA_FPG.PrepareReport();
                    FIN_FR_R_PAG_BXA_FPG.ShowReport();
                   end;


                 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Resumo por Plano de Contas' then
                   begin
                    if FileExists(PathImg) then
                     begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_BXA_RPC.FindObject('imgEmpresa12'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                     end;

                    dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_BXA_RPC.Name,xCodLme,xRevLme,nil);
                  FIN_FR_R_PAG_BXA_RPC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_PAG_BXA_RPC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_PAG_BXA_RPC.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_PAG_BXA_RPC.PrepareReport();
                  FIN_FR_R_PAG_BXA_RPC.ShowReport();
                 end;

                 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Resumo por Forma de Pagamento' then
                  begin
                   if FileExists(PathImg) then
                     begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_BXA_RFP.FindObject('imgEmpresa13'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                     end;

                   dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_BXA_RFP.Name,xCodLme,xRevLme,nil);
                   FIN_FR_R_PAG_BXA_RFP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                   FIN_FR_R_PAG_BXA_RFP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                   FIN_FR_R_PAG_BXA_RFP.Variables['Opcoes'] := QuotedStr(xOpcoes);
                   FIN_FR_R_PAG_BXA_RFP.PrepareReport();
                   FIN_FR_R_PAG_BXA_RFP.ShowReport();
                  end;

                 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Por Obra' then
                  begin
                    FIN_CD_R_PAG_CXA.Close;
                    FIN_CD_R_PAG_CXA.Data :=
                      FIN_CD_R_PAG_CXA.DataRequest(VarArrayOf([rDtaIni, rDtaFin,dmGeral.BUS_CD_C_CXA_BCOid_conta.Text]));
                    if FileExists(PathImg) then
                     begin
                       LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_BXA_OBR.FindObject('imgEmpresa9'));
                       if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                     end;

                   dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_BXA_OBR.Name,xCodLme,xRevLme,nil);
                   FIN_FR_R_PAG_BXA_OBR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                   FIN_FR_R_PAG_BXA_OBR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                   FIN_FR_R_PAG_BXA_OBR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                   FIN_FR_R_PAG_BXA_OBR.PrepareReport();
                   FIN_FR_R_PAG_BXA_OBR.ShowReport();
                  end;
             end
          else
            begin
             ShowMessage('Nenhum registro foi encontrado.');
            end;
        end
       else
         if lbxRelatorios.ItemIndex IN [4,7] then
           begin
              ShowMessage('Não existe relatorio.');
           end;
        end
     else
       begin
         if (cbbTipoRel.Visible=true) and (cbbTipoRel.ItemIndex = 2) then
            begin
              FIN_CD_R_PAG_BXA.Active := False;
              FIN_CD_R_PAG_BXA.Close;
              FIN_CD_R_PAG_BXA.Data :=
              FIN_CD_R_PAG_BXA.DataRequest(
                    VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondFornecedor, xCondFormaPagamento,
                                xCondPlanoContas,xCondCentroCusto,xCondObra,rOrdenacao, rIndexRelatorio,rTipoData]));

              FIN_CD_R_PAG_ABE.Active:= False;
              FIN_CD_R_PAG_ABE.Close;
              FIN_CD_R_PAG_ABE.Data :=
                FIN_CD_R_PAG_ABE.DataRequest(
                      VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
                                  xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto,xCondObra, rOrdenacao, lbxRelatorios.ItemIndex]));

              if (not FIN_CD_R_PAG_BXA.IsEmpty) or (not FIN_CD_R_PAG_ABE.IsEmpty) then
                begin
                  if FileExists(PathImg) then
                   begin
                     LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_GER_OBR.FindObject('imgEmpresa9'));
                     if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;

                  dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_GER_OBR.Name,xCodLme,xRevLme,nil);
                  FIN_FR_R_PAG_GER_OBR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_PAG_GER_OBR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_PAG_GER_OBR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_PAG_GER_OBR.PrepareReport();
                  FIN_FR_R_PAG_GER_OBR.ShowReport();
                end
              else
                begin
                  ShowMessage('Nenhum registro foi encontrado.');
                end;
            end;
       end;



    if ((cbbTipoRel.Visible = false) and (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Saldo dos Títulos')) then
      begin
         FIN_CD_R_PAG_SLD.Active := False;
         FIN_CD_R_PAG_SLD.Close;
         FIN_CD_R_PAG_SLD.Data :=
         FIN_CD_R_PAG_SLD.DataRequest(
                      VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
                                  xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto,xCondObra, rOrdenacao, lbxRelatorios.ItemIndex,rDtaPagamento]));


         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';


        if (not FIN_CD_R_PAG_SLD.IsEmpty)  then
          begin
            if FileExists(PathImg) then
             begin
               LogoEmpresa := TfrxPictureView(FIN_FR_R_PAG_SLD.FindObject('imgEmpresa1'));
               if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;

             TfrxMemoView (FIN_FR_R_PAG_SLD.FindComponent('mmCabHist')).Visible := chbExibirHistorico.Checked;
             TfrxMemoView (FIN_FR_R_PAG_SLD.FindComponent('FIN_DB_R_PAG_SLDhistorico')).Visible := chbExibirHistorico.Checked;
             if chbExibirHistorico.Checked then
              begin
                TfrxMasterData (FIN_FR_R_PAG_SLD.FindComponent('MasterData1')).Stretched := true;
                TfrxMasterData (FIN_FR_R_PAG_SLD.FindComponent('MasterData1')).Height := vPixelPorCM*0.94;
                TfrxHeader (FIN_FR_R_PAG_SLD.FindComponent('Header1')).Height := vPixelPorCM*1.62;
                TfrxShapeView (FIN_FR_R_PAG_SLD.FindComponent('mmShape')).Height := vPixelPorCM*1.00;
              end
             else
              begin
                TfrxMasterData (FIN_FR_R_PAG_SLD.FindComponent('MasterData1')).Stretched := false;
                TfrxMasterData (FIN_FR_R_PAG_SLD.FindComponent('MasterData1')).Height :=vPixelPorCM*0.40;
                TfrxHeader (FIN_FR_R_PAG_SLD.FindComponent('Header1')).Height := vPixelPorCM*1.12;
                TfrxShapeView (FIN_FR_R_PAG_SLD.FindComponent('mmShape')).Height := vPixelPorCM*0.50;
              end;



            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PAG_SLD.Name,xCodLme,xRevLme,nil);
            FIN_FR_R_PAG_SLD.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FIN_FR_R_PAG_SLD.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FIN_FR_R_PAG_SLD.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FIN_FR_R_PAG_SLD.Variables['dta_pagamento'] := QuotedStr(txtDtaPagamento.Text);
            FIN_FR_R_PAG_SLD.PrepareReport();
            FIN_FR_R_PAG_SLD.ShowReport();
          end
        else
          begin
            ShowMessage('Nenhum registro foi encontrado.');
          end;
      end;

end;

procedure TFIN_FM_R_PAG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_PAG);
end;

procedure TFIN_FM_R_PAG.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  lbxRelatoriosClick(self);

  tsObra.TabVisible := false;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=True then
    begin
     tsObra.TabVisible := true;
    end;

  dmGeral.BUS_CD_C_CXA_BCO.Close;
  dmGeral.BUS_CD_C_CXA_BCO.Data :=
          dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([3,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));

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

  // Fornecedores --------------------------------------------------------------

  // Formas de Pagamento -------------------------------------------------------
  dmGeral.BUS_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_FPG.Data :=
  dmGeral.BUS_CD_C_FPG.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FPG.First;

       while not dmGeral.BUS_CD_C_FPG.eof do
          begin
            lboxFormaDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_FPG.Next;
          end;
     end;

 dmGeral.BUS_CD_C_FPG.Close;

  // Locais de Títulos ---------------------------------------------------------
  dmGeral.BUS_CD_C_LTO.Close;
  dmGeral.BUS_CD_C_LTO.Data :=
  dmGeral.BUS_CD_C_LTO.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_LTO.IsEmpty then
     begin
       dmGeral.BUS_CD_C_LTO.First;

       while not dmGeral.BUS_CD_C_LTO.eof do
          begin
            lboxLocaisDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_LTO.FieldByName('ID_LOCAL_TITULO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_LTO.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_LTO.Next;
          end;
     end;

 dmGeral.BUS_CD_C_LTO.Close;

  // Planos de Contas ----------------------------------------------------------
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PCT.First;

       while not dmGeral.BUS_CD_C_PCT.eof do
          begin
            lboxPlanosDisponiveis.Items.Add(dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PCT.Next;
          end;
     end;

 dmGeral.BUS_CD_C_PCT.Close;

  // Centros de Custo ----------------------------------------------------------


  dmGeral.BUS_CD_C_CCU.Close;
  dmGeral.BUS_CD_C_CCU.Data :=
  dmGeral.BUS_CD_C_CCU.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_CCU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CCU.First;

       while not dmGeral.BUS_CD_C_CCU.eof do
          begin
            lboxCentroCustoDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_CCU.FieldByName('ID_CCUSTO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CCU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CCU.Next;
          end;
     end;

 dmGeral.BUS_CD_C_CCU.Close;


   // Obra -------------------------------------------------------
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=True then
      begin

        dmGeral.BUS_CD_C_OBR.Close;
        dmGeral.BUS_CD_C_OBR.Data :=
        dmGeral.BUS_CD_C_OBR.DataRequest(
                VarArrayOf([1, '%','']));

       if not dmGeral.BUS_CD_C_OBR.IsEmpty then
           begin
             dmGeral.BUS_CD_C_OBR.First;

             while not dmGeral.BUS_CD_C_OBR.eof do
                begin
                  lboxObraDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsFloat,6,0) +
                                          ' - ' + dmGeral.BUS_CD_C_OBR.FieldByName('DESCRICAO').AsString);
                  dmGeral.BUS_CD_C_OBR.Next;
                end;
           end;
         dmGeral.BUS_CD_C_OBR.Close;
      end;
end;

procedure TFIN_FM_R_PAG.lboxCentroCustoDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxCentroCustoDisponiveis.ItemIndex > - 1 then
     begin
       lboxCentroCustoSelecionado.Items.Add(lboxCentroCustoDisponiveis.Items[lboxCentroCustoDisponiveis.ItemIndex]);
       lboxCentroCustoDisponiveis.Items.Delete(lboxCentroCustoDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxCentroCustoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCentroCustoSelecionado.ItemIndex > -1 then
     begin
       lboxCentroCustoDisponiveis.Items.Add(lboxCentroCustoSelecionado.Items[lboxCentroCustoSelecionado.ItemIndex]);
       lboxCentroCustoSelecionado.Items.Delete(lboxCentroCustoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxFormaDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaDisponivel.ItemIndex > - 1 then
     begin
       lboxFormaSelecionada.Items.Add(lboxFormaDisponivel.Items[lboxFormaDisponivel.ItemIndex]);
       lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxFormaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaSelecionada.ItemIndex > -1 then
     begin
       lboxFormaDisponivel.Items.Add(lboxFormaSelecionada.Items[lboxFormaSelecionada.ItemIndex]);
       lboxFormaSelecionada.Items.Delete(lboxFormaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
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

procedure TFIN_FM_R_PAG.lboxLocaisDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocaisDisponiveis.ItemIndex > - 1 then
     begin
       lboxLocalSelecionado.Items.Add(lboxLocaisDisponiveis.Items[lboxLocaisDisponiveis.ItemIndex]);
       lboxLocaisDisponiveis.Items.Delete(lboxLocaisDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxLocalSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocalSelecionado.ItemIndex > -1 then
     begin
       lboxLocaisDisponiveis.Items.Add(lboxLocalSelecionado.Items[lboxLocalSelecionado.ItemIndex]);
       lboxLocalSelecionado.Items.Delete(lboxLocalSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxObraDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxObraDisp.ItemIndex > - 1 then
     begin
       lboxObraSel.Items.Add(lboxObraDisp.Items[lboxObraDisp.ItemIndex]);
       lboxObraDisp.Items.Delete(lboxObraDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxObraSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxObraSel.ItemIndex > -1 then
     begin
       lboxObraDisp.Items.Add(lboxObraSel.Items[lboxObraSel.ItemIndex]);
       lboxObraSel.Items.Delete(lboxObraSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxPlanosDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxplanosDisponiveis.ItemIndex > -1 then
     begin
       lboxPlanoSelecionado.Items.Add(lboxplanosDisponiveis.Items[lboxplanosDisponiveis.ItemIndex]);
       lboxplanosDisponiveis.Items.Delete(lboxplanosDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lboxPlanoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanoSelecionado.ItemIndex > -1 then
     begin
       lboxplanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[lboxPlanoSelecionado.ItemIndex]);
       lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PAG.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  lblConta.Enabled := false;
  cbbConta.Enabled := false;

  lblDtaPagamento.Visible := false;
  txtDtaPagamento.Visible := false;


  lblTipoRel.Visible := true;
  cbbTipoRel.Visible := true;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Fornecedor');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Fornecedor' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Plano de Contas' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Fornecedor');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Forma de Pagamento' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Fornecedor');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Por Faixa de Vencimento' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Fornecedor');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Resumo por Plano de Contas' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Fornecedor');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Resumo por Forma de Pagamento' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Fornecedor');
      end;

    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07 - Por Vencimento' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('2 - Fornecedor');
      end;



    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Saldo dos Títulos' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');

        lblDtaPagamento.Visible := true;
        txtDtaPagamento.Visible := true;

        lblTipoRel.Visible := false;
        cbbTipoRel.Visible := false;
      end;



    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Por Obra' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Fornecedor');

        cbbTipoRel.Items.Clear;
        cbbTipoRel.Items.Add('Títulos em aberto');
        cbbTipoRel.Items.Add('Títulos pagos');
        cbbTipoRel.Items.Add('Todos');

        lblConta.Enabled := true;
        cbbConta.Enabled := true;
      end
    else
      begin
        cbbTipoRel.Items.Clear;
        cbbTipoRel.Items.Add('Títulos em aberto');
        cbbTipoRel.Items.Add('Títulos pagos');
      end;
   cbbTipoRel.ItemIndex := 0;
   cbbOrdenacao.ItemIndex := 0;
end;

procedure TFIN_FM_R_PAG.MenuItemCentroCustoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCentroCustoDisponiveis.ClearSelection;
  if lboxCentroCustoDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCentroCustoDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxCentroCustoDisponiveis.Items.Count - 1 do
           begin
             lboxCentroCustoSelecionado.Items.Add(lboxCentroCustoDisponiveis.Items[i]);
             lboxCentroCustoDisponiveis.Items.Delete(lboxCentroCustoDisponiveis.ItemIndex);
           end;
       lboxCentroCustoDisponiveis.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PAG.menuItemEmpresasClick(Sender: TObject);
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

procedure TFIN_FM_R_PAG.MenuItemFormasPagamentoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxFormaDisponivel.ClearSelection;
  if lboxFormaDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFormaDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxFormaDisponivel.Items.Count - 1 do
           begin
             lboxFormaSelecionada.Items.Add(lboxFormaDisponivel.Items[i]);
             lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
           end;
       lboxFormaDisponivel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PAG.MenuItemLocalTituloClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
   lboxLocaisDisponiveis.ClearSelection;

  if lboxLocaisDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxLocaisDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxLocaisDisponiveis.Items.Count - 1 do
           begin
             lboxLocalSelecionado.Items.Add(lboxLocaisDisponiveis.Items[i]);
             lboxLocaisDisponiveis.Items.Delete(lboxLocaisDisponiveis.ItemIndex);
           end;
       lboxLocaisDisponiveis.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PAG.MenuItemPlanoContaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPlanosDisponiveis.ClearSelection;

  if lboxPlanosDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanosDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanosDisponiveis.Items.Count - 1 do
           begin
             lboxPlanoSelecionado.Items.Add(lboxPlanosDisponiveis.Items[i]);
             lboxPlanosDisponiveis.Items.Delete(lboxPlanosDisponiveis.ItemIndex);
           end;
       lboxPlanosDisponiveis.Items.Clear;
     end;
end;

procedure TFIN_FM_R_PAG.MontarDadosABE_PPG;
begin



end;

procedure TFIN_FM_R_PAG.MontarTotResumo;
var
  i, OrdemGrupo: integer;
begin

  if not cdsTempResABE_PPG.IsEmpty then
     cdsTempResABE_PPG.EmptyDataSet;

  cdsTempResABE_PPG.Close;
  cdsTempResABE_PPG.CreateDataSet;


  FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.First;

  i := 1;

  cdsTempResABE_PPG.Insert;

  cdsTempResABE_PPGFAIXA.AsString := FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.FieldByName('PRAZO').AsVariant;
   if cdsTempResABE_PPGFAIXA.AsString = 'MENOS DE 30 DIAS' then
      OrdemGrupo := 1;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 31 A 60 DIAS' then
      OrdemGrupo := 2;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 61 A 90 DIAS' then
      OrdemGrupo := 3;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 91 A 120 DIAS' then
      OrdemGrupo := 4;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 121 A 150 DIA' then
      OrdemGrupo := 5;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 151 A 180 DIAS' then
      OrdemGrupo := 6;
   if cdsTempResABE_PPGFAIXA.AsString = 'A PARTIR DE 181 DIAS' then
      OrdemGrupo := 7;

   cdsTempResABE_PPGOrdemGrupo.AsInteger   := OrdemGrupo;
  cdsTempResABE_PPGtotAVencer.AsCurrency     := 0;
  cdsTempResABE_PPGtotVencidos.AsCurrency    := 0;

  OrdemGrupo := 1;

  while not FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.Eof  do
    begin

      if not (cdsTempResABE_PPG.Locate('FAIXA',trim(FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.FieldByName('PRAZO').AsVariant),[])) then
         begin
           cdsTempResABE_PPG.Insert;
           cdsTempResABE_PPGFAIXA.AsString         := trim(FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.FieldByName('PRAZO').AsVariant);
           cdsTempResABE_PPGtotAVencer.AsCurrency  := 0;
           cdsTempResABE_PPGtotVencidos.AsCurrency := 0;
         end;
      cdsTempResABE_PPG.edit;
       if cdsTempResABE_PPGFAIXA.AsString = 'MENOS DE 30 DIAS' then
          OrdemGrupo := 1
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 31 A 60 DIAS' then
          OrdemGrupo := 2
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 61 A 90 DIAS' then
          OrdemGrupo := 3
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 91 A 120 DIAS' then
          OrdemGrupo := 4
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 121 A 150 DIA' then
          OrdemGrupo := 5
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 151 A 180 DIAS' then
          OrdemGrupo := 6
       else if cdsTempResABE_PPGFAIXA.AsString = 'A PARTIR DE 181 DIAS' then
          OrdemGrupo := 7;

       cdsTempResABE_PPGOrdemGrupo.AsInteger   := OrdemGrupo;
      if FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.FieldByName('DTA_VENCIMENTO').AsDateTime <= xDataSis then
         begin

           cdsTempResABE_PPGtotVencidos.AsCurrency  := cdsTempResABE_PPGtotVencidos.AsCurrency +  FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.FieldByName('VLR_SALDO').AsCurrency;
         end
      else
         begin
           cdsTempResABE_PPGtotAVencer.AsCurrency   := cdsTempResABE_PPGtotAVencer.AsCurrency + FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.FieldByName('VLR_SALDO').AsCurrency;
         end;
      cdsTempResABE_PPG.Post;
      FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.Next;
    end;
  FIN_FM_R_PAG.FIN_CD_R_PAG_ABE_PPG.First;

  cdsTempResABE_PPG.Cancel;

  if cdsTempResABE_PPG.IsEmpty then
     cdsTempResABE_PPG.Close
  else
     begin
       cdsTempResABE_PPG.IndexFieldNames := 'OrdemGrupo';
       //cdsTempResABE_PPG.First;
     end;
end;

procedure TFIN_FM_R_PAG.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesFornecedor,opcoesFormaPagamento,opcoesLocalTitulo,
  opcoesPlanoContas,opcoesCentroCusto, opcoesObra:string;
begin

  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpresaSelecionada.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                    '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end;

  // Fornecedores --------------------------------------------------------------
  xCondFornecedor := '';
  if lboxFornecedores.Count > 0 then
     begin
       for i := 0 to lboxFornecedores.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lboxFornecedores.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor +'                    '+lboxFornecedores.Items[i] + #13+#10;
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lboxFornecedores.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + lboxFornecedores.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
        opcoesFornecedor := 'Todos';
      end;

  // Formas de Pagamento ----------------------------------------------------------------
  xCondFormaPagamento := '';
  if lboxFormaSelecionada.Count > 0 then
     begin
      if lboxFormaDisponivel.Count > 0 then
        begin
         for i := 0 to lboxFormaSelecionada.Count - 1 do
          begin
            if xCondFormaPagamento <> '' then
               begin
                 xCondFormaPagamento :=
                 xCondFormaPagamento + ',' +''''+trim(copy(lboxFormaSelecionada.Items[i],1,3))+'''';
                 opcoesFormaPagamento :=
                 opcoesFormaPagamento +'                    '+lboxFormaSelecionada.Items[i] + #13+#10;
               end;
            if xCondFormaPagamento = '' then
               begin
                 xCondFormaPagamento :=
                 xCondFormaPagamento +''''+trim(copy(lboxFormaSelecionada.Items[i],1,3))+'''';
                 opcoesFormaPagamento :=
                 opcoesFormaPagamento + lboxFormaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end
     else
        begin
          opcoesFormaPagamento:= 'Todos';
        End;
    end
   else
     begin
       opcoesFormaPagamento:= 'Todos';
     end;

  // Locais de Títulos ---------------------------------------------------------
  xCondLocalTitulo := '';
  if lboxLocalSelecionado.Count > 0 then
     begin
     if lboxLocaisDisponiveis.Count > 0 then
      begin

       for i := 0 to lboxLocalSelecionado.Count - 1 do
          begin
            if xCondLocalTitulo <> '' then
               begin
                 xCondLocalTitulo :=
                 xCondLocalTitulo + ',' +''''+trim(copy(lboxLocalSelecionado.Items[i],1,3))+'''';
                 opcoesLocalTitulo :=
                 opcoesLocalTitulo +'                    '+lboxLocalSelecionado.Items[i] + #13+#10;
               end;
            if xCondLocalTitulo = '' then
               begin
                 xCondLocalTitulo :=
                 xCondLocalTitulo +''''+trim(copy(lboxLocalSelecionado.Items[i],1,3))+'''';
                 opcoesLocalTitulo :=
                 opcoesLocalTitulo +lboxLocalSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
       opcoesLocalTitulo :='Todos';
     end;
     end
  else
     begin
       opcoesLocalTitulo :='Todos';
     end;

  // Planos de Contas ----------------------------------------------------------
  xCondPlanoContas := '';
  if lboxPlanoSelecionado.Count > 0 then
     begin
     if lboxPlanosDisponiveis.Count > 0 then
        begin

       for i := 0 to lboxPlanoSelecionado.Count - 1 do
          begin
            if xCondPlanoContas <> '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas + ',' +''''+trim(copy(lboxPlanoSelecionado.Items[i],1,9))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +'                    '+lboxPlanoSelecionado.Items[i] + #13+#10;
               end;
            if xCondPlanoContas = '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas +''''+trim(copy(lboxPlanoSelecionado.Items[i],1,9))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +lboxPlanoSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
  else
      begin
        opcoesPlanoContas := 'Todos';
      end;
     end
  else
     begin
        opcoesPlanoContas := 'Todos';
     end;

  // Centros de Custos ---------------------------------------------------------
  xCondCentroCusto := '';
  if lboxCentroCustoSelecionado.Count > 0 then
     begin
       if lboxCentroCustoDisponiveis.Count > 0 then
     begin

       for i := 0 to lboxCentroCustoSelecionado.Count - 1 do
          begin
            if xCondCentroCusto <> '' then
               begin
                 xCondCentroCusto :=
                 xCondCentroCusto + ',' +''''+trim(copy(lboxCentroCustoSelecionado.Items[i],1,3))+'''';
                 opcoesCentroCusto :=
                 opcoesCentroCusto +'                    '+lboxCentroCustoSelecionado.Items[i] + #13+#10;
               end;
            if xCondCentroCusto = '' then
               begin
                 xCondCentroCusto :=
                 xCondCentroCusto +''''+trim(copy(lboxCentroCustoSelecionado.Items[i],1,3))+'''';
                 opcoesCentroCusto :=
                 opcoesCentroCusto +lboxCentroCustoSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
        opcoesCentroCusto :=  'Todos';
     end;
     end
   else
     begin
        opcoesCentroCusto :=  'Todos';
     end;


   // Obra ----------------------------------------------------------------
  xCondObra := '';
  if lboxObraSel.Count > 0 then
     begin
         for i := 0 to lboxObraSel.Count - 1 do
          begin
            if xCondObra <> '' then
               begin
                 xCondObra :=
                 xCondObra + ',' +''''+trim(copy(lboxObraSel.Items[i],1,6))+'''';
                 opcoesObra :=
                 opcoesObra +'                    '+lboxObraSel.Items[i] + #13+#10;
               end;
            if xCondObra = '' then
               begin
                 xCondObra :=
                 xCondObra +''''+trim(copy(lboxObraSel.Items[i],1,6))+'''';
                 opcoesObra :=
                 opcoesObra + lboxObraSel.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
       opcoesObra:= 'Todos';
     end;


  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Por data de.......: ' + cbbPorData.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação.........: ' + cbbOrdenacao.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor........: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'Forma de Pagamento: ' + opcoesFormaPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Local do Título...: ' + opcoesLocalTitulo+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas...: ' + opcoesPlanoContas+#13+#10;
   xOpcoes := xOpcoes + 'Centro de Custo...: ' + opcoesCentroCusto+#13+#10;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=true then
      xOpcoes := xOpcoes + 'Obra..............: ' + opcoesObra+#13+#10;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Saldo dos Títulos') then
      xOpcoes := xOpcoes + 'Pagamento até.....: ' +txtDtaPagamento.Text+#13+#10;

end;

function TFIN_FM_R_PAG.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';
  if ((lbxRelatorios.ItemIndex = 4) and (cbbTipoRel.Visible=true) and (cbbTipoRel.ItemIndex = 1)) then
       begin
         mens := mens +  '.Esta opção de relatório não existe para Títulos Pagos.' + #13;
       end;

  if trim(mens) <> '' then
     begin
       ShowMessage('Atenção!' + #13 + mens);
       Result := False;
       exit;
     end
  else
     begin
        if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
            begin
              mens := mens +  '.O período deve ser preenchido.' + #13;
            end
        else
            begin
              if (deInicial.Date >  deFinal.Date) then
                  begin
                    mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
                  end;
            end;

        if lboxEmpresaSelecionada.Count = 0 then
           begin
             mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
           end;

       if  ((lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Saldo dos Títulos') and (txtDtaPagamento.Text = '  /  /    ')) then
           begin
             mens := mens +  '.Limite da data de pagamento deve ser preenchido' + #13;
           end;

       if trim(mens) <> '' then
          begin
            ShowMessage('Atenção!' + #13 + mens);
            Result := False;
            exit;
          end;
     end;
end;
end.
