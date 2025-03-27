unit FAT_UN_R_PPC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet;

type
  TFAT_FM_R_PPC = class(TPAD_FM_X_REL)
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
    tsCstPisCofins: TTabSheet;
    lblPisCofinsDisponiveis: TLabel;
    lblPisCofinsSelecionado: TLabel;
    lboxPisCofinsSelecionado: TListBox;
    lboxPisCofinsDisponiveis: TListBox;
    tsFornecedor: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    Label1: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    FAT_FR_R_PPC_PRO: TfrxReport;
    FAT_FR_R_PPC_CST: TfrxReport;
    FAT_DB_R_PPC: TfrxDBDataset;
    FAT_PD_R_PPC: TfrxPDFExport;
    FAT_XL_R_PPC: TfrxXLSExport;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelTipoEstoque: TPopupMenu;
    btnTodosTipoEstoque: TMenuItem;
    pmRemoverTipoEstoque: TPopupMenu;
    btnRemoverTiposEstoque: TMenuItem;
    pmSelCondicaoPag: TPopupMenu;
    btnSelFormaPag: TMenuItem;
    pmRemoverCfop: TPopupMenu;
    btnRemoverCfop: TMenuItem;
    pmSelCfop: TPopupMenu;
    btnSelCfop: TMenuItem;
    pmSelPisCofins: TPopupMenu;
    btnSelPisCofins: TMenuItem;
    pmRemoverPisCofins: TPopupMenu;
    btnRemoverPisCofins: TMenuItem;
    pmRemoverFornecedor: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    pmRemoverCondicaoPag: TPopupMenu;
    btnRemoverFormaPag: TMenuItem;
    procedure lboxPisCofinsDisponiveisDblClick(Sender: TObject);
    procedure lboxPisCofinsSelecionadoDblClick(Sender: TObject);
    procedure btnSelPisCofinsClick(Sender: TObject);
    procedure btnRemoverPisCofinsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
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
    procedure btnSelFormaPagClick(Sender: TObject);
    procedure btnRemoverFormaPagClick(Sender: TObject);
    procedure lboxCondicaoPagamentoDisponivelDblClick(Sender: TObject);
    procedure lboxCondicaoPagamentoSelecionadaDblClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverFornecedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_R_PPC: TFAT_FM_R_PPC;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FUN, PSQ_UN_X_FOR, FAT_RN_R_PPC;

procedure TFAT_FM_R_PPC.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos(deInicial,deFinal) then
    begin
      ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxTipoEstoqueSelecionado,lboxCfopSelecionado,lboxCondicaoPagamentoSelecionada,
                lboxVendedores,lboxPisCofinsSelecionado,lboxFornecedores,deInicial,deFinal,FAT_FR_R_PPC_PRO,FAT_FR_R_PPC_CST);
    end;
end;

procedure TFAT_FM_R_PPC.btnRemoverCfopClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.btnRemoverFormaPagClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFAT_FM_R_PPC.btnRemoverPisCofinsClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.btnRemoverTiposEstoqueClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.btnSelCfopClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.btnSelFormaPagClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.btnSelPisCofinsClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.btnTodosTipoEstoqueClick(Sender: TObject);
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
procedure TFAT_FM_R_PPC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_PPC);
end;

procedure TFAT_FM_R_PPC.FormShow(Sender: TObject);
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

  // Perfil do Cliente ---------------------------------------------------------
  dmGeral.BUS_CD_X_PIS_COF.Close;
  dmGeral.BUS_CD_X_PIS_COF.Data :=
  dmGeral.BUS_CD_X_PIS_COF.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_X_PIS_COF.IsEmpty then
     begin
       dmGeral.BUS_CD_X_PIS_COF.First;

       while not dmGeral.BUS_CD_X_PIS_COF.eof do
          begin
            lboxPisCofinsDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_X_PIS_COF.FieldByName('CODIGO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_X_PIS_COF.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_X_PIS_COF.Next;
          end;
     end;

 dmGeral.BUS_CD_X_PIS_COF.Close;

  // Fornecedor ----------------------------------------------------------------
end;

procedure TFAT_FM_R_PPC.lboxCfopDisponiveisDblClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.lboxCfopSelecionadoDblClick(Sender: TObject);
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

procedure TFAT_FM_R_PPC.lboxCondicaoPagamentoDisponivelDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoDisponivel.ItemIndex > - 1 then
     begin
       lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[lboxCondicaoPagamentoDisponivel.ItemIndex]);
       lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PPC.lboxCondicaoPagamentoSelecionadaDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoSelecionada.ItemIndex > -1 then
     begin
       lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[lboxCondicaoPagamentoSelecionada.ItemIndex]);
       lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PPC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PPC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PPC.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_R_PPC.lboxPisCofinsDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxPisCofinsDisponiveis.ItemIndex > - 1 then
     begin
       lboxPisCofinsSelecionado.Items.Add(lboxPisCofinsDisponiveis.Items[lboxPisCofinsDisponiveis.ItemIndex]);
       lboxPisCofinsDisponiveis.Items.Delete(lboxPisCofinsDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PPC.lboxPisCofinsSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPisCofinsSelecionado.ItemIndex > -1 then
     begin
       lboxPisCofinsDisponiveis.Items.Add(lboxPisCofinsSelecionado.Items[lboxPisCofinsSelecionado.ItemIndex]);
       lboxPisCofinsSelecionado.Items.Delete(lboxPisCofinsSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PPC.lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueDisponiveis.ItemIndex > - 1 then
     begin
       lboxTipoEstoqueSelecionado.Items.Add(lboxTipoEstoqueDisponiveis.Items[lboxTipoEstoqueDisponiveis.ItemIndex]);
       lboxTipoEstoqueDisponiveis.Items.Delete(lboxTipoEstoqueDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PPC.lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueSelecionado.ItemIndex > -1 then
     begin
       lboxTipoEstoqueDisponiveis.Items.Add(lboxTipoEstoqueSelecionado.Items[lboxTipoEstoqueSelecionado.ItemIndex]);
       lboxTipoEstoqueSelecionado.Items.Delete(lboxTipoEstoqueSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PPC.lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
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
                  lboxFornecedores.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_PPC.menuItemEmpresasClick(Sender: TObject);
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
