unit EST_UN_M_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,System.Math, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,datasnap.DBClient,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, vcl.Wwdbedit,
  vcl.wwcheckbox, Vcl.ComCtrls, frxClass, frxDBSet, frxExportPDF, frxExportXLS,
  JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, vcl.Wwdotdot, vcl.Wwdbcomb, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TEST_FM_M_NFE = class(TPAD_FM_X_PAD)
    Label7: TLabel;
    txt_Emitente: TJvDBComboEdit;
    Label6: TLabel;
    Label1: TLabel;
    txt_Numero: TDBEdit;
    Label2: TLabel;
    txt_Serie: TDBEdit;
    Label65: TLabel;
    txt_SubSerie: TDBEdit;
    Label3: TLabel;
    Label41: TLabel;
    txt_NFe_Chave: TDBEdit;
    Label8: TLabel;
    Label25: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    Label47: TLabel;
    txt_Cod_Doc_Rev: TDBEdit;
    Label53: TLabel;
    Label9: TLabel;
    cbbTipoFrete: TwwDBLookupCombo;
    cbbModelo: TwwDBLookupCombo;
    dsoItens: TwwDataSource;
    pcMovimento: TPageControl;
    tsItens: TTabSheet;
    tsTitulos: TTabSheet;
    grdItens: TwwDBGrid;
    gbTotalizacao: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    Label62: TLabel;
    num_VlrICMSSubst: TDBEdit;
    num_Total_VlrDesc: TwwDBEdit;
    Label23: TLabel;
    Label22: TLabel;
    num_TotalLiquido: TwwDBEdit;
    Label55: TLabel;
    num_VlrBaseICMSSubst: TDBEdit;
    num_VlrICMS: TDBEdit;
    Label56: TLabel;
    num_VlrBaseICMS: TDBEdit;
    Label57: TLabel;
    Label39: TLabel;
    num_VlrOutrasDesp: TwwDBEdit;
    num_VlrSeguro: TwwDBEdit;
    Label60: TLabel;
    num_VlrFreteNF: TwwDBEdit;
    Label61: TLabel;
    Label24: TLabel;
    num_Total_VlrMercadoria: TDBEdit;
    grdTitulos: TwwDBGrid;
    dsoTitulos: TwwDataSource;
    pnItens: TPanel;
    txtBuscaItem: TJvDBComboEdit;
    txt_CFOP: TJvDBComboEdit;
    txtQtde: TDBEdit;
    txtVlrMercadoria: TDBEdit;
    txtPerDesconto: TDBEdit;
    txtVlrDesconto: TDBEdit;
    txt_VlrLiquido: TDBEdit;
    txt_PerIPI: TDBEdit;
    Label31: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label54: TLabel;
    lbl_p: TLabel;
    cbbCondicaoPagamento: TwwDBLookupCombo;
    cbbCFOP: TwwDBLookupCombo;
    cbbTipoEstoque: TwwDBLookupCombo;
    lblItem: TLabel;
    cbbID_ST_IPI: TwwDBLookupCombo;
    btn_Add_Itens: TBitBtn;
    grdItensIButton: TwwIButton;
    cbbAlmoxarifado: TwwDBLookupCombo;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    cbRAA: TDBCheckBox;
    Label10: TLabel;
    de_Emissao: TJvDBDateEdit;
    de_DataDocumento: TJvDBDateEdit;
    txtCodPedCmp: TJvDBComboEdit;
    Label17: TLabel;
    lbl_Fornecedor: TwwDBEdit;
    grdTitulosIButton: TwwIButton;
    btnRetirarCmpPed: TSpeedButton;
    PAD_XL_C_REL: TfrxXLSExport;
    PAD_PD_C_REL: TfrxPDFExport;
    EST_DB_M_NFE: TfrxDBDataset;
    btnImprimirEspelho: TBitBtn;
    EST_DB_M_NFE_ITE: TfrxDBDataset;
    EST_DB_M_NFE_TIT: TfrxDBDataset;
    EST_FR_M_NFE: TfrxReport;
    txtVlrFrete: TwwDBEdit;
    Label18: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label19: TLabel;
    txtVlrBaseIcmIte: TwwDBEdit;
    txtVlrIcmIte: TwwDBEdit;
    txtVlrBaseSubIcmIte: TwwDBEdit;
    txtVlrSubIcmIte: TwwDBEdit;
    Label4: TLabel;
    Label12: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    cbbCSTIcm: TwwDBLookupCombo;
    Label28: TLabel;
    Label29: TLabel;
    txtCodIqm: TJvDBComboEdit;
    btnRetirarIqm: TSpeedButton;
    pnDadosAdic: TPanel;
    Label30: TLabel;
    txtVlrIcmSValor: TwwDBEdit;
    cbbOrigemMercadoria: TwwDBLookupCombo;
    lblOrigemMercadoria: TLabel;
    Label32: TLabel;
    txtPerReducaoICM: TwwDBEdit;
    cbbCST_PIS_Entrada: TwwDBLookupCombo;
    Label33: TLabel;
    cbbCST_COFINS_Entrada: TwwDBLookupCombo;
    Label34: TLabel;
    Label35: TLabel;
    num_VlrIcmDesc: TwwDBEdit;
    pnlLote: TPanel;
    txtLote: TwwDBEdit;
    Label36: TLabel;
    txtLoteVenc: TJvDBDateEdit;
    Label38: TLabel;
    pnTitulos: TPanel;
    lbl6: TLabel;
    lb2: TLabel;
    lbl8: TLabel;
    lbl7: TLabel;
    Label63: TLabel;
    txtPctDescricao: TDBText;
    txtDias: TDBEdit;
    txtVlrTitulo: TDBEdit;
    cbbFormaPgto: TwwDBLookupCombo;
    txtVencimento: TJvDBDateEdit;
    txt_IdPlanoContas: TJvDBComboEdit;
    pnCheque: TGroupBox;
    lblBanco: TLabel;
    lblAgencia: TLabel;
    lblContaCorrente: TLabel;
    lblNCheque: TLabel;
    lblEmitente: TLabel;
    txtBanco: TDBEdit;
    txtAgencia: TDBEdit;
    txtNCheque: TDBEdit;
    txtEmitente: TDBEdit;
    txtContaCorrente: TwwDBEdit;
    btn_Add_Fpg: TBitBtn;
    txtCaixa: TJvDBComboEdit;
    lblCaixa: TLabel;
    Label40: TLabel;
    cbbFinalidade: TwwDBComboBox;
    lblNfeRef: TLabel;
    txtIdFiscalRef: TJvDBComboEdit;
    GroupBox1: TGroupBox;
    txtQtdeParc: TEdit;
    Label45: TLabel;
    txtGerFpg: TJvComboEdit;
    Label44: TLabel;
    pnlDesn: TPanel;
    Label46: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    txtIcmsDesnIte: TwwDBEdit;
    cbbMotDesn: TwwDBLookupCombo;
    txtPesquisaData: TJvDateEdit;
    pnlTotalizacao: TPanel;
    txtVlrLiquidoIte: TwwDBEdit;
    Label43: TLabel;
    txtVlrBrutoIte: TwwDBEdit;
    Label42: TLabel;
    Label50: TLabel;
    txtIdPlanoContasFor: TEdit;
    txtDescPctFor: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txt_IdTipoEstoqueEnter(Sender: TObject);
    procedure txt_EmitenteExit(Sender: TObject);
    procedure txt_EmitenteEnter(Sender: TObject);
    procedure txt_NumeroExit(Sender: TObject);
    procedure txt_SerieExit(Sender: TObject);
    procedure txt_SubSerieExit(Sender: TObject);
    procedure txt_NFe_ChaveExit(Sender: TObject);
    procedure num_CondicaoPgtoEnter(Sender: TObject);
    procedure txt_AlmoxarifadoEnter(Sender: TObject);
    procedure txt_CFOP_PaiEnter(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    //procedure txt_IdSituacaoICMSExit(Sender: TObject);
    procedure txt_CFOPExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtVlrMercadoriaExit(Sender: TObject);
    procedure txtVlrDescontoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_PerIPIExit(Sender: TObject);
    procedure cbbModeloEnter(Sender: TObject);
    procedure cbbTipoFreteEnter(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txt_EmitenteButtonClick(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txt_IdPlanoContasExit(Sender: TObject);
    procedure txt_IdPlanoContasButtonClick(Sender: TObject);
    procedure txt_CFOPButtonClick(Sender: TObject);
    procedure cbbID_ST_IPIEnter(Sender: TObject);
    procedure cbbCondicaoPagamentoEnter(Sender: TObject);
    procedure cbbCondicaoPagamentoExit(Sender: TObject);
    procedure cbbCFOPEnter(Sender: TObject);
    procedure cbbTipoEstoqueExit(Sender: TObject);
    procedure cbbTipoEstoqueEnter(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure cbbCFOPExit(Sender: TObject);
    procedure cbbModeloExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure txtPerDescontoExit(Sender: TObject);
    procedure cbbID_ST_IPIExit(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acAlterarExecute(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure cbbFormaPgtoEnter(Sender: TObject);
    procedure cbbFormaPgtoExit(Sender: TObject);
    procedure txtDiasExit(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtVlrTituloExit(Sender: TObject);
    procedure grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Add_FpgClick(Sender: TObject);
    procedure de_EmissaoExit(Sender: TObject);
    procedure de_DataDocumentoExit(Sender: TObject);
    procedure txtCodPedCmpButtonClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure cbbAlmoxarifadoBeforeDropDown(Sender: TObject);
    procedure grdTitulosIButtonClick(Sender: TObject);
    procedure pnTitulosExit(Sender: TObject);
    procedure btn_Add_ItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_Add_FpgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnRetirarCmpPedClick(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure num_Total_VlrMercadoriaExit(Sender: TObject);
    procedure num_Total_VlrDescExit(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure txtVlrBaseIcmIteExit(Sender: TObject);
    procedure cbbCSTIcmEnter(Sender: TObject);
    procedure cbbCSTIcmExit(Sender: TObject);
    procedure txtCodIqmButtonClick(Sender: TObject);
    procedure btnRetirarIqmClick(Sender: TObject);
    procedure cbbCST_COFINS_EntradaEnter(Sender: TObject);
    procedure cbbCST_PIS_EntradaEnter(Sender: TObject);
    procedure cbbOrigemMercadoriaEnter(Sender: TObject);
    procedure txtVlrSubIcmIteExit(Sender: TObject);
    procedure cbbCST_COFINS_EntradaExit(Sender: TObject);
    procedure pnDadosAdicExit(Sender: TObject);
    procedure txtCodPedCmpExit(Sender: TObject);
    procedure txtCodIqmExit(Sender: TObject);
    procedure txtLoteExit(Sender: TObject);
    procedure txtLoteVencExit(Sender: TObject);
    procedure pnChequeExit(Sender: TObject);
    procedure dsoTitulosDataChange(Sender: TObject; Field: TField);
    procedure txtCaixaButtonClick(Sender: TObject);
    procedure txtCaixaExit(Sender: TObject);
    procedure cbbFinalidadeEnter(Sender: TObject);
    procedure cbbFinalidadeExit(Sender: TObject);
    procedure txtIdFiscalRefButtonClick(Sender: TObject);
    procedure txtIdFiscalRefExit(Sender: TObject);
    procedure cbbFinalidadeChange(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure txtGerFpgButtonClick(Sender: TObject);
    procedure txtQtdeParcExit(Sender: TObject);
    procedure txtGerFpgExit(Sender: TObject);
    procedure cbbMotDesnEnter(Sender: TObject);
    procedure txtIcmsDesnIteExit(Sender: TObject);
    procedure txtVlrIcmIteExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure AcoesIniciais;
    function  AcoesPosTestes: Boolean;
    procedure ChamaCorTamanho;
    procedure Atualizar_xBusca;
    procedure PassarCdsAnterior;
    procedure ExcluirNotaFiscal;
    function  ExisteItemComNroLot: Boolean;
    procedure AltBusLookupDoCstIcm;
    Var
       xAntIdTipoEstoque: String;
       xAntEmitente: String;
       xAntCondicaoPgto:String;
       xAntCfo:String;
       xOperacaoForm:String;
       xbusca_item: String;
       xCdsItensAntigo, xCdsTitulosAntigo: TClientDataSet;
  public
    { Public declarations }
  end;

var
  EST_FM_M_NFE: TEST_FM_M_NFE;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, uProxy,UApplayClassProxy, PSQ_UN_X_TME, PSQ_UN_X_FUN, PSQ_UN_X_ALM,
  PSQ_UN_X_CPG, PSQ_UN_X_CFO, PSQ_UN_X_ITE, PSQ_UN_X_FPG, PSQ_UN_X_PCT,
  PSQ_UN_X_FOR, FAT_UN_M_NFE_IPE, FAT_RN_M_NFE, FAT_UN_M_NFE_IPQ, enSoftMenu,
  PSQ_UN_X_CXA, EST_UN_M_NFS_CPM;

procedure TEST_FM_M_NFE.AbrirBuscas;
begin

  dmGeral.BusAlmox(1,'%');
  dmGeral.BusCondPgto(2,'%');
  dmGeral.BusTipoEstoque(1,'%');
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFormaPgtos(3,'');
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');
  dmGeral.BusCfop(2,CCfoNFE_ENTRADA);
  dmGeral.BUS_PR_X_IPI_ENT;
  dmGeral.BUS_PR_X_ICM_ICO; // Poderia ser o ICO ou o INC (Tanto faz);
  dmGeral.BUS_PR_X_ICM_OSN_ICO; // Poderia ser o ICO ou o INC (Tanto faz);
  dmGeral.BUS_PR_X_FRE;
  dmGeral.BUS_PR_X_MOD_NFE;
  dmGeral.BUS_PR_X_COF_ENT;
  dmGeral.BUS_PR_X_PIS_ENT;
  dmGeral.BUS_PR_X_ORM;
  dmGeral.BUS_PR_X_MDS;
end;

procedure TEST_FM_M_NFE.acAdicionaExecute(Sender: TObject);
begin
  inherited;

  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('INFORMAR_CAIXA_NFE').AsBoolean = true) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_ID_TIPO_FINANCEIRO').AsString='')) then
    begin
      ShowMessage('É necessário preencher tipo financeiro na tela de parâmetros, na aba Financeiro, no bloco Nota Fiscal de Entrada.');
      exit;
    end;



  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_ALM_PADRAO').AsInteger;
     end;

  //Atualizar_xBusca;

  AcoesIniciais;
  btn_Add_Itens.Enabled := true;
  pnItens.Enabled := false;
  pnTitulos.Enabled := false;
  pcMovimento.ActivePage := tsItens;
  txt_PerIPI.ReadOnly := false;
  cbbID_ST_IPI.ReadOnly := false;

  HabilDesabCampos(True, clWhite);

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;

  // Estes campos deve ficar aqui mesmo.
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger   := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString       := 'B';
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger := 1;

  dmGeral.BusCodigoRevListMestre(true,false,'EST_FM_M_NFE',xCodLme,xRevLme,dmGeral.FAT_CD_M_NFE);

  pnlTotalizacao.Visible := true;
  PassarCdsAnterior;
  txt_NFe_Chave.Enabled := True;
  cbbTipoEstoque.SetFocus;
end;

procedure TEST_FM_M_NFE.acAlterarExecute(Sender: TObject);
begin
  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('INFORMAR_CAIXA_NFE').AsBoolean = true) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_ID_TIPO_FINANCEIRO').AsString='')) then
    begin
      ShowMessage('É necessário preencher tipo financeiro na tela de parâmetros, na aba Financeiro, no bloco Nota Fiscal de Entrada.');
      exit;
    end;

  if FAT_CD_M_NFE_Ent_TesPermEdicaoExclusao=false  then
     begin
       exit;
     end;


  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
     begin
       inherited;
       pnItens.Enabled := false;
       pnTitulos.Enabled := false;
       pcMovimento.ActivePage := tsItens;
       AltBusLookupDoCstIcm;
      // Atualizar_xBusca;
       HabilDesabCampos(false,$00DADADA);
       if (dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString = 'X') then
         begin
           txt_PerIPI.ReadOnly := true;
           cbbID_ST_IPI.ReadOnly := true;
         end
       else
         begin
           txt_PerIPI.ReadOnly := false;
           cbbID_ST_IPI.ReadOnly := false;
         end;


       if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
         begin
           btn_Add_Itens.Enabled := false;
           txtIdFiscalRef.Visible := true;
           lblNfeRef.Visible := true;
         end
       else
         begin
           btn_Add_Itens.Enabled := true;
           txtIdFiscalRef.Visible := false;
           lblNfeRef.Visible := false;
         end;

       PassarCdsAnterior;


       FAT_RN_M_NFE.SomarVlrItens;
       pnlTotalizacao.Visible := true;

       dmGeral.BusFornecedor(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text);
       txt_Serie.SetFocus;
     end;
end;

procedure TEST_FM_M_NFE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
     begin
       inherited;
       pnlTotalizacao.Visible := false;
       dbGrid.SetFocus;
     end
   else
     begin
       txt_Serie.SetFocus;
     end;
end;

procedure TEST_FM_M_NFE.acExcluirExecute(Sender: TObject);
begin
  if FAT_CD_M_NFE_Ent_TesPermEdicaoExclusao  then
     begin
       //if MessageDlg('Confirma a exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       //   begin
            // ExcluirNotaFiscal;


            if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
               inherited;
       //   end;
     end;
end;

procedure TEST_FM_M_NFE.acGravarExecute(Sender: TObject);
var
  codigo: String;
begin

  //qtde entrada + qtde anterior - custo medio atual + custo compra atual
  CorrigirVlrTotais;
  if FAT_CD_M_NFE_Ent_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString;

             AcoesPosTestes;
             DmGeral.Grava(dmGeral.FAT_CD_M_NFE);
             inherited;
             dmGeral.FAT_CD_M_NFE.Close;
             dmGeral.FAT_CD_M_NFE.Data :=
             dmGeral.FAT_CD_M_NFE.DataRequest(
                     VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'E',codigo]));

             pnlTotalizacao.Visible := false;
             AbrirBuscas;
             pcMovimento.ActivePage := tsItens;
           end
        else
           begin
             if cbbTipoEstoque.CanFocus then
                cbbTipoEstoque.SetFocus;
             if txt_Serie.CanFocus then
                txt_Serie.SetFocus;
           end;
     end
  else
     begin
       if cbbTipoEstoque.CanFocus then
          cbbTipoEstoque.SetFocus;
       if txt_Serie.CanFocus then
          txt_Serie.SetFocus;
     end;

end;

procedure TEST_FM_M_NFE.AcoesIniciais;
begin
  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
     begin
       cbbAlmoxarifado.Enabled := False;
       cbbAlmoxarifado.Color   := $00DADADA;
     end;
  AltBusLookupDoCstIcm;
end;

function TEST_FM_M_NFE.AcoesPosTestes: Boolean;
var
  Obj:TSMClient;
  lMovimentaEst, lGeraTitulo: Boolean;
  lExisteCmpPed: Boolean;
begin
  //lMovimentaEst := false;
  //lGeraTitulo   := false;
  //lExisteCmpPed := false;

  {if dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_COMPRA').OldValue <>
     dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_COMPRA').Value then
     begin
        lExisteCmpPed := true;
        FAT_CD_M_NFE_AtuCmpPed(1);
     end;}

  FAT_RN_M_NFE.FatFormarNfeObs_NFE(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);

  FatGravarNumParcNfe(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_TIT);

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_LOTE_NA_ENTRADA').AsBoolean = true then
     dmGeral.MontarNroLoteIteNfe(dmGeral.FAT_CD_M_NFE_ITE,0);


end;

procedure TEST_FM_M_NFE.AltBusLookupDoCstIcm;
begin
  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger > 0 then
     begin
       dmGeral.BusFornecedor(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text);

       if dmGeral.BUS_CD_C_FORregime.AsInteger = 0 then
          begin
            dmGeral.BUS_PR_X_ICM_OSN_ICO;
            cbbCSTIcm.LookupTable := dmGeral.BUS_CD_X_ICM_OSN_ICO;
          end;
       if dmGeral.BUS_CD_C_FORregime.AsInteger IN [1,2] then
          begin
            dmGeral.BUS_PR_X_ICM_ICO;
            cbbCSTIcm.LookupTable := dmGeral.BUS_CD_X_ICM_ICO;
          end;
     end;
end;

procedure TEST_FM_M_NFE.Atualizar_xBusca;
begin
  if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
  else if xbusca_item = 'ID_ITEM' then
      begin
        lblItem.Caption := '<F7> Cód. fábrica';
        xbusca_item := 'COD_FABRICA';
      end
   else if xbusca_item = 'COD_FABRICA' then
      begin
        lblItem.Caption := '<F7> Cód. barra';
        xbusca_item := 'COD_BARRA';
      end
   else if xbusca_item = 'COD_BARRA' then
      begin
        lblItem.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end;
end;

procedure TEST_FM_M_NFE.btnFiltroClick(Sender: TObject);
var
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

   { index:
    0-tipo_nf,Controle (ID_FISCAL)           0  Controle
    1-tipo_nf,Numero                         1  Número
    2-tipo_nf,Cliente
    3-tipo_nf,Fornecedor                     2  Fornecedor
    4-tipo_nf,Situação_doc
    5-tipo_nf,Modelo                         3  Modelo
    6-tipo_nf,Tipo Estoque                   4  Tipo de estoque
    7-tipo_nf,Data Documento                 5  Data documento
    8-tipo_nf,Data Emissao                   6  Emissão
    9-tipo_nf, id_pedido_venda
    10-tipo_nf, Descrição tipo de estoque    7  Tipo de estoque}

  if (txtPesquisaData.Visible =true) then
    xPesquisa := txtPesquisaData.Text
  else
    xPesquisa := txtPesquisa.Text;


  if cbbPesquisa.ItemIndex = 2 then
     begin
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex+1,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'E',xPesquisa]));
     end;

  if (cbbPesquisa.ItemIndex > 2) and (cbbPesquisa.ItemIndex < 7) then
     begin
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex+2,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'E', xPesquisa]));
     end
  else
     begin
       if cbbPesquisa.ItemIndex < 2 then
          begin
            dmGeral.FAT_CD_M_NFE.Close;
            if (cbbPesquisa.ItemIndex = 0) and (trim(xPesquisa) = '') then
                dmGeral.FAT_CD_M_NFE.DataRequest(
                        VarArrayOf([0,'','']))
            else
                dmGeral.FAT_CD_M_NFE.Data :=
                    dmGeral.FAT_CD_M_NFE.DataRequest(
                            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'E', xPesquisa]));
          end;
       if cbbPesquisa.ItemIndex = 7 then
          begin
             dmGeral.FAT_CD_M_NFE.Close;
             dmGeral.FAT_CD_M_NFE.Data :=
             dmGeral.FAT_CD_M_NFE.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex+3,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'E', xPesquisa]));
          end;
     end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TEST_FM_M_NFE.btnImprimirEspelhoClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.FAT_CD_M_NFE.IsEmpty then
      begin
        codigo := dmGeral.FAT_CD_M_NFEid_fiscal.text;

        dmGeral.FAT_CD_M_NFE.Close;
        dmGeral.FAT_CD_M_NFE.Data :=
        dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'E',codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(EST_FR_M_NFE.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,EST_FM_M_NFE.Name,xCodLme,xRevLme,nil);
        EST_FR_M_NFE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

        EST_FR_M_NFE.PrepareReport();
        EST_FR_M_NFE.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TEST_FM_M_NFE.btnRetirarCmpPedClick(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_NFE_ITE.Cancel;
  if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
     begin
       if MessageDlg('Se continuar os itens da nota serão apagados.' + #13 +
                     'Deseja realmente retirar o pedido de compra da nota fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin

            dmGeral.FAT_CD_M_NFEid_pedido_compra.AsInteger := 0;
            dmGeral.FAT_CD_M_NFEind_frete.AsString := '';
            dmGeral.FAT_CD_M_NFE_ITE.First;
            while not dmGeral.FAT_CD_M_NFE_ITE.Eof do
               begin
                 dmGeral.FAT_CD_M_NFE_ITE.Delete;
               end;
          end;
     end;
end;

procedure TEST_FM_M_NFE.btnRetirarIqmClick(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_NFE_ITE.Cancel;

  if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
     begin
       if MessageDlg('Se continuar os itens da nota serão apagados.' + #13 +
                     'Deseja realmente retirar a inspeção da nota fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            dmGeral.FAT_CD_M_NFEid_iqm.AsInteger    := 0;
            dmGeral.FAT_CD_M_NFEind_frete.AsString  := '';
            dmGeral.FAT_CD_M_NFE_ITE.First;
            while not dmGeral.FAT_CD_M_NFE_ITE.Eof do
               begin
                 dmGeral.FAT_CD_M_NFE_ITE.Delete;
               end;
          end;
     end;

end;

procedure TEST_FM_M_NFE.btn_Add_FpgClick(Sender: TObject);
begin
  inherited;
  cbbFormaPgto.ReadOnly := false;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text) = '' then
     begin
       ShowMessage('Condição de pagamento deve ser preenchido!');
       abort;
     end;

  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text);
  if (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger in [2]) then //  Sem pagamento
     begin
       ShowMessage('Condição de pagamento não permite inclusão de títulos.');
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_ITE.Cancel;
  if dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
     begin
       ShowMessage('Nenhum item foi inserido na nota fiscal.');
       abort;
     end;

  pnTitulos.Enabled  := true;

  dmGeral.FAT_CD_M_NFE_TIT.Insert;
  cbbFormaPgto.enabled := true;
  cbbFormaPgto.SetFocus;
end;

procedure TEST_FM_M_NFE.btn_Add_FpgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     pcMovimento.ActivePage := tsItens;
end;

procedure TEST_FM_M_NFE.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;

  pnItens.Enabled  := true;

  dmGeral.FAT_CD_M_NFE_ITE.Insert;

  txtBuscaItem.Enabled := true;
  txtBuscaItem.SetFocus;
end;

procedure TEST_FM_M_NFE.btn_Add_ItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     pcMovimento.ActivePage := tsTitulos;
end;

procedure TEST_FM_M_NFE.cbbCondicaoPagamentoEnter(Sender: TObject);
begin
  inherited;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text <> '' then
     xAntCondicaoPgto := dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text;


  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('INFORMAR_CAIXA_NFE').AsBoolean=true) then
      dmGeral.BusCondPgto(1,'%')
  else
      dmGeral.BusCondPgto(2,'%');



  cbbCondicaoPagamento.DropDown;
end;


procedure TEST_FM_M_NFE.cbbCondicaoPagamentoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text = '' then
     begin
       Showmessage('O campo "Condição de pagamento" deve ser preenchido.');
       cbbCondicaoPagamento.SetFocus;
       abort;
     end;

  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text);

  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de pagamento não encontrada!');
       cbbCondicaoPagamento.SetFocus;
       cbbCondicaoPagamento.Text := '';
       Abort;
     end;

  if not (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger in [0,1,2]) then // A prazo ou Sem pagamento
     begin
       ShowMessage('Condição de pagamento deve ser do tipo "A vista", "A prazo" ou "Sem pagamentos"!');
       cbbCondicaoPagamento.SetFocus;
       cbbCondicaoPagamento.Text := '';
       Abort;
     end
  else
     begin
       if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 2 then
          begin
             dmGeral.FAT_CD_M_NFE_TIT.Cancel;
             if not dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
                begin
                  if MessageDlg('Existe títulos lançado na na nota fiscal.' + #13 +
                               'Se continuar os títulos serão apagados.' + #13 +
                               'Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                    begin
                      dmGeral.FAT_CD_M_NFE_TIT.First;
                      while not dmGeral.FAT_CD_M_NFE_TIT.Eof do
                         begin
                           dmGeral.FAT_CD_M_NFE_TIT.Delete;
                         end;
                    end
                  else
                    begin
                      if xAntCondicaoPgto <> '' then
                         begin
                           dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text := xAntCondicaoPgto;
                         end;
                    end;
                end;
          end;
     end;
end;

procedure TEST_FM_M_NFE.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TEST_FM_M_NFE.cbbCorExit(Sender: TObject);
begin
  inherited;

 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;


  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;
  txt_CFOP.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TEST_FM_M_NFE.cbbID_ST_IPIEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_IPI_ENT;
  cbbID_ST_IPI.DropDown;
end;

procedure TEST_FM_M_NFE.cbbID_ST_IPIExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused or
     txt_CFOP.Focused or txtQtde.Focused or txtVlrMercadoria.Focused or
     txtVlrDesconto.Focused then
     begin
       exit;
     end;

  if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').text) = '' then
     begin
       ShowMessage('O campo "CST IPI" deve ser preenchido.');
       cbbID_ST_IPI.SetFocus;
       exit;
     end;

  if not dmGeral.BUS_CD_X_IPI_ENT.Locate('CODIGO',dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').text,[]) then
     begin
        ShowMessage('Código não cadastrado.');
        exit;
     end;


end;

procedure TEST_FM_M_NFE.cbbModeloEnter(Sender: TObject);
begin
  inherited;
  //  dmGeral.BUS_PR_X_MOD_NFE; //Coloquei o comentário pois ao passar no campo modelo limpava o campo no modo de edição
                              //Responsavel: Luan. Data:02/09/2015
  cbbModelo.DropDown;
end;

procedure TEST_FM_M_NFE.cbbModeloExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused or txt_Numero.Focused or
     txt_Serie.Focused  then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text <> '' then
     begin
       if pos(dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text,'07-08-8B-09-10-11-26-27-57') <> 0 then
          begin
            ShowMessage('Modelo de nota fiscal não permitido.');
            dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text := '';
            cbbModelo.SetFocus;
            exit;
          end;

       if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger > 0) and
          (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0)      and
          (trim(dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text) <> '')    then
           begin
             dmGeral.BUS_CD_M_BUS_NFE.Close;
                  dmGeral.BUS_CD_M_BUS_NFE.Data :=
                       dmGeral.BUS_CD_M_BUS_NFE.DataRequest(VarArrayOf([dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').text,
                                                                    dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').text,
                                                                    dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text,
                                                                    dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text,
                                                                    dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text,
                                                                    dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text]));
             if not dmGeral.BUS_CD_M_BUS_NFE.IsEmpty then
                begin
                  ShowMessage('Já existe nota fiscal lançada com os dados digitado!' + #13 +
                              'Código emitente:' + dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text + #13 +
                              'Número NF: ' +  dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text + #13 +
                              'Série: ' +  dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text + #13 +
                              'Modelo:' +  dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').text);
                  cbbModelo.SetFocus;
                  exit;
                end;
           end;

       txt_NFe_Chave.Enabled := false;
       if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='55') and
          (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
           begin
             txt_NFe_Chave.Enabled := true;
             txt_NFe_Chave.SetFocus;
           end;
     end;
end;

procedure TEST_FM_M_NFE.cbbMotDesnEnter(Sender: TObject);
begin
  inherited;
  cbbMotDesn.DropDown;
end;

procedure TEST_FM_M_NFE.cbbOrigemMercadoriaEnter(Sender: TObject);
begin
  inherited;
  cbbOrigemMercadoria.DropDown;
end;

procedure TEST_FM_M_NFE.cbbPesquisaChange(Sender: TObject);
begin
  inherited;

  {  0-Controle
     1-Número
     2-Fornecedor
     3-Modelo
     4-Tipo de estoque
     5-Data documento
     6-Emissão
    }

  txtPesquisa.Text := '';
  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [5,6]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 143;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;



  if cbbPesquisa.ItemIndex in [0,1,4] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TEST_FM_M_NFE.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TEST_FM_M_NFE.cbbTamanhoExit(Sender: TObject);
begin
  inherited;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txt_CFOP.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TEST_FM_M_NFE.cbbTipoEstoqueEnter(Sender: TObject);
begin
  inherited;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text <> '' then
     begin
       xAntIdTipoEstoque := dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text;
     end;

  dmGeral.BusTipoEstoque(3,'0');
  cbbTipoEstoque.DropDown;
end;

procedure TEST_FM_M_NFE.cbbTipoEstoqueExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text) = '' then
     begin
       ShowMessage('O campo "Tipo de movimento de estoque" deve ser preenchido!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       Abort;
     end;

  if xAntIdTipoEstoque <> '' then
     begin
        if xAntIdTipoEstoque <> dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text then
           begin
             if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
                begin
                  ShowMessage('Já existe produtos lançado nesta nota fiscal, alteração do tipo de estoque não permitida!');
                  dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').Value := xAntIdTipoEstoque;
                  Abort;
                end;
           end;
     end;

  dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text);

  if dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       ShowMessage('Tipo de movimento de estoque não encontrado!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       Abort;
     end;

  if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 0 then
     begin
       ShowMessage('Tipo de movimento de estoque deve ser do tipo "Entrada"!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       Abort;
     end;


  if not (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger in [0,2]) then
     begin
       ShowMessage('O "Indicador" do Tipo de movimento de estoque deve ser do tipo "Normal" ou de "Transferência"!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       Abort;
     end;

  dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text :=
          dmGeral.MontaTipoNota(dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text);
end;

procedure TEST_FM_M_NFE.cbbTipoFreteEnter(Sender: TObject);
begin
  inherited;

  if dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').Text = '' then
     begin
       dmGeral.BUS_PR_X_FRE;
     end;
   cbbTipoFrete.DropDown;
end;

procedure TEST_FM_M_NFE.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        //cbbCor.Visible := False;
        //cbbTamanho.Visible := False;

        //cbbCor.TabStop := False;
        //cbbTamanho.TabStop := False;

        txt_CFOP.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := 15;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 140;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 126;
                  pnlCorTamanho.Top   := 15;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := false;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 126;
                  pnlCorTamanho.Top := 15;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;

               end;
         end;
     end;
end;

procedure TEST_FM_M_NFE.dbGridRowChanged(Sender: TObject);
begin
  inherited;

   if not dmGeral.FAT_CD_M_NFE.IsEmpty then
     begin
       if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
         begin
           lblNfeRef.Visible := true;
           txtIdFiscalRef.Visible := true;
         end
       else
         begin
           lblNfeRef.Visible := false;
           txtIdFiscalRef.Visible := false;
         end;
     end;

   txtIdPlanoContasFor.text := '';
   txtDescPctFor.Text       := '';
end;

procedure TEST_FM_M_NFE.de_DataDocumentoExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.VerMesAno(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime)=false then
     begin
       Showmessage('A data informada é diferente do mês e ano do parâmetro.');
       //de_DataMovimento.SetFocus;
       //Abort;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('INFORMAR_CAIXA_NFE').AsBoolean = true) then
    begin
      dmGeral.FIN_CD_M_CXA.Close;
      dmGeral.FIN_CD_M_CXA.Data :=
      dmGeral.FIN_CD_M_CXA.DataRequest(
              VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('id_abertura').AsString]));
      if dmGeral.FIN_CD_M_CXA.IsEmpty then
         begin
           Showmessage('Não há caixa aberto.');
           de_DataDocumento.SetFocus;
           dmGeral.FIN_CD_M_CXA.close;
           abort;
         end;

      if not (dmGeral.FIN_CD_M_CXA.locate('DTA_ABERTURA',de_DataDocumento.text,[])) then
         begin
           Showmessage('Não foi encontrado um caixa aberto com esta data de entrada.');
           de_DataDocumento.SetFocus;
           dmGeral.FIN_CD_M_CXA.close;
           abort;
         end;
      dmGeral.FIN_CD_M_CXA.close;
    end;
end;

procedure TEST_FM_M_NFE.de_EmissaoExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
      btnGrava.Focused  then
      begin
        exit;
      end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').IsNull) then
     begin
        ShowMessage('O campo "Emissão" deve ser preenchido.');
        de_Emissao.text := ' ';
        de_Emissao.SetFocus;
        Abort;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').text <> '') then
     begin
       if dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime > xDataSis then
          begin
            ShowMessage('A data de emissão não pode ser maior que a data do sistema.');
            de_Emissao.SetFocus;
          end;
     end;
end;

procedure TEST_FM_M_NFE.dsoStateChange(Sender: TObject);
begin
  inherited;

  btnImprimirEspelho.Enabled := true;
  if dso.DataSet.State in [dsInsert,dsEdit] then
     btnImprimirEspelho.Enabled := false;

end;

procedure TEST_FM_M_NFE.dsoTitulosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text);

  if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').text = '6' then  //doc impresso = cheque
    begin
      pnCheque.Enabled := true;
    end
  else
    begin
      pnCheque.Enabled := False;
    end;
end;

procedure TEST_FM_M_NFE.ExcluirNotaFiscal;
var
  Obj:TSMClient;
  lExisteTitulo: Boolean;
  lExisteNroLote: Boolean;
  lExisteCmpPed: Boolean;
begin

   {dmGeral.FAT_CD_M_NFE.ApplyUpdates(0);
    dmGeral.EST_CD_M_FEA.ApplyUpdates(0);
    dmGeral.EST_CD_M_FES.ApplyUpdates(0);
    dmGeral.EST_CD_M_FES_ALM.ApplyUpdates(0);
    dmGeral.EST_CD_M_LOT.ApplyUpdates(0);
    dmGeral.FIN_CD_M_PAG.ApplyUpdates(0);   }


{  lExisteTitulo := false;
  lExisteNroLote := false;
  try

  Obj:=TSMClient.Create(dmGeral.Conexao.DBXConnection);

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_COMPRA').Value > 0 then
     begin
        lExisteCmpPed := true;
        FAT_CD_M_NFE_AtuCmpPed(2);
     end;

 { dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFEid_tipo_mov_estoque.text);
  if dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean = true then
     begin
       ENT_EXCLUI_EST(0,dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE,xCdsItensAntigo);
     end;

  lExisteNroLote := ExisteItemComNroLot;
  dmGeral.FAT_CD_M_NFE.Delete;

  dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFEid_tipo_mov_estoque.text);
  if dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean = true then
     begin
       if lExisteNroLote then
          begin
            if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
               begin
                 if lExisteCmpPed then
                    begin
                      TClientAllApplyUpdates.Execute(obj,[dmGeral.CMP_CD_M_PED,dmGeral.EST_CD_M_LOT,dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.FAT_CD_M_NFE])
                    end
                 else
                    begin
                      TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_LOT,dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.FAT_CD_M_NFE])
                    end;
               end
            else
               begin
                  if lExisteCmpPed then
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.CMP_CD_M_PED,dmGeral.EST_CD_M_LOT,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.FAT_CD_M_NFE])
                     end
                  else
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_LOT,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.FAT_CD_M_NFE])
                     end;
               end;
          end
       else
          begin
            if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
               begin
                  if lExisteCmpPed then
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.CMP_CD_M_PED,dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.FAT_CD_M_NFE])
                     end
                  else
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.FAT_CD_M_NFE])
                     end;
               end
            else
               begin
                  if lExisteCmpPed then
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.CMP_CD_M_PED,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.FAT_CD_M_NFE])
                     end
                  else
                     begin
                       TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.FAT_CD_M_NFE])
                     end;
               end;
          end;
     end
  else
     begin
       if lExisteCmpPed then
          begin
            TClientAllApplyUpdates.Execute(obj,[dmGeral.CMP_CD_M_PED,dmGeral.FAT_CD_M_NFE]);
          end
       else
          begin
            TClientAllApplyUpdates.Execute(obj,[dmGeral.FAT_CD_M_NFE]);
          end;
     end;
  finally
     Obj.Free;
     dmGeral.FAT_CD_M_NFE.Close;
     dmGeral.FAT_CD_M_NFE.Open;
  end;      }
end;

function TEST_FM_M_NFE.ExisteItemComNroLot: Boolean;
begin

  result := false;

  dmGeral.FAT_CD_M_NFE_ITE.Cancel;
  dmGeral.FAT_CD_M_NFE_ITE.First;
  while not dmGeral.FAT_CD_M_NFE_ITE.eof do
     begin
       if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('NUM_LOTE').AsString) <> '' then
          begin
            result := true;
            dmGeral.FAT_CD_M_NFE_ITE.Last;
          end;
       dmGeral.FAT_CD_M_NFE_ITE.Next;
     end;
  dmGeral.FAT_CD_M_NFE_ITE.First;
end;

procedure TEST_FM_M_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_C_CPG.Filtered := false;
  dmGeral.BUS_CD_C_FOR.Close;
  dmGeral.CMP_CD_M_PED.close;
  dmGeral.FIN_CD_M_PAG.Close;
  dmGeral.FAT_CD_M_NFE.Close;
  FreeAndNil(EST_FM_M_NFE);
end;

procedure TEST_FM_M_NFE.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
  dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([0, '']));

  pnDadosAdic.Visible := false;
  AbrirBuscas;
  Atualizar_xBusca;

  dmGeral.AtualizarGridItens(grdItens,'int_desc_item',16,12);

  cbbPesquisaChange(self);
  txtPesquisa.SetFocus;


  label17.Visible := false;
  txtCodPedCmp.Visible := false;
  btnRetirarCmpPed.Visible := false;
  label29.Visible := false;
  txtCodIqm.Visible := false;
  btnRetirarIqm.Visible := false;
  label10.Visible := false;
  cbRAA.Visible := false;

  lblCaixa.Visible := false;
  txtCaixa.Visible := false;


  if (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true) then
    begin
      label17.Visible := true;
      txtCodPedCmp.Visible := true;
      btnRetirarCmpPed.Visible := true;
      label29.Visible := true;
      txtCodIqm.Visible := true;
      btnRetirarIqm.Visible := true;
      label10.Visible := true;
      cbRAA.Visible := true;
    end;

  if (dmgeral.CAD_CD_C_PAR_MODctc.AsBoolean = true) then
    begin
      label17.Visible := true;
      txtCodPedCmp.Visible := true;
      btnRetirarCmpPed.Visible := true;
    end;

  if (dmgeral.CAD_CD_C_PAR_MODctc.AsBoolean = true) then
    begin
      label17.Visible := true;
      txtCodPedCmp.Visible := true;
      btnRetirarCmpPed.Visible := true;
    end;

   if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('informar_caixa_nfe').AsBoolean = true) then
    begin
      lblCaixa.Visible := true;
      txtCaixa.Visible := true;
    end;

   if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('exibir_cond_sem_pag').AsBoolean=true)) then
    begin
      dmGeral.BUS_CD_C_CPG.Filtered := true;
      dmGeral.BUS_CD_C_CPG.Filter := 'tipo_pagamento<>2';
    end;

   txtIdPlanoContasFor.text := '';
   txtDescPctFor.Text       := '';

end;

procedure TEST_FM_M_NFE.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
   try
     grdItensIButton.Enabled := false;
     if dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_NFE_ITE.Delete;
     dmGeral.FAT_CD_M_NFE_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TEST_FM_M_NFE.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if (dmgeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
    begin
      if pnItens.Enabled = false then
         pnItens.Enabled := true;

      dmGeral.FAT_CD_M_NFE_ITE.cancel;

      if dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
         begin
           txtBuscaItem.Enabled := true;
           dmGeral.FAT_CD_M_NFE_ITE.Append;
           pnItens.Enabled := true;
           txtBuscaItem.SetFocus;
         end
      else
         begin
           txtBuscaItem.Enabled := false;
           dmGeral.FAT_CD_M_NFE_ITE.Edit;
           pnItens.Enabled := true;
           txt_CFOP.SetFocus;
         end;
    end;

  if (dmgeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
    begin
      dmGeral.FAT_CD_M_NFE_ITE.cancel;
      if ((not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty) and (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_SELECAO').AsBoolean=true)) then
         begin
           txtBuscaItem.Enabled := false;
           dmGeral.FAT_CD_M_NFE_ITE.Edit;
           pnItens.Enabled := true;
           txt_CFOP.SetFocus;
         end;
    end;

end;

procedure TEST_FM_M_NFE.grdTitulosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdTitulosIButton.Enabled := false;
     if dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_NFE_TIT.Delete;
     dmGeral.FAT_CD_M_NFE_TIT.Edit;
  finally
     grdTitulosIButton.Enabled := true;
  end;
end;

procedure TEST_FM_M_NFE.grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnTitulos.Enabled = false then
     pnTitulos.Enabled := true;

  dmGeral.FAT_CD_M_NFE_TIT.cancel;

  if dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
     begin
       cbbFormaPgto.ReadOnly := False;
       dmGeral.FAT_CD_M_NFE_TIT.Append;
       pnTitulos.Enabled := true;
       cbbFormaPgto.SetFocus;
     end
  else
    begin
      cbbFormaPgto.ReadOnly := true;
      dmGeral.FAT_CD_M_NFE_TIT.Edit;
      pnTitulos.Enabled := true;
      txtDias.SetFocus;
    end;
end;

procedure TEST_FM_M_NFE.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin

  btnRetirarCmpPed.Enabled := Estado;

  if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
     begin
       cbbAlmoxarifado.Enabled := Estado;
       cbbAlmoxarifado.Color   := Cor;
     end;

  txt_NFe_Chave.Enabled := Estado;
  txt_NFe_Chave.Color   := Cor;
  if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='55') and
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
      begin
        txt_NFe_Chave.Enabled := true;
        txt_NFe_Chave.Color   := clWhite;
      end;

  txtCodPedCmp.Enabled := Estado;
  txtCodPedCmp.Color   := Cor;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_COMPRA').AsInteger = 0) then
     begin
       txtCodPedCmp.Enabled := True;
       txtCodPedCmp.Color   := clWhite;
     end;

  txtCodIqm.Enabled := Estado;
  txtCodIqm.Color   := Cor;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString = 'X' then
     begin
       if dmGeral.FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger = 0 then
          begin
            txtCodIqm.Enabled := true;
            txtCodIqm.Color   := clWindow;
          end;
     end;

  cbbFinalidade.Enabled := Estado;

end;

procedure TEST_FM_M_NFE.num_CondicaoPgtoEnter(Sender: TObject);
begin
  inherited;
  xAntCondicaoPgto := dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text;

end;

procedure TEST_FM_M_NFE.num_Total_VlrDescExit(Sender: TObject);
begin
  inherited;
  if pcMovimento.Focused then
     begin
       if btn_Add_Itens.canfocus then
          btn_Add_Itens.SetFocus
       else
          if btn_Add_Fpg.canfocus then
             btn_Add_Fpg.SetFocus
     end;
end;

procedure TEST_FM_M_NFE.num_Total_VlrMercadoriaExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtCodPedCmp.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
    begin
      if not (dmGeral.TesValVlrMerc(dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency)) then
         begin
           num_Total_VlrMercadoria.SetFocus;
           abort;
         end;
    end
  else
    begin
      if (dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency < 0) then
        begin
          ShowMessage('O campo "Vlr. Mercadoria" deve ser igual ou maior que zero.');
          num_Total_VlrMercadoria.SetFocus;
          abort;
        end;
    end;
end;



procedure TEST_FM_M_NFE.PassarCdsAnterior;
begin
  if xCdsItensAntigo <> nil then
     begin
       xCdsItensAntigo.Destroy;
       xCdsItensAntigo := nil;
     end;
  xCdsItensAntigo       := TClientDataSet.Create(self);
  xCdsItensAntigo.Data  := dmGeral.FAT_CD_M_NFE_ITE.Data;
  xCdsItensAntigo.GotoCurrent(dmGeral.FAT_CD_M_NFE_ITE);


  if xCdsTitulosAntigo <> nil then
     begin
       xCdsTitulosAntigo.Destroy;
       xCdsTitulosAntigo := nil;
     end;

  xCdsTitulosAntigo       := TClientDataSet.Create(self);
  xCdsTitulosAntigo.Data  := dmGeral.FAT_CD_M_NFE_TIT.Data;
  xCdsTitulosAntigo.GotoCurrent(dmGeral.FAT_CD_M_NFE_TIT);
end;

procedure TEST_FM_M_NFE.pnChequeExit(Sender: TObject);
var
lid_nfe_tit: string;
begin
  inherited;
  if btnCancelar.Focused then
    begin
      acCancelarExecute(acCancelar);
      exit;
    end;

  //pnCheque.Visible := false;
  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_banco').text = '') or
    (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_agencia').text = '') or
    (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_conta').text = '') or
    (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_numero').text = '') or
    (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('che_emitente').text = '')  then
    begin    
      ShowMessage('Dados do cheque devem ser preenchidos.');

      if not cbbFormaPgto.Focused then
        begin
          txtBanco.SetFocus;
          exit;
        end;
    end
  else
    begin
      {if pnTitulos.Enabled and (not txt_IdPlanoContas.Focused) and
        (not txtDias.Focused) and (not txtVencimento.Focused)  and  (not txtVlrTitulo.Focused) then
        txt_IdPlanoContas.SetFocus;}
      lid_nfe_tit := dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_NFE_TIT').AsString;

      dmGeral.FAT_CD_M_NFE_TIT.Post;

      pnTitulos.Enabled := false;
      btn_Add_Fpg.SetFocus;
      dmGeral.FAT_CD_M_NFE_TIT.locate('ID_NFE_TIT',lid_nfe_tit,[]);
    end;
  //pnTitulos.OnExit := pnTitulosExit;
end;

procedure TEST_FM_M_NFE.pnDadosAdicExit(Sender: TObject);
begin
  inherited;
  pnDadosAdic.Visible := false;
end;

procedure TEST_FM_M_NFE.pnItensExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
     (cbbCor.Focused) or (cbbTamanho.Focused) or (cbbMotDesn.Focused) or (txtLote.Focused) or
     (not grdItensIButton.Enabled) or (txtPerReducaoICM.Focused) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.FAT_CD_M_NFE_ITE.Cancel;
        if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
           dmGeral.FAT_CD_M_NFE_ITE.edit;
        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TEST_FM_M_NFE.pnTitulosExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Fpg.Focused) or (grdTitulos.Focused) or (txtNCheque.Focused)  or  (txtEmitente.Focused)  or
     (not grdTitulosIButton.Enabled) or (txtBanco.Focused) or (txtAgencia.Focused) or (txtContaCorrente.Focused) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmGeral.FAT_CD_M_NFE_TIT.Cancel;
        dmGeral.FAT_CD_M_NFE_TIT.edit;
        finally
           pnTitulos.Enabled := false;
        end;
      end;
end;

//-------------------------- Colocar este código em outro campo --------------------------
{procedure TEST_FM_M_NFE.num_CondicaoPgtoExit(Sender: TObject);
begin
  inherited;
  if ActiveControl = btnCancelar Then Exit;
  if xAntCondicaoPgto <> num_CondicaoPgto.Text then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.Cancel;
       if not dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
          begin
            if MessageDlg('Se alterar a condição de pagamento os vencimentos lançados nesta nota serão apagados, deseja alterar?',
                           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                 while not dmGeral.FAT_CD_M_NFE_TIT.Eof do
                   begin
                     dmGeral.FAT_CD_M_NFE_TIT.delete;
                   end;
               end
            else
               begin
                 num_condicaopgto.Text :=  xAntCondicaoPgto;
                 abort;
               end;
          end;
     end;

  dmGeral.CAD_CD_C_CPG.Close;
  dmGeral.CAD_CD_C_CPG.Data :=
  dmGeral.CAD_CD_C_CPG.DataRequest(VarArrayOf([0, num_CondicaoPgto.Text]));
  if dmGeral.CAD_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de pagamento não cadastrada!');
       num_CondicaoPgto.SetFocus;
       num_CondicaoPgto.Text := '';
       txt_DescCondicaoPgto.text := '';
     end;

  txt_DescCondicaoPgto.Text := dmGeral.CAD_CD_C_CPG.FieldByName('DESCRICAO').text;

  if not dmGeral.CAD_CD_C_CPG.FieldByName('ATIVO').AsBoolean then
     begin
       ShowMessage('Condição de pagamento inativa.');
       num_CondicaoPgto.SetFocus;
       abort;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').Text[1] in ['E'] then
     begin
       if dmGeral.CAD_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 0 then
          begin
            ShowMessage('Condição de pagamento não pode ser do tipo "à vista"');
            num_CondicaoPgto.SetFocus;
            abort;
          end;
     end;
end;}

procedure TEST_FM_M_NFE.txt_AlmoxarifadoEnter(Sender: TObject);
begin
  inherited;

  {dmGeral.PCP_CD_C_ALM.Close;
  dmGeral.PCP_CD_C_ALM.Data :=
  dmGeral.PCP_CD_C_ALM.DataRequest(VarArrayOf([0, txt_Almoxarifado.Text]));
  if dmGeral.PCP_CD_C_ALM.IsEmpty then
     begin
       ShowMessage('Almoxarifado não cadastrado!');
       lbl_Almoxarifado.Caption := '';
       txt_Almoxarifado.SetFocus;
       txt_Almoxarifado.Text := '';
     end;
  lbl_Almoxarifado.Caption := dmGeral.PCP_CD_C_ALM.FieldByName('DESCRICAO').AsString;}

end;

procedure TEST_FM_M_NFE.txt_CFOPButtonClick(Sender: TObject);
begin
   inherited;
   PSQ_FM_X_CFO := TPSQ_FM_X_CFO.Create(Self);
   PSQ_FM_X_CFO.xCfoChamadoPor := 'E';
   PSQ_FM_X_CFO.ShowModal;
   if not PSQ_FM_X_CFO.BUS_CD_C_CFO.IsEmpty then
      begin
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsString :=
          PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('ID_CFO').AsString;
      end;
   PSQ_FM_X_CFO.Free;
end;

procedure TEST_FM_M_NFE.txt_CFOPExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or  cbbCSTIcm.Focused or
     grdItens.Focused   then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsString = '')  then
     begin
        ShowMessage('O campo "CFOP" deve ser preenchido.');
        txt_CFOP.SetFocus;
        abort;
     end;

  dmGeral.BusCfop(0,dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').text);
  if dmGeral.BUS_CD_C_CFO.IsEmpty then
     begin
       ShowMessage('CFOP não cadastrado!');
       txt_CFOP.SetFocus;
       txt_CFOP.Text := '';
       Abort;
     end;

  // A validação do CFOP é feita no OnChange deste campo.


end;

procedure TEST_FM_M_NFE.txt_CFOP_PaiEnter(Sender: TObject);
begin
  inherited;
  xAntCfo := dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text;
end;

//-------------------------- Colocar este código em outro campo --------------------------
{procedure TEST_FM_M_NFE.txt_CFOP_PaiExit(Sender: TObject);
begin
  inherited;
  if ActiveControl = btnCancelar Then Exit;
  if xAntCfo <>  dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.cancel;
       if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
          begin
            ShowMessage('Já existe produtos lançado neste documento, alteração do CFOP não permitida!');
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').Value := xAntCfo;
            exit;
          end;
     end;

  if (trim(txt_Emitente.Text) = '') or (txt_Emitente.Text = '0') then
     begin
       ShowMessage('O campo "Fornecedor" deve ser preenchido.');
       if txt_Emitente.CanFocus then
          begin
            txt_CFOP_Pai.Text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text := '';
            lbl_DescCfop_Pai.text := '';
            txt_Emitente.SetFocus;
          end;
       Abort;
     end;

  dmGeral.CAD_CD_C_CFO.Close;
  dmGeral.CAD_CD_C_CFO.Data :=
  dmGeral.CAD_CD_C_CFO.DataRequest(VarArrayOf([0, txt_CFOP_Pai.Text]));
  if dmGeral.CAD_CD_C_CFO.IsEmpty then
     begin
       ShowMessage('CFOP não cadastrado!');
       lbl_DescCfop_Pai.text := '';
       txt_CFOP_Pai.SetFocus;
       txt_CFOP_Pai.Text := '';
       Abort;
     end;

  lbl_DescCfop_Pai.text := dmGeral.CAD_CD_C_CFO.FieldByName('DESCRICAO').AsString;

  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) then
     begin
       lbl_DescCfop_Pai.text  := '';
       txt_CFOP_Pai.SetFocus;
       txt_CFOP_Pai.Text      := '';
     end;

  pcMovimento.ActivePage := tsItens;
  btnAddItens.SetFocus;

end;}

{
procedure TEST_FM_M_NFE.txt_CST_IPIExit(Sender: TObject);
begin
  inherited;

  if trim(txt_CST_IPI.text) = '' then
     begin
       ShowMessage('O campo situação de IPI deve ser informado!');
       txt_CST_IPI.Text := '';
       txt_CST_IPI.SetFocus;
       abort;
     end;

  dmGeral.BUS_PR_X_IPI(dmGeral.BUS_CD_X_IPI_ENT);
  if not dmGeral.BUS_CD_X_IPI_ENT.locate('CODIGO',txt_CST_IPI.Text,[]) then
     begin
       ShowMessage('Código de IPI não encontrado.');
       txt_CST_IPI.Text := '';
       txt_CST_IPI.setfocus;
       Abort;
     end;

  if pos( trim(txt_CST_IPI.text),'00-04-49-50-51-54-99') <> 0 then
     begin
       if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsFloat = 0 then
          begin
            ShowMessage('O campo "% IPI" deve ser preenchido, devido a situação IPI informada.');
            txt_PerIPI.SetFocus;
            abort;
          end
       else if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsFloat > 0 then
          begin
            ShowMessage('O campo "% IPI" não pode ser preenchido, devido a situação IPI informada.');
            txt_PerIPI.SetFocus;
            abort;
          end;
     end;
end;
}

procedure TEST_FM_M_NFE.txt_EmitenteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
       dmGeral.FAT_CD_M_NFE.FieldByName('int_nomeemi').text       :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
     end;
   PSQ_FM_X_FOR.Free;
end;

procedure TEST_FM_M_NFE.txt_EmitenteEnter(Sender: TObject);
begin
  inherited;
  xAntEmitente := dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text;

  txtIdPlanoContasFor.text := '';
  txtDescPctFor.Text       := '';

end;

procedure TEST_FM_M_NFE.txt_EmitenteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if xAntEmitente <>  dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.cancel;
       if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
          begin
            ShowMessage('Já existe produtos lançado neste documento, alteração do fornecedor não permitida!');
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Value := xAntEmitente;
            exit;
          end;
     end;

  dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').Text := '';

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text = '' then
     begin
       ShowMessage('O campo "Emitente" deve ser prenchido.');
       txt_Emitente.SetFocus;
       abort;
     end;

  if (trim(cbbTipoEstoque.Text) = '') or (cbbTipoEstoque.Text = '0') then
     begin
       ShowMessage('O campo "Tipo de estoque" deve ser preenchido.');
       if txt_Emitente.CanFocus then
          begin
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text  := '';
            cbbTipoEstoque.SetFocus;
          end;
       Abort;
     end;

  dmGeral.BusFornecedor(0,txt_Emitente.Text);
  if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text  := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_CONTRIBUINTE').text  := '';
       txt_Emitente.SetFocus;
       exit;
     end;

  if dmGeral.BUS_CD_C_FOR.FieldByName('TRANSPORTADORA').AsBoolean then
     begin
       ShowMessage('O fornecedor não pode ser "Transportador".');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text  := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_CONTRIBUINTE').text  := '';
       txt_Emitente.SetFocus;
       exit;
     end;

  dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;


  dmGeral.FAT_CD_M_NFE.FieldByName('CPF_CNPJ').text :=
     dmGeral.BUS_CD_C_FOR.FieldByName('DOC_CNPJ').AsString;


  dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').AsString;

  dmGeral.FAT_CD_M_NFE.FieldByName('INT_CONTRIBUINTE').AsInteger :=
          dmGeral.BUS_CD_C_FOR.FieldByName('CONTRIBUINTE').AsInteger;


  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
    begin
       if trim(dmGeral.BUS_CD_C_FOR.FieldByName('id_plano').AsString) = '' then
          begin
            showmessage('O plano de contas do fornecedor não foi encontrado.' +#13 +
                        'Se for lançar os títulos, você terá que informar o plano de contas nos títulos manualmente.');
          end
       else
          begin
            txtIdPlanoContasFor.text := dmGeral.bus_cd_c_for.FieldByName('id_plano').AsString;
            txtDescPctFor.Text       := dmGeral.bus_cd_c_for.FieldByName('int_nomepct').AsString;
          end;
    end;

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text :=
          dmGeral.BusCFOPDoc(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text,dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text,'','',true);



  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) then
     begin
       ShowMessage('O CFOP que se encontra no cadastro de tipo de estoque está errado para essa operação!');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text  := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_CONTRIBUINTE').text  := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text      := '';
       txt_Emitente.SetFocus;
       abort;
     end;

  AltBusLookupDoCstIcm;
end;

procedure TEST_FM_M_NFE.txt_IdPlanoContasButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_PCT := TPSQ_FM_X_PCT.Create(Self);
   PSQ_FM_X_PCT.xPctChamadaPor := 'E';
   PSQ_FM_X_PCT.ShowModal;
      if not PSQ_FM_X_PCT.BUS_CD_C_PCT.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').AsString :=
             PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
         end;
   PSQ_FM_X_PCT.Free;
end;

procedure TEST_FM_M_NFE.txt_IdPlanoContasExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or grdTitulos.Focused or
     cbbFormaPgto.Focused  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '') or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPgto.SetFocus;
       abort;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').text = '') then
     begin
       Showmessage('O campo "Plano de contas" deve ser preenchido.');
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.BusPlanoCta(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text);

  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       ShowMessage('Plano de contas não encontrada.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := '';
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text    := dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').Text;
  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;

  if dmGeral.BUS_CD_C_PCT.FieldByName('TIPO').AsInteger <> 0 then
     begin
       ShowMessage('Só é permitido plano de contas do tipo "Analítico".');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := '';
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  if not (dmGeral.BUS_CD_C_PCT.FieldByName('TIPO_DESP').AsInteger in [0,2]) then
     begin
       ShowMessage('Só é permitido plano de contas com tipo "Despesa" ou "Sem fluxo".');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := '';
       txt_IdPlanoContas.SetFocus;
       abort;
     end;
end;


procedure TEST_FM_M_NFE.txt_IdTipoEstoqueEnter(Sender: TObject);
begin
  inherited;
  xAntIdTipoEstoque := dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text;
end;

procedure TEST_FM_M_NFE.txt_NFe_ChaveExit(Sender: TObject);
begin
  inherited;
{  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;}

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('NFE_CHAVE').asString) <> '' then
     begin
        if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='55') and
           (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
            begin
              if (dmGeral.ValChaveNFe(dmGeral.RemoveCaracteres(txt_NFe_Chave.Text))= false) or
                 (not dmGeral.ValChaveNFe(txt_NFe_Chave.Text))  then
                 begin
                   Showmessage('Campo "Chave de acesso" inválido!');
                   txt_NFe_Chave.SetFocus;
                   Abort;
                 end;
            end;
     end;
end;

procedure TEST_FM_M_NFE.txt_NumeroExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').IsNull) or
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger = 0)  then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger := 0; // Nota  própria
       dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger       := 0; // Aberto
       dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger       := 0;
     end
  else
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger := 1;
       dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger       := 1; // Encerrada
     end;

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_FRETE').AsInteger := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency      := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger       := 1;//Alterei de 0 para 1.Responsavel:Luan.Data:02/07/2015

  if dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0 then
      begin
        dmGeral.BusConhecimento(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsString,
                                dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString);
        if not dmGeral.BUS_CD_M_NFE_NFF.IsEmpty then
           begin
             dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_FRETE').AsInteger := dmGeral.BUS_CD_M_NFE_NFF.FieldByName('ID_FISCAL').AsInteger;
             dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency      := dmGeral.BUS_CD_M_NFE_NFF.FieldByName('VLR_FRETE').AsCurrency;
             dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger       := dmGeral.BUS_CD_M_NFE_NFF.FieldByName('IND_FRETE').AsInteger;
           end
        else
           begin
             dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger       := 1;//Alterei de 0 para 1.Responsavel:Luan.Data:02/07/2015
           end;
        dmGeral.BUS_CD_M_NFE_NFF.close;
      end
  else
      begin
        if xOperacaoForm = 'A' then
           begin
             if dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger = 1 then // Nota de Terceiro
                begin
                  ShowMessage('Este campo não poder ficar em branco ou com zero pois é uma nota de terceiros.');
                  exit;
                end;
           end;
      end;
end;

procedure TEST_FM_M_NFE.txt_PerIPIExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: String;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger <> 2) then
    begin
      if txtBuscaItem.Focused or cbbCSTIcm.Focused or
         grdItens.Focused or txt_CFOP.Focused or
         txtQtde.Focused or txtVlrMercadoria.Focused or
         txtVlrDesconto.Focused or cbbID_ST_IPI.Focused or
         txtVlrBaseIcmIte.Focused or txtVlrIcmIte.Focused or
         txtVlrBaseSubIcmIte.Focused or txtVlrSubIcmIte.Focused then
         begin
           exit;
         end;
    end;

  if not (dmGeral.TesValPerNf(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency)) then
     begin
       txt_PerIPI.SetFocus;
       abort;
     end;

  {if (pos(trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByname('id_st_icm').AsString),'20-30-40-41-50-70-90') <> 0) then
     begin
       pnlDesn.Visible := true;
       cbbMotDesn.SetFocus;
       exit;
     end;  }

  seq_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsString;

  if (trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsString) = '0') and
    (trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsString) = '0') then
     begin
       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

  CalcPesoItem(dmGeral.FAT_CD_M_NFE_ITE);


  dmGeral.CalculaTributos(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);

  {
    (+) Valor Mercadoria (campo VLR_MERCADORIA)
    (-) Desconto (campo VLR_DESCONTO)
    (+) Valor Subst.Tributaria (campo ICM_S_VALOR)
    (+) Valor Frete (campo FRE_CUSTO)
    (+) Valor Seguro (campo VLR_SEGURO)
    (+) Valor Outros (campo VLR_OUTRAS_DESP)
    (+) Imposto Importação (campo IMP_VALOR)
    (+) Valor do IPI (campo IPI_VALOR)
    (+) Valor do Serviço Não incidente de ICMS (VLR_ICM_SER_NÃO_INCIDE)
  }

  // 09/03/2016  esse código foi colocado no BeforePost do FAT_CD_M_NFE_ITE.
    // por Maxsuel Victor
  //dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_CUSTO').AsCurrency :=
  //     FAT_RN_M_NFE.CalcVlrCustoIteEntrada(dmGeral.FAT_CD_M_NFE_ITE);

  dmGeral.FAT_CD_M_NFE_ITE.Post;

  pnItens.Enabled := false;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
    btn_Add_Itens.SetFocus;

  dmGeral.FAT_CD_M_NFE_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TEST_FM_M_NFE.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   xFormRespPSQ_ITE := EST_FM_M_NFE.Name;

   PSQ_FM_X_ITE.cmbParametro.ItemIndex := 1;

   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_desc_item').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TEST_FM_M_NFE.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  lRegimeSimples: Boolean;
  tipo_item: integer;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;


  if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (txtQtde.Focused) or
          txt_CFOP.Focused  or (txtVlrMercadoria.Focused) or
          (txtVlrDesconto.Focused) or (txtPerDesconto.Focused) or
          cbbID_ST_IPI.Focused or txt_PerIPI.Focused then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
             pnItens.Enabled := false;
             pcMovimento.TabIndex := 1;
             btn_Add_Fpg.SetFocus;
             exit;
           end;
     end
  else
     begin
       if dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger = 0 then
          begin
            ShowMessage('O campo "Tipo de estoque" deve ser preenchido.');
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text         := '';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text   := '';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text   := '';
            abort;
          end;

       if dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger = 0 then
          begin
            ShowMessage('O campo "Emitente" deve ser preenchido.');
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text         := '';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text   := '';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text   := '';
            abort;
          end;

       if trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) = '' then
          begin
            ShowMessage('O campo "Cfop" deve ser preenchido.');
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text         := '';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text   := '';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text   := '';
            abort;
          end;

       if dmGeral.FAT_CD_M_PED_ITE.state in [dsBrowse] then
          dmGeral.FAT_CD_M_PED_ITE.edit;
     end;


  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text  := '';
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text  := '';

  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
     end;

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text := '';
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text  := '';
       exit;
     end;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsInteger :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ORIGEM_MERCADORIA').AsString  := dmGeral.BUS_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_origem').AsString :=
                       dmGeral.BUS_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

  dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString);

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString :=
               dmGeral.BUS_CD_C_ITE.FieldByName('INT_IPI_ENTRADA').AsString;

  dmGeral.BUS_PR_X_PIS_ENT;
  dmGeral.BUS_PR_X_COF_ENT;
  if dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2 then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString := '99';
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString := '99';
     end
  else
     begin
       { Maxsuel Victor
         If, colocado em 02/03/2016 a pedido de Sangia, na tefa 1124.}
       if dmGeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 1 then // Lucro Presumido
          begin
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString := '73';
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString := '73';
          end
       else
          begin
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString :=
                    dmGeral.BUS_CD_C_ITE.FieldByName('INT_PIS_ENTRADA').AsString;
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString :=
                    dmGeral.BUS_CD_C_ITE.FieldByName('INT_COF_ENTRADA').AsString;
          end;
     end;
  cbbCST_PIS_Entrada.Text := dmGeral.BUS_CD_X_PIS_ENT.FieldByName('DESCRICAO').AsString;
  cbbCST_PIS_Entrada.SetSelText(dmGeral.BUS_CD_X_PIS_ENT.FieldByName('DESCRICAO').AsString);
  cbbCST_COFINS_Entrada.Text := dmGeral.BUS_CD_X_COF_ENT.FieldByName('DESCRICAO').AsString;
  cbbCST_COFINS_Entrada.SetSelText(dmGeral.BUS_CD_X_COF_ENT.FieldByName('DESCRICAO').AsString);

 {if not FAT_RN_M_NFE.VerifTribItem(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text, dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').Text,
                                    dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text,
                                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text,
                                    dmGeral.FAT_CD_M_NFE.FieldByName('id_tipo_mov_estoque').Text,
                                    'V') then
     begin
        Showmessage('A tributação do item não foi encontrada');
        txtBuscaItem.SetFocus;
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text := '';
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').Text := '';
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text := '';
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text := '';
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').text := '';
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').Text := '';
        abort;
     end;}

  //dmGeral.BusFornecedor(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text);
  //BuscarCstIcm(dmGeral.FAT_CD_M_NFE_ITE,'F',lRegimeSimples);
  try
     pnItens.onExit := nil;

  finally
     pnItens.OnExit := pnItensExit;
  end;
end;





procedure TEST_FM_M_NFE.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     pcMovimento.ActivePage := tsTitulos;

  if key = vk_f7 then
     Atualizar_xBusca;

end;

procedure TEST_FM_M_NFE.cbbCSTIcmEnter(Sender: TObject);
begin
  inherited;

  cbbCSTIcm.DropDown;

end;

procedure TEST_FM_M_NFE.cbbCSTIcmExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_st_icm').AsString = '')  then
     begin
        ShowMessage('O campo "CST" deve ser preenchido.');
        cbbCSTIcm.SetFocus;
        abort;
     end;

  if dmGeral.BUS_CD_C_FORregime.AsInteger = 0 then
      begin
       if (not dmGeral.BUS_CD_X_ICM_OSN_ICO.Locate('CODIGO',dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString,[])) then
         begin
           ShowMessage('CST inválido.');
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_st_icm').AsString := '';
           cbbCSTIcm.SetFocus;
           exit;
         end;
      end;

  if dmGeral.BUS_CD_C_FORregime.AsInteger IN [1,2] then
      begin
       if (not dmGeral.BUS_CD_X_ICM_ICO.Locate('CODIGO',dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString,[])) then
         begin
           ShowMessage('CST inválido');
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_st_icm').AsString := '';
           cbbCSTIcm.SetFocus;
           exit;
         end;
      end;

  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
          dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text]));

  if dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then // Se não for Serviço
     ChamaCorTamanho;
end;

procedure TEST_FM_M_NFE.cbbCST_COFINS_EntradaEnter(Sender: TObject);
begin

  inherited;
  dmGeral.BUS_PR_X_COF_ENT;
  cbbCST_COFINS_Entrada.DropDown;
  cbbCST_COFINS_Entrada.SetSelText(dmGeral.BUS_CD_X_COF_ENT.FieldByName('DESCRICAO').AsString);
end;

procedure TEST_FM_M_NFE.cbbCST_COFINS_EntradaExit(Sender: TObject);
begin
  inherited;
  if (not txtPerReducaoICM.Focused)      and
     (not txtVlrIcmSValor.Focused)       and
     (not cbbOrigemMercadoria.Focused)   and
     (not cbbCST_PIS_Entrada.Focused)    and
     (not cbbCST_COFINS_Entrada.Focused) then
     begin
       //txt_PerIPI.SetFocus;
       cbbID_ST_IPI.SetFocus;
     end;
end;

procedure TEST_FM_M_NFE.cbbCST_PIS_EntradaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_PIS_ENT;
  cbbCST_PIS_Entrada.DropDown;
  cbbCST_PIS_Entrada.SetSelText(dmGeral.BUS_CD_X_PIS_ENT.FieldByName('DESCRICAO').AsString);
end;

procedure TEST_FM_M_NFE.txtCaixaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CXA := TPSQ_FM_X_CXA.Create(Self);
  PSQ_FM_X_CXA.ShowModal;
  if not PSQ_FM_X_CXA.BUS_CD_M_CXA.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger :=
               PSQ_FM_X_CXA.BUS_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger;

     end;
   PSQ_FM_X_CXA.Free;
end;

procedure TEST_FM_M_NFE.txtCaixaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger > 0) then
     begin
        dmGeral.BUS_CD_M_CXA.Close;
        dmGeral.BUS_CD_M_CXA.Data :=
        dmGeral.BUS_CD_M_CXA.DataRequest(
           VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsString]));

        if (dmGeral.BUS_CD_M_CXA.FieldByName('ID_EMPRESA').AsInteger <>
            dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger) then
          begin
            ShowMessage('Caixa é de outra filial.');
            txtCaixa.SetFocus;
          end;

        if (dmGeral.BUS_CD_M_CXA.FieldByName('STATUS').AsInteger = 1) then
          begin
            ShowMessage('Caixa está fechado.');
            txtCaixa.SetFocus;
          end;

        dmGeral.BusFuncionario2(0,dmGeral.BUS_CD_M_CXA.FieldByName('ID_FUNCIONARIO').AsString);
        if (dmGeral.BUS_CD_C_FU2.FieldByName('ATIVO').AsBoolean = false) then
          begin
            ShowMessage('Funcionário do caixa está inativo.');
            txtCaixa.SetFocus;
          end;
        dmGeral.BUS_CD_C_FU2.Close;
     end;
end;

procedure TEST_FM_M_NFE.txtCodIqmButtonClick(Sender: TObject);
begin
  inherited;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger  = 0) then
     begin
       ShowMessage('O campo "Emitente" deve ser prenchido.');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').FocusControl;
       abort;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger  = 0)  then
      begin
        ShowMessage('O campo "Número" deve ser prenchido.');
        dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').FocusControl;
        abort;
      end;

  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text) = '' then
     begin
       ShowMessage('O campo "Série" deve ser prenchido.');
       dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').FocusControl;
       abort;
     end;

   if (trim(dmGeral.FAT_CD_M_NFEid_pedido_compra.text) <> '' ) and
      (dmGeral.FAT_CD_M_NFEid_pedido_compra.AsInteger > 0) then
      begin
        ShowMessage('Já foi feito importação de pedido de compra para esta nota fiscal.');
        abort;
      end;

  dmGeral.FAT_CD_M_NFE_ITE.Cancel;
  if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
     begin
       if (dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString <> 'X') or
          (
             (dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString = 'X') and
             (dmGeral.FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger = 0)
           ) then
           begin
             if MessageDlg('Já existem itens lançado na nota fiscal.' + #13 +
                           'Se continuar os itens da nota serão apagados.' + #13 +
                           'Deseja fazer uma nova importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                  dmGeral.FAT_CD_M_NFE_ITE.First;
                  while not dmGeral.FAT_CD_M_NFE_ITE.Eof do
                     begin
                       dmGeral.FAT_CD_M_NFE_ITE.Delete;
                       dmGeral.FAT_CD_M_NFE_ITE.First;  // Precisa desta linha aqui, devido a eventos do CDS dele.
                     end;
                end;
           end;
     end;

  Application.CreateForm(TFAT_FM_M_NFE_IPQ,FAT_FM_M_NFE_IPQ);
  FAT_FM_M_NFE_IPQ.xOriChamada := 0;
  FAT_FM_M_NFE_IPQ.ShowModal;
  FAT_FM_M_NFE_IPQ.Free;
  if not dmGeral.BUS_CD_M_IQM.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger := dmGeral.BUS_CD_M_IQMid_iqm.AsInteger;
     end;
  txtCodIqm.SetFocus;
end;

procedure TEST_FM_M_NFE.txtCodIqmExit(Sender: TObject);
begin
  inherited;
  if (dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').Text <> '') then
     begin
       dmGeral.BUS_PR_X_FRE;
     end;
end;

procedure TEST_FM_M_NFE.txtCodPedCmpButtonClick(Sender: TObject);
begin
  inherited;

   if dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text = '' then
     begin
       ShowMessage('O campo "Emitente" deve ser prenchido.');
       abort;
     end;

   if (trim(dmGeral.FAT_CD_M_NFEid_iqm.text) <> '' ) and
      (dmGeral.FAT_CD_M_NFEid_iqm.AsInteger > 0) then
      begin
        ShowMessage('Já foi feito importação de inspeção de itens para esta nota fiscal.');
        abort;
      end;

  dmGeral.FAT_CD_M_NFE_ITE.Cancel;
  if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
     begin
       if MessageDlg('Já existem itens lançado na nota fiscal.' + #13 +
                     'Se continuar os itens da nota serão apagados.' + #13 +
                     'Deseja fazer uma nova importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            dmGeral.FAT_CD_M_NFE_ITE.First;
            while not dmGeral.FAT_CD_M_NFE_ITE.Eof do
               begin
                 dmGeral.FAT_CD_M_NFE_ITE.Delete;
               end;
          end;
     end;

  Application.CreateForm(TFAT_FM_M_NFE_IPE,FAT_FM_M_NFE_IPE);
  FAT_FM_M_NFE_IPE.xOriChamada := 0;
  FAT_FM_M_NFE_IPE.ShowModal;
  FAT_FM_M_NFE_IPE.Free;
  if not dmGeral.CMP_CD_M_PED.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_COMPRA').AsInteger := dmGeral.CMP_CD_M_PEDid_pedido.AsInteger;
     end;

  txtCodPedCmp.SetFocus;
end;

procedure TEST_FM_M_NFE.txtCodPedCmpExit(Sender: TObject);
begin
  inherited;
   if dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').Text <> '' then
     begin
       dmGeral.BUS_PR_X_FRE;
     end;
end;

procedure TEST_FM_M_NFE.txtDiasExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or grdTitulos.Focused or
     cbbFormaPgto.Focused  or txt_IdPlanoContas.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').text = '') then
     begin
       Showmessage('O campo "Plano de contas" deve ser preenchido.');
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  if not (dmGeral.TesValDias(dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').AsInteger)) then
     begin
       txtDias.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime +
                   dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').AsInteger;

end;

procedure TEST_FM_M_NFE.txtGerFpgButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);


   PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
   PSQ_FM_X_FPG.BUS_CD_C_FPG.data :=
        PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
             VarArrayOf([2,1]));

  PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtGerFpg.SetFocus;
       txtGerFpg.Text :=
            PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;

  PSQ_FM_X_FPG.Free;
end;

procedure TEST_FM_M_NFE.txtGerFpgExit(Sender: TObject);
var
  prosseguirFpgHrq:Boolean;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtGerFpg.text) <> '') and
     (txtGerFpg.Text <> '0') then
     begin
        try
        dmGeral.BUS_CD_C_FPG2.Close;
        dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtGerFpg.Text]));
        if dmGeral.BUS_CD_C_FPG2.IsEmpty then
           begin
             ShowMessage('Forma de pagamento não encontrada.');
             txtGerFpg.Text := '';
             txtGerFpg.SetFocus;
             abort;
           end
        else
           begin
             if (dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <>1)  then
                  begin
                     ShowMessage('É permitido somente forma de pagamento tipo a prazo.');
                     txtGerFpg.Text := '';
                     txtGerFpg.SetFocus;
                     abort;
                  end;

           end;

        finally
          dmGeral.BUS_CD_C_FPG2.close;
        end;
     end
  else
     begin
       txtQtdeParc.Text := '0';
     end;
end;

procedure TEST_FM_M_NFE.txtIcmsDesnIteExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
  codCST:String;
begin
  inherited;
  codCST := trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString);

   if not(((pos(codCST,'40-41-50')<>0) and (not (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('motivo_icms_des').AsInteger in [2,12]))) or
         ((pos(codCST,'30')<>0) and (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('motivo_icms_des').AsInteger in [6,7,9])) or
         ((pos(codCST,'20-70-90')<>0) and (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('motivo_icms_des').AsInteger in [3,9,12])) ) then
      begin
         if(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency>0) then
           begin
            ShowMessage('O valor icms desonerado tem que ser 0.');
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency :=0;
            txtIcmsDesnIte.SetFocus;
            exit;
           end;
      end;



  seq_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsString;

  if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
     begin
       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

 CalcPesoItem(dmGeral.FAT_CD_M_NFE_ITE);


  dmGeral.CalculaTributos(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);



  dmGeral.FAT_CD_M_NFE_ITE.Post;

  pnlDesn.Visible := false;
  pnItens.Enabled := false;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
    btn_Add_Itens.SetFocus;

  dmGeral.FAT_CD_M_NFE_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TEST_FM_M_NFE.txtIdFiscalRefButtonClick(Sender: TObject);
begin
  inherited;
  EST_FM_M_NFS_CPM := TEST_FM_M_NFS_CPM.Create(Self);
  EST_FM_M_NFS_CPM.xFormCall := EST_FM_M_NFE.Name;
  EST_FM_M_NFS_CPM.ShowModal;
  EST_FM_M_NFS_CPM.Free;
end;

procedure TEST_FM_M_NFE.txtIdFiscalRefExit(Sender: TObject);
var
  msg:String;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

    if cbbFinalidade.Focused then
      begin
        exit;
      end;

    msg := '';
   // lblDescCFOP.Caption := '';
    dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString :='';

    if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsString = '') then
      begin
        ShowMessage('Deve ser preenchido Nº fiscal da nota referenciada.');
        txtIdFiscalRef.SetFocus;
        exit;
      end;

    dmGeral.BUS_CD_M_NFE.Close;
    dmGeral.BUS_CD_M_NFE.Data :=
    dmGeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,'E',
                     dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsString]));


    if dmGeral.BUS_CD_M_NFE.IsEmpty then
      begin
        ShowMessage('Nota fiscal não encontrada.');
         txtIdFiscalRef.Text := '';
        txtIdFiscalRef.SetFocus;
        exit;
      end;

    if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_ECF').AsInteger <> 0) then
       begin
         msg := msg + 'Não é nota fiscal eletrônica.'+#13+#10;
       end;

    if not((dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger >0) and
          (not (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString ='02')) and
          (not (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString ='04')) and
          (not (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString ='05'))) then
       begin
         msg := msg + 'Nota não está faturada.'+#13+#10;
       end;

    if dmGeral.FAT_CD_M_NFE.FieldByname('ID_EMITENTE').AsInteger <>
        dmGeral.BUS_CD_M_NFE.FieldByname('ID_EMITENTE').AsInteger  then
       begin
           msg := msg + 'Cód. Emitente.'+#13+#10;
       end;

    if dmGeral.FAT_CD_M_NFE.FieldByname('ID_EMPRESA').AsInteger <>
        dmGeral.BUS_CD_M_NFE.FieldByname('ID_EMPRESA').AsInteger  then
       begin
           msg := msg + 'Cód. Empresa.'+#13+#10;
       end;


    if msg <> '' then
      begin
       ShowMessage('Há seguintes inconsistências:'+#13+#10+msg);
       txtIdFiscalRef.Text := '';
       txtIdFiscalRef.SetFocus;
       exit;
      end;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString :=
                                 dmGeral.BUS_CD_M_NFE.FieldByName('ID_CFO').AsString;

  {dmGeral.CAD_CD_C_CFO.Close;
  dmGeral.CAD_CD_C_CFO.Data :=
  dmGeral.CAD_CD_C_CFO.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString]));
  lblDescCFOP.Caption := dmGeral.CAD_CD_C_CFO.FieldByName('DESCRICAO').AsString;}
  txt_Numero.SetFocus;
end;

procedure TEST_FM_M_NFE.txtLoteExit(Sender: TObject);
begin
  inherited;
  if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('NUM_LOTE').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlLote.Visible := False;
           exit;
         end;

       Showmessage('O campo "Lote" deve ser preenchido.');
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('NUM_LOTE').Text := '';
       txtLote.SetFocus;
       exit;
     end;
   txtLoteVenc.SetFocus;
end;

procedure TEST_FM_M_NFE.txtLoteVencExit(Sender: TObject);
begin
  inherited;
   if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DTA_VENCIMENTO').Text) = '' then
     begin
      if btnGrava.Focused  then
         begin
           pnlLote.Visible := False;
           exit;
         end;

      if txtLote.Focused then
         begin
           exit;
         end;

       Showmessage('O campo "Vencimento" deve ser preenchido.');
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DTA_VENCIMENTO').Text := '';
       txtLoteVenc.SetFocus;
       exit;
     end;
   pnlLote.Visible := false;
   txtVlrMercadoria.SetFocus;
end;

procedure TEST_FM_M_NFE.cbbFinalidadeChange(Sender: TObject);
begin
  inherited;
  if cbbFinalidade.ItemIndex = 0 then
     begin
       lblNfeRef.Visible := false;
       txtIdFiscalRef.Visible := false;
       cbbCFOP.Enabled := true;
       btn_Add_Itens.Enabled := true;

       num_VlrFreteNF.Enabled := true;
       num_VlrSeguro.Enabled := true;
       num_VlrOutrasDesp.Enabled := true;
       num_Total_VlrDesc.Enabled := true;
       num_VlrIcmDesc.Enabled := true;

       cbbID_ST_IPI.ReadOnly := false;
       cbbCST_PIS_Entrada.ReadOnly := false;
       cbbCST_COFINS_Entrada.ReadOnly := false;
     end
   else if cbbFinalidade.ItemIndex = 1 then
     begin
       lblNfeRef.Visible := true;
       txtIdFiscalRef.Visible := true;
       cbbCFOP.Enabled := false;
       btn_Add_Itens.Enabled := false;

       num_VlrFreteNF.Enabled := false;
       num_VlrSeguro.Enabled := false;
       num_VlrOutrasDesp.Enabled := false;
       num_Total_VlrDesc.Enabled := false;
       num_VlrIcmDesc.Enabled := false;

       cbbID_ST_IPI.ReadOnly := true;
       cbbCST_PIS_Entrada.ReadOnly := true;
       cbbCST_COFINS_Entrada.ReadOnly := true;
     end;
end;

procedure TEST_FM_M_NFE.cbbFinalidadeEnter(Sender: TObject);
begin
  inherited;
  cbbFinalidade.DropDown;
end;

procedure TEST_FM_M_NFE.cbbFinalidadeExit(Sender: TObject);
begin
  inherited;
  dmgeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsString := '';
  while (dmgeral.FAT_CD_M_NFE_ITE.RecordCount>0) do
     dmGeral.FAT_CD_M_NFE_ITE.Delete;
end;

procedure TEST_FM_M_NFE.cbbFormaPgtoEnter(Sender: TObject);
begin
  inherited;
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('informar_caixa_nfe').AsBoolean=true) then
    begin
      if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then
        begin
          dmGeral.BusFormaPgtos(2,'0');
        end
      else
        begin
          dmGeral.BusFormaPgtos(1,'%');
        end;
    end
  else
    begin
     dmGeral.BusFormaPgtos(4,'''1'',''2'',''4'',''6''');
    end;
  cbbFormaPgto.DropDown;
end;

procedure TEST_FM_M_NFE.cbbFormaPgtoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Fpg.Focused or grdTitulos.Focused  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
         if btnCancelar.Focused or
            btnGrava.Focused  then
            begin
              exit;
            end;

         if btn_Add_Itens.Focused then
            exit;

         if grdTitulos.Focused then
            exit;

         if not grdTitulosIButton.Enabled then
            exit;

         if txt_IdPlanoContas.Focused or txtDias.Focused  or
            txtVencimento.Focused or txtVlrTitulo.Focused then
            begin
              Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
              cbbFormaPgto.SetFocus;
              abort;
            end
         else
            begin
              pnTitulos.Enabled := false;
              exit;
            end;
     end
  else
     begin
       if dmGeral.FAT_CD_M_NFE_TIT.state in [dsBrowse] then
          dmGeral.FAT_CD_M_NFE_TIT.edit;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPgto.SetFocus;
       abort;
     end;

  if not dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
     begin
       ShowMessage('Só é permitido forma de pagamento do tipo "A prazo".');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPgto.SetFocus;
       abort;
     end;

  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }

  {if not (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,4,6]) then
     begin
       ShowMessage('Só é permitido forma de pagamento do tipo: Duplicata, Promissória, Boleto ou Cheque.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPgto.SetFocus;
       abort;
     end;}

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomefpg').AsString := dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text  := txtIdPlanoContasFor.text;
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_CCUSTO').Text := dmGeral.BUS_CD_C_FPG.FieldByName('ID_CCUSTO').Text;
       dmGeral.BusPlanoCta(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text);
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_NOMEPCT').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
        if trim(dmGeral.BUS_CD_C_FPG.FieldByName('COM_ID_PLANO').Text) <> '' then
           begin
              dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text    := dmGeral.BUS_CD_C_FPG.FieldByName('COM_ID_PLANO').Text;
              dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_CCUSTO').Text    := dmGeral.BUS_CD_C_FPG.FieldByName('ID_CCUSTO').Text;
              dmGeral.BusPlanoCta(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text);
              dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_NOMEPCT').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
           end;
     end;

  if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').Text <> '6' then
    begin
       dmGeral.FAT_CD_M_NFE_TITche_banco.Text := '';
       dmGeral.FAT_CD_M_NFE_TITche_agencia.Text := '';
       dmGeral.FAT_CD_M_NFE_TITche_conta.Text := '';
       dmGeral.FAT_CD_M_NFE_TITche_numero.Text := '';
       dmGeral.FAT_CD_M_NFE_TITche_emitente.Text := '';
    end;
end;

procedure TEST_FM_M_NFE.txtPerDescontoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused or  cbbCSTIcm.Focused or
     txt_CFOP.Focused or txtQtde.Focused or txtVlrMercadoria.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValPerNf(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency)) then
     begin
       txtPerDesconto.SetFocus;
       abort;
     end;
end;

procedure TEST_FM_M_NFE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TEST_FM_M_NFE.txtQtdeExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused or cbbCSTIcm.Focused or
     txt_CFOP.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
     begin
       if not (dmGeral.TesValQtde(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat)) then
         begin
           txtQtde.SetFocus;
           abort;
         end;
     end
  else
     begin
       if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat < 0) then
         begin
           ShowMessage('O campo "Qtde" deve ser igual ou maior que zero.');
           txtQtde.SetFocus;
           abort;
         end;
     end;




  if dmGeral.FAT_CD_M_NFE_ITE.State in [dsInsert] then
    begin
      if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = TRUE and
         dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_LOTE_NA_ENTRADA').AsBoolean = true   then
         begin
           dmGeral.BusItens(0,dmGeral.FAT_CD_M_NFE_ITE.FieldBYName('ID_ITEM').AsString);
           if ((dmGeral.BUS_CD_C_ITE.FieldByName('INT_CTR_LOT_ENTR').AsBoolean = true) or
               (dmGeral.BUS_CD_C_ITE.FieldByName('INT_LOTE_GRU').AsBoolean = true))  then
             begin
                pnlLote.Top := 60;
                pnlLote.Left := 269;
                pnlLote.Visible := true;
                txtLote.SetFocus;
             end;
         end;
    end;

end;

procedure TEST_FM_M_NFE.txtQtdeParcExit(Sender: TObject);
var
 vlrParcela:Currency;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if ((trim(txtGerFpg.text) = '') or
     (txtGerFpg.Text = '0')) and
     ((trim(txtQtdeParc.text) <> '') and
      (txtQtdeParc.Text <> '0'))  then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser prenchido.');
       abort;
     end;

  if (trim(txtQtdeParc.text) = '') or
     (txtQtdeParc.Text = '0') then
     begin
       txtGerFpg.Text := '';
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       ShowMessage('Nota fiscal sem valor.');
       exit;
     end;

  if strtoint(txtQtdeParc.text) < 0 then
     begin
       ShowMessage('O campo "Qtde de parcelas" não pode ser menor que 0.');
       txtQtdeParc.text := '0';
       txtQtdeParc.SetFocus;
       abort;
     end;


   dmGeral.BusFormaPgtos2(0,trim(txtGerFpg.text));


   dmGeral.BUS_CD_C_FPG2.Close;
   dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtGerFpg.Text]));
    if dmGeral.BUS_CD_C_FPG2.IsEmpty then
       begin
         ShowMessage('Forma de pagamento não encontrada.');
         txtGerFpg.Text := '';
         txtGerFpg.SetFocus;
         abort;
       end
    else
       begin
         if (dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <>1)  then
              begin
                 ShowMessage('É permitido somente forma de pagamento tipo a prazo.');
                 txtGerFpg.Text := '';
                 txtGerFpg.SetFocus;
                 abort;
              end;
       end;



   vlrParcela := RoundTo(dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency/
                       (strtoint(txtQtdeParc.text)*1.0),-2 );




  dmGeral.GerarFPG_Doc(txtGerFpg.Text,dmGeral.BUS_CD_C_FPG2.FieldByName('COM_ID_PLANO').AsString,
                                     dmGeral.BUS_CD_C_FPG2.FieldByName('ID_CCUSTO').AsString,strtoint(txtQtdeParc.text), dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency, dmGeral.FAT_CD_M_NFE_TIT,6);
  dmGeral.BUS_CD_C_FPG2.Close;



  txtGerFpg.text   := '';
  txtQtdeParc.text := '0';



end;

procedure TEST_FM_M_NFE.txt_SerieExit(Sender: TObject);
begin
  inherited;
  if ActiveControl = btnCancelar Then Exit;
   //Alterei o codigo para tornar obrigatorio o preenchimento do campo serie.Responsavel:Luan.Data:11/09/2015
  {if (trim(txt_Numero.Text) = '0') and (trim(txt_Serie.text) <> '' ) then
      begin
        ShowMessage('Se o campo "Número" for preenchido com 0, o campo série não pode ser preenchido.');
        txt_Serie.text := ' ';
        txt_Serie.SetFocus;
        Abort;
      end;

  if (trim(txt_Numero.Text) <> '0') and (trim(txt_Serie.text) = '' ) then
      begin
        ShowMessage('A Série deve ser preenchido!.');
        txt_Serie.SetFocus;
        Abort;
      end; }

    if (trim(txt_Serie.text) = '' ) then
      begin
        ShowMessage('A Série deve ser preenchido!.');
        txt_Serie.SetFocus;
        Abort;
      end;

end;

procedure TEST_FM_M_NFE.txt_SubSerieExit(Sender: TObject);
begin
  inherited;
  if ActiveControl = btnCancelar Then Exit;

  if (trim(txt_Numero.Text) = '0') and (trim(txt_SubSerie.text) <> '' ) then
      begin
        ShowMessage('Se o campo "Número" for preenchido com 0, o campo sub-série não pode ser preenchido.');
        txt_SubSerie.text := ' ';
        txt_SubSerie.SetFocus;
        Abort;
      end;
 { if (trim(txt_Numero.Text) <> '0') and (trim(txt_SubSerie.text) = '' ) then
      begin
        ShowMessage('A Série deve ser preenchido!.');
        txt_SubSerie.SetFocus;
        Abort;
      end;}
end;

procedure TEST_FM_M_NFE.txtVencimentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or grdTitulos.Focused or
     cbbFormaPgto.Focused  or txt_IdPlanoContas.Focused or
     txtDias.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValDias(dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').AsInteger)) then
     begin
       txtDias.SetFocus;
       abort;
     end;

  if not (dmGeral.TesValVencto(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime,
                               dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;
  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').Value :=
          dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsVariant;
     end;
end;

procedure TEST_FM_M_NFE.txtVlrBaseIcmIteExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused or
     txt_CFOP.Focused or txtQtde.Focused or txtVlrMercadoria.Focused then
     begin
       exit;
     end;

   if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency>
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency)  then
      begin
        ShowMessage('O valor icms base não pode ser maior que o valor de mercadoria.');
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency :=0;
        txtVlrBaseIcmIte.SetFocus;
      end;

end;

procedure TEST_FM_M_NFE.txtVlrDescontoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused or cbbCSTIcm.Focused or
     txt_CFOP.Focused or txtQtde.Focused or txtVlrMercadoria.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('nfe_finalidade').AsInteger = 1) then
     begin
      if not (dmGeral.TesValVlrDescNf(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency,
                                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency )) then
         begin
           txtVlrDesconto.SetFocus;
           abort;
         end;
     end
   else
     begin
       if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency >
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency) then
         begin
           ShowMessage('O campo "Valor desconto" não pode ser maior que valor de mercadoria.');
           txtVlrDesconto.SetFocus;
           abort;
         end;
     end;
end;

procedure TEST_FM_M_NFE.txtVlrIcmIteExit(Sender: TObject);
begin
  inherited;
  if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency>
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency)  then
      begin
        ShowMessage('O valor ICMS não pode ser maior que o valor de ICMS BASE.');
        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency :=0;
        txtVlrIcmIte.SetFocus;
      end;

end;

procedure TEST_FM_M_NFE.cbbAlmoxarifadoBeforeDropDown(Sender: TObject);
begin
  inherited;
  dmGeral.BusAlmox(1,'%');
end;

procedure TEST_FM_M_NFE.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       dmGeral.BusAlmox(1,'%');
       cbbTipoFrete.DropDown;
     end;
end;

procedure TEST_FM_M_NFE.cbbAlmoxarifadoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       ShowMessage('O campo "Almoxarifado" deve ser prenchido.');
       cbbAlmoxarifado.SetFocus;
       exit;
     end;

  dmGeral.BusAlmox(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').Text);
  if dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       ShowMessage('Almoxarifado não encontrado.');
       cbbAlmoxarifado.SetFocus;
       exit;
     end;
end;

procedure TEST_FM_M_NFE.cbbCFOPEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(2,'''EA10'',''EA30'',''EA40'',''EA50'',''EA60'',''EA65'',''EA70'',''EA80'',''EA90'',''EA91'',''EA99''');
  cbbCFOP.DropDown;
end;

procedure TEST_FM_M_NFE.cbbCFOPExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BusCfop(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text);
  if dmGeral.BUS_CD_C_CFO.IsEmpty then
     begin
       ShowMessage('Cfop não encontrado.');
       dmGeral.BUS_CD_C_CFO.close;
       exit;
     end;

  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text := '';
       cbbCFOP.SetFocus;
       abort;
     end;

 
end;

procedure TEST_FM_M_NFE.txtVlrMercadoriaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused or
     txt_CFOP.Focused or txtQtde.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
    begin
      if not (dmGeral.TesValVlrMerc(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency)) then
         begin
           txtVlrMercadoria.SetFocus;
           abort;
         end;
    end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
    begin
      if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency<0) then
         begin
           ShowMessage('O "Valor mercadoria" não pode ser menor que zero');
           txtVlrMercadoria.SetFocus;
           abort;
         end;
    end;

end;

procedure TEST_FM_M_NFE.txtVlrSubIcmIteExit(Sender: TObject);
begin
  inherited;
  pnDadosAdic.Visible := true;
  txtPerReducaoICM.SetFocus;
end;

procedure TEST_FM_M_NFE.txtVlrTituloExit(Sender: TObject);
var
  lSMPrincipal : TSMClient;
  lid_nfe_tit: string;
  lQtdeReg: integer;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if
     cbbFormaPgto.Focused  or txt_IdPlanoContas.Focused or
     txtDias.Focused       or txtVencimento.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPgto.SetFocus;
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FAT_CD_M_NFE_TIT.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtVlrTitulo.SetFocus;
       abort;
     end;


  lQtdeReg   := dmGeral.FAT_CD_M_NFE_TIT.RecordCount;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_nfe_tit').text = '' then
     begin
        lSMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.FAT_CD_M_NFE_TITid_nfe_tit.AsInteger :=
               lSMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
        finally
          FreeAndNil(lSMPrincipal);
        end;
     end;

  if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').text = '6' then
    begin
    txtBanco.SetFocus
    end
  else
    begin
      lid_nfe_tit := dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_NFE_TIT').AsString;

      {if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('NUM_PARCELA').AsInteger = 0 then
         begin
            dmGeral.FAT_CD_M_NFE_TIT.FieldByName('NUM_PARCELA').text :=
                dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text + '-' +
                inttostr(dmGeral.FAT_CD_M_NFE_TIT.RecordCount+1)
                + '/' + inttostr(lQtdeReg);
         end;}

      dmGeral.FAT_CD_M_NFE_TIT.Post;

      pnTitulos.Enabled := false;
      btn_Add_Fpg.SetFocus;
      dmGeral.FAT_CD_M_NFE_TIT.locate('ID_NFE_TIT',lid_nfe_tit,[]);
    end;
end;

end.
