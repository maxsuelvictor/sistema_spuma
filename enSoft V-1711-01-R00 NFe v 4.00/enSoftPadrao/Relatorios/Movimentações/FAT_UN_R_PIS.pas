unit FAT_UN_R_PIS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Menus, frxExportPDF, frxClass,
  frxExportXLS, frxDBSet, Data.DB, Datasnap.DBClient;

type
  TFAT_FM_R_PIS = class(TPAD_FM_X_REL)
    Label1: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsTipoEstoque: TTabSheet;
    lblTipoEstoqueDisponiveis: TLabel;
    lblTipoEstoqueSelecionado: TLabel;
    lboxTipoEstoqueDisponiveis: TListBox;
    lboxTipoEstoqueSelecionado: TListBox;
    tsCfop: TTabSheet;
    lblCfopDisponiveis: TLabel;
    lblCfopSelecionado: TLabel;
    lboxCfopDisponiveis: TListBox;
    lboxCfopSelecionado: TListBox;
    tsCondicaoPagamento: TTabSheet;
    lblCondicaoPagamentoDisponivel: TLabel;
    lblCondicaoPagamentoSelecionado: TLabel;
    lboxCondicaoPagamentoSelecionada: TListBox;
    lboxCondicaoPagamentoDisponivel: TListBox;
    tsVendedor: TTabSheet;
    lblVendedoresDisponiveis: TLabel;
    lboxVendedores: TListBox;
    tsPis: TTabSheet;
    tsFornecedor: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    pmSelCondPag: TPopupMenu;
    btnSelCondPag: TMenuItem;
    pmSelTipoEstoque: TPopupMenu;
    btnTodosTipoEstoque: TMenuItem;
    pmSelCfop: TPopupMenu;
    btnSelCfop: TMenuItem;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverCfop: TPopupMenu;
    btnRemoverCfop: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelPisCofins: TPopupMenu;
    btnSelPisCofins: TMenuItem;
    pmRemoverTipoEstoque: TPopupMenu;
    btnRemoverTiposEstoque: TMenuItem;
    pmRemoverCondPag: TPopupMenu;
    btnRemoverCondicaoPag: TMenuItem;
    pmRemoverPisCofins: TPopupMenu;
    btnRemoverPisCofins: TMenuItem;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    pmRemoverFornecedor: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    FAT_FR_R_PIS_PRO: TfrxReport;
    FAT_FR_R_PIS_CST: TfrxReport;
    FAT_DB_R_PIS_ITE: TfrxDBDataset;
    FAT_XL_R_PIS: TfrxXLSExport;
    FAT_PD_R_PIS: TfrxPDFExport;
    FAT_DB_R_PIS_CIP: TfrxDBDataset;
    lblPiscofinsDisponiveis: TLabel;
    lblPisCofinsSelecionado: TLabel;
    lboxPisCofinsSelecionado: TListBox;
    lboxPisCofinsDisponiveis: TListBox;
    FAT_FR_R_PIS_NFL: TfrxReport;
    FAT_DB_R_PIS_NFL: TfrxDBDataset;
    FAT_CD_R_PIS_ITE: TClientDataSet;
    FAT_CD_R_PIS_ITEid_st_pis: TWideStringField;
    FAT_CD_R_PIS_ITEid_item: TIntegerField;
    FAT_CD_R_PIS_ITEint_nomeite: TWideStringField;
    FAT_CD_R_PIS_ITEvlr_liquido: TFloatField;
    FAT_CD_R_PIS_ITEbase_pis: TFMTBCDField;
    FAT_CD_R_PIS_ITEvalor_pis: TFMTBCDField;
    FAT_CD_R_PIS_ITEbase_cofins: TFMTBCDField;
    FAT_CD_R_PIS_ITEvalor_cofins: TFMTBCDField;
    FAT_CD_R_PIS_CIP: TClientDataSet;
    FAT_CD_R_PIS_CIPid_st_pis: TWideStringField;
    FAT_CD_R_PIS_CIPvlr_liquido: TFloatField;
    FAT_CD_R_PIS_CIPbase_pis: TFMTBCDField;
    FAT_CD_R_PIS_CIPvalor_pis: TFMTBCDField;
    FAT_CD_R_PIS_CIPbase_cofins: TFMTBCDField;
    FAT_CD_R_PIS_CIPvalor_cofins: TFMTBCDField;
    FAT_CD_R_PIS_NFL: TClientDataSet;
    FAT_CD_R_PIS_NFLid_st_pis: TWideStringField;
    FAT_CD_R_PIS_NFLid_fiscal: TIntegerField;
    FAT_CD_R_PIS_NFLnumero: TIntegerField;
    FAT_CD_R_PIS_NFLmodelo: TWideStringField;
    FAT_CD_R_PIS_NFLdta_emissao: TDateField;
    FAT_CD_R_PIS_NFLint_nomecli: TWideStringField;
    FAT_CD_R_PIS_NFLvlr_liquido: TFloatField;
    FAT_CD_R_PIS_NFLbase_pis: TFMTBCDField;
    FAT_CD_R_PIS_NFLvalor_pis: TFMTBCDField;
    FAT_CD_R_PIS_NFLbase_cofins: TFMTBCDField;
    FAT_CD_R_PIS_NFLvalor_cofins: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxCfopDisponiveisDblClick(Sender: TObject);
    procedure lboxCfopSelecionadoDblClick(Sender: TObject);
    procedure lboxCondicaoPagamentoDisponivelClick(Sender: TObject);
    procedure lboxCondicaoPagamentoSelecionadaDblClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
    procedure lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelCondPagClick(Sender: TObject);
    procedure btnTodosTipoEstoqueClick(Sender: TObject);
    procedure btnSelCfopClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverCfopClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnSelPisCofinsClick(Sender: TObject);
    procedure btnRemoverTiposEstoqueClick(Sender: TObject);
    procedure btnRemoverPisCofinsClick(Sender: TObject);
    procedure btnRemoverCondicaoPagClick(Sender: TObject);
    procedure btnRemoverVendedorClick(Sender: TObject);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure lboxPisCofinsDisponiveisDblClick(Sender: TObject);
    procedure lboxPisCofinsSelecionadoDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FAT_DB_R_PIS_ITECheckEOF(Sender: TObject; var Eof: Boolean);
    procedure FAT_DB_R_PIS_CIPCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure FAT_DB_R_PIS_NFLCheckEOF(Sender: TObject; var Eof: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_R_PIS: TFAT_FM_R_PIS;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FOR, PSQ_UN_X_FUN, FAT_RN_R_PIS;

procedure TFAT_FM_R_PIS.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos(deInicial,deFinal,lboxEmpresaSelecionada) then
    begin
      ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxTipoEstoqueSelecionado,lboxCfopSelecionado,
      lboxCondicaoPagamentoSelecionada,lboxVendedores,lboxPisCofinsSelecionado,lboxFornecedores,
      lboxTipoEstoqueDisponiveis,lboxCfopDisponiveis,lboxCondicaoPagamentoDisponivel,lboxPisCofinsDisponiveis,
      deInicial,deFinal,FAT_FR_R_PIS_PRO,FAT_FR_R_PIS_CST,FAT_FR_R_PIS_NFL);
    end;
end;

procedure TFAT_FM_R_PIS.btnRemoverCfopClick(Sender: TObject);
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

procedure TFAT_FM_R_PIS.btnRemoverCondicaoPagClick(Sender: TObject);
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

procedure TFAT_FM_R_PIS.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFAT_FM_R_PIS.btnRemoverPisCofinsClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxPisCofinsSelecionado.ClearSelection;

  if lboxPisCofinsSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPisCofinsSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxPisCofinsSelecionado.Items.Count - 1 do
           begin
             lboxPisCofinsDisponiveis.Items.Add(lboxPisCofinsSelecionado.Items[i]);
             lboxPisCofinsSelecionado.Items.Delete(lboxPisCofinsSelecionado.ItemIndex);
           end;
       lboxPisCofinsSelecionado.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PIS.btnRemoverTiposEstoqueClick(Sender: TObject);
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

procedure TFAT_FM_R_PIS.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFAT_FM_R_PIS.btnRemoverVendedorClick(Sender: TObject);
begin
  inherited;
   if lboxVendedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedores.DeleteSelected;
end;

procedure TFAT_FM_R_PIS.btnSelCfopClick(Sender: TObject);
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

procedure TFAT_FM_R_PIS.btnSelCondPagClick(Sender: TObject);
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

procedure TFAT_FM_R_PIS.btnSelPisCofinsClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPisCofinsDisponiveis.ClearSelection;
  if lboxPisCofinsDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPisCofinsDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxPisCofinsDisponiveis.Items.Count - 1 do
           begin
             lboxPisCofinsSelecionado.Items.Add(lboxPisCofinsDisponiveis.Items[i]);
             lboxPisCofinsDisponiveis.Items.Delete(lboxPisCofinsDisponiveis.ItemIndex);
           end;
       lboxPisCofinsDisponiveis.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PIS.btnTodosTipoEstoqueClick(Sender: TObject);
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

procedure TFAT_FM_R_PIS.FAT_DB_R_PIS_CIPCheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
  if trim(FAT_CD_R_PIS_CIPid_st_pis.Text) = '' then
    begin
      FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação não Declarada');
    end
  else
    begin
      case FAT_CD_R_PIS_CIPid_st_pis.AsInteger of
          01:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação Tributável com Alíquota Básica');
          02:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação Tributável com Alíquota Diferenciada');
          03:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação Tributável com Alíquota por Unidade de Medida de Produto');
          04:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação Tributável Monofásica - Revenda a Alíquota Zero');
          05:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação Tributável por Substituição Tributária');
          06:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação Tributável a Alíquota Zero');
          07:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação Isenta da Contribuição');
          08:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação sem Incidência da Contribuição');
          09:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação com Suspensão da Contribuição');
          49:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Outras Operações de Saída');
          50:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
          51:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno');
          52:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação');
          53:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
          54:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
          55:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
          56:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
          60:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
          61:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno');
          62:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação');
          63:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
          64:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
          65:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
          66:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
          67:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Crédito Presumido - Outras Operações');
          70:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação de Aquisição sem Direito a Crédito');
          71:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação de Aquisição com Isenção');
          72:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação de Aquisição com Suspensão');
          73:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação de Aquisição a Alíquota Zero');
          74:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação de Aquisição sem Incidência da Contribuição');
          75:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Operação de Aquisição por Substituição Tributária');
          98:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Outras Operações de Entrada');
          99:  FAT_FR_R_PIS_CST.Variables['DescPis'] := QuotedStr('Outras Operações');
        end;
    end;
end;

procedure TFAT_FM_R_PIS.FAT_DB_R_PIS_ITECheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;

  if trim(FAT_CD_R_PIS_ITEid_st_pis.Text) = '' then
    begin
     FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação não Declarada');
    end
  else
     begin
        case FAT_CD_R_PIS_ITEid_st_pis.AsInteger of
          01:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação Tributável com Alíquota Básica');
          02:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação Tributável com Alíquota Diferenciada');
          03:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação Tributável com Alíquota por Unidade de Medida de Produto');
          04:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação Tributável Monofásica - Revenda a Alíquota Zero');
          05:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação Tributável por Substituição Tributária');
          06:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação Tributável a Alíquota Zero');
          07:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação Isenta da Contribuição');
          08:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação sem Incidência da Contribuição');
          09:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação com Suspensão da Contribuição');
          49:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Outras Operações de Saída');
          50:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
          51:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno');
          52:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação');
          53:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
          54:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
          55:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
          56:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
          60:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
          61:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno');
          62:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação');
          63:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
          64:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
          65:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
          66:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
          67:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Crédito Presumido - Outras Operações');
          70:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação de Aquisição sem Direito a Crédito');
          71:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação de Aquisição com Isenção');
          72:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação de Aquisição com Suspensão');
          73:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação de Aquisição a Alíquota Zero');
          74:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação de Aquisição sem Incidência da Contribuição');
          75:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Operação de Aquisição por Substituição Tributária');
          98:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Outras Operações de Entrada');
          99:  FAT_FR_R_PIS_PRO.Variables['DescPis'] := QuotedStr('Outras Operações');
        end;
     end;
end;

procedure TFAT_FM_R_PIS.FAT_DB_R_PIS_NFLCheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
   if trim(FAT_CD_R_PIS_NFL.FieldByName('id_st_pis').Text) = '' then
    begin
     FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação não Declarada');
    end
  else
     begin
        case FAT_CD_R_PIS_NFL.FieldByName('id_st_pis').AsInteger of
          01:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação Tributável com Alíquota Básica');
          02:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação Tributável com Alíquota Diferenciada');
          03:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação Tributável com Alíquota por Unidade de Medida de Produto');
          04:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação Tributável Monofásica - Revenda a Alíquota Zero');
          05:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação Tributável por Substituição Tributária');
          06:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação Tributável a Alíquota Zero');
          07:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação Isenta da Contribuição');
          08:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação sem Incidência da Contribuição');
          09:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação com Suspensão da Contribuição');
          49:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Outras Operações de Saída');
          50:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
          51:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno');
          52:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação');
          53:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
          54:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
          55:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
          56:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
          60:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
          61:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno');
          62:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação');
          63:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
          64:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
          65:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
          66:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
          67:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Crédito Presumido - Outras Operações');
          70:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação de Aquisição sem Direito a Crédito');
          71:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação de Aquisição com Isenção');
          72:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação de Aquisição com Suspensão');
          73:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação de Aquisição a Alíquota Zero');
          74:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação de Aquisição sem Incidência da Contribuição');
          75:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Operação de Aquisição por Substituição Tributária');
          98:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Outras Operações de Entrada');
          99:  FAT_FR_R_PIS_NFL.Variables['DescPis'] := QuotedStr('Outras Operações');
        end;
     end;
end;

procedure TFAT_FM_R_PIS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_PIS);
end;

procedure TFAT_FM_R_PIS.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

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

  // PIS/Confins ---------------------------------------------------------
  dmGeral.BUS_PR_X_PIS_COF;
  dmGeral.BUS_CD_X_PIS_COF.First;
       while not dmGeral.BUS_CD_X_PIS_COF.eof do
          begin
            lboxPisCofinsDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_X_PIS_COF.FieldByName('CODIGO').AsFloat,2,0) +
                                    ' - ' + dmGeral.BUS_CD_X_PIS_COF.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_X_PIS_COF.Next;
          end;

 dmGeral.BUS_CD_X_PIS_COF.Close;

  // Fornecedor ----------------------------------------------------------------
end;

procedure TFAT_FM_R_PIS.lboxCfopDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopDisponiveis.ItemIndex > - 1 then
     begin
       lboxCfopSelecionado.Items.Add(lboxCfopDisponiveis.Items[lboxCfopDisponiveis.ItemIndex]);
       lboxCfopDisponiveis.Items.Delete(lboxCfopDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxCfopSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopSelecionado.ItemIndex > -1 then
     begin
       lboxCfopDisponiveis.Items.Add(lboxCfopSelecionado.Items[lboxCfopSelecionado.ItemIndex]);
       lboxCfopSelecionado.Items.Delete(lboxCfopSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxCondicaoPagamentoDisponivelClick(Sender: TObject);
begin
  inherited;
  begin
       lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[lboxCondicaoPagamentoDisponivel.ItemIndex]);
       lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxCondicaoPagamentoSelecionadaDblClick(Sender: TObject);
begin
  inherited;
   if lboxCondicaoPagamentoSelecionada.ItemIndex > -1 then
     begin
       lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[lboxCondicaoPagamentoSelecionada.ItemIndex]);
       lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_R_PIS.lboxPisCofinsDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxPisCofinsDisponiveis.ItemIndex > - 1 then
     begin
       lboxPisCofinsSelecionado.Items.Add(lboxPisCofinsDisponiveis.Items[lboxPisCofinsDisponiveis.ItemIndex]);
       lboxPisCofinsDisponiveis.Items.Delete(lboxPisCofinsDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxPisCofinsSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPisCofinsSelecionado.ItemIndex > -1 then
     begin
       lboxPisCofinsDisponiveis.Items.Add(lboxPisCofinsSelecionado.Items[lboxPisCofinsSelecionado.ItemIndex]);
       lboxPisCofinsSelecionado.Items.Delete(lboxPisCofinsSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueDisponiveis.ItemIndex > - 1 then
     begin
       lboxTipoEstoqueSelecionado.Items.Add(lboxTipoEstoqueDisponiveis.Items[lboxTipoEstoqueDisponiveis.ItemIndex]);
       lboxTipoEstoqueDisponiveis.Items.Delete(lboxTipoEstoqueDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueSelecionado.ItemIndex > -1 then
     begin
       lboxTipoEstoqueDisponiveis.Items.Add(lboxTipoEstoqueSelecionado.Items[lboxTipoEstoqueSelecionado.ItemIndex]);
       lboxTipoEstoqueSelecionado.Items.Delete(lboxTipoEstoqueSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PIS.lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedores,3,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,3,0)) then
                begin
                  lboxVendedores.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_PIS.menuItemEmpresasClick(Sender: TObject);
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
