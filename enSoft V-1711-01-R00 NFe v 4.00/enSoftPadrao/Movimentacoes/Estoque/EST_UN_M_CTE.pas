unit EST_UN_M_CTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, vcl.wwdbigrd, JvDBControls,
  JvExMask, JvToolEdit, vcl.wwdblook, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList,
  Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbgrid, Vcl.ExtCtrls,
  Datasnap.DBClient, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TEST_FM_M_CTE = class(TPAD_FM_X_PAD)
    cbbLocalizacao: TwwDBLookupCombo;
    gbItens: TGroupBox;
    pnItens: TPanel;
    lblQuantidade: TLabel;
    txtItemDescricao: TDBText;
    txtUnd: TDBText;
    lblUnd: TLabel;
    txtQtde: TDBEdit;
    txtBuscaItem: TJvDBComboEdit;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    lblLocalizacao: TLabel;
    lblPeriodo: TLabel;
    lblAte: TLabel;
    txtObservacao: TDBMemo;
    Label1: TLabel;
    lblItem: TLabel;
    lblDescricaoItem: TLabel;
    dsItens: TwwDataSource;
    cbbTamanho: TwwDBLookupCombo;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    txtNroLote: TDBEdit;
    Label2: TLabel;
    btnAtualizaCont: TBitBtn;
    Label5: TLabel;
    dpkDataIni: TJvDBDateEdit;
    dpkDataFim: TJvDBDateEdit;
    cbbAlmoxarifado: TwwDBLookupCombo;
    ClientDataSet1: TClientDataSet;
    Label3: TLabel;
    txtVlrCusto: TDBEdit;
    Label4: TLabel;
    txtDiferenca: TDBEdit;
    pnlLegenda: TGroupBox;
    lblAberto: TLabel;
    lblImportado: TLabel;
    pnlAberto: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    btnImprimir: TBitBtn;
    EST_PD_M_CTE: TfrxPDFExport;
    EST_XL_M_CTE: TfrxXLSExport;
    EST_DB_M_CTE_ITE: TfrxDBDataset;
    EST_DB_M_CTE: TfrxDBDataset;
    EST_FR_M_CTE: TfrxReport;
    btnZerarEstoque: TBitBtn;
    chkCorrigirCustoMed: TDBCheckBox;
    pnlDtaVenc: TPanel;
    txtDtaVenc: TJvDBDateEdit;
    Label6: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure btnFiltroClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure cbbLocalizacaoEnter(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure txtNroLoteExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure cbbLocalizacaoExit(Sender: TObject);
    procedure dpkDataIniExit(Sender: TObject);
    procedure dpkDataFimExit(Sender: TObject);
    procedure txtVlrCustoExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure rgCteTipoClick(Sender: TObject);
    procedure rgCteTipoEnter(Sender: TObject);
    procedure btnAtualizaContClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure grdItensEnter(Sender: TObject);
    procedure grdItensExit(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtNroLoteEnter(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnZerarEstoqueClick(Sender: TObject);
    procedure chkCorrigirCustoMedClick(Sender: TObject);
    procedure txtDtaVencExit(Sender: TObject);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure txtQtdeEnter(Sender: TObject);
    procedure txtBuscaItemEnter(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar_xBusca;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure AcoesIniciais;
    function  VerifLote: Boolean;
    procedure PreencItensPorLoc;
    procedure PreencItensPorPer;
    procedure AbrirBuscas;
    procedure AtualizarContagem;
    procedure PassarCdsAnterior;
    procedure TesteReport(fastreport: TfrxReport; memoa, memob: string; teste: Boolean);
    function  ExisteItemComNroLot: Boolean;
    function  ExisteItemNaoContado: Boolean;
    var
      xbusca_item: String;
      xCteTipoAnt: integer;
      xCdsItensAntCteIte:  TClientDataSet;
  public
    { Public declarations }
  end;

var
  EST_FM_M_CTE: TEST_FM_M_CTE;

implementation

{$R *.dfm}

uses uDmGeral,uProxy,UApplayClassProxy, EST_RN_M_CTE, PSQ_UN_X_ITE,
  FAT_RN_M_NFE, enConstantes, enFunc;

procedure TEST_FM_M_CTE.AbrirBuscas;
begin

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       dmGeral.BusAlmox(1,'%');
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       dmGeral.BusCor(1,'%');
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       dmGeral.BusTamanho(1,'%');
     end;
end;

procedure TEST_FM_M_CTE.acAdicionaExecute(Sender: TObject);
begin
  chkCorrigirCustoMed.onClick := nil;

  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_CTE);

  HabilDesabCampos(true,clWindow);

  pnItens.Enabled := false;

  PassarCdsAnterior;
  rgCteTipoClick(self);

  btnAtualizaCont.Enabled := false;
  btnImprimir.Enabled := false;
  btnZerarEstoque.Enabled := false;

  txtQtde.Enabled := true;
  txtQtde.Color   := clWhite;

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
     begin
       txtNroLote.color   := clWhite;
       txtNroLote.Enabled := true;
     end;

  chkCorrigirCustoMed.onClick :=
    chkCorrigirCustoMedClick;

  if cbbAlmoxarifado.CanFocus then
     cbbAlmoxarifado.SetFocus
  else
     txtObservacao.SetFocus;

end;

procedure TEST_FM_M_CTE.acAlterarExecute(Sender: TObject);
begin
  try

  chkCorrigirCustoMed.onClick := nil;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_CTE) then
     begin
       inherited;

       chkCorrigirCustoMed.onClick :=
       chkCorrigirCustoMedClick;

       pnItens.Enabled := false;

       HabilDesabCampos(false,$00DADADA);

       rgCteTipoClick(self);

       txtQtde.Enabled := true;
       txtQtde.Color   := clWhite;
       if dmGeral.EST_CD_M_CTE.FieldByName('corrigir_custo_medio').AsBoolean then
          begin
            txtQtde.Enabled := false;
            txtQtde.Color   := $00DADADA;
          end;

       if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
           begin
             txtNroLote.color   := clWhite;
             txtNroLote.Enabled := true;
             if chkCorrigirCustoMed.Checked then
                begin
                  txtNroLote.color   := $00DADADA;
                  txtNroLote.Enabled := false;
                end;
           end;

       txtObservacao.SetFocus;
       btnAtualizaCont.Enabled := false;
       btnImprimir.Enabled := false;
       btnZerarEstoque.Enabled := false;

       PassarCdsAnterior;
    end;
  finally
    chkCorrigirCustoMed.onClick :=
    chkCorrigirCustoMedClick;

  end;
end;

procedure TEST_FM_M_CTE.acCancelarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_CTE) then
      begin
        inherited;
        dbGrid.SetFocus;

        btnImprimir.Enabled := true;

        btnZerarEstoque.Enabled := dmGeral.BUS_CD_C_FUN.FieldByName('SEG_ZERAR_EST').AsBoolean;
        btnAtualizaCont.Enabled := dmGeral.BUS_CD_C_FUN.FieldByName('sgq_perm_atual_contagem').AsBoolean;

      end
   else
      begin
        txtObservacao.SetFocus;
      end;
end;

procedure TEST_FM_M_CTE.acExcluirExecute(Sender: TObject);
begin
  if EST_RN_M_CTE.EST_CD_M_CTE_TesPermExclusao  then
     begin
       inherited;
       Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_CTE);
     end;
end;

procedure TEST_FM_M_CTE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  //dmGeral.EST_CD_M_CTE.ApplyUpdates(0);
  //abort;
  EST_CD_M_CTE_OutrasValidacoes;


  if EST_RN_M_CTE.EST_CD_M_CTE_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmGeral.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsString;

             DmGeral.Grava(dmGeral.EST_CD_M_CTE);

             inherited;
             dmGeral.EST_CD_M_CTE.Close;
             dmGeral.EST_CD_M_CTE.Data :=
             dmGeral.EST_CD_M_CTE.DataRequest(
                     VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));

             btnImprimir.Enabled := true;

             btnZerarEstoque.Enabled := dmGeral.BUS_CD_C_FUN.FieldByName('SEG_ZERAR_EST').AsBoolean;
             btnAtualizaCont.Enabled := dmGeral.BUS_CD_C_FUN.FieldByName('sgq_perm_atual_contagem').AsBoolean;

           end
        else
           begin
             if txtObservacao.CanFocus then
                txtObservacao.SetFocus;
           end;
     end
  else
     begin
       if txtObservacao.CanFocus then
          txtObservacao.SetFocus;
     end;
end;

procedure TEST_FM_M_CTE.AcoesIniciais;
begin

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_ent').AsInteger > 0 then
     begin
       dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_ent').AsString);
       if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 0 then
          begin
            ShowMessage('Tipo de movimento de estoque "entrada" para a contagem não foi encontrado.');
            close;
          end;
        if (not dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean) then
           begin
            ShowMessage('Tipo de movimento de estoque "entrada" para a contagem que está nos parâmetros não movimenta estoque.');
            close;
           end;
     end
  else
     begin
       ShowMessage('Tipo de movimento de estoque "entrada" não foi encontrado nos parâmetros.');
       close;
     end;


  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_sai').AsInteger > 0 then
     begin
       dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_sai').AsString);
       if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 1 then
          begin
            ShowMessage('Tipo de movimento de estoque "saída" para a contagem não foi encontrado.');
            close;
          end;
       if not dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean then
          begin
            ShowMessage('Tipo de movimento de estoque "saída" para a contagem que está nos parâmetros não movimenta estoque.');
            close;

          end;
     end
  else
     begin
       ShowMessage('Tipo de movimento de estoque "saída" não foi encontrado nos parâmetros.');
       close;
     end;


  if not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       cbbAlmoxarifado.Color   := $00DADADA;
       cbbAlmoxarifado.Enabled := false;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       cbbCor.color   := $00DADADA;
       cbbCor.Enabled := false;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       cbbTamanho.color   := $00DADADA;
       cbbTamanho.Enabled := false;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
     begin
       txtNroLote.color   := $00DADADA;
       txtNroLote.Enabled := false;
     end;

   if not ((dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean=true) and
       (dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean=false))  then
     begin
        grdItens.ColumnByName('dta_vencimento').Visible := false;
     end;
end;

procedure TEST_FM_M_CTE.AtualizarContagem;
var
   codigo: String;
begin


   //dmGeral.EST_CD_M_CTE_ITE.Filtered := true;
   //dmGeral.EST_CD_M_CTE_ITE.Filter :=   'TIPO_DIFERENCA = 1 OR TIPO_DIFERENCA = 2 ';
   //showmessage(inttostr(dmGeral.EST_CD_M_CTE_ITE.recordcount));
   //dmGeral.EST_CD_M_CTE_ITE.First;

   try
     Screen.Cursor := crHourGlass;

   dmGeral.EST_CD_M_CTE.Edit;
   dmGeral.EST_CD_M_CTE.FieldByName('DTA_MOVIMENTO').AsDateTime := xDataSis;
   dmGeral.EST_CD_M_CTE.FieldByName('STATUS').AsInteger := 1;

   codigo := dmGeral.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsString;

   DmGeral.Grava(dmGeral.EST_CD_M_CTE);

   inherited;
   dmGeral.EST_CD_M_CTE.Close;
   dmGeral.EST_CD_M_CTE.Data :=
   dmGeral.EST_CD_M_CTE.DataRequest(
           VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));

    btnAtualizaCont.Enabled := true;
   finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TEST_FM_M_CTE.Atualizar_xBusca;
begin
   if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
   else
   if xbusca_item = 'ID_ITEM' then
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

procedure TEST_FM_M_CTE.btnImprimirClick(Sender: TObject);
var
  codigo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
inherited;
if not dmGeral.EST_CD_M_CTE.IsEmpty then
  begin
    PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
    if FileExists(PathImg) then
      begin
        LogoEmpresa := TfrxPictureView(EST_FR_M_CTE.FindObject('imgEmpresa1'));
        if Assigned(LogoEmpresa) then
          begin
            LogoEmpresa.Picture.LoadFromFile(PathImg);
          end;
      end;

    if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean then
      dmgeral.EST_CD_M_CTE_ITE.IndexFieldNames := 'num_lote'
    else
      dmgeral.EST_CD_M_CTE_ITE.IndexFieldNames := 'int_nomeite';

    dmGeral.BusCodigoRevListMestre(true,false,EST_FR_M_CTE.Name,xCodLme,xRevLme,nil);
    EST_FR_M_CTE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
    EST_FR_M_CTE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);

    TesteReport(EST_FR_M_CTE,'memo11','memo22',dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean);
    TesteReport(EST_FR_M_CTE,'memo16','memo23',dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean);
    TesteReport(EST_FR_M_CTE,'memo17','memo24',dmgeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean);

    EST_FR_M_CTE.PrepareReport();
    EST_FR_M_CTE.ShowReport();
  end
else
  begin
    ShowMessage('Nenhum registro encontrado!');
    exit;
  end;
end;

procedure TEST_FM_M_CTE.btnZerarEstoqueClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;

    if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_ent').AsString = '') or
       (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_sai').AsString = '') then
      begin
        ShowMessage('Deve ser preenchido os campos do Tipo de Mov. Estoque na tela de parâmetros na aba "Estoque" no bloco "Contagem de Estoque". ');
        exit;
      end;

   dmGeral.BUS_CD_M_CTE.Close;
   dmGeral.BUS_CD_M_CTE.Data :=
   dmGeral.BUS_CD_M_CTE.DataRequest(
           VarArrayOf([92, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));

   if not dmGeral.BUS_CD_M_CTE.IsEmpty then
     begin
       ShowMessage('Há registros de contagem que devem ser atualizadas.');
       dmGeral.BUS_CD_M_CTE.Close;
       exit;
     end;
    dmGeral.BUS_CD_M_CTE.Close;




   if MessageDlg('Deseja realmente zerar estoque?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        Screen.Cursor := crHourGlass;
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          SMPrincipal. enZerarContagem(dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'',false,false);
          ShowMessage('Estoque zerado com sucesso.');
        finally
          Screen.Cursor := crDefault;
          FreeAndNil(SMPrincipal);
        end;
     end;
end;

procedure TEST_FM_M_CTE.btnAtualizaContClick(Sender: TObject);
begin
  inherited;
  if dmGeral.EST_CD_M_CTE.FieldByName('STATUS').AsInteger = 1 then
     begin
       ShowMessage('Esta contagem já foi atualizada.');
       abort;
     end;

  if MessageDlg('Confirma atualização?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       AtualizarContagem;
     end;
end;

procedure TEST_FM_M_CTE.btnFiltroClick(Sender: TObject);
var
 xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
       xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    dmGeral.EST_CD_M_CTE.Close;
    dmGeral.EST_CD_M_CTE.Data :=
        dmGeral.EST_CD_M_CTE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger, xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TEST_FM_M_CTE.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmGeral.EST_CD_M_CTE_ITE.Insert;
  
  txtBuscaItem.Enabled := true;
  txtBuscaItem.SetFocus;

end;

procedure TEST_FM_M_CTE.Button1Click(Sender: TObject);
begin
  inherited;
  dmGeral.EST_CD_M_CTE.BeforeEdit := nil;
  dmGeral.EST_CD_M_CTE.edit;
  dmGeral.EST_CD_M_CTE.FieldByName('STATUS').AsInteger := 0;
  dmGeral.EST_CD_M_CTE.post;
  dmGeral.EST_CD_M_CTE.ApplyUpdates(0);

  dmGeral.EST_CD_M_CTE.BeforeEdit := dmGeral.EST_CD_M_CTEBeforeEdit;
end;

procedure TEST_FM_M_CTE.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [1]  then
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

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TEST_FM_M_CTE.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TEST_FM_M_CTE.cbbTamanhoExit(Sender: TObject);
var
  id_item, desc,desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho,loca_rua,loca_prateleira,loca_escaninho : string;
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or
     cbbCor.Focused or
     txtBuscaItem.Focused or grdItens.Focused then
     begin
       exit;
     end;


  if trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
       Showmessage('O campo "Tamanho" deve ser preenchido.');
       cbbTamanho.SetFocus;
       exit;
     end;


  if dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text <> '' then
     begin
       dmGeral.BusTamanho(0,dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text);
       if dmGeral.BUS_CD_C_TAM.IsEmpty then
          begin
            Showmessage('Tamanho não encontrado.');
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text := '';
            cbbTamanho.SetFocus;
            exit;
          end;
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').text :=
               dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;
     end;


  try
  pnItens.onExit := nil;

  if dmGeral.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
       if (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) {and
          (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)} then
           begin
             id_item       := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString;
             id_busca_item := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
             desc          := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
             und           := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;
             id_cor        := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString;
             desc_cor      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString;
             id_tamanho    := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString;
             desc_tam      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString;
             loca_rua      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString;
             loca_prateleira := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString;
             loca_escaninho := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString;


             dmGeral.EST_CD_M_CTE_ITE.cancel;

             if dmGeral.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean then
                begin
                  if dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,id_cor,id_tamanho,
                                               dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'') then
                     begin
                       ShowMessage('Item já inserido na contagem!');
                       btn_Add_Itens.SetFocus;
                       abort;
                     end
                  else
                     begin
                        dmGeral.EST_CD_M_CTE_ITE.Insert;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString  := loca_rua;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat         := 0;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        := 0;

                        ActiveControl := nil;
                        PostMessage(txtVlrCusto.Handle, WM_SETFOCUS, 0, 0);
                        txtVlrCusto.SetFocus;
                     end;
                end
             else
                begin
                   if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean) and
                                               dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,id_cor,id_tamanho,
                                               dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'') then
                      begin
                        dmGeral.EST_CD_M_CTE_ITE.edit;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat  :=
                                dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat + 1;
                        dmGeral.EST_CD_M_CTE_ITE.post;
                        dmGeral.EST_CD_M_CTE_ITE.Insert;
                        btn_Add_Itens.SetFocus;
                        exit;
                      end
                   else
                      begin
                          if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = true) then
                            begin
                               dmGeral.EST_CD_M_LOT.Data :=
                                       dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'', id_item,id_cor,id_tamanho,dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').AsString]));
                            end
                          else
                            begin
                               dmGeral.EST_CD_M_LOT.Data :=
                                        dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'',id_item,id_cor,id_tamanho,0]));
                            end;
                         if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean and (not dmGeral.EST_CD_M_LOT.IsEmpty)
                              and (not dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,id_cor,id_tamanho,
                                               dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'')) then
                           begin
                             dmGeral.EST_CD_M_LOT.First;
                             while not dmGeral.EST_CD_M_LOT.eof do
                               begin
                                 dmGeral.EST_CD_M_CTE_ITE.Insert;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString := id_item;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEITE').AsString := desc;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEUND').AsString := und;

                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString := id_cor;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString := desc_cor;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString := id_tamanho;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString := desc_tam;

                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString  := loca_rua;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                                 dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString :=
                                                        dmGeral.EST_CD_M_LOT.FieldByName('NUM_LOTE').AsString;
                                 dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := dmGeral.EST_CD_M_CTE_ITEnum_loteChange;

                                 dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := nil;
                                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString := '';
                                 dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := dmGeral.EST_CD_M_CTE_ITEcontagemChange;



                                 dmGeral.EST_CD_M_CTE_ITE.Post;
                                 dmGeral.EST_CD_M_LOT.Next;
                               end;
                               dmGeral.EST_CD_M_CTE_ITE.First;

                               dmGeral.EST_CD_M_CTE_ITE.Locate('ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([id_item,id_cor,id_tamanho]),[]);

                               if txtQtde.CanFocus then
                                  begin
                                    dmGeral.EST_CD_M_CTE_ITE.edit;
                                    txtQtde.Setfocus;
                                  end;

                           end
                        else
                          begin
                            dmGeral.EST_CD_M_CTE_ITE.Insert;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString  := loca_rua;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                            if txtNroLote.CanFocus then
                               begin
                                  ActiveControl := nil;
                                  PostMessage(txtNroLote.Handle, WM_SETFOCUS, 0, 0);
                                  txtNroLote.SetFocus;
                               end
                            else
                               begin
                                  ActiveControl := nil;
                                  PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
                                  txtQtde.SetFocus;
                               end;
                          end;
                      end;
                end;
           end;
     end;

  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TEST_FM_M_CTE.chkCorrigirCustoMedClick(Sender: TObject);
begin
  inherited;

  if (btnCancelar.Enabled) and (dmGeral.EST_CD_M_CTE.FieldByName('status').AsInteger = 0) then
     begin
        dmGeral.EST_CD_M_CTE_ITE.Cancel;
        if not dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
           begin
             dmGeral.EST_CD_M_CTE.Cancel;
             dmGeral.EST_CD_M_CTE.edit;
             ShowMessage('É preciso que os itens inserido sejam apagados!');
             abort;
           end;

        txtQtde.Enabled := true;
        txtQtde.Color   := clWhite;
        if chkCorrigirCustoMed.Checked then
           begin
             txtQtde.Enabled := false;
             txtQtde.Color   := $00DADADA;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
           begin
             txtNroLote.color   := clWhite;
             txtNroLote.Enabled := true;
             if chkCorrigirCustoMed.Checked then
                begin
                  txtNroLote.color   := $00DADADA;
                  txtNroLote.Enabled := false;
                end;
           end;
     end;
end;

procedure TEST_FM_M_CTE.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (dmGeral.EST_CD_M_CTE.FieldByName('STATUS').Value = 1) then
      Afont.Color := clHotLight;
end;

procedure TEST_FM_M_CTE.dpkDataFimExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  PreencItensPorPer;
end;

procedure TEST_FM_M_CTE.dpkDataIniExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;
  PreencItensPorPer;
end;

function TEST_FM_M_CTE.ExisteItemComNroLot: Boolean;
begin
  result := false;

  dmGeral.EST_CD_M_CTE_ITE.Cancel;
  dmGeral.EST_CD_M_CTE_ITE.First;
  while not dmGeral.EST_CD_M_CTE_ITE.eof do
     begin
       if trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '' then
          begin
            result := true;
            dmGeral.EST_CD_M_CTE_ITE.Last;
          end;
       dmGeral.EST_CD_M_CTE_ITE.Next;
     end;
  dmGeral.EST_CD_M_CTE_ITE.First;
end;

function TEST_FM_M_CTE.ExisteItemNaoContado: Boolean;
begin
end;

procedure TEST_FM_M_CTE.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusAlmox(1,'%');;
  cbbAlmoxarifado.DropDown;
end;

procedure TEST_FM_M_CTE.cbbAlmoxarifadoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(cbbAlmoxarifado.Text) ='') then
    begin
      ShowMessage('Almoxarifado deve ser preenchido.');
      cbbAlmoxarifado.SetFocus;
      exit;
    end;

  dmGeral.BusAlmox(0,dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text);
  if dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       Showmessage('Almoxarifado não encontrado.');
       dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text := '';
       cbbAlmoxarifado.SetFocus;
       exit;
     end;

end;

procedure TEST_FM_M_CTE.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TEST_FM_M_CTE.cbbCorExit(Sender: TObject);
var
  id_item, desc, desc_cor, und, id_busca_item, id_cor,loca_rua,loca_prateleira,loca_escaninho : string;
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or
     txtBuscaItem.Focused or grdItens.Focused then
     begin
       exit;
     end;

  if trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text) = '' then
     begin
       Showmessage('O campo "Cor" deve ser preenchido.');
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  try
  pnItens.onExit := nil;

  if dmGeral.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
       if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) {and
          (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)} then
           begin
             id_item       := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString;
             id_busca_item := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
             desc          := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
             und           := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;
             id_cor        := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString;
             desc_cor      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString;

             loca_rua := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString;
             loca_prateleira := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString;
             loca_escaninho := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString;

             dmGeral.EST_CD_M_CTE_ITE.cancel;

             if dmGeral.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean then
                begin
                  if dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,id_cor,'',
                                               dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'') then
                     begin
                       ShowMessage('Item já inserido na contagem!');
                       btn_Add_Itens.SetFocus;
                       abort;
                     end
                  else
                     begin
                        dmGeral.EST_CD_M_CTE_ITE.Insert;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString       := loca_rua;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;


                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat         := 0;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        := 0;


                        if cbbTamanho.CanFocus then
                           begin
                             ActiveControl := nil;
                             PostMessage(cbbTamanho.Handle, WM_SETFOCUS, 0, 0);
                             cbbTamanho.SetFocus;
                           end
                        else
                           begin
                             ActiveControl := nil;
                             PostMessage(txtVlrCusto.Handle, WM_SETFOCUS, 0, 0);
                             txtVlrCusto.SetFocus;
                           end;
                     end;
                end
             else
                begin
                   if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean) and dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,id_cor,'',
                                               dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'') then
                      begin
                        dmGeral.EST_CD_M_CTE_ITE.edit;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat  :=
                                dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat + 1;
                        dmGeral.EST_CD_M_CTE_ITE.post;
                        dmGeral.EST_CD_M_CTE_ITE.Insert;
                        btn_Add_Itens.SetFocus;
                        exit;
                      end
                   else
                      begin
                         if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = true) then
                            begin
                               dmGeral.EST_CD_M_LOT.Data :=
                                       dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'',id_item,id_cor,
                                           0,dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').AsString]));
                            end
                          else
                            begin
                               dmGeral.EST_CD_M_LOT.Data :=
                                        dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'', id_item,id_cor,0,0]));
                            end;
                         if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean and (not dmGeral.EST_CD_M_LOT.IsEmpty) and
                                    (not dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,id_cor,'',
                                                dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'')) then
                           begin
                             dmGeral.EST_CD_M_LOT.First;
                             while not dmGeral.EST_CD_M_LOT.eof do
                                 begin
                                   if dmGeral.EST_CD_M_LOT.FieldByName('qtde_atual').AsCurrency > 0 then
                                      begin
                                         dmGeral.EST_CD_M_CTE_ITE.Insert;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString := id_item;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEITE').AsString := desc;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEUND').AsString := und;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString := id_cor;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString := desc_cor;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString       := loca_rua;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;


                                         dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString :=
                                                                dmGeral.EST_CD_M_LOT.FieldByName('NUM_LOTE').AsString;
                                         dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := dmGeral.EST_CD_M_CTE_ITEnum_loteChange;

                                         dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := nil;
                                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString := '';
                                         dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := dmGeral.EST_CD_M_CTE_ITEcontagemChange;
                                         dmGeral.EST_CD_M_CTE_ITE.Post;
                                      end;

                                   dmGeral.EST_CD_M_LOT.Next;
                                 end;
                             dmGeral.EST_CD_M_CTE_ITE.First;


                             if dmGeral.EST_CD_M_CTE_ITE.Locate('ID_ITEM;ID_COR',VarArrayOf([id_item,id_cor]),[])then
                                begin
                                   if txtQtde.CanFocus then
                                      begin
                                        dmGeral.EST_CD_M_CTE_ITE.edit;
                                        txtQtde.Setfocus;
                                      end;
                                end
                             else
                                begin
                                  Showmessage('Não há lote com saldo para este item.');
                                  btn_Add_Itens.SetFocus;
                                end;
                           end
                        else
                          begin
                            dmGeral.EST_CD_M_CTE_ITE.Insert;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString       := loca_rua;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                            if txtNroLote.CanFocus then
                               begin
                                  ActiveControl := nil;
                                  PostMessage(txtNroLote.Handle, WM_SETFOCUS, 0, 0);
                                  txtNroLote.SetFocus;
                               end
                            else
                               begin
                                  if cbbTamanho.CanFocus then
                                     begin
                                       ActiveControl := nil;
                                       PostMessage(cbbTamanho.Handle, WM_SETFOCUS, 0, 0);
                                       cbbTamanho.SetFocus;
                                     end
                                  else
                                     begin
                                       ActiveControl := nil;
                                       PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
                                       txtQtde.SetFocus;
                                     end;
                               end;
                          end;
                      end;
                end;
           end;
     end;
  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TEST_FM_M_CTE.cbbLocalizacaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusLocItem(dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger);
  cbbLocalizacao.DropDown;
end;

procedure TEST_FM_M_CTE.cbbLocalizacaoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  PreencItensPorLoc;
end;

procedure TEST_FM_M_CTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_C_ITE_LOC.Filtered := FALSE;
  dmGeral.EST_CD_M_CTE.Close;
  FreeAndNil(EST_FM_M_CTE);
end;

procedure TEST_FM_M_CTE.FormShow(Sender: TObject);
begin
  inherited;

  dmGeral.EST_CD_M_CTE.Close;
  dmGeral.EST_CD_M_CTE.Data :=
  dmGeral.EST_CD_M_CTE.DataRequest(
            VarArrayOf([0, '']));

  dmGeral.EST_CD_M_CTE_ITE.IndexFieldNames := 'ID_ITEM';

  AbrirBuscas;

  dmGeral.AtualizarGridItens(grdItens,'int_nomeite',11,8);

  cbbPesquisa.ItemIndex := 0;
  cbbPesquisaChange(SELF);
  AcoesIniciais;
  Atualizar_xBusca;

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  btnZerarEstoque.Enabled := false;
  btnAtualizaCont.Enabled := false;

  if dmGeral.BUS_CD_C_FUN.FieldByName('seg_habilitar_seg').AsBoolean and
     dmGeral.BUS_CD_C_FUN.FieldByName('SEG_ZERAR_EST').AsBoolean then
    begin
     btnZerarEstoque.Enabled := true;
    end;

  if dmGeral.BUS_CD_C_FUN.FieldByName('sgq_perm_atual_contagem').AsBoolean then
     begin
       btnAtualizaCont.Enabled := true;
     end;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;


  dmGeral.BUS_CD_C_ITE_LOC.Filtered := true;
  dmGeral.BUS_CD_C_ITE_LOC.Filter := 'ID_EMPRESA='+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

end;

procedure TEST_FM_M_CTE.grdItensEnter(Sender: TObject);
begin
  inherited;
 // EST_FM_M_CTE.KeyPreview := false;
  //grdItens.OnMouseUp := nil;
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;
end;

procedure TEST_FM_M_CTE.grdItensExit(Sender: TObject);
begin
  inherited;
 // EST_FM_M_CTE.KeyPreview := true;
 // grdItens.OnMouseUp := grdItensMouseUp;
end;

procedure TEST_FM_M_CTE.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  if dmGeral.EST_CD_M_CTE_ITE.State in [dsInsert,dsEdit] then
    begin
     try
      dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
      dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString := '';
      btn_Add_Itens.SetFocus;
     finally
      dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := dmGeral.EST_CD_M_CTE_ITEnum_loteChange;
     end;
    end;
  activecontrol := nil;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
        begin
          dmGeral.EST_CD_M_CTE_ITE.cancel;
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.EST_CD_M_CTE_ITE.Delete;
     dmGeral.EST_CD_M_CTE_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TEST_FM_M_CTE.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if dmGeral.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger = 2 then
     begin
        if pnItens.Enabled = false then
           pnItens.Enabled := true;

        dmGeral.EST_CD_M_CTE_ITE.cancel;

        if dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
           begin
             txtBuscaItem.Enabled := true;
             dmGeral.EST_CD_M_CTE_ITE.Append;
             pnItens.Enabled := true;
             txtBuscaItem.SetFocus;
           end
        else
          begin
            txtBuscaItem.Enabled := false;
            dmGeral.EST_CD_M_CTE_ITE.Edit;
            pnItens.Enabled := true;
            if dmGeral.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean then
               begin
                 if txtVlrCusto.CanFocus then
                    txtVlrCusto.SetFocus;
               end
            else
               if txtQtde.CanFocus then
                  txtQtde.SetFocus;
          end;
     end
  else
     begin
       //if not dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
       //   begin
       //     dmGeral.EST_CD_M_CTE_ITE.edit;
       //   end;
     end;
end;

procedure TEST_FM_M_CTE.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  cbbLocalizacao.Color   := Cor;
  cbbLocalizacao.Enabled := Estado;
  dpkDataIni.Color       := cor;
  dpkDataIni.Enabled     := Estado;
  dpkDataFim.Color       := cor;
  dpkDataFim.Enabled     := Estado;
end;




procedure TEST_FM_M_CTE.PassarCdsAnterior;
begin

  if xCdsItensAntCteIte <> nil then
     begin
       xCdsItensAntCteIte.Destroy;
       xCdsItensAntCteIte := nil;
     end;

  xCdsItensAntCteIte       := TClientDataSet.Create(self);
  xCdsItensAntCteIte.Data  := dmGeral.EST_CD_M_CTE_ITE.Data;
  xCdsItensAntCteIte.GotoCurrent(dmGeral.EST_CD_M_CTE_ITE);
end;

procedure TEST_FM_M_CTE.pnItensExit(Sender: TObject);
begin
  inherited;

  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
     (cbbCor.Focused) or (cbbTamanho.Focused) or
     (not grdItensIButton.Enabled) then
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
        dmGeral.EST_CD_M_CTE_ITE.Cancel;
        dmGeral.EST_CD_M_CTE_ITE.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TEST_FM_M_CTE.PreencItensPorLoc;
var
  lIndex: integer;
  lCond_Item, lCond_Cor, lCond_Tamanho: String;
begin
   if trim(dmGeral.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text) = '' then
      begin
        dpkDataIni.Color   := clWhite;
        dpkDataIni.Enabled := true;

        dpkDataFim.Color   := clWhite;
        dpkDataFim.Enabled := true;

        dmGeral.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger := 2;
      end;


   if trim(dmGeral.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text) <> '' then
     begin
        dmGeral.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger := 0; // Por Localização

        dmGeral.BusItens(4,dmGeral.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text);
        dmGeral.EST_CD_M_CTE.FieldByName('per_inicial').Text := '';
        dmGeral.EST_CD_M_CTE.FieldByName('per_final').Text   := '';

        dpkDataIni.Color   := $00DADADA;
        dpkDataIni.Enabled := false;

        dpkDataFim.Color   := $00DADADA;
        dpkDataFim.Enabled := false;


        if not dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
           begin
             if MessageDlg('Já existe item lançado nesta contagem.' + #13 +
                           'Deseja continuar para fazer nova contagem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                   while not dmGeral.EST_CD_M_CTE_ITE.eof do
                         dmGeral.EST_CD_M_CTE_ITE.Delete;

                end
             else
                begin
                  exit;
                end;
           end;

        { Filtros do EST_CD_M_FES:
            Index 0 - Empresa, Item
            Index 1 - Empresa, Item, Cor
            Index 2 - Empresa, Item, Tamanho
            Index 3 - Empresa, Item, Cor,Tamanho
            Index 4 - empresa, in(item),  in(cores)
            Index 5 - empresa, in(item),  in(tamanho)
            Index 6 - empresa, int(item), in(cor) in(tamanho)
            Index 7 - empresa, in(item)
            }

        dmGeral.BusItens(4,dmGeral.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text);

        if not dmGeral.BUS_CD_C_ITE.IsEmpty then
           begin
             if MessageDlg('Confirma importação dos itens desta localização para a contagem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                   dmGeral.BUS_CD_C_ITE.First;
                   while not dmGeral.BUS_CD_C_ITE.Eof do
                       begin
                         if dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then // Se não for item do tipo SERVIÇO.
                            begin
                              lIndex := 7;

                              // busca os itens do pedido
                              if lCond_Item <> '' then
                                 begin
                                   lCond_Item :=
                                   lCond_Item + ',' +''''+ dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString+'''';
                                 end;
                              if lCond_Item = '' then
                                 begin
                                   lCond_Item :=
                                   lCond_Item +''''+ dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString+'''';
                                 end;


                            end;
                         dmGeral.BUS_CD_C_ITE.Next;
                       end;

                   dmGeral.EST_CD_M_FES.Close;
                   dmGeral.EST_CD_M_FES.Data :=
                       dmGeral.EST_CD_M_FES.DataRequest(VarArrayOf([lIndex, dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text, lCond_Item,'','']));

                   if not dmGeral.EST_CD_M_FES.IsEmpty then
                      begin
                        dmGeral.EST_CD_M_FES.First;
                        while not dmGeral.EST_CD_M_FES.eof do
                           begin
                             dmGeral.EST_CD_M_CTE_ITE.Insert;

                             dmGeral.EST_CD_M_CTE_ITEid_item.AsInteger    := dmGeral.EST_CD_M_FES.FieldByName('ID_ITEM').AsInteger;
                             dmGeral.EST_CD_M_CTE_ITEvlr_custo.AsCurrency := 0;

                             if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
                                begin
                                  dmGeral.EST_CD_M_CTE_ITEid_cor.text     := dmGeral.EST_CD_M_FES.FieldByName('ID_COR').text;
                                  dmGeral.BusCor(0,dmGeral.EST_CD_M_CTE_ITEid_cor.text);
                                  dmGeral.EST_CD_M_CTE_ITEint_nomecor.text     := dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').text;
                                end;

                             if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
                                begin
                                  dmGeral.EST_CD_M_CTE_ITEid_tamanho.text  := dmGeral.EST_CD_M_FES.FieldByName('ID_TAMANHO').text;
                                  dmGeral.BusTamanho(0,dmGeral.EST_CD_M_CTE_ITEid_tamanho.text);
                                  dmGeral.EST_CD_M_CTE_ITEint_nometam.text := dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').text;
                                end;

                             dmGeral.BUS_CD_C_ITE.Locate('ID_ITEM',dmGeral.EST_CD_M_CTE_ITEid_item.text,[]);

                             dmGeral.EST_CD_M_CTE_ITEint_nomeite.AsString   := dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
                             dmGeral.EST_CD_M_CTE_ITEint_nomeund.AsString   := dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;
                             dmGeral.EST_CD_M_CTE_ITEint_tipo_item.AsString := dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;



                             if xbusca_item = 'ID_ITEM' then
                                begin
                                  dmGeral.EST_CD_M_CTE_ITEid_busca_item.AsString := dmGeral.EST_CD_M_FES.FieldByName('ID_ITEM').AsString;
                                end
                             else if xbusca_item = 'COD_FABRICA' then
                                begin
                                  dmGeral.EST_CD_M_CTE_ITEid_busca_item.AsString := dmGeral.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString;
                                end
                             else if xbusca_item = 'COD_BARRA' then
                                begin
                                  dmGeral.EST_CD_M_CTE_ITEid_busca_item.AsString := dmGeral.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;
                                end;

                             dmGeral.EST_CD_M_CTE_ITE.Post;
                             dmGeral.EST_CD_M_FES.Next;
                           end;
                        dmGeral.EST_CD_M_CTE_ITE.First;
                        dmGeral.EST_CD_M_CTE_ITE.IndexFieldNames := 'ID_ITEM';
                      end;
                   dmGeral.EST_CD_M_CTE_ITE.Edit;
                end;
           end;
     end;
end;

procedure TEST_FM_M_CTE.PreencItensPorPer;
var
  lIndex: integer;
  lCond_Item, lCond_Cor, lCond_Tamanho: String;
begin

  if (trim(dmGeral.EST_CD_M_CTE.FieldByName('per_inicial').Text) <> '') or
     (trim(dmGeral.EST_CD_M_CTE.FieldByName('per_final').Text)   <> '') then
     begin
       dmGeral.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text := '';
       cbbLocalizacao.Enabled := false;
       cbbLocalizacao.Color   := $00DADADA;
     end
  else
     begin
       cbbLocalizacao.Enabled := true;
       cbbLocalizacao.Color   := clWhite;
       dmGeral.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger := 2; // Livre (qualquer item)
     end;


  if (trim(dmGeral.EST_CD_M_CTE.FieldByName('per_inicial').Text) <> '') and
     (trim(dmGeral.EST_CD_M_CTE.FieldByName('per_final').Text)   <> '') then
     begin
       if dmGeral.EST_CD_M_CTE.FieldByName('per_inicial').AsDateTime >  dmGeral.EST_CD_M_CTE.FieldByName('per_final').AsDateTime then
          begin
            ShowMessage('Data inicial não pode ser maior que a data final.');
            exit;
          end;

        if not dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
           begin
             if MessageDlg('Já existe item lançado nesta contagem.' + #13 +
                           'Deseja continuar para fazer nova contagem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                   while not dmGeral.EST_CD_M_CTE_ITE.eof do
                         dmGeral.EST_CD_M_CTE_ITE.Delete;
                end
             else
                begin
                  exit;
                end;
           end;

        { Filtros do EST_CD_M_FES:
            Index 0 - Empresa, Item
            Index 1 - Empresa, Item, Cor
            Index 2 - Empresa, Item, Tamanho
            Index 3 - Empresa, Item, Cor,Tamanho
            Index 4 - empresa, in(item),  in(cores)
            Index 5 - empresa, in(item),  in(tamanho)
            Index 6 - empresa, int(item), in(cor) in(tamanho)
            Index 7 - empresa, in(item)
            Index 8 = empresa, data_ini, data_fim
            }



       if MessageDlg('Confirma importação dos itens movimentados neste período, para a contagem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin

             dmGeral.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger := 1; // Por período

             dmGeral.EST_CD_M_FES.Close;
             dmGeral.EST_CD_M_FES.Data :=
                 dmGeral.EST_CD_M_FES.DataRequest(VarArrayOf([8, dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                                                                 dmGeral.EST_CD_M_CTE.FieldByName('per_inicial').text,
                                                                 dmGeral.EST_CD_M_CTE.FieldByName('per_final').text]));

             if not dmGeral.EST_CD_M_FES.IsEmpty then
                begin
                  dmGeral.EST_CD_M_FES.First;
                  while not dmGeral.EST_CD_M_FES.eof do
                     begin
                       dmGeral.EST_CD_M_CTE_ITE.Insert;

                       dmGeral.EST_CD_M_CTE_ITEid_item.AsInteger    := dmGeral.EST_CD_M_FES.FieldByName('ID_ITEM').AsInteger;
                       dmGeral.EST_CD_M_CTE_ITEvlr_custo.AsCurrency := 0;


                       if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
                          begin
                            dmGeral.EST_CD_M_CTE_ITEid_cor.text     := dmGeral.EST_CD_M_FES.FieldByName('ID_COR').text;
                            dmGeral.BusCor(0,dmGeral.EST_CD_M_CTE_ITEid_cor.text);
                            dmGeral.EST_CD_M_CTE_ITEint_nomecor.text     := dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').text;
                          end;

                       if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
                          begin
                            dmGeral.EST_CD_M_CTE_ITEid_tamanho.text  := dmGeral.EST_CD_M_FES.FieldByName('ID_TAMANHO').text;
                            dmGeral.BusTamanho(0,dmGeral.EST_CD_M_CTE_ITEid_tamanho.text);
                            dmGeral.EST_CD_M_CTE_ITEint_nometam.text := dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').text;
                          end;

                       dmGeral.BusItens(0,dmGeral.EST_CD_M_FES.FieldByName('ID_ITEM').AsString);

                       dmGeral.EST_CD_M_CTE_ITEint_nomeite.AsString   := dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
                       dmGeral.EST_CD_M_CTE_ITEint_nomeund.AsString   := dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;
                       dmGeral.EST_CD_M_CTE_ITEint_tipo_item.AsString := dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

                       if xbusca_item = 'ID_ITEM' then
                          begin
                            dmGeral.EST_CD_M_CTE_ITEid_busca_item.AsString := dmGeral.EST_CD_M_FES.FieldByName('ID_ITEM').AsString;
                          end
                       else if xbusca_item = 'COD_FABRICA' then
                          begin
                            dmGeral.EST_CD_M_CTE_ITEid_busca_item.AsString := dmGeral.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString;
                          end
                       else if xbusca_item = 'COD_BARRA' then
                          begin
                            dmGeral.EST_CD_M_CTE_ITEid_busca_item.AsString := dmGeral.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;
                          end;
                       dmGeral.EST_CD_M_CTE_ITE.Post;
                       dmGeral.EST_CD_M_FES.Next;
                     end;
                  dmGeral.EST_CD_M_CTE_ITE.First;
                  dmGeral.EST_CD_M_CTE_ITE.IndexFieldNames := 'ID_ITEM';
                end;
             dmGeral.EST_CD_M_CTE_ITE.Edit;
          end;

     end;
end;

procedure TEST_FM_M_CTE.rgCteTipoClick(Sender: TObject);
begin
  inherited;
 {  if not dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
      begin
         if MessageDlg('Se continuar, os itens lançados nesta contagem serão apagados.' + #13 +
                       'Confirma a alteração do "Tipo de contagem"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              dmGeral.EST_CD_M_CTE_ITE.first;
              while not dmGeral.EST_CD_M_CTE_ITE.eof do
                      dmGeral.EST_CD_M_CTE_ITE.Delete;
            end
         else
            begin
              rgCteTipo.OnClick := nil;
              if (not dmGeral.EST_CD_M_CTE.FieldByName('CTE_TIPO').IsNull) then
                 begin
                   rgCteTipo.ItemIndex := xCteTipoAnt;
                 end;
              rgCteTipo.OnClick := rgCteTipoClick;
              abort;
            end;
       end;


  case rgCteTipo.ItemIndex of
    0:
     begin
       dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := dmGeral.EST_CD_M_CTE_ITEcontagemChange;
       grdItens.FixedCols     := 5;
       grdItens.Options       := [dgEditing,dgAlwaysShowEditor,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap,dgTabExitsOnLastCol];
       btn_Add_Itens.Enabled  := false;
       pnItens.Enabled := false;
       cbbLocalizacao.Enabled := true;
       cbbLocalizacao.Color   := clWhite;
       dpkDataIni.Enabled     := false;
       dpkDataIni.Color       := $00DADADA;
       dmGeral.EST_CD_M_CTE.FieldByName('per_inicial').text := '';
       dpkDataFim.Enabled     := false;
       dpkDataFim.Color       := $00DADADA;
       dmGeral.EST_CD_M_CTE.FieldByName('per_final').text := '';
     end;
    1:
     begin
       dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := dmGeral.EST_CD_M_CTE_ITEcontagemChange;
       grdItens.FixedCols     := 5;
       grdItens.Options      := [dgEditing,dgAlwaysShowEditor,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap,dgTabExitsOnLastCol];
       btn_Add_Itens.Enabled  := false;
       pnItens.Enabled        := false;
       cbbLocalizacao.Enabled := false;
       cbbLocalizacao.Color   := $00DADADA;
       dmGeral.EST_CD_M_CTE.FieldByName('localizacao').text := '';
       dpkDataIni.Enabled     := true;
       dpkDataIni.Color       := clWhite;
       dpkDataFim.Enabled     := true;
       dpkDataFim.Color       := clWhite;
     end;
    2:
     begin
       dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := nil;
       grdItens.FixedCols    := 0;
       grdItens.Options      := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap];
       btn_Add_Itens.Enabled := true;
       grdItens.FixedCols    := 0;
       dpkDataIni.Enabled := false;
       dpkDataIni.Color   := $00DADADA;
       dpkDataFim.Enabled := false;
       dpkDataFim.Color   := $00DADADA;
       cbbLocalizacao.Enabled := false;
       cbbLocalizacao.Color   := $00DADADA;
       dmGeral.EST_CD_M_CTE.FieldByName('per_inicial').text := '';
       dmGeral.EST_CD_M_CTE.FieldByName('per_final').text := '';
       dmGeral.EST_CD_M_CTE.FieldByName('localizacao').text := '';
     end;
    end;   }
end;



procedure TEST_FM_M_CTE.rgCteTipoEnter(Sender: TObject);
begin
  inherited;
//  xCteTipoAnt := rgCteTipo.ItemIndex;
end;

procedure TEST_FM_M_CTE.TesteReport(fastreport: TfrxReport; memoa, memob: string; teste: Boolean);
var
memo1,memo2: TfrxmemoView;
begin
  if teste then
    begin
      memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
      memo1.Visible := True;
      memo2 := TfrxMemoView (fastreport.FindComponent(memob));
      memo2.Visible := True;
    end
  else
    begin
      memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
      memo1.Visible := False;
      memo2 := TfrxMemoView (fastreport.FindComponent(memob));
      memo2.Visible := False;
    end;

end;

procedure TEST_FM_M_CTE.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

       dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TEST_FM_M_CTE.txtBuscaItemEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;
end;

procedure TEST_FM_M_CTE.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item,loca_rua,loca_prateleira,loca_escaninho : string;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;


  if dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
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

       if (txtQtde.Focused) or (cbbCor.Focused) or
          (cbbTamanho.Focused) or (txtNroLote.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtBuscaItem.SetFocus;
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
       if dmGeral.EST_CD_M_CTE_ITE.state in [dsBrowse] then
          dmGeral.EST_CD_M_CTE_ITE.edit;
     end;


  dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').Text := '';
  dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').Text  := '';

  dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').Text := '';
  dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').Text  := '';
  dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').Text := '';




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
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').Text := '';
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').Text  := '';
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').Text := '';
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').Text  := '';
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').Text := '';
       exit;
     end;

  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
  dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_TIPO_ITEM').AsInteger :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger;

   if not dmGeral.BUS_CD_C_ITE_LOC.IsEmpty then
    begin
      dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').Text :=
          dmGeral.BUS_CD_C_ITE_LOC.FieldByName('loca_rua').Text;
      dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').Text  :=
          dmGeral.BUS_CD_C_ITE_LOC.FieldByName('loca_prateleira').Text;
      dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').Text :=
           dmGeral.BUS_CD_C_ITE_LOC.FieldByName('loca_escaninho').Text;
    end;


  try
  pnItens.onExit := nil;

  if dmGeral.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
        if (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
           begin
             id_item       := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text;
             id_busca_item := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
             desc          := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
             und           := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;

             loca_rua := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString;
             loca_prateleira := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString;
             loca_escaninho := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString;

             dmGeral.EST_CD_M_CTE_ITE.cancel;

             if dmGeral.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean then
                begin
                  if dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,'','',
                                              dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text, '') then
                     begin
                       ShowMessage('Item já inserido na contagem!');
                       btn_Add_Itens.SetFocus;
                       abort;
                     end
                  else
                     begin
                        dmGeral.EST_CD_M_CTE_ITE.Insert;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;

                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString :=  loca_rua;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;


                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat         := 0;
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        := 0;
                        if cbbCor.CanFocus then
                           begin
                              ActiveControl := nil;
                              PostMessage(cbbCor.Handle, WM_SETFOCUS, 0, 0);
                              cbbCor.SetFocus;
                           end
                        else
                           begin
                              if cbbTamanho.CanFocus then
                                 begin
                                   ActiveControl := nil;
                                   PostMessage(cbbTamanho.Handle, WM_SETFOCUS, 0, 0);
                                   cbbTamanho.SetFocus;
                                 end
                              else
                                 begin
                                   ActiveControl := nil;
                                   PostMessage(txtVlrCusto.Handle, WM_SETFOCUS, 0, 0);
                                   txtVlrCusto.SetFocus;
                                 end;
                            end;
                     end;

                end
             else
                begin
                   if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean) and
                                              dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,'','',
                                                                    dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,
                                                                     '') then
                      begin
                        if (dmgeral.CAD_CD_C_PAR_MOD.FieldBYName('OME').AsBoolean=false) then
                          begin
                            dmGeral.EST_CD_M_CTE_ITE.edit;
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat  :=
                                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat + 1;
                            dmGeral.EST_CD_M_CTE_ITE.post;
                          end
                        else
                          begin
                            ShowMessage('Item já foi selecionado.');
                          end;
                        dmGeral.EST_CD_M_CTE_ITE.Insert;
                        txtBuscaItem.SetFocus;
                        abort;
                      end
                   else
                      begin
                        if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = true) then
                           begin
                             dmGeral.EST_CD_M_LOT.Data :=
                               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'', id_item,0,0,dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').AsString]));
                           end
                        else
                           begin
                             dmGeral.EST_CD_M_LOT.Data :=
                                  dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'',id_item,0,0,0]));

                           end;

                        if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean and (not dmGeral.EST_CD_M_LOT.IsEmpty) and
                                        (not dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,'','',
                                                                    dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,
                                                                     '')) then
                           begin
                             dmGeral.EST_CD_M_LOT.First;
                             while not dmGeral.EST_CD_M_LOT.eof do
                                 begin
                                   dmGeral.EST_CD_M_CTE_ITE.Insert;
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString := id_item;
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEITE').AsString := desc;
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEUND').AsString := und;

                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString :=  loca_rua;
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                                   dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString :=
                                                        dmGeral.EST_CD_M_LOT.FieldByName('NUM_LOTE').AsString;
                                   dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := dmGeral.EST_CD_M_CTE_ITEnum_loteChange;

                                   dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := nil;
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString := '';
                                   dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := dmGeral.EST_CD_M_CTE_ITEcontagemChange;



                                   dmGeral.EST_CD_M_CTE_ITE.Post;
                                   dmGeral.EST_CD_M_LOT.Next;
                                 end;
                                 dmGeral.EST_CD_M_CTE_ITE.First;

                                 dmGeral.EST_CD_M_CTE_ITE.locate('ID_ITEM',id_item,[]);

                                 if txtQtde.CanFocus then
                                    begin
                                      dmGeral.EST_CD_M_CTE_ITE.edit;
                                      txtQtde.Setfocus;
                                    end;

                           end
                        else
                           begin
                              dmGeral.EST_CD_M_CTE_ITE.Insert;
                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;

                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString :=  loca_rua;
                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                              if cbbCor.CanFocus then
                                 begin
                                    ActiveControl := nil;
                                    PostMessage(cbbCor.Handle, WM_SETFOCUS, 0, 0);
                                    cbbCor.SetFocus;
                                 end
                              else
                                 begin
                                      if txtNroLote.CanFocus then
                                         begin
                                            ActiveControl := nil;
                                            PostMessage(txtNroLote.Handle, WM_SETFOCUS, 0, 0);
                                            txtNroLote.SetFocus;
                                         end
                                      else
                                         begin
                                            if cbbTamanho.CanFocus then
                                               begin
                                                 ActiveControl := nil;
                                                 PostMessage(cbbTamanho.Handle, WM_SETFOCUS, 0, 0);
                                                 cbbTamanho.SetFocus;
                                               end
                                            else
                                               begin
                                                 ActiveControl := nil;
                                                 PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
                                                 txtQtde.SetFocus;
                                               end;
                                         end;
                                  end;
                           end;
                      end;
                end;
           end;
     end
  else
     dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString := id_item;

  finally
     pnItens.OnExit := pnItensExit;
  end;


end;

procedure TEST_FM_M_CTE.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TEST_FM_M_CTE.txtDtaVencExit(Sender: TObject);
begin
  inherited;
  pnlDtaVenc.Visible := false;
  txtQtde.SetFocus;

end;

procedure TEST_FM_M_CTE.txtNroLoteEnter(Sender: TObject);
begin
  inherited;
  dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;

end;

procedure TEST_FM_M_CTE.txtNroLoteExit(Sender: TObject);
var
  id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote,loca_rua,loca_prateleira,loca_escaninho : string;
begin
  inherited;

  try
  pnItens.onExit := nil;

  dmGeral.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       abort;
     end;

    if btn_Add_Itens.Focused or
       cbbTamanho.Focused or cbbCor.Focused or
       txtBuscaItem.Focused or grdItens.Focused then
     begin
       abort;
     end;

    dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString]));

    if (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) = '') then
       begin
         if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) then
            begin
              if txtNroLote.CanFocus then // esse if foi necessário devido o Botão de Exclusão do grid, que tava gerando mensagem desnecessária.
                 begin
                   ShowMessage('O campo "nro do lote" deve ser preenchido.');
                   txtNroLote.SetFocus;
                   exit;
                 end;
            end;
       end
    else
       begin
         if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger = 4) then
            begin
              ShowMessage('Digitação de nº do lote não é permitido para este item.');
                  dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := '';
                  dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := dmGeral.EST_CD_M_CTE_ITEnum_loteChange;
              exit;
            end;
       end;


    {if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) and // Geração de lote pela NF de entrada
       (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '') then
       begin
         if txtNroLote.CanFocus then // esse if foi necessário devido o Botão de Exclusão do grid, que tava gerando mensagem desnecessária.
            begin
             if dmGeral.VerifLote then
                begin
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString := '';
                  txtNroLote.SetFocus;
                  exit;
                end
             else
                begin
                  if txtNroLote.CanFocus then
                     txtNroLote.SetFocus;
                  exit;
                end;
            end;
       end;}
  if (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '') then
       begin
         dmGeral.EST_CD_M_LOT.close;
         dmGeral.EST_CD_M_LOT.Data :=
                     dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([16,
                          dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                          dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text]));
         if not dmGeral.EST_CD_M_LOT.IsEmpty then
            begin
              if dmGeral.EST_CD_M_LOT.FieldByName('id_item').AsInteger <>
                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_item').AsInteger then
                 begin
                   Showmessage('Este lote não pertence ao item informado.');
                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text := '';
                   txtNroLote.SetFocus;
                   abort;
                  end
              else
                  begin
                    //dmGeral.BusLoteItem(dmGeral.EST_CD_M_LOT.FieldByName('ID_EMPRESA').text,
                    if (dmGeral.EST_CD_M_LOT.FieldByName('ID_EMPRESA').text <> dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('NUM_LOTE').text <> dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('ID_ITEM').text <>  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('ID_COR').text <>   dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('ID_TAMANHO').text <>  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('ID_ALMOXARIFADO').text <> dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text) then
                       begin
                         Showmessage('Este lote não pertence ao item informado..');
                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text := '';
                         txtNroLote.SetFocus;
                         abort;
                       end
                  end;
            end;
       end;


  if dmGeral.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
       pnItens.Enabled := true;

       id_item       := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString;
       id_busca_item := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
       desc          := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
       und           := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;
       id_cor        := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString;
       id_tamanho    := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString;
       num_lote      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString;
       desc_cor      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString;
       desc_tam      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString;

       loca_rua := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString;
       loca_prateleira := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString;
       loca_escaninho := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString;



       dmGeral.EST_CD_M_CTE_ITE.cancel;

       if dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,EST_FM_M_CTE.Name,id_item,id_cor,id_tamanho,
                                   dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,num_lote) then
          begin
            dmGeral.EST_CD_M_CTE_ITE.edit;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat  :=
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat + 1;
            dmGeral.EST_CD_M_CTE_ITE.post;
            dmGeral.EST_CD_M_CTE_ITE.Insert;
            txtBuscaItem.SetFocus;
            abort;
          end
       else
          begin
            if trim(num_lote) <> '' then
               begin
                 if dmGeral.EST_CD_M_CTE_ITE.Locate('NUM_LOTE', num_lote,[]) then
                    begin
                      ShowMessage('Este nro de lote já foi digitado em outro registro.');
                      dmGeral.EST_CD_M_CTE_ITE.Insert;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := '';
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;

                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString        := loca_rua;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                      dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString  := loca_escaninho;

                      txtNroLote.SetFocus;
                      abort;
                    end;
               end;
            dmGeral.EST_CD_M_CTE_ITE.Insert;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := num_lote;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;

            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString        := loca_rua;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString  := loca_escaninho;


            if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true then
              begin
                ActiveControl := nil;
                PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
                txtQtde.SetFocus;
              end
            else
              begin
                pnlDtaVenc.Visible := true;
                ActiveControl := nil;
                PostMessage(txtDtaVenc.Handle, WM_SETFOCUS, 0, 0);
                txtDtaVenc.SetFocus;
              end;
          end;
     end;

  finally
     pnItens.OnExit := pnItensExit;
     dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := dmGeral.EST_CD_M_CTE_ITEnum_loteChange;
  end;
end;

procedure TEST_FM_M_CTE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TEST_FM_M_CTE.txtQtdeEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;
end;

procedure TEST_FM_M_CTE.txtQtdeExit(Sender: TObject);
var
  lVlrCustoMedio,Saldofea: Currency;
  lQtdeAtual,lQtdePendente: Currency;
  saldo_fisico,seq_item: String;
  SMPrincipal : TSMClient;
begin
  inherited;




  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

   if txtNroLote.Focused or
     cbbTamanho.Focused or cbbCor.Focused or
     txtBuscaItem.Focused then
     begin
       if dmGeral.EST_CD_M_CTE_ITE.State in [dsEdit] then
          begin
            txtQtde.SetFocus;
            exit;
          end;
       if dmGeral.EST_CD_M_CTE_ITE.State in [dsInsert] then
         begin
          exit;
         end;
     end;

  if (btn_Add_Itens.Focused and txtVlrCusto.CanFocus) or grdItens.Focused then
     begin
       exit;
     end;

  {if txtNroLote.Focused or
     btn_Add_Itens.Focused or txtNroLote.Focused or
     cbbTamanho.Focused or cbbCor.Focused or
     txtBuscaItem.Focused or grdItens.Focused then
     begin
       exit;
     end; }

  if dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat < 0 then
     begin
       ShowMessage('O campo "Contagem" não pode ser menor que 0.');
       txtQtde.SetFocus;
       abort;
     end;

  if dmGeral.BusCustoMedItem(dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString,lVlrCustoMedio) then
     begin
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsCurrency := lVlrCustoMedio;
     end
  else
     begin
       {ShowMessage('O registro de saldo do item não foi encontrado.');
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat := 0;
       txtQtde.SetFocus;
       exit; }
     end;


  saldo_fisico := '';

  if dmGeral.BusSaldoItem(dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text,
                                    dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,
                                    saldo_fisico) then
     begin
       if trim(saldo_fisico) <> '' then
          lQtdeAtual := StrToCurr(saldo_fisico);
     end;


  //lQtdeAtual := dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat;

  if trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text) <> '' then
     begin
        lQtdeAtual := 0;
        dmGeral.BusLoteItem(dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text,
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text,
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text,
                            dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text,
                            dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text);
        if not dmGeral.EST_CD_M_LOT.IsEmpty then
               lQtdeAtual := dmGeral.EST_CD_M_LOTqtde_atual.AsFloat;
     end;

  dmGeral.BUS_CD_M_FEA_SLD.Close;
  if (not(dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').AsInteger >0)) then
    begin

       dmGeral.BUS_CD_M_FEA_SLD.Data :=
       dmGeral.BUS_CD_M_FEA_SLD.DataRequest(
            VarArrayOf([DmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,'','',
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text,
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text,
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text]));
    end
  else
    begin
      if trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text) = '' then
        begin

           dmGeral.BUS_CD_M_FEA_SLD.Data :=
           dmGeral.BUS_CD_M_FEA_SLD.DataRequest(
            VarArrayOf([DmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                        dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text,'',
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text,
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text,
                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text]));
        end;
    end;

  if not dmGeral.BUS_CD_M_FEA_SLD.IsEmpty then
    begin
       SaldoFea := dmGeral.BUS_CD_M_FEA_SLD.FieldByname('saldo_fisico').AsCurrency;
    end;

  dmGeral.BUS_CD_M_FEA_SLD.Close;

  if (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text) = '')  and
     (saldoFea <> lQtdeAtual) then
    begin
      ShowMessage('O saldo analitico difere do saldo sintético');
      txtQtde.SetFocus;
      exit;
    end;


  lQtdePendente := 0;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean then
     begin
       try
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        lQtdePendente := SMPrincipal.enSgqPcpBusSaldoPendente(dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                                     dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                                     dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                                     dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text);

       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

  // 0 - Sem diferença
  // 1 - Sobrou
     // Quer dizer que ao contar, o saldo do estoque que tinha, ficou maior do
     // que o contado. ex: contagem = 5   saldo = 15, então sobrou 15 pra ficar igual ao saldo contado.
  // 2 - Faltou
     // Quer dizer que ao contar, o saldo do estoque que tinha ficou a menor
     // que o contado. ex: contagem = 25   saldo = 5, então faltou 20 pra atingir o saldo que tinha.

  dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
  dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsInteger      := 0;

  if not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean) then
     begin
        if dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat < (lQtdeAtual) then
           begin
             // Deve ser dado saída no estoque
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 1;
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsCurrency      :=
                     lQtdeAtual -
                     dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency;
           end;

        if dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat > (lQtdeAtual ) then
           begin
             // Deve ser dado entrada no estoque
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 2;
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsCurrency        :=
                     dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency -
                     lQtdeAtual;
           end;
     end
  else
     begin
       if (dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat + lQtdePendente) < (lQtdeAtual) then
           begin
             // Deve ser dado saída no estoque
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 1;
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsCurrency      :=
                     lQtdeAtual -
                     (dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency + lQtdePendente);
           end;

        if (dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat + lQtdePendente) > (lQtdeAtual ) then
           begin
             // Deve ser dado entrada no estoque
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 2;
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        :=
                     (dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency + lQtdePendente) -
                     lQtdeAtual;
           end;
     end;


  if dmGeral.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsString = '' then
    begin
      txtVlrCusto.Enabled := true;
      txtVlrCusto.SetFocus;
    end;

  if not txtVlrCusto.CanFocus then
    begin
      seq_item := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_SEQ_ITEM').AsString;

      if dmGeral.EST_CD_M_CTE_ITEid_seq_item.text = '' then
         begin
           { SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
            try
              dmGeral.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
                   SMPrincipal.enValorChave('EST_CD_M_CTE_ITE');
            finally
              FreeAndNil(SMPrincipal);
            end;}
            dmGeral.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
                dmGeral.BuscarSeq('EST_TB_M_CTE_ITE');
         end;

      dmGeral.EST_CD_M_CTE_ITE.Post;



      pnItens.Enabled := false;
      dmGeral.EST_CD_M_CTE_ITE.locate('ID_SEQ_ITEM',seq_item,[]);
      dmGeral.EST_CD_M_CTE_ITE.Next;
      ActiveControl := nil;
      PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
      btn_Add_Itens.SetFocus;
    end;

end;

procedure TEST_FM_M_CTE.txtVlrCustoExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtNroLote.Focused or txtQtde.Focused or
     cbbTamanho.Focused or cbbCor.Focused or
     txtBuscaItem.Focused or grdItens.Focused then
     begin
       exit;
     end;

  if not (dmGeral.EST_CD_M_CTE.FieldByName('corrigir_custo_medio').AsBoolean) then
     begin
       if (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString) = '') then
          begin
            ShowMessage('O campo "Contagem" deve ser preenchido.');
            txtQtde.SetFocus;
            exit;
          end;
     end;

  if (dmGeral.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsCurrency < 0) or
     (dmGeral.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsCurrency = 0) then
     begin
       ShowMessage('O valor deste campo deve ser maior que 0.');
       txtVlrCusto.SetFocus;
       exit;
     end;

  seq_item := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_SEQ_ITEM').AsString;

  if dmGeral.EST_CD_M_CTE_ITEid_seq_item.text = '' then
     begin
       { SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
               SMPrincipal.enValorChave('EST_CD_M_CTE_ITE');
        finally
          FreeAndNil(SMPrincipal);
        end; }
        dmGeral.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
               dmGeral.BuscarSeq('EST_TB_M_CTE_ITE');
     end;

  dmGeral.EST_CD_M_CTE_ITE.Post;


  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;


  pnItens.Enabled := false;
  dmGeral.EST_CD_M_CTE_ITE.locate('ID_SEQ_ITEM',seq_item,[]);
  dmGeral.EST_CD_M_CTE_ITE.Next;
  ActiveControl := nil;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

function TEST_FM_M_CTE.VerifLote: Boolean;
begin

{  result := false;

  dmGeral.EST_CD_M_LOT.Close;

  if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([0,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                                                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                                                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin

       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([1,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text]));

       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
      dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([2,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_TAMANHO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([3,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_TAMANHO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;


  if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([4,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([5,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([6,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean) then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([7,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end; }
end;

end.
