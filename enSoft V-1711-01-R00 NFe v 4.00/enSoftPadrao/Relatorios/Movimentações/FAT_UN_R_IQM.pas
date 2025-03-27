unit FAT_UN_R_IQM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, JvToolEdit, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvDBControls, enFunc,
  Vcl.ComCtrls, Data.DB, Datasnap.DBClient, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TFAT_FM_R_IQM = class(TPAD_FM_X_REL)
    lblFilial: TLabel;
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
    tsNumeroNota: TTabSheet;
    Label7: TLabel;
    lboxNumeroNota: TListBox;
    tsProduto: TTabSheet;
    Label3: TLabel;
    lboxProduto: TListBox;
    FAT_FR_R_IQM_SIM: TfrxReport;
    FAT_XL_R_IQM: TfrxXLSExport;
    FAT_PD_R_IQM: TfrxPDFExport;
    FAT_DB_R_IQM_ITE: TfrxDBDataset;
    pmExcluirFornecedor: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    pmExcluirNotaFiscal: TPopupMenu;
    btnRemoverRegistroNotaFiscal: TMenuItem;
    pmExcluirProduto: TPopupMenu;
    btnRemoverRegistroProduto: TMenuItem;
    FAT_FR_R_IQM_FOR: TfrxReport;
    txtFilial: TJvComboEdit;
    FAT_CD_R_IQM_ITE: TClientDataSet;
    FAT_CD_R_IQM_ITEid_sequencia: TIntegerField;
    FAT_CD_R_IQM_ITEid_item: TIntegerField;
    FAT_CD_R_IQM_ITEnro_lote_fabric_produto: TWideStringField;
    FAT_CD_R_IQM_ITEnum_lote: TWideStringField;
    FAT_CD_R_IQM_ITEcert_data: TDateField;
    FAT_CD_R_IQM_ITEcert_numero: TWideStringField;
    FAT_CD_R_IQM_ITEid_responsavel: TIntegerField;
    FAT_CD_R_IQM_ITEcnd_comercial: TIntegerField;
    FAT_CD_R_IQM_ITEqtd_pc_nf: TIntegerField;
    FAT_CD_R_IQM_ITEpres_produto: TIntegerField;
    FAT_CD_R_IQM_ITEcert_qualidade: TIntegerField;
    FAT_CD_R_IQM_ITEresultado: TIntegerField;
    FAT_CD_R_IQM_ITEdemerito: TIntegerField;
    FAT_CD_R_IQM_ITEorigem: TWideStringField;
    FAT_CD_R_IQM_ITEqtd_nc: TFloatField;
    FAT_CD_R_IQM_ITEper_lot_rec: TFloatField;
    FAT_CD_R_IQM_ITEsituacao: TWideStringField;
    FAT_CD_R_IQM_ITEdisposicao: TIntegerField;
    FAT_CD_R_IQM_ITEapro_gerente: TIntegerField;
    FAT_CD_R_IQM_ITEapro_data: TDateField;
    FAT_CD_R_IQM_ITEexec_por: TIntegerField;
    FAT_CD_R_IQM_ITEdta_finalisado: TDateField;
    FAT_CD_R_IQM_ITEplano_acao_forn: TBooleanField;
    FAT_CD_R_IQM_ITEcomentarios: TWideStringField;
    FAT_CD_R_IQM_ITEqualidade: TIntegerField;
    FAT_CD_R_IQM_ITEdta_inspecao: TDateField;
    FAT_CD_R_IQM_ITEespecificado: TWideStringField;
    FAT_CD_R_IQM_ITEencontrado: TWideStringField;
    FAT_CD_R_IQM_ITEnumero_laudo: TWideStringField;
    FAT_CD_R_IQM_ITEdata_certif_qualidade: TDateField;
    FAT_CD_R_IQM_ITEid_cor: TIntegerField;
    FAT_CD_R_IQM_ITEid_tamanho: TIntegerField;
    FAT_CD_R_IQM_ITEcod_lme: TWideStringField;
    FAT_CD_R_IQM_ITErev_lme: TWideStringField;
    FAT_CD_R_IQM_ITEid_iqm: TIntegerField;
    FAT_CD_R_IQM_ITEqtde: TFloatField;
    FAT_CD_R_IQM_ITEdesc_fun: TWideStringField;
    FAT_CD_R_IQM_ITEid_und_compra: TWideStringField;
    FAT_CD_R_IQM_ITEdesc_ite: TWideStringField;
    FAT_CD_R_IQM_ITEdesc_und: TWideStringField;
    FAT_CD_R_IQM_ITEdescricao: TWideStringField;
    FAT_CD_R_IQM_ITEfantasia: TWideStringField;
    FAT_CD_R_IQM_ITEnome_apro_gerente: TWideStringField;
    FAT_CD_R_IQM_ITEnome_exec: TWideStringField;
    FAT_CD_R_IQM_ITEdta_recebimento: TDateField;
    FAT_CD_R_IQM_ITEdta_emissao_nf: TDateField;
    FAT_CD_R_IQM_ITEnumero_nf: TIntegerField;
    FAT_CD_R_IQM_ITEdesc_cnd_comer: TWideMemoField;
    FAT_CD_R_IQM_ITEdesc_qtd: TWideMemoField;
    FAT_CD_R_IQM_ITEdesc_qual: TWideMemoField;
    FAT_CD_R_IQM_ITEdesc_pred_prod: TWideMemoField;
    FAT_CD_R_IQM_ITEdesc_cert_qual: TWideMemoField;
    FAT_CD_R_IQM_ITEdesc_resul: TWideMemoField;
    FAT_CD_R_IQM_ITEid_emitente: TIntegerField;
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure btnRemoverRegistroNotaFiscalClick(Sender: TObject);
    procedure btnRemoverRegistroProdutoClick(Sender: TObject);
    procedure lboxNumeroNotaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtAlmoxarifadoButtonClick(Sender: TObject);
    procedure txtAlmoxarifadoExit(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos: Boolean;

    var
      xOpcoes, xCondFornecedor, xCondNotaFiscal, xCondEmitente, xCondProduto: string;
  public
    { Public declarations }
  end;

var
  FAT_FM_R_IQM: TFAT_FM_R_IQM;

implementation

{$R *.dfm}

uses PSQ_UN_X_PAR, uDmGeral, PSQ_UN_X_FOR, CAD_UN_C_PAR, PSQ_UN_X_ITE,
  PSQ_UN_X_NFE;

procedure TFAT_FM_R_IQM.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TFAT_FM_R_IQM.btnRemoverRegistroFornecedorClick(
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

procedure TFAT_FM_R_IQM.lboxFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedor,7,PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString) then
                begin
                  lboxFornecedor.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,7,0) +
                                  ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TFAT_FM_R_IQM.lboxNumeroNotaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  fornecedor: String;
begin
  inherited;
  fornecedor := '';
  if key = vk_f3 then
     begin
        PSQ_FM_X_NFE := TPSQ_FM_X_NFE.Create(Self);
        PSQ_FM_X_NFE.ShowModal;
        if not PSQ_FM_X_NFE.BUS_CD_M_NFE.IsEmpty then
           begin
            fornecedor :=   StrZero(PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('ID_EMITENTE').AsFloat,7,0) + ' - ';

             if not dmGeral.ExisteRegNoListBox(lboxNumeroNota,6,PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString) then
                begin
                  lboxNumeroNota.Items.Add(fornecedor + StrZero(PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsFloat,6,0) +
                                  ' - ' + PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString);
                end;
           end;
         PSQ_FM_X_NFE.Free;
     end;
end;

procedure TFAT_FM_R_IQM.lboxProdutoKeyDown(Sender: TObject;
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

procedure TFAT_FM_R_IQM.PreencherCondicao;
var
  i: integer;
begin
  // Fornecedores --------------------------------------------------------------
  xCondFornecedor := '';
  // Seleção de fornecedores
  if lboxFornecedor.Count > 0 then
     begin
       for i := 0 to lboxFornecedor.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+copy(lboxFornecedor.Items[i],1,7)+'''';
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+ copy(lboxFornecedor.Items[i],1,7)+'''';
               end;
          end;
     end;

  // Número da Nota ------------------------------------------------------------
  xCondNotaFiscal := '';
  xCondEmitente   := '';

  if lboxNumeroNota.Count > 0 then
     begin
       for i := 0 to lboxNumeroNota.Count - 1 do
          begin
            if xCondNotaFiscal <> '' then
               begin
                 xCondEmitente :=
                 xCondEmitente  + ',' +''''+copy(lboxNumeroNota.Items[i],1,7)+'''';

                 xCondNotaFiscal :=
                 xCondNotaFiscal + ',' +''''+copy(lboxNumeroNota.Items[i],11,6)+'''';
               end;

            if xCondNotaFiscal = '' then
               begin
                 xCondEmitente :=
                 xCondEmitente +''''+ copy(lboxNumeroNota.Items[i],1,7)+'''';

                 xCondNotaFiscal :=
                 xCondNotaFiscal +''''+copy(lboxNumeroNota.Items[i],11,6)+'''';
               end;
          end;
     end;

  // Produto -------------------------------------------------------------------
  xCondProduto := '';
  if lboxProduto.Count > 0 then
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
                 xCondProduto +''''+trim(copy(lboxProduto.Items[i],1,6))+'''';
               end;
          end;
     end;

  // Opções --------------------------------------------------------------------
  xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
  xOpcoes := xOpcoes + 'Período........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
  xOpcoes := xOpcoes + 'Ordenação......: ' + cbbOrdenacao.Text + #13+#10;
  xOpcoes := xOpcoes + 'Filial.........: ' + txtFilialDescricao.Caption + #13+#10;
end;

function TFAT_FM_R_IQM.TestarCampos: Boolean;
begin
  result := True;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido.');
      result := False;
    end;

  if deInicial.Date > deFinal.Date then
    begin
      ShowMessage('A data inicial deve ser menor que a data final.');
      deInicial.Text := '';
      result := False;
    end;
end;

procedure TFAT_FM_R_IQM.btnRemoverRegistroNotaFiscalClick(Sender: TObject);
begin
  inherited;
  if lboxNumeroNota.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxNumeroNota.DeleteSelected;
end;

procedure TFAT_FM_R_IQM.btnRemoverRegistroProdutoClick(Sender: TObject);
begin
  inherited;
  if lboxProduto.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxProduto.DeleteSelected;
end;

procedure TFAT_FM_R_IQM.ExibirRel;
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
   // 5 - numero da nota
   // 6 - emitente
   // 7 - 0 - nfe.dta_documento, iqm.id_item, iqm.id_sequencia,
   //     1 - iqm.id_item, iqm.id_sequencia, nfe.dta_documento, nfe.numero

   FAT_CD_R_IQM_ITE.Active := False;
   FAT_CD_R_IQM_ITE.Close;
   FAT_CD_R_IQM_ITE.Data :=
   FAT_CD_R_IQM_ITE.DataRequest(
                VarArrayOf([rDtaIni, rDtaFin, rEmpresa, xCondFornecedor,
                            xCondProduto, xCondNotaFiscal, xCondEmitente, rOrdenacao]));

   if not FAT_CD_R_IQM_ITE.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Controle de Recebimento e Inspeção de Químicos - Simples' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_R_IQM_SIM.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_IQM_SIM.Name,xCodLme,xRevLme,nil);
            FAT_FR_R_IQM_SIM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            FAT_FR_R_IQM_SIM.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FAT_FR_R_IQM_SIM.PrepareReport();
            FAT_FR_R_IQM_SIM.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Controle de Recebimento e Inspeção de Químicos - Por Fornecedor' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_R_IQM_FOR.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_IQM_FOR.Name,xCodLme,xRevLme,nil);
             FAT_FR_R_IQM_FOR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

             FAT_FR_R_IQM_FOR.Variables['Opcoes'] := QuotedStr(xOpcoes);
             FAT_FR_R_IQM_FOR.PrepareReport();
             FAT_FR_R_IQM_FOR.ShowReport();
           end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TFAT_FM_R_IQM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_IQM);
end;

procedure TFAT_FM_R_IQM.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TFAT_FM_R_IQM.txtAlmoxarifadoButtonClick(Sender: TObject);
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

procedure TFAT_FM_R_IQM.txtAlmoxarifadoExit(Sender: TObject);
begin
  inherited;

  txtFilialDescricao.Caption := '';

  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1, txtFilial.Text]));



  txtFilial.Text := dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
  txtFilialDescricao.Caption := dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;

end;

end.
