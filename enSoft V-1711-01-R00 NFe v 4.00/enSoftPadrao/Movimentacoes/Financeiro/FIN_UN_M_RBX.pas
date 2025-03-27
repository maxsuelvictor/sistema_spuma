unit FIN_UN_M_RBX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,enFunc,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.DBCtrls, JvToolEdit, JvDBControls, JvExMask, Vcl.Mask, JvExExtCtrls,
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
  dxSkinXmas2008Blue, math, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, vcl.Wwdbedit, Datasnap.DBClient, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TFIN_FM_M_RBX = class(TPAD_FM_X_PAD)
    FIN_DS_M_RBX_TIT: TwwDataSource;
    FIN_DS_M_RBX_GER: TwwDataSource;
    lblCliente: TLabel;
    txtCliente: TJvDBComboEdit;
    txtClienteNome: TDBText;
    lblData: TLabel;
    dpkDataBaixa: TJvDBDateEdit;
    lblCreditoDisponivel: TLabel;
    lblObservacao: TLabel;
    txtObservacao: TDBMemo;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    gbTitulos: TGroupBox;
    btn_Add_Titulos: TBitBtn;
    grdTitulos: TwwDBGrid;
    grdTitulosIButton: TwwIButton;
    pnlTitulos: TPanel;
    lblNTitulo: TLabel;
    lblVencimendo: TLabel;
    lblVlrTitulo: TLabel;
    lblPerDesconto: TLabel;
    txtVlrTitulo: TDBEdit;
    txtPerDesconto: TDBEdit;
    txtVlrDesconto: TDBEdit;
    lblVlrDesconto: TLabel;
    lblVlrCredito: TLabel;
    txtVlrCredito: TDBEdit;
    txtTotalPagar: TDBEdit;
    lblTotalPagar: TLabel;
    lblVlrPago: TLabel;
    txtVlrPago: TDBEdit;
    txtVlrRestante: TDBEdit;
    lblVlrRestante: TLabel;
    gbNovTtulos: TGroupBox;
    dpkVencimento: TJvDBDateEdit;
    pnlNovoTit: TPanel;
    btn_Add_Cheques: TBitBtn;
    dgNovoTit: TwwDBGrid;
    dgChequePreIButton: TwwIButton;
    txtNTitulo: TJvDBComboEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    cbbContaCorrente: TwwDBLookupCombo;
    lblContaCorrente1: TLabel;
    lblTipoFinanceiro: TLabel;
    cbbTipoFinanceiro: TwwDBLookupCombo;
    lblPlanoContas: TLabel;
    cbbPlanoContas: TwwDBLookupCombo;
    txtVlrJuros: TDBEdit;
    lblJuros: TLabel;
    lblDataVencimento: TLabel;
    dpkVencimentoChe: TJvDBDateEdit;
    txtVlrPagoChe: TDBEdit;
    lblVlrPago1: TLabel;
    Label1: TLabel;
    lblCentroCusto: TLabel;
    cbbCentroCusto: TwwDBLookupCombo;
    Label4: TLabel;
    txtDataCxa: TEdit;
    txtCreditoDisponivel: TDBEdit;
    txtSaldoCredito: TDBEdit;
    Label2: TLabel;
    cbbMaquineta: TwwDBLookupCombo;
    btnImprimeRecibo: TcxButton;
    FIN_XL_M_RBX: TfrxXLSExport;
    FIN_PD_M_RBX: TfrxPDFExport;
    FIN_DB_M_RBX: TfrxDBDataset;
    FIN_DB_M_RBX_TIT: TfrxDBDataset;
    pnCheque: TPanel;
    lblAgencia: TLabel;
    lblContaCorrente: TLabel;
    lblEmitente: TLabel;
    lblNCheque: TLabel;
    txtAgencia: TDBEdit;
    txtContaCorrente: TDBEdit;
    txtEmitente: TDBEdit;
    txtNCheque: TDBEdit;
    lblBanco: TLabel;
    txtBanco: TDBEdit;
    FIN_DB_M_RBX_GER: TfrxDBDataset;
    btnGerarBoleto: TcxButton;
    mmoReciboBoleto: TMemo;
    Label3: TLabel;
    txtTotalGeralPagar: TwwDBEdit;
    Label5: TLabel;
    txtTotalGeralPago: TwwDBEdit;
    txtVlrTotGer: TwwDBEdit;
    Label6: TLabel;
    txtPesquisaData: TJvDateEdit;
    btnVisualizaPedidos: TBitBtn;
    pmRbx: TPopupMenu;
    mpExibPedPrestConta: TMenuItem;
    FIN_FR_M_RBX_TST: TfrxReport;
    FIN_FR_M_RBX_DNR_TST: TfrxReport;
    chkFazConciliacao: TDBCheckBox;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure grdTitulosIButtonClick(Sender: TObject);
    procedure grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtVlrPagoExit(Sender: TObject);
    procedure pnlTitulosExit(Sender: TObject);
    procedure btn_Add_TitulosClick(Sender: TObject);
    procedure btn_Add_ChequesClick(Sender: TObject);
    procedure pnlNovoTitExit(Sender: TObject);
    procedure dgNovoTitMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtEmitenteExit(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure txtNTituloButtonClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure cbbTipoFinanceiroEnter(Sender: TObject);
    procedure cbbContaCorrenteExit(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure txtNTituloExit(Sender: TObject);
    procedure txtVlrPagoCheExit(Sender: TObject);
    procedure cbbCentroCustoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dgChequePreIButtonClick(Sender: TObject);
    procedure dsoDataChange(Sender: TObject; Field: TField);
    procedure cbbMaquinetaEnter(Sender: TObject);
    procedure btnImprimeReciboClick(Sender: TObject);
    procedure btnGerarBoletoClick(Sender: TObject);
    procedure dpkVencimentoCheExit(Sender: TObject);
    procedure txtVlrCreditoExit(Sender: TObject);
    procedure btnVisualizaPedidosClick(Sender: TObject);
    procedure mpExibPedPrestContaClick(Sender: TObject);
    procedure chkFazConciliacaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure ExibirDadosTit;
    procedure AcoesIniciais;
    procedure AbrirBuscas;
  public
    { Public declarations }
     xIdAbertura: integer; // Campo utilizado pela tela de Controle de caixa
     xIdConta:    integer; // Campo utilizado pela tela de Controle de caixa
     xCodFpg: String;
  end;

var
  FIN_FM_M_RBX: TFIN_FM_M_RBX;
  xOriChamada:integer=0;
          // 0 - Menu Principal
          // 1 - Tela de Controle de Caixa

implementation

{$R *.dfm}

uses uProxy, uDmGeral, PSQ_UN_X_CLI, FIN_RN_M_RBX, PSQ_UN_X_CTC,
  FIN_RN_M_BOL, PSQ_UN_X_RBX_TIT, FIN_UN_M_RBX_PPE;


procedure  TFIN_FM_M_RBX.AbrirBuscas;
begin
   dmGeral.BUS_CD_C_CXA_BCO.Close;
   dmGeral.BUS_CD_C_CXA_BCO.Data :=
          dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([4, '%']));
  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusTipoFin(90,'1');
  dmGeral.BusPlanoCta(92,' '''+'1'+''','''+'2'+''' ');
  dmGeral.BusCCusto(1,'%');
  dmGeral.BusMaquineta(1,'%');
end;

procedure TFIN_FM_M_RBX.acAdicionaExecute(Sender: TObject);
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_FORMA_PAG').AsString = '') then
   begin
     ShowMessage('Forma de pagamento deve ser preenchido em Geração Nota de Crédito na aba Financeiro da tela de parâmetros'+#13);
     exit;
   end;

  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RBX);
  HabilDesabCampos(true,clWindow);

  dmGeral.BUS_CD_M_CXA.Close;
  dmGeral.BUS_CD_M_CXA.Data :=
  dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger])); // Busca o caixa aberto para o funcionário especificado

  if not dmGeral.BUS_CD_M_CXA.IsEmpty then
     begin
       txtDataCxa.Text :=
               dmGeral.BUS_CD_M_CXA.FieldByName('dta_abertura').AsString;
     end;

  dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  cbbContaCorrente.ReadOnly := false; // deve ficar aqui
  if xOriChamada = 1 then  // Pela tela de Controle de Caixa
     begin
       dmGeral.FIN_CD_M_RBX.FieldByName('id_conta').AsInteger    := xIdConta;
       dmGeral.FIN_CD_M_RBX.FieldByName('id_abertura').asInteger := xIdAbertura;
       dmGeral.BusContaCorr(0,inttostr(xIdConta));
       cbbContaCorrente.Text := dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;
       dmGeral.BUS_CD_C_CTC.Close;
       cbbContaCorrente.ReadOnly := true; // deve ficar aqui
     end;

  pnlTitulos.Enabled      := False;
  gbNovTtulos.Enabled     := false;
  pnlNovoTit.Enabled      := False;
  xCodFpg := '';


  txtCliente.SetFocus;
  btnImprimeRecibo.Enabled := false;
  btnGerarBoleto.Enabled := false;
end;


procedure TFIN_FM_M_RBX.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RBX) then
      begin
        inherited;
        HabilDesabCampos(false,$00DADADA);

        if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('permitir_alterar_dta_baixa_rbx').AsBoolean=true)) then
         begin
          dpkDataBaixa.ReadOnly := true;
          dpkDataBaixa.Color    := $00DADADA;
         end
        else
          begin
            dpkDataBaixa.ReadOnly := false;
            dpkDataBaixa.Color    := clWhite;
          end;

        pnlTitulos.Enabled        := False;
        pnlNovoTit.Enabled        := False;

        gbNovTtulos.Enabled := false;
        pnCheque.Enabled := false;
        btnImprimeRecibo.Enabled := false;
        btnGerarBoleto.Enabled := false;
        dmGeral.FIN_CD_M_RBX.FieldByName('vlr_saldo_credito').AsString :=
                CurrToStr(dmGeral.BusSaldoCreCli(dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').AsString));

        dmGeral.FIN_CD_M_RBX.FieldByName('vlr_credito_disponivel').AsCurrency :=
                  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_saldo_credito').AsCurrency +
                  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_cred_utilizado').AsCurrency;
        // Geração da Duplicata, Promissória , Cartão de crédito , Boleto e Cheque
        if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger in [1,2,3,4,6] then
           begin
             gbNovTtulos.Enabled := true;

             if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger in [6] then
                pnCheque.Enabled := true;
           end;
        cbbFormaPagamento.Enabled := false;
        txtObservacao.SetFocus;
      end;
end;

procedure TFIN_FM_M_RBX.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RBX) then
     begin
       inherited;
       dbGrid.SetFocus;
       gbNovTtulos.Enabled := false;
       btnImprimeRecibo.Enabled := true;
       btnGerarBoleto.Enabled := true;
     end
  else
     begin
       txtCliente.SetFocus;
     end;
end;

procedure TFIN_FM_M_RBX.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RBX);
end;

procedure TFIN_FM_M_RBX.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   FIN_RN_M_RBX.FinOutrasOperacoesRbx;
   FIN_RN_M_RBX.FinOutrasValRbx;
   FIN_RN_M_RBX.FinGerenciarRbxPpe;

   codigo := dmGeral.FIN_CD_M_RBX.FieldByName('ID_BAIXA').AsString;
   DmGeral.Grava(dmGeral.FIN_CD_M_RBX);
   AbrirBuscas;
   inherited;
   if xOriChamada = 0 then // chamada pelo Menu Principal
      begin
         dmGeral.FIN_CD_M_RBX.Close;
         dmGeral.FIN_CD_M_RBX.Data :=
         dmGeral.FIN_CD_M_RBX.DataRequest(
                 VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));
      end;
   if xOriChamada = 1 then // chamada pela tela de Controle de Caixa
      begin
        gbxFiltro.Enabled := false;
        dmGeral.FIN_CD_M_RBX.Close;
        dmGeral.FIN_CD_M_RBX.Data :=
                dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([90,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xIdAbertura,xFuncionario]));
        dmGeral.FIN_CD_M_RBX.Locate('ID_BAIXA',CODIGO,[]);
      end;
   gbNovTtulos.Enabled      := false;
   btnImprimeRecibo.Enabled := true;
   btnGerarBoleto.Enabled := true;
end;

procedure TFIN_FM_M_RBX.AcoesIniciais;
begin

end;

procedure TFIN_FM_M_RBX.btnVisualizaPedidosClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TFIN_FM_M_RBX_PPE,FIN_FM_M_RBX_PPE);
  FIN_FM_M_RBX_PPE.ShowModal;
  FreeAndNil(FIN_FM_M_RBX_PPE);
end;

procedure TFIN_FM_M_RBX.btn_Add_ChequesClick(Sender: TObject);
begin
  inherited;
  pnlNovoTit.Enabled  := True;

  dmGeral.FIN_CD_M_RBX_GER.Insert;
  //dmGeral.FIN_CD_M_RBX_GER.FieldByName('DTA_VENCIMENTO').AsDateTime  := xDataSis;
  dpkVencimentoChe.SetFocus;
end;

procedure TFIN_FM_M_RBX.btn_Add_TitulosClick(Sender: TObject);
begin
  inherited;
  pnlTitulos.Enabled  := True;

  dmGeral.FIN_CD_M_RBX_TIT.Insert;
  txtNTitulo.Enabled := True;
  txtNTitulo.SetFocus;
end;

procedure TFIN_FM_M_RBX.btnFiltroClick(Sender: TObject);
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

    dmGeral.FIN_CD_M_RBX.Close;
    dmGeral.FIN_CD_M_RBX.Data :=
    dmGeral.FIN_CD_M_RBX.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_RBX.btnGerarBoletoClick(Sender: TObject);
var
  codigo: string;
  Licenca: String;
  Reimprimir:boolean;
  NossoNroBol:string;
  contaExistente:string;
begin
  inherited;
  Reimprimir := true;

   NossoNroBol := '0';

   if dmGeral.FIN_CD_M_RBX.IsEmpty then
     begin
       ShowMessage('Não existe registro de boleto.');
       exit;
     end;

  dmGeral.BUS_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_FPG.Data :=
  dmGeral.BUS_CD_C_FPG.DataRequest(
            VarArrayOf([0,dmGeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString]));

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 4 then // Boleto
     begin
       ShowMessage('Os novos títulos não são "Boletos".');
       exit;
     end;

  dmGeral.FIN_CD_M_REC.Close;
  dmGeral.FIN_CD_M_REC.Data :=
  dmGeral.FIN_CD_M_REC.DataRequest(
            VarArrayOf([95,dmGeral.FIN_CD_M_RBX.FieldByName('ID_BAIXA').AsString]));



  {if (trim(dmGeral.FIN_CD_M_REC.FieldByName('BOL_NOSSO_NUMERO').AsString) <> '') then
     begin

       if Dc_MessageDlgCheck('Título com boleto já gerado!' + #13 + 'Deseja reimprimir?', mtConfirmation, [mbYes, mbNo],
          0, mrNo, true, false,'', nil) = 7 then
          begin
            exit;
          end
       else
          begin
            Reimprimir := true;
            NossoNroBol := dmGeral.FIN_CD_M_REC.FieldByName('BOL_NOSSO_NUMERO').AsString;
          end;
     end;  }

  Licenca := '';

  PSQ_FM_X_CTC := TPSQ_FM_X_CTC.Create(Self);

  PSQ_FM_X_CTC.BUS_CD_C_CTC.Close;
  PSQ_FM_X_CTC.BUS_CD_C_CTC.Data :=
     PSQ_FM_X_CTC.BUS_CD_C_CTC.DataRequest(
          VarArrayOf([3, '1']));

  PSQ_FM_X_CTC.ShowModal;


  if PSQ_FM_X_CTC.BUS_CD_C_CTC.IsEmpty then
     begin
       ShowMessage('Nenhuma conta corrente foi selecionada.');
       exit;
     end;

  try
     contaExistente := '';
     dmGeral.FIN_CD_M_REC.First;
     while ((not dmGeral.FIN_CD_M_REC.EOF) and ((contaExistente = '') or (Reimprimir=true)) ) do
       begin
          if ((trim(dmGeral.FIN_CD_M_REC.FieldByName('BOL_ID_CONTA').AsString) <> '') and
             (trim(dmGeral.FIN_CD_M_REC.FieldByName('BOL_ID_CONTA').AsString) <> '0')) then
             begin
               contaExistente := trim(dmGeral.FIN_CD_M_REC.FieldByName('BOL_ID_CONTA').AsString);
             end;
          if (trim(dmGeral.FIN_CD_M_REC.FieldByName('BOL_NOSSO_NUMERO').AsString) = '') then
             begin
                Reimprimir := false;
             end;
          dmGeral.FIN_CD_M_REC.Next;
       end;

    if (Reimprimir = true) then
       begin
        if Dc_MessageDlgCheck('Todos os títulos com boleto já gerados!' + #13 + 'Deseja reimprimir?', mtConfirmation, [mbYes, mbNo],
              0, mrNo, true, false,'', nil) = 7 then
              begin
                exit;
              end;
       end;

    if (contaExistente<>'')  then
       begin
          if PSQ_FM_X_CTC.BUS_CD_C_CTC.FieldByName('ID_CONTA').AsString <> contaExistente then
             begin
               ShowMessage('A conta corrente selecionada está diferente da conta corrente dos títulos.');
               abort;
             end;
       end;

    dmGeral.FIN_CD_M_REC.First;
    codigo := dmGeral.FIN_CD_M_RBX.FieldByName('ID_BAIXA').AsString;


    FIN_RN_M_BOL.GerarBoleto(3,dmGeral.FIN_CD_M_REC.FieldByName('ID_CLIENTE').AsString,dmGeral.FIN_CD_M_REC,
                               PSQ_FM_X_CTC.BUS_CD_C_CTC,Reimprimir,StrToInt(NossoNroBol),mmoReciboBoleto);

  finally
    PSQ_FM_X_CTC.Free;
    if trim(codigo) <> '' then
       dmGeral.FIN_CD_M_RBX.Locate('ID_BAIXA',codigo,[]);
  end;
end;

procedure TFIN_FM_M_RBX.btnImprimeReciboClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
  vlr_bxa:currency;
begin
  inherited;
  if dmGeral.FIN_CD_M_RBX.IsEmpty then
     begin
       ShowMessage('É necessário selecionar registro');
       exit;
     end;

  codigo := dmGeral.FIN_CD_M_RBXid_baixa.text;

  dmGeral.FIN_CD_M_RBX.Close;
  dmGeral.FIN_CD_M_RBX.Data :=
  dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));

  if not dmGeral.FIN_CD_M_RBX.IsEmpty then
     begin
        if ((dmGeral.FIN_CD_M_RBX.FieldByName('ID_RECIBO').IsNull) or
          (dmGeral.FIN_CD_M_RBX.FieldByName('ID_RECIBO').AsString = '')) then
          begin
            dmGeral.FIN_CD_M_RBX.BeforeEdit := nil;
            dmGeral.FIN_CD_M_RBX.BeforePost := nil;
            dmGeral.FIN_CD_M_RBX.Edit;
            SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
            try
               dmGeral.FIN_CD_M_RBX.FieldByName('ID_RECIBO').AsInteger :=
                             SMPrincipal.enValorChave('NUM_RCB_RBX');
            finally
               dmGeral.FIN_CD_M_RBX.BeforeEdit := dmGeral.FIN_CD_M_RBXBeforeEdit;
               dmGeral.FIN_CD_M_RBX.BeforePost := dmGeral.FIN_CD_M_RBXBeforePost;
               FreeAndNil(SMPrincipal);
            end;
            dmGeral.FIN_CD_M_RBX.Post;
            if (dmGeral.FIN_CD_M_RBX.ApplyUpdates(0) <> 0) then
              begin
                ShowMessage('Falha ao gerar nº do recibo.');
                exit;
              end;
          end;


       vlr_bxa := Tenorth.Soma(dmGeral.FIN_CD_M_RBX_TIT,'vlr_pagamento');

       PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

       if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,3,4,6]) then
          begin
       {    FIN_FR_M_RBX.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_RBXvlr_baixa.AsCurrency));
           if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX.FindObject('imgEmpresa2'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
           dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_RBX.Name,xCodLme,xRevLme,nil);
           FIN_FR_M_RBX.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
           FIN_FR_M_RBX.Variables['Opcoes'] := QuotedStr('');
           FIN_FR_M_RBX.Variables['vlr_bxa'] := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
           FIN_FR_M_RBX.PrepareReport();
           FIN_FR_M_RBX.ShowReport();   }


           if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX_TST.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX_TST.FindObject('imgEmpresa2'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
           dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_RBX_TST.Name,xCodLme,xRevLme,nil);
           FIN_FR_M_RBX_TST.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
           FIN_FR_M_RBX_TST.Variables['Opcoes'] := QuotedStr('');
           FIN_FR_M_RBX_TST.Variables['vlr_bxa'] := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
           FIN_FR_M_RBX_TST.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_RBXvlr_baixa.AsCurrency));
           FIN_FR_M_RBX_TST.PrepareReport();
           FIN_FR_M_RBX_TST.ShowReport();
          end;

        if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5,7]) then
          begin
          { FIN_FR_M_RBX_DNR.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_RBXvlr_baixa.AsCurrency));
           if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX_DNR.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX_DNR.FindObject('imgEmpresa2'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
           dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_RBX_DNR.Name,xCodLme,xRevLme,nil);
           FIN_FR_M_RBX_DNR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
           FIN_FR_M_RBX_DNR.Variables['Opcoes'] := QuotedStr('');
           FIN_FR_M_RBX_DNR.Variables['vlr_bxa'] := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
           FIN_FR_M_RBX_DNR.PrepareReport();
           FIN_FR_M_RBX_DNR.ShowReport();   }

           if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX_DNR_TST.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX_DNR_TST.FindObject('imgEmpresa2'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
           dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_RBX_DNR_TST.Name,xCodLme,xRevLme,nil);
           FIN_FR_M_RBX_DNR_TST.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_RBXvlr_baixa.AsCurrency));
           FIN_FR_M_RBX_DNR_TST.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
           FIN_FR_M_RBX_DNR_TST.Variables['Opcoes']    := QuotedStr('');
           FIN_FR_M_RBX_DNR_TST.Variables['vlr_bxa']   := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
           FIN_FR_M_RBX_DNR_TST.PrepareReport();
           FIN_FR_M_RBX_DNR_TST.ShowReport();
          end;
     end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        Exit;
      end;
end;

procedure TFIN_FM_M_RBX.cbbCentroCustoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCCusto(1,'%');
  cbbCentroCusto.DropDown;
end;

procedure TFIN_FM_M_RBX.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCxaBco(xFuncionario);
  cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_RBX.cbbContaCorrenteExit(Sender: TObject);
begin
  inherited;
  dpkDataBaixa.ReadOnly := true;
  dpkDataBaixa.Color    := $00DADADA;
  if ((dmGeral.BUS_CD_C_CTCtipo.AsInteger = 1) or
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('permitir_alterar_dta_baixa_rbx').AsBoolean=true)) then
     begin
       dpkDataBaixa.ReadOnly := false;
       dpkDataBaixa.Color    := clWindow;
       dpkDataBaixa.SetFocus;
     end;

end;

procedure TFIN_FM_M_RBX.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  xCodFpg :=  dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString;
  dmGeral.BusFormaPgtos(1,'%');
  cbbFormaPagamento.DropDown;
end;

procedure TFIN_FM_M_RBX.cbbFormaPagamentoExit(Sender: TObject);
begin
  inherited;

  cbbMaquineta.Enabled := false;
  cbbMaquineta.Color   := $00DADADA;

  gbNovTtulos.enabled := false;

  if dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsInteger > 0 then
     begin
       dmgeral.FIN_CD_M_RBX_GER.cancel;
       dmgeral.FIN_CD_M_RBX_TIT.cancel;

       if (not dmgeral.FIN_CD_M_RBX_GER.IsEmpty) or (not dmgeral.FIN_CD_M_RBX_TIT.IsEmpty) then
          begin

            if (xCodFpg <> '') and (xCodFpg <> dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString) then
               begin
                 //dmgeral.FIN_CD_M_RBX_GER.cancel;
                 //dmgeral.FIN_CD_M_RBX_TIT.cancel;
                 if ( dmgeral.FIN_CD_M_RBX_GER.RecordCount > 0)  then
                     Showmessage('Não é permitido alterar a forma de pagamento com NOVOS títulos já informado na baixa.')
                 else
                    if (dmgeral.FIN_CD_M_RBX_TIT.RecordCount > 0) then
                        Showmessage('Não é permitido alterar a forma de pagamento com títulos já informado na baixa.');

                 dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString := xCodFpg;
                 //exit;
               end;
          end;

       dmGeral.BusFormaPgtos(0,dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString);
       if dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 3 then
          begin
            if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean then
               begin
                 cbbMaquineta.Enabled := true;
                 cbbMaquineta.Color   := clWhite;
               end
            else
               begin
                 if dmgeral.FIN_CD_M_RBX.FieldByName('ID_MAQUINETA').text = '' then
                    begin
                      dmgeral.FIN_CD_M_RBX.FieldByName('ID_MAQUINETA').AsInteger :=
                         dmGeral.CAD_CD_C_PAR_CTR.FieldByName('fin_id_maquineta_pad').AsInteger;
                    end;
               end;
          end;

       // Geração da Duplicata, Promissória , Cartão de crédito , Boleto e Cheque
       if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger in [1,2,3,4,6] then
          begin
            gbNovTtulos.enabled := true;

            pnCheque.Enabled := false;

            if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger = 6 then  //doc impresso = cheque
               begin
                 pnCheque.Enabled := true;
               end;

            ShowMessage('Informação: ' + #13 +
                        'Utilizando esta forma de pagamento a baixa será uma "Substituição".');
          end;

      if dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_tipo_financeiro').AsString <> '' then
        begin
          dmGeral.FIN_CD_M_RBX.FieldByName('id_tipo_financeiro').AsString := dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_tipo_financeiro').AsString;
        end;
      if dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_plano').AsString <> '' then
        begin
          dmGeral.FIN_CD_M_RBX.FieldByName('id_plano').AsString := dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_plano').AsString;
        end;
      if dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_ccusto').AsString <> '' then
        begin
         dmGeral.FIN_CD_M_RBX.FieldByName('id_ccusto').AsString := dmGeral.BUS_CD_C_FPG.FieldByName('rbx_id_ccusto').AsString;
        end;

       ActiveControl        := nil;
       PostMessage(cbbTipoFinanceiro.Handle, WM_SETFOCUS, 0, 0);
       cbbTipoFinanceiro.SetFocus;
     end;


  //if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger = 6 then  //doc impresso = cheque
  //   begin
  //     gbNovTtulos.enabled := true;
  //   end;


end;

procedure TFIN_FM_M_RBX.cbbMaquinetaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusMaquineta(1,'%');
  cbbMaquineta.DropDown;
end;

procedure TFIN_FM_M_RBX.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';

  if cbbPesquisa.ItemIndex in [2]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 109;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;


  if (cbbPesquisa.ItemIndex = 0) then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFIN_FM_M_RBX.cbbPlanoContasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta(92,' '''+'1'+''','''+'2'+''' ');
  //dmGeral.BusPlanoCta(92,'1');
  cbbPlanoContas.DropDown;
end;

procedure TFIN_FM_M_RBX.cbbTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFin(90,'1');
  cbbTipoFinanceiro.DropDown;
end;

procedure TFIN_FM_M_RBX.chkFazConciliacaoClick(Sender: TObject);
begin
  inherited;

  try
    dmgeral.FIN_CD_M_RBX_TIT.AfterPost  := nil;

  if dmGeral.FIN_CD_M_RBX.State in [dsInsert,dsEdit] then
     begin
        dmGeral.FIN_CD_M_RBX_TIT.First;
        while not dmGeral.FIN_CD_M_RBX_TIT.eof do
           begin
             dmGeral.FIN_CD_M_RBX_TIT.edit;
             dmGeral.FIN_CD_M_RBX_TIT.FieldByName('concilia').AsBoolean := chkFazConciliacao.Checked;

                   //dmGeral.FIN_CD_M_RBX.FieldByName('faz_conciliacao').AsBoolean;
             dmGeral.FIN_CD_M_RBX_TIT.Next;
           end;
        dmGeral.FIN_CD_M_RBX_TIT.First;
     end;


  finally
     dmgeral.FIN_CD_M_RBX_TIT.AfterPost  := dmgeral.FIN_CD_M_RBX_TITAfterPost;
  end;

end;

procedure TFIN_FM_M_RBX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_RBX.Close;
  FreeAndNil(FIN_FM_M_RBX);
end;

procedure TFIN_FM_M_RBX.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_RBX.Close;
  dmGeral.FIN_CD_M_RBX.Data := dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_RBX.Open;

  AbrirBuscas;
  //xOriChamada := 0; // 0 - Menu Principal
                    // Esta variável deve ficar no create do form;

end;

procedure TFIN_FM_M_RBX.FormShow(Sender: TObject);
begin
  inherited;
  txtPesquisa.SetFocus;
  cbbPesquisaChange(self);
  if xOriChamada = 1 then // chamada pela tela de Controle de Caixa
     begin
       gbxFiltro.Enabled := false;
     end;

  btnVisualizaPedidos.enabled := false;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       btnVisualizaPedidos.enabled := true;
     end;
end;

procedure TFIN_FM_M_RBX.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  txtCliente.Enabled := Estado;
  txtCliente.Color   := Cor;

  cbbFormaPagamento.Enabled := Estado;
  cbbFormaPagamento.Color   := Cor;

  cbbContaCorrente.Enabled := Estado;
  cbbContaCorrente.Color   := Cor;


  
end;

procedure TFIN_FM_M_RBX.pnlNovoTitExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Cheques.Focused) or (dgNovoTit.Focused) or (not dgChequePreIButton.Enabled) then
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
              Exit;
           end;

        dmGeral.FIN_CD_M_RBX_GER.Cancel;
        dmGeral.FIN_CD_M_RBX_GER.edit;

        finally
           pnlNovoTit.Enabled := False;
        end;
      end;
end;

procedure TFIN_FM_M_RBX.pnlTitulosExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Titulos.Focused) or (grdTitulos.Focused) or (not grdTitulosIButton.Enabled) then
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

        dmGeral.FIN_CD_M_RBX_TIT.Cancel;
        dmGeral.FIN_CD_M_RBX_TIT.edit;

        finally
           pnlTitulos.Enabled := False;
        end;
      end;
end;

procedure TFIN_FM_M_RBX.dgChequePreIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgChequePreIButton.Enabled := False;
     if dmGeral.FIN_CD_M_RBX_GER.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FIN_CD_M_RBX_GER.Delete;
     dmGeral.FIN_CD_M_RBX_GER.Edit;
  finally
    dgChequePreIButton.Enabled := True;
  end;
end;

procedure TFIN_FM_M_RBX.dgNovoTitMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlNovoTit.Enabled = False then
     pnlNovoTit.Enabled := True;

  dmGeral.FIN_CD_M_RBX_GER.cancel;

  if dmGeral.FIN_CD_M_RBX_GER.IsEmpty then
     begin
       dmGeral.FIN_CD_M_RBX_GER.Append;

       pnlNovoTit.Enabled := True;

       dpkVencimentoChe.SetFocus;
     end
  else
    begin
     dmGeral.FIN_CD_M_RBX_GER.Edit;
     pnlNovoTit.Enabled := True;
     dpkVencimentoChe.SetFocus;
    end;
end;

procedure TFIN_FM_M_RBX.dpkVencimentoCheExit(Sender: TObject);
begin
  inherited;
    if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


    if (dmGeral.FIN_CD_M_RBX_GER.FieldByName('DTA_VENCIMENTO').AsString ='')  then
     begin
        dpkVencimentoChe.SetFocus;
        ShowMessage('O campo "Vencimento" deve ser preenchido.');
        abort;
     end;


   if (abs(dmGeral.FIN_CD_M_RBX_GER.FieldByName('DTA_VENCIMENTO').AsDateTime -
     dmGeral.FIN_CD_M_RBX.FieldByName('DTA_BAIXA').AsDateTime)> 1825)  then
     begin
        dpkVencimentoChe.SetFocus;
        ShowMessage('Data de vencimento não pode ser menor ou maior em mais de 5 anos da data da baixa.');
        abort;
     end;
end;

procedure TFIN_FM_M_RBX.dsoDataChange(Sender: TObject; Field: TField);
begin
  inherited;


  if not dso.DataSet.IsEmpty then
     begin
        if dso.DataSet.State in [dsBrowse] then
           begin
             dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_RBXid_forma_pag.AsString);
             gbNovTtulos.Enabled := false;

             // Geração da Duplicata, Promissória , Cartão de crédito , Boleto e Cheque
             if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger in [1,2,3,4,6] then
                begin
                  gbNovTtulos.Enabled := true;
                end;
           end;

        mpExibPedPrestConta.Visible := False;

        btnVisualizaPedidos.enabled := false;
        if not (dmGeral.FIN_CD_M_RBX_PPE.IsEmpty) then
           begin
             btnVisualizaPedidos.enabled := true;
             mpExibPedPrestConta.Visible := true;
           end;

     end;
end;

procedure TFIN_FM_M_RBX.grdTitulosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdTitulosIButton.Enabled := False;
     if dmGeral.FIN_CD_M_RBX_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FIN_CD_M_RBX_TIT.Delete;
     dmGeral.FIN_CD_M_RBX_TIT.Edit;
  finally
    grdTitulosIButton.Enabled := True;
  end;
end;

procedure TFIN_FM_M_RBX.grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlTitulos.Enabled = False then
     pnlTitulos.Enabled := True;

  dmGeral.FIN_CD_M_RBX_TIT.cancel;

  if dmGeral.FIN_CD_M_RBX_TIT.IsEmpty then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.Append;
       txtNTitulo.Enabled := True;

       pnlTitulos.Enabled := True;
       txtNTitulo.SetFocus;
     end
  else
    begin
      dmGeral.FIN_CD_M_RBX_TIT.Edit;
      pnlTitulos.Enabled := True;
      txtNTitulo.Enabled := False;
      txtPerDesconto.SetFocus;
    end;
end;

procedure TFIN_FM_M_RBX.ExibirDadosTit;
begin
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsString;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_historico').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('historico').AsString;


  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('dta_vencimento').AsDateTime :=
           dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('dta_novo_venc').AsDateTime :=
           dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_titulo').AsCurrency :=
           dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('num_parcela').AsString :=
           dmGeral.BUS_CD_M_REC.FieldByName('num_parcela').AsString;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('atraso').AsInteger := 0;


  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_fpg_sgq_presta_conta').AsBoolean :=
           dmGeral.BUS_CD_M_REC.FieldByName('int_fpg_sgq_presta_conta').AsBoolean;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_id_pedido').AsInteger := 0;

  if trim(dmGeral.BUS_CD_M_REC.FieldByName('int_id_ors').AsString) <> '' then
     begin
        dmGeral.BUS_CD_M_ORS.close;
        dmGeral.BUS_CD_M_ORS.Data :=
                dmGeral.BUS_CD_M_ORS.DataRequest(VarArrayOf([0, dmGeral.BUS_CD_M_REC.FieldByName('int_id_ors').AsString]));
        if not dmGeral.BUS_CD_M_ORS.IsEmpty then
           begin
             dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_id_pedido').AsInteger :=
                   dmGeral.BUS_CD_M_ORS.FieldByName('id_pedido').AsInteger;
           end;
        dmGeral.BUS_CD_M_ORS.close;
     end;


  if  dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime<xDataSis then
      begin
        dmGeral.FIN_CD_M_RBX_TIT.FieldByName('atraso').AsFloat:=
           (xDataSis - dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime);
      end;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_juros').asCurrency := 0;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('tax_juros_mensal').AsCurrency > 0 then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_juros').asCurrency:=
          roundTo( (((dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_titulo').AsCurrency*
             dmGeral.CAD_CD_C_PAR_CTR.FieldByName('tax_juros_mensal').AsCurrency)/100)/30)*
               dmGeral.FIN_CD_M_RBX_TIT.FieldByName('atraso').AsFloat,-2);
     end;
end;

procedure TFIN_FM_M_RBX.mpExibPedPrestContaClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFIN_FM_M_RBX_PPE,FIN_FM_M_RBX_PPE);
  FIN_FM_M_RBX_PPE.ShowModal;
  FreeAndNil(FIN_FM_M_RBX_PPE);
end;

procedure TFIN_FM_M_RBX.txtClienteButtonClick(Sender: TObject);
begin
   inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').AsInteger :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

           dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFIN_FM_M_RBX.txtClienteExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  mens: String;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

    dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text := '';

    if dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').Text = '' then
       begin
         ShowMessage('O campo "Cliente" deve ser prenchido.');
         abort;
       end;

    dmGeral.BUS_CD_C_CLI.Close;
    dmGeral.BUS_CD_C_CLI.Data :=
    dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));


    if dmGeral.BUS_CD_C_CLI.IsEmpty then
       begin
         ShowMessage('Cliente não encontrado.');
         dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text :='';
         txtCliente.SetFocus;
         abort;
       end;

    if dmGeral.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger = 0 then
       begin
         ShowMessage('O campo "Cliente" deve ser preenchido.');
         dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text :='';
         txtCliente.SetFocus;
         abort;
       end;
    {
    if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
       begin
         dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text :='';
         txtCliente.SetFocus;
         abort;
       end; }

    dmGeral.BUS_CD_M_REC.Close;
    dmGeral.BUS_CD_M_REC.Data :=
        dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([123,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                                         txtCliente.Text,'']));
    if not dmGeral.BUS_CD_M_REC.IsEmpty then
       begin
         mens := '';
         while not dmGeral.BUS_CD_M_REC.eof do
            begin
              mens := mens + '-> Controle: ' + dmGeral.BUS_CD_M_REC.FieldByName('id_titulo').AsString + ' - ' +
                             'Nro título: ' + dmGeral.BUS_CD_M_REC.FieldByName('num_parcela').AsString + ' - ' +
                             'Vencto: ' + dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsString + ';' +  #13;
              dmGeral.BUS_CD_M_REC.Next;
            end;
         mens := 'Por favor verificar a situação deste cliente, pois ele possui duplicatas que foram baixadas mas continuam em protesto/SPC: '+ #13 +
                 mens;

         showmessage(mens);
         dmGeral.BUS_CD_M_REC.Close;
       end;

    dmGeral.FIN_CD_M_RBX.FieldByName('INT_NOMECLI').Text :=
         dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

    dmGeral.FIN_CD_M_RBX.FieldByName('INT_DOCCNPJCPF').Text :=
         dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;

end;

procedure TFIN_FM_M_RBX.txtEmitenteExit(Sender: TObject);
var
  id_controle: integer;
  vencimento: TDate;
  valor: Currency;
  che_banco,che_agencia,che_conta,che_cheque,che_emitente: String;
begin
  inherited;

   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBanco.Focused         or dgNovoTit.Focused        or
     txtAgencia.Focused       or txtContaCorrente.Focused or
     txtNCheque.Focused       or txtEmitente.Focused      or
     dpkVencimentoChe.Focused or txtVlrPagoChe.Focused    then
     begin
       abort;
     end;

  id_controle   := dmGeral.FIN_CD_M_RBX_GER.FieldByName('id_controle').AsInteger;
  vencimento    := dmGeral.FIN_CD_M_RBX_GER.FieldByName('dta_vencimento').AsDateTime;
  valor         := dmGeral.FIN_CD_M_RBX_GER.FieldByName('vlr_pagamento').AsCurrency;
  che_banco     := dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_banco').AsString;
  che_agencia   := dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_agencia').AsString;
  che_conta     := dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_conta').AsString;
  che_cheque    := dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_cheque').AsString;
  che_emitente  := dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_emitente').AsString;

  dmGeral.FIN_CD_M_RBX_GER.cancel;

  dmGeral.FIN_CD_M_RBX_GER.First;
  while not dmGeral.FIN_CD_M_RBX_GER.eof do
     begin
       if (id_controle  <> dmGeral.FIN_CD_M_RBX_GER.FieldByName('id_controle').AsInteger)    and
          (che_banco    = dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_banco').AsString)   and
          (che_agencia  = dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_agencia').AsString) and
          (che_conta    = dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_conta').AsString)   and
          (che_cheque   = dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_cheque').AsString)  then
          begin
            ShowMessage('Já existe um outro cheque com esses mesmos dados.');
            dmGeral.FIN_CD_M_RBX_GER.Locate('id_controle',id_controle,[]);
            exit;
          end;
       dmGeral.FIN_CD_M_RBX_GER.Next;
     end;

   dmGeral.BUS_CD_M_REC.Close;
    dmGeral.BUS_CD_M_REC.Data :=
    dmGeral.BUS_CD_M_REC.DataRequest(
            VarArrayOf([13,dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').AsString,
                           che_cheque,che_conta,che_banco,che_agencia]));

    if not dmGeral.BUS_CD_M_REC.EOF then
      begin
        ShowMessage('Já existe um outro cheque com esses mesmos dados.');
        dmGeral.FIN_CD_M_RBX_GER.Locate('id_controle',id_controle,[]);
        exit;
      end;



  if dmGeral.FIN_CD_M_RBX_GER.Locate('id_controle',id_controle,[]) then
     dmGeral.FIN_CD_M_RBX_GER.edit
  else
     dmGeral.FIN_CD_M_RBX_GER.Insert;

  dmGeral.FIN_CD_M_RBX_GER.FieldByName('id_controle').AsInteger     := id_controle;
  dmGeral.FIN_CD_M_RBX_GER.FieldByName('dta_vencimento').AsDateTime := vencimento;
  dmGeral.FIN_CD_M_RBX_GER.FieldByName('vlr_pagamento').AsCurrency  := valor;
  dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_banco').AsString        := che_banco;
  dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_agencia').AsString      := che_agencia;
  dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_conta').AsString        := che_conta;
  dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_cheque').AsString       := che_cheque;
  dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_emitente').AsString     := che_emitente;
  // Geração de Cheque
  // if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6 then
  //    begin
  dmGeral.FIN_CD_M_RBX_GER.Post;

  pnlNovoTit.Enabled := False;

  ActiveControl        := nil;
  PostMessage(btn_Add_Cheques.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Cheques.SetFocus;
  //    end;
end;

procedure TFIN_FM_M_RBX.txtNTituloButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_RBX_TIT := TPSQ_FM_X_RBX_TIT.Create(Self);
   PSQ_FM_X_RBX_TIT.ShowModal;
   if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_rec_n_tit').AsBoolean = true)) then
     begin
      if not dmGeral.BUS_CD_M_REC.IsEmpty then
         begin
           ExibirDadosTit;
         end;
     end
   else
     begin
       if (dmGeral.FIN_CD_M_RBX_TIT.RecordCount >0) then
         begin
           pnlTitulos.Enabled := true;
           dmGeral.FIN_CD_M_RBX_TIT.First;
           dmGeral.FIN_CD_M_RBX_TIT.Edit;
           if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 7 then
              if txtVlrCredito.CanFocus then
                 txtVlrCredito.SetFocus
           else
              if txtVlrPago.CanFocus then
                 txtVlrPago.SetFocus;
         end;
     end;
   PSQ_FM_X_RBX_TIT.Free;
end;

procedure TFIN_FM_M_RBX.txtNTituloExit(Sender: TObject);
var
  id_titulo: string;
begin
  inherited;

  if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Titulos.Focused then
          exit;

       if grdTitulos.Focused then
          exit;

       if not grdTitulosIButton.Enabled then
          exit;

       if (txtVlrJuros.Focused) or
          (txtPerDesconto.Focused) or (txtVlrDesconto.Focused) or
          (txtVlrCredito.Focused) or (txtVlrPago.Focused) then
           begin
             ShowMessage('O campo "Controle" deve ser prenchido.');
             txtNTitulo.SetFocus;
             exit;
           end
       else
           begin
             pnlTitulos.Enabled := false;
             exit;
           end;
     end
  else
     begin
       if dmGeral.FIN_CD_M_RBX_TIT.state in [dsBrowse] then
          dmGeral.FIN_CD_M_RBX_TIT.edit;
     end;


 { dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
  dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([0, dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').AsString
                                                 ,dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString]));
  if dmGeral.BUS_CD_M_REC.IsEmpty then
     begin
       Showmessage('Título não encontrado.');
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := '';
       txtNTitulo.SetFocus;
       exit;
     end; }



  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_rec_n_emp').AsBoolean then
     begin
        dmGeral.BUS_CD_M_REC.Close;
        dmGeral.BUS_CD_M_REC.Data :=
        dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([107,
                       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString]));

        if not dmGeral.BUS_CD_M_REC.IsEmpty then
           begin
             if dmGeral.BUS_CD_M_REC.FieldByName('id_cliente').AsInteger <>
                dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').AsInteger  then
                begin
                  dmGeral.BUS_CD_M_REC.Close;
                  Showmessage('Este título não pertence a este cliente.');
                  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := '';
                  txtNTitulo.SetFocus;
                  exit;
                end;
           end;
     end
  else
     begin
        dmGeral.BUS_CD_M_REC.Close;
        dmGeral.BUS_CD_M_REC.Data :=
        dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([118,
                       dmGeral.FIN_CD_M_RBX.FieldByName('ID_EMPRESA').AsString,
                       dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').AsString,
                       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString]));
     end;
  if dmGeral.BUS_CD_M_REC.IsEmpty then
     begin
       Showmessage('Título não encontrado.');
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := '';
       txtNTitulo.SetFocus;
       exit;
     end
  else
     begin
        if ((dmgeral.BUS_CD_M_REC.FieldByName('DCT_ID_DESC').AsString <>'') and
            (dmgeral.BUS_CD_M_REC.FieldByName('DCT_ID_DESC').AsInteger > 0)) then
          begin
            Showmessage('Foi feito operação de desconto do título.');
            dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := '';
            txtNTitulo.SetFocus;
            exit;
          end;

       if dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger <>
          dmGeral.BUS_CD_M_REC.FieldByName('id_empresa').AsInteger then
          begin
             if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_rec_n_emp').AsBoolean then
                begin
                   Showmessage('Você não tem permissão para baixar título da empresa: ' +
                               dmGeral.CAD_CD_C_PAR_BXR.FieldByName('id_empresa_bxr').AsString + '-'+
                               dmGeral.CAD_CD_C_PAR_BXR.FieldByName('int_fantasia').AsString);
                   dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := '';
                   txtNTitulo.SetFocus;
                   exit;
                end
             else
                begin
                  if dmGeral.CAD_CD_C_PAR_BXR.IsEmpty then
                     begin
                       Showmessage('Você não tem permissão para baixar título da empresa: ' +
                                   dmGeral.CAD_CD_C_PAR_BXR.FieldByName('id_empresa_bxr').AsString + '-'+
                                   dmGeral.CAD_CD_C_PAR_BXR.FieldByName('int_fantasia').AsString);
                       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := '';
                       txtNTitulo.SetFocus;
                       exit;
                     end
                  else
                     begin
                        if dmGeral.CAD_CD_C_PAR_BXR.Locate('id_empresa_bxr',dmGeral.BUS_CD_M_REC.FieldByName('id_empresa').AsInteger,[]) then
                           begin
                             if not dmGeral.CAD_CD_C_PAR_BXR.FieldByName('permite_baixar').AsBoolean then
                                begin
                                  Showmessage('Você não tem permissão para baixar título da empresa: ' +
                                   dmGeral.CAD_CD_C_PAR_BXR.FieldByName('id_empresa_bxr').AsString + '-'+
                                   dmGeral.CAD_CD_C_PAR_BXR.FieldByName('int_fantasia').AsString);
                                  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := '';
                                  txtNTitulo.SetFocus;
                                  exit;
                                end;
                           end;
                     end;
                end;
          end;

       if dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency <=0 then
          begin
            Showmessage('Título já foi quitado.');
            dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := '';
            txtNTitulo.SetFocus;
            exit;
          end;
     end;





  try
   pnlTitulos.onExit := nil;


  id_titulo := dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString;
  if dmGeral.FIN_CD_M_RBX_TIT.State in [dsInsert] then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.cancel;
       if dmGeral.FIN_CD_M_RBX_TIT.Locate('ID_TITULO', id_titulo,[]) then
          begin
            ShowMessage('Título já informado nessa baixa.');
            btn_Add_Titulos.SetFocus;
            exit;
          end
       else
          begin
            dmGeral.FIN_CD_M_RBX_TIT.Insert;
            dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString := id_titulo;
            ActiveControl := nil;
            PostMessage(txtVlrJuros.Handle, WM_SETFOCUS, 0, 0);
            txtVlrJuros.SetFocus;
          end;
     end;

  ExibirDadosTit;

  finally
     pnlTitulos.OnExit := pnlTitulosExit;
  end;
end;

procedure TFIN_FM_M_RBX.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFIN_FM_M_RBX.txtVlrCreditoExit(Sender: TObject);
begin
  inherited;


     if dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 7 then
          begin
             if dmgeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_CRED_UTILIZADO').AsCurrency <=0  then
               begin
                 SHowMessage('Valor do crédito deve ser maior zero.');
                 txtVlrCredito.SetFocus;
               end;
          end;

end;

procedure TFIN_FM_M_RBX.txtVlrPagoCheExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBanco.Focused or    dgNovoTit.Focused or
     txtAgencia.Focused or  txtContaCorrente.Focused or
     txtNCheque.Focused or txtEmitente.Focused or
     dpkVencimentoChe.Focused  then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FIN_CD_M_RBX_GER.FieldByName('vlr_pagamento').AsCurrency)) then
     begin
       txtVlrPagoChe.SetFocus;
       abort;
     end;

  // Geração de Cheque
  if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger <> 6 then
     begin
       dmGeral.FIN_CD_M_RBX_GER.Post;

       pnlNovoTit.Enabled := False;

       ActiveControl        := nil;
       PostMessage(btn_Add_Cheques.Handle, WM_SETFOCUS, 0, 0);
       btn_Add_Cheques.SetFocus;
     end;
end;

procedure TFIN_FM_M_RBX.txtVlrPagoExit(Sender: TObject);
//var
 // titulos: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if grdTitulos.Focused or txtPerDesconto.Focused or
     txtVlrDesconto.Focused or  txtVlrCredito.Focused or
     txtVlrJuros.Focused  then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency)) then
     begin
       txtVlrPago.SetFocus;
       abort;
     end;



  if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_RESTANTE').AsCurrency > 0) and
      (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime<
           dmGeral.FIN_CD_M_RBX.FieldByName('DTA_BAIXA').AsDateTime) then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('DTA_NOVO_VENC').AsDateTime :=
               dmGeral.FIN_CD_M_RBX.FieldByName('DTA_BAIXA').AsDateTime;
     end
   else
     begin
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('DTA_NOVO_VENC').AsDateTime :=
               dmGeral.FIN_CD_M_RBX_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime;
     end;




  dmGeral.FIN_CD_M_RBX_TIT.Post;
  pnlTitulos.Enabled := False;

  ActiveControl := nil;
  PostMessage(btn_Add_Titulos.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Titulos.SetFocus;
end;

end.
