unit EST_UN_M_NFS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,System.Math, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, vcl.Wwdbedit,
  vcl.wwcheckbox, Vcl.ComCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, vcl.Wwdotdot, vcl.Wwdbcomb, Datasnap.DBClient, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TEST_FM_M_NFS = class(TPAD_FM_X_PAD)
    Label7: TLabel;
    Label30: TLabel;
    lblEmitente: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label65: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label8: TLabel;
    Label25: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    Label47: TLabel;
    Label53: TLabel;
    Label9: TLabel;
    txt_Emitente: TJvDBComboEdit;
    txt_Numero: TDBEdit;
    txt_Serie: TDBEdit;
    txt_SubSerie: TDBEdit;
    txt_NFe_Chave: TDBEdit;
    txt_Cod_Doc_Rev: TDBEdit;
    cbbTipoFrete: TwwDBLookupCombo;
    cbbModelo: TwwDBLookupCombo;
    pcMovimento: TPageControl;
    tsItens: TTabSheet;
    grdItens: TwwDBGrid;
    pnItens: TPanel;
    lblItem: TLabel;
    Label31: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    txt_Produto: TJvDBComboEdit;
    txt_CFOP: TJvDBComboEdit;
    txtQtde: TDBEdit;
    txt_VlrUnitario: TDBEdit;
    txtVlrMercadoria: TDBEdit;
    txt_PerDesc: TDBEdit;
    txt_VlrDesc: TDBEdit;
    txt_VlrLiquido: TDBEdit;
    tsTitulos: TTabSheet;
    btnAddTitulos: TBitBtn;
    grdTitulos: TwwDBGrid;
    gbTotalizacao: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    Label62: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label39: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label24: TLabel;
    num_VlrICMSSubst: TDBEdit;
    num_Total_VlrDesc: TwwDBEdit;
    num_TotalLiquido: TwwDBEdit;
    num_VlrBaseICMSSubst: TDBEdit;
    num_VlrICMS: TDBEdit;
    num_VlrBaseICMS: TDBEdit;
    num_VlrOutrasDesp: TwwDBEdit;
    num_VlrSeguro: TwwDBEdit;
    num_VlrFreteNF: TwwDBEdit;
    num_Total_VlrMercadoria: TDBEdit;
    dsoItens: TwwDataSource;
    dsoTitulos: TwwDataSource;
    cbbAlmoxarifado: TwwDBLookupCombo;
    grdItensIButton: TwwIButton;
    grdTitulosIButton: TwwIButton;
    pnTitulos: TPanel;
    lblFormaPagamento: TLabel;
    lblPlanoContas: TLabel;
    lblVencimento: TLabel;
    lblVlrParcela: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    txtVencimento: TJvDBDateEdit;
    txtVlrParcela: TDBEdit;
    cbbCST: TwwDBLookupCombo;
    lblCST: TLabel;
    btnAddItens: TBitBtn;
    de_Emissao: TJvDBDateEdit;
    de_DataDocumento: TJvDBDateEdit;
    txt_CFOP_Pai: TJvDBComboEdit;
    txtDescEmitente: TwwDBEdit;
    lblDescCFOP: TLabel;
    txt_UfEmitente: TDBEdit;
    txtPlanoContas: TJvDBComboEdit;
    txtPctDescricao: TwwDBEdit;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    cbbTipoEstoque: TwwDBLookupCombo;
    cbbVendedor: TwwDBLookupCombo;
    lblVendedor: TLabel;
    cbbCondPag: TwwDBLookupCombo;
    EST_FR_M_NFS: TfrxReport;
    PAD_XL_C_REL: TfrxXLSExport;
    PAD_PD_C_REL: TfrxPDFExport;
    EST_DB_M_NFS_TIT: TfrxDBDataset;
    EST_DB_M_NFS_ITE: TfrxDBDataset;
    EST_DB_M_NFS: TfrxDBDataset;
    btnImprimirEspelho: TBitBtn;
    txtIdFiscalRef: TJvDBComboEdit;
    lblNfeRef: TLabel;
    cbbFinalidade: TwwDBComboBox;
    Label4: TLabel;
    pnlIcms: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    txtIcmsBS: TwwDBEdit;
    txtIcmsAliq: TwwDBEdit;
    txtIcmsValor: TwwDBEdit;
    txtIcmDesn: TwwDBEdit;
    lblIcmsdesn: TLabel;
    pnlDesn: TPanel;
    Label6: TLabel;
    Label26: TLabel;
    Label10: TLabel;
    txtIcmsDesnIte: TwwDBEdit;
    cbbMotDesn: TwwDBLookupCombo;
    txtPesquisaData: TJvDateEdit;
    pmImpSimp: TPopupMenu;
    btnImpSimp: TMenuItem;
    EST_FR_M_NFS_SMP: TfrxReport;
    procedure cbbTipoFreteEnter(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_EmitenteButtonClick(Sender: TObject);
    procedure txt_EmitenteExit(Sender: TObject);
    procedure cbbModeloEnter(Sender: TObject);
    procedure cbbModeloExit(Sender: TObject);
    procedure txt_EmitenteEnter(Sender: TObject);
    procedure txt_NumeroExit(Sender: TObject);

    procedure txt_CFOP_PaiButtonClick(Sender: TObject);
    procedure txt_CFOP_PaiEnter(Sender: TObject);
    procedure txt_CFOP_PaiExit(Sender: TObject);
    procedure btnAddItensClick(Sender: TObject);
    procedure txt_ProdutoButtonClick(Sender: TObject);
    procedure txt_ProdutoExit(Sender: TObject);
    procedure txt_CFOPButtonClick(Sender: TObject);
    procedure txt_CFOPExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtVlrMercadoriaExit(Sender: TObject);
    procedure txt_VlrDescExit(Sender: TObject);

    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure grdTitulosIButtonClick(Sender: TObject);
    procedure btnAddTitulosClick(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure txtPlanoContasButtonClick(Sender: TObject);
    procedure txtPlanoContasExit(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtVlrParcelaExit(Sender: TObject);
    procedure btnAddTitulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txt_ProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnItensExit(Sender: TObject);
    procedure cbbCSTEnter(Sender: TObject);
    procedure txt_PerDescExit(Sender: TObject);
    procedure txt_SerieExit(Sender: TObject);
    procedure txt_SubSerieExit(Sender: TObject);
    procedure de_DataDocumentoExit(Sender: TObject);
    procedure de_EmissaoExit(Sender: TObject);
    procedure txt_NFe_ChaveExit(Sender: TObject);
    procedure cbbAlmoxarifadoBeforeDropDown(Sender: TObject);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure cbbCSTExit(Sender: TObject);
    procedure cbbCFOPEnter(Sender: TObject);
    procedure cbbCFOPExit(Sender: TObject);
    procedure num_Total_VlrDescExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure txtQtdeEnter(Sender: TObject);
    procedure cbbTipoEstoqueEnter(Sender: TObject);
    procedure cbbTipoEstoqueExit(Sender: TObject);
    procedure cbbVendedorEnter(Sender: TObject);
    procedure cbbCondPagEnter(Sender: TObject);
    procedure cbbCondPagExit(Sender: TObject);
    procedure cbbVendedorExit(Sender: TObject);
    procedure txt_VlrUnitarioExit(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure cbbFinalidadeChange(Sender: TObject);
    procedure cbbFinalidadeEnter(Sender: TObject);
    procedure cbbFinalidadeExit(Sender: TObject);
    procedure txtIdFiscalRefExit(Sender: TObject);
    procedure txtIdFiscalRefButtonClick(Sender: TObject);
    procedure txtIcmsBSExit(Sender: TObject);
    procedure txtIcmsAliqExit(Sender: TObject);
    procedure txtIcmsValorExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtIcmsValorEnter(Sender: TObject);
    procedure cbbMotDesnEnter(Sender: TObject);
    procedure txtIcmsDesnIteExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnImpSimpClick(Sender: TObject);
  private
    { Private declarations }
     procedure Atualizar_xBusca;
     procedure ChamaCorTamanho;
     procedure AbrirBuscas;
    Var
    xAntEmitente: String;
    xOperacaoForm:String;
    xAntIdTipoEstoque: String;
    xAntCondicaoPgto:String;
    xAntCfo:String;
    xbusca_item: String;
    num_registro_ite:integer;
    xTipo_item: string;
    saldo_fisico: String;
  public
    { Public declarations }
     vlr_icms_ant:Currency;
  end;

var
  EST_FM_M_NFS: TEST_FM_M_NFS;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, PSQ_UN_X_CLI, PSQ_UN_X_TME, PSQ_UN_X_CPG,
  PSQ_UN_X_CFO, PSQ_UN_X_ITE, PSQ_UN_X_FPG, PSQ_UN_X_PCT, PSQ_UN_X_FOR, FAT_RN_M_NFE,
  enSoftMenu, EST_UN_M_NFS_CPM;

procedure TEST_FM_M_NFS.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);
  cbbFinalidade.Enabled := true;
  btnAddItens.Enabled := true;
  btnAlterar.Enabled := false;
   txt_NFe_Chave.Enabled := False;
   txt_Nfe_Chave.Color := $00DADADA;

   cbbAlmoxarifado.Enabled := True;
   cbbAlmoxarifado.Color := clWhite;
   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
     begin

       dmGeral.BusAlmox(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_ALM_PADRAO').AsString);
       if not dmGeral.BUS_CD_C_ALM.IsEmpty then
        begin
          cbbAlmoxarifado.Text := dmGeral.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString;
          dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger := dmGeral.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsInteger;
        end;
     end
   else
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsString := '';
       cbbAlmoxarifado.Enabled := False;
       cbbAlmoxarifado.Color :=$00DADADA;
     end;

  

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsString := '1';
  dmGeral.BusCodigoRevListMestre(true,false,'EST_FM_M_NFS',xCodLme,xRevLme,dmGeral.FAT_CD_M_NFE);

  cbbTipoEstoque.SetFocus;
end;

procedure TEST_FM_M_NFS.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);
  cbbFinalidade.Enabled := false;
  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
     begin
       btnAddItens.Enabled := false;
       txtIdFiscalRef.Visible := true;
       lblNfeRef.Visible := true;
     end
   else
     begin
       btnAddItens.Enabled := true;
       txtIdFiscalRef.Visible := false;
       lblNfeRef.Visible := false;
     end;

  cbbTipoEstoque.SetFocus;
end;

procedure TEST_FM_M_NFS.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
end;

procedure TEST_FM_M_NFS.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE);
end;

procedure TEST_FM_M_NFS.acGravarExecute(Sender: TObject);
var
  codigo, QtdeReg,numero,codItens: String;
  i:integer;
begin
   if not FAT_CD_M_NFE_Saida_TesCampos then
     begin
        exit;
     end;

   codItens := FAT_CD_M_NFE_ITE_VerifCampoQtdeMercIcms;
   if codItens <>'' then
     begin
       ShowMessage('Os itens '+codItens+' devem ter quantidade, valor de mercadoria ou valor de icms maior que zero.');
       exit;
     end;


   if (FatVerificarExistenciaTitulosNfe = false) then
     begin
       exit;
     end;




  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if not dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
          begin

            i := 0;
            Numero  := dmGeral.FAT_CD_M_NFE.FieldByName('numero').AsString;
            QtdeReg := IntToStr(dmGeral.FAT_CD_M_NFE_TIT.RecordCount);

            dmGeral.FAT_CD_M_NFE_TIT.IndexFieldNames := 'DIAS';
            dmGeral.FAT_CD_M_NFE_TIT.First;

            while not dmGeral.FAT_CD_M_NFE_TIT.eof do
               begin
                 inc(i);
                 dmGeral.FAT_CD_M_NFE_TIT.edit;
                 dmGeral.FAT_CD_M_NFE_TIT.FieldByName('NUM_PARCELA').AsString :=
                         Numero + '-' +
                         inttostr(i) + '/' + QtdeReg;
                 dmGeral.FAT_CD_M_NFE_TIT.Post;
                 dmGeral.FAT_CD_M_NFE_TIT.Next;
               end;
          end;
        
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_NF').AsInteger := 3;
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_SEPARA_PROD_SERV').AsBoolean = True)  then
          begin
            dmGeral.FAT_CD_M_NFE.FieldByName('IND_NF').AsInteger := 1;
            if (xTipo_item = '09') then
              begin
                 dmGeral.FAT_CD_M_NFE.FieldByName('IND_NF').AsInteger := 2;
              end;
          end;       
       dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString := 'B';
       //Lembrete: no evento BeforeApplyUpdate há metodo FatFormarNfeObs. Mas foi necessario
        //colocar o metodo FatFormarNfeObs aqui no evento Gravar, pois o metodo sendo executado
        //no BeforeApplyUpdate não está atualizando o campo nfe_obs.

       FatFormarNfeObs(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);
       codigo := dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
       DmGeral.Grava(dmGeral.FAT_CD_M_NFE);
       inherited;
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
           VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'S',codigo]));

       AbrirBuscas;
     end
  else
     begin
       cbbTipoEstoque.SetFocus;
     end;
end;

procedure TEST_FM_M_NFS.btnAddItensClick(Sender: TObject);
begin
  inherited;

  pnItens.Enabled  := true;

  dmGeral.FAT_CD_M_NFE_ITEvlr_unitario.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITEqtde.OnChange := nil;

  dmGeral.FAT_CD_M_NFE_ITEID_CFO.OnChange := nil;
  dmGeral.FAT_CD_M_NFE_ITE.Insert;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsString := '';
  dmGeral.FAT_CD_M_NFE_ITEid_cfo.OnChange := dmGeral.FAT_CD_M_NFE_ITEid_cfoChange;
  dmGeral.FAT_CD_M_NFE_ITEvlr_unitario.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_unitarioChange;
  dmGeral.FAT_CD_M_NFE_ITEqtde.OnChange := dmGeral.FAT_CD_M_NFE_ITEqtdeChange;


  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').AsInteger :=
          dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger;

               // dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger := xSequencia;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_INF_FISCO').AsInteger := 0;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ISS_BASE').AsCurrency := 0;
                //dmGeral.FAT_CD_M_NFE_ITE.FieldByName('LOTE_INTERNO').AsString := ' ';
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('NRO_PEDIDO').AsString := '0';
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_PER_REDUCAO').AsFloat := 0;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PARA_ANALISE_RAA').AsInteger := 0;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString := ' ';

  txt_Produto.Enabled := true;
  txt_Produto.SetFocus;
  txt_Produto.SetFocus;
end;

procedure TEST_FM_M_NFS.btnFiltroClick(Sender: TObject);
var
  tipoFiltro:integer;
  xPesquisa:String;
begin
  inherited;

  tipoFiltro := 2;

  if cbbPesquisa.ItemIndex = 0 then
     begin
      tipoFiltro := 1;
     end;

  if cbbPesquisa.ItemIndex = 1 then
     begin
       tipoFiltro := 0;
     end;

  if (cbbPesquisa.ItemIndex > 2) and (cbbPesquisa.ItemIndex < 8) then
     begin
       tipoFiltro := cbbPesquisa.ItemIndex + 1;
     end;


  if (txtPesquisaData.Visible =true) then
    xPesquisa := txtPesquisaData.Text
  else
    xPesquisa := txtPesquisa.Text;


  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
  dmGeral.FAT_CD_M_NFE.DataRequest(
     VarArrayOf([tipoFiltro,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'S',xPesquisa]));
end;

procedure TEST_FM_M_NFS.btnImprimirEspelhoClick(Sender: TObject);
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
        dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'S',codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(EST_FR_M_NFS.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,EST_FR_M_NFS.Name,xCodLme,xRevLme,nil);
        EST_FR_M_NFS.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

        EST_FR_M_NFS.PrepareReport();
        EST_FR_M_NFS.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TEST_FM_M_NFS.btnImpSimpClick(Sender: TObject);
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
        dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'S',codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(EST_FR_M_NFS_SMP.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,EST_FR_M_NFS_SMP.Name,xCodLme,xRevLme,nil);


        EST_FR_M_NFS_SMP.Variables['ativado_sgq'] := false;
         if ((not dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) and
             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True)) then
             begin
               EST_FR_M_NFS_SMP.Variables['ativado_sgq'] := true;
             end;


         EST_FR_M_NFS_SMP.Variables['ativado_cor'] := false;
         if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').IsNull) and
             (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True)) then
           begin
             EST_FR_M_NFS_SMP.Variables['ativado_cor'] := true;
           end;

        EST_FR_M_NFS_SMP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

        EST_FR_M_NFS_SMP.PrepareReport();
        EST_FR_M_NFS_SMP.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TEST_FM_M_NFS.btnAddTitulosClick(Sender: TObject);
begin
  inherited;
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

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_CCUSTO').AsString := '1';
  cbbFormaPagamento.enabled := true;
  cbbFormaPagamento.SetFocus;
end;

procedure TEST_FM_M_NFS.btnAddTitulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     pcMovimento.ActivePage := tsItens;
end;

procedure TEST_FM_M_NFS.cbbAlmoxarifadoBeforeDropDown(Sender: TObject);
begin
  inherited;
   dmGeral.BusAlmox(1,'%');
end;

procedure TEST_FM_M_NFS.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       dmGeral.BusAlmox(1,'%');
       cbbAlmoxarifado.DropDown;
     end;
end;

procedure TEST_FM_M_NFS.cbbAlmoxarifadoExit(Sender: TObject);
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

procedure TEST_FM_M_NFS.cbbCFOPEnter(Sender: TObject);
begin
  inherited;
   xAntCfo := dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text;
end;

procedure TEST_FM_M_NFS.cbbCFOPExit(Sender: TObject);
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
       ShowMessage('O campo "Cliente" deve ser preenchido.');
       if txt_Emitente.CanFocus then
          begin
            txt_CFOP_Pai.Text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text := '';
            lblDescCfop.Caption := '';
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
       //lblDescCfop.Caption := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').Text := '';
       txt_CFOP_Pai.SetFocus;
       txt_CFOP_Pai.Text := '';
       Abort;
     end;

  lblDescCfop.Caption := dmGeral.CAD_CD_C_CFO.FieldByName('DESCRICAO').AsString;

  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) then
     begin
       lblDescCfop.Caption  := '';
       txt_CFOP_Pai.SetFocus;
       txt_CFOP_Pai.Text      := '';
     end;

  pcMovimento.ActivePage := tsItens;
  btnAddItens.SetFocus;
end;

procedure TEST_FM_M_NFS.cbbCondPagEnter(Sender: TObject);
begin
  inherited;
  xAntCondicaoPgto := dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text;
  dmGeral.BusCondPgto(1,'%');
  cbbCondPag.DropDown;
end;

procedure TEST_FM_M_NFS.cbbCondPagExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
  dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text]));
  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de pagamento não cadastrada!');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsString := xAntCondicaoPgto;
      // dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMECPG').AsString := '';
       cbbCondPag.SetFocus;
     end;

  dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMECPG').AsString := dmGeral.BUS_CD_C_CPG.FieldByName('DESCRICAO').text;

  if not dmGeral.BUS_CD_C_CPG.FieldByName('ATIVO').AsBoolean then
     begin
       ShowMessage('Condição de pagamento inativa.');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsString := xAntCondicaoPgto;
       //dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMECPG').AsString := '';
       cbbCondPag.SetFocus;
       abort;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').Text[1] in ['E'] then
     begin
       if dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 0 then
          begin
            ShowMessage('Condição de pagamento não pode ser do tipo "à vista"');
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsString := xAntCondicaoPgto;
            //dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMECPG').AsString := '';
            cbbCondPag.SetFocus;
            abort;
          end;
     end;

  if ((xAntCondicaoPgto<>'0') and (xAntCondicaoPgto <> dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text)) then
     begin
         if MessageDlg('Se alterar a condição de pagamento os valores unitarios dos itens serão recalculados e os vencimentos lançados nesta nota serão apagados, deseja alterar?',
                           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                 //Recalcula os valores liquido de cada item se ocorrer mudança da cond. pagamento. Responsavel:Luan. Data:26/10/2015
                 dmGeral.FAT_CD_M_NFE_ITE.Cancel;
                 dmGeral.FAT_CD_M_NFE_ITE.First;
                 while(not dmGeral.FAT_CD_M_NFE_ITE.EOF) do
                   begin
                     dmGeral.FAT_CD_M_NFE_ITE.Edit;

                     dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := nil;
                     dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := nil;
                     dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := nil;

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;
                     dmGeral.CalcPrecoItem(1,'0',dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text,
                                  dmGeral.FAT_CD_M_NFE_ITE,false,false);
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByname('PER_DESCONTO').AsCurrency := 0;

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency :=
                              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency*
                              dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                              (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency-
                               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency);

                     dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoriaChange;
                     dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEvlr_descontoChange;
                     dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_NFE_ITEper_descontoChange;

                     dmGeral.CalculaTributos(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);
                     CalcPesoItem(dmGeral.FAT_CD_M_NFE_ITE);

                     dmGeral.FAT_CD_M_NFE_ITE.AfterPost := nil;
                     dmGeral.FAT_CD_M_NFE_ITE.Post;
                     dmGeral.FAT_CD_M_NFE_ITE.AfterPost := dmGeral.FAT_CD_M_NFE_ITEAfterPost;

                     dmGeral.FAT_CD_M_NFE_ITE.Next;
                   end;
                 if (dmGeral.FAT_CD_M_NFE_ITE.RecordCount > 0) then
                    begin
                      fatNfeCalcTotal(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);
                    end;
                 ///FIM///
                 dmGeral.FAT_CD_M_NFE_TIT.Cancel;
                 while not dmGeral.FAT_CD_M_NFE_TIT.Eof do
                   begin
                     dmGeral.FAT_CD_M_NFE_TIT.delete;
                   end;
                 xAntCondicaoPgto := dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text;
               end
              else
               begin
                 dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text :=  xAntCondicaoPgto;
                 abort;
               end;

        //Removi codigo abaixo.Responsavel:Luan.Data:26/10/2015
       {dmGeral.FAT_CD_M_NFE_TIT.Cancel;
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
                 dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text :=  xAntCondicaoPgto;
                 abort;
               end;
          end;}
          ///FIM///
     end;
     dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMECPG').AsString := dmGeral.BUS_CD_C_CPG.FieldByName('DESCRICAO').AsString;

end;

procedure TEST_FM_M_NFS.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TEST_FM_M_NFS.cbbCorExit(Sender: TObject);
var
  id_busca_item,id_item,id_tamanho,id_cor,int_nometam,int_desc_item,
  int_und_venda,int_tipo_item,int_id_ncm,
  id_tributo,icm_s_vlr_mva,vlr_unitario,origem_mercadoria,int_origem,id_inf_fisco,
  id_cfo,ID_ST_ICM,DRE_PERC_IRCS,DRE_PERC_OUT_DED_VEN,int_part_perc_fcp:string;
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


     id_busca_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
     id_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString;
     id_tamanho := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsString;
     id_cor := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').AsString;
     int_nometam := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_NOMETAM').AsString;
     int_desc_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString;
     int_und_venda := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString;
     int_tipo_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString;
     int_id_ncm := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_ID_NCM').AsString;
     id_tributo := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TRIBUTO').AsString;
     icm_s_vlr_mva := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('icm_s_vlr_mva').AsString;
     vlr_unitario := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('vlr_unitario').AsString;
     origem_mercadoria := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('origem_mercadoria').AsString;
     int_origem := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_origem').AsString;
     id_inf_fisco := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_inf_fisco').AsString;
     id_cfo := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_cfo').AsString;
     ID_ST_ICM := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString;
     DRE_PERC_IRCS := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString;
     DRE_PERC_OUT_DED_VEN := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DRE_PERC_OUT_DED_VEN').AsString;
     int_part_perc_fcp := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_part_perc_fcp').AsString;


     dmGeral.FAT_CD_M_NFE_ITE.Cancel;
     if dmGeral.FAT_CD_M_NFE_ITE.Locate('ID_ITEM;ID_TAMANHO;ID_COR',
                                  VarArrayOf([id_item,id_tamanho,id_cor]),[]) then
       begin
        if MessageDlg('O produto já foi lançado. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
            dmGeral.FAT_CD_M_NFE_ITE.Insert;
            txt_Produto.SetFocus;
            pnlCorTamanho.Visible := false;
            exit;
          end;
       end;
   dmGeral.FAT_CD_M_NFE_ITE.Insert;

   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString := id_item;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsString := id_tamanho;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').AsString := id_cor;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_NOMETAM').AsString := int_nometam;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString := int_desc_item;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString := int_und_venda;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString := int_tipo_item;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_ID_NCM').AsString := int_id_ncm;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TRIBUTO').AsString := id_tributo;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('icm_s_vlr_mva').AsString := icm_s_vlr_mva;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('vlr_unitario').AsString := vlr_unitario;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('origem_mercadoria').AsString := origem_mercadoria;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_origem').AsString := int_origem;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_inf_fisco').AsString := id_inf_fisco;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_cfo').AsString := id_cfo;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString := ID_ST_ICM;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString := DRE_PERC_IRCS;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DRE_PERC_OUT_DED_VEN').AsString := DRE_PERC_OUT_DED_VEN;
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_part_perc_fcp').AsString := int_part_perc_fcp;





  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;


  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;
  txt_CFOP.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TEST_FM_M_NFS.cbbCSTEnter(Sender: TObject);
begin
  inherited;
//  cbbCST.DropDown;
end;

procedure TEST_FM_M_NFS.cbbCSTExit(Sender: TObject);
begin
  inherited;
  {if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddItens.Focused or txt_Produto.Focused
     or grdItens.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString = '')  then
     begin
        ShowMessage('O campo "CST" deve ser preenchido.');
        cbbCST.SetFocus;
        abort;
     end;    }
end;

procedure TEST_FM_M_NFS.cbbFinalidadeChange(Sender: TObject);
begin
  inherited;
   if cbbFinalidade.ItemIndex = 0 then
     begin
       lblNfeRef.Visible := false;
       txtIdFiscalRef.Visible := false;
       txt_CFOP_Pai.Enabled := true;
       txt_CFOP.Enabled := true;
       btnAddItens.Enabled := true;
       txt_Produto.Enabled := true;

       num_VlrFreteNF.Enabled := true;
       num_VlrSeguro.Enabled := true;
       num_VlrOutrasDesp.Enabled := true;
       num_Total_VlrDesc.Enabled := true;

       cbbCST.Enabled := false;
       cbbCST.Color := $00DADADA;
     end
   else if cbbFinalidade.ItemIndex = 1 then
     begin
       lblNfeRef.Visible := true;
       txtIdFiscalRef.Visible := true;
       txt_CFOP_Pai.Enabled := false;
       txt_CFOP.Enabled := false;
       btnAddItens.Enabled := false;
       txt_Produto.Enabled := false;

       num_VlrFreteNF.Enabled := false;
       num_VlrSeguro.Enabled := false;
       num_VlrOutrasDesp.Enabled := false;
       num_Total_VlrDesc.Enabled := false;

       cbbCST.Enabled := true;
       cbbCST.Color := clWhite;
     end;
end;

procedure TEST_FM_M_NFS.cbbFinalidadeEnter(Sender: TObject);
begin
  inherited;
  cbbFinalidade.DropDown;
end;

procedure TEST_FM_M_NFS.cbbFinalidadeExit(Sender: TObject);
begin
  inherited;
  dmgeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsString := '';
  while (dmgeral.FAT_CD_M_NFE_ITE.RecordCount>0) do
     dmGeral.FAT_CD_M_NFE_ITE.Delete;
end;

procedure TEST_FM_M_NFS.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(1,'');
  cbbFormaPagamento.DropDown;
end;

procedure TEST_FM_M_NFS.cbbFormaPagamentoExit(Sender: TObject);
var
  Cred_Disp:Currency;
  CodFormaPag:String;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').Text = '' then
     begin
       ShowMessage('O campo "Forma de Pagamento" deve ser preenchido.');
       cbbFormaPagamento.SetFocus;
       Exit;
     end;
  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').Text);

  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').Text :='';
       ShowMessage('Forma de Pagamento não encontrado.');
       cbbFormaPagamento.SetFocus;
       Exit;
     end;


  if  dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 7 then
    BEGIN
      codFormaPag := dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').Text;
      dmGeral.FAT_CD_M_NFE_TIT.Cancel;
      if dmGeral.FAT_CD_M_NFE_TIT.Locate('INT_DOCIMPRESSO',
           dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger,[]) then
         begin
           ShowMessage('A nota de credito já foi inserido.');
           dmGeral.FAT_CD_M_NFE_TIT.Insert;
           dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').Text :='';
           cbbFormaPagamento.SetFocus;
           Exit;
         end
      else
         begin
           dmGeral.FAT_CD_M_NFE_TIT.Insert;
           dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').Text := codFormaPag;
         end;

      Cred_Disp := dmGeral.BusSaldoCreCli(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString);
      IF  Cred_disp<=0 then
       begin
          ShowMessage('O valor de crédito disponível é '+FormatCurr('###,###,##0.00',Cred_disp) );
          dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').Text :='';
          cbbFormaPagamento.SetFocus;
          Exit;
       end;
    END;

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').Text :=
      dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsString;

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_DOCIMPRESSO').AsInteger :=
      dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger;

  if dmGeral.BUS_CD_C_FPG.FieldByName('VEN_ID_PLANO').Text <>'' then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_CCUSTO').AsString :=
           dmGeral.BUS_CD_C_FPG.FieldByName('ID_CCUSTO').AsString;
     end;





end;



procedure TEST_FM_M_NFS.cbbModeloEnter(Sender: TObject);
begin
  inherited;
  cbbModelo.DropDown;
end;

procedure TEST_FM_M_NFS.cbbModeloExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
      btnGrava.Focused  then
      begin
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

  txt_NFe_Chave.Enabled := False;
   txt_NFe_Chave.Color := $00DADADA;
  if (dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').asString='55') and
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger<>0) then
     begin
      // txt_NFe_Chave.ReadOnly:= False;
       txt_NFe_Chave.Enabled := True;
       txt_NFe_Chave.Color := clWhite;
       txt_NFe_Chave.SetFocus;
     end;
end;

procedure TEST_FM_M_NFS.cbbMotDesnEnter(Sender: TObject);
begin
  inherited;
  cbbMotDesn.DropDown;
end;

procedure TEST_FM_M_NFS.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [6,7]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 108;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;
end;

procedure TEST_FM_M_NFS.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TEST_FM_M_NFS.cbbTamanhoExit(Sender: TObject);
var
  id_busca_item,id_item,id_tamanho,int_desc_item,int_und_venda,int_tipo_item,int_id_ncm,
  id_tributo,icm_s_vlr_mva,vlr_unitario,origem_mercadoria,int_origem,id_inf_fisco,
  id_cfo,ID_ST_ICM,DRE_PERC_IRCS,DRE_PERC_OUT_DED_VEN,int_part_perc_fcp:string;
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


    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = false then
      begin
         id_busca_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
         id_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString;
         id_tamanho := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsString;
         int_desc_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString;
         int_und_venda := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString;
         int_tipo_item := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString;
         int_id_ncm := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_ID_NCM').AsString;
         id_tributo := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TRIBUTO').AsString;
         icm_s_vlr_mva := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('icm_s_vlr_mva').AsString;
         vlr_unitario := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('vlr_unitario').AsString;
         origem_mercadoria := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('origem_mercadoria').AsString;
         int_origem := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_origem').AsString;
         id_inf_fisco := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_inf_fisco').AsString;
         id_cfo := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_cfo').AsString;
         ID_ST_ICM := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString;
         DRE_PERC_IRCS := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString;
         DRE_PERC_OUT_DED_VEN := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DRE_PERC_OUT_DED_VEN').AsString;
         int_part_perc_fcp := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_part_perc_fcp').AsString;


         dmGeral.FAT_CD_M_NFE_ITE.Cancel;
         if dmGeral.FAT_CD_M_NFE_ITE.Locate('ID_ITEM;ID_TAMANHO',
                                      VarArrayOf([id_item,id_tamanho]),[]) then
           begin
            if MessageDlg('O produto já foi lançado. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
              begin
                dmGeral.FAT_CD_M_NFE_ITE.Insert;
                txt_Produto.SetFocus;
                pnlCorTamanho.Visible := false;
                exit;
              end;
           end;
       dmGeral.FAT_CD_M_NFE_ITE.Insert;

       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString := id_item;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsString := id_tamanho;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString := int_desc_item;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString := int_und_venda;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString := int_tipo_item;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_ID_NCM').AsString := int_id_ncm;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TRIBUTO').AsString := id_tributo;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('icm_s_vlr_mva').AsString := icm_s_vlr_mva;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('vlr_unitario').AsString := vlr_unitario;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('origem_mercadoria').AsString := origem_mercadoria;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_origem').AsString := int_origem;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_inf_fisco').AsString := id_inf_fisco;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_cfo').AsString := id_cfo;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString := ID_ST_ICM;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString := DRE_PERC_IRCS;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DRE_PERC_OUT_DED_VEN').AsString := DRE_PERC_OUT_DED_VEN;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_part_perc_fcp').AsString := int_part_perc_fcp;

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

procedure TEST_FM_M_NFS.cbbTipoFreteEnter(Sender: TObject);
begin
  inherited;
  cbbTipoFrete.DropDown;
end;

procedure TEST_FM_M_NFS.cbbVendedorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbVendedor.DropDown;
end;

procedure TEST_FM_M_NFS.cbbVendedorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BusFuncionario(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').Text);
  
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Vendedor não cadastrado!');
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').AsString := '';
       cbbVendedor.SetFocus;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
    begin
      dmGeral.FAT_CD_M_NFE_ITE.cancel;
      if ((not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty) and (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_SELECAO').AsBoolean=true)) then
         begin
           txt_Produto.Enabled := false;
           dmGeral.FAT_CD_M_NFE_ITE.Edit;
           pnItens.Enabled := true;
            //txtQtde.SetFocus;
           cbbCST.SetFocus;
         end;
    end;

end;

procedure TEST_FM_M_NFS.dbGridRowChanged(Sender: TObject);
begin
  inherited;
   if
      (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '02')    or
      (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '04')    or
      (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '05')    or

      ( (dmGeral.FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0) or
        (dmGeral.FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger > 0) )   
      // Comentado por Maxsuel Victor, 25/05/2017 devido necessidade da Tema 
        // ter que alterar nota fiscal FATURADA, que foi digitada manualmente.
      {or
      ( (dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger   = 1)       and
        (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean = True) )*/}
      or
      ( (dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger   = 1)       and
        ( trim(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_protocolo').AsString) <> '') and
        ( trim(dmGeral.FAT_CD_M_NFE.FieldByName('nfe_recibo').AsString) <> '') and
        (dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean = True) )  then
    begin
      btnAlterar.Enabled := false;
    end
  else
    begin
      btnAlterar.Enabled := true;
    end;

 { if not dmGeral.FAT_CD_M_NFE.IsEmpty then
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
     end; }
end;

procedure TEST_FM_M_NFS.de_DataDocumentoExit(Sender: TObject);
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

  // O bloco abaixo surgiu devido o problema do servidor da Tema ter dado problema (o banco de dados foi perdido)   
  
  if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) then
     begin
        dmGeral.FIN_CD_M_CXA.Close;
        dmGeral.FIN_CD_M_CXA.Data :=
        dmGeral.FIN_CD_M_CXA.DataRequest(
                VarArrayOf([90, IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));
        if dmGeral.FIN_CD_M_CXA.IsEmpty then
           begin
             Showmessage('Não há caixa aberto para este funcionário.');
             de_DataDocumento.SetFocus;
             dmGeral.FIN_CD_M_CXA.close;
             abort;
           end;
                      
        if not (dmGeral.FIN_CD_M_CXA.locate('DTA_ABERTURA',de_DataDocumento.text,[])) then
           begin
             Showmessage('Não foi encontrado um caixa aberto com esta data de saída.');
             de_DataDocumento.SetFocus;
             dmGeral.FIN_CD_M_CXA.close;
             abort;           
           end;        

        dmGeral.FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean  := true;   
        dmGeral.FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger  :=
                dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger;
        dmGeral.FIN_CD_M_CXA.close;
     end;
end;

procedure TEST_FM_M_NFS.de_EmissaoExit(Sender: TObject);
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

procedure TEST_FM_M_NFS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.FAT_CD_M_NFE.Close;
  FreeAndNil(EST_FM_M_NFS);
end;

procedure TEST_FM_M_NFS.FormCreate(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('hab_icms_desn_saida').AsBoolean = true then
    begin
      lblIcmsDesn.Visible := true;
      txtIcmDesn.Visible := true;
    end
  else
    begin
      lblIcmsDesn.Visible := false;
      txtIcmDesn.Visible := false;
    end;


  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
  dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([0,'']));
  dmGeral.FAT_CD_M_NFE.Open;

  xbusca_item := 'ID_ITEM';


end;

procedure TEST_FM_M_NFS.FormShow(Sender: TObject);
begin
  inherited;
  AbrirBuscas;
end;

procedure TEST_FM_M_NFS.grdItensIButtonClick(Sender: TObject);
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

procedure TEST_FM_M_NFS.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
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
             txt_Produto.Enabled := true;
             dmGeral.FAT_CD_M_NFE_ITE.Append;
             pnItens.Enabled := true;
             txt_Produto.SetFocus;
           end
        else
           begin
             txt_Produto.Enabled := false;
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
           txt_Produto.Enabled := false;
           dmGeral.FAT_CD_M_NFE_ITE.Edit;
           pnItens.Enabled := true;
           cbbCST.SetFocus;
          // txtQtde.SetFocus;
         end;
     end;





end;

procedure TEST_FM_M_NFS.grdTitulosIButtonClick(Sender: TObject);
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


procedure TEST_FM_M_NFS.num_Total_VlrDescExit(Sender: TObject);
begin
  inherited;
//   fatNfeCalcDescIteAposAlteracaoDescTotal(grdItens.GetRowCount);
end;

procedure TEST_FM_M_NFS.pnItensExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.Focused) or (grdItens.Focused) or
     (cbbCor.Focused) or (cbbTamanho.Focused) or  (txtIcmsBS.Focused) or (cbbMotDesn.Focused) or (not grdItensIButton.Enabled) then
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

procedure TEST_FM_M_NFS.txtIcmsAliqExit(Sender: TObject);
begin
  inherited;
  if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').IsNull) or
      (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency<0) Then
         begin
           ShowMessage('Aliquota tem que ser maior ou igual a zero.');
           txtIcmsAliq.SetFocus;
           Abort;
         end;


  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency   :=
                        roundTo(((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency *
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency) / 100),-2);

end;

procedure TEST_FM_M_NFS.txtIcmsBSExit(Sender: TObject);
begin
  inherited;
   if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').IsNull) or
        (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency<0) Then
           begin
             ShowMessage('Valor base tem que ser maior ou igual a zero.');
             txtIcmsAliq.SetFocus;
             Abort;
           end;
    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency   :=
                          roundTo(((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency *
                          dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency) / 100),-2);
end;

procedure TEST_FM_M_NFS.txtIcmsDesnIteExit(Sender: TObject);
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

  dmGeral.FAT_CD_M_NFE_ITE.Post;
  pnlDesn.Visible := false;

  dmGeral.FAT_CD_M_NFE_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TEST_FM_M_NFS.txtIcmsValorEnter(Sender: TObject);
begin
  inherited;
  vlr_icms_ant := dmgeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency;
end;

procedure TEST_FM_M_NFS.txtIcmsValorExit(Sender: TObject);
var
  seq_item:String;
  SMPrincipal : TSMClient;
begin
  inherited;

 if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').IsNull) or
      (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency<0) Then
         begin
           ShowMessage('Valor Icms tem que ser maior ou igual a zero.');
           txtIcmsValor.SetFocus;
           Abort;
         end;
  if  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency>0 then
    begin
      if (vlr_icms_ant <> dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency) then
         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency   :=
                       roundTo((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency /
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency)*100,-2);
    end
  else
    begin
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency   := 0;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency   :=
                        roundTo(((dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency *
                        dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency) / 100),-2);
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

  dmGeral.FAT_CD_M_NFE_ITE.Post;
  pnlIcms.Visible := false;

  dmGeral.FAT_CD_M_NFE_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TEST_FM_M_NFS.txtIdFiscalRefButtonClick(Sender: TObject);
begin
  inherited;
  EST_FM_M_NFS_CPM := TEST_FM_M_NFS_CPM.Create(Self);
  EST_FM_M_NFS_CPM.xFormCall := EST_FM_M_NFS.Name;
  EST_FM_M_NFS_CPM.ShowModal;
  EST_FM_M_NFS_CPM.Free;
end;

procedure TEST_FM_M_NFS.txtIdFiscalRefExit(Sender: TObject);
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
    lblDescCFOP.Caption := '';
    dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString :='';

    if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsString = '') then
      begin
        ShowMessage('Deve ser preenchido Nº fiscal da nota referenciada.');
        txtIdFiscalRef.SetFocus;
        exit;
      end;

    dmGeral.BUS_CD_M_NFE.Close;
    dmGeral.BUS_CD_M_NFE.Data :=
    dmGeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,'S',
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

    if not((dmGeral.BUS_CD_M_NFE.FieldByName('FATURADA').AsBoolean = true) and
          (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1) and
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

  dmGeral.CAD_CD_C_CFO.Close;
  dmGeral.CAD_CD_C_CFO.Data :=
  dmGeral.CAD_CD_C_CFO.DataRequest(VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString]));
  lblDescCFOP.Caption := dmGeral.CAD_CD_C_CFO.FieldByName('DESCRICAO').AsString;
  txt_Numero.SetFocus;
end;

procedure TEST_FM_M_NFS.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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



procedure TEST_FM_M_NFS.txtPlanoContasButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_PCT := TPSQ_FM_X_PCT.Create(Self);
   PSQ_FM_X_PCT.ShowModal;
      if not PSQ_FM_X_PCT.BUS_CD_C_PCT.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_NOMEPCT').AsString := PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
           dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').AsString :=
             PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
         end;
   PSQ_FM_X_PCT.Free;
end;

procedure TEST_FM_M_NFS.txtPlanoContasExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddItens.Focused or grdTitulos.Focused or
     cbbFormaPagamento.Focused  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '') or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').text = '') then
     begin
       Showmessage('O campo "Plano de contas" deve ser preenchido.');
       txtPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.BusPlanoCta(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text);

  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       ShowMessage('Plano de contas não encontrada.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_NOMEPCT').Text := '';
       txtPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text    := dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').Text;
  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_NOMEPCT').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;

end;

procedure TEST_FM_M_NFS.txtQtdeEnter(Sender: TObject);
var
  //saldo_fisico: String;
  vlr_custo_medio: Currency;
begin
  inherited;


  vlr_custo_medio := 0;
  if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
     begin
       if not dmGeral.BusSaldoItem(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').Text,
                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text,
                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').Text,
                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').Text,
                       dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').Text,
                       saldo_fisico) then
          begin
            if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) and
               (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean= true)) then
               begin
                Showmessage('O registro de saldo não foi encontrado.');
                txt_Produto.SetFocus;
                abort;
               end
            else
               begin
                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_CUSTO').AsCurrency := 0;

                 dmGeral.BUS_CD_C_TME.Close;
                 dmGeral.BUS_CD_C_TME.Data :=
                     dmGeral.BUS_CD_C_TME.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString]));

                 if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2) then
                  begin
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;
                  end;
               end;
          end
       else
          begin
             if  (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) or
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean= true) or
                 ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean=false) and
                 (StrToCurr(saldo_fisico)>0)) then
               begin
                 dmGeral.BusCustoMedItem(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').Text,
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text,
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_COR').Text,
                           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').Text,
                           vlr_custo_medio);

                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_CUSTO').AsCurrency := vlr_custo_medio;

                 dmGeral.BUS_CD_C_TME.Close;
                 dmGeral.BUS_CD_C_TME.Data :=
                         dmGeral.BUS_CD_C_TME.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString]));

                 if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2) then
                    begin
                       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency := vlr_custo_medio;
                    end;
               end
             else
               begin
                 Showmessage('O saldo insuficiente.');
                 txt_Produto.SetFocus;
                 abort;
               end;

          end;
     end;


 { else
     begin
       txtSaldo.Text := saldo_fisico;
     end;         }
end;

procedure TEST_FM_M_NFS.txtQtdeExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddItens.Focused or txt_Produto.Focused or
     grdItens.Focused or cbbCST.Focused or
     txt_CFOP.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
    begin
      if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').IsNull) or
         (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency<=0) Then
         begin
           ShowMessage('Quantidade é obrigatório.');
           txtQtde.SetFocus;
           Abort;
         end;
    end
  else if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
    begin
      if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').IsNull) or
         (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency<0) Then
         begin
           ShowMessage('Quantidade tem que ser igual ou maior que zero.');
           txtQtde.SetFocus;
           Abort;
         end;
    end;


  if (saldo_fisico <> '') then
    begin
     if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency >0) and
        (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean= true)) and
        (StrToCurr(saldo_fisico)<dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency) then
       begin
        Showmessage('O registro de saldo insuficiente. Saldo disponível é:'+saldo_fisico);
        txtQtde.Text := '';
        txtQtde.SetFocus;
        abort;
       end;
    end;




end;

procedure TEST_FM_M_NFS.txtVencimentoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddItens.Focused or grdTitulos.Focused or
     cbbFormaPagamento.Focused  or txtPlanoContas.Focused then
     begin
       exit;
     end;


  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsString = '') then
     begin
       Showmessage('O campo "Vencimento" deve ser preenchido.');
       txtVencimento.SetFocus;
       abort;
     end;
end;

procedure TEST_FM_M_NFS.txtVlrMercadoriaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddItens.Focused or txt_Produto.Focused or
     grdItens.Focused or cbbCST.Focused or
     txt_CFOP.Focused or txtQtde.Focused then
     begin
       exit;
     end;


  if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').IsNull) or
     (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsFloat<=0) Then
     begin
       ShowMessage('Valor da Mercadoria é obrigatório.');
       txtVlrMercadoria.SetFocus;
       Abort;
     end;
end;

procedure TEST_FM_M_NFS.txtVlrParcelaExit(Sender: TObject);
var
  lSMPrincipal : TSMClient;
  lid_nfe_tit: string;
  lQtdeReg: integer;
  Cred_disp:Currency;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if cbbFormaPagamento.Focused  or txtPlanoContas.Focused or
     txtVencimento.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').text = '')     or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_FORMA_PAG').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FAT_CD_M_NFE_TIT.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtVlrParcela.SetFocus;
       abort;
     end;

  if  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_DOCIMPRESSO').AsInteger = 7 then
    BEGIN
      Cred_Disp := dmGeral.BusSaldoCreCli(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString);
      IF dmGeral.FAT_CD_M_NFE_TIT.FieldByName('VLR_TITULO').AsCurrency > Cred_Disp then
       begin
          ShowMessage('O valor de crédito disponível é '+FormatCurr('###,###,##0.00',Cred_disp));
          dmGeral.FAT_CD_M_NFE_TIT.FieldByName('VLR_TITULO').AsString :='';
          txtVlrParcela.SetFocus;
          exit;
       end;
    END;



  lQtdeReg   := dmGeral.FAT_CD_M_NFE_TIT.RecordCount;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_NFE_TIT').text = '' then
     begin
        lSMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.FAT_CD_M_NFE_TITid_nfe_tit.AsInteger :=
               lSMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
        finally
          FreeAndNil(lSMPrincipal);
        end;
     end;

  lid_nfe_tit := dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_NFE_TIT').AsString;

  dmGeral.FAT_CD_M_NFE_TIT.Post;

  pnTitulos.Enabled := false;
  btnAddTitulos.SetFocus;
  dmGeral.FAT_CD_M_NFE_TIT.locate('ID_NFE_TIT',lid_nfe_tit,[]);
end;

procedure TEST_FM_M_NFS.txt_CFOPButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CFO := TPSQ_FM_X_CFO.Create(Self);
   PSQ_FM_X_CFO.ShowModal;
      if not PSQ_FM_X_CFO.BUS_CD_C_CFO.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsString :=
             PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('ID_CFO').AsString;
         end;
   PSQ_FM_X_CFO.Free;
end;

procedure TEST_FM_M_NFS.txt_CFOPExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddItens.Focused or txt_Produto.Focused or
     grdItens.Focused or cbbCST.Focused then
     begin
       exit;
     end;


  if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsString = '')  then
     begin
        ShowMessage('O campo "CFOP" deve ser preenchido.');
        txt_CFOP.SetFocus;
        abort;
     end;


  dmGeral.CAD_CD_C_CFO.Close;
  dmGeral.CAD_CD_C_CFO.Data :=
  dmGeral.CAD_CD_C_CFO.DataRequest(VarArrayOf([0, txt_CFOP.Text]));
  if dmGeral.CAD_CD_C_CFO.IsEmpty then
     begin
       ShowMessage('CFOP não cadastrado!');
       txt_CFOP.SetFocus;
       txt_CFOP.Text := '';
       Abort;
     end;

  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').text) then
     begin
       txt_CFOP.SetFocus;
       txt_CFOP.Text := '';
     end;
end;

procedure TEST_FM_M_NFS.txt_CFOP_PaiButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CFO := TPSQ_FM_X_CFO.Create(Self);
   PSQ_FM_X_CFO.ShowModal;
      if not PSQ_FM_X_CFO.BUS_CD_C_CFO.IsEmpty then
         begin
          // txt_DescCondicaoPgto.Text := PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('DESCRICAO').AsString;
           lblDescCfop.Caption := PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('DESCRICAO').AsString;
           dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString :=
             PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('ID_CFO').AsString;
         end;
   PSQ_FM_X_CFO.Free;
end;

procedure TEST_FM_M_NFS.txt_CFOP_PaiEnter(Sender: TObject);
begin
  inherited;
  xAntCfo := dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text;
end;

procedure TEST_FM_M_NFS.txt_CFOP_PaiExit(Sender: TObject);
begin
  inherited;
  //if ActiveControl = btnCancelar Then Exit;

  if btnCancelar.Focused or btnGrava.Focused  then
     begin
       exit;
     end;

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
       ShowMessage('O campo "Cliente" deve ser preenchido.');
       if txt_Emitente.CanFocus then
          begin
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text := '';
            lblDescCfop.Caption := '';
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
       lblDescCfop.Caption := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text := '';
       txt_CFOP_Pai.SetFocus;
       Abort;
     end;

  lblDescCfop.Caption := dmGeral.CAD_CD_C_CFO.FieldByName('DESCRICAO').AsString;

  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) then
     begin
       lblDescCfop.Caption  := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text := '';
       txt_CFOP_Pai.SetFocus;

     end;

  pcMovimento.ActivePage := tsItens;
  btnAddItens.SetFocus;
end;

procedure TEST_FM_M_NFS.txt_EmitenteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;
           dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsVariant;
           dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString :=
                 PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TEST_FM_M_NFS.txt_EmitenteEnter(Sender: TObject);
begin
  inherited;
  xAntEmitente := dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text;
end;

procedure TEST_FM_M_NFS.txt_EmitenteExit(Sender: TObject);
begin
  inherited;
  if ActiveControl = btnCancelar Then Exit;

  if cbbTipoEstoque.Focused then
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

  if (trim(cbbTipoEstoque.Text) = '') or (cbbTipoEstoque.Text = '0') then
     begin
       ShowMessage('O campo "Tipo de estoque" deve ser preenchido.');
       if txt_Emitente.CanFocus then
          begin
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('INT_CONTRIBUINTE').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('INT_TIPOFINAL').text := '';
            cbbTipoEstoque.SetFocus;
          end;
       Abort;
     end;

  {if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').Text[1] in ['E','D'] then
     begin
       dmGeral.CAD_CD_C_FOR.Close;
       dmGeral.CAD_CD_C_FOR.Data :=
       dmGeral.CAD_CD_C_FOR.DataRequest(VarArrayOf([0, txt_Emitente.Text]));
       if dmGeral.CAD_CD_C_FOR.IsEmpty then
          begin
            ShowMessage('Fornecedor não cadastrado!');
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text := '';
            txt_Emitente.SetFocus;
            abort;
          end;
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString := dmGeral.CAD_CD_C_FOR.FieldByName('FANTASIA').AsString;
       if xOperacaoForm = 'I' then
          begin
            if not dmGeral.CAD_CD_C_FOR.FieldByName('ATIVO').AsBoolean then
               begin
                 ShowMessage('Fornecedor inativo!');
                 dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text := '';
                 dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text := '';
                 txt_Emitente.SetFocus;
                 abort;
               end;
          end;
       dmGeral.FAT_CD_M_NFE.FieldByName('CPF_CNPJ').text :=
         dmGeral.CAD_CD_C_FOR.FieldByName('DOC_CNPJ').AsString;
       dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text := dmGeral.CAD_CD_C_FOR.FieldByName('INT_UF').AsString;
     end;}



   dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text := '';
   dmGeral.FAT_CD_M_NFE.FieldByName('CPF_CNPJ').text := '';
   dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text := '';
   dmGeral.FAT_CD_M_NFE.FieldByName('INT_CONTRIBUINTE').text := '';
   dmGeral.FAT_CD_M_NFE.FieldByName('INT_TIPOFINAL').text := '';
   dmGeral.FAT_CD_M_NFE.FieldByName('INT_SUBSTITUTO_TRIBUTARIO').Text := '';

   dmGeral.BusCliente(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString);
   if dmGeral.BUS_CD_C_CLI.IsEmpty then
      begin
        ShowMessage('Cliente não cadastrado!');
        dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
        txt_Emitente.SetFocus;
        abort;
      end;


   if trim(dmGeral.BUS_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').AsString)='' then
     begin
        ShowMessage('CPJ/CNPJ do cliente não preenchido.');
        dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
        txt_Emitente.SetFocus;
        abort;
     end;

   if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('permitir_saida_est_emp').AsBoolean=true)) and
      (trim(dmGeral.BUS_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').AsString)=
      trim(dmGeral.CAD_CD_C_PAR.FieldByName('emp_cnpj').AsString)) then
     begin
        ShowMessage('CNPJ do cliente é o mesmo da empresa logada.');
        dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
        txt_Emitente.SetFocus;
        abort;
     end;



   dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text := dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
   dmGeral.FAT_CD_M_NFE.FieldByName('CPF_CNPJ').text := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').AsString;
   dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
   dmGeral.FAT_CD_M_NFE.FieldByName('INT_CONTRIBUINTE').AsInteger := dmGeral.BUS_CD_C_CLI.FieldByName('CONTRIBUINTE').AsInteger;
   dmGeral.FAT_CD_M_NFE.FieldByName('INT_TIPOFINAL').AsInteger := dmGeral.BUS_CD_C_CLI.FieldByName('TIPO_CLIENTE').AsInteger;
   dmGeral.FAT_CD_M_NFE.FieldByName('INT_SUBSTITUTO_TRIBUTARIO').AsBoolean := dmGeral.BUS_CD_C_CLI.FieldByName('substituto_tributario').AsBoolean;


  dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString := dmGeral.BusCFOPDoc( dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text,
                                                  dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text,'','',true);


  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString) = '' then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text := '';
       lblDescCfop.Caption := '';
       if txt_Emitente.canfocus then
          begin
            txt_Emitente.SetFocus;
            txt_Emitente.Text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('INT_CONTRIBUINTE').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('INT_TIPOFINAL').text := '';
            dmGeral.FAT_CD_M_NFE.FieldByName('INT_SUBSTITUTO_TRIBUTARIO').Text := '';
            abort;
          end;
     end;

  dmGeral.BusCfop(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString);

  lblDescCfop.Caption := dmGeral.BUS_CD_C_CFO.FieldByName('DESCRICAO').AsString;

  if not dmGeral.ValCfop(dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMPRESA').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text) then
     begin
       ShowMessage('O CFOP que se encontra no cadastro de tipo de estoque está errado para essa operação!');
       txt_Emitente.SetFocus;
       txt_Emitente.Text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_CONTRIBUINTE').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_TIPOFINAL').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').text := '';
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_SUBSTITUTO_TRIBUTARIO').Text := '';
       lblDescCFOP.Caption:= '';
       abort;
     end;
end;




procedure TEST_FM_M_NFS.txt_NFe_ChaveExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
      btnGrava.Focused  then
      begin
        exit;
      end;

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

procedure TEST_FM_M_NFS.txt_NumeroExit(Sender: TObject);
begin
  inherited;
 // if ActiveControl = btnCancelar Then Exit;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text) = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').IsNull) then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').Asinteger := 0;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) then
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger       := 1;
       dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger := 0; // Nota Própria
     end;

  if (trim(txt_Numero.Text) <> '') and  (dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) then
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
             dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger       := 0;
           end;
        dmGeral.BUS_CD_M_NFE_NFF.close;
      end
  else
      begin
        if xOperacaoForm = 'A' then
           begin
             if dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger = 1 then
                begin
                  ShowMessage('Este campo não poder ficar em branco ou com zero pois existe estoque e vencimentos gerado por esta nota.');
                  exit;
                end;
           end;
      end;
end;

procedure TEST_FM_M_NFS.txt_PerDescExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txt_Produto.Focused or cbbCST.Focused or
     btnAddItens.Focused or grdItens.Focused or txt_CFOP.Focused or
     txtQtde.Focused or txtVlrMercadoria.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValPerNf(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency)) then
     begin
       txt_PerDesc.SetFocus;
       abort;
     end;
end;



procedure TEST_FM_M_NFS.txt_ProdutoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   dmGeral.BusCliente(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text);
   PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsInteger :=
             PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
             PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           {dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsString :=
             PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsString; }
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TEST_FM_M_NFS.txt_ProdutoExit(Sender: TObject);
 var
  id_item, desc, und, id_busca_item : string;
  lRegimeSimples: Boolean;
  //tipo_item: integer;
  item_servico:integer;
begin
  inherited;

  {
  if btn_ImportaPedido.Focused or grd_Itens.Focused then
     begin
       abort;
     end;
}

  item_servico :=9;
  dmGeral.BUS_CD_C_ITE.Close;


  if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btnAddItens.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (txtQtde.Focused) or txt_CFOP.Focused  or (txtVlrMercadoria.Focused) or
          (txt_VlrDesc.Focused) or (txt_PerDesc.Focused) or
           cbbCST.Focused  then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txt_Produto.SetFocus;
             exit;
           end
       else
           begin
             pnItens.Enabled := false;
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

       if dmGeral.FAT_CD_M_NFE_ITE.state in [dsBrowse] then
          dmGeral.FAT_CD_M_NFE_ITE.edit;
     end;


  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text  := '';
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text  := '';
   id_busca_item :=  txt_Produto.Text;
  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txt_Produto.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txt_Produto.Text]));
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txt_Produto.Text]));
     end;

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txt_Produto.SetFocus;
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text := '';
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text  := '';
       exit;
     end;


   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = false) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = false) then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.Cancel;
       if dmGeral.FAT_CD_M_NFE_ITE.Locate('ID_ITEM',dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,[]) then
         begin

            if MessageDlg('O produto já foi lançado. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
              begin
                dmGeral.FAT_CD_M_NFE_ITE.Insert;
                txt_Produto.SetFocus;
                exit;
              end;
         end;
       dmGeral.FAT_CD_M_NFE_ITE.Insert;
     end;


  if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean) then
     begin
        if (dmGeral.FAT_CD_M_NFE_ITE.RecordCount > 0) then
          begin
             if (xTipo_item <> dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString) then
                begin
                   if (dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                     begin
                      ShowMessage('Não é permitido inserir item do tipo "Produto".');
                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
                      abort;
                     end;
                   if (dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') then
                     begin
                      ShowMessage('Não é permitido inserir item do tipo "Serviço".');
                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
                      abort;
                     end;
                 end;
          end
        else
          begin
            xTipo_item := dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;
          end;
    end;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').Text := id_busca_item;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_ID_NCM').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_NCM').AsString;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TRIBUTO').AsInteger :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_TRIBUTO').AsInteger;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VLR_MVA').AsCurrency :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_MVA').AsCurrency;

 { dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsString; }
  {if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') then
     begin }
       dmGeral.BusCliente(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').Text);

       dmGeral.BUS_CD_C_TME.Close;
       dmGeral.BUS_CD_C_TME.Data :=
                dmGeral.BUS_CD_C_TME.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString]));

       if (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger <> 2)  then
          begin
             dmGeral.CalcPrecoItem(1,dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text,
                        dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text,
                        dmGeral.FAT_CD_M_NFE_ITE,false,false);
          end;


   //  end;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ORIGEM_MERCADORIA').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_origem').AsString :=
                       dmGeral.BUS_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

  item_servico := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsInteger;

  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_INF_FISCO').AsInteger :=
     dmGeral.BusInfFiscal(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TRIBUTO').text,
                          dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text,
                          dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString);

  dmGeral.BusCliente(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString);
  dmGeral.BusTriReg(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_TRIBUTO').Text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text,
                         dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').Text,
                         dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString);

   BuscarCstIcm(dmGeral.FAT_CD_M_NFE_ITE,'C',lRegimeSimples);

   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsString := dmGeral.BusCFOPDoc( dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').text,
                                                  dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text,
                                                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString,
                                                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString,false);

   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DRE_PERC_IRCS').AsString := '';
   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DRE_PERC_OUT_DED_VEN').AsString := '';
   dmGeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString);
   if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DRE_PERC_IRCS').AsFloat :=
                    dmGeral.BUS_CD_C_GRU.FieldByName('DRE_PERC_IRCS').AsFloat;

       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('DRE_PERC_OUT_DED_VEN').AsFloat :=
                     dmGeral.BUS_CD_C_GRU.FieldByName('DRE_PERC_OUT_DED_VEN').AsFloat;

       dmGeral.FAT_CD_M_NFE_ITE.FieldByName('int_part_perc_fcp').AsCurrency :=
                     dmGeral.BUS_CD_C_GRU.FieldByName('part_perc_fcp').AsCurrency;


     end;
  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('per_cmv').AsString := '';
  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').Text<>'' then
   begin
    dmGeral.BusFuncionario(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_VENDEDOR').Text);
    if not dmGeral.BUS_CD_C_FUN.IsEmpty then
      begin
        if dmGeral.BUS_CD_C_FUN.FieldByName('VND_INTERNO_EXTERNO').AsInteger =0 then
          begin
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PER_CMV').AsCurrency := dmGeral.BUS_CD_C_ITE.FieldByName('per_cmv_interno').AsCurrency;
          end;
        if dmGeral.BUS_CD_C_FUN.FieldByName('VND_INTERNO_EXTERNO').AsInteger =1 then
          begin
            dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PER_CMV').AsCurrency := dmGeral.BUS_CD_C_ITE.FieldByName('per_cmv_externo').AsCurrency;
          end;
      end;
   end;




 { dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
          dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').Text])); }




  try
     pnItens.onExit := nil;

  finally
     pnItens.OnExit := pnItensExit;
  end;

   if item_servico <> 9 then
     ChamaCorTamanho;

end;

procedure TEST_FM_M_NFS.Atualizar_xBusca;
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

procedure TEST_FM_M_NFS.txt_ProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     pcMovimento.ActivePage := tsTitulos;

  if key = vk_f7 then
     Atualizar_xBusca;

end;

procedure TEST_FM_M_NFS.txt_SerieExit(Sender: TObject);
begin
  inherited;
  //acrescentei
 // if ActiveControl = btnCancelar Then Exit;

   if btnCancelar.Focused or btnGrava.Focused  or cbbTipoEstoque.Focused or
     txt_Emitente.Focused or txt_Numero.Focused  then
     begin
       exit;
     end;

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
      end;  }

   if (dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsString = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsInteger < 0) then
    begin
      ShowMessage('O campo "Série" deve ser preenchido.');
      txt_Serie.SetFocus;
      abort;
    end;
end;

procedure TEST_FM_M_NFS.txt_SubSerieExit(Sender: TObject);
begin
  inherited;
  //acrescentei
   if ActiveControl = btnCancelar Then Exit;

   if btnCancelar.Focused or btnGrava.Focused or cbbTipoEstoque.Focused or
     txt_Emitente.Focused or txt_Numero.Focused or txt_Serie.Focused  then
     begin
       exit;
     end;


 { if (trim(txt_Numero.Text) = '0') and (trim(txt_SubSerie.text) <> '' ) then
      begin
        ShowMessage('Se o campo "Número" for preenchido com 0, o campo sub-série não pode ser preenchido.');
        txt_SubSerie.text := ' ';
        txt_SubSerie.SetFocus;
        Abort;
      end; }

  if (dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString = '') or
     (dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsInteger < 0) then
     begin
       ShowMessage('O valor do campo "Sub-Série" tem que ser maior ou igual a zero.');
       txt_SubSerie.SetFocus;
       abort;
     end;
end;

procedure TEST_FM_M_NFS.txt_VlrDescExit(Sender: TObject);
var
  ID_ST_ICM:String;
  SMPrincipal : TSMClient;
  seq_item: String;
begin
  inherited;

  if btnCancelar.Focused or btnGrava.Focused  then
     begin
       exit;
     end;

  IF (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger =1) then
    begin
      if txt_Produto.Focused or grdItens.Focused or txt_CFOP.Focused or
         txtQtde.Focused or txtVlrMercadoria.Focused or
         txt_PerDesc.Focused  then
         begin
           exit;
         end;
    end;

  IF (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger =2) then
    begin
      if txt_Produto.Focused or txt_CFOP.Focused or
         txtQtde.Focused or txtVlrMercadoria.Focused or
         txt_PerDesc.Focused  then
         begin
           exit;
         end;
    end;



   IF (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger =1) then
    begin
      if not (dmGeral.TesValVlrDescNf(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency,
                                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency )) then
         begin
           txt_VlrDesc.SetFocus;
           abort;
         end;
    end;

  IF (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger =2) then
    begin
      if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency<
                                      dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency) then
         begin
           ShowMessage('Valor desconto não pode ser maior que valor da mercaodria.');
           txt_VlrDesc.SetFocus;
           abort;
         end;
    end;

  //ID_ST_ICM := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString;

  CalcPesoItem(dmGeral.FAT_CD_M_NFE_ITE);

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1)  then
    begin
      dmGeral.CalculaTributos(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_ITE);


      if trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByname('id_st_icm').AsString) = '00' then
         begin
           pnlIcms.Visible := true;
           txtIcmsBS.SetFocus;
           exit;
         end;

      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('hab_icms_desn_saida').AsBoolean = true) and
         (pos(trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByname('id_st_icm').AsString),'20-30-40-41-50-70-90') <> 0) then
         begin
           pnlDesn.Visible := true;
           cbbMotDesn.SetFocus;
           exit;
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

      //dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=  ID_ST_ICM;
      //cbbCST.Text:= ID_ST_ICM;
      dmGeral.FAT_CD_M_NFE_ITE.Post;
      pnItens.Enabled := false;
      btnAddItens.SetFocus;

      dmGeral.FAT_CD_M_NFE_ITE.locate('ID_SEQUENCIA',seq_item,[]);
    end
  else if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
    begin
       pnlIcms.Visible := true;
       txtIcmsBS.SetFocus;
    end;

end;

procedure TEST_FM_M_NFS.txt_VlrUnitarioExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddItens.Focused or txt_Produto.Focused or
     grdItens.Focused or cbbCST.Focused or
     txt_CFOP.Focused or txtQtde.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
    begin
      if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').IsNull) or
         (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsFloat<=0) Then
         begin
           ShowMessage('Valor Unitário é obrigatório.');
           txt_VlrUnitario.SetFocus;
           Abort;
         end;
    end;
end;

procedure TEST_FM_M_NFS.cbbTipoEstoqueEnter(Sender: TObject);
begin
  inherited;
  xAntIdTipoEstoque := dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text;
  dmGeral.BusTipoEstoque(8,'1');
  cbbTipoEstoque.DropDown;

end;

procedure TEST_FM_M_NFS.cbbTipoEstoqueExit(Sender: TObject);
begin
  inherited;
  if ActiveControl = btnCancelar Then Exit;




  if xAntIdTipoEstoque <>  dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text then
     begin
       dmGeral.FAT_CD_M_NFE_ITE.cancel;
       if not dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
          begin
            ShowMessage('Já existe produtos lançado nesta nota fiscal, alteração do tipo de estoque não permitida!');
            dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString := xAntIdTipoEstoque;
            Abort;
          end;
     end;

  dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text);

  if dmGeral.BUS_CD_C_TME.IsEmpty then
     Begin
       ShowMessage('Tipo de estoque não cadastrado!');
       cbbTipoEstoque.SetFocus;
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString :='';
       Abort;
     end;

   dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString := dmGeral.BUS_CD_C_TME.FieldByName('DESCRICAO').text;

  if not dmGeral.BUS_CD_C_TME.FieldByName('ATIVO').AsBoolean then
     begin
       ShowMessage('Tipo de estoque inativo.');
       cbbTipoEstoque.SetFocus;
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString :='';
       abort;
     end;

   if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 1 then
     begin
       ShowMessage('O tipo de estoque deve ser de "Saida".');
       cbbTipoEstoque.SetFocus;
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString :='';
       abort;
     end;

   if not (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger in [0,2]) then
     begin
       ShowMessage('O "Indicador" do Tipo de movimento de estoque deve ser do tipo "Normal" ou de "Transferência"!');
       cbbTipoEstoque.SetFocus;
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMETME').AsString :='';
       Abort;
     end;

 { if dmGeral.CAD_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 0 then
     begin
       ShowMessage('O tipo de estoque deve ser de "Entrada".');
       txt_IdTipoEstoque.SetFocus;
       abort;
     end; }

  //               gb_NotasRef.Visible := false;

  dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text :=
    dmGeral.MontaTipoNota(dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').text);

  {if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text[1] in ['R'] then // Devolução de cliente
     begin
       dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text :=
         dmGeral.BusSerieNota(dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMPRESA').text,
                              dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text);
       if trim(dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').text) = '' then
          begin
            txt_IdTipoEstoque.SetFocus;
            abort;
          end;
                   // gb_NotasRef.Visible := true;
     end;}

 // if dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').text[1] in ['S','D'] then
    // begin
       if (dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').text = '') then
          begin
            dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime := xDataSis;
          end;
    // end;





end;

procedure TEST_FM_M_NFS.ChamaCorTamanho;
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

procedure TEST_FM_M_NFS.AbrirBuscas;
begin
  dmGeral.BUS_PR_X_ICM_ICO;
  dmGeral.BUS_PR_X_IPI_SAI;
  dmGeral.BUS_PR_X_IPI_ENT;
  dmGeral.BUS_PR_X_MOD_NFE;
  dmGeral.BUS_PR_X_FRE;
  dmGeral.BUS_PR_X_MDS;

  dmGeral.BusTipoEstoque(4,'1');
  dmGeral.BusCondPgto(1,'%');
  dmGeral.BusFuncionario(1,'%');

 
end;

end.
