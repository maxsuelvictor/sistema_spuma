unit FIN_UN_M_CTA_CON;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, Datasnap.DBClient, vcl.Wwdbedit,
  dxGDIPlusClasses, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TFIN_FM_M_CTA_CON = class(TPAD_FM_X_PAD)
    lblCobranca: TLabel;
    txtControle: TDBEdit;
    lblDataConciliacao: TLabel;
    dpkDataConciliacao: TJvDBDateEdit;
    lblContaCorrente: TLabel;
    cbbContaCorrente: TwwDBLookupCombo;
    gbMovimentoGerado: TGroupBox;
    gdMovConDet: TwwDBGrid;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    dsoConCxbDet: TwwDataSource;
    dsoCta: TwwDataSource;
    dgMovConDetIButton: TwwIButton;
    gbExtratoBco: TGroupBox;
    Label2: TLabel;
    grdCxb: TwwDBGrid;
    dsoConCxb: TwwDataSource;
    odOfx: TOpenDialog;
    pnMsgCxb: TPanel;
    pmConCxb: TPopupMenu;
    Desfazerrelaocomasmovimentaes1: TMenuItem;
    Label5: TLabel;
    txtTotSelMovtos: TEdit;
    Label4: TLabel;
    txtDiferencaMovtos: TEdit;
    btnBuscaMovNConc: TBitBtn;
    pnLancExistente: TPanel;
    pcNovoMov: TPageControl;
    tsSugestao: TTabSheet;
    tsNovoMov: TTabSheet;
    lblHistorico: TLabel;
    txtHistoricoSugest: TDBEdit;
    cbbPlanoContasSugest: TwwDBLookupCombo;
    txtPlanoContas: TLabel;
    lblVlrLancamento: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    dbHistoricoNmov: TDBEdit;
    Label7: TLabel;
    cbbPlanoContasNmov: TwwDBLookupCombo;
    Label8: TLabel;
    BitBtn2: TBitBtn;
    dsoConCxbAux: TwwDataSource;
    tsTransferencia: TTabSheet;
    Label1: TLabel;
    cbbContaCorrTransf: TwwDBLookupCombo;
    Label9: TLabel;
    cbbTipoFinTransf: TwwDBLookupCombo;
    Label10: TLabel;
    cbbPlanoContasTransf: TwwDBLookupCombo;
    cbbTipoFinNmov: TwwDBLookupCombo;
    txtVlrLanctoSugest: TwwDBEdit;
    txtVlrLanctoNmov: TwwDBEdit;
    imgGrid: TImageList;
    Label11: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    dsoRec: TwwDataSource;
    dsoPag: TwwDataSource;
    cdsTitulos: TClientDataSet;
    cdsTitulosid_controle: TIntegerField;
    cdsTitulosid_titulo_rec: TIntegerField;
    cdsTitulosid_titulo_pag: TIntegerField;
    cdsTitulosvlr_lancamento: TCurrencyField;
    cdsTituloshistorico: TStringField;
    cdsTitulosdta_movimento: TDateField;
    cdsTitulosnum_doc: TIntegerField;
    cdsTitulosid_plano: TStringField;
    cdsTitulostipo_titulo: TIntegerField;
    Label12: TLabel;
    txtDtaIni: TJvDateEdit;
    txtDtaFin: TJvDateEdit;
    Label13: TLabel;
    cdsTitulosint_selecao: TBooleanField;
    cdsTitulosid_tipo_financeiro: TIntegerField;
    tsTitReceber: TTabSheet;
    txtVlrLancamento: TwwDBEdit;
    Label14: TLabel;
    cbbPlanoRec: TwwDBLookupCombo;
    Label15: TLabel;
    txtClientes: TJvDBComboEdit;
    lblCliente: TLabel;
    txtClienteNome: TDBText;
    tsTitPagar: TTabSheet;
    txtVlrLancamentoPag: TwwDBEdit;
    Label16: TLabel;
    cbbPlanoPag: TwwDBLookupCombo;
    Label17: TLabel;
    Label18: TLabel;
    txtCodFor: TJvDBComboEdit;
    txtDescFor: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    grdMovExist: TwwDBGrid;
    tsGrdRec: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    tsGrdPag: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Label19: TLabel;
    txtHistoricoPag: TwwDBEdit;
    Label20: TLabel;
    txtHistoricoRec: TwwDBEdit;
    txtJuros: TwwDBEdit;
    Panel1: TPanel;
    Label22: TLabel;
    Panel2: TPanel;
    Label21: TLabel;
    Panel3: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    txtHistorico: TDBText;
    Panel4: TPanel;
    txtForne: TDBText;
    txtCodForne: TDBText;
    Label26: TLabel;
    Panel5: TPanel;
    txtCliente: TDBText;
    txtCodCli: TDBText;
    Label25: TLabel;
    Panel6: TPanel;
    btnSairMovExist: TBitBtn;
    btnOkMovExist: TBitBtn;
    txtDesconto: TwwDBEdit;
    txtDescOpe: TwwDBEdit;
    txtPesquisaData: TJvDateEdit;
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtVlrLanctoSugestExit(Sender: TObject);
    procedure cbbTipoFinanceiroExit(Sender: TObject);
    procedure btnAddGerClick(Sender: TObject);
    procedure cbbPlanoContasSugestEnter(Sender: TObject);
    procedure cbbTipoFinanceiroEnter(Sender: TObject);
    procedure cbbContaCorrenteExit(Sender: TObject);
    procedure dgMovConDetIButtonClick(Sender: TObject);
    procedure txtNumDocExit(Sender: TObject);
    procedure dpkDataConciliacaoExit(Sender: TObject);
    procedure grdCxbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdCxbCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdCxbCellChanged(Sender: TObject);
    procedure gdMovConCtaFieldChanged(Sender: TObject; Field: TField);
    procedure Desfazerrelaocomasmovimentaes1Click(Sender: TObject);
    procedure gdMovConDetFieldChanged(Sender: TObject; Field: TField);
    procedure wwIButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscaMovNConcClick(Sender: TObject);
    procedure btnOkMovExistClick(Sender: TObject);
    procedure cbbPlanoContasNmovEnter(Sender: TObject);
    procedure tsNovoMovShow(Sender: TObject);
    procedure cbbPlanoContasTransfEnter(Sender: TObject);
    procedure cbbTipoFinNmovEnter(Sender: TObject);
    procedure cbbTipoFinTransfEnter(Sender: TObject);
    procedure cbbContaCorrTransfEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure grdMovExistCellChanged(Sender: TObject);
    procedure btnSairMovExistClick(Sender: TObject);
    procedure grdCxbRowChanged(Sender: TObject);
    procedure tsTransferenciaShow(Sender: TObject);
    procedure tsSugestaoShow(Sender: TObject);
    procedure grdCxbMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure cbbPlanoRecEnter(Sender: TObject);
    procedure cbbPlanoPagEnter(Sender: TObject);
    procedure txtClientesButtonClick(Sender: TObject);
    procedure txtClientesExit(Sender: TObject);
    procedure txtCodForButtonClick(Sender: TObject);
    procedure txtCodForExit(Sender: TObject);
    procedure tsTitReceberShow(Sender: TObject);
    procedure tsTitPagarShow(Sender: TObject);
    procedure txtJurosExit(Sender: TObject);
    procedure txtJurosEnter(Sender: TObject);
    procedure gdMovConDetCellChanged(Sender: TObject);
    procedure gdMovConDetRowChanged(Sender: TObject);
    procedure gdMovConDetCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtDescontoEnter(Sender: TObject);
    procedure txtDescontoExit(Sender: TObject);
    procedure txtDescOpeEnter(Sender: TObject);
    procedure txtDescOpeExit(Sender: TObject);
    procedure tsTitPagarEnter(Sender: TObject);
  private
    { Private declarations }
    function  ExisteTituloGrid:Boolean;
    procedure AbrirBuscas;
    procedure HabDesPainelMovExist(Estado: Boolean);
    procedure ExibTotalDif;
    procedure ZerarTotDif;
    procedure CarregarTitulos;
    procedure VerificarParametros;
  public
    { Public declarations }
    var
       xModoAlt: Boolean;
  end;

var
  FIN_FM_M_CTA_CON: TFIN_FM_M_CTA_CON;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CTA_BCO,YMOFXReader, FIN_RN_M_CTA_CON,uProxy, enFunc,
  PSQ_UN_X_CLI, PSQ_UN_X_FOR;

procedure TFIN_FM_M_CTA_CON.AbrirBuscas;
begin

  dmGeral.BusContaCorr(3,'1');
  dmGeral.BusContaCorrExp(3,'1');
  dmGeral.BusPlanoCta(91,'0');
  dmGeral.BusPlanoCta2(91,'0');
  dmGeral.BusPlanoCtaExp(91,'0');
  dmGeral.BusTipoFin(1,'%');
  dmGeral.BusTipoFinExp(1,'%');
end;

procedure TFIN_FM_M_CTA_CON.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  VerificarParametros;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CON);
  xModoAlt := false;
  pcNovoMov.ActivePage := tsSugestao;

  ZerarTotDif;

  dpkDataConciliacao.SetFocus;
end;


procedure TFIN_FM_M_CTA_CON.VerificarParametros;
var
  msg:String;
begin
  msg := '';

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('con_id_forma_pag_rec').AsString = '') then
     msg := 'Forma de Pag. de Contas a Receber'+#13+#10;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('con_id_tipo_financeiro_rec').AsString = '') then
     msg := 'Tipo Financeiro de Contas a Receber'+#13+#10;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('con_id_local_titulo_rec').AsString = '') then
     msg := 'Local do Título de Contas a Receber'+#13+#10;


   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('con_id_forma_pag_pag').AsString = '') then
     msg := 'Forma de Pag. de Contas a Pagar'+#13+#10;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('con_id_tipo_financeiro_pag').AsString = '') then
     msg := 'Tipo Financeiro de Contas a Pagar'+#13+#10;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('con_id_local_titulo_pag').AsString = '') then
     msg := 'Local do Título de Contas a Pagar'+#13+#10;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByname('con_id_ccusto_pag').AsString = '') then
     msg := 'Centro de Custo de Contas a Pagar'+#13+#10;

   if msg <> '' then
     begin
       ShowMessage('Deve-se preencher os seguintes campos localizados na tela de parametros na aba Financeiro no bloco Conciliação Bancária:'+#13+#10+#13+#10+msg);
       abort;
     end;
end;



procedure TFIN_FM_M_CTA_CON.acAlterarExecute(Sender: TObject);
begin
  VerificarParametros;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CON) then
      begin
        inherited;
        xModoAlt := true;
        ExibTotalDif;
        pcNovoMov.ActivePage := tsSugestao;
        FIN_RN_M_CTA_CON.FinBuscRegRelMovCtaConCxb;
        dpkDataConciliacao.SetFocus;
      end;
end;

procedure TFIN_FM_M_CTA_CON.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CON) then
     begin
       inherited;
       HabDesPainelMovExist(false);
       ZerarTotDif;
       dbGrid.SetFocus;
     end
  else
     begin
       dpkDataConciliacao.SetFocus;
     end;
end;

procedure TFIN_FM_M_CTA_CON.acExcluirExecute(Sender: TObject);
begin
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CON);
end;

procedure TFIN_FM_M_CTA_CON.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.FIN_CD_M_CON.FieldByName('ID_CONCILIACAO').AsString;

  FIN_RN_M_CTA_CON.finVerifDetCon;

  dmGeral.FIN_CD_M_CON_CXB_DET.Cancel;
  dmGeral.FIN_CD_M_CON_CXB_AUX.Cancel;

  DmGeral.Grava(dmGeral.FIN_CD_M_CON);

  inherited;

  dmGeral.FIN_CD_M_CON.Close;
  dmGeral.FIN_CD_M_CON.Data :=
     dmGeral.FIN_CD_M_CON.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger,codigo]));

  ZerarTotDif;

  HabDesPainelMovExist(false);
end;

procedure TFIN_FM_M_CTA_CON.btnSairMovExistClick(Sender: TObject);
begin
  inherited;

  pnLancExistente.Visible := false;
  HabDesPainelMovExist(false);


  // Limpar o cds
  dmGeral.BUS_CD_M_CTA.Close;
  dmGeral.BUS_CD_M_CTA.Data :=
       dmGeral.BUS_CD_M_CTA.DataRequest(
             VarArrayOf([0, '']));

end;

procedure TFIN_FM_M_CTA_CON.BitBtn2Click(Sender: TObject);
var
  SMPrincipal: TSMClient;
  IdControle: String;

  ID_PLANO_TRANSF : String;
  ID_TIPO_FINANCEIRO_TRANSF, ID_CONTA_TRANSF: integer;

begin
  inherited;



  if (dmGeral.FIN_CD_M_CON_CXB.IsEmpty) or (trim(dmGeral.FIN_CD_M_CON_CXB.FieldByName('dta_movimento').AsString) = '') then
     begin
       Showmessage('Não há extrato para poder fazer a relação!');
       exit;
     end;

  if trim(dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_PLANO').AsString) = '' then
     begin
       ShowMessage('O campo "Plano de Contas" deve ser preenchido.');
       abort;
     end;

  if (pcNovoMov.ActivePage = tsTitPagar) or
     (pcNovoMov.ActivePage = tsTitReceber) then
      begin
        if trim(dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_EMITENTE').AsString) = '' then
           begin
             if (pcNovoMov.ActivePage = tsTitReceber) then
               ShowMessage('O campo "Cliente" deve ser preenchido.');
             if (pcNovoMov.ActivePage = tsTitPagar) then
               ShowMessage('O campo "Fornecedor" deve ser preenchido.');
             abort;
           end;
      end;

  if (pcNovoMov.ActivePage = tsSugestao) or
     (pcNovoMov.ActivePage = tsNovoMov) or
     (pcNovoMov.ActivePage = tsTitPagar) or
     (pcNovoMov.ActivePage = tsTitReceber) then
      begin
        if trim(dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('HISTORICO').AsString) = '' then
           begin
             ShowMessage('O campo "Histórico" deve ser preenchido.');
             abort;
           end;
        if trim(dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('VLR_LANCAMENTO').AsString) = '' then
           begin
             ShowMessage('O campo "Valor lançamento" deve ser preenchido.');
             abort;
           end;
      end;

  if (pcNovoMov.ActivePage = tsNovoMov) or
     (pcNovoMov.ActivePage = tsTransferencia)  then
      begin
        if trim(dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_TIPO_FINANCEIRO').AsString) = '' then
           begin
             ShowMessage('O campo "Tipo financeiro" deve ser preenchido.');
             abort;
           end;
      end;

  if (pcNovoMov.ActivePage = tsTransferencia) then
     begin
       if trim(dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_CONTA').AsString) = '' then
          begin
            ShowMessage('O campo "Conta corrente" deve ser preenchido.');
            abort;
          end;

        if not dmGeral.FIN_CD_M_CON_CXB_DET.IsEmpty then
           begin
             if Dc_MessageDlgCheck('Os movimentos que já foram relacionados serão apagados!' + #13 + 'Deseja realmente fazer a transferência?', mtConfirmation, [mbYes, mbNo],
                0, mrNo, true, false,'', nil) = 6 then
                begin
                  while not dmGeral.FIN_CD_M_CON_CXB_DET.eof do
                     begin
                       dmGeral.FIN_CD_M_CON_CXB_DET.delete;
                     end;
                end
             else
                begin
                  Showmessage('Movimento de tranferência não foi inserido.');
                  abort;
                end;
           end;
     end;

  IdControle := '0';

      //dmGeral.FIN_CD_M_CON_CXB_AUX.post;


  // Inserção do registro principal (Normal)
  dmGeral.FIN_CD_M_CON_CXB_DET.Insert;


  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsInteger := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_REC').AsInteger := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_PAG').AsInteger := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency := 0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency :=0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto_ope').AsCurrency :=0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto').AsCurrency :=0;
  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
        dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;

  if (pcNovoMov.ActivePage = tsSugestao) then
      begin
        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsInteger :=
           dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_CONTROLE').AsInteger;
      end
  else
      begin
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
         if (pcNovoMov.ActivePage = tsNovoMov) or
            (pcNovoMov.ActivePage = tsTransferencia)   then
           begin
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsInteger :=
               dmGeral.BuscarSeq('FIN_TB_M_CTA');
              // SMPrincipal.enValorChave('FIN_TB_M_CTA');
           end;
         if (pcNovoMov.ActivePage = tsTitReceber) then
           begin
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_REC').AsInteger :=
               dmGeral.BuscarSeq('FAT_TB_M_NFE_TIT');
              // SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger := 1;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CON_ID_TIPO_FINANCEIRO_REC').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_EMITENTE').AsInteger :=
              dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_EMITENTE').AsInteger;
           end;
         if (pcNovoMov.ActivePage = tsTitPagar) then
           begin
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_PAG').AsInteger :=
                dmGeral.BuscarSeq('FAT_TB_M_NFE_TIT');
              // SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger := 2;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CON_ID_TIPO_FINANCEIRO_PAG').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_EMITENTE').AsInteger :=
              dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_EMITENTE').AsInteger;
           end;
        finally
          FreeAndNil(SMPrincipal);
        end;
      end;



  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_PLANO').AsString :=
        dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_PLANO').AsString;



  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('HISTORICO').AsString :=
        dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('HISTORICO').AsString;

  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTA').AsInteger :=
          dmGeral.FIN_CD_M_CON.FieldByName('ID_CONTA').AsInteger;


  if (pcNovoMov.ActivePage = tsSugestao) or
     (pcNovoMov.ActivePage = tsNovoMov) or
     (pcNovoMov.ActivePage = tsTitPagar) or
     (pcNovoMov.ActivePage = tsTitReceber) then
      begin

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_REG').AsInteger := 0; //  É um registro normal

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency :=
           dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('VLR_LANCAMENTO').AsCurrency;

      end
  else
      begin
        IdControle := dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsString;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_REG').AsInteger := 0; //  Esté é o primeiro registro , portanto Normal.

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('HISTORICO').AsString :=
          'Transferência entre contas, conciliação: ' +
           dmGeral.FIN_CD_M_CON.FieldByName('id_conciliacao').AsString;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency :=
                dmGeral.FIN_CD_M_CON_CXB.FieldByName('VLR_LANCAMENTO').AsCurrency;
      end;

  if (pcNovoMov.ActivePage = tsTitPagar) or
     (pcNovoMov.ActivePage = tsTitReceber) then
    begin
       dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency :=
                         dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('VLR_LANCAMENTO').AsCurrency;
    end;


  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('NUM_DOC').AsString :=
          dmGeral.FIN_CD_M_CON_CXB.FieldByName('DOCUMENTO').AsString;

  dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('DTA_MOV_CXB').AsDateTime :=
        dmGeral.FIN_CD_M_CON_CXB.FieldByName('DTA_MOVIMENTO').AsDateTime;

  if (pcNovoMov.ActivePage = tsSugestao) then // Sugestão
     dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('MOV_GERADO').AsBoolean := false
  else
     dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('MOV_GERADO').AsBoolean := true;


  if pcNovoMov.ActivePage = tsTransferencia then
     begin
        ID_PLANO_TRANSF :=
              dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_PLANO').AsString;

        ID_TIPO_FINANCEIRO_TRANSF :=
              dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_TIPO_FINANCEIRO_TRANSF').AsInteger;

        ID_CONTA_TRANSF :=
              dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_CONTA').AsInteger;
     end;

  dmGeral.FIN_CD_M_CON_CXB_DET.Post;




  // Inserção do registro de transferência
  if  pcNovoMov.ActivePage = tsTransferencia then
      begin
        dmGeral.FIN_CD_M_CON_CXB_DET.Insert;
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsInteger :=
             dmGeral.BuscarSeq('FIN_TB_M_CTA');
           //  SMPrincipal.enValorChave('FIN_TB_M_CTA');
        finally
          FreeAndNil(SMPrincipal);
        end;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_PLANO').AsString :=
              ID_PLANO_TRANSF;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
              ID_TIPO_FINANCEIRO_TRANSF;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTA').AsInteger :=
              ID_CONTA_TRANSF;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_REG').AsInteger := 1; //  Esté é o segundo registro , portanto Tranferência.

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('HISTORICO').AsString :=
              'Transferência entre contas ref. ao movimento: ' + IdControle;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency :=
               dmGeral.FIN_CD_M_CON_CXB.FieldByName('VLR_LANCAMENTO').AsCurrency;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('NUM_DOC').AsString :=
               IdControle;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('DTA_MOV_CXB').AsDateTime :=
               dmGeral.FIN_CD_M_CON_CXB.FieldByName('DTA_MOVIMENTO').AsDateTime;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('MOV_GERADO').AsBoolean := true;

        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_REC').AsInteger := 0;
        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_PAG').AsInteger := 0;

        dmGeral.FIN_CD_M_CON_CXB_DET.Post;
      end;


  while not dmGeral.FIN_CD_M_CON_CXB_AUX.eof do
     begin
       dmGeral.FIN_CD_M_CON_CXB_AUX.delete;
     end;

  ExibTotalDif;

  if pcNovoMov.ActivePage = tsNovoMov then
     begin
       if dbHistoricoNmov.CanFocus then
          dbHistoricoNmov.SetFocus;
     end;

  if pcNovoMov.ActivePage = tsTransferencia then
     begin
        // Não precisa do focu
       //if cbbPlanoContasTransf.CanFocus then
       //   cbbPlanoContasTransf.SetFocus;
     end;

  {if pcNovoMov.ActivePage = tsTitPagar then
     begin
       if txtCodFor.CanFocus then
          begin
            dmGeral.FIN_CD_M_CON_CXB_AUX.Insert;
            txtCodFor.SetFocus;
          end;
     end; }
end;

procedure TFIN_FM_M_CTA_CON.btnAddGerClick(Sender: TObject);
begin
  inherited;

  // Corrigir
  {
  dmGeral.FIN_CD_M_CON_GER.Insert;
  pnlMovGer.Enabled := true;
  dmGeral.FIN_CD_M_CON_GER.FieldByName('INT_DTACONC').Text :=
  dmGeral.FIN_CD_M_CON.FieldByName('DTA_CONCILIACAO').Text;
  txtNumDoc.SetFocus;}
end;

procedure TFIN_FM_M_CTA_CON.btnBuscaMovNConcClick(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CON_CXB.IsEmpty then
     begin
       Showmessage('Não há extrato para poder fazer a relação!');
       exit;
     end;

  dmGeral.BUS_CD_M_CTA.Close;
  dmGeral.BUS_CD_M_CTA.Data :=
       dmGeral.BUS_CD_M_CTA.DataRequest(VarArrayOf([101,''''+dmGeral.FIN_CD_M_CON.FieldByName('ID_EMPRESA').AsString+'''',
                                                        ''''+dmGeral.FIN_CD_M_CON.FieldByName('ID_CONTA').AsString+'''',
                                                        ''''+dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsString+'''']));

  if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsString = '0' then
      begin
        dmGeral.BUS_CD_M_PAG.Close;
        dmGeral.BUS_CD_M_PAG.Data :=
        dmGeral.BUS_CD_M_PAG.DataRequest(VarArrayOf([97,''''+dmGeral.FIN_CD_M_CON.FieldByName('ID_EMPRESA').AsString+'''',
                                                       txtDtaIni.text,txtDtaFin.Text]));

        dmGeral.BUS_CD_M_REC_2.Close;
        dmGeral.BUS_CD_M_REC_2.Data :=
        dmGeral.BUS_CD_M_REC_2.DataRequest(VarArrayOf([0,'']));
      end;

   if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsString = '1' then
      begin
        dmGeral.BUS_CD_M_REC_2.Close;
        dmGeral.BUS_CD_M_REC_2.Data :=
        dmGeral.BUS_CD_M_REC_2.DataRequest(VarArrayOf([98,''''+dmGeral.FIN_CD_M_CON.FieldByName('ID_EMPRESA').AsString+'''',
                                                         txtDtaIni.text,txtDtaFin.Text]));


        dmGeral.BUS_CD_M_PAG.Close;
        dmGeral.BUS_CD_M_PAG.Data :=
        dmGeral.BUS_CD_M_PAG.DataRequest(VarArrayOf([0,'']));
      end;


  //CarregarTitulos;




  HabDesPainelMovExist(true);
end;



procedure  TFIN_FM_M_CTA_CON.CarregarTitulos;
begin

    while cdsTitulos.RecordCount >0 do
      begin
         cdsTitulos.Delete;
      end;


   dmGeral.BUS_CD_M_CTA.First;
   while not dmGeral.BUS_CD_M_CTA.EOF do
     begin
       cdsTitulos.Insert;
       cdsTitulos.FieldByName('id_controle').AsInteger := dmGeral.BUS_CD_M_CTA.FieldByName('ID_CONTROLE').AsInteger;
       cdsTitulos.FieldByName('id_titulo_rec').AsInteger := 0;
       cdsTitulos.FieldByName('id_titulo_pag').AsInteger := 0;
       cdsTitulos.FieldByName('vlr_lancamento').AsCurrency := dmGeral.BUS_CD_M_CTA.FieldByName('VLR_LANCAMENTO').AsCurrency;
       cdsTitulos.FieldByName('historico').AsString := dmGeral.BUS_CD_M_CTA.FieldByName('historico').AsString;

       cdsTitulos.FieldByName('dta_movimento').AsCurrency := dmGeral.BUS_CD_M_CTA.FieldByName('dta_movimento').AsDateTime;
       cdsTitulos.FieldByName('num_doc').AsInteger := dmGeral.BUS_CD_M_CTA.FieldByName('NUM_DOC').AsInteger;
       cdsTitulos.FieldByName('id_plano').AsString := dmGeral.BUS_CD_M_CTA.FieldByName('id_plano').AsString;
       cdsTitulos.FieldByName('tipo_titulo').AsInteger := 0;
       cdsTitulos.Post;
       dmGeral.BUS_CD_M_CTA.Next;
     end;


   dmGeral.BUS_CD_M_REC_2.First;
   while not dmGeral.BUS_CD_M_REC_2.EOF do
     begin
       cdsTitulos.Insert;
       cdsTitulos.FieldByName('id_controle').AsInteger := 0;
       cdsTitulos.FieldByName('id_titulo_rec').AsInteger := dmGeral.BUS_CD_M_REC_2.FieldByName('ID_TITULO').AsInteger;
       cdsTitulos.FieldByName('id_titulo_pag').AsInteger := 0;

       cdsTitulos.FieldByName('vlr_juros').asCurrency:=
       (((dmGeral.BUS_CD_M_REC_2.FieldByName('vlr_titulo').AsCurrency*
         dmGeral.CAD_CD_C_PAR_CTR.FieldByName('tax_juros_mensal').AsCurrency)/100)/30)*
          (xDataSis - dmGeral.BUS_CD_M_REC_2.FieldByName('dta_vencimento').AsDateTime);

       cdsTitulos.FieldByName('vlr_titulo').AsCurrency := dmGeral.BUS_CD_M_REC_2.FieldByName('VLR_PARCELA').AsCurrency;
       cdsTitulos.FieldByName('vlr_lancamento').AsCurrency := cdsTitulos.FieldByName('vlr_titulo').AsCurrency + cdsTitulos.FieldByName('vlr_juros').asCurrency;
       cdsTitulos.FieldByName('historico').AsString := dmGeral.BUS_CD_M_REC_2.FieldByName('historico').AsString;

       cdsTitulos.FieldByName('dta_movimento').AsCurrency := dmGeral.BUS_CD_M_REC_2.FieldByName('dta_emissao').AsDateTime;
       cdsTitulos.FieldByName('num_doc').AsInteger := dmGeral.BUS_CD_M_REC_2.FieldByName('id_titulo').AsInteger;
       cdsTitulos.FieldByName('id_plano').AsString := dmGeral.BUS_CD_M_REC_2.FieldByName('id_plano').AsString;
       cdsTitulos.FieldByName('tipo_titulo').AsInteger := 1;
       cdsTitulos.Post;
       dmGeral.BUS_CD_M_REC_2.Next;
     end;

  dmGeral.BUS_CD_M_PAG.First;
   while not dmGeral.BUS_CD_M_PAG.EOF do
     begin
       cdsTitulos.Insert;
       cdsTitulos.FieldByName('id_controle').AsInteger := 0;
       cdsTitulos.FieldByName('id_titulo_pag').AsInteger := dmGeral.BUS_CD_M_PAG.FieldByName('ID_TITULO').AsInteger;
       cdsTitulos.FieldByName('id_titulo_rec').AsInteger := 0;

       cdsTitulos.FieldByName('vlr_juros').asCurrency:=
       (((dmGeral.BUS_CD_M_PAG.FieldByName('vlr_titulo').AsCurrency*
         dmGeral.BUS_CD_M_PAG.FieldByName('per_juros').AsCurrency)/100)/30)*
          (xDataSis - dmGeral.BUS_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime);

       cdsTitulos.FieldByName('vlr_titulo').AsCurrency := dmGeral.BUS_CD_M_PAG.FieldByName('VLR_PARCELA').AsCurrency;
       cdsTitulos.FieldByName('vlr_lancamento').AsCurrency := cdsTitulos.FieldByName('vlr_titulo').AsCurrency + cdsTitulos.FieldByName('vlr_juros').asCurrency;
       cdsTitulos.FieldByName('historico').AsString := dmGeral.BUS_CD_M_PAG.FieldByName('historico').AsString;

       cdsTitulos.FieldByName('dta_movimento').AsCurrency := dmGeral.BUS_CD_M_PAG.FieldByName('dta_emissao').AsDateTime;
       cdsTitulos.FieldByName('num_doc').AsInteger := dmGeral.BUS_CD_M_PAG.FieldByName('id_titulo').AsInteger;
       cdsTitulos.FieldByName('id_plano').AsString := dmGeral.BUS_CD_M_PAG.FieldByName('id_plano').AsString;
       cdsTitulos.FieldByName('tipo_titulo').AsInteger := 2;
       cdsTitulos.Post;
       dmGeral.BUS_CD_M_PAG.Next;
     end;

end;


procedure TFIN_FM_M_CTA_CON.btnFiltroClick(Sender: TObject);
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

    if not ((cbbPesquisa.ItemIndex = 1) and (xPesquisa = '  /  /    ')) then
      begin
        dmGeral.FIN_CD_M_CON.Close;
        dmGeral.FIN_CD_M_CON.Data :=
        dmGeral.FIN_CD_M_CON.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger, xPesquisa]));
      end
    else
      begin
        ShowMessage('Deve-se digitar a data de conciliação.');
      end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_CTA_CON.btnOkMovExistClick(Sender: TObject);
var
  IdCxb: integer;
begin
  inherited;


   try
      if  dmGeral.BUS_CD_M_CTA.IsEmpty and dmgeral.BUS_CD_M_REC_2.IsEmpty and dmGeral.BUS_CD_M_PAG.IsEmpty then
         begin
           ShowMessage('Não há registro para importar para a conciliação.');
           exit;
         end;

      dmGeral.BUS_CD_M_CTA.Filter   := ' INT_SELECAO = TRUE ';
      dmGeral.BUS_CD_M_CTA.Filtered := true;

      dmGeral.BUS_CD_M_REC_2.Filter   := ' INT_SELECAO = TRUE ';
      dmGeral.BUS_CD_M_REC_2.Filtered := true;

      dmGeral.BUS_CD_M_PAG.Filter   := ' INT_SELECAO = TRUE ';
      dmGeral.BUS_CD_M_PAG.Filtered := true;


      if  dmGeral.BUS_CD_M_CTA.IsEmpty  and dmgeral.BUS_CD_M_REC_2.IsEmpty and dmGeral.BUS_CD_M_PAG.IsEmpty then
         if (not  dmGeral.BUS_CD_M_CTA.FieldByName('INT_SELECAO').AsBoolean) AND
            (not  dmGeral.BUS_CD_M_REC_2.FieldByName('INT_SELECAO').AsBoolean) AND
            (not  dmGeral.BUS_CD_M_PAG.FieldByName('INT_SELECAO').AsBoolean) then
            begin
              ShowMessage('Nenhum registro não foi selecionado para ser importado.');
              dmGeral.BUS_CD_M_CTA.Filtered := false;
              dmGeral.BUS_CD_M_REC_2.Filtered := false;
              dmGeral.BUS_CD_M_PAG.Filtered := false;
              exit;
            end;


      IdCxb := dmGeral.FIN_CD_M_CON_CXB.FieldByName('ID_CXB').AsInteger;


      dmGeral.FIN_CD_M_CON_CXB.First;
      while not dmGeral.FIN_CD_M_CON_CXB.eof do
         begin
           while not dmGeral.FIN_CD_M_CON_CXB_DET.eof do
               begin
                 if (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger = 0) and  dmGeral.BUS_CD_M_CTA.Locate('ID_CONTROLE',
                           VarArrayOf([dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsInteger]), []) then
                    begin
                      ShowMessage('Esse movimento já foi importado para o extrato de DOC: ' +
                                  dmGeral.FIN_CD_M_CON_CXB.FieldByName('DOCUMENTO').AsString +
                                  ' e Valor: ' + dmGeral.FIN_CD_M_CON_CXB.FieldByName('VLR_LANCAMENTO').AsString);

                      dmGeral.FIN_CD_M_CON_CXB.Locate('ID_CXB',IdCxb,[]);
                      abort;
                    end;

                 if (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger = 1) and  dmGeral.BUS_CD_M_REC_2.Locate('ID_TITULO',
                           VarArrayOf([dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_REC').AsInteger]), []) then
                    begin
                      ShowMessage('Esse movimento já foi importado para o extrato de DOC: ' +
                                  dmGeral.FIN_CD_M_CON_CXB.FieldByName('DOCUMENTO').AsString +
                                  ' e Valor: ' + dmGeral.FIN_CD_M_CON_CXB.FieldByName('VLR_LANCAMENTO').AsString);

                      dmGeral.FIN_CD_M_CON_CXB.Locate('ID_CXB',IdCxb,[]);
                      abort;
                    end;

                 if (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger = 2) and  dmGeral.BUS_CD_M_PAG.Locate('ID_TITULO',
                           VarArrayOf([dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_PAG').AsInteger]), []) then
                    begin
                      ShowMessage('Esse movimento já foi importado para o extrato de DOC: ' +
                                  dmGeral.FIN_CD_M_CON_CXB.FieldByName('DOCUMENTO').AsString +
                                  ' e Valor: ' + dmGeral.FIN_CD_M_CON_CXB.FieldByName('VLR_LANCAMENTO').AsString);

                      dmGeral.FIN_CD_M_CON_CXB.Locate('ID_CXB',IdCxb,[]);
                      abort;
                    end;

                 dmGeral.FIN_CD_M_CON_CXB_DET.Next;
               end;
            dmGeral.FIN_CD_M_CON_CXB.Next;
         end;

      dmGeral.FIN_CD_M_CON_CXB.Locate('ID_CXB',IdCxb,[]);

      dmGeral.BUS_CD_M_CTA.First;
      while not dmGeral.BUS_CD_M_CTA.eof  do
          begin
            dmGeral.FIN_CD_M_CON_CXB_DET.Insert;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency := 0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency := 0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency :=0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto_ope').AsCurrency :=0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto').AsCurrency :=0;


            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsInteger :=
                    dmGeral.BUS_CD_M_CTA.FieldByName('ID_CONTROLE').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_REC').AsInteger := 0;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_PAG').AsInteger := 0;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger := 0;


            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_PLANO').AsString :=
                    dmGeral.BUS_CD_M_CTA.FieldByName('ID_PLANO').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
                    dmGeral.BUS_CD_M_CTA.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency := 0;


            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency := 0;


            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency :=
                    dmGeral.BUS_CD_M_CTA.FieldByName('VLR_LANCAMENTO').AsCurrency;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('HISTORICO').AsString :=
                    dmGeral.BUS_CD_M_CTA.FieldByName('HISTORICO').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('NUM_DOC').AsString   :=
                    dmGeral.BUS_CD_M_CTA.FieldByName('NUM_DOC').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('DTA_MOV_CXB').AsDateTime :=
                    dmGeral.FIN_CD_M_CON_CXB.FieldByName('DTA_MOVIMENTO').AsDateTime;
                    //dmGeral.BUS_CD_M_CTA.FieldByName('DTA_MOVIMENTO').AsDateTime;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_REG').AsInteger := 0; //  É um registro normal

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('MOV_GERADO').AsBoolean := false;

            dmGeral.FIN_CD_M_CON_CXB_DET.Post;

            dmGeral.BUS_CD_M_CTA.Next;
          end;

      dmGeral.BUS_CD_M_REC_2.First;
      while not  dmGeral.BUS_CD_M_REC_2.eof  do
          begin
            dmGeral.FIN_CD_M_CON_CXB_DET.Insert;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency := 0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency := 0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency :=0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto_ope').AsCurrency :=0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto').AsCurrency :=0;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_REC').AsInteger :=
                     dmGeral.BUS_CD_M_REC_2.FieldByName('ID_TITULO').AsInteger;


            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsInteger := 0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_PAG').AsInteger := 0;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger := 1;

             dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('DOC_IMPRESSO').AsInteger :=
                            dmGeral.BUS_CD_M_REC_2.FieldByName('int_docimpresso').AsInteger;



            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_EMITENTE').AsInteger :=
                 dmGeral.BUS_CD_M_REC_2.FieldByName('ID_CLIENTE').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('INT_NOMEEMI').AsString :=
                 dmGeral.BUS_CD_M_REC_2.FieldByName('INT_NOMECLI').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTA').AsInteger :=
                        dmGeral.FIN_CD_M_CON.FieldByName('ID_CONTA').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_PLANO').AsString :=
                    dmGeral.BUS_CD_M_REC_2.FieldByName('ID_PLANO').AsString;



            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CON_ID_TIPO_FINANCEIRO_REC').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency :=
                  dmGeral.BUS_CD_M_REC_2.FieldByName('VLR_PARCELA').AsCurrency;

            if  (dmGeral.BUS_CD_M_REC_2.FieldByName('int_docimpresso').AsInteger in [3]) then
                 dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto_ope').AsCurrency :=
                    dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency *
                            (dmGeral.BUS_CD_M_REC_2.FieldByName('CAR_TAXA_OPE').AsCurrency / 100.0);

          { if  (dmGeral.BUS_CD_M_REC_2.FieldByName('int_docimpresso').AsInteger = 3) then
              dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto_ope').AsCurrency :=
                dmGeral.BUS_CD_M_REC_2.FieldByName('VLR_ORIGINAL').AsCurrency-
                      dmGeral.BUS_CD_M_REC_2.FieldByName('VLR_PARCELA').AsCurrency;  }


           if  (dmGeral.BUS_CD_M_REC_2.FieldByName('int_docimpresso').AsInteger in [4,6]) then
              dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency :=
                (((dmGeral.BUS_CD_M_REC_2.FieldByName('vlr_parcela').AsCurrency*
                 dmGeral.CAD_CD_C_PAR_CTR.FieldByName('tax_juros_mensal').AsCurrency)/100)/30)*
                    (xDataSis - dmGeral.BUS_CD_M_REC_2.FieldByName('dta_vencimento').AsDateTime);


            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency :=
                     dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency +
                     dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency -
                     (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto').AsCurrency +
                      dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto_ope').AsCurrency);


            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('HISTORICO').AsString :=
                    dmGeral.BUS_CD_M_REC_2.FieldByName('HISTORICO').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('NUM_DOC').AsString   :=
                    dmGeral.BUS_CD_M_REC_2.FieldByName('id_titulo').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('DTA_MOV_CXB').AsDateTime :=
                    dmGeral.FIN_CD_M_CON_CXB.FieldByName('DTA_MOVIMENTO').AsDateTime;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_REG').AsInteger := 0; //  É um registro normal

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('MOV_GERADO').AsBoolean := false;

            dmGeral.FIN_CD_M_CON_CXB_DET.Post;

            dmGeral.BUS_CD_M_REC_2.Next;
          end;


        dmGeral.BUS_CD_M_PAG.First;
      while not   dmGeral.BUS_CD_M_PAG.eof  do
          begin
            dmGeral.FIN_CD_M_CON_CXB_DET.Insert;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency := 0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency := 0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency :=0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto_ope').AsCurrency :=0;
            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto').AsCurrency :=0;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_PAG').AsInteger :=
                      dmGeral.BUS_CD_M_PAG.FieldByName('ID_TITULO').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTROLE').AsInteger := 0;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TITULO_REC').AsInteger := 0;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger := 2;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('DOC_IMPRESSO').AsInteger :=
                            dmGeral.BUS_CD_M_PAG.FieldByName('int_docimpresso').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_EMITENTE').AsInteger :=
                 dmGeral.BUS_CD_M_PAG.FieldByName('ID_FORNECEDOR').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('INT_NOMEEMI').AsString :=
                 dmGeral.BUS_CD_M_PAG.FieldByName('INT_NOMEFOR').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_CONTA').AsInteger :=
                 dmGeral.FIN_CD_M_CON.FieldByName('ID_CONTA').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_PLANO').AsString :=
                     dmGeral.BUS_CD_M_PAG.FieldByName('ID_PLANO').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('ID_TIPO_FINANCEIRO').AsInteger :=
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CON_ID_TIPO_FINANCEIRO_PAG').AsInteger;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency :=
                   dmGeral.BUS_CD_M_PAG.FieldByName('VLR_PARCELA').AsCurrency;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency :=
                   (((dmGeral.BUS_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency*
                  dmGeral.BUS_CD_M_PAG.FieldByName('per_juros').AsCurrency)/100)/30)*
                      (xDataSis - dmGeral.BUS_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime);


             dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency :=
                     dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency +
                     dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency -
                     dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('vlr_desconto').AsCurrency;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('HISTORICO').AsString :=
                     dmGeral.BUS_CD_M_PAG.FieldByName('HISTORICO').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('NUM_DOC').AsString   :=
                    dmGeral.BUS_CD_M_PAG.FieldByName('id_titulo').AsString;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('DTA_MOV_CXB').AsDateTime :=
                    dmGeral.FIN_CD_M_CON_CXB.FieldByName('DTA_MOVIMENTO').AsDateTime;
                    //dmGeral.BUS_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime;

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_REG').AsInteger := 0; //  É um registro normal

            dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('MOV_GERADO').AsBoolean := false;

            dmGeral.FIN_CD_M_CON_CXB_DET.Post;

             dmGeral.BUS_CD_M_PAG.Next;
          end;


      pnLancExistente.Visible := false;
      HabDesPainelMovExist(false);


      // Limpar o cds
      dmGeral.BUS_CD_M_CTA.EmptyDataSet;
      dmGeral.BUS_CD_M_REC_2.EmptyDataSet;
      dmGeral.BUS_CD_M_PAG.EmptyDataSet;

      ExibTotalDif;


  finally
      dmGeral.BUS_CD_M_CTA.Filtered := false;
      dmGeral.BUS_CD_M_REC_2.Filtered := false;
      dmGeral.BUS_CD_M_PAG.Filtered := false;
  end;

end;

procedure TFIN_FM_M_CTA_CON.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusContaCorr(3,'1');
  cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_CTA_CON.cbbContaCorrenteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dmGeral.FIN_CD_M_CON.FieldByName('ID_CONTA').Text = '' then
     begin
       ShowMessage('O campo "Conta Corrente" deve ser preenchido.');
       cbbContaCorrente.SetFocus;
       Exit;
     end
end;

procedure TFIN_FM_M_CTA_CON.cbbContaCorrTransfEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_C_CTC_EXP.Close;
  dmgeral.BUS_CD_C_CTC_EXP.Data :=
      dmgeral.BUS_CD_C_CTC_EXP.DataRequest(VarArrayOf([5, '1',dmGeral.FIN_CD_M_CON.FieldByName('ID_CONTA').AsString]));

  cbbContaCorrTransf.DropDown;
end;

procedure TFIN_FM_M_CTA_CON.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [1]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 136;
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

procedure TFIN_FM_M_CTA_CON.cbbPlanoContasNmovEnter(Sender: TObject);
begin
  inherited;

  if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger = 0 then // débito
     begin
       dmGeral.BusPlanoCta2(90,'''1''');    // Vai trazer todos os planos de contas menos Receitas
       dmGeral.BusPlanoCtaExp(90,'''1''');  // Vai trazer todos os planos de contas menos Receitas
     end
  else
     begin
       dmGeral.BusPlanoCta2(90,'''0''');    // Vai trazer todos os planos de contas menos Despesas
       dmGeral.BusPlanoCtaExp(90,'''0''');  // Vai trazer todos os planos de contas menos Despesas
     end;
  cbbPlanoContasNmov.DropDown;
end;

procedure TFIN_FM_M_CTA_CON.cbbPlanoContasSugestEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta(91,'0');
  cbbPlanoContasSugest.DropDown;
end;

procedure TFIN_FM_M_CTA_CON.cbbPlanoContasTransfEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger = 0 then // débito
     begin
       dmGeral.BusPlanoCta2(90,'''1''');    // Vai trazer todos os planos de contas menos Receitas
       dmGeral.BusPlanoCtaExp(90,'''1''');  // Vai trazer todos os planos de contas menos Receitas
     end
  else
     begin
       dmGeral.BusPlanoCta2(90,'''0''');    // Vai trazer todos os planos de contas menos Despesas
       dmGeral.BusPlanoCtaExp(90,'''0''');  // Vai trazer todos os planos de contas menos Despesas
     end;
  cbbPlanoContasTransf.DropDown;
end;

procedure TFIN_FM_M_CTA_CON.cbbPlanoPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp7(90,' '''+'1'+''','''+'4'+''' ');
  cbbPlanoPag.DropDown;
end;

procedure TFIN_FM_M_CTA_CON.cbbPlanoRecEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp3(90,' '''+'0'+''','''+'3'+''','''+'4'+''' ');
  cbbPlanoRec.DropDown;
end;

procedure TFIN_FM_M_CTA_CON.cbbTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
{  if dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_PLANO').Text = '' then
     begin
       ShowMessage('O campo "Plano de Contas" deve ser preenchido.');
       cbbPlanoContas.SetFocus;
       Exit;
     end
  else
      begin
        dmGeral.BusTipoFin(1,'%');
        cbbTipoFinanceiro.DropDown;
      end;   }
end;

procedure TFIN_FM_M_CTA_CON.cbbTipoFinanceiroExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  
  // Corrigir
 { if dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_TIPO_FINANCEIRO').Text = '' then
     begin
       ShowMessage('O campo "Tipo Financeiro" deve ser preenchido.');
       dmGeral.FIN_CD_M_CON_GER.FieldByName('INT_NATUREZA').Text := '';
       cbbTipoFinanceiro.SetFocus;
       Exit;
     end;

  dmGeral.BusTipoFin(0,dmGeral.FIN_CD_M_CON_GER.FieldByName('ID_TIPO_FINANCEIRO').Text);
  if dmGeral.BUS_CD_C_TIF.IsEmpty then
     begin
       ShowMessage('Tipo Financeiro não encontrado.');
       dmGeral.FIN_CD_M_CON_GER.FieldByName('INT_NATUREZA').Text := '';
       cbbTipoFinanceiro.SetFocus;
       Exit;
     end;}
end;


procedure TFIN_FM_M_CTA_CON.cbbTipoFinNmovEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger = 0 then // débito
     begin
       dmGeral.BusTipoFin(90,'0');
     end
  else
     begin
       dmGeral.BusTipoFin(90,'1');
     end;
  cbbTipoFinNmov.DropDown;
end;

procedure TFIN_FM_M_CTA_CON.cbbTipoFinTransfEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger = 0 then // débito
     begin
       dmGeral.BusTipoFinExp(90,'0');
       dmGeral.BusTipoFinExp2(90,'1');
     end
  else
     begin
       dmGeral.BusTipoFinExp(90,'1');
       dmGeral.BusTipoFinExp2(90,'0');
     end;
  cbbTipoFinTransf.DropDown;
end;

procedure TFIN_FM_M_CTA_CON.Desfazerrelaocomasmovimentaes1Click(
  Sender: TObject);
var
  lPonteiroConCta, lPonteiroConGer : TBookmark;
begin
  inherited;

  FIN_RN_M_CTA_CON.FinDesfMovimDet;
  ExibTotalDif;

end;

procedure TFIN_FM_M_CTA_CON.gdMovConDetCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger = 1) then
     begin
       AFont.Color := clBlue;
     end;
  if (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger = 2) then
    begin
      AFont.Color := clOlive;
    end;
end;

procedure TFIN_FM_M_CTA_CON.gdMovConDetCellChanged(Sender: TObject);
begin
  inherited;

  {if (gdMovConDet.Columns[gdMovConDet.SelectedIndex].FieldName = 'VLR_JUROS') then
     begin
       if dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger in [1,2] then
         begin
          gdMovConDet.Columns[gdMovConDet.SelectedIndex].ReadOnly := false;
          txtJuros.ReadOnly := false;
         end;
       if dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger in [0] then
         begin
           gdMovConDet.Columns[gdMovConDet.SelectedIndex].ReadOnly := true;
           txtJuros.ReadOnly := true;
         end;
     end; }
end;

procedure TFIN_FM_M_CTA_CON.gdMovConDetFieldChanged(Sender: TObject;
  Field: TField);
var
  IdCxb: integer;
  lPonteiroCxb, lPonteiroItens, lPonteiroConCta : TBookmark;
  ValorCxb, TotalConMovtos: Currency;
  NatGer: integer;
begin
  inherited;


end;

procedure TFIN_FM_M_CTA_CON.gdMovConDetRowChanged(Sender: TObject);
begin
  inherited;

  if not dmGeral.FIN_CD_M_CON_CXB_DET.IsEmpty then
    begin
     if ((dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger in [1,2]) and
        (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('DOC_IMPRESSO').AsInteger in [3,4,6]))  then //Boleto e Cheque
       begin
        txtJuros.ReadOnly := false;
        txtDesconto.ReadOnly := false;
        txtDescOpe.ReadOnly := false;
       end
     else
       begin
        txtJuros.ReadOnly := true;
        txtDesconto.ReadOnly := true;
        txtDescOpe.ReadOnly := true;
       end
    end;
end;

procedure TFIN_FM_M_CTA_CON.dgMovConDetIButtonClick(Sender: TObject);
begin
  inherited;
  try
    dgMovConDetIButton.Enabled := false;
     if dmGeral.FIN_CD_M_CON_CXB_DET.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          exit;//abort;
        end;
     dmGeral.FIN_CD_M_CON_CXB_DET.Delete;

     ExibTotalDif;

     dmGeral.FIN_CD_M_CON_CXB_DET.Edit;
  finally
    dgMovConDetIButton.Enabled := true;
  end;
end;

procedure TFIN_FM_M_CTA_CON.dpkDataConciliacaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if dmGeral.FIN_CD_M_CON.FieldByName('DTA_CONCILIACAO').Text = '' then
     begin
       ShowMessage('O campo "Data de Conciliação" deve ser prenchido.');
       dpkDataConciliacao.SetFocus;
     end;

end;

procedure TFIN_FM_M_CTA_CON.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_CTA_CON.Close;
  FreeAndNil(FIN_FM_M_CTA_CON);
end;

procedure TFIN_FM_M_CTA_CON.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_CON.Close;
  dmGeral.FIN_CD_M_CON.Data := dmGeral.FIN_CD_M_CON.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_CON.Open;
end;
procedure TFIN_FM_M_CTA_CON.FormShow(Sender: TObject);
begin
  inherited;
  cdsTitulos.CreateDataSet;
  cdsTitulos.EmptyDataSet;
  AbrirBuscas;
  cbbPesquisaChange(self);
end;

procedure TFIN_FM_M_CTA_CON.gdMovConCtaFieldChanged(Sender: TObject;
  Field: TField);
var
  IdCxb: integer;
  lPonteiroCxb, lPonteiroItens, lPonteiroConGer : TBookmark;
  ValorCxb, TotalConMovtos: Currency;
  NatCta: integer;
begin
  inherited;

end;

procedure TFIN_FM_M_CTA_CON.tsNovoMovShow(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CON.State in [dsInsert,dsEdit] then
     begin
       dmGeral.FIN_CD_M_CON_CXB_AUX.Cancel;
       dmGeral.FIN_CD_M_CON_CXB_AUX.Insert;
     end;
end;

procedure TFIN_FM_M_CTA_CON.tsSugestaoShow(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_CON_CXB_AUX.Cancel;
end;

procedure TFIN_FM_M_CTA_CON.tsTitPagarEnter(Sender: TObject);
begin
  inherited;
  if not (dmGeral.FIN_CD_M_CON_CXB_AUX.State in [dsInsert]) then
     begin
       dmGeral.FIN_CD_M_CON_CXB_AUX.Insert;
     end;
end;

procedure TFIN_FM_M_CTA_CON.tsTitPagarShow(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CON.State in [dsInsert,dsEdit] then
     begin
       dmGeral.FIN_CD_M_CON_CXB_AUX.Cancel;
       dmGeral.FIN_CD_M_CON_CXB_AUX.Insert;
     end;
end;

procedure TFIN_FM_M_CTA_CON.tsTitReceberShow(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CON.State in [dsInsert,dsEdit] then
     begin
       dmGeral.FIN_CD_M_CON_CXB_AUX.Cancel;
       dmGeral.FIN_CD_M_CON_CXB_AUX.Insert;
     end;
end;

procedure TFIN_FM_M_CTA_CON.tsTransferenciaShow(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CON.State in [dsInsert,dsEdit] then
     begin
       dmGeral.FIN_CD_M_CON_CXB_AUX.Cancel;
       dmGeral.FIN_CD_M_CON_CXB_AUX.Insert;
     end;
end;

procedure TFIN_FM_M_CTA_CON.txtClientesButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_EMITENTE').AsInteger :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

           dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('INT_NOMEEMI').Text :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFIN_FM_M_CTA_CON.txtClientesExit(Sender: TObject);
begin
  inherited;
   dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('INT_NOMEEMI').Text := '';

   if dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_EMITENTE').Text <> '' then
     begin
      dmGeral.BUS_CD_C_CLI.Close;
      dmGeral.BUS_CD_C_CLI.Data :=
      dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtClientes.Text]));

      if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
        begin
         dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('INT_NOMEEMI').Text :='';
         txtClientes.SetFocus;
         abort;
        end;

      dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('INT_NOMEEMI').Text :=
         dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
     end;
end;

procedure TFIN_FM_M_CTA_CON.txtCodForButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('INT_NOMEEMI').Text :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

           dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('ID_EMITENTE').AsInteger :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TFIN_FM_M_CTA_CON.txtCodForExit(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('INT_NOMEEMI').Text := '';

  if dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('id_emitente').Text <> '' then
    begin
      dmGeral.BUS_CD_C_FOR.Close;
      dmGeral.BUS_CD_C_FOR.Data :=
      dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtCodFor.Text]));

      if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
       begin
         dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('INT_NOMEEMI').Text := '';
         txtCodFor.SetFocus;
         abort;
       end;

      dmGeral.FIN_CD_M_CON_CXB_AUX.FieldByName('INT_NOMEEMI').Text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
    end;
end;

procedure TFIN_FM_M_CTA_CON.txtDescontoEnter(Sender: TObject);
begin
  inherited;
 if txtDesconto.ReadOnly = false then
    begin
     dmgeral.FIN_CD_M_CON_CXB_DET.Edit;
    end;
end;

procedure TFIN_FM_M_CTA_CON.txtDescontoExit(Sender: TObject);
begin
  inherited;
  if txtDesconto.ReadOnly = false then
    begin
      if (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger in [1,2]) then
        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency :=
          dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency +
          dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency -
          dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_DESCONTO').AsCurrency;
       dmgeral.FIN_CD_M_CON_CXB_DET.Post;
       ExibTotalDif;
    end;
end;

procedure TFIN_FM_M_CTA_CON.txtDescOpeEnter(Sender: TObject);
begin
  inherited;
  if txtDescOpe.ReadOnly = false then
    begin
     dmgeral.FIN_CD_M_CON_CXB_DET.Edit;
    end;
end;

procedure TFIN_FM_M_CTA_CON.txtDescOpeExit(Sender: TObject);
begin
  inherited;
  if txtDescOpe.ReadOnly = false then
    begin
      if (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger in [1,2]) then
        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency :=
          dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency +
          dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency -
          (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_DESCONTO').AsCurrency +
           dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_DESCONTO_OPE').AsCurrency)
            ;
       dmgeral.FIN_CD_M_CON_CXB_DET.Post;
       ExibTotalDif;
    end;
end;

procedure TFIN_FM_M_CTA_CON.txtJurosEnter(Sender: TObject);
begin
  inherited;
   if txtJuros.ReadOnly = false then
    begin
     dmgeral.FIN_CD_M_CON_CXB_DET.Edit;
    end;
end;

procedure TFIN_FM_M_CTA_CON.txtJurosExit(Sender: TObject);
begin
  inherited;

  if txtJuros.ReadOnly = false then
    begin
      if (dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('TIPO_TITULO').AsInteger in [1,2]) then
        dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_LANCAMENTO').AsCurrency :=
          dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_TITULO').AsCurrency +
          dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_JUROS').AsCurrency -
          dmGeral.FIN_CD_M_CON_CXB_DET.FieldByName('VLR_DESCONTO').AsCurrency;
       dmgeral.FIN_CD_M_CON_CXB_DET.Post;
       ExibTotalDif;
    end;
end;

procedure TFIN_FM_M_CTA_CON.txtNumDocExit(Sender: TObject);
begin
 inherited;
 if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


end;

procedure TFIN_FM_M_CTA_CON.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFIN_FM_M_CTA_CON.txtVlrLanctoSugestExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


end;

procedure TFIN_FM_M_CTA_CON.wwDBLookupCombo1Enter(Sender: TObject);
begin
  inherited;
 if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger = 0 then // débito
     begin
       dmGeral.BusTipoFinExp(90,'0');
       dmGeral.BusTipoFinExp2(90,'1');
     end
  else
     begin
       dmGeral.BusTipoFinExp(90,'1');
       dmGeral.BusTipoFinExp2(90,'0');
     end;
end;

procedure TFIN_FM_M_CTA_CON.wwIButton1Click(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_CON_CXB.delete;
end;

procedure TFIN_FM_M_CTA_CON.ZerarTotDif;
begin
  txtTotSelMovtos.Text := FormatFloat('###,###,###,##0.00',0);
  txtDiferencaMovtos.Text := FormatFloat('###,###,###,##0.00',0);
end;

procedure TFIN_FM_M_CTA_CON.grdCxbCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;

  if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger = 0 then
     begin
       AFont.Color := clRed ;
     end;

  if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger = 1 then
     begin
       AFont.Color := clBlue;
     end;


end;

procedure TFIN_FM_M_CTA_CON.grdCxbCellChanged(Sender: TObject);
begin
  inherited;
  grdCxb.Columns[grdCxb.SelectedIndex].ReadOnly := false;
  if not (grdCxb.Columns[grdCxb.SelectedIndex].FieldName =  'int_selecao') then
     begin
       grdCxb.Columns[grdCxb.SelectedIndex].ReadOnly := true;
     end;
end;

procedure TFIN_FM_M_CTA_CON.grdCxbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  YMOFXReader1: TYMOFXReader;
  i:integer;
  valor: String;
  ExisteRelacao: Boolean;
begin
  if key = vk_f3 then
     begin

        if xModoAlt then
           begin
             ShowMessage('Não é permitido importar o extrato do banco(*.ofx) em modo de alteração.');
             abort;
           end;

        if dmGeral.FIN_CD_M_CON.FieldByName('dta_conciliacao').Text = '' then
           begin
             Showmessage('O campo "Data da conciliação" dever ser preenchido.');
             exit;
           end;

        if dmGeral.FIN_CD_M_CON.FieldByName('ID_CONTA').Text = '' then
           begin
             Showmessage('O campo "Conta corrente" dever ser preenchido.');
             exit;
           end;

        ExisteRelacao := false;
        dmGeral.FIN_CD_M_CON_CXB.cancel;
        if (not dmGeral.FIN_CD_M_CON_CXB.IsEmpty) and (trim(dmGeral.FIN_CD_M_CON_CXB.FieldByName('dta_movimento').AsString) <> '') then
           begin
             dmGeral.FIN_CD_M_CON_CXB.First;
             while not dmGeral.FIN_CD_M_CON_CXB.eof do
                begin
                  if dmGeral.FIN_CD_M_CON_CXB.FieldByName('selecao').AsString = '0' then
                     begin
                        ExisteRelacao := true;
                        dmGeral.FIN_CD_M_CON_CXB.Last;
                     end;
                  dmGeral.FIN_CD_M_CON_CXB.Next;
                end;
             dmGeral.FIN_CD_M_CON_CXB.First;

             if ExisteRelacao then
                begin
                  if Dc_MessageDlgCheck('Já existe registro relacinado com movimento do sistema!' + #13 + 'Se continuar todas as relações serão perdidas!', mtConfirmation, [mbYes, mbNo],
                     0, mrNo, true, false,'', nil) <> 7 then
                     begin
                       while not dmGeral.FIN_CD_M_CON_CXB.eof do
                          begin
                            dmGeral.FIN_CD_M_CON_CXB.delete;
                          end;
                     end
                  else
                     abort;
                end
             else
                begin
                  if Dc_MessageDlgCheck('Se continuar os registros atuais importados serão apagados,deseja fazer uma nova importação?', mtConfirmation, [mbYes, mbNo],
                     0, mrNo, true, false,'', nil) <> 7 then
                     begin
                       while not dmGeral.FIN_CD_M_CON_CXB.eof do
                          begin
                            dmGeral.FIN_CD_M_CON_CXB.delete;
                          end;
                     end
                  else
                     abort;
                end;
           end;


        odOfx.Title := 'Selecione o arquivo .OFX';
        odOfx.DefaultExt := '*.OFX';
        odOfx.Filter := 'Arquivos (*.OFX)|*.OFX';
        // odOfx.InitialDir :=
        try

        if odOfx.Execute then
           begin
              YMOFXReader1:= TYMOFXReader.create(self);
              //YMOFXReader1.OFXFile := 'C:\e-north\enProjetos\ExtratoBancario\Extrato80748541.ofx';
              YMOFXReader1.OFXFile := odOfx.FileName;
              YMOFXReader1.Process;
              if dmGeral.FIN_CD_M_CON_CXB.Isempty then
                 begin
                    while not dmGeral.FIN_CD_M_CON_CXB.eof do
                       begin
                         dmGeral.FIN_CD_M_CON_CXB.delete;
                       end;
                 end;

                for i := 0 to YMOFXReader1.Count-1 do
                    begin

                      if (IntToStr(YMOFXReader1.Get(i).CodBanco) <> dmGeral.BUS_CD_C_CTC.FieldByName('BANCO').AsString) then
                         begin
                           Showmessage('O código do banco selecionado está diferente do código do banco do arquivo selecionado.' + #13 +
                                       '   Dados do banco no sistema: ' + #13 +
                                       '   >> Banco: ' + dmGeral.BUS_CD_C_CTC.FieldByName('BANCO').AsString +';'+ #13 + #13 +
                                       '   Dados do banco no arquivo ''' + odOfx.FileName + ''''+ #13 +
                                       '   >> Banco: ' +IntToStr(YMOFXReader1.Get(i).CodBanco)+';');
                           abort;
                         end;

                      pnMsgCxb.Visible := true;
                      pnMsgCxb.Caption := 'Aguarde enquanto importamos os dados....';
                      if i = 0 then
                         FIN_FM_M_CTA_CON.Refresh;
                      dmGeral.FIN_CD_M_CON_CXB.Insert;

                      dmGeral.FIN_CD_M_CON_CXB.FieldByName('int_selecao').AsBoolean := false;
                      dmGeral.FIN_CD_M_CON_CXB.FieldByName('historico').AsString := YMOFXReader1.Get(i).Desc;
                      dmGeral.FIN_CD_M_CON_CXB.FieldByName('dta_movimento').AsDateTime := YMOFXReader1.Get(i).MovDate;
                      dmGeral.FIN_CD_M_CON_CXB.FieldByName('tipo').AsString := YMOFXReader1.Get(i).MovType;
                      dmGeral.FIN_CD_M_CON_CXB.FieldByName('documento').AsString := YMOFXReader1.Get(i).Document;
                      dmGeral.FIN_CD_M_CON_CXB.FieldByName('vlr_lancamento').AsCurrency := YMOFXReader1.Get(i).Value;

                      if dmGeral.FIN_CD_M_CON_CXB.FieldByName('vlr_lancamento').AsCurrency > 0 then
                         begin
                           dmGeral.FIN_CD_M_CON_CXB.FieldByName('int_debcre').AsString := '(+)';
                           dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger := 1;
                         end;

                      if dmGeral.FIN_CD_M_CON_CXB.FieldByName('vlr_lancamento').AsCurrency < 0 then
                         begin
                           dmGeral.FIN_CD_M_CON_CXB.FieldByName('int_debcre').AsString := '(-)';
                           dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger := 0;

                           dmGeral.FIN_CD_M_CON_CXB.FieldByName('vlr_lancamento').AsString :=
                              StringReplace(dmGeral.FIN_CD_M_CON_CXB.FieldByName('vlr_lancamento').AsString,'-','',[rfReplaceAll]);
                         end;
                      dmGeral.FIN_CD_M_CON_CXB.FieldByName('status').AsString := 'A';
                      dmGeral.FIN_CD_M_CON_CXB.FieldByName('selecao').AsString := '';
                      dmGeral.FIN_CD_M_CON_CXB.Post;

                    end;
              FIN_RN_M_CTA_CON.FinBuscRegRelMovCtaConCxb;
           end;
       finally
         if pnMsgCxb.Visible = true then
            begin
              pnMsgCxb.Font.Color := clBlue;
              pnMsgCxb.Caption := 'Dados importado com sucesso!!!';
              FIN_FM_M_CTA_CON.Refresh;
              sleep(3000);
            end;
         pnMsgCxb.Font.Color := clBlack;
         pnMsgCxb.Visible := false;
         if not (dmGeral.FIN_CD_M_CON_CXB.IsEmpty) then
            begin
              dmGeral.FIN_CD_M_CON_CXB.First;
            end;
       end;

       dmGeral.FIN_CD_M_CON_CXB.First;
     end;

   // Limpar o cds
   dmGeral.BUS_CD_M_CTA.Close;
   dmGeral.BUS_CD_M_CTA.Data :=
       dmGeral.BUS_CD_M_CTA.DataRequest(
             VarArrayOf([0, '']));


end;

procedure TFIN_FM_M_CTA_CON.grdCxbMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ExibTotalDif;
end;

procedure TFIN_FM_M_CTA_CON.grdCxbRowChanged(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CON_CXB.FieldByName('debcre').AsInteger = 0 then // débito
     begin
       dmGeral.BusTipoFin(90,'0');
       dmGeral.BusTipoFinExp(90,'0');
       dmGeral.BusTipoFinExp2(90,'1');

       dmGeral.BusPlanoCta2(90,'''1''');    // Vai trazer todos os planos de contas menos Receitas
       dmGeral.BusPlanoCtaExp(90,'''1''');  // Vai trazer todos os planos de contas menos Receitas

       tsTitPagar.TabVisible := true;
       tsTitReceber.TabVisible := false;

       tsGrdPag.TabVisible := true;
       tsGrdRec.TabVisible := false;

     end
  else
     begin
       dmGeral.BusTipoFin(90,'1');
       dmGeral.BusTipoFinExp(90,'1');
       dmGeral.BusTipoFinExp2(90,'0');

       dmGeral.BusPlanoCta2(90,'''0''');    // Vai trazer todos os planos de contas menos Despesas
       dmGeral.BusPlanoCtaExp(90,'''0''');  // Vai trazer todos os planos de contas menos Despesas

       tsTitPagar.TabVisible := false;
       tsTitReceber.TabVisible := true;

       tsGrdPag.TabVisible := false;
       tsGrdRec.TabVisible := true;
     end;
end;

procedure TFIN_FM_M_CTA_CON.grdMovExistCellChanged(Sender: TObject);
begin
  inherited;
  grdMovExist.Columns[grdMovExist.SelectedIndex].ReadOnly := false;
  if not (grdMovExist.Columns[grdMovExist.SelectedIndex].FieldName =  'int_selecao') then
     begin
       grdMovExist.Columns[grdMovExist.SelectedIndex].ReadOnly := true;
     end;
end;

procedure TFIN_FM_M_CTA_CON.HabDesPainelMovExist(Estado: Boolean);
begin
  if Estado then
     begin
        pnLancExistente.Top := gbMovimentoGerado.Top + 50;
        pnLancExistente.Height  := 338;
        pnLancExistente.Visible := true;
        grdCxb.Enabled          := false;
        btnBuscaMovNConc.enabled := false;

        grdMovExist.Height      := grdMovExist.Height + 193;
     end
  else
     begin
        pnLancExistente.Visible := false;
        pnLancExistente.Top := gbMovimentoGerado.Top + 242;
        pnLancExistente.Height := 146;
        grdCxb.Enabled          := true;
        btnBuscaMovNConc.enabled := true;
        grdMovExist.Height      := 113;
     end;

end;

procedure TFIN_FM_M_CTA_CON.ExibTotalDif;
var
   TotSelMovtos: Currency;
   VlrDiferencaMovtos: Currency;
begin
   FinExibirTotDifCxbDet(TotSelMovtos,VlrDiferencaMovtos);

   txtTotSelMovtos.Text := FormatFloat('###,###,###,##0.00',TotSelMovtos);
   txtDiferencaMovtos.Text := FormatFloat('###,###,###,##0.00',VlrDiferencaMovtos);
end;

function TFIN_FM_M_CTA_CON.ExisteTituloGrid:Boolean;
begin

end;

end.
