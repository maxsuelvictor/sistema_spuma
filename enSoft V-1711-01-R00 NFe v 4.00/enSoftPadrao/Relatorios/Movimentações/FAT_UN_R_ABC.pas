unit FAT_UN_R_ABC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TFAT_FM_R_ABC = class(TPAD_FM_X_REL)
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblFaixa: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    txtFaixaA: TEdit;
    txtFaixaB: TEdit;
    txtFaixaC: TEdit;
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
    tsPerfilCliente: TTabSheet;
    lblPerfilClienteDisponiveis: TLabel;
    lblPerfilClienteSelecionado: TLabel;
    lboxPerfilClienteSelecionado: TListBox;
    lboxPerfilClienteDisponiveis: TListBox;
    tsFornecedor: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    FAT_FR_R_ABC_CLI: TfrxReport;
    FAT_DB_R_ABC_CLI: TfrxDBDataset;
    FAT_PD_R_ABC_FAT: TfrxPDFExport;
    FAT_XL_R_ABC_FAT: TfrxXLSExport;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelCfop: TPopupMenu;
    btnSelCfop: TMenuItem;
    pmSelPerfilCliente: TPopupMenu;
    btnSelPerfilCliente: TMenuItem;
    pmRemoverPerfilCliente: TPopupMenu;
    btnRemoverPerfilCliente: TMenuItem;
    pmRemoverCfop: TPopupMenu;
    btnRemoverCfop: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelTipoEstoque: TPopupMenu;
    btnTodosTipoEstoque: TMenuItem;
    pmSelCondicaoPag: TPopupMenu;
    btnSelFormaPag: TMenuItem;
    pmRemoverCondicaoPag: TPopupMenu;
    btnRemoverFormaPag: TMenuItem;
    pmRemoverTipoEstoque: TPopupMenu;
    btnRemoverTiposEstoque: TMenuItem;
    pmRemoverFornecedor: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    FAT_FR_R_ABC_GRU: TfrxReport;
    FAT_FR_R_ABC_FOR: TfrxReport;
    FAT_DB_R_ABC_FOR: TfrxDBDataset;
    FAT_DB_R_ABC_GRU: TfrxDBDataset;
    FAT_CD_R_ABC_GRU: TClientDataSet;
    FAT_CD_R_ABC_FOR: TClientDataSet;
    FAT_CD_R_ABC_CLI: TClientDataSet;
    tsGrupo: TTabSheet;
    lboxGrupoDisp: TListBox;
    lboxGrupoSel: TListBox;
    Label7: TLabel;
    Label8: TLabel;
    pmSelGrupo: TPopupMenu;
    pmRemoverGrupo: TPopupMenu;
    btnGrupoSel: TMenuItem;
    btnRemoverGrupos: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
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
    procedure btnSelFormaPagClick(Sender: TObject);
    procedure btnRemoverFormaPagClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverVendedorClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure lboxPerfilClienteDisponiveisDblClick(Sender: TObject);
    procedure lboxPerfilClienteSelecionadoDblClick(Sender: TObject);
    procedure btnSelPerfilClienteClick(Sender: TObject);
    procedure btnRemoverPerfilClienteClick(Sender: TObject);
    procedure txtFaixaAKeyPress(Sender: TObject; var Key: Char);
    procedure txtFaixaBKeyPress(Sender: TObject; var Key: Char);
    procedure txtFaixaCKeyPress(Sender: TObject; var Key: Char);
    procedure lboxGrupoDispDblClick(Sender: TObject);
    procedure lboxGrupoSelDblClick(Sender: TObject);
    procedure btnGrupoSelClick(Sender: TObject);
    procedure btnRemoverGruposClick(Sender: TObject);
  private
    { Private declarations }
  var
      xOpcoes, xCondEmpresa, xCondTipoEstoque, xCondCfop, xCondCondicaoPagamento,
      xCondVendedor, xCondPerfilCliente, xCondFornecedor,xCondGrupo: string;
  public
    { Public declarations }
  end;

var
  FAT_FM_R_ABC: TFAT_FM_R_ABC;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FUN, PSQ_UN_X_FOR, FAT_RN_R_ABC;

procedure TFAT_FM_R_ABC.btnGrupoSelClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxGrupoDisp.ClearSelection;
  if lboxGrupoDisp.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
       exit;
     end;

  if lboxGrupoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxGrupoDisp.Items.Count - 1 do
           begin
             lboxGrupoSel.Items.Add(lboxGrupoDisp.Items[i]);
             lboxGrupoDisp.Items.Delete(lboxGrupoDisp.ItemIndex);
           end;
       lboxGrupoDisp.Items.Clear;
     end;
end;

procedure TFAT_FM_R_ABC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if (StrToInt(txtfaixaa.Text) + StrToInt(txtfaixab.Text) + StrToInt(txtfaixac.Text) = 100) then
    begin
      if TestarCampos(deInicial,deFinal,txtFaixaA,txtFaixaB,txtFaixaC) then
        begin
          ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxTipoEstoqueSelecionado,lboxCfopSelecionado,
                lboxCondicaoPagamentoSelecionada,lboxVendedores,lboxPerfilClienteSelecionado,lboxFornecedores,lboxGrupoSel,deInicial,deFinal,
                txtFaixaA,txtFaixaB,txtFaixaC,FAT_FR_R_ABC_CLI,FAT_FR_R_ABC_FOR,FAT_FR_R_ABC_GRU);
        end;
    end
  else
    begin
      showmessage('A soma das "Faixas" deve ser igual a "100".');
      txtfaixaa.SetFocus;
    end;
end;

procedure TFAT_FM_R_ABC.btnRemoverCfopClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCfopSelecionado.ClearSelection;

  if lboxCfopSelecionado.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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

procedure TFAT_FM_R_ABC.btnRemoverFormaPagClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCondicaoPagamentoSelecionada.ClearSelection;

  if lboxCondicaoPagamentoSelecionada.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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

procedure TFAT_FM_R_ABC.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFAT_FM_R_ABC.btnRemoverGruposClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxGrupoSel.ClearSelection;

  if lboxGrupoSel.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
       exit;
     end;

  if lboxGrupoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxGrupoSel.Items.Count - 1 do
           begin
             lboxGrupoDisp.Items.Add(lboxGrupoSel.Items[i]);
             lboxGrupoSel.Items.Delete(lboxGrupoSel.ItemIndex);
           end;
       lboxGrupoSel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_ABC.btnRemoverPerfilClienteClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxPerfilClienteSelecionado.ClearSelection;

  if lboxPerfilClienteSelecionado.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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

procedure TFAT_FM_R_ABC.btnRemoverTiposEstoqueClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxTipoEstoqueSelecionado.ClearSelection;

  if lboxTipoEstoqueSelecionado.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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

procedure TFAT_FM_R_ABC.btnRemoverTodosEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpresaSelecionada.ClearSelection;

  if lboxEmpresaSelecionada.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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

procedure TFAT_FM_R_ABC.btnRemoverVendedorClick(Sender: TObject);
begin
  inherited;
  if lboxVendedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedores.DeleteSelected;
end;

procedure TFAT_FM_R_ABC.btnSelCfopClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCfopDisponiveis.ClearSelection;
  if lboxCfopDisponiveis.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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

procedure TFAT_FM_R_ABC.btnSelFormaPagClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCondicaoPagamentoDisponivel.ClearSelection;
  if lboxCondicaoPagamentoDisponivel.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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

procedure TFAT_FM_R_ABC.btnSelPerfilClienteClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPerfilClienteDisponiveis.ClearSelection;
  if lboxPerfilClienteDisponiveis.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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

procedure TFAT_FM_R_ABC.btnTodosTipoEstoqueClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxTipoEstoqueDisponiveis.ClearSelection;

  if lboxTipoEstoqueDisponiveis.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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

procedure TFAT_FM_R_ABC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_ABC);
end;

procedure TFAT_FM_R_ABC.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  txtfaixaa.Text := '70';
  txtfaixab.Text := '20';
  txtfaixac.Text := '10';

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

  // Condi��o de Pagamento -------------------------------------------------------
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

  // Fornecedor ----------------------------------------------------------------



   // Grupo ---------------------------------------------------------------------
  dmGeral.BUS_CD_C_GRU.Close;
  dmGeral.BUS_CD_C_GRU.Data :=
  dmGeral.BUS_CD_C_GRU.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_GRU.First;

       while not dmGeral.BUS_CD_C_GRU.eof do
          begin
            lboxGrupoDisp.Items.Add(trim(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString));
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;

 dmGeral.BUS_CD_C_GRU.Close;
end;

procedure TFAT_FM_R_ABC.lboxCfopDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopDisponiveis.ItemIndex > - 1 then
     begin
       lboxCfopSelecionado.Items.Add(lboxCfopDisponiveis.Items[lboxCfopDisponiveis.ItemIndex]);
       lboxCfopDisponiveis.Items.Delete(lboxCfopDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxCfopSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopSelecionado.ItemIndex > -1 then
     begin
       lboxCfopDisponiveis.Items.Add(lboxCfopSelecionado.Items[lboxCfopSelecionado.ItemIndex]);
       lboxCfopSelecionado.Items.Delete(lboxCfopSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxCondicaoPagamentoDisponivelDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoDisponivel.ItemIndex > - 1 then
     begin
       lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[lboxCondicaoPagamentoDisponivel.ItemIndex]);
       lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxCondicaoPagamentoSelecionadaDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoSelecionada.ItemIndex > -1 then
     begin
       lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[lboxCondicaoPagamentoSelecionada.ItemIndex]);
       lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxFornecedoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedores,3,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,3,0)) then
                begin
                  lboxFornecedores.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,3,0) +
                                             ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TFAT_FM_R_ABC.lboxGrupoDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxGrupoDisp.ItemIndex > - 1 then
     begin
       lboxGrupoSel.Items.Add(lboxGrupoDisp.Items[lboxGrupoDisp.ItemIndex]);
       lboxGrupoDisp.Items.Delete(lboxGrupoDisp.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxGrupoSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxGrupoSel.ItemIndex > -1 then
     begin
       lboxGrupoDisp.Items.Add(lboxGrupoSel.Items[lboxGrupoSel.ItemIndex]);
       lboxGrupoSel.Items.Delete(lboxGrupoSel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxPerfilClienteDisponiveisDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxPerfilClienteDisponiveis.ItemIndex > - 1 then
     begin
       lboxPerfilClienteSelecionado.Items.Add(lboxPerfilClienteDisponiveis.Items[lboxPerfilClienteDisponiveis.ItemIndex]);
       lboxPerfilClienteDisponiveis.Items.Delete(lboxPerfilClienteDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxPerfilClienteSelecionadoDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxPerfilClienteSelecionado.ItemIndex > -1 then
     begin
       lboxPerfilClienteDisponiveis.Items.Add(lboxPerfilClienteSelecionado.Items[lboxPerfilClienteSelecionado.ItemIndex]);
       lboxPerfilClienteSelecionado.Items.Delete(lboxPerfilClienteSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueDisponiveis.ItemIndex > - 1 then
     begin
       lboxTipoEstoqueSelecionado.Items.Add(lboxTipoEstoqueDisponiveis.Items[lboxTipoEstoqueDisponiveis.ItemIndex]);
       lboxTipoEstoqueDisponiveis.Items.Delete(lboxTipoEstoqueDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueSelecionado.ItemIndex > -1 then
     begin
       lboxTipoEstoqueDisponiveis.Items.Add(lboxTipoEstoqueSelecionado.Items[lboxTipoEstoqueSelecionado.ItemIndex]);
       lboxTipoEstoqueSelecionado.Items.Delete(lboxTipoEstoqueSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_ABC.lboxVendedoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendedores,3,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,3,0)) then
                begin
                  lboxVendedores.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,3,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_ABC.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpresas.ClearSelection;

  if lboxEmpresas.Items.Count = 0 then
     begin
       Showmessage('N�o h� registro para selecionar.');
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
procedure TFAT_FM_R_ABC.txtFaixaAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TFAT_FM_R_ABC.txtFaixaBKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TFAT_FM_R_ABC.txtFaixaCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

end.
