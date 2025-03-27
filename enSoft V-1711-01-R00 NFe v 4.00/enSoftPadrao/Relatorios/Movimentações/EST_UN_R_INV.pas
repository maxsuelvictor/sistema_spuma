unit EST_UN_R_INV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, frxClass, frxDBSet, frxExportPDF, frxExportXLS,
  Vcl.Menus, Data.DB, Datasnap.DBClient;

type
  TEST_FM_R_INV = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsFornecedor: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    tsGrupo: TTabSheet;
    lblGruposDisponiveis: TLabel;
    lblGrupoSelecionado: TLabel;
    lboxGrupoSelecionado: TListBox;
    lboxGruposDisponiveis: TListBox;
    lblDataBase: TLabel;
    dpkDataBase: TJvDateEdit;
    lblEstoque: TLabel;
    pmRemoverFornecedor: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    EST_XL_R_INV: TfrxXLSExport;
    EST_PD_R_INV: TfrxPDFExport;
    EST_DB_R_INV: TfrxDBDataset;
    EST_FR_R_INV_GER: TfrxReport;
    pmSelGrupo: TPopupMenu;
    btnSelGrupo: TMenuItem;
    pmRemoverGrupo: TPopupMenu;
    btnRemoverGrupo: TMenuItem;
    cbbEstoque: TComboBox;
    EST_FR_R_INV_GRU: TfrxReport;
    EST_FR_R_INV_LOC: TfrxReport;
    EST_CD_R_INV: TClientDataSet;
    EST_CD_R_INVid_empresa: TIntegerField;
    EST_CD_R_INVid_item: TIntegerField;
    EST_CD_R_INVint_nomeite: TWideStringField;
    EST_CD_R_INVid_grupo: TWideStringField;
    EST_CD_R_INVint_nomegru: TWideStringField;
    EST_CD_R_INVloca_rua: TWideStringField;
    EST_CD_R_INVloca_prateleira: TWideStringField;
    EST_CD_R_INVloca_escaninho: TWideStringField;
    EST_CD_R_INVlocacao: TWideMemoField;
    EST_CD_R_INVid_ncm: TWideStringField;
    EST_CD_R_INVid_und_venda: TWideStringField;
    EST_CD_R_INVqtde: TFloatField;
    EST_CD_R_INVcusto: TFMTBCDField;
    EST_CD_R_INVvlr_total: TFloatField;
    EST_CD_R_INVint_codgru_n1: TWideStringField;
    EST_CD_R_INVint_descgru_n1: TWideStringField;
    EST_CD_R_INVint_codgru_n2: TWideStringField;
    EST_CD_R_INVint_descgru_n2: TWideStringField;
    EST_FR_R_INV_FOR: TfrxReport;
    EST_CD_R_INVint_descfor: TWideStringField;
    EST_CD_R_INVint_cod_for: TIntegerField;
    EST_CD_R_INVint_ncm: TWideStringField;
    cbbInativos: TComboBox;
    label45: TLabel;
    Label3: TLabel;
    cbbTipoCusto: TComboBox;
    procedure btnSelGrupoClick(Sender: TObject);
    procedure btnRemoverGrupoClick(Sender: TObject);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxGruposDisponiveisDblClick(Sender: TObject);
    procedure lboxGrupoSelecionadoDblClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    lbxEmpresa: String;
  end;

var
  EST_FM_R_INV: TEST_FM_R_INV;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FOR, EST_RN_R_INV;

procedure TEST_FM_R_INV.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos(dpkDataBase) then
    begin
      ExibirRel(lbxRelatorios,lboxGrupoSelecionado,lboxFornecedores,dpkDataBase,cbbEstoque,cbbTipoCusto,
      EST_FR_R_INV_GER,EST_FR_R_INV_GRU,EST_FR_R_INV_LOC,EST_FR_R_INV_FOR);
    end;
end;

procedure TEST_FM_R_INV.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TEST_FM_R_INV.btnRemoverGrupoClick(Sender: TObject);
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

procedure TEST_FM_R_INV.btnSelGrupoClick(Sender: TObject);
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

procedure TEST_FM_R_INV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_R_INV);
end;

procedure TEST_FM_R_INV.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

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

  // Fornecedor ----------------------------------------------------------------
end;

procedure TEST_FM_R_INV.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TEST_FM_R_INV.lboxGruposDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposDisponiveis.ItemIndex > - 1 then
     begin
       lboxGrupoSelecionado.Items.Add(lboxGruposDisponiveis.Items[lboxGruposDisponiveis.ItemIndex]);
       lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
     end;
end;

procedure TEST_FM_R_INV.lboxGrupoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxGrupoSelecionado.ItemIndex > -1 then
     begin
       lboxGruposDisponiveis.Items.Add(lboxGrupoSelecionado.Items[lboxGrupoSelecionado.ItemIndex]);
       lboxGrupoSelecionado.Items.Delete(lboxGrupoSelecionado.ItemIndex);
     end;
end;

end.
