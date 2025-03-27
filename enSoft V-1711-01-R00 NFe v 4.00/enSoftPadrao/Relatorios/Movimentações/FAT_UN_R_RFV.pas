unit FAT_UN_R_RFV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Data.DB,
  Datasnap.DBClient, Vcl.ComCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Menus,
  frxExportXLS, frxClass, frxExportPDF, frxDBSet;

type
  TFAT_FM_R_RFV = class(TPAD_FM_X_REL)
    FAT_CD_R_PED: TClientDataSet;
    lblPeriodo: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    lblAte: TLabel;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsVendedor: TTabSheet;
    lboxVendSel: TListBox;
    Label5: TLabel;
    cbbPeriodo: TComboBox;
    lblOrde: TLabel;
    cbbOrde: TComboBox;
    tsItem: TTabSheet;
    tsCndPagamentos: TTabSheet;
    TabSheet3: TTabSheet;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmExcluirVend: TPopupMenu;
    btnExcluirVend: TMenuItem;
    pmSelCondicaoPag: TPopupMenu;
    btnSelFormaPag: TMenuItem;
    pmRemoverCondicaoPag: TPopupMenu;
    btnRemoverFormaPag: TMenuItem;
    pmExcluirItem: TPopupMenu;
    btnExcluirItem: TMenuItem;
    pmRemoverSituacao: TPopupMenu;
    MenuItem2: TMenuItem;
    pmSelSituacao: TPopupMenu;
    MenuItem1: TMenuItem;
    Label2: TLabel;
    lboxItemSel: TListBox;
    Label6: TLabel;
    lboxCondicaoPagamentoDisponivel: TListBox;
    lboxCondicaoPagamentoSelecionada: TListBox;
    Label7: TLabel;
    chkFaturado: TCheckBox;
    Label12: TLabel;
    lboxSituacaoDisponivel: TListBox;
    Label13: TLabel;
    lboxSituacaoSelecionada: TListBox;
    lbl_TextoF3Vend: TLabel;
    FAT_DB_R_PED: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    FAT_DB_R_PED_ITE: TfrxDBDataset;
    FAT_DB_R_PED_TIT: TfrxDBDataset;
    FAT_CD_R_PED_ITE: TClientDataSet;
    FAT_CD_R_PED_TIT: TClientDataSet;
    FAT_CD_R_PEDid_pedido: TIntegerField;
    FAT_CD_R_PEDid_empresa: TIntegerField;
    FAT_CD_R_PEDdta_pedido: TDateField;
    FAT_CD_R_PEDid_tipo_mov_estoque: TIntegerField;
    FAT_CD_R_PEDid_vendedor: TIntegerField;
    FAT_CD_R_PEDobs: TWideStringField;
    FAT_CD_R_PEDvlr_bruto: TFMTBCDField;
    FAT_CD_R_PEDvlr_desconto: TFMTBCDField;
    FAT_CD_R_PEDper_desconto: TFloatField;
    FAT_CD_R_PEDvlr_liquido: TFMTBCDField;
    FAT_CD_R_PEDhor_pedido: TSQLTimeStampField;
    FAT_CD_R_PEDid_condicao_pag: TIntegerField;
    FAT_CD_R_PEDpcp_obs: TWideStringField;
    FAT_CD_R_PEDpcp_id_opr: TIntegerField;
    FAT_CD_R_PEDsituacao: TIntegerField;
    FAT_CD_R_PEDsituacao_aprovacao: TIntegerField;
    FAT_CD_R_PEDid_atendente: TIntegerField;
    FAT_CD_R_PEDid_responsavel: TIntegerField;
    FAT_CD_R_PEDid_cliente: TIntegerField;
    FAT_CD_R_PEDtipo_restricao: TWideStringField;
    FAT_CD_R_PEDid_almoxarifado: TIntegerField;
    FAT_CD_R_PEDjustificativa: TWideStringField;
    FAT_CD_R_PEDid_usuario_lib: TIntegerField;
    FAT_CD_R_PEDcod_lme: TWideStringField;
    FAT_CD_R_PEDrev_lme: TWideStringField;
    FAT_CD_R_PEDorigem: TIntegerField;
    FAT_CD_R_PEDdispositivo: TWideStringField;
    FAT_CD_R_PEDgps_latitude: TFloatField;
    FAT_CD_R_PEDgps_longitude: TFloatField;
    FAT_CD_R_PEDcubagem: TFloatField;
    FAT_CD_R_PEDid_orcamento: TIntegerField;
    FAT_CD_R_PEDenvia_carga: TBooleanField;
    FAT_CD_R_PEDdta_prev_entrega: TDateField;
    FAT_CD_R_PEDid_abertura: TIntegerField;
    FAT_CD_R_PEDint_nomecli: TWideStringField;
    FAT_CD_R_PEDint_nometme: TWideStringField;
    FAT_CD_R_PEDint_nomefun: TWideStringField;
    FAT_CD_R_PEDint_nomecpg: TWideStringField;
    FAT_CD_R_PEDint_nomeate: TWideStringField;
    FAT_CD_R_PEDint_nomeres: TWideStringField;
    FAT_CD_R_PEDint_nomecid: TWideStringField;
    FAT_CD_R_PEDint_nomeest: TWideStringField;
    FAT_CD_R_PEDint_cpfcnpj: TWideStringField;
    FAT_CD_R_PEDint_pessoacli: TIntegerField;
    FAT_CD_R_PEDint_id_perfil: TIntegerField;
    FAT_CD_R_PEDint_sitaprov: TWideStringField;
    FAT_CD_R_PEDint_sitped: TWideStringField;
    FAT_CD_R_PEDint_ie_rg_cli: TWideStringField;
    FAT_CD_R_PEDint_empfantasia: TWideStringField;
    FAT_CD_R_PEDmod_frete: TIntegerField;
    FAT_CD_R_PEDint_modfrete: TWideStringField;
    FAT_CD_R_PEDvlr_frete: TFMTBCDField;
    FAT_CD_R_PEDdta_emissao_nfe: TDateField;
    FAT_CD_R_PEDordem_fat: TIntegerField;
    FAT_CD_R_PEDint_sitped2: TWideStringField;
    FAT_CD_R_PEDint_desc_cond_pag: TWideMemoField;
    FAT_CD_R_PEDFAT_SQ_R_PED_TIT: TDataSetField;
    FAT_CD_R_PEDFAT_SQ_R_PED_ITE: TDataSetField;
    FAT_CD_R_PED_ITEid_pedido: TIntegerField;
    FAT_CD_R_PED_ITEid_sequencia: TIntegerField;
    FAT_CD_R_PED_ITEid_item: TIntegerField;
    FAT_CD_R_PED_ITEqtde: TFloatField;
    FAT_CD_R_PED_ITEvlr_unitario: TFMTBCDField;
    FAT_CD_R_PED_ITEvlr_bruto: TFMTBCDField;
    FAT_CD_R_PED_ITEper_desconto: TFloatField;
    FAT_CD_R_PED_ITEvlr_desconto: TFMTBCDField;
    FAT_CD_R_PED_ITEvlr_liquido: TFMTBCDField;
    FAT_CD_R_PED_ITEid_cor: TIntegerField;
    FAT_CD_R_PED_ITEid_tamanho: TIntegerField;
    FAT_CD_R_PED_ITEid_busca_item: TWideStringField;
    FAT_CD_R_PED_ITEvlr_unitario_orig: TFMTBCDField;
    FAT_CD_R_PED_ITEint_nomeite: TWideStringField;
    FAT_CD_R_PED_ITEint_nomecor: TWideStringField;
    FAT_CD_R_PED_ITEint_id_und_venda: TWideStringField;
    FAT_CD_R_PED_ITEint_tipo_item: TWideStringField;
    FAT_CD_R_PED_ITEint_nometam: TWideStringField;
    FAT_CD_R_PED_TITid_pedido: TIntegerField;
    FAT_CD_R_PED_TITid_titulo: TIntegerField;
    FAT_CD_R_PED_TITdias: TIntegerField;
    FAT_CD_R_PED_TITdta_vencimento: TDateField;
    FAT_CD_R_PED_TITvlr_titulo: TFMTBCDField;
    FAT_CD_R_PED_TITche_banco: TWideStringField;
    FAT_CD_R_PED_TITche_agencia: TWideStringField;
    FAT_CD_R_PED_TITche_conta: TIntegerField;
    FAT_CD_R_PED_TITche_numero: TIntegerField;
    FAT_CD_R_PED_TITche_emitente: TWideStringField;
    FAT_CD_R_PED_TITid_forma_pag: TIntegerField;
    FAT_CD_R_PED_TITbol_nosso_numero: TIntegerField;
    FAT_CD_R_PED_TITid_maquineta: TIntegerField;
    FAT_CD_R_PED_TITint_nomefpg: TWideStringField;
    FAT_FR_R_PED_SIT: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxVendSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxItemSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxCondicaoPagamentoDisponivelDblClick(Sender: TObject);
    procedure lboxCondicaoPagamentoSelecionadaDblClick(Sender: TObject);
    procedure chkFaturadoClick(Sender: TObject);
    procedure lboxSituacaoDisponivelDblClick(Sender: TObject);
    procedure lboxSituacaoSelecionadaDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    function TestarCampos:Boolean;
    procedure ExibirRel;
    procedure PreencherCondicao;
  public
    { Public declarations }
    var
      xvnd_interno_externo: integer;
      xCondEmpresa,xCondVend,xCondCondicaoPagamento,xCondItem,xCondSituacao,xOpcoes,
      xSituacao, xUsaSGQ:String;
      xSituacaoDigitada, xSituacaoEmabertoApv: Boolean;
  end;

var
  FAT_FM_R_RFV: TFAT_FM_R_RFV;

implementation

{$R *.dfm}

uses uDmGeral,enFunc,enConstantes, PSQ_UN_X_FUN, PSQ_UN_X_ITE;

procedure TFAT_FM_R_RFV.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TFAT_FM_R_RFV.chkFaturadoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  if chkFaturado.Checked then
     begin
       cbbPeriodo.ItemIndex := 1;

       if lboxSituacaoSelecionada.Items.Count > 0 then
          begin
            for i := 0 to lboxSituacaoSelecionada.Items.Count - 1 do
                begin
                  lboxSituacaoDisponivel.Items.Add(lboxSituacaoSelecionada.Items[i]);
                  lboxSituacaoSelecionada.Items.Delete(lboxSituacaoSelecionada.ItemIndex);
                end;
            lboxSituacaoSelecionada.Items.Clear;
          end;
       if lboxSituacaoSelecionada.Items.Count > 0 then
           begin
             for i := 0 to lboxSituacaoSelecionada.Items.Count - 1 do
                 begin
                   lboxSituacaoDisponivel.Items.Add(lboxSituacaoSelecionada.Items[i]);
                   lboxSituacaoSelecionada.Items.Delete(lboxSituacaoSelecionada.ItemIndex);
                 end;
             lboxSituacaoSelecionada.Items.Clear;
           end;
     end
  else
     begin
       cbbPeriodo.ItemIndex := 0;
     end;

end;


procedure TFAT_FM_R_RFV.ExibirRel;
var
  PathImg:string;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
     Showmessage('Nenhum relatório foi selecionado.');
     exit;
    end;

  PreencherCondicao;

  FAT_CD_R_PED.Close;
  //FAT_CD_R_PED_ITE_NFE.Close;


 { if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Item') then
    begin
      FAT_CD_R_PED_ITE_NFE.Data :=
      FAT_CD_R_PED_ITE_NFE.DataRequest(
         VarArrayOf([lbxRelatorios.ItemIndex,
         deInicial.Text,
         deFinal.Text,
         cbbOrde.ItemIndex,
         xCondSituacao,
         xCondEmpresa,
         xCondVend,
         cbbPeriodo.ItemIndex,
         xCondItem,
         xCondCondicaoPagamento,
         xSituacaoDigitada,xSituacaoEmabertoApv,
         xUsaSGQ]));
    end
  else
    begin  }
      FAT_CD_R_PED.Data :=
      FAT_CD_R_PED.DataRequest(
         VarArrayOf([lbxRelatorios.ItemIndex,
         deInicial.Text,
         deFinal.Text,
         cbbOrde.ItemIndex,
         xCondSituacao,
         xCondEmpresa,
         xCondVend,
         cbbPeriodo.ItemIndex,
         xCondCondicaoPagamento,
         xSituacaoDigitada,
         xSituacaoEmabertoApv,
         xUsaSGQ]));
   // end;
  //if (not FAT_CD_R_PED.IsEmpty) OR (not FAT_CD_R_PED_ITE_NFE.IsEmpty) then
  if (not FAT_CD_R_PED.IsEmpty) then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      {if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Geral') then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FAT_FR_R_PED_GER.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_PED_GER.Name,xCodLme,xRevLme,nil);


          TfrxHeader(FAT_FR_R_PED_GER.FindComponent('Header2')).Visible := chbExibirItens.Checked;
          TfrxDetailData(FAT_FR_R_PED_GER.FindComponent('DetailData1')).Visible := chbExibirItens.Checked;
          TfrxFooter(FAT_FR_R_PED_GER.FindComponent('Footer2')).Visible := chbExibirItens.Checked;

          TfrxHeader(FAT_FR_R_PED_GER.FindComponent('Header3')).Visible := chbExibirTit.Checked;
          TfrxDetailData(FAT_FR_R_PED_GER.FindComponent('DetailData2')).Visible := chbExibirTit.Checked;
          TfrxFooter(FAT_FR_R_PED_GER.FindComponent('Footer3')).Visible := chbExibirTit.Checked;

          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
            FAT_FR_R_PED_GER.Variables['ativa_cor'] := true
          else
            FAT_FR_R_PED_GER.Variables['ativa_cor'] := false;

          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
            FAT_FR_R_PED_GER.Variables['ativa_tamanho'] := true
          else
            FAT_FR_R_PED_GER.Variables['ativa_tamanho'] := false;


          FAT_FR_R_PED_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FAT_FR_R_PED_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FAT_FR_R_PED_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);

          FAT_FR_R_PED_GER.Variables['ft_lb_vendedor'] := QuotedStr('Vendedor');
          FAT_FR_R_PED_GER.Variables['ft_ordem_fat'] := QuotedStr('''');
          if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
             begin
               FAT_FR_R_PED_GER.Variables['ft_lb_vendedor'] := QuotedStr('Representante');
               FAT_FR_R_PED_GER.Variables['ft_ordem_fat'] := QuotedStr('Ordem de Faturamento');
             end;
          FAT_FR_R_PED_GER.PrepareReport();
          FAT_FR_R_PED_GER.ShowReport();
        end;   }

      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Por Situação') then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FAT_FR_R_PED_SIT.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_PED_SIT.Name,xCodLme,xRevLme,nil);


          {TfrxHeader(FAT_FR_R_PED_SIT.FindComponent('Header2')).Visible := chbExibirItens.Checked;
          TfrxDetailData(FAT_FR_R_PED_SIT.FindComponent('DetailData1')).Visible := chbExibirItens.Checked;
          TfrxFooter(FAT_FR_R_PED_SIT.FindComponent('Footer2')).Visible := chbExibirItens.Checked;

          TfrxHeader(FAT_FR_R_PED_SIT.FindComponent('Header3')).Visible := chbExibirTit.Checked;
          TfrxDetailData(FAT_FR_R_PED_SIT.FindComponent('DetailData2')).Visible := chbExibirTit.Checked;
          TfrxFooter(FAT_FR_R_PED_SIT.FindComponent('Footer3')).Visible := chbExibirTit.Checked;}

         { if xvnd_interno_externo = 1 then // Externo
             begin
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo2')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo13')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo49')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo50')).Visible := false;

               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('FAT_DB_R_PEDvlr_bruto')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('FAT_DB_R_PEDvlr_desconto')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('FAT_DB_R_PEDvlr_frete')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('FAT_DB_R_PEDvlr_liquido')).Visible := false;

               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo32')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo55')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo56')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo42')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo45')).Visible := false;

               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo46')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo51')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo52')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo53')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo54')).Visible := false;

               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo47')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo59')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo58')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo57')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo48')).Visible := false;
            end; }

          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
            FAT_FR_R_PED_SIT.Variables['ativa_cor'] := true
          else
            FAT_FR_R_PED_SIT.Variables['ativa_cor'] := false;

          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
            FAT_FR_R_PED_SIT.Variables['ativa_tamanho'] := true
          else
            FAT_FR_R_PED_SIT.Variables['ativa_tamanho'] := false;


          FAT_FR_R_PED_SIT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FAT_FR_R_PED_SIT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FAT_FR_R_PED_SIT.Variables['Opcoes'] := QuotedStr(xOpcoes);
          FAT_FR_R_PED_SIT.Variables['ft_lb_vendedor'] := QuotedStr('Vendedor');
          FAT_FR_R_PED_SIT.Variables['ft_ordem_fat'] := QuotedStr('''');
          if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
             begin
               FAT_FR_R_PED_SIT.Variables['ft_lb_vendedor'] := QuotedStr('Representante');
               FAT_FR_R_PED_SIT.Variables['ft_ordem_fat'] := QuotedStr('Ordem de Faturamento');
             end;
          FAT_FR_R_PED_SIT.PrepareReport();
          FAT_FR_R_PED_SIT.ShowReport();
        end;

      {if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Item') then
        begin



          if chbExibirPed.Checked=true then
            begin
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_R_PED_ITE_PDN.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
               dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_PED_ITE_PDN.Name,xCodLme,xRevLme,nil);


              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
               FAT_FR_R_PED_ITE_PDN.Variables['ativa_cor'] := true
              else
               FAT_FR_R_PED_ITE_PDN.Variables['ativa_cor'] := false;

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
               FAT_FR_R_PED_ITE_PDN.Variables['ativa_tamanho'] := true
              else
               FAT_FR_R_PED_ITE_PDN.Variables['ativa_tamanho'] := false;

              FAT_FR_R_PED_ITE_PDN.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              FAT_FR_R_PED_ITE_PDN.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              FAT_FR_R_PED_ITE_PDN.Variables['Opcoes'] := QuotedStr(xOpcoes);
              FAT_FR_R_PED_ITE_PDN.Variables['ft_lb_vendedor'] := QuotedStr('Vendedor');
              if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                 begin
                   FAT_FR_R_PED_ITE_PDN.Variables['ft_lb_vendedor'] := QuotedStr('Representante');
                 end;
              FAT_FR_R_PED_ITE_PDN.PrepareReport();
              FAT_FR_R_PED_ITE_PDN.ShowReport();
            end
          else
            begin
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_R_PED_ITE.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
               dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_PED_ITE.Name,xCodLme,xRevLme,nil);

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
               FAT_FR_R_PED_ITE.Variables['ativa_cor'] := true
              else
               FAT_FR_R_PED_ITE.Variables['ativa_cor'] := false;

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
               FAT_FR_R_PED_ITE.Variables['ativa_tamanho'] := true
              else
               FAT_FR_R_PED_ITE.Variables['ativa_tamanho'] := false;


              FAT_FR_R_PED_ITE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              FAT_FR_R_PED_ITE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              FAT_FR_R_PED_ITE.Variables['Opcoes'] := QuotedStr(xOpcoes);
              FAT_FR_R_PED_ITE.Variables['ft_lb_vendedor'] := QuotedStr('Vendedor');
              if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                 begin
                   FAT_FR_R_PED_ITE.Variables['ft_lb_vendedor'] := QuotedStr('Representante');
                 end;
              FAT_FR_R_PED_ITE.PrepareReport();
              FAT_FR_R_PED_ITE.ShowReport();
            end;
        end;    }

        FAT_CD_R_PED.active := false;

    end
  else
    begin
      ShowMessage('Nenhum registro foi encontrado.');
    end;
end;

procedure TFAT_FM_R_RFV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_RFV);
end;

procedure TFAT_FM_R_RFV.FormShow(Sender: TObject);
var
  cdsBusFun:  TClientDataSet;
begin
  inherited;

  cdsBusFun :=  TClientDataSet.Create(nil);
  cdsBusFun.RemoteServer :=  dmGeral.pcConecao;
  cdsBusFun.ProviderName := 'CAD_DP_C_FUN';

  cdsBusFun.Close;
   cdsBusFun.Data :=
          cdsBusFun.DataRequest(
               VarArrayOf([0, IntToStr(xFuncionario)]));

  xvnd_interno_externo := cdsBusFun.FieldByName('vnd_interno_externo').AsInteger;



  lbxRelatorios.ItemIndex :=0;


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

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       tsVendedor.Caption := 'Representante';
       lbl_TextoF3Vend.Caption :=  'Dê um click no campo abaixo e tecle <F3> para selecionar algum representante';
     end;



  {if cdsBusFun.FieldByName('vnd_interno_externo').AsInteger = 1 then // Externo
     begin
       lboxVendSel.Items.Add(StrZero(cdsBusFun.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                              ' - ' + cdsBusFun.FieldByName('NOME').AsString);
       tsVendedor.TabVisible := false;

       deInicial.Date    := date - 120;
       deInicial.Enabled := false;
       deFinal.Date      := date;
       deFinal.Enabled   := false;

     end;  }

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

 dmGeral.BUS_CD_C_CPG.IndexFieldNames := 'ID_CONDICAO_PAG';

 dmGeral.BUS_CD_C_CPG.Close;
end;

procedure TFAT_FM_R_RFV.lboxCondicaoPagamentoDisponivelDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoDisponivel.ItemIndex > - 1 then
     begin
       lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[lboxCondicaoPagamentoDisponivel.ItemIndex]);
       lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_RFV.lboxCondicaoPagamentoSelecionadaDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoSelecionada.ItemIndex > -1 then
     begin
       lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[lboxCondicaoPagamentoSelecionada.ItemIndex]);
       lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_RFV.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_RFV.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_RFV.lboxItemSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItemSel,6,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger,6,0)) then
                begin
                  lboxItemSel.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger,6,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TFAT_FM_R_RFV.lboxSituacaoDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxSituacaoDisponivel.ItemIndex > - 1 then
     begin
       if chkFaturado.Checked then
          chkFaturado.Checked := false;


       lboxSituacaoSelecionada.Items.Add(lboxSituacaoDisponivel.Items[lboxSituacaoDisponivel.ItemIndex]);
       lboxSituacaoDisponivel.Items.Delete(lboxSituacaoDisponivel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_RFV.lboxSituacaoSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxSituacaoSelecionada.ItemIndex > -1 then
     begin
       lboxSituacaoDisponivel.Items.Add(lboxSituacaoSelecionada.Items[lboxSituacaoSelecionada.ItemIndex]);
       lboxSituacaoSelecionada.Items.Delete(lboxSituacaoSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_RFV.lboxVendSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendSel,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0)) then
                begin
                  lboxVendSel.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_RFV.PreencherCondicao;
var
  opcoesEmpresa,opcoesVendedor,opcoesItem, opcoesCondicaoPagamento, opcoesSituacao:String;
  i,SitSelecionada:Integer;
begin

  xUsaSGQ := UpperCase(dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsString);


   // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpresaSelecionada.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                    '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end;


    // Vendedor ------------------------------------------------------------------
  xCondVend := '';
  if lboxVendSel.Count > 0 then
     begin
       for i := 0 to lboxVendSel.Count - 1 do
          begin
            if xCondVend <> '' then
               begin
                 xCondVend :=
                 xCondVend + ',' +''''+trim(copy(lboxVendSel.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor +'                    '+lboxVendSel.Items[i] + #13+#10;
               end;
            if xCondVend = '' then
               begin
                 xCondVend :=
                 xCondVend +''''+ trim(copy(lboxVendSel.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lboxVendSel.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
       opcoesVendedor := 'Todos';
     end;

   // Item ------------------------------------------------------------------
  xCondItem := '';
  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Item') then
    begin
      if lboxItemSel.Count > 0 then
         begin
           for i := 0 to lboxItemSel.Count - 1 do
              begin
                if xCondItem <> '' then
                   begin
                     xCondItem :=
                     xCondItem + ',' +''''+trim(copy(lboxItemSel.Items[i],1,6))+'''';
                     opcoesItem :=
                     opcoesItem +'                    '+lboxItemSel.Items[i] + #13+#10;
                   end;
                if xCondItem = '' then
                   begin
                     xCondItem :=
                     xCondItem +''''+ trim(copy(lboxItemSel.Items[i],1,6))+'''';
                     opcoesItem :=
                     opcoesItem + lboxItemSel.Items[i] + #13+#10;
                   end;
              end;
         end
       else
         begin
           opcoesItem := 'Todos';
         end;
    end;


   // Condição de Pagamento -----------------------------------------------------
  xCondCondicaoPagamento := '';

  if lboxCondicaoPagamentoSelecionada.Count > 0 then
     begin
        for i := 0 to lboxCondicaoPagamentoSelecionada.Count - 1 do
          begin
            if xCondCondicaoPagamento <> '' then
               begin
               xCondCondicaoPagamento :=
               xCondCondicaoPagamento + ',' +''''+trim(copy(lboxCondicaoPagamentoSelecionada.Items[i],1,3))+'''';
               opcoesCondicaoPagamento :=
               opcoesCondicaoPagamento +'                                 '+lboxCondicaoPagamentoSelecionada.Items[i]+ #13+#10;
               end;
            if xCondCondicaoPagamento = '' then
               begin
               xCondCondicaoPagamento :=
               xCondCondicaoPagamento +''''+trim(copy(lboxCondicaoPagamentoSelecionada.Items[i],1,3))+'''';
               opcoesCondicaoPagamento :=
               opcoesCondicaoPagamento + lboxCondicaoPagamentoSelecionada.Items[i]+ #13+#10;
               end;
          end
     end
  else
     begin
       opcoesCondicaoPagamento:= 'Todos';
     end;


  // Situacao ------------------------------------------------------------------
  xCondSituacao := '';

  xSituacaoDigitada    := false;
  xSituacaoEmabertoApv := false;

  if chkFaturado.Checked then
     begin
       xCondSituacao := '3'; // no banco de dados o valor é 3,  Faturado
       opcoesSituacao := '4 - Faturado';
     end
  else
     begin
        if lboxSituacaoSelecionada.Count > 0 then
           begin
             for i := 0 to lboxSituacaoSelecionada.Count - 1 do
                begin
                  if copy(lboxSituacaoSelecionada.Items[i],1,1) = '0' then
                     begin
                       xSituacaoDigitada := true;
                     end;
                  if copy(lboxSituacaoSelecionada.Items[i],1,1) = '1' then
                     begin
                       xSituacaoEmabertoApv := true;
                     end;

                  if xCondSituacao <> '' then
                     begin
                       SitSelecionada := strtoint(copy(lboxSituacaoSelecionada.Items[i],1,1));
                       if SitSelecionada in [2,3,5] then
                          begin
                            SitSelecionada := SitSelecionada - 1;
                            xCondSituacao :=
                            xCondSituacao + ',' +''''+inttostr(SitSelecionada)+'''';
                          end;
                       opcoesSituacao :=
                       opcoesSituacao +'                    '+lboxSituacaoSelecionada.Items[i] + #13+#10;
                     end;

                  if xCondSituacao = '' then
                     begin
                       SitSelecionada := strtoint(copy(lboxSituacaoSelecionada.Items[i],1,1));
                       if SitSelecionada in [2,3,5] then
                          begin
                            SitSelecionada := SitSelecionada - 1;
                            xCondSituacao :=
                            xCondSituacao +''''+ inttostr(SitSelecionada)+'''';
                          end;
                       opcoesSituacao :=
                       opcoesSituacao + lboxSituacaoSelecionada.Items[i] + #13+#10;
                     end;

                  //if xSituacaoDigitada or xSituacaoEmabertoApv then
                  //   xCondSituacao := '';

                end;
           end
         else
           begin
             opcoesSituacao := 'Todos';
           end;
     end;


   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text +' à '+deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação.........: ' + cbbOrde.Text + #13+#10;
  { if chbExibirItens.Checked then
     xOpcoes := xOpcoes + 'Exibir Itens......: ' + 'Sim' + #13+#10
   else
     xOpcoes := xOpcoes + 'Exibir Itens......: ' + 'Não' + #13+#10;

   if chbExibirTit.Checked then
     xOpcoes := xOpcoes + 'Exibir Títulos....: ' + 'Sim' + #13+#10
   else
     xOpcoes := xOpcoes + 'Exibir Títulos....: ' + 'Não' + #13+#10;}

   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa + #13+#10;
   xOpcoes := xOpcoes + 'Vendedor..........: ' + opcoesVendedor + #13+#10;
   xOpcoes := xOpcoes + 'Condição de pagto.: ' + opcoesCondicaoPagamento + #13+#10;
   xOpcoes := xOpcoes + 'Situação..........: ' + opcoesSituacao + #13+#10;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Item')  then
     xOpcoes := xOpcoes + 'Item..............: ' + opcoesItem + #13+#10;

end;


function TFAT_FM_R_RFV.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
     begin
       mens := mens +  '.O período deve ser preenchido.' + #13;
     end
  else
    if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;


  if (lboxEmpresaSelecionada.Count=0) then
    begin
      mens := mens +  '.É necessário selecionar pelo menos 1 empresa.' + #13;
    end;


  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;
end;

end.
