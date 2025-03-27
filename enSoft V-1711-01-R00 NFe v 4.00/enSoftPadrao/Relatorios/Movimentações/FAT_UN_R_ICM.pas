unit FAT_UN_R_ICM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Datasnap.DBClient;

type
  TFAT_FM_R_ICM = class(TPAD_FM_X_REL)
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
    tsIcms: TTabSheet;
    lblIcmsDisponiveis: TLabel;
    lblIcmsSelecionado: TLabel;
    lboxIcmsSelecionado: TListBox;
    lboxIcmsDisponiveis: TListBox;
    tsFornecedor: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    Label1: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    Label2: TLabel;
    FAT_FR_R_ICM_CST: TfrxReport;
    FAT_FR_R_ICM_CFO: TfrxReport;
    FAT_FR_R_ICM_PRO: TfrxReport;
    FAT_DP_R_ICM_CST: TfrxDBDataset;
    FAT_PD_R_ICM: TfrxPDFExport;
    FAT_XL_R_ICM: TfrxXLSExport;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelTipoEstoque: TPopupMenu;
    btnTodosTipoEstoque: TMenuItem;
    pmRemoverTipoEstoque: TPopupMenu;
    btnRemoverTiposEstoque: TMenuItem;
    pmRemoverCondPag: TPopupMenu;
    btnRemoverCondPag: TMenuItem;
    pmSelCondPag: TPopupMenu;
    btnSelCondPag: TMenuItem;
    pmRemoverFornecedor: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    pmRemoverIcms: TPopupMenu;
    btnRemoverIcms: TMenuItem;
    pmRemoverCfop: TPopupMenu;
    btnRemoverCfop: TMenuItem;
    pmSelCfop: TPopupMenu;
    btnSelCfop: TMenuItem;
    pmSelIcms: TPopupMenu;
    btnSelIcms: TMenuItem;
    FAT_DP_R_ICM_CFO: TfrxDBDataset;
    FAT_DP_R_ICM_ITE: TfrxDBDataset;
    FAT_CD_R_ICM_CST: TClientDataSet;
    FAT_CD_R_ICM_CFO: TClientDataSet;
    FAT_CD_R_ICM_ITE: TClientDataSet;
    FAT_CD_R_ICM_ITEind_operacao: TIntegerField;
    FAT_CD_R_ICM_ITEid_item: TIntegerField;
    FAT_CD_R_ICM_ITEint_nomeite: TWideStringField;
    FAT_CD_R_ICM_ITEvlr_liquido: TFMTBCDField;
    FAT_CD_R_ICM_ITEbase_icm_normal: TFMTBCDField;
    FAT_CD_R_ICM_ITEvalor_icm_normal: TFMTBCDField;
    FAT_CD_R_ICM_ITEbase_icm_subs: TFMTBCDField;
    FAT_CD_R_ICM_ITEvalor_icm_subs: TFMTBCDField;
    FAT_CD_R_ICM_CFOid_cfo: TWideStringField;
    FAT_CD_R_ICM_CFOdescricao: TWideStringField;
    FAT_CD_R_ICM_CFOvlr_liquido: TFMTBCDField;
    FAT_CD_R_ICM_CFObase_icm_normal: TFMTBCDField;
    FAT_CD_R_ICM_CFOvalor_icm_normal: TFMTBCDField;
    FAT_CD_R_ICM_CFObase_icm_subs: TFMTBCDField;
    FAT_CD_R_ICM_CFOvalor_icm_subs: TFMTBCDField;
    FAT_CD_R_ICM_CSTind_operacao: TIntegerField;
    FAT_CD_R_ICM_CSTid_st_icm: TWideStringField;
    FAT_CD_R_ICM_CSTvlr_liquido: TFMTBCDField;
    FAT_CD_R_ICM_CSTbase_icm_normal: TFMTBCDField;
    FAT_CD_R_ICM_CSTvalor_icm_normal: TFMTBCDField;
    FAT_CD_R_ICM_CSTbase_icm_subs: TFMTBCDField;
    FAT_CD_R_ICM_CSTvalor_icm_subs: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
    procedure lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
    procedure btnTodosTipoEstoqueClick(Sender: TObject);
    procedure btnRemoverTiposEstoqueClick(Sender: TObject);
    procedure lboxCfopDisponiveisDblClick(Sender: TObject);
    procedure lboxCfopSelecionadoDblClick(Sender: TObject);
    procedure btnSelCfopClick(Sender: TObject);
    procedure btnRemoverCfopClick(Sender: TObject);
    procedure lboxCondicaoPagamentoDisponivelDblClick(Sender: TObject);
    procedure lboxCondicaoPagamentoSelecionadaDblClick(Sender: TObject);
    procedure btnSelCondPagClick(Sender: TObject);
    procedure btnRemoverCondPagClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverVendedorClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure lboxIcmsDisponiveisClick(Sender: TObject);
    procedure lboxIcmsSelecionadoDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSelIcmsClick(Sender: TObject);
    procedure btnRemoverIcmsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_R_ICM: TFAT_FM_R_ICM;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FUN, PSQ_UN_X_FOR, FAT_RN_R_ICM;

procedure TFAT_FM_R_ICM.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos(deInicial,deFinal,lboxEmpresaSelecionada) then
    begin
      ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxTipoEstoqueSelecionado,lboxCfopSelecionado,
      lboxCondicaoPagamentoSelecionada,lboxVendedores,lboxIcmsSelecionado,lboxFornecedores,
      lboxTipoEstoqueDisponiveis,lboxCfopDisponiveis,lboxCondicaoPagamentoDisponivel,lboxIcmsDisponiveis,
      deInicial,deFinal,FAT_FR_R_ICM_CST,FAT_FR_R_ICM_CFO,FAT_FR_R_ICM_PRO);
    end;
end;

procedure TFAT_FM_R_ICM.btnRemoverCfopClick(Sender: TObject);
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

procedure TFAT_FM_R_ICM.btnRemoverCondPagClick(Sender: TObject);
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

procedure TFAT_FM_R_ICM.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFAT_FM_R_ICM.btnRemoverIcmsClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxicmsSelecionado.ClearSelection;

  if lboxicmsSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxicmsSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxicmsSelecionado.Items.Count - 1 do
           begin
             lboxicmsDisponiveis.Items.Add(lboxicmsSelecionado.Items[i]);
             lboxicmsSelecionado.Items.Delete(lboxicmsSelecionado.ItemIndex);
           end;
       lboxicmsSelecionado.Items.Clear;
     end;
end;

procedure TFAT_FM_R_ICM.btnRemoverTiposEstoqueClick(Sender: TObject);
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

procedure TFAT_FM_R_ICM.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFAT_FM_R_ICM.btnRemoverVendedorClick(Sender: TObject);
begin
  inherited;
  if lboxVendedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedores.DeleteSelected;
end;

procedure TFAT_FM_R_ICM.btnSelCfopClick(Sender: TObject);
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

procedure TFAT_FM_R_ICM.btnSelCondPagClick(Sender: TObject);
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

procedure TFAT_FM_R_ICM.btnSelIcmsClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxIcmsDisponiveis.ClearSelection;

  if lboxIcmsDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxIcmsDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxIcmsDisponiveis.Items.Count - 1 do
           begin
             lboxIcmsSelecionado.Items.Add(lboxIcmsDisponiveis.Items[i]);
             lboxIcmsDisponiveis.Items.Delete(lboxIcmsDisponiveis.ItemIndex);
           end;
       lboxIcmsDisponiveis.Items.Clear;
     end;
end;
procedure TFAT_FM_R_ICM.btnTodosTipoEstoqueClick(Sender: TObject);
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
procedure TFAT_FM_R_ICM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_ICM);
end;

procedure TFAT_FM_R_ICM.FormShow(Sender: TObject);
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
            lboxCfopDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_CFO.FieldByName('ID_CFO').AsFloat,3,0) +
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

  // CST ICMS ------------------------------------------------------------------
  dmgeral.BUS_PR_X_ICM_ICO;
  dmGeral.BUS_CD_X_ICM_ICO.First;
         while not dmGeral.BUS_CD_X_ICM_ICO.eof do
          begin
            lboxIcmsDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_X_ICM_ICO.FieldByName('CODIGO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_X_ICM_ICO.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_X_ICM_ICO.Next;
          end;

 dmGeral.BUS_CD_X_ICM_ICO.Close;

 dmgeral.BUS_PR_X_ICM_OSN_ICO;
 dmGeral.BUS_CD_X_ICM_OSN_ICO.First;

       while not dmGeral.BUS_CD_X_ICM_OSN_ICO.eof do
          begin
            lboxIcmsDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_X_ICM_OSN_ICO.FieldByName('CODIGO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_X_ICM_OSN_ICO.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_X_ICM_OSN_ICO.Next;
          end;

 dmGeral.BUS_CD_X_ICM_OSN_ICO.Close;

  // Fornecedor ----------------------------------------------------------------
end;

procedure TFAT_FM_R_ICM.lboxCfopDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopDisponiveis.ItemIndex > - 1 then
     begin
       lboxCfopSelecionado.Items.Add(lboxCfopDisponiveis.Items[lboxCfopDisponiveis.ItemIndex]);
       lboxCfopDisponiveis.Items.Delete(lboxCfopDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxCfopSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopSelecionado.ItemIndex > -1 then
     begin
       lboxCfopDisponiveis.Items.Add(lboxCfopSelecionado.Items[lboxCfopSelecionado.ItemIndex]);
       lboxCfopSelecionado.Items.Delete(lboxCfopSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxCondicaoPagamentoDisponivelDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoDisponivel.ItemIndex > - 1 then
     begin
       lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[lboxCondicaoPagamentoDisponivel.ItemIndex]);
       lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxCondicaoPagamentoSelecionadaDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoSelecionada.ItemIndex > -1 then
     begin
       lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[lboxCondicaoPagamentoSelecionada.ItemIndex]);
       lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_R_ICM.lboxIcmsDisponiveisClick(Sender: TObject);
begin
  inherited;
  if lboxIcmsDisponiveis.ItemIndex > - 1 then
     begin
       lboxIcmsSelecionado.Items.Add(lboxIcmsDisponiveis.Items[lboxIcmsDisponiveis.ItemIndex]);
       lboxIcmsDisponiveis.Items.Delete(lboxIcmsDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxIcmsSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxIcmsSelecionado.ItemIndex > -1 then
     begin
       lboxIcmsDisponiveis.Items.Add(lboxIcmsSelecionado.Items[lboxIcmsSelecionado.ItemIndex]);
       lboxIcmsSelecionado.Items.Delete(lboxIcmsSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueDisponiveis.ItemIndex > - 1 then
     begin
       lboxTipoEstoqueSelecionado.Items.Add(lboxTipoEstoqueDisponiveis.Items[lboxTipoEstoqueDisponiveis.ItemIndex]);
       lboxTipoEstoqueDisponiveis.Items.Delete(lboxTipoEstoqueDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueSelecionado.ItemIndex > -1 then
     begin
       lboxTipoEstoqueDisponiveis.Items.Add(lboxTipoEstoqueSelecionado.Items[lboxTipoEstoqueSelecionado.ItemIndex]);
       lboxTipoEstoqueSelecionado.Items.Delete(lboxTipoEstoqueSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ICM.lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_R_ICM.menuItemEmpresasClick(Sender: TObject);
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
