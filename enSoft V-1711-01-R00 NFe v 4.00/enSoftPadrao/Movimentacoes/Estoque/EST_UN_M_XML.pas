unit EST_UN_M_XML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,frxClass,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, pcnConversao, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,pcnConversaoNFe,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.wwdblook, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask,
  vcl.Wwdbedit, ACBrBase, ACBrDFe, ACBrNFe, frxDBSet, frxExportPDF, frxExportXLS,
  Datasnap.DBClient, vcl.Wwdotdot, vcl.Wwdbcomb, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TEST_FM_M_XML = class(TPAD_FM_X_PAD)
    dsoIte: TwwDataSource;
    dsoTit: TwwDataSource;
    Label1: TLabel;
    txtNumero: TwwDBEdit;
    Label2: TLabel;
    txtDescEmitente: TwwDBEdit;
    Label3: TLabel;
    txtDataEmissao: TwwDBEdit;
    txtSerie: TwwDBEdit;
    Label5: TLabel;
    txtCFOP: TJvDBComboEdit;
    Label9: TLabel;
    cbbTipoTme: TwwDBLookupCombo;
    cbbCondicaoPagamento: TwwDBLookupCombo;
    Label6: TLabel;
    Label14: TLabel;
    cbbAlmoxarifado: TwwDBLookupCombo;
    txtNfeChave: TwwDBEdit;
    Label11: TLabel;
    lblIqm: TLabel;
    txtCodIqm: TJvDBComboEdit;
    Label7: TLabel;
    grdItens: TwwDBGrid;
    Label8: TLabel;
    grdTitulos: TwwDBGrid;
    Label10: TLabel;
    txtVlrBruto: TwwDBEdit;
    txtVlrIcmsDesc: TwwDBEdit;
    txtVlrLiquido: TwwDBEdit;
    Label13: TLabel;
    Label15: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    btnImportarXml: TcxButton;
    lblControle: TLabel;
    txtControle: TwwDBEdit;
    odAbreXml: TOpenDialog;
    btnGerarNota: TcxButton;
    btnImprimirEspelho: TcxButton;
    gbLegenda: TGroupBox;
    Panel1: TPanel;
    Label16: TLabel;
    EST_XL_M_XML: TfrxXLSExport;
    EST_PD_M_XML: TfrxPDFExport;
    EST_DB_M_XML: TfrxDBDataset;
    EST_DB_M_XML_ITE: TfrxDBDataset;
    EST_DB_M_XML_TIT: TfrxDBDataset;
    cbbCST: TwwDBLookupCombo;
    txtIcmsBase: TwwDBEdit;
    txtIcmsAliq: TwwDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    txtIcmsVlr: TwwDBEdit;
    Label21: TLabel;
    txtIcmSbBase: TwwDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    txtIcmsSub: TwwDBEdit;
    txtVlrIPI: TwwDBEdit;
    txtVlrPIS: TwwDBEdit;
    txtVlrCofins: TwwDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    txtIdItem: TwwDBEdit;
    btnConferencia: TcxButton;
    EST_FR_M_XML_CON: TfrxReport;
    Label17: TLabel;
    Panel2: TPanel;
    Label28: TLabel;
    Panel3: TPanel;
    Label29: TLabel;
    txtVlrDesc: TwwDBEdit;
    NFE: TACBrNFe;
    txtVlrFrete: TwwDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    txtVlrBase: TwwDBEdit;
    Label32: TLabel;
    txtVlrIcms: TwwDBEdit;
    cbbFinalidade: TwwDBComboBox;
    Label33: TLabel;
    Label34: TLabel;
    txtIcmsDesc: TwwDBEdit;
    EST_FR_M_XML: TfrxReport;
    pmLote: TPopupMenu;
    btnLote: TMenuItem;
    txtPesquisaData: TJvDateEdit;
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtCFOPButtonClick(Sender: TObject);
    procedure cbbTipoTmeEnter(Sender: TObject);
    procedure cbbTipoTmeExit(Sender: TObject);
    procedure cbbCondicaoPagamentoEnter(Sender: TObject);
    procedure cbbCondicaoPagamentoExit(Sender: TObject);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure txtCodIqmButtonClick(Sender: TObject);
    procedure grdItensCellChanged(Sender: TObject);
    procedure grdItensEnter(Sender: TObject);
    procedure grdItensExit(Sender: TObject);
    procedure grdItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdTitulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdTitulosEnter(Sender: TObject);
    procedure grdTitulosExit(Sender: TObject);
    procedure btnImportarXmlClick(Sender: TObject);
    procedure btnGerarNotaClick(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dbGridDblClick(Sender: TObject);
    procedure pnlDadosDblClick(Sender: TObject);
    procedure grdItensCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cbbCSTEnter(Sender: TObject);

    procedure txtIdItemEnter(Sender: TObject);
    procedure btnConferenciaClick(Sender: TObject);
    procedure btnLoteClick(Sender: TObject);
    procedure grdItensRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ApagarDadosXml;
    procedure AjustarGridItens(grdItens: TwwDbGrid; NomeColItem: String; TamLargCor, TamLargTam: Integer);
    procedure AbrirBuscas;
    var
      xAntIdTipoEstoque: String;
      xAntCondicaoPgto:  String;
      regime:integer;
      id_item:string;
  public
    { Public declarations }
  end;

var
  EST_FM_M_XML: TEST_FM_M_XML;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CFO, FAT_UN_M_NFE_IPQ, PSQ_UN_X_ITE, PSQ_UN_X_COR,
  PSQ_UN_X_TAM, PSQ_UN_X_PCT, PSQ_UN_X_FPG, FAT_RN_M_XML, enConstantes,
  EST_UN_M_XML_LOT;

procedure TEST_FM_M_XML.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_XML);
  btnImprimirEspelho.Enabled := false;
  btnGerarNota.Enabled := false;
  btnConferencia.Enabled := false;
end;

procedure TEST_FM_M_XML.acAlterarExecute(Sender: TObject);
begin
  if ((dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsString <> '') and
     (dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsString <> '0')) then
      begin
        ShowMessage('Alteração não permitita, pois já tinha sido gerado nota fiscal.');
        exit;
      end;

  dmGeral.BusFornecedor(2,dmGeral.FAT_CD_M_XML.FieldByName('CNPJ_EMITENTE').AsString);
  if dmGeral.BUS_CD_C_FOR.IsEmpty then
    begin
       ShowMessage('Fornecedor não cadastrado.');
       exit;
    end;
  regime := dmGeral.BUS_CD_C_FORregime.AsInteger;

  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_XML) then
     begin
       inherited;
       btnImprimirEspelho.Enabled := false;
       btnGerarNota.Enabled := false;
       btnConferencia.Enabled := false;
       txtCFOP.SetFocus;
     end;
end;

procedure TEST_FM_M_XML.acCancelarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_XML) then
     begin
       inherited;
       btnImprimirEspelho.Enabled := true;
       btnGerarNota.Enabled := true;
       btnConferencia.Enabled := true;
       dbGrid.SetFocus;
     end
   else
     begin
       txtCFOP.SetFocus;
     end;
end;

procedure TEST_FM_M_XML.acExcluirExecute(Sender: TObject);
begin
  if ((dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsString <> '') and
     (dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsString <> '0')) then
      begin
        ShowMessage('Exclusão não permitida, pois já tinha sido gerado nota fiscal.');
        exit;
      end;
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_XML);
end;

procedure TEST_FM_M_XML.acGravarExecute(Sender: TObject);
var
  codigo:string;
begin
  inherited;
   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        codigo := dmGeral.FAT_CD_M_XML.FieldByName('ID_CONTROLE').AsString;
        DmGeral.Grava(dmGeral.FAT_CD_M_XML);
        inherited;
        dmGeral.FAT_CD_M_XML.Close;
        dmGeral.FAT_CD_M_XML.Data :=
        dmGeral.FAT_CD_M_XML.DataRequest(
                VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));
        btnImprimirEspelho.Enabled := true;
        btnGerarNota.Enabled := true;
        btnConferencia.Enabled := true;
        AbrirBuscas;

      end
   else
      begin
        txtCFOP.SetFocus;
      end;
end;

procedure TEST_FM_M_XML.AbrirBuscas;
begin
  dmGeral.BusAlmox(1,'%');
  dmGeral.BusTipoEstoque(4,'0');
  dmGeral.BusCondPgto(2,'%');
end;

procedure TEST_FM_M_XML.btnConferenciaClick(Sender: TObject);
var
  PathImg,codigo: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if dmGeral.FAT_CD_M_XML.IsEmpty then
    begin
      ShowMessage('É necessário selecionar registro.');
      exit;
    end;

   codigo := dmGeral.FAT_CD_M_XMLid_controle.Text;
   dmGeral.FAT_CD_M_XML.Close;
        dmGeral.FAT_CD_M_XML.Data :=
        dmGeral.FAT_CD_M_XML.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));

   if not dmGeral.FAT_CD_M_XML.IsEmpty then
      begin

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(EST_FR_M_XML_CON.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,EST_FM_M_XML.Name,xCodLme,xRevLme,nil);
        EST_FR_M_XML_CON.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        EST_FR_M_XML_CON.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        EST_FR_M_XML_CON.PrepareReport();
        EST_FR_M_XML_CON.ShowReport();
     end
   else
      begin
        ShowMessage('Registro não encontrado.');
        exit;
      end;
end;

procedure TEST_FM_M_XML.btnFiltroClick(Sender: TObject);
VAR
  xPesquisa:String;
begin
   Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;


    dmGeral.FAT_CD_M_XML.Close;
    dmGeral.FAT_CD_M_XML.Data :=
             dmGeral.FAT_CD_M_XML.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xPesquisa]));
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TEST_FM_M_XML.btnGerarNotaClick(Sender: TObject);
begin
  if (dmGeral.FAT_CD_M_XML.RecordCount>0) then
     begin
      FAT_RN_M_XML.FatValidaXml(dmGeral.FAT_CD_M_XML,dmGeral.FAT_CD_M_XML_ITE,dmGeral.FAT_CD_M_XML_TIT);

      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean = true ) then
         FAT_RN_M_XML.FatValidaXmlLote(dmGeral.FAT_CD_M_XML_ITE,dmGeral.FAT_CD_M_XML_ITE_LOT);
      FAT_RN_M_XML.FatValidaXmlIte(dmGeral.FAT_CD_M_XML_ITE);
      FAT_RN_M_XML.FatValidaXmlTit(dmGeral.FAT_CD_M_XML_TIT);
      FAT_RN_M_XML.GravarDadosNaNfe(dmGeral.FAT_CD_M_XML,dmGeral.FAT_CD_M_XML_ITE,dmGeral.FAT_CD_M_XML_ITE_LOT,dmGeral.FAT_CD_M_XML_TIT);
      if (dmGeral.FAT_CD_M_NFE.RecordCount >0) then
        begin
          dmGeral.FAT_CD_M_XML.Edit;
          dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsInteger := dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger;
          dmGeral.FAT_CD_M_XML.Post;
          dmGeral.FAT_CD_M_XML.ApplyUpdates(0);
        end;
     end
   else
     begin
       ShowMessage('É necessário selecionar registro.');
     end;
end;

procedure TEST_FM_M_XML.btnImportarXmlClick(Sender: TObject);
var
   i: integer;
begin
  if ((dmGeral.FAT_CD_M_XML.FieldByName('NOTA_FISCAL').AsString <> '') OR
      (dmGeral.FAT_CD_M_XML.FieldByName('DTA_EMISSAO').AsString <> '') OR
      (dmGeral.FAT_CD_M_XML.FieldByName('NOME_EMITENTE').AsString <> '') OR
      (dmGeral.FAT_CD_M_XML.FieldByName('SERIE').AsString <> '') OR
      (dmGeral.FAT_CD_M_XML.FieldByName('CHAVE').AsString <> ''))  then
     begin
       if MessageDlg('Se continuar os dados da tela serão perdidos.' + #13 +
                      'Continua?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            ApagarDadosXml;
          end
       else
          begin
            abort;
          end;
     end;


   dmGeral.BUS_CD_C_ITE_XML.Close;
   dmGeral.BUS_CD_C_ITE_XML.Data :=
           dmGeral.BUS_CD_C_ITE_XML.DataRequest(VarArrayOf([0,'','']));

   if  odAbreXml.Execute then
       begin
         //cdsXmlNotas.Open;
         //cdsXmlNotasItens.Open;

         NFE.NotasFiscais.Clear;
         NFE.NotasFiscais.LoadFromFile(odAbreXml.FileName);

         dmGeral.FAT_CD_M_XML.FieldByName('CHAVE').AsString         :=copy(NFE.NotasFiscais.Items[0].NFe.infNfe.ID,4,44);
         dmGeral.FAT_CD_M_XML.FieldByName('CNPJ_EMITENTE').AsString := NFE.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
         dmGeral.FAT_CD_M_XML.FieldByName('NOME_EMITENTE').AsString := NFE.NotasFiscais.Items[0].NFe.Emit.xNome;
         dmGeral.FAT_CD_M_XML.FieldByName('DTA_EMISSAO').AsDateTime     := strtodate(FormatDateTime('DD/MM/YYYY',NFE.NotasFiscais.Items[0].NFe.Ide.dEmi));
         dmGeral.FAT_CD_M_XML.FieldByName('SERIE').AsString         := IntToStr( NFE.NotasFiscais.Items[0].NFe.Ide.Serie);
         dmGeral.FAT_CD_M_XML.FieldByName('NOTA_FISCAL').AsString   := IntToStr(NFE.NotasFiscais.Items[0].NFe.Ide.nNf);
         dmGeral.FAT_CD_M_XML.FieldByName('VLR_BRUTO').AsCurrency   := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vProd;
         dmGeral.FAT_CD_M_XML.FieldByName('FRE_VALOR').AsCurrency   := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vFrete;
         dmGeral.FAT_CD_M_XML.FieldByName('vlr_outras_desp').AsCurrency  := NFE.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
         dmGeral.FAT_CD_M_XML.FieldByName('vlr_icms').AsCurrency  := NFE.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
         dmGeral.FAT_CD_M_XML.FieldByName('vlr_base').AsCurrency  := NFE.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
         dmGeral.FAT_CD_M_XML.FieldByName('VLR_ICM_DESC').AsCurrency := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vICMSDeson;
         dmGeral.FAT_CD_M_XML.FieldByName('VLR_LIQUIDO').AsCurrency := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vNF;
         dmGeral.FAT_CD_M_XML.FieldByName('VLR_DESCONTO').AsCurrency   := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vDesc;

         dmGeral.FAT_CD_M_XML.FieldByName('IPI_VALOR').AsCurrency := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vIPI;
         dmGeral.FAT_CD_M_XML.FieldByName('ICM_S_VALOR').AsCurrency   := NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vST;


         dmGeral.FAT_CD_M_XML.FieldByName('NFE_FINALIDADE').AsString      := FinNFeToStr(NFE.NotasFiscais.Items[0].NFe.Ide.finNfe);

         if dmGeral.FAT_CD_M_XML.FieldByName('NFE_FINALIDADE').AsString='2' then
           dmGeral.FAT_CD_M_XML.FieldByName('NREF_CHAVE').AsString      :=trim(NFE.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNFe);


         if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
            begin
              dmGeral.FAT_CD_M_XML.FieldByName('ID_ALMOXARIFADO').AsInteger := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ID_ALM_PADRAO').AsInteger;
            end;

         dmGeral.BusFornecedor(2,dmGeral.FAT_CD_M_XML.FieldByName('CNPJ_EMITENTE').AsString);
         if dmGeral.BUS_CD_C_FOR.IsEmpty then
            begin
              Showmessage('O fornecedor do XML não foi encontrado no cadastro de fornecedor do sistema.');
              dmGeral.BUS_CD_C_FOR.close;
              //dmGeral.FAT_CD_M_XML.Cancel;
              ApagarDadosXml;
              btnImportarXml.SetFocus;
              abort;
            end;
          regime := dmGeral.BUS_CD_C_FORregime.AsInteger;
         // Itens
         for i := 0 to NFE.NotasFiscais.Items[0].NFe.Det.Count - 1 do
             begin
                dmGeral.FAT_CD_M_XML_ITE.Insert;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('SEQ').AsInteger         :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.nItem;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('COD_FABRICA').AsString  :=NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.cProd;


                dmGeral.BUS_CD_C_ITE_XML_2.Close;
                dmGeral.BUS_CD_C_ITE_XML_2.Data :=
                dmGeral.BUS_CD_C_ITE_XML_2.DataRequest(VarArrayOf([0,
                        dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString,dmGeral.FAT_CD_M_XML_ITE.FieldByName('COD_FABRICA').AsString]));

                if not dmGeral.BUS_CD_C_ITE_XML_2.IsEmpty then
                   begin
                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString :=
                        dmGeral.BUS_CD_C_ITE_XML_2.FieldByName('ID_ITEM').AsString;
                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
                        dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString;
                   end;

                dmGeral.BUS_CD_C_ITE_XML_2.Close;
                //Houve mudança:0-Simples Nacional;1 - Normal(Lucro Presumido);2 - Normal(Lucro Real)
                //É para ficar de acordo com valores do regime do cadastro de fornecedores
                if dmGeral.BUS_CD_C_FORregime.AsInteger in [1,2] then
                   begin

                      case strtoint(vartostr(NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.CST)) of
                         0:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '00';
                         1:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '10';
                         2:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '20';
                         3:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '30';
                         4:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '40';
                         5:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '41';
                         6:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '45';
                         7:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '50';
                         8:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '51';
                         9:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '60';
                         10: dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '70';
                         11: dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '80';
                         12: dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '81';
                         13: dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '90';
                      end;
                   end;

                if dmGeral.BUS_CD_C_FORregime.AsInteger = 0 then
                   begin

                      case strtoint(vartostr(NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.CSOSN)) of
                         0:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '';
                         1:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '101';
                         2:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '102';
                         3:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '103';
                         4:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '201';
                         5:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '202';
                         6:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '203';
                         7:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '300';
                         8:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '400';
                         9:  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '500';
                         10: dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CST_ICMS').AsString := '900';
                      end;
                   end;

               //   cdsXmlNotasItens.FieldByName('ID_CST_ICMS').AsString := '900';
              {  if trim(NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.CFOP) = '' then
                   begin
                     ShowMessage('Foi encontrado inconsistência no XML!' + #13 +
                                 'O item com código de fábrica: ' + cdsXmlNotasItens.FieldByName('COD_FABRICA').AsString +
                                 ', encontra-se sem CFOP');

                     cdsXmlNotas.Cancel;
                     cdsXmlNotasItens.Cancel;
                     cdsXmlNotasTitulos.Cancel;
                     btnAbrir.SetFocus;
                     abort;
                   end;    }



                dmGeral.BusCfop(0,NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.CFOP);
                if not dmGeral.BUS_CD_C_CFO.IsEmpty then
                   begin
                     if trim(dmGeral.BUS_CD_C_CFO.FieldByName('id_cfo_xml').AsString) = ''  then
                        begin
                          Showmessage('Não foi encontrado o cfop correspondente no cadastro do cfop: ' +
                                       NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.CFOP + #13 + 'Item: ' +
                                       dmGeral.FAT_CD_M_XML_ITE.FieldByName('COD_FABRICA').AsString + ' - ' +
                                       NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.xProd);

                          ApagarDadosXml;
                         // cdsXmlNotas.Cancel;
                          //dmGeral.FAT_CD_M_XML_ITE.Cancel;
                          //dmGeral.FAT_CD_M_XML_TIT.Cancel;

                          btnImportarXml.SetFocus;
                          abort;
                        end;
                   end;
                //--------------------------------------------------------------

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CFOP').AsString := dmGeral.BUS_CD_C_CFO.FieldByName('id_cfo_xml').AsString;


                // CFOP da tabela PAI
                if trim(dmGeral.FAT_CD_M_XML.FieldByName('CFOP').Text) = '' then
                   begin
                     dmGeral.FAT_CD_M_XML.FieldByName('CFOP').AsString := dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CFOP').AsString;
                   end;

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_COR').AsInteger        := 0;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_TAMANHO').AsInteger    := 0;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_BRUTO').AsCurrency    := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vProd;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_UNITARIO').AsCurrency := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vUnCom;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_LIQUIDO').AsCurrency  := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vProd -
                                                                           NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vDesc;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_DESCONTO').AsCurrency := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vDesc;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('QTDE').AsFloat            := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.qCom;

                if (dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString <> '' ) and
                (dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString <> null) and
                (dmGeral.FAT_CD_M_XML_ITE.State in [dsinsert,dsedit]) then
                  begin

                    dmgeral.BUS_CD_C_ITE.Close;
                    dmGeral.BUS_CD_C_ITE.Data :=
                    dmGeral.BUS_CD_C_ITE.DataRequest(
                          VarArrayOf([0, dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString]));

                    if (not dmGeral.BUS_CD_C_ITE.IsEmpty)  and
                      ( copy(dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').Text,1,50) <> dmGeral.FAT_CD_M_XML_ITE.FieldByName('DESC_ITEM').Text)  then
                      begin
                        dmGeral.FAT_CD_M_XML_ITE.FieldByName('DESC_ITEM').Text :=
                          copy(dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').Text,1,50);
                      end
                    else
                      begin
                        dmGeral.FAT_CD_M_XML_ITE.FieldByName('DESC_ITEM').AsString       := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.xProd;
                      end;
                    dmGeral.FAT_CD_M_XML_ITE.FieldByName('INT_UTILIZA_LOTE').AsBoolean :=
                          dmGeral.BUS_CD_C_ITE.FieldByName('int_lote_gru').AsBoolean;

                  end
                else
                  begin
                    dmGeral.FAT_CD_M_XML_ITE.FieldByName('DESC_ITEM').AsString       := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.xProd;
                  end;

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('UND').AsString            := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.uCom;


                dmGeral.FAT_CD_M_XML_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency      := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.pICMS;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('icm_per_reducao').AsCurrency     := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.pRedBC;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('icm_n_base').AsCurrency          := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vBC;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('icm_n_valor').AsCurrency         := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vICMS;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('icm_s_base').AsCurrency          := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vBCST;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('icm_s_valor').AsCurrency         := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vICMSST;

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('origem_mercadoria').AsString     := OrigToStr(NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.orig);

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('vlr_outras_desp').AsCurrency     := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vOutro;

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('ipi_base').AsCurrency            := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.IPI.vBC;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('ipi_aliquota').AsCurrency        := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.IPI.pIPI;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('ipi_valor').AsCurrency           := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.IPI.vIPI;

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('pis_base').AsCurrency            := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.PIS.vBC;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('pis_aliquota').AsCurrency        := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.PIS.pPIS;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('pis_valor').AsCurrency           := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.PIS.vPIS;

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('fre_valor').AsCurrency           := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vFrete;

              //  dmGeral.FAT_CD_M_XML_ITE.FieldByName('vlr_outras').AsCurrency          := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vOutro;

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('cof_base').AsCurrency            := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.COFINS.vBC;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('cof_aliquota').AsCurrency        := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.COFINS.pCOFINS;
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('cof_valor').AsCurrency           := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.COFINS.vCOFINS;

                dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_ICM_DESC').AsCurrency        := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vICMSDeson;

                if dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_ICM_DESC').AsCurrency >0  then
                   dmGeral.FAT_CD_M_XML_ITE.FieldByName('motivo_icms_des').AsString      := motDesICMSToStr(NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.motDesICMS);


                dmGeral.FAT_CD_M_XML_ITE.Post;
                dmGeral.BUS_CD_C_CFO.Close;

             end;
         dmGeral.FAT_CD_M_XML_ITE.First;

         // Títulos
         for i := 0 to NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Count - 1 do
           begin
              dmGeral.FAT_CD_M_XML_TIT.Insert;
              dmGeral.FAT_CD_M_XML_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].dVenc;
              dmGeral.FAT_CD_M_XML_TIT.FieldByName('VLR_TITULO').AsCurrency     := NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].vDup;
              dmGeral.FAT_CD_M_XML_TIT.FieldByName('NUM_TITULO').AsString       := NFE.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].nDup;
              dmGeral.FAT_CD_M_XML_TIT.Post;
           end;
       end;

   dmGeral.FAT_CD_M_XML_ITE.IndexFieldNames := 'SEQ';
   dmGeral.FAT_CD_M_XML_ITE.Edit;
   dmGeral.FAT_CD_M_XML_TIT.Edit;
   txtCfop.SetFocus;

end;

procedure TEST_FM_M_XML.btnImprimirEspelhoClick(Sender: TObject);
var
  PathImg,codigo: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if dmGeral.FAT_CD_M_XML.IsEmpty then
    begin
      ShowMessage('É necessário selecionar registro.');
      exit;
    end;

   codigo := dmGeral.FAT_CD_M_XMLid_controle.Text;
   dmGeral.FAT_CD_M_XML.Close;
        dmGeral.FAT_CD_M_XML.Data :=
        dmGeral.FAT_CD_M_XML.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));

   if not dmGeral.FAT_CD_M_XML.IsEmpty then
      begin

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(EST_FR_M_XML.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,EST_FM_M_XML.Name,xCodLme,xRevLme,nil);
        EST_FR_M_XML.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        EST_FR_M_XML.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        EST_FR_M_XML.PrepareReport();
        EST_FR_M_XML.ShowReport();
     end
   else
      begin
        ShowMessage('Registro não encontrado.');
        exit;
      end;

  {if not dmGeral.FAT_CD_M_XML.IsEmpty then
      begin
        if (dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsString = '') then
          begin
            ShowMessage('Não tinha sido gerado nota fiscal.');
            exit;
          end;

        dmGeral.FAT_CD_M_NFE.Close;
        dmGeral.FAT_CD_M_NFE.Data :=
        dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                                   'E',dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsString]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(dmGeral.EST_FR_M_NFE.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,EST_FM_M_XML.Name,xCodLme,xRevLme,nil);
        dmGeral.EST_FR_M_NFE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

        dmGeral.EST_FR_M_NFE.PrepareReport();
        dmGeral.EST_FR_M_NFE.ShowReport();
     end
   else
      begin
        ShowMessage('Registro não encontrado.');
        exit;
      end; }
end;

procedure TEST_FM_M_XML.btnLoteClick(Sender: TObject);
begin
  inherited;
  EST_FM_M_XML_LOT := TEST_FM_M_XML_LOT.Create(Self);
  EST_FM_M_XML_LOT.ShowModal;
end;

procedure TEST_FM_M_XML.ApagarDadosXml;
begin
   dmGeral.FAT_CD_M_XML.FieldByName('CHAVE').AsString                := '';
   dmGeral.FAT_CD_M_XML.FieldByName('CNPJ_EMITENTE').AsString        := '';
   dmGeral.FAT_CD_M_XML.FieldByName('NOME_EMITENTE').AsString        := '';
   dmGeral.FAT_CD_M_XML.FieldByName('DTA_EMISSAO').AsString          := '';
   dmGeral.FAT_CD_M_XML.FieldByName('SERIE').AsString                := '';
   dmGeral.FAT_CD_M_XML.FieldByName('NOTA_FISCAL').AsString          := '';
   dmGeral.FAT_CD_M_XML.FieldByName('VLR_BRUTO').AsString            := '';
   dmGeral.FAT_CD_M_XML.FieldByName('VLR_ICM_DESC').AsString         := '';
   dmGeral.FAT_CD_M_XML.FieldByName('VLR_LIQUIDO').AsString          := '';

   dmGeral.FAT_CD_M_XML.FieldByName('ID_TIPO_ESTOQUE').AsString  := '';
   dmGeral.FAT_CD_M_XML.FieldByName('ID_CONDICAO_PAG').AsString      := '';
   dmGeral.FAT_CD_M_XML.FieldByName('ID_ALMOXARIFADO').AsString      := '';
   dmGeral.FAT_CD_M_XML.FieldByName('CFOP').AsString                 := '';
   dmGeral.FAT_CD_M_XML.FieldByName('ID_IQM').AsString               := '';

   dmGeral.FAT_CD_M_XML_ITE.Cancel;
   while dmGeral.FAT_CD_M_XML_ITE.RecordCount>0 do
     begin
       dmGeral.FAT_CD_M_XML_ITE.Delete;
     end;

   dmGeral.FAT_CD_M_XML_TIT.Cancel;
   while dmGeral.FAT_CD_M_XML_TIT.RecordCount>0 do
     begin
       dmGeral.FAT_CD_M_XML_TIT.Delete;
     end;

end;

procedure TEST_FM_M_XML.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
   if dmGeral.FAT_CD_M_XML.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       dmGeral.BusAlmox(1,'%');
       cbbAlmoxarifado.DropDown;
     end;
end;

procedure TEST_FM_M_XML.cbbAlmoxarifadoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnImportarXml.Focused then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_XML.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       ShowMessage('O campo "Almoxarifado" deve ser preenchido.');
       cbbAlmoxarifado.SetFocus;
       exit;
     end;

  dmGeral.BusAlmox(0,dmGeral.FAT_CD_M_XML.FieldByName('ID_ALMOXARIFADO').Text);
  if dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       ShowMessage('Almoxarifado não encontrado.');
       cbbAlmoxarifado.SetFocus;
       exit;
     end;
end;

procedure TEST_FM_M_XML.cbbCondicaoPagamentoEnter(Sender: TObject);
begin
  inherited;
   grdTitulos.Enabled := true;

  if dmGeral.FAT_CD_M_XML.FieldByName('ID_CONDICAO_PAG').text <> '' then
     xAntCondicaoPgto := dmGeral.FAT_CD_M_XML.FieldByName('ID_CONDICAO_PAG').text;

  dmGeral.BusCondPgto(2,'%');
  cbbCondicaoPagamento.DropDown;
end;

procedure TEST_FM_M_XML.cbbCondicaoPagamentoExit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnIMportarXml.Focused  then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_XML.FieldByName('ID_CONDICAO_PAG').text = '' then
     begin
       Showmessage('O campo "Condição de pagamento" deve ser preenchido.');
       cbbCondicaoPagamento.SetFocus;
       abort;
     end;

  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_XML.FieldByName('ID_CONDICAO_PAG').text);

  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de pagamento não encontrada!');
       cbbCondicaoPagamento.SetFocus;
       cbbCondicaoPagamento.Text := '';
       Abort;
     end;

  if not (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger in [1,2]) then // A prazo ou Sem pagamento
     begin
       ShowMessage('Condição de pagamento deve ser do tipo "A prazo" ou "Sem pagamentos"!');
       cbbCondicaoPagamento.SetFocus;
       cbbCondicaoPagamento.Text := '';
       Abort;
     end
  else
     begin
       if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 2 then
          begin
             dmGeral.FAT_CD_M_XML_TIT.Cancel;
             if not dmGeral.FAT_CD_M_XML_TIT.IsEmpty then
                begin
                  if MessageDlg('Existe títulos lançado na na nota fiscal.' + #13 +
                               'Se continuar os títulos serão apagados.' + #13 +
                               'Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                    begin
                      dmGeral.FAT_CD_M_XML_TIT.First;
                      while not dmGeral.FAT_CD_M_XML_TIT.Eof do
                         begin
                           dmGeral.FAT_CD_M_XML_TIT.Delete;
                         end;
                      grdTitulos.Enabled := false;
                    end
                  else
                    begin
                      if xAntCondicaoPgto <> '' then
                         begin
                           dmGeral.FAT_CD_M_XML.FieldByName('ID_CONDICAO_PAG').text := xAntCondicaoPgto;
                         end;
                    end;
                end
             else
                begin
                  grdTitulos.Enabled := false;
                end;
          end;
     end;

end;

procedure TEST_FM_M_XML.cbbCSTEnter(Sender: TObject);
begin
  inherited;
  if regime=0 then
    begin
      dmGeral.BUS_PR_X_ICM_OSN_INC;
      cbbCST.LookupTable := dmGeral.BUS_CD_X_ICM_OSN_INC;
    end
  else
    begin
      dmGeral.BUS_PR_X_ICM_ICO;
      cbbCST.LookupTable := dmGeral.BUS_CD_X_ICM_ICO;
    end;
end;

procedure TEST_FM_M_XML.cbbPesquisaChange(Sender: TObject);
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


  if (cbbPesquisa.ItemIndex in [0,2,4]) then
    begin
      txtPesquisa.NumbersOnly := true;
    end;
  if (cbbPesquisa.ItemIndex in [1,3]) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
end;

procedure TEST_FM_M_XML.cbbTipoTmeEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(4,'0');
  cbbTipoTme.DropDown;
end;

procedure TEST_FM_M_XML.cbbTipoTmeExit(Sender: TObject);
begin
  inherited;
   if btnImportarXml.Focused or
     btnCancelar.Focused then
     begin
       exit;
     end;

  if trim(dmGeral.FAT_CD_M_XML.FieldByName('ID_TIPO_ESTOQUE').text) = '' then
     begin
       ShowMessage('O campo "Tipo de estoque" deve ser preenchido!');
       cbbTipoTme.SetFocus;
       cbbTipoTme.Text := '';
       Abort;
     end;

  if xAntIdTipoEstoque <> '' then
     begin
        if xAntIdTipoEstoque <> dmGeral.FAT_CD_M_XML.FieldByName('ID_TIPO_ESTOQUE').text then
           begin
             if not dmGeral.FAT_CD_M_XML_ITE.IsEmpty then
                begin
                  ShowMessage('Já existe produtos lançado nesta nota fiscal, alteração do tipo de estoque não permitida!');
                  dmGeral.FAT_CD_M_XML.FieldByName('ID_TIPO_ESTOQUE').AsString := xAntIdTipoEstoque;
                  Abort;
                end;
           end;
     end;

  dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_XML.FieldByName('ID_TIPO_ESTOQUE').text);

  if dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       ShowMessage('Tipo de movimento de estoque não encontrado!');
       cbbTipoTme.SetFocus;
       cbbTipoTme.Text := '';
       Abort;
     end;

  if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 0 then
     begin
       ShowMessage('Tipo de movimento de estoque deve ser do tipo "Entrada"!');
       cbbTipoTme.SetFocus;
       cbbTipoTme.Text := '';
       Abort;
     end;


  if not (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger in [0,2]) then
     begin
       ShowMessage('O "Indicador" do Tipo de movimento de estoque deve ser do tipo "Normal" ou de "Transferência"!');
       cbbTipoTme.SetFocus;
       cbbTipoTme.Text := '';
       Abort;
     end;
end;

procedure TEST_FM_M_XML.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if ((dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsString <> '') and
      (dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsString <> '0')) then
    BEGIN
       AFont.Color := clBlue;
    END;
end;

procedure TEST_FM_M_XML.dbGridDblClick(Sender: TObject);
begin
  inherited;
  grdItens.OnEnter       := nil;
  grdItens.OnExit        := nil;
  grdItens.OnKeyDown     := nil;
  grdItens.OnCellChanged := nil;
  grdItens.ReadOnly      := true;

  grdTitulos.OnEnter     := nil;
  grdTitulos.OnExit      := nil;
  grdTitulos.OnKeyDown   := nil;
  grdTitulos.ReadOnly    := true;

  btnImprimirEspelho.Enabled := false;
  btnGerarNota.Enabled := false;
  btnImportarXml.Enabled     := false;
end;

procedure TEST_FM_M_XML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_M_XML);
end;

procedure TEST_FM_M_XML.AjustarGridItens(grdItens: TwwDbGrid; NomeColItem: String; TamLargCor, TamLargTam: Integer);
begin
  grdItens.ColumnByName(NomeColItem).DisplayWidth :=
      (grdItens.ColumnByName(NomeColItem).DisplayWidth + TamLargCor + TamLargTam);

 if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean=true) and
    (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean=true) then
    begin
       grdItens.ColumnByName(NomeColItem).DisplayWidth :=
      (grdItens.ColumnByName(NomeColItem).DisplayWidth - (TamLargCor + TamLargTam));
    end
 else
    begin
       if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = true) then
          begin
            grdItens.ColumnByName(NomeColItem).DisplayWidth :=
                     (grdItens.ColumnByName(NomeColItem).DisplayWidth - TamLargCor);

            grdItens.ColumnByName('int_nometam').Visible   := false;
          end
       else
          begin
             if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = true then
                begin
                  grdItens.ColumnByName(NomeColItem).DisplayWidth :=
                        (grdItens.ColumnByName(NomeColItem).DisplayWidth - TamLargTam);
                  grdItens.ColumnByName('int_nomecor').Visible := false;
                end
             else
                begin
                  grdItens.ColumnByName('int_nomecor').Visible     := false;
                  grdItens.ColumnByName('int_nometam').Visible := false;
                end;
          end;
    end;
end;


procedure TEST_FM_M_XML.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_XML.Close;
  dmGeral.FAT_CD_M_XML.Data :=
  dmGeral.FAT_CD_M_XML.DataRequest(
            VarArrayOf([0, '']));

  dmGeral.BUS_CD_C_ITE_XML.Close;
  dmGeral.BUS_CD_C_ITE_XML.Data :=
         dmGeral.BUS_CD_C_ITE_XML.DataRequest(VarArrayOf([0,'','']));

  AbrirBuscas;

  AjustarGridItens(grdItens,'desc_item',13,7);

  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
    begin
      cbbAlmoxarifado.Enabled := False;
      cbbAlmoxarifado.Color   := $00DADADA;
    end;

  txtCodIqm.Visible := false;
  lblIqm.Visible := false;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
    begin
      txtCodIqm.Visible := true;
      lblIqm.Visible := true;
    end;

end;

procedure TEST_FM_M_XML.grdItensCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if ((dmGeral.FAT_CD_M_XML.FieldByName('NFE_FINALIDADE').AsInteger = 1) AND //Nota normal
     (dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_BRUTO').AsCurrency = 0)) OR

     ((dmgeral.FAT_CD_M_XML.FieldByName('NFE_FINALIDADE').AsInteger =2) AND
      (dmGeral.FAT_CD_M_XML_ITE.FieldByName('QTDE').AsCurrency=0) AND
      (dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_BRUTO').AsCurrency=0) AND
      (dmGeral.FAT_CD_M_XML_ITE.FieldByName('icm_n_valor').AsCurrency=0)) then
     begin
       AFont.Color := clRed;
     end;

  if (dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString = '') then
    begin
     // GridItens.Canvas.Font.Style := [];
      AFont.Color := clNAVY;
    end;

  if (dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString <> '') then
    begin
     // GridItens.Canvas.Font.Style := [];
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
    end;



   if (dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString <> '' ) and
    (dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString <> null) and
    (dmGeral.FAT_CD_M_XML_ITE.State in [dsinsert,dsedit]) then
    begin

      dmgeral.BUS_CD_C_ITE.Close;
      dmGeral.BUS_CD_C_ITE.Data :=
      dmGeral.BUS_CD_C_ITE.DataRequest(
            VarArrayOf([0, dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString]));

      if (not dmGeral.BUS_CD_C_ITE.IsEmpty)  and
        ( copy(dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').Text,1,50) <> dmGeral.FAT_CD_M_XML_ITE.FieldByName('DESC_ITEM').Text)  then
        begin
           dmGeral.FAT_CD_M_XML_ITE.FieldByName('DESC_ITEM').Text :=
             copy(dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').Text,1,50);
        end
      else
        begin
          //dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').Text := '';
          //ShowMessage('Item não cadastrado!');
        end;
    end;
end;

procedure TEST_FM_M_XML.grdItensCellChanged(Sender: TObject);
begin
  inherited;
   if not ((grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_ITEM') or
           (grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_COR') or
           (grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_TAMANHO') or
           (grdItens.Columns[grdItens.SelectedIndex].FieldName = 'ID_CST_ICMS')) then
     begin
       grdItens.Columns[grdItens.SelectedIndex].ReadOnly := true;
     end;
end;

procedure TEST_FM_M_XML.grdItensEnter(Sender: TObject);
begin
  inherited;
   EST_FM_M_XML.KeyPreview := false;
end;

procedure TEST_FM_M_XML.grdItensExit(Sender: TObject);
begin
  inherited;
  EST_FM_M_XML.KeyPreview := true;
end;

procedure TEST_FM_M_XML.grdItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     begin
       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'id_cfop' then
          begin
            if dmGeral.FAT_CD_M_XML_ITE.eof then
               dmGeral.FAT_CD_M_XML_ITE.First
            else
               dmGeral.FAT_CD_M_XML_ITE.Next;
            dmGeral.FAT_CD_M_XML_ITE.Edit;
            grdItens.SelectedIndex := 0;
            {if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
               (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                grdItens.SelectedIndex := 1 // Primeiro indique qual coluna do grid voce quer se posicionar.
            else
                begin
                  if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) or
                     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
                      grdItens.SelectedIndex := 5 // Primeiro indique qual coluna do grid voce quer se posicionar.
                  else
                      grdItens.SelectedIndex := 4 // Primeiro indique qual coluna do grid voce quer se posicionar.
                end;}

            grdItens.SetFocus; // depois de um setfocus que o foco ira direto para a coluna posicionada.
          end;
     end;
 if key = vk_f3 then
     begin
       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'id_item' then
          begin
             PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
             PSQ_FM_X_ITE.ShowModal;
                if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
                   begin
                     dmGeral.FAT_CD_M_XML_ITE.edit;
                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsInteger :=
                         PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('DESC_ITEM').AsString :=
                         PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('INT_UTILIZA_LOTE').AsBoolean :=
                         PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('int_lote_gru').AsBoolean;

                   end;
             PSQ_FM_X_ITE.Free;
          end;

       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'int_nomecor' then
          begin
             PSQ_FM_X_COR := TPSQ_FM_X_COR.Create(Self);
             PSQ_FM_X_COR.ShowModal;
                if not PSQ_FM_X_COR.BUS_CD_C_COR.IsEmpty then
                   begin
                     dmGeral.FAT_CD_M_XML_ITE.edit;
                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_COR').AsInteger :=
                         PSQ_FM_X_COR.BUS_CD_C_COR.FieldByName('ID_COR').AsInteger;

                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('INT_NOMECOR').AsString :=
                         PSQ_FM_X_COR.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
                   end;
             PSQ_FM_X_COR.Free;
          end;

       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'int_nometam' then
          begin
             PSQ_FM_X_TAM := TPSQ_FM_X_TAM.Create(Self);
             PSQ_FM_X_TAM.ShowModal;
                if not PSQ_FM_X_TAM.BUS_CD_C_TAM.IsEmpty then
                   begin
                     dmGeral.FAT_CD_M_XML_ITE.edit;
                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_TAMANHO').AsInteger :=
                         PSQ_FM_X_TAM.BUS_CD_C_TAM.FieldByName('ID_TAMANHO').AsInteger;

                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('INT_NOMETAM').AsString :=
                         PSQ_FM_X_TAM.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString;
                   end;
             PSQ_FM_X_TAM.Free;
          end;


       if grdItens.Columns[grdItens.SelectedIndex].FieldName = 'id_cfop' then
          begin
             PSQ_FM_X_CFO := TPSQ_FM_X_CFO.Create(Self);
             PSQ_FM_X_CFO.ShowModal;
                if not PSQ_FM_X_CFO.BUS_CD_C_CFO.IsEmpty then
                   begin
                     dmGeral.FAT_CD_M_XML_ITE.edit;
                     dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_CFOP').AsString :=
                         PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('ID_CFO').AsString;
                   end;
             PSQ_FM_X_CFO.Free;
          end;
     end;
end;

procedure TEST_FM_M_XML.grdItensRowChanged(Sender: TObject);
begin
  inherited;

   if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean = true ) and
      (dmGeral.FAT_CD_M_XML_ITE.FieldByname('INT_UTILIZA_LOTE').AsBoolean=true)) then
     begin
       grdItens.PopupMenu := pmLote;
     end
   else
     begin
        grdItens.PopupMenu := nil;
     end;


end;

procedure TEST_FM_M_XML.grdTitulosEnter(Sender: TObject);
begin
  inherited;
  EST_FM_M_XML.KeyPreview := false;
end;

procedure TEST_FM_M_XML.grdTitulosExit(Sender: TObject);
begin
  inherited;
  EST_FM_M_XML.KeyPreview := true;
end;

procedure TEST_FM_M_XML.grdTitulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     begin
       if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName = 'vlr_titulo' then
          begin
            if dmGeral.FAT_CD_M_XML_TIT.eof then
               dmGeral.FAT_CD_M_XML_TIT.First
            else
               dmGeral.FAT_CD_M_XML_TIT.Next;
            dmGeral.FAT_CD_M_XML_TIT.Edit;
            grdTitulos.SelectedIndex := 0;

           { grdTitulos.Options :=
                [dgEditing,dgTitles,dgIndicator,dgColumnResize,
                 dgColLines,dgRowLines,dgTabs,dgConfirmDelete,
                 dgCancelOnExit,dgWordWrap];}
            grdTitulos.SetFocus; // depois de um setfocus que o foco ira direto para a coluna posicionada.
          end;
     end;

  if key = vk_f3 then
     begin
        if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName = 'id_plano' then
           begin
             PSQ_FM_X_PCT := TPSQ_FM_X_PCT.Create(Self);
             PSQ_FM_X_PCT.ShowModal;
             if not PSQ_FM_X_PCT.BUS_CD_C_PCT.IsEmpty then
                begin
                  dmGeral.FAT_CD_M_XML_TIT.edit;
                  dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_PLANO').AsString :=
                     PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;

                end;
            PSQ_FM_X_PCT.Free;
           end;
     end;

  if key = vk_f3 then
     begin
       if grdTitulos.Columns[grdTitulos.SelectedIndex].FieldName = 'id_forma_pag' then
          begin
             PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);
             PSQ_FM_X_FPG.ShowModal;
                if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
                   begin
                     dmGeral.FAT_CD_M_XML_TIT.edit;
                     dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_FORMA_PAG').AsInteger :=
                         PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsInteger;

                   end;
             PSQ_FM_X_FPG.Free;
          end;
     end;
end;

procedure TEST_FM_M_XML.pnlDadosDblClick(Sender: TObject);
begin
  inherited;
  grdItens.OnEnter       := grdItensEnter;
  grdItens.OnExit        := grdItensExit;
  grdItens.OnKeyDown     := grdItensKeyDown;
  grdItens.OnCellChanged := grdItensCellChanged;
  grdItens.ReadOnly      := false;

  grdTitulos.OnEnter     := grdTitulosEnter;
  grdTitulos.OnExit      := grdTitulosExit;
  grdTitulos.OnKeyDown   := grdTitulosKeyDown;
  grdTitulos.ReadOnly    := false;

  btnImprimirEspelho.Enabled := true;
  btnGerarNota.Enabled       := true;
  btnImportarXml.Enabled     := true;
end;

procedure TEST_FM_M_XML.txtCFOPButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CFO := TPSQ_FM_X_CFO.Create(Self);
   PSQ_FM_X_CFO.ShowModal;
      if not PSQ_FM_X_CFO.BUS_CD_C_CFO.IsEmpty then
         begin
           dmGeral.FAT_CD_M_XML.FieldByName('CFOP').AsString :=
                PSQ_FM_X_CFO.BUS_CD_C_CFO.FieldByName('ID_CFO').AsString;
         end;
   PSQ_FM_X_CFO.Free;
end;

procedure TEST_FM_M_XML.txtCodIqmButtonClick(Sender: TObject);
begin

  if (trim(dmGeral.FAT_CD_M_XML.FieldByName('NOME_EMITENTE').Text) = '') then
     begin
       ShowMessage('O campo "Emitente" está vazio.');
       abort;
     end;

  if (trim(dmGeral.FAT_CD_M_XML.FieldByName('NOTA_FISCAL').text) = '') then
      begin
        ShowMessage('O campo "Nota Fiscal" está vazio.');
        abort;
      end;

  dmGeral.FAT_CD_M_XML_ITE.Cancel;
  if dmGeral.FAT_CD_M_XML_ITE.IsEmpty then
     begin
       ShowMessage('Para importar a "Inspeção" é necessário que exista pelo menos 1 item no Grid de Itens.');
       abort;
     end;

  Application.CreateForm(TFAT_FM_M_NFE_IPQ,FAT_FM_M_NFE_IPQ);
  FAT_FM_M_NFE_IPQ.xOriChamada := 1;
  FAT_FM_M_NFE_IPQ.ShowModal;
  FAT_FM_M_NFE_IPQ.Free;

  if not dmGeral.BUS_CD_M_IQM.IsEmpty then
     begin
       dmGeral.FAT_CD_M_XML.FieldByName('ID_IQM').AsInteger := dmGeral.BUS_CD_M_IQMid_iqm.AsInteger;
     end;
  txtCodIqm.SetFocus;
end;

procedure TEST_FM_M_XML.txtIdItemEnter(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_XML_ITE.edit;
end;
end.















