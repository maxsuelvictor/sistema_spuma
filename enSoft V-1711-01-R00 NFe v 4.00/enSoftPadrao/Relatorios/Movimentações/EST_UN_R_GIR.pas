unit EST_UN_R_GIR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Datasnap.DBClient;

type
  TEST_FM_R_GIR = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    tsItem: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxItem: TListBox;
    tsGrupo: TTabSheet;
    lblGruposDisponiveis: TLabel;
    lblGrupoSelecionado: TLabel;
    lboxGrupoSel: TListBox;
    lboxGrupoDisp: TListBox;
    Label1: TLabel;
    EST_FR_R_GIR_GER: TfrxReport;
    EST_FR_R_GIR_EMP: TfrxReport;
    EST_DB_R_GIR: TfrxDBDataset;
    EST_PD_R_GIR: TfrxPDFExport;
    EST_XL_R_GIR: TfrxXLSExport;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverItem: TPopupMenu;
    btnRemoverItem: TMenuItem;
    pmSelGrupo: TPopupMenu;
    btnSelGrupo: TMenuItem;
    pmRemoverGrupo: TPopupMenu;
    btnRemoverGrupo: TMenuItem;
    tsCor: TTabSheet;
    lboxCorDisp: TListBox;
    lboxCorSel: TListBox;
    lblCorDisp: TLabel;
    lblCorSel: TLabel;
    tsTamanho: TTabSheet;
    lboxTamDisp: TListBox;
    lboxTamSel: TListBox;
    lblTamDisp: TLabel;
    lblTamSel: TLabel;
    txtAnoFinal: TEdit;
    txtMesFinal: TEdit;
    pmSelCores: TPopupMenu;
    btnSelecionarTodasCores: TMenuItem;
    pmRemoverCores: TPopupMenu;
    btnRemoverCores: TMenuItem;
    pmSelTam: TPopupMenu;
    btnSelecionarTodosTam: TMenuItem;
    pmRemoverTam: TPopupMenu;
    btnRemoverTodosTam: TMenuItem;
    Label4: TLabel;
    EST_CD_R_GIR: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure lboxGrupoDispDblClick(Sender: TObject);
    procedure lboxGrupoSelDblClick(Sender: TObject);
    procedure btnSelGrupoClick(Sender: TObject);
    procedure btnRemoverGrupoClick(Sender: TObject);
    procedure lboxItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelecionarTodasCoresClick(Sender: TObject);
    procedure btnRemoverCoresClick(Sender: TObject);
    procedure btnSelecionarTodosTamClick(Sender: TObject);
    procedure btnRemoverTodosTamClick(Sender: TObject);
    procedure lboxCorDispDblClick(Sender: TObject);
    procedure lboxTamDispDblClick(Sender: TObject);
    procedure lboxTamSelDblClick(Sender: TObject);
    procedure lboxCorSelDblClick(Sender: TObject);
    procedure txtMesFinalExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EST_FM_R_GIR: TEST_FM_R_GIR;

implementation

{$R *.dfm}

uses uDmGeral, enFunc,EST_RN_R_GIR, PSQ_UN_X_ITE;



procedure TEST_FM_R_GIR.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos(txtMesFinal,txtAnoFinal) then
    begin
      ExibirRel(lbxRelatorios,lboxEmpDisp,lboxEmpSel,lboxGrupoDisp,lboxGrupoSel,lboxItem,
                lboxCorDisp,lboxCorSel,lboxTamDisp,lboxTamSel,txtMesFinal,txtAnoFinal,EST_FR_R_GIR_GER,EST_FR_R_GIR_EMP);
    end;
end;

procedure TEST_FM_R_GIR.btnRemoverItemClick(Sender: TObject);
begin
  inherited;
  if lboxItem.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxItem.DeleteSelected;
end;

procedure TEST_FM_R_GIR.btnRemoverCoresClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCorSel.ClearSelection;

  if lboxCorSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCorSel.Items.Count > 0 then
     begin
       for i := 0 to lboxCorSel.Items.Count - 1 do
           begin
             lboxCorDisp.Items.Add(lboxCorSel.Items[i]);
             lboxCorSel.Items.Delete(lboxCorSel.ItemIndex);
           end;
       lboxCorSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_GIR.btnRemoverGrupoClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxGrupoSel.ClearSelection;

  if lboxGrupoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
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

procedure TEST_FM_R_GIR.btnRemoverTodosEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpSel.ClearSelection;

  if lboxEmpSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpSel.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpSel.Items.Count - 1 do
           begin
             lboxEmpDisp.Items.Add(lboxEmpSel.Items[i]);
             lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
           end;
       lboxEmpSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_GIR.btnRemoverTodosTamClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxTamSel.ClearSelection;

  if lboxTamSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTamSel.Items.Count > 0 then
     begin
       for i := 0 to lboxTamSel.Items.Count - 1 do
           begin
             lboxTamDisp.Items.Add(lboxTamSel.Items[i]);
             lboxTamSel.Items.Delete(lboxTamSel.ItemIndex);
           end;
       lboxTamSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_GIR.btnSelecionarTodasCoresClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxCorDisp.ClearSelection;

  if lboxCorDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCorDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxCorDisp.Items.Count - 1 do
           begin
             lboxCorSel.Items.Add(lboxCorDisp.Items[i]);
             lboxCorDisp.Items.Delete(lboxCorDisp.ItemIndex);
           end;
       lboxCorDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_GIR.btnSelecionarTodosTamClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTamDisp.ClearSelection;

  if lboxTamDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTamDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxTamDisp.Items.Count - 1 do
           begin
             lboxTamSel.Items.Add(lboxTamDisp.Items[i]);
             lboxTamDisp.Items.Delete(lboxTamDisp.ItemIndex);
           end;
       lboxTamDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_GIR.btnSelGrupoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxGrupoDisp.ClearSelection;
  if lboxGrupoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
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

procedure TEST_FM_R_GIR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_R_GIR);
end;

procedure TEST_FM_R_GIR.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  EST_FR_R_GIR_GER.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_GIR_GER.Variables['ft_usaAlmoxarifado'] := dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean;
  EST_FR_R_GIR_GER.Variables['ft_usaCor'] := dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean;
  EST_FR_R_GIR_GER.Variables['ft_usaTamanho'] := dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean;

  EST_FR_R_GIR_EMP.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_GIR_EMP.Variables['ft_usaAlmoxarifado'] := dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean;
  EST_FR_R_GIR_EMP.Variables['ft_usaCor'] := dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean;
  EST_FR_R_GIR_EMP.Variables['ft_usaTamanho'] := dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean;

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
            lboxEmpDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;

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
            lboxGrupoDisp.Items.Add(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;

  dmGeral.BUS_CD_C_GRU.Close;

   tsCor.TabVisible := false;
  // Cor ----------------------------------------------------------------
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True) then
     begin
       tsCor.TabVisible := true;
       dmGeral.BUS_CD_C_COR.Close;
       dmGeral.BUS_CD_C_COR.Data :=
       dmGeral.BUS_CD_C_COR.DataRequest(
              VarArrayOf([1, '%']));

       if not dmGeral.BUS_CD_C_COR.IsEmpty then
         begin
           dmGeral.BUS_CD_C_COR.First;

           while not dmGeral.BUS_CD_C_COR.eof do
              begin
                lboxCorDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_COR.FieldByName('ID_COR').AsFloat,3,0) +
                                        ' - ' + dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_COR.Next;
              end;
           dmGeral.BUS_CD_C_COR.Close;
         end;
     end;

   tsTamanho.TabVisible := false;
  // Tamanho ----------------------------------------------------------------
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True) then
     begin
       tsTamanho.TabVisible := true;
       dmGeral.BUS_CD_C_TAM.Close;
       dmGeral.BUS_CD_C_TAM.Data :=
       dmGeral.BUS_CD_C_TAM.DataRequest(
              VarArrayOf([1, '%']));

       if not dmGeral.BUS_CD_C_TAM.IsEmpty then
         begin
           dmGeral.BUS_CD_C_TAM.First;

           while not dmGeral.BUS_CD_C_TAM.eof do
              begin
                lboxTamDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_TAM.FieldByName('ID_TAMANHO').AsFloat,3,0) +
                            ' - '+dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_TAM.Next;
              end;
           dmGeral.BUS_CD_C_TAM.Close;
         end;
     end;


end;

procedure TEST_FM_R_GIR.lboxCorDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorDisp.ItemIndex > - 1 then
     begin
       lboxCorSel.Items.Add(lboxCorDisp.Items[lboxCorDisp.ItemIndex]);
       lboxCorDisp.Items.Delete(lboxCorDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_GIR.lboxCorSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorSel.ItemIndex > -1 then
     begin
       lboxCorDisp.Items.Add(lboxCorSel.Items[lboxCorSel.ItemIndex]);
       lboxCorSel.Items.Delete(lboxCorSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_GIR.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_GIR.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_GIR.lboxItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItem,7,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,7,0)) then
                begin
                  lboxItem.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,7,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TEST_FM_R_GIR.lboxTamDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxTamDisp.ItemIndex > - 1 then
     begin
       lboxTamSel.Items.Add(lboxTamDisp.Items[lboxTamDisp.ItemIndex]);
       lboxTamDisp.Items.Delete(lboxTamDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_GIR.lboxTamSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTamSel.ItemIndex > -1 then
     begin
       lboxTamDisp.Items.Add(lboxTamSel.Items[lboxTamSel.ItemIndex]);
       lboxTamSel.Items.Delete(lboxTamSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_GIR.lboxGrupoDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxGrupoDisp.ItemIndex > - 1 then
     begin
       lboxGrupoSel.Items.Add(lboxGrupoDisp.Items[lboxGrupoDisp.ItemIndex]);
       lboxGrupoDisp.Items.Delete(lboxGrupoDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_GIR.lboxGrupoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxGrupoSel.ItemIndex > -1 then
     begin
       lboxGrupoDisp.Items.Add(lboxGrupoSel.Items[lboxGrupoSel.ItemIndex]);
       lboxGrupoSel.Items.Delete(lboxGrupoSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_GIR.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpDisp.ClearSelection;

  if lboxEmpDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpDisp.Items.Count - 1 do
           begin
             lboxEmpSel.Items.Add(lboxEmpDisp.Items[i]);
             lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
           end;
       lboxEmpDisp.Items.Clear;
     end;
end;
procedure TEST_FM_R_GIR.txtMesFinalExit(Sender: TObject);
var
  mes:string;
begin
  inherited;
  mes := txtMesFinal.Text;
  if ((mes <> '') and (mes.Length=1)) then
    begin
      txtMesFinal.Text := '0'+mes;
    end;

end;

end.

