unit FAT_UN_R_NFE_ITE_IQM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, JvToolEdit, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvDBControls, enFunc,
  Vcl.ComCtrls, Data.DB, Datasnap.DBClient, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TFAT_FM_R_NFE_ITE_IQM = class(TPAD_FM_X_REL)
    lblFilial: TLabel;
    txtFilial: TJvDBComboEdit;
    txtFilialDescricao: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    cbbOrdenacao: TComboBox;
    pcFiltros: TPageControl;
    tsFornecedor: TTabSheet;
    Label6: TLabel;
    lboxFornecedor: TListBox;
    tsNotaFiscal: TTabSheet;
    Label7: TLabel;
    lboxNotaFiscal: TListBox;
    tsProduto: TTabSheet;
    Label3: TLabel;
    lboxProduto: TListBox;
    FAT_CD_R_NFE_ITE_IQM: TClientDataSet;
    FAT_FR_R_NFE_ITE_IQM_SIM: TfrxReport;
    FAT_XL_R_NFE_ITE_IQM: TfrxXLSExport;
    FAT_PD_R_NFE_ITE_IQM: TfrxPDFExport;
    FAT_DB_R_NFE_ITE_IQM: TfrxDBDataset;
    pmExcluirFornecedor: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    pmExcluirNotaFiscal: TPopupMenu;
    btnRemoverRegistroNotaFiscal: TMenuItem;
    pmExcluirProduto: TPopupMenu;
    btnRemoverRegistroProduto: TMenuItem;
    FAT_FR_R_NFE_ITE_IQM_FOR: TfrxReport;
    FAT_CD_R_NFE_ITE_IQMid_fiscal: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMid_sequencia: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMid_item: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMnro_lote_fabric_produto: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMlote_interno: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMcert_data: TDateField;
    FAT_CD_R_NFE_ITE_IQMcert_numero: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMid_responsavel: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMdemerito: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMorigem: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMqtd_nc: TFloatField;
    FAT_CD_R_NFE_ITE_IQMper_lot_rec: TFloatField;
    FAT_CD_R_NFE_ITE_IQMsituacao: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMdisposicao: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMapro_gerente: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMdata_apro: TDateField;
    FAT_CD_R_NFE_ITE_IQMexec_por: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMdata_final: TDateField;
    FAT_CD_R_NFE_ITE_IQMplano_acao_forn: TBooleanField;
    FAT_CD_R_NFE_ITE_IQMcomentarios: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMdta_inspecao: TDateField;
    FAT_CD_R_NFE_ITE_IQMespecificado: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMencontrado: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMnumero_laudo: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMdata_certif_qualidade: TDateField;
    FAT_CD_R_NFE_ITE_IQMid_cor: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMid_tamanho: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMdesc_fun: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMid_und_compra: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMdesc_ite: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMdta_documento: TDateField;
    FAT_CD_R_NFE_ITE_IQMqtde: TFloatField;
    FAT_CD_R_NFE_ITE_IQMdesc_und: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMnumero: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMid_emitente: TIntegerField;
    FAT_CD_R_NFE_ITE_IQMdescricao: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMfantasia: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMnome_apro_gerente: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMnome_exec: TWideStringField;
    FAT_CD_R_NFE_ITE_IQMdesc_cnd_comer: TWideMemoField;
    FAT_CD_R_NFE_ITE_IQMdesc_qtd: TWideMemoField;
    FAT_CD_R_NFE_ITE_IQMdesc_qual: TWideMemoField;
    FAT_CD_R_NFE_ITE_IQMdesc_pred_prod: TWideMemoField;
    FAT_CD_R_NFE_ITE_IQMdesc_cert_qual: TWideMemoField;
    FAT_CD_R_NFE_ITE_IQMdesc_resul: TWideMemoField;
    procedure btnImprimirClick(Sender: TObject);
    procedure txtFilialExit(Sender: TObject);
    procedure lboxFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure btnRemoverRegistroNotaFiscalClick(Sender: TObject);
    procedure btnRemoverRegistroProdutoClick(Sender: TObject);
    procedure lboxNotaFiscalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtFilialButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos: Boolean;

    var
      xOpcoes, xCondFornecedor,xCondNotaFiscal, xCondProduto: string;
  public
    { Public declarations }
  end;

var
  FAT_FM_R_NFE_ITE_IQM: TFAT_FM_R_NFE_ITE_IQM;

implementation

{$R *.dfm}

uses PSQ_UN_X_PAR, uDmGeral, PSQ_UN_X_FOR, CAD_UN_C_PAR, PSQ_UN_X_ITE,
  PSQ_UN_X_NFE;

procedure TFAT_FM_R_NFE_ITE_IQM.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.btnRemoverRegistroFornecedorClick(
  Sender: TObject);
begin
  inherited;
  if lboxFornecedor.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedor.DeleteSelected;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.lboxFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedor,6,PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString) then
                begin
                  lboxFornecedor.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                  ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.lboxNotaFiscalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_NFE := TPSQ_FM_X_NFE.Create(Self);
        PSQ_FM_X_NFE.ShowModal;
        if not PSQ_FM_X_NFE.BUS_CD_M_NFE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxNotaFiscal,6,PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString) then
                begin
                  lboxNotaFiscal.Items.Add(StrZero(PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsFloat,6,0) +
                                  ' - ' + PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString);
                end;
           end;
         PSQ_FM_X_NFE.Free;
     end;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.lboxProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxProduto,6,PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString) then
                begin
                  lboxProduto.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0) +
                                  ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.PreencherCondicao;
var
  i: integer;
  Cond: String;
begin
  // Fornecedores --------------------------------------------------------------
  xCondFornecedor := '';
  if lboxFornecedor.Count > 0 then
     begin
       for i := 0 to lboxFornecedor.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lboxFornecedor.Items[i],1,4))+'''';
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lboxFornecedor.Items[i],1,4))+'''';
               end;
          end;
     end;

  // Nota Fiscal ---------------------------------------------------------------
  xCondNotaFiscal := '';
  if lboxFornecedor.Count > 0 then
     begin
       for i := 0 to lboxNotaFiscal.Count - 1 do
          begin
            if xCondNotaFiscal <> '' then
               begin
                 xCondNotaFiscal :=
                 xCondNotaFiscal + ',' +''''+trim(copy(lboxNotaFiscal.Items[i],1,6))+'''';
               end;
            if xCondNotaFiscal = '' then
               begin
                 xCondNotaFiscal :=
                 xCondNotaFiscal + ',' +''''+trim(copy(lboxNotaFiscal.Items[i],1,6))+'''';
               end;
          end;
     end;

  // Produto -------------------------------------------------------------------
  xCondProduto := '';
  if lboxFornecedor.Count > 0 then
     begin
       for i := 0 to lboxProduto.Count - 1 do
          begin
            if xCondProduto <> '' then
               begin
                 xCondProduto :=
                 xCondProduto + ',' +''''+trim(copy(lboxProduto.Items[i],1,6))+'''';
               end;
            if xCondProduto = '' then
               begin
                 xCondProduto :=
                 xCondProduto + ',' +''''+trim(copy(lboxProduto.Items[i],1,6))+'''';
               end;
          end;
     end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação......: ' + cbbOrdenacao.Text + #13+#10;
end;

function TFAT_FM_R_NFE_ITE_IQM.TestarCampos: Boolean;
begin
  result := True;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido.');
      result := False;
    end;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.btnRemoverRegistroNotaFiscalClick(Sender: TObject);
begin
  inherited;
  if lboxNotaFiscal.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxNotaFiscal.DeleteSelected;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.btnRemoverRegistroProdutoClick(Sender: TObject);
begin
  inherited;
  if lboxProduto.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxProduto.DeleteSelected;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.ExibirRel;
var
  rDtaIni, rDtaFin, rOrdenacao, rEmpresa, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   // Empresa
   rEmpresa := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

   // Ordenação
   rOrdenacao := copy(cbbOrdenacao.Text,1,1);

   PreencherCondicao;

   //parametros
   // 0 - data inicial
   // 1 - data final
   // 2 - empresa
   // 3 - codigo emitente
   // 4 - codigo do item
   // 5 - id_fiscal
   // 6 - 0 - nfe.dta_documento, iqm.id_item, iqm.id_sequencia,
   //     1 - iqm.id_item, iqm.id_sequencia, nfe.dta_documento, nfe.numero

   FAT_CD_R_NFE_ITE_IQM.Active:= False;
   FAT_CD_R_NFE_ITE_IQM.Close;
   FAT_CD_R_NFE_ITE_IQM.Data :=
           FAT_CD_R_NFE_ITE_IQM.DataRequest(
                VarArrayOf([rDtaIni, rDtaFin, rEmpresa, xCondFornecedor, xCondProduto, xCondNotaFiscal, rOrdenacao]));

   if not FAT_CD_R_NFE_ITE_IQM.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Controle de Recebimento e Inspeção de Químicos - Simples' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_R_NFE_ITE_IQM_SIM.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            FAT_FR_R_NFE_ITE_IQM_SIM.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FAT_FR_R_NFE_ITE_IQM_SIM.PrepareReport();
            FAT_FR_R_NFE_ITE_IQM_SIM.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Controle de Recebimento e Inspeção de Químicos - Por Fornecedor' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_R_NFE_ITE_IQM_FOR.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             FAT_FR_R_NFE_ITE_IQM_FOR.Variables['Opcoes'] := QuotedStr(xOpcoes);
             FAT_FR_R_NFE_ITE_IQM_FOR.PrepareReport();
             FAT_FR_R_NFE_ITE_IQM_FOR.ShowReport();
           end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TFAT_FM_R_NFE_ITE_IQM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_NFE_ITE_IQM);
end;

procedure TFAT_FM_R_NFE_ITE_IQM.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.txtFilialButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_PAR := TPSQ_FM_X_PAR.Create(Self);
   PSQ_FM_X_PAR.ShowModal;
      if not PSQ_FM_X_PAR.BUS_CD_C_PAR.IsEmpty then
         begin
           txtFilialDescricao.Caption := PSQ_FM_X_PAR.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;
           txtFilial.Text := PSQ_FM_X_PAR.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
         end;
   PSQ_FM_X_PAR.Free;
end;

procedure TFAT_FM_R_NFE_ITE_IQM.txtFilialExit(Sender: TObject);
begin
  inherited;
  txtFilialDescricao.Caption := '';

  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1, txtFilial.Text]));

  txtFilialDescricao.Caption := dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;
  txtFilial.Text := dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
end;

end.
