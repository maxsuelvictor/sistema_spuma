unit FAT_UN_R_POS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Datasnap.DBClient;

type
  TFAT_FM_R_POS = class(TPAD_FM_X_REL)
    lblPeriodo: TLabel;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsCliente: TTabSheet;
    lblClientesDisponiveis: TLabel;
    lboxClientes: TListBox;
    deInicial: TJvDateEdit;
    lblAte: TLabel;
    deFinal: TJvDateEdit;
    FAT_FR_R_POS_CLI: TfrxReport;
    FAT_DB_R_POS: TfrxDBDataset;
    FAT_PD_R_POS: TfrxPDFExport;
    FAT_XL_R_POS: TfrxXLSExport;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverClientes: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    FAT_CD_R_POS: TClientDataSet;
    FAT_CD_R_POS_NFE: TClientDataSet;
    FAT_CD_R_POSid_posvenda: TIntegerField;
    FAT_CD_R_POSid_empresa: TIntegerField;
    FAT_CD_R_POSdta_posvenda: TDateField;
    FAT_CD_R_POSid_cliente: TIntegerField;
    FAT_CD_R_POSid_responsavel: TIntegerField;
    FAT_CD_R_POScod_lme: TWideStringField;
    FAT_CD_R_POSrev_lme: TWideStringField;
    FAT_CD_R_POSint_nomecli: TWideStringField;
    FAT_CD_R_POSint_nomeresp: TWideStringField;
    FAT_CD_R_POSFAT_SQ_M_POS_NFE: TDataSetField;
    FAT_CD_R_POS_NFEid_posvenda: TIntegerField;
    FAT_CD_R_POS_NFEid_fiscal: TIntegerField;
    FAT_CD_R_POS_NFEreclamacao: TWideStringField;
    FAT_CD_R_POS_NFEsolucao: TWideStringField;
    FAT_CD_R_POS_NFEavaliacao: TIntegerField;
    FAT_CD_R_POS_NFEint_numero: TIntegerField;
    FAT_DB_R_POS_NFE: TfrxDBDataset;
    FAT_CD_R_POSint_empfantasia: TWideStringField;
    FAT_CD_R_POSint_emprazao: TWideStringField;
    FAT_CD_R_POS_NFEint_desc_avaliacao: TWideMemoField;
    FAT_FR_R_POS_DTA: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_R_POS: TFAT_FM_R_POS;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, enFunc, FAT_RN_R_POS;

procedure TFAT_FM_R_POS.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos(deInicial,deFinal,lboxEmpresaSelecionada) then
    begin
      ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxClientes,deInicial,deFinal,FAT_FR_R_POS_CLI,FAT_FR_R_POS_DTA);
    end;
end;

procedure TFAT_FM_R_POS.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxClientes.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxClientes.DeleteSelected;
end;

procedure TFAT_FM_R_POS.btnRemoverTodosEmpresaClick(Sender: TObject);
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
procedure TFAT_FM_R_POS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_POS);
end;

procedure TFAT_FM_R_POS.FormShow(Sender: TObject);
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
end;

procedure TFAT_FM_R_POS.lboxClientesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
        PSQ_FM_X_CLI.ShowModal;
        if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxClientes,6,StrZero(PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0)) then
                begin
                  lboxClientes.Items.Add(StrZero(PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_CLI.Free;
     end;
end;

procedure TFAT_FM_R_POS.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_POS.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_POS.menuItemEmpresasClick(Sender: TObject);
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
