unit EST_UN_R_DEV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.Menus, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TEST_FM_R_DEV = class(TPAD_FM_X_REL)
    lblperiodo: TLabel;
    lblate: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    pgFiltros: TPageControl;
    tsEmpresa: TTabSheet;
    tsItem: TTabSheet;
    tsFornecedor: TTabSheet;
    lboxEmpresa: TListBox;
    lboxEmpresaSelecionada: TListBox;
    lblEmpresasDisponivel: TLabel;
    lblEmpresasSelecionadas: TLabel;
    lboxFornecedor: TListBox;
    lblFornecedoresDisponiveis: TLabel;
    lboxItem: TListBox;
    lblItemDisponivel: TLabel;
    pmSelEmpresas: TPopupMenu;
    pmRemoverTodosEmpresa: TPopupMenu;
    pmExcluirFornecedor: TPopupMenu;
    pmExcluirItem: TPopupMenu;
    FAT_DB_R_DEV_FOR: TfrxDBDataset;
    btnRemoverTodasEmpresa: TMenuItem;
    btnSelEmpresas: TMenuItem;
    btnRemoverFornecedor: TMenuItem;
    bntRemoverItem: TMenuItem;
    BUS_CD_C_PAR: TClientDataSet;
    BUS_CD_C_PARid_empresa: TIntegerField;
    BUS_CD_C_PARemp_cnpj: TWideStringField;
    BUS_CD_C_PARid_ramo: TIntegerField;
    BUS_CD_C_PARemp_razao: TWideStringField;
    BUS_CD_C_PARemp_endereco: TWideStringField;
    BUS_CD_C_PARemp_numero: TWideStringField;
    BUS_CD_C_PARemp_complemento: TWideStringField;
    BUS_CD_C_PARemp_bairro: TWideStringField;
    BUS_CD_C_PARid_cidade: TWideStringField;
    BUS_CD_C_PARemp_cep: TWideStringField;
    BUS_CD_C_PARemp_telefone: TWideStringField;
    BUS_CD_C_PARemp_fax: TWideStringField;
    BUS_CD_C_PARemp_email: TWideStringField;
    BUS_CD_C_PARemp_site: TWideStringField;
    BUS_CD_C_PARemp_fantasia: TWideStringField;
    BUS_CD_C_PARemp_im: TWideStringField;
    BUS_CD_C_PARemp_ie: TWideStringField;
    BUS_CD_C_PARemp_suframa: TWideStringField;
    BUS_CD_C_PARemp_numero_junta: TWideStringField;
    BUS_CD_C_PARres_nome: TWideStringField;
    BUS_CD_C_PARres_qualificacao: TWideStringField;
    BUS_CD_C_PARres_cpf: TWideStringField;
    BUS_CD_C_PARres_cep: TWideStringField;
    BUS_CD_C_PARres_endereco: TWideStringField;
    BUS_CD_C_PARres_numero: TWideStringField;
    BUS_CD_C_PARres_complemento: TWideStringField;
    BUS_CD_C_PARres_bairro: TWideStringField;
    BUS_CD_C_PARres_cp: TWideStringField;
    BUS_CD_C_PARres_telefone: TWideStringField;
    BUS_CD_C_PARres_fax: TWideStringField;
    BUS_CD_C_PARres_email: TWideStringField;
    BUS_CD_C_PARcnt_nome: TWideStringField;
    BUS_CD_C_PARcnt_cpf: TWideStringField;
    BUS_CD_C_PARcnt_crc: TWideStringField;
    BUS_CD_C_PARcnt_cnpj: TWideStringField;
    BUS_CD_C_PARcnt_cep: TWideStringField;
    BUS_CD_C_PARcnt_endereco: TWideStringField;
    BUS_CD_C_PARcnt_numero: TWideStringField;
    BUS_CD_C_PARcnt_complemento: TWideStringField;
    BUS_CD_C_PARcnt_bairro: TWideStringField;
    BUS_CD_C_PARcnt_telefone: TWideStringField;
    BUS_CD_C_PARcnt_fax: TWideStringField;
    BUS_CD_C_PARcnt_email: TWideStringField;
    BUS_CD_C_PARcnt_id_cidade: TWideStringField;
    BUS_CD_C_PARcnt_qualificacao: TWideStringField;
    BUS_CD_C_PARcnt_cp: TWideStringField;
    BUS_CD_C_PARint_uf: TWideStringField;
    BUS_CD_C_PARint_reg_tributario: TIntegerField;
    BUS_CD_C_PARint_nomecid: TWideStringField;
    BUS_CD_C_PARres_cidade: TWideStringField;
    BUS_CD_C_PARcod_lme: TWideStringField;
    BUS_CD_C_PARrev_lme: TWideStringField;
    BUS_CD_C_PARCAD_SQ_C_PAR_MOD: TDataSetField;
    BUS_CD_C_PARCAD_SQ_C_PAR_NFE: TDataSetField;
    BUS_CD_C_PARCAD_SQ_C_PAR_SER: TDataSetField;
    BUS_CD_C_PARCAD_SQ_C_PAR_CTR: TDataSetField;
    EST_XL_R_DEV: TfrxXLSExport;
    EST_PD_R_DEV: TfrxPDFExport;
    EST_FR_R_DEV_GER: TfrxReport;
    EST_FR_R_DEV_FOR: TfrxReport;
    FAT_CD_R_DEV_FOR: TClientDataSet;
    FAT_CD_R_DEV_FORid_item: TIntegerField;
    FAT_CD_R_DEV_FORint_nomeite: TWideStringField;
    FAT_CD_R_DEV_FORint_nomecor: TWideStringField;
    FAT_CD_R_DEV_FORint_nometam: TWideStringField;
    FAT_CD_R_DEV_FORid_und_venda: TWideStringField;
    FAT_CD_R_DEV_FORint_nomegru: TWideStringField;
    FAT_CD_R_DEV_FORid_emitente: TIntegerField;
    FAT_CD_R_DEV_FORfantasia: TWideStringField;
    FAT_CD_R_DEV_FORint_nomefor: TWideStringField;
    FAT_CD_R_DEV_FORqtde: TFloatField;
    FAT_CD_R_DEV_FORvlr_total: TFMTBCDField;
    procedure lboxEmpresaDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnRemoverTodasEmpresaClick(Sender: TObject);
    procedure btnSelEmpresasClick(Sender: TObject);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure bntRemoverItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure deFinalExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FAT_CD_R_DEV_FORBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  
  public
    { Public declarations }
  end;

var
  EST_FM_R_DEV: TEST_FM_R_DEV;

implementation

{$R *.dfm}

uses PSQ_UN_X_FOR, uDmGeral, enFunc, PSQ_UN_X_ITE, EST_RN_R_DEV, enConstantes;

procedure TEST_FM_R_DEV.btnRemoverTodasEmpresaClick(Sender: TObject);
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
             lboxEmpresa.Items.Add(lboxEmpresaSelecionada.Items[i]);
             lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TEST_FM_R_DEV.btnSelEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxEmpresa.ClearSelection;
  if lboxEmpresa.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresa.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresa.Items.Count - 1 do
           begin
             lboxEmpresaSelecionada.Items.Add(lboxEmpresa.Items[i]);
             lboxEmpresa.Items.Delete(lboxEmpresa.ItemIndex);
           end;
       lboxEmpresa.Items.Clear;
     end;
end;

procedure TEST_FM_R_DEV.deFinalExit(Sender: TObject);
begin
  inherited;
  if deinicial.Date > deFinal.Date  then
  begin
    ShowMessage('Data Final deve ser Superior a Inicial ');
    deinicial.SetFocus;
  end;

end;

procedure TEST_FM_R_DEV.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedor.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedor.DeleteSelected;
end;

procedure TEST_FM_R_DEV.bntRemoverItemClick(Sender: TObject);
begin
  inherited;
  if lboxItem.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxItem.DeleteSelected;
end;

procedure TEST_FM_R_DEV.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos(deInicial,deFinal,lboxEmpresaSelecionada) then
    begin
        ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxItem,lboxFornecedor,
        deInicial,deFinal,EST_FR_R_DEV_GER,EST_FR_R_DEV_FOR);
    end;
end;

procedure TEST_FM_R_DEV.FAT_CD_R_DEV_FORBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  FAT_CD_R_DEV_FORvlr_total.DisplayFormat     :=CMascaraValor;
end;

procedure TEST_FM_R_DEV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
FreeAndNil(EST_FM_R_DEV);
end;

procedure TEST_FM_R_DEV.FormCreate(Sender: TObject);
begin
  inherited;
   WindowState := wsMaximized;
end;

procedure TEST_FM_R_DEV.FormShow(Sender: TObject);
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
            lboxEmpresa.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;
  {
  // Fornecedor ------------------------------------------------------------------
  dmGeral.BUS_CD_C_FOR.Close;
  dmGeral.BUS_CD_C_FOR.Data :=
  dmGeral.BUS_CD_C_FOR.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FOR.First;

       while not dmGeral.BUS_CD_C_FOR.eof do
          begin
            lboxFornecedor.Items.Add(StrZero(dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_FOR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_FOR.Close;

  // Itens ---------------------------------------------------------------------
  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
  dmGeral.BUS_CD_C_ITE.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ITE.First;

       while not dmGeral.BUS_CD_C_ITE.eof do
          begin
            lboxItem.Items.Add(StrZero(dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_ITE.Next;
          end;
     end;
  dmGeral.BUS_CD_C_ITE.Close;}
end;

procedure TEST_FM_R_DEV.lboxEmpresaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresa.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresa.Items[lboxEmpresa.ItemIndex]);
       lboxEmpresa.Items.Delete(lboxEmpresa.ItemIndex);
     end;
end;

procedure TEST_FM_R_DEV.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresa.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TEST_FM_R_DEV.lboxFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedor,6,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0)) then
                begin
                  lboxFornecedor.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TEST_FM_R_DEV.lboxItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItem,6,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0)) then
                begin
                  lboxItem.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

end.







