unit FAT_UN_M_IQM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, Vcl.ComCtrls,
  vcl.wwcheckbox, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, Vcl.DBGrids,
  JvExExtCtrls, JvExtComponent, JvPanel, Datasnap.DBClient, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFAT_FM_M_IQM = class(TPAD_FM_X_PAD)
    lblFornecedor: TLabel;
    lblNotaFiscal: TLabel;
    lblEntrada: TLabel;
    dsoIte: TwwDataSource;
    dsoIteAna: TwwDataSource;
    FAT_XL_M_IQM: TfrxXLSExport;
    FAT_PD_M_IQM: TfrxPDFExport;
    FAT_DB_M_IQM_ITE_ANA: TfrxDBDataset;
    FAT_DB_M_NFE_ITE_IQM_ANA: TfrxDBDataset;
    FAT_DB_M_IQM_ITE: TfrxDBDataset;
    FAT_DB_M_IQM: TfrxDBDataset;
    lblDataRecebimento: TLabel;
    dpkDataRecebimento: TJvDBDateEdit;
    Label7: TLabel;
    dpkDataEmissao: TJvDBDateEdit;
    pcDados: TPageControl;
    tbiInspecaoRecebimento: TTabSheet;
    tbiTratamento: TTabSheet;
    lblNLoteFabricante: TLabel;
    lblNLoteInterno: TLabel;
    lblNLaudo: TLabel;
    lblDataCertificado: TLabel;
    dpkDataCertificado: TJvDBDateEdit;
    lblDataInspecao: TLabel;
    lblResultadoFinal: TLabel;
    lblDemerito: TLabel;
    dpkDataInspecao: TJvDBDateEdit;
    txtDemerito: TDBMemo;
    txtOrigem: TDBMemo;
    Label3: TLabel;
    lblQtdeNC: TLabel;
    lblLoteRecebido: TLabel;
    lblRelatosOcorrencia: TLabel;
    txtRelatosOcorrencia: TDBMemo;
    tbiComentarios: TTabSheet;
    Label5: TLabel;
    lblEncontrado: TLabel;
    lblComentarios: TLabel;
    txtEspecificado: TDBMemo;
    txtEncontrado: TDBMemo;
    txtComentarios: TDBMemo;
    lblDisposicao: TLabel;
    cbbDisposicao: TwwDBLookupCombo;
    lblGerendeAprovou: TLabel;
    cbbGerenteAprovou: TwwDBLookupCombo;
    lblExecutadoPor: TLabel;
    cbbExecutadoPor: TwwDBLookupCombo;
    Label1: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    deDtaAprovacao: TJvDBDateEdit;
    deDtaFinalizado: TJvDBDateEdit;
    dgItens: TwwDBGrid;
    txtFornecedor: TJvDBComboEdit;
    txtFornecedorDescricao: TDBText;
    lblSerie: TLabel;
    Label6: TLabel;
    txtNotaFiscal: TwwDBEdit;
    txtSerie: TwwDBEdit;
    txtSubSerie: TwwDBEdit;
    txtNLaudo: TwwDBEdit;
    txtNLoteFabricante: TwwDBEdit;
    txtNLoteInternod: TwwDBEdit;
    txtQtdeNC: TwwDBEdit;
    Label17: TLabel;
    txtPedidoCompra: TJvDBComboEdit;
    btnRemoverPedidoCompra: TSpeedButton;
    txtBuscaItem: TJvDBComboEdit;
    txtItemDescricao: TDBText;
    Label4: TLabel;
    txtQtde: TwwDBEdit;
    Label9: TLabel;
    txtResponsavelNome: TDBText;
    cbbCondComerciais: TwwDBComboBox;
    cbbQtdPedNfe: TwwDBComboBox;
    cbbQualidade: TwwDBComboBox;
    lblCondComerciais: TLabel;
    lblQtdPedNfe: TLabel;
    lblQualidade: TLabel;
    cbbPreservProd: TwwDBComboBox;
    cbbCertQualid: TwwDBComboBox;
    lblPreservProd: TLabel;
    lblCertQualid: TLabel;
    dgItensIButton: TwwIButton;
    btnInspecionarItem: TBitBtn;
    lblItem: TLabel;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbTamanho: TwwDBLookupCombo;
    cbbCor: TwwDBLookupCombo;
    txtResponsavel: TDBText;
    Label2: TLabel;
    txtUnd: TDBText;
    wwDBEdit1: TwwDBEdit;
    btnImprimirPlano: TBitBtn;
    btnGerarPlano: TBitBtn;
    FAT_FR_M_IQM: TfrxReport;
    txtResultadoItem: TwwDBComboBox;
    Label11: TLabel;
    btnImprimirEtiqueta: TcxButton;
    pnlPeriodo: TPanel;
    Label12: TLabel;
    txtDtaIni: TJvDateEdit;
    txtDtaFinal: TJvDateEdit;
    txtObservacao: TwwDBEdit;
    lblObservacao: TLabel;
    tsInspComp: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    cbTamanhoLetra: TwwDBComboBox;
    Label15: TLabel;
    cbSimboloConsProduto: TwwDBComboBox;
    Label16: TLabel;
    cbTextoInfoContato: TwwDBComboBox;
    Label18: TLabel;
    cbTextoCobGarPerdaGar: TwwDBComboBox;
    Label19: TLabel;
    cbTabelaGarantiaBiotipo: TwwDBComboBox;
    Label20: TLabel;
    cbAvisoAsfixia: TwwDBComboBox;
    Label21: TLabel;
    cbAvisoColchaoBaby: TwwDBComboBox;
    Label22: TLabel;
    wwDBComboBox8: TwwDBComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    rpManual: TfrxReport;
    BitBtn1: TBitBtn;
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure dgItensDblClick(Sender: TObject);
    procedure dgItensCellChanged(Sender: TObject);
    procedure cbbDisposicaoEnter(Sender: TObject);
    procedure cbbGerenteAprovouEnter(Sender: TObject);
    procedure cbbExecutadoPorEnter(Sender: TObject);
    procedure dgAnaDblClick(Sender: TObject);
    procedure btnImprimirPlanoClick(Sender: TObject);
    procedure btnGerarPlanoClick(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtPedidoCompraButtonClick(Sender: TObject);
    procedure btnRemoverPedidoCompraClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure dgItensIButtonClick(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure btnInspecionarItemClick(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure dgItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbCondComerciaisChange(Sender: TObject);
    procedure cbbQtdPedNfeChange(Sender: TObject);
    procedure cbbQualidadeChange(Sender: TObject);
    procedure cbbPreservProdChange(Sender: TObject);
    procedure cbbCertQualidChange(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dpkDataInspecaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtComentariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dpkDataInspecaoExit(Sender: TObject);
    procedure FAT_DB_M_IQM_ITE_ANACheckEOF(Sender: TObject; var Eof: Boolean);
    procedure tbiComentariosShow(Sender: TObject);
    procedure tbiComentariosEnter(Sender: TObject);
    procedure txtPedidoCompraExit(Sender: TObject);
    procedure deDtaFinalizadoExit(Sender: TObject);
    procedure dpkDataRecebimentoExit(Sender: TObject);
    procedure dpkDataInspecaoEnter(Sender: TObject);
    procedure btnImprimirEtiquetaClick(Sender: TObject);
    procedure txtDtaFinalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure AcoesPosTestes;
    function  AltResultRecebimento:String;
    procedure ExibResultItem;
    procedure PreencherCampoOrigem;
    procedure ChamaCorTamanho;
    procedure Atualizar_xBusca;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure AltBotaoInsp(Tipo:integer);
    var
      xbusca_item: String;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_IQM: TFAT_FM_M_IQM;

implementation

{$R *.dfm}

uses uDmGeral,uProxy,UApplayClassProxy,
  FAT_RN_M_NFE, FAT_UN_M_NFE_IPE, PSQ_UN_X_FOR, PSQ_UN_X_ITE,
  FAT_UN_M_IQM_ITE_ANA, FAT_RN_M_IQM, FAT_UN_M_IQM_IMP, uDmSgq;

procedure TFAT_FM_M_IQM.AbrirBuscas;
begin
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFuncionario2(1,'%');
  dmGeral.BusFuncionario3(1,'%');
  dmSgq.BusDisposicao(1,'%');
  dmGeral.BusCor(1,'%');
  dmGeral.BusTamanho(1,'%');
end;

procedure TFAT_FM_M_IQM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ALM);
  pcDados.Enabled := False;
  HabilDesabCampos(True, clWhite);
  txtFornecedor.SetFocus;
end;

procedure TFAT_FM_M_IQM.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_IQM) then
     begin
       inherited;
       pcDados.Enabled := False;
       if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
          begin
            AltResultRecebimento;
          end;
       HabilDesabCampos(false,$00DADADA);
     end;
end;

procedure TFAT_FM_M_IQM.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_IQM) then
     begin
       inherited;
       AltBotaoInsp(0);
       pcDados.Enabled := False;
       dbGrid.SetFocus;
     end
   else
     begin

       if txtNLoteFabricante.CanFocus then
          txtNLoteFabricante.SetFocus
       else
          begin
            if txtRelatosOcorrencia.CanFocus then
               txtRelatosOcorrencia.SetFocus;
          end;
     end;
end;

procedure TFAT_FM_M_IQM.acExcluirExecute(Sender: TObject);
begin
  if FAT_CD_M_NFE_ITE_IQM_TesPermExclusao  then
     begin
       Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_IQM);
       inherited;
     end;
end;

procedure TFAT_FM_M_IQM.acGravarExecute(Sender: TObject);
var
  codigo, id_sequencia: String;
begin
   if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert, dsEdit] then
      begin
         if MessageDlg('A inspeção do item não foi salva, gostaria de salvá-la agora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              dmGeral.FAT_CD_M_IQM_ITE.Post;
              AltBotaoInsp(0);
              pcDados.Enabled := False;
           end
         else
           begin
             dmGeral.FAT_CD_M_IQM_ITE.Cancel;
           end;
      end;


   FAT_RN_M_IQM.FatOutrasValIqm;

   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_LOTE_NA_ENTRADA').AsBoolean = true then
      dmGeral.MontarNroLoteIteNfe(dmGeral.FAT_CD_M_IQM_ITE,1);

   codigo       := dmGeral.FAT_CD_M_IQM.FieldByName('ID_IQM').AsString;
   DmGeral.Grava(dmGeral.FAT_CD_M_IQM);
   inherited;

   dmGeral.FAT_CD_M_IQM.Close;
   dmGeral.FAT_CD_M_IQM.Data :=
   dmGeral.FAT_CD_M_IQM.DataRequest(
           VarArrayOf([0,codigo]));
   AbrirBuscas;
   pcDados.Enabled    := False;
   pcDados.ActivePageIndex := 0;
end;

procedure TFAT_FM_M_IQM.AcoesPosTestes;
begin

end;

procedure TFAT_FM_M_IQM.AltBotaoInsp(Tipo: integer);
begin
  case tipo of
     0:
       begin
         btnInspecionarItem.font.Color := clNavy;
         btnInspecionarItem.Caption := 'Inspecionar Novo Item';
       end;
     1:
       begin
          btnInspecionarItem.font.Color := clRed;
          btnInspecionarItem.Caption := 'Salvar Inspeção';
       end;
  end;
end;

function TFAT_FM_M_IQM.AltResultRecebimento: String;
begin
  if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert,dsEdit] then
     begin
        result := '';

        if not dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
           begin
             if (cbbCondComerciais.ItemIndex  = 0) and
                (cbbQtdPedNfe.itemIndex   = 0) and
                (cbbQualidade.ItemIndex   = 0) and
                (cbbPreservProd.ItemIndex = 0) and
                (cbbCertQualid.ItemIndex  = 0) then
                 begin
                   if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert,dsEdit] then
                      begin
                        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('RESULTADO').AsInteger := 1;
                      end;
                   result := 'Aprovado';
                 end
              else
                 begin
                   if (cbbCondComerciais.ItemIndex   = 1) or
                      (cbbQtdPedNfe.itemIndex    = 1) or
                      (cbbQualidade.ItemIndex    = 1) or
                      (cbbPreservProd.ItemIndex  = 1) or
                      (cbbCertQualid.ItemIndex   = 1) then
                      begin
                        if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert,dsEdit] then
                           begin
                             dmGeral.FAT_CD_M_IQM_ITE.FieldByName('RESULTADO').AsInteger := 0;
                           end;
                         Result := 'Reprovado';
                      end;
                 end;

              if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert,dsEdit] then
                 begin
                    dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger := 0;

                    if (cbbCondComerciais.ItemIndex = 1)  then
                        begin
                          dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                              dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;
                        end;
                    if (cbbQtdPedNfe.itemIndex = 1)      then
                        begin
                          dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                              dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;

                        end;
                    if (cbbQualidade.ItemIndex = 1)      then
                        begin
                          dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                              dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;

                        end;

                    if (cbbPreservProd.ItemIndex = 1)   then
                        begin
                          dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                              dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;

                        end;

                    if (cbbCertQualid.ItemIndex = 1) then
                        begin
                          dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger :=
                              dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger + 1;
                        end;
                 end;
           end;
     end;
end;

procedure TFAT_FM_M_IQM.Atualizar_xBusca;
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

procedure TFAT_FM_M_IQM.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_IQM_ITE.Post;
  AltBotaoInsp(0);
  pcDados.ActivePage := tbiInspecaoRecebimento;
end;

procedure TFAT_FM_M_IQM.btnGerarPlanoClick(Sender: TObject);
begin
  inherited;
  {dmGeral.FAT_CD_M_IQM_ITE.Cancel;

  if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       ShowMessage('Não existe inspeção para o item.');
       Exit;
     end;}

  FAT_FM_M_IQM_ITE_ANA := TFAT_FM_M_IQM_ITE_ANA.CREATE(SELF);

  if dmGeral.FAT_CD_M_IQM_ITE_ANA.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM_ITE_ANA.Insert;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('INT_NOMERES').AsString :=
               dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMERES').AsString;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ESPECIFICADO').Text :=
               dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ESPECIFICADO').Text;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ENCONTRADO').Text :=
               dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ENCONTRADO').Text;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('SITUACAO_ANALISE').AsInteger := 0;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('QTDE_NC').AsFloat            := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').AsFloat;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('QTDE_TOTAL').AsFloat         := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTDE').AsFloat;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('PERC_NC').AsFloat            := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PER_LOT_REC').AsFloat;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_ITEM').AsInteger          := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_ITEM').AsInteger;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('int_nomeite').AsString       := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('int_nomeite').AsString;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM_ITE_ANA.Edit;
     end;

  FAT_FM_M_IQM_ITE_ANA.ShowModal;
  FAT_FM_M_IQM_ITE_ANA.Free;
end;

procedure TFAT_FM_M_IQM.btnImprimirEtiquetaClick(Sender: TObject);
var
  qtde:integer;
  pageHeight:currency;
  qtde_total:integer;
begin
     //Foi criado sub-tela FAT_FM_M_IQM_IMP para impressão
      //de etiquetas. Responsavel:Luan.Data:04/11/2015
     FAT_FM_M_IQM_IMP := TFAT_FM_M_IQM_IMP.Create(Self);
     FAT_FM_M_IQM_IMP.ShowModal;
     FAT_FM_M_IQM_IMP.Free;


 { cdsEtiquetas.EmptyDataSet;
  qtde_total := 0;
  if dmGeral.FAT_CD_M_IQM_ITE.RecordCount>0 then
    begin
      dmGeral.FAT_CD_M_IQM_ITE.First;
      while not dmGeral.FAT_CD_M_IQM_ITE.EOF do
        begin
          qtde := 0;
          while qtde < dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTDE').AsFloat do
            begin
              cdsEtiquetas.Insert;


              cdsEtiquetas.FieldByName('NUMERO_NF').AsInteger :=
                      dmGeral.FAT_CD_M_IQM.FieldByName('NUMERO_NF').AsInteger;

              cdsEtiquetas.FieldByName('NUM_LOTE').AsString :=
                      dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NUM_LOTE').AsString;

              cdsEtiquetas.FieldByName('DTA_RECEBIMENTO').AsString :=
                      dmGeral.FAT_CD_M_IQM.FieldByName('DTA_RECEBIMENTO').AsString;

               cdsEtiquetas.FieldByName('ITEM').AsString :=
                        'Produto: '+copy(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMEITE').AsString,1,28) +' - Und: '+
                                    dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_UNDCOM').AsString;

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
                begin
                  cdsEtiquetas.FieldByName('ITEM').AsString :=
                        cdsEtiquetas.FieldByName('ITEM').AsString +#13+'Cor: '+
                  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMECOR').AsString;
                end;

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
                begin
                  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
                     begin
                         cdsEtiquetas.FieldByName('ITEM').AsString :=
                              cdsEtiquetas.FieldByName('ITEM').AsString+'   Tam: '+
                              dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMETAM').AsString;
                     end
                  else
                     begin
                         cdsEtiquetas.FieldByName('ITEM').AsString :=
                              cdsEtiquetas.FieldByName('ITEM').AsString +#13+'Tam: '+
                              dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMETAM').AsString;
                     end;
                end;
              cdsEtiquetas.Post;
              qtde := qtde + 1;
            end;
          qtde_total := qtde_total + qtde;
          dmGeral.FAT_CD_M_IQM_ITE.Next;
        end;
        FAT_FR_R_IQM_ETQ.Variables['ft_qtde'] := qtde_total;
        FAT_FR_R_IQM_ETQ.PrepareReport();
        FAT_FR_R_IQM_ETQ.ShowReport();

    end;

     if cdsEtiquetas.RecordCount = 0 then
      begin
        ShowMessage('Não há registros selecionados para impressão de etiquetas!');
      end; }

end;

procedure TFAT_FM_M_IQM.btnImprimirPlanoClick(Sender: TObject);
var
  PathImg: string;
  CodIqm,codigo:string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.FAT_CD_M_IQM_ITE_ANA.IsEmpty then
      begin
        CodIqm := dmGeral.FAT_CD_M_IQM_ITE_ANAid_iqm.Text;
        codigo := dmGeral.FAT_CD_M_IQM_ITE_ANAid_sequencia.Text;

        dmGeral.FAT_CD_M_IQM.Filtered := false;
        dmGeral.FAT_CD_M_IQM.Filter   := ' ID_IQM = ' + CodIqm;
        dmGeral.FAT_CD_M_IQM.Filtered := true;

        dmGeral.FAT_CD_M_IQM_ITE.Filter   := ' ID_IQM = ' + CodIqm + ' AND ID_SEQUENCIA = ' + codigo;
        dmGeral.FAT_CD_M_IQM_ITE.Filtered := true;

       PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(FAT_FR_M_IQM.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        FAT_FR_M_IQM.PrepareReport();
        FAT_FR_M_IQM.ShowReport();
        dmGeral.FAT_CD_M_IQM.Filtered := false;
        dmGeral.FAT_CD_M_IQM_ITE.Filtered := false;

        dmGeral.FAT_CD_M_IQM.Locate('ID_IQM',codIqm,[]);
        //dmGeral.FAT_CD_M_IQM_ITE.Locate('ID_IQM',codIqm,[]);
        dmGeral.FAT_CD_M_IQM_ITE.Locate('ID_IQM;ID_SEQUENCIA',VarArrayOf([CodIqm,codigo]),[]);
        dmGeral.FAT_CD_M_IQM_ITE.Edit;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        Exit;
      end;
end;

procedure TFAT_FM_M_IQM.btnInspecionarItemClick(Sender: TObject);
begin
  inherited;
  pcDados.Enabled := True;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert, dsEdit] then
     begin
       dmGeral.FAT_CD_M_IQM_ITEdta_inspecao.AsDateTime:= dmgeral.FAT_CD_M_IQMdta_recebimento.AsDateTime;
       dmGeral.FAT_CD_M_IQM_ITE.Post;
       AltBotaoInsp(0);
       pcDados.ActivePageIndex := 0;
       pcDados.Enabled := false;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM_ITE.Insert;
       dmGeral.FAT_CD_M_IQM_ITEdta_inspecao.AsDateTime:= dmgeral.FAT_CD_M_IQMdta_recebimento.AsDateTime;
       AltBotaoInsp(1);

       pcDados.Enabled := true;
       pcDados.ActivePageIndex := 0;
       txtBuscaItem.SetFocus;
     end;
end;

procedure TFAT_FM_M_IQM.btnRemoverPedidoCompraClick(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_IQM_ITE.Cancel;
  if not dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       if MessageDlg('Se continuar os itens da inspeção serão apagados.' + #13 +
                     'Deseja realmente retirar o pedido de compra da inspeção?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            dmGeral.FAT_CD_M_IQM_ITE.First;
            while not dmGeral.FAT_CD_M_IQM_ITE.Eof do
               begin
                 dmGeral.FAT_CD_M_IQM_ITE.Delete;
               end;
          end;
     end;
end;

procedure TFAT_FM_M_IQM.btnFiltroClick(Sender: TObject);
begin

  Screen.Cursor := crHourGlass;
  try
    inherited;

  if (cbbPesquisa.ItemIndex = 0) then
     begin
       dmGeral.FAT_CD_M_IQM.Close;
       dmGeral.FAT_CD_M_IQM.Data :=
             dmGeral.FAT_CD_M_IQM.DataRequest(
                     VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text]));
     end;


  if (cbbPesquisa.ItemIndex in [1,2,3,4,6,7]) then
    begin
     dmGeral.FAT_CD_M_IQM.Close;
     dmGeral.FAT_CD_M_IQM.Data :=
          dmGeral.FAT_CD_M_IQM.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));
    end;

  if (cbbPesquisa.ItemIndex = 5) then
    begin
      dmGeral.FAT_CD_M_IQM.Close;
      dmGeral.FAT_CD_M_IQM.Data :=
           dmGeral.FAT_CD_M_IQM.DataRequest(
                   VarArrayOf([cbbPesquisa.ItemIndex,txtDtaIni.Text,txtDtaFinal.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));
    end;

  AltResultRecebimento;

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_IQM.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  {Filtros:
    0 - Controle
    1 - Número
    2 - Fornecedor
    3 - Nome fornecedor
    4 - Data recebimento
  }

  txtPesquisa.Text := '';
  txtDtaIni.Text := '';
  txtDtaFinal.Text := '';

  if (cbbPesquisa.ItemIndex = 5) then
    begin
     txtPesquisa.Visible := false;
     pnlPeriodo.Visible := true;
    end
  else
    begin
      txtPesquisa.Visible := true;
      pnlPeriodo.Visible := false;
    end;

  if cbbPesquisa.ItemIndex in [0,1,2,6] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFAT_FM_M_IQM.cbbPreservProdChange(Sender: TObject);
begin
  inherited;
  AltResultRecebimento;
  PreencherCampoOrigem;
end;

procedure TFAT_FM_M_IQM.cbbQtdPedNfeChange(Sender: TObject);
begin
  inherited;
  AltResultRecebimento;
  PreencherCampoOrigem;
end;

procedure TFAT_FM_M_IQM.cbbQualidadeChange(Sender: TObject);
begin
  inherited;
  AltResultRecebimento;
  PreencherCampoOrigem;
end;

procedure TFAT_FM_M_IQM.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TFAT_FM_M_IQM.cbbTamanhoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

   if (txtBuscaItem.Focused)  or
      (txtQtde.Focused) then
       abort;

  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       Exit;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMETAM').text :=
               dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;
     end;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtNLoteFabricante.SetFocus;
    end;
end;

procedure TFAT_FM_M_IQM.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        if txtNLoteFabricante.CanFocus then
           txtNLoteFabricante.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            lblCor.Left         := 106;
            lblCor.Visible      := True;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 5;
            lblTamanho.Visible := True;

            cbbCor.TabStop := True;
            cbbCor.Left := 106;
            cbbCor.Width := 99;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  lblTamanho.Visible  := True;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := False;

                  pnlCorTamanho.Visible := True;
                  //cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  lblTamanho.Visible  := False;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 5;
                  cbbCor.Width := 95;
                  //cbbCor.SetFocus;
                  lblCor.left := 5;
                  lblCor.Visible := True;
               end;
         end;
     end;
end;

procedure TFAT_FM_M_IQM.deDtaFinalizadoExit(Sender: TObject);
begin
  inherited;

   pcDados.ActivePageIndex := 2;

   txtEncontrado.SetFocus;

   ActiveControl := nil;
   PostMessage(txtEspecificado.Handle, WM_SETFOCUS, 0, 0);
   txtEspecificado.SetFocus;

end;

procedure TFAT_FM_M_IQM.dgAnaDblClick(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_IQM_ITE.Cancel;

  if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       ShowMessage('Não existe inspeção para o item.');
       exit;
     end;

  if not dmGeral.FAT_CD_M_IQM_ITE.FieldByName('plano_acao_forn').AsBoolean then
     begin
       ShowMessage('Inspeção não necessita plano de ação para o fornecedor');
       exit;
     end;

  FAT_FM_M_IQM_ITE_ANA := TFAT_FM_M_IQM_ITE_ANA.CREATE(SELF);

  if dmGeral.FAT_CD_M_IQM_ITE_ANA.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM_ITE_ANA.Insert;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ESPECIFICADO').Text :=
               dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ESPECIFICADO').Text;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ENCONTRADO').Text :=
               dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ENCONTRADO').Text;

       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('SITUACAO_ANALISE').AsInteger := 0;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('QTDE_NC').AsFloat            := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').AsFloat;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('QTDE_TOTAL').AsFloat         := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTDE').AsFloat;
       dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('PERC_NC').AsFloat            := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PER_LOT_REC').AsFloat;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM_ITE_ANA.Edit;
     end;
  FAT_FM_M_IQM_ITE_ANA.ShowModal;
  FAT_FM_M_IQM_ITE_ANA.Free;
end;

procedure TFAT_FM_M_IQM.dgItensCellChanged(Sender: TObject);
begin
  inherited;
  AltResultRecebimento;
end;

procedure TFAT_FM_M_IQM.dgItensDblClick(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_IQM_ITE.Cancel;

  if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM_ITE.Insert;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM_ITE.Edit;
     end;

  if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert] then
     begin
       dmGeral.FAT_CD_M_IQM_ITEid_responsavel.AsInteger         := xFuncionario;
       dmGeral.FAT_CD_M_IQM_ITEnro_lote_fabric_produto.AsString := '0';
       dmGeral.FAT_CD_M_IQM_ITEcert_data.AsDateTime             := xDataSis;
       dmGeral.FAT_CD_M_IQM_ITEplano_acao_forn.AsBoolean        := false;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DTA_INSPECAO').AsDateTime := xDataSis;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('CERT_NUMERO').AsString    := ' ';
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger      := 0;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').AsFloat          := 0;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PER_LOT_REC').AsFloat     := 0;
     end;

  txtNLoteFabricante.SetFocus;
end;

procedure TFAT_FM_M_IQM.dgItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgItensIButton.Enabled := False;
     if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_IQM_ITE.Delete;
     dmGeral.FAT_CD_M_IQM_ITE.Edit;
  finally
    dgItensIButton.Enabled := True;
  end;
end;

procedure TFAT_FM_M_IQM.dgItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pcDados.Enabled = False then
     pcDados.Enabled := True;

  dmGeral.FAT_CD_M_IQM_ITE.Cancel;

  if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM_ITE.Append;
       AltBotaoInsp(1);
       pcDados.Enabled := True;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM_ITE.Edit;
       AltBotaoInsp(1);
       pcDados.Enabled := True;
       pcDados.ActivePageIndex := 0;
       if txtNLoteFabricante.CanFocus then
          txtNLoteFabricante.SetFocus;
     end;
end;

procedure TFAT_FM_M_IQM.dpkDataInspecaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_IQM_ITEdta_inspecao.AsDateTime:= dmgeral.FAT_CD_M_IQMdta_recebimento.AsDateTime;
end;

procedure TFAT_FM_M_IQM.dpkDataInspecaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;
end;

procedure TFAT_FM_M_IQM.dpkDataInspecaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin

       if dmGeral.BUS_CD_C_ITE.FieldByName('tipo_produto').Asinteger = 1 then  // Se for Manual do Usuário
          begin
            pcDados.ActivePage := tsInspComp;
          end
       else
          begin
            if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('DEMERITO').AsInteger > 0 then
               begin
                 pcDados.ActivePage := tbiTratamento;
               end
            else
               begin
                 ActiveControl := nil;
                 PostMessage(btnInspecionarItem.Handle, WM_SETFOCUS, 0, 0);
                 dmGeral.FAT_CD_M_IQM_ITE.Post;
                 AltBotaoInsp(0);
                 btnInspecionarItem.SetFocus;
               end;
          end;
     end;
end;


procedure TFAT_FM_M_IQM.dpkDataRecebimentoExit(Sender: TObject);
begin
  inherited;
//  dmGeral.FAT_CD_M_IQM_ITEdta_inspecao.AsDateTime:= dmgeral.FAT_CD_M_IQMdta_recebimento.AsDateTime;
end;

procedure TFAT_FM_M_IQM.ExibResultItem;
begin

end;

procedure TFAT_FM_M_IQM.FAT_DB_M_IQM_ITE_ANACheckEOF(Sender: TObject;
  var Eof: Boolean);
var
  item: String;
  txtCorTam, txtItem:String;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
              dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_ITEM').AsString]));
  if trim(dmGeral.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString) <> '' then
     FAT_FR_M_IQM.Variables['ft_CodFabrica'] := QuotedStr(dmGeral.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString);
  dmGeral.BUS_CD_C_ITE.Close;

  dmGeral.BUS_CD_C_FUN_CRG.Close;
  dmGeral.BUS_CD_C_FUN_CRG.Data :=
              dmGeral.BUS_CD_C_FUN_CRG.DataRequest(VarArrayOf([dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_RESPONSAVEL').AsString]));
  if not dmGeral.BUS_CD_C_FUN_CRG.IsEmpty then
     begin
       FAT_FR_M_IQM.Variables['ft_CargoRes'] := QuotedStr(dmGeral.BUS_CD_C_FUN_CRG.FieldByName('int_nomecrg').AsString);
     end;
  dmGeral.BUS_CD_C_FUN_CRG.close;


  txtCorTam := '';
  txtItem   := '';

  txtItem   := dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_ITEM').AsString + ' - ' +
               dmGeral.FAT_CD_M_IQM_ITEint_nomeite.Text + ' - ' +
               dmGeral.FAT_CD_M_IQM_ITEint_undcom.Text + '    ' ;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       txtItem := txtItem + 'Tamanho: ' + dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMETAM').AsString + '    ';
       if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
          begin
            txtItem := txtItem + 'Cor: ' + dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMECOR').AsString
          end;
     end
  else
     begin
       if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
          begin
            txtItem := txtItem + 'Cor: ' + dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMECOR').AsString
          end;
     end;

  FAT_FR_M_IQM.Variables['ft_Item'] := QuotedStr(txtItem);

{  if txtCorTam <> '' then
     begin
       FAT_FR_M_IQM.Variables['ft_CorTam'] := QuotedStr(txtCorTam);
     end;}

end;

procedure TFAT_FM_M_IQM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.FAT_CD_M_IQM.Close;
  FreeAndNil(FAT_FM_M_IQM);
end;

procedure TFAT_FM_M_IQM.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_IQM.Close;
  dmGeral.FAT_CD_M_IQM.Data := dmGeral.FAT_CD_M_IQM.DataRequest(VarArrayOf([0, '']));
  dmGeral.FAT_CD_M_IQM.Open;

  ChamaCorTamanho;
  dmGeral.AtualizarGridItens(dgItens,'int_nomeite',16,12);
  txtPesquisa.Visible := false;
  pnlPeriodo.Visible := true;
  pnlPeriodo.Top := 16;
  pnlPeriodo.Left := 98;
end;

procedure TFAT_FM_M_IQM.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_IQM.Close;
  dmGeral.FAT_CD_M_IQM.Data :=
  dmGeral.FAT_CD_M_IQM.DataRequest(
            VarArrayOf([0, '']));

  pcDados.ActivePage := tbiInspecaoRecebimento;

  Atualizar_xBusca;
  AbrirBuscas;

  //cdsEtiquetas.CreateDataSet;
  //cdsEtiquetas.EmptyDataSet;

  txtPesquisa.SetFocus;
end;

procedure TFAT_FM_M_IQM.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  txtPedidoCompra.Enabled      := Estado;
  txtPedidoCompra.Color        := Cor;
  if (dmGeral.FAT_CD_M_IQM.FieldByName('ID_PEDIDO_COMPRA').AsInteger = 0) then
     begin
       txtPedidoCompra.Enabled := True;
       txtPedidoCompra.Color   := clWhite;
     end;

  txtFornecedor.Enabled := estado;
  txtFornecedor.color   := cor;

end;

procedure TFAT_FM_M_IQM.PreencherCampoOrigem;
var
  lTexto: String;
begin
  if dmGeral.FAT_CD_M_IQM_ITE.State in [dsInsert,dsEdit] then
     begin
        if cbbCondComerciais.ItemIndex = 1 then
           begin
             lTexto := 'Condições comerciais;';
           end;
        if cbbQtdPedNfe.itemIndex = 1 then
           begin
             lTexto := lTexto + ' Quantidade;';
           end;
        if cbbQualidade.ItemIndex = 1 then
           begin
             lTexto := lTexto + ' Qualidade;';
           end;
        if cbbPreservProd.ItemIndex = 1 then
           begin
             lTexto := lTexto + ' Preservação do produto;';
           end;
        if cbbCertQualid.ItemIndex = 1   then
           begin
             lTexto := lTexto + ' Certificado da qualidade;';
           end;

        dmGeral.FAT_CD_M_IQM_ITEorigem.Text := lTexto;
     end;
end;

procedure TFAT_FM_M_IQM.SpeedButton1Click(Sender: TObject);
var
  PathImg1, PathImg2: String;
  imgManualPag1,imgManualPag2: TfrxPictureView;
begin

  // PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

  PathImg1 := ExtractFilePath(Application.ExeName)+'ImagemGeral\Manual 2021 Rev 2 pag_1-iqm.png';
  PathImg2 := ExtractFilePath(Application.ExeName)+'ImagemGeral\Manual 2021 Rev 2 pag_2-iqm.png';

  {if dmGeral.PCP_CD_M_ORS.IsEmpty then
     begin
       ShowMessage('Nenhuma ordem de faturmento foi selecionada!');
       exit;
     end; }

  if FileExists(PathImg1) then
    begin
      imgManualPag1 := TfrxPictureView(rpManual.FindObject('imgManualPag1'));
      if Assigned(imgManualPag1) then
        imgManualPag1.Picture.LoadFromFile(PathImg1);
    end;


  if FileExists(PathImg2) then
    begin
      imgManualPag2 := TfrxPictureView(rpManual.FindObject('imgManualPag2'));
      if Assigned(imgManualPag2) then
        imgManualPag2.Picture.LoadFromFile(PathImg2);
    end;

  rpManual.PrepareReport();
  rpManual.ShowReport();
end;

procedure TFAT_FM_M_IQM.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').AsInteger :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;

       dmGeral.FAT_CD_M_IQM.FieldByName('INT_NOMEFOR').text :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;
     end;

   PSQ_FM_X_FOR.Free;
end;

procedure TFAT_FM_M_IQM.txtFornecedorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  dmGeral.FAT_CD_M_IQM.FieldByName('INT_NOMEFOR').Text := '';

  if dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').Text = '' then
     begin
       ShowMessage('O campo "Fornecedor" deve ser prenchido.');
       txtFornecedor.SetFocus;
       Abort;
     end;

  dmGeral.BusFornecedor(0,dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').Text);
  if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
     begin
       dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').Text := '';
       dmGeral.FAT_CD_M_IQM.FieldByName('INT_NOMEFOR').text  := '';
       txtFornecedor.SetFocus;
       Exit;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM.FieldByName('INT_NOMEFOR').text :=
               dmGeral.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;
     end;

  if dmGeral.BUS_CD_C_FOR.FieldByName('TRANSPORTADORA').AsBoolean then
     begin
       ShowMessage('Não é permitido fornecedor do tipo "Transportador".');
       dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').text := '';
       dmGeral.FAT_CD_M_IQM.FieldByName('INT_NOMEFOR').text  := '';
       txtFornecedor.SetFocus;
       dmGeral.BUS_CD_C_FOR.Close;
       exit;
     end;
  dmGeral.BUS_CD_C_FOR.Close;
end;

procedure TFAT_FM_M_IQM.tbiComentariosEnter(Sender: TObject);
begin
  inherited;
  FAT_FM_M_IQM.OnKeyPress := FAT_FM_M_IQM.FormKeyPress;
end;

procedure TFAT_FM_M_IQM.tbiComentariosShow(Sender: TObject);
begin
  inherited;

  {if txtEspecificado.CanFocus then
     txtEspecificado.SetFocus;}
end;

procedure TFAT_FM_M_IQM.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  xFormRespPSQ_ITE := FAT_FM_M_IQM.Name;
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMEITE').text :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
   PSQ_FM_X_ITE.Free;
end;

procedure TFAT_FM_M_IQM.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            Exit;
          end;

       if btnInspecionarItem.Focused then
          Exit;

       if dgItens.Focused then
          Exit;

       if not dgItensIButton.Enabled then
          Exit;
     end
  else
     begin
       if dmGeral.FAT_CD_M_IQM_ITE.state in [dsBrowse] then
          dmGeral.FAT_CD_M_IQM_ITE.edit;
     end;


  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('int_nomeite').Text := '';

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
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('int_nomeite').Text := '';
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('int_undcom').Text  := '';
       dmGeral.BUS_CD_C_ITE.close;
       exit;
     end
  else
     begin
        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_ITEM').Text :=
              dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('int_nomeite').Text :=
             dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('int_undcom').Text  :=
             dmGeral.BUS_CD_C_ITE.FieldByName('id_und_compra').AsString;

        if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_LOTE_NA_ENTRADA').AsBoolean = true then
           begin
              if dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 3 then // 1 - Por Inspeção de Recebimento de Itens
                 begin
                   ShowMessage('Inspeção não permitida! A Geração de lote interno do item deve ser pela Inspeção.');
                   txtBuscaItem.SetFocus;
                   dmGeral.FAT_CD_M_IQM_ITE.FieldByName('int_nomeite').Text := '';
                   dmGeral.FAT_CD_M_IQM_ITE.FieldByName('int_undcom').Text  := '';
                   dmGeral.BUS_CD_C_ITE.close;
                   exit;
                 end;

              // Foi alterado para o botão Gravar. 15-06-2015
              {if trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NUM_LOTE').Text) = '' then
                 begin
                   dmGeral.MontarNroLoteIteNfe(dmGeral.FAT_CD_M_IQM_ITE,1);
                 end;}
           end;
     end;
end;

procedure TFAT_FM_M_IQM.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TFAT_FM_M_IQM.txtComentariosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     pcDados.ActivePage := tbiInspecaoRecebimento;
end;

procedure TFAT_FM_M_IQM.txtDtaFinalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if ((txtDtaIni.Text <> '') and (txtDtaFinal.Text <> '')) then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TFAT_FM_M_IQM.cbbCertQualidChange(Sender: TObject);
begin
  inherited;
  AltResultRecebimento;
  PreencherCampoOrigem;
end;

procedure TFAT_FM_M_IQM.cbbCondComerciaisChange(Sender: TObject);
begin
  inherited;
  AltResultRecebimento;
  PreencherCampoOrigem;
end;

procedure TFAT_FM_M_IQM.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'');
  cbbCor.DropDown;
end;

procedure TFAT_FM_M_IQM.cbbCorExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if  txtBuscaItem.Focused or
      cbbCor.Focused or txtQtde.Focused then
      abort;

  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_COR').Text) = '' then
     begin
       if cbbTamanho.Focused then
          begin
            Exit;
          end;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end
  else
     begin
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMECOR').text :=
               dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;
     end;

  if cbbTamanho.Focused then
     begin
       Exit;
     end;
end;

procedure TFAT_FM_M_IQM.cbbDisposicaoEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusDisposicao(1,'%');
  cbbDisposicao.DropDown;
end;

procedure TFAT_FM_M_IQM.cbbExecutadoPorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario2(1,'%');
  cbbExecutadoPor.DropDown;
end;

procedure TFAT_FM_M_IQM.cbbGerenteAprovouEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbGerenteAprovou.DropDown;
end;

procedure TFAT_FM_M_IQM.txtPedidoCompraButtonClick(Sender: TObject);
begin
  inherited;
  if dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMITENTE').Text = '' then
     begin
       ShowMessage('O campo "Emitente" deve ser prenchido.');
       Abort;
     end;

  if dmGeral.FAT_CD_M_IQM.FieldByName('SERIE').Text = '' then
     begin
       ShowMessage('O campo "Série" deve ser prenchido.');
       Abort;
     end;

  if FAT_RN_M_IQM.FatVefifNFeDup then
     begin
       ShowMessage('Já existe inspeção lançada para este fornecedor+número+série+sub-série de nota fiscal.');
       txtNotaFiscal.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_IQM_ITE.Cancel;
  if not dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       if MessageDlg('Já existem itens lançado na inspeção.' + #13 +
                     'Se continuar os itens da inspeção serão apagados.' + #13 +
                     'Deseja fazer uma nova importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            dmGeral.FAT_CD_M_IQM_ITE.First;
            while not dmGeral.FAT_CD_M_IQM_ITE.Eof do
               begin
                 dmGeral.FAT_CD_M_IQM_ITE.Delete;
               end;
          end;
     end;

  Application.CreateForm(TFAT_FM_M_NFE_IPE,FAT_FM_M_NFE_IPE);
  FAT_FM_M_NFE_IPE.xOriChamada := 1;
  FAT_FM_M_NFE_IPE.ShowModal;
  FAT_FM_M_NFE_IPE.Free;

  if not dmGeral.CMP_CD_M_PED.IsEmpty then
     begin
       dmGeral.FAT_CD_M_IQM.FieldByName('ID_PEDIDO_COMPRA').AsInteger := dmGeral.CMP_CD_M_PEDid_pedido.AsInteger;

       dmGeral.FAT_CD_M_IQM_ITE.First;
       dmGeral.FAT_CD_M_IQM_ITE.edit;
       pcDados.Enabled := true;
       txtNLoteFabricante.SetFocus;
       AltBotaoInsp(1);
     end;
end;

procedure TFAT_FM_M_IQM.txtPedidoCompraExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if FAT_RN_M_IQM.FatVefifNFeDup then
     begin
       Showmessage('Já existe inspeção lançada para este (fornecedor+número+série+sub-série) de nota fiscal.');
       txtNotaFiscal.SetFocus;
     end;
end;

procedure TFAT_FM_M_IQM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAT_FM_M_IQM.txtQtdeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused then
     abort;

  if not (dmGeral.TesValQtde(dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       Abort;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        txtNLoteFabricante.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  cbbCor.SetFocus;
               end;
         end;
     end;
end;

end.
