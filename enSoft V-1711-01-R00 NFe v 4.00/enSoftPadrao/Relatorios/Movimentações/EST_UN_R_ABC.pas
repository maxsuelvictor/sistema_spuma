unit EST_UN_R_ABC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Datasnap.DBClient;

type
  TEST_FM_R_ABC = class(TPAD_FM_X_REL)
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
    tsGrupo: TTabSheet;
    lblGruposDisponiveis: TLabel;
    lblGrupoSelecionado: TLabel;
    lboxGrupoSelecionado: TListBox;
    lboxGruposDisponiveis: TListBox;
    tsFornecedor: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    txtFaixaA: TEdit;
    txtFaixaB: TEdit;
    txtFaixaC: TEdit;
    lblFaixa: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EST_DB_R_ABC_VLR: TfrxDBDataset;
    EST_PD_R_ABC_PRO: TfrxPDFExport;
    EST_XL_R_ABC_PRO: TfrxXLSExport;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelTipoEstoque: TPopupMenu;
    btnTodosTipoEstoque: TMenuItem;
    pmRemoverTipoEstoque: TPopupMenu;
    btnRemoverTiposEstoque: TMenuItem;
    pmSelGrupo: TPopupMenu;
    btnSelGrupo: TMenuItem;
    pmRemoverGrupo: TPopupMenu;
    btnRemoverGrupo: TMenuItem;
    pmRemoverFornecedor: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    EST_DB_R_ABC_QTD: TfrxDBDataset;
    cdsAbcVlr: TClientDataSet;
    cdsAbcQtd: TClientDataSet;
    cdsAbcVlrid_sequencia: TIntegerField;
    cdsAbcVlrid_item: TIntegerField;
    cdsAbcVlrdescricao: TStringField;
    cdsAbcVlrid_und_venda: TStringField;
    cdsAbcVlrvlr_liquido: TCurrencyField;
    cdsAbcVlrcurva: TStringField;
    cdsAbcVlrvlr_acumulado: TCurrencyField;
    cdsAbcVlrper_vlr: TCurrencyField;
    cdsAbcVlrper_acum: TCurrencyField;
    cdsAbcQtdid_sequencia: TIntegerField;
    cdsAbcQtdid_item: TIntegerField;
    cdsAbcQtdid_und_venda: TStringField;
    cdsAbcQtdqtde: TFloatField;
    cdsAbcQtdqtde_acum: TFloatField;
    cdsAbcQtdper_acum: TCurrencyField;
    cdsAbcQtdcurva: TStringField;
    cdsAbcQtddescricao: TStringField;
    cdsAbcQtdper_qtde: TCurrencyField;
    EST_CD_R_ABC_VLR: TClientDataSet;
    EST_CD_R_ABC_QTD: TClientDataSet;
    EST_CD_R_ABC_VLRid_item: TIntegerField;
    EST_CD_R_ABC_VLRdescricao: TWideStringField;
    EST_CD_R_ABC_VLRid_und_venda: TWideStringField;
    EST_CD_R_ABC_VLRvlr_liquido: TFMTBCDField;
    EST_CD_R_ABC_VLRvlr_total: TFMTBCDField;
    EST_CD_R_ABC_QTDid_item: TIntegerField;
    EST_CD_R_ABC_QTDdescricao: TWideStringField;
    EST_CD_R_ABC_QTDid_und_venda: TWideStringField;
    EST_CD_R_ABC_QTDqtde: TFloatField;
    EST_CD_R_ABC_QTDqtde_total: TFloatField;
    EST_FR_R_ABC_PRO_VLR: TfrxReport;
    EST_CD_R_ABC_VLRint_vlr_custo_ult_cmp: TFMTBCDField;
    cdsAbcVlrvlr_custo_ult_cmp: TCurrencyField;
    chbTipoServico: TCheckBox;
    EST_FR_R_ABC_PRO_QTD: TfrxReport;
    cdsAbcQtdvlr_custo_ult_cmp: TCurrencyField;
    EST_CD_R_ABC_QTDint_vlr_custo_ult_cmp: TFMTBCDField;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxGruposDisponiveisDblClick(Sender: TObject);
    procedure lboxGrupoSelecionadoDblClick(Sender: TObject);
    procedure lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
    procedure lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure btnSelGrupoClick(Sender: TObject);
    procedure btnRemoverGrupoClick(Sender: TObject);
    procedure btnTodosTipoEstoqueClick(Sender: TObject);
    procedure btnRemoverTiposEstoqueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtFaixaAKeyPress(Sender: TObject; var Key: Char);
    procedure txtFaixaBKeyPress(Sender: TObject; var Key: Char);
    procedure txtFaixaCKeyPress(Sender: TObject; var Key: Char);
    procedure txtFaixaAExit(Sender: TObject);
    procedure txtFaixaBExit(Sender: TObject);
    procedure txtFaixaCExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EST_FM_R_ABC: TEST_FM_R_ABC;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FOR, EST_RN_R_ABC;

{ TEST_FM_R_ABC_PRO }

procedure TEST_FM_R_ABC.btnImprimirClick(Sender: TObject);
begin
  inherited;
    if TestarCampos(deInicial,deFinal,txtFaixaA,txtFaixaB,txtFaixaC,lboxEmpresaSelecionada) then
     begin
       ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxFornecedores,lboxGruposDisponiveis,lboxGrupoSelecionado,
                lboxTipoEstoqueDisponiveis,lboxTipoEstoqueSelecionado,deInicial,deFinal,chbTipoServico,txtFaixaA,txtFaixaB,
                txtFaixaC,EST_FR_R_ABC_PRO_VLR,EST_FR_R_ABC_PRO_QTD,cdsABCVlr,cdsABCQtd);
     end;
   {if (StrToInt(txtfaixaa.Text) + StrToInt(txtfaixab.Text) + StrToInt(txtfaixac.Text) = 100) then
    begin
      if TestarCampos(deInicial,deFinal) then
         begin
           ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxFornecedores,lboxGrupoSelecionado,
                lboxTipoEstoqueSelecionado,deInicial,deFinal,txtFaixaA,txtFaixaB,
                txtFaixaC,EST_FR_R_ABC_PRO_VLR,EST_FR_R_ABC_PRO_QTD);
         end;
    end
   else
    begin
      showmessage('A soma das "Faixas" deve ser igual a "100".');
      txtfaixaa.SetFocus;
    end;   }
end;

procedure TEST_FM_R_ABC.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TEST_FM_R_ABC.btnRemoverGrupoClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxGrupoSelecionado.ClearSelection;

  if lboxGrupoSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGrupoSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxGrupoSelecionado.Items.Count - 1 do
           begin
             lboxGruposDisponiveis.Items.Add(lboxGrupoSelecionado.Items[i]);
             lboxGrupoSelecionado.Items.Delete(lboxGrupoSelecionado.ItemIndex);
           end;
       lboxGrupoSelecionado.Items.Clear;
     end;
end;

procedure TEST_FM_R_ABC.btnRemoverTiposEstoqueClick(Sender: TObject);
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

procedure TEST_FM_R_ABC.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TEST_FM_R_ABC.btnSelGrupoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxGruposDisponiveis.ClearSelection;
  if lboxGruposDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGruposDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxGruposDisponiveis.Items.Count - 1 do
           begin
             lboxGrupoSelecionado.Items.Add(lboxGruposDisponiveis.Items[i]);
             lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
           end;
       lboxGruposDisponiveis.Items.Clear;
     end;
end;

procedure TEST_FM_R_ABC.btnTodosTipoEstoqueClick(Sender: TObject);
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
procedure TEST_FM_R_ABC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_R_ABC);
end;

procedure TEST_FM_R_ABC.FormCreate(Sender: TObject);
begin
  inherited;
  txtFaixaA.Text := '70';
  txtFaixaB.Text := '20';
  txtFaixaC.Text := '10';
end;

procedure TEST_FM_R_ABC.FormShow(Sender: TObject);
begin
  inherited;
  cdsABCVlr.CreateDataSet;
  cdsABCQtd.CreateDataSet;
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
            lboxGruposDisponiveis.Items.Add(trim(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString));
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;

 dmGeral.BUS_CD_C_GRU.Close;

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
end;

procedure TEST_FM_R_ABC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TEST_FM_R_ABC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TEST_FM_R_ABC.lboxFornecedoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TEST_FM_R_ABC.lboxGruposDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposDisponiveis.ItemIndex > - 1 then
     begin
       lboxGrupoSelecionado.Items.Add(lboxGruposDisponiveis.Items[lboxGruposDisponiveis.ItemIndex]);
       lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
     end;
end;

procedure TEST_FM_R_ABC.lboxGrupoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxGrupoSelecionado.ItemIndex > -1 then
     begin
       lboxGruposDisponiveis.Items.Add(lboxGrupoSelecionado.Items[lboxGrupoSelecionado.ItemIndex]);
       lboxGrupoSelecionado.Items.Delete(lboxGrupoSelecionado.ItemIndex);
     end;
end;

procedure TEST_FM_R_ABC.lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueDisponiveis.ItemIndex > - 1 then
     begin
       lboxTipoEstoqueSelecionado.Items.Add(lboxTipoEstoqueDisponiveis.Items[lboxTipoEstoqueDisponiveis.ItemIndex]);
       lboxTipoEstoqueDisponiveis.Items.Delete(lboxTipoEstoqueDisponiveis.ItemIndex);
     end;
end;

procedure TEST_FM_R_ABC.lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueSelecionado.ItemIndex > -1 then
     begin
       lboxTipoEstoqueDisponiveis.Items.Add(lboxTipoEstoqueSelecionado.Items[lboxTipoEstoqueSelecionado.ItemIndex]);
       lboxTipoEstoqueSelecionado.Items.Delete(lboxTipoEstoqueSelecionado.ItemIndex);
     end;
end;

procedure TEST_FM_R_ABC.menuItemEmpresasClick(Sender: TObject);
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
procedure TEST_FM_R_ABC.txtFaixaAExit(Sender: TObject);
begin
  inherited;
  if (txtfaixaA.Text = '0') or (txtfaixaA.Text = '') then
    begin
      showmessage('"Faixa A" dever ser preenchida.');
      txtfaixaA.SetFocus;
    end;
end;

procedure TEST_FM_R_ABC.txtFaixaAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TEST_FM_R_ABC.txtFaixaBExit(Sender: TObject);
begin
  inherited;
  if (txtfaixaB.Text = '0') or (txtfaixaB.Text = '') then
    begin
      showmessage('"Faixa B" dever ser preenchida.');
      txtfaixaB.SetFocus;
    end;
end;

procedure TEST_FM_R_ABC.txtFaixaBKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TEST_FM_R_ABC.txtFaixaCExit(Sender: TObject);
begin
  inherited;
  if (txtfaixaC.Text = '0') or (txtfaixaC.Text = '') then
    begin
      showmessage('"Faixa C" dever ser preenchida.');
      txtfaixaC.SetFocus;
    end;
end;

procedure TEST_FM_R_ABC.txtFaixaCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

end.
