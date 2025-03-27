unit ESP_UN_M_PJC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask,
  vcl.wwdblook, JvExMask, JvToolEdit, Vcl.ComCtrls, frxExportPDF, frxClass,
  frxDBSet, frxExportXLS, Data.DB, Datasnap.DBClient, Vcl.Menus;

type
  TESP_FM_M_PJC = class(TPAD_FM_X_REL)
    chbMovimento: TCheckBox;
    txtDeducao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnExporta: TButton;
    dtaMovimento: TJvDateEdit;
    cbbTipoDocTransf: TComboBox;
    pcFiltros: TPageControl;
    tsFornecedores: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    tsTipoDocumento: TTabSheet;
    lblFormaDisponivel: TLabel;
    lblFormaSelecionada: TLabel;
    lboxTipoSelecionada: TListBox;
    lboxTipoDisponivel: TListBox;
    ESP_FR_M_PJC: TfrxReport;
    ESP_XL_M_PJC: TfrxXLSExport;
    ESP_DB_M_PJC: TfrxDBDataset;
    ESP_PD_M_PJC: TfrxPDFExport;
    ESP_CD_M_PJC: TClientDataSet;
    pmExcluirFornecedor: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    pmRemoverTodosTipoDoc: TPopupMenu;
    btnRemoverTodosTiposDocumentos: TMenuItem;
    pmSelTipoDocumento: TPopupMenu;
    MenuItemTipoDocumento: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxTipoDisponivelDblClick(Sender: TObject);
    procedure lboxTipoSelecionadaDblClick(Sender: TObject);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure MenuItemTipoDocumentoClick(Sender: TObject);
    procedure btnRemoverTodosTiposDocumentosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ESP_FM_M_PJC: TESP_FM_M_PJC;

implementation

{$R *.dfm}

uses PSQ_UN_X_FOR, uDmGeral, enFunc;

procedure TESP_FM_M_PJC.btnRemoverRegistroFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TESP_FM_M_PJC.btnRemoverTodosTiposDocumentosClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxTipoSelecionada.ClearSelection;

  if lboxTipoSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoSelecionada.Items.Count - 1 do
           begin
             lboxTipoDisponivel.Items.Add(lboxTipoSelecionada.Items[i]);
             lboxTipoSelecionada.Items.Delete(lboxTipoSelecionada.ItemIndex);
           end;
       lboxTipoSelecionada.Items.Clear;
     end;
end;

procedure TESP_FM_M_PJC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(ESP_FM_M_PJC);
end;

procedure TESP_FM_M_PJC.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
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

procedure TESP_FM_M_PJC.lboxTipoDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoDisponivel.ItemIndex > - 1 then
     begin
       lboxTipoSelecionada.Items.Add(lboxTipoDisponivel.Items[lboxTipoDisponivel.ItemIndex]);
       lboxTipoDisponivel.Items.Delete(lboxTipoDisponivel.ItemIndex);
     end;
end;

procedure TESP_FM_M_PJC.lboxTipoSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoSelecionada.ItemIndex > -1 then
     begin
       lboxTipoDisponivel.Items.Add(lboxTipoSelecionada.Items[lboxTipoSelecionada.ItemIndex]);
       lboxTipoSelecionada.Items.Delete(lboxTipoSelecionada.ItemIndex);
     end;
end;

procedure TESP_FM_M_PJC.MenuItemTipoDocumentoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxTipoDisponivel.ClearSelection;
  if lboxTipoDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoDisponivel.Items.Count - 1 do
           begin
             lboxTipoSelecionada.Items.Add(lboxTipoDisponivel.Items[i]);
             lboxTipoDisponivel.Items.Delete(lboxTipoDisponivel.ItemIndex);
           end;
       lboxTipoDisponivel.Items.Clear;
     end;
end;

end.
