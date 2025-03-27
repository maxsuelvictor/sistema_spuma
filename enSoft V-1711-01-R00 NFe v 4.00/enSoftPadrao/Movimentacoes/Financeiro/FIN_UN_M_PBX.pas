unit FIN_UN_M_PBX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Math, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Mask, JvExMask, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS,enFunc, JvExExtCtrls, JvExtComponent, JvPanel,
  vcl.Wwdbedit, Datasnap.DBClient, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TFIN_FM_M_PBX = class(TPAD_FM_X_PAD)
    lblFornecedor: TLabel;
    txtFornecedor: TJvDBComboEdit;
    txtFornecedorDescricao: TDBText;
    lblDataBaixa: TLabel;
    dpkDataBaixa: TJvDBDateEdit;
    lblCreditoDisponivel: TLabel;
    txtCreditoDisponivel: TDBEdit;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    lblObservacao: TLabel;
    gbTitulos: TGroupBox;
    btn_Add_Titulos: TBitBtn;
    grdTitulos: TwwDBGrid;
    grdTitulosIButton: TwwIButton;
    dsoTitulos: TwwDataSource;
    txtObservacao: TDBEdit;
    lblTipoFinanceiro: TLabel;
    cbbTipoFinanceiro: TwwDBLookupCombo;
    lblContaCorrente: TLabel;
    pnlTitulos: TPanel;
    lblNTitulo: TLabel;
    lblVencimento: TLabel;
    lblVlrTitulo: TLabel;
    lblPerDesconto: TLabel;
    lblVlrDesconto: TLabel;
    lblVlrCredito: TLabel;
    lblTotalPagar: TLabel;
    lblVlrPago: TLabel;
    lblVlrRestante: TLabel;
    txtPerDesconto: TDBEdit;
    txtVlrDesconto: TDBEdit;
    txtVlrCredito: TDBEdit;
    txtTotalPagar: TDBEdit;
    txtVlrPago: TDBEdit;
    txtVlrRestante: TDBEdit;
    txtNTitulo: TJvDBComboEdit;
    txtVlrJuros: TDBEdit;
    txtVlrMulta: TDBEdit;
    Label2: TLabel;
    btnVlrSaldo: TDBEdit;
    lblPlanoContas: TLabel;
    lblCentroCusto: TLabel;
    cbbPlanoContas: TwwDBLookupCombo;
    cbbCentroCusto: TwwDBLookupCombo;
    txtSaldoCredito: TDBEdit;
    Label1: TLabel;
    FIN_FR_M_PBX: TfrxReport;
    PAD_XL_C_REL: TfrxXLSExport;
    PAD_PD_C_REL: TfrxPDFExport;
    FIN_DB_M_PBX: TfrxDBDataset;
    FIN_DB_M_PBX_TIT: TfrxDBDataset;
    Label4: TLabel;
    txtDataCxa: TEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    cbbContaCorrente: TwwDBLookupCombo;
    gbNovosTitulos: TGroupBox;
    dgNovoTit: TwwDBGrid;
    pnlNovoTit: TPanel;
    dpkVencimento: TJvDBDateEdit;
    lblNTVencimento: TLabel;
    txtNTVlrPago: TwwDBEdit;
    lblNTVlrPago: TLabel;
    btnAddNovosTitulos: TBitBtn;
    dgIButtonNovoTitulo: TwwIButton;
    dsoTitulosNovos: TwwDataSource;
    FIN_DB_M_PBX_GER: TfrxDBDataset;
    txtTotalPago: TDBEdit;
    lblTotalPago: TLabel;
    txtTotalCreditoUtil: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    txtTotalGeralPagar: TwwDBEdit;
    txtNCheque: TwwDBEdit;
    lblNCheque: TLabel;
    FIN_FR_M_PBX_CHE: TfrxReport;
    btnImprimirCopiaChe: TcxButton;
    txtTotNovTit: TwwDBEdit;
    Label6: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure txtNTituloButtonClick(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure btn_Add_TitulosClick(Sender: TObject);
    procedure grdTitulosIButtonClick(Sender: TObject);
    procedure txtVlrPagoExit(Sender: TObject);
    procedure grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure cbbTipoFinanceiroEnter(Sender: TObject);
    procedure pnlTitulosExit(Sender: TObject);
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure cbbCentroCustoEnter(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtNTituloExit(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure cbbContaCorrenteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddNovosTitulosClick(Sender: TObject);
    procedure pnlNovoTitExit(Sender: TObject);
    procedure dgIButtonNovoTituloClick(Sender: TObject);
    procedure dgNovoTitMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtNTVlrPagoExit(Sender: TObject);
    procedure dpkVencimentoExit(Sender: TObject);
    procedure txtNChequeExit(Sender: TObject);
    procedure FIN_DB_M_PBX_GERCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure btnImprimirCopiaCheClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirDadosTit;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    var
      xCodFpg:string;

  public
    { Public declarations }
  end;

var
  FIN_FM_M_PBX: TFIN_FM_M_PBX;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_PBX_TIT, PSQ_UN_X_FOR, FIN_RN_M_PBX, uProxy;

procedure TFIN_FM_M_PBX.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PBX);
  HabilDesabCampos(true,clWindow);
  txtFornecedor.SetFocus;

  dmGeral.BUS_CD_M_CXA.Close;
  dmGeral.BUS_CD_M_CXA.Data :=
  dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));

  if not dmGeral.BUS_CD_M_CXA.IsEmpty then
     begin
       txtDataCxa.Text := dmGeral.BUS_CD_M_CXA.FieldByName('dta_abertura').AsString;
     end;

  btnImprime.Enabled := False;
  btnImprimirCopiaChe.Enabled := False;
  pnlTitulos.Enabled := False;

  lblNCheque.Visible := false;
  txtNCheque.Visible := false;
end;




procedure TFIN_FM_M_PBX.acAlterarExecute(Sender: TObject);
var
  SMPrincipal: TSMClient;
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PBX) then
      begin
        inherited;
        HabilDesabCampos(false,$00DADADA);
        pnlTitulos.Enabled := False;
        btnImprime.Enabled := False;
        btnImprimirCopiaChe.Enabled := False;
        gbNovosTitulos.Enabled := false;
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.FIN_CD_M_PBX.FieldByName('vlr_saldo_credito').AsCurrency :=
                  SMPrincipal.enVerCreditoForn(dmGeral.FIN_CD_M_PBX.FieldByName('ID_FORNECEDOR').asString);

          dmGeral.FIN_CD_M_PBX.FieldByName('vlr_credito_disponivel').AsCurrency :=
                    dmGeral.FIN_CD_M_PBX.FieldByName('vlr_saldo_credito').AsCurrency +
                    dmGeral.FIN_CD_M_PBX.FieldByName('vlr_credito_utilizado').AsCurrency;
        finally
          FreeAndNil(SMPrincipal);
        end;

        txtNCheque.Visible := false;
        lblNCheque.Visible := false;
         // Geração da Duplicata, Promissória , Cartão de crédito , Boleto e Cheque
        if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger in [1,2,3,4,6] then
           begin
             gbNovosTitulos.Enabled := true;
             cbbPlanoContas.Enabled := true;
             if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger = 6 then  //doc impresso = cheque
               begin
                 txtNCheque.Visible := true;
                 lblNCheque.Visible := true;
               end;
           end
         else
           begin
              cbbPlanoContas.Enabled := false;
           end;
        txtObservacao.SetFocus;
      end;
end;

procedure TFIN_FM_M_PBX.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PBX) then
     begin
       inherited;
       btnImprime.Enabled := True;
       btnImprimirCopiaChe.Enabled := true;
       dbGrid.SetFocus;
     end
  else
     begin
       btnImprime.Enabled := False;
       txtObservacao.SetFocus;
     end;
end;

procedure TFIN_FM_M_PBX.acExcluirExecute(Sender: TObject);
begin

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PBX);
  btnImprime.Enabled := True;

end;

procedure TFIN_FM_M_PBX.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  FIN_RN_M_PBX.FinOutrasValPbx;

  codigo := dmGeral.FIN_CD_M_PBX.FieldByName('ID_BAIXA').AsString;
  DmGeral.Grava(dmGeral.FIN_CD_M_PBX);

  inherited;

  dmGeral.FIN_CD_M_PBX.Close;
  dmGeral.FIN_CD_M_PBX.Data :=
  dmGeral.FIN_CD_M_PBX.DataRequest(
          VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,codigo]));

  btnImprime.Enabled := True;
  btnImprimirCopiaChe.Enabled := True;
end;

procedure TFIN_FM_M_PBX.btnAddNovosTitulosClick(Sender: TObject);
begin
  inherited;
   pnlNovoTit.Enabled  := True;
  dmGeral.FIN_CD_M_PBX_GER.Insert;
  dpkVencimento.SetFocus;
end;

procedure TFIN_FM_M_PBX.btn_Add_TitulosClick(Sender: TObject);
begin
  inherited;
  pnlTitulos.Enabled := True;
  dmGeral.FIN_CD_M_PBX_TIT.Insert;
  txtNTitulo.Enabled := true;
  txtNTitulo.SetFocus;
end;

procedure TFIN_FM_M_PBX.btnFiltroClick(Sender: TObject);
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

    dmGeral.FIN_CD_M_PBX.Close;
    dmGeral.FIN_CD_M_PBX.Data :=
    dmGeral.FIN_CD_M_PBX.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,xPesquisa]));
  finally
     Screen.Cursor := crDefault;
     btnImprime.Enabled := True;
  end;
end;

procedure TFIN_FM_M_PBX.btnImprimeClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
 

  if not dmGeral.FIN_CD_M_PBX.IsEmpty then
     begin
       PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
       FIN_FR_M_PBX.Variables['VlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_PBXvlr_baixa.AsCurrency));

       codigo := dmGeral.FIN_CD_M_PBXid_baixa.text;

       dmGeral.FIN_CD_M_PBX.Close;
       dmGeral.FIN_CD_M_PBX.Data :=
       dmGeral.FIN_CD_M_PBX.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));

       if ((dmGeral.FIN_CD_M_PBX.FieldByName('ID_RECIBO').IsNull) or
          (dmGeral.FIN_CD_M_PBX.FieldByName('ID_RECIBO').AsString = '')) then
          begin
            dmGeral.FIN_CD_M_PBX.Edit;
            SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
            try
               dmGeral.FIN_CD_M_PBX.FieldByName('ID_RECIBO').AsInteger :=
                             SMPrincipal.enValorChave('NUM_RCB_PBX');
            finally
               FreeAndNil(SMPrincipal);
            end;
            dmGeral.FIN_CD_M_PBX.Post;
            if (dmGeral.FIN_CD_M_PBX.ApplyUpdates(0) <> 0) then
              begin
                ShowMessage('Falha ao gerar nº do recibo.');
                exit;
              end;
          end;


       if FileExists(PathImg) then
          begin
             LogoEmpresa := TfrxPictureView(FIN_FR_M_PBX.FindObject('LogoEmpresa1'));
             if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
          end;

       FIN_FR_M_PBX.PrepareReport();
       FIN_FR_M_PBX.ShowReport();
     end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        Exit;
      end;
end;

procedure TFIN_FM_M_PBX.btnImprimirCopiaCheClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.FIN_CD_M_PBX.IsEmpty then
     begin

       dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_PBX.FieldByName('ID_FORMA_PAG').AsString);

       if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
          begin
             codigo := dmGeral.FIN_CD_M_PBXid_baixa.text;

             dmGeral.FIN_CD_M_PBX.Close;
             dmGeral.FIN_CD_M_PBX.Data :=
             dmGeral.FIN_CD_M_PBX.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));

             dmGeral.BusContaCorr(0,dmGeral.FIN_CD_M_PBX.FieldByName('ID_CONTA').AsString);


             FIN_FR_M_PBX_CHE.Variables['banco'] := QuotedStr(trim(dmGeral.BUS_CD_C_CTC.FieldByName('BANCO').AsString));
             FIN_FR_M_PBX_CHE.Variables['agencia'] := QuotedStr(trim(dmGeral.BUS_CD_C_CTC.FieldByName('AGENCIA').AsString));
             FIN_FR_M_PBX_CHE.Variables['conta_corrente'] := QuotedStr(trim(dmGeral.BUS_CD_C_CTC.FieldByName('CONTA_CORRENTE').AsString));
             FIN_FR_M_PBX_CHE.Variables['nome_banco'] := QuotedStr(trim(dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString));



             FIN_FR_M_PBX_CHE.Variables['dta_baixa_extenso'] := QuotedStr(DataExtenso(dmgeral.FIN_CD_M_PBXdta_baixa.AsDateTime));


             FIN_FR_M_PBX_CHE.PrepareReport();
             FIN_FR_M_PBX_CHE.ShowReport();
          end
        else
          begin
            ShowMessage('Impressão é somente para forma de pagamento em cheque.');
          end;
       dmGeral.BUS_CD_C_FPG.Close;
       dmGeral.BUS_CD_C_CTC.Close;
     end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        Exit;
      end;
end;

procedure TFIN_FM_M_PBX.cbbCentroCustoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCCusto(1,'%');
  cbbCentroCusto.DropDown;
end;

procedure TFIN_FM_M_PBX.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCxaBco(xFuncionario);
  cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_PBX.cbbContaCorrenteExit(Sender: TObject);
begin
  inherited;
  dpkDataBaixa.ReadOnly := true;
  dpkDataBaixa.Color    := $00DADADA;
  if dmGeral.BUS_CD_C_CXA_BCOtipo.AsInteger = 1 then
     begin
       dpkDataBaixa.ReadOnly := false;
       dpkDataBaixa.Color    := clWindow;
     end;

end;

procedure TFIN_FM_M_PBX.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  xCodFpg :=  dmgeral.FIN_CD_M_PBX.FieldByName('ID_FORMA_PAG').AsString;
  dmGeral.BusFormaPgtos(1,'%');
  cbbFormaPagamento.DropDown;
end;

procedure TFIN_FM_M_PBX.cbbFormaPagamentoExit(Sender: TObject);
begin
  inherited;

  {if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.FIN_CD_M_PBX.FieldByName('id_forma_pag').text = '' then
     begin
       Showmessage('O campo "Forma de pagamento de pagamento" deve ser preenchido.');
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_PBX.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.FIN_CD_M_PBX.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       abort;
     end; }



  gbNovosTitulos.enabled := false;

  txtNCheque.Visible := false;
  lblNCheque.Visible := false;
  if dmgeral.FIN_CD_M_PBX.FieldByName('ID_FORMA_PAG').AsInteger > 0 then
     begin
       dmgeral.FIN_CD_M_PBX_GER.cancel;
       dmgeral.FIN_CD_M_PBX_TIT.cancel;

       if (not dmgeral.FIN_CD_M_PBX_GER.IsEmpty) or (not dmgeral.FIN_CD_M_PBX_TIT.IsEmpty) then
          begin

            if (xCodFpg <> '') and (xCodFpg <> dmgeral.FIN_CD_M_PBX.FieldByName('ID_FORMA_PAG').AsString) then
               begin
                 if ( dmgeral.FIN_CD_M_PBX_GER.RecordCount > 0)  then
                     Showmessage('Não é permitido alterar a forma de pagamento com NOVOS títulos já informado na baixa.')
                 else
                    if (dmgeral.FIN_CD_M_PBX_TIT.RecordCount > 0) then
                        Showmessage('Não é permitido alterar a forma de pagamento com títulos já informado na baixa.');

                 dmgeral.FIN_CD_M_PBX.FieldByName('ID_FORMA_PAG').AsString := xCodFpg;
                 //exit;
               end;
          end;


       // Geração da Duplicata, Promissória , Cartão de crédito , Boleto e Cheque
       if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger in [1,2,3,4,6] then
          begin
            gbNovosTitulos.enabled := true;

            pnlNovoTit.Enabled := false;

            if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger = 6 then  //doc impresso = cheque
               begin
                 pnlNovoTit.Enabled := true;
                 txtNCheque.Visible := true;
                 lblNCheque.Visible := true;
               end;

            ShowMessage('Informação: ' + #13 +
                        'Utilizando esta forma de pagamento a baixa será uma "Substituição".');
            cbbPlanoContas.Enabled := true;
          end
       else
          begin
            cbbPlanoContas.Enabled := false;
            dmGeral.FIN_CD_M_PBX.FieldByName('ID_PLANO').AsString := '';
          end;


       ActiveControl        := nil;
       PostMessage(cbbTipoFinanceiro.Handle, WM_SETFOCUS, 0, 0);


       if (dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 1) or   // Duplicata
          (dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 2) or   // Promissória
          (dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3) or   // Cartão
          (dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 4) or   // Boleto
          (dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6) then // Cheque
          begin
            dmGeral.FIN_CD_M_PBX.FieldByName('OBSERVACAO').Text := 'Subst. ref. baixa: '+
              dmGeral.FIN_CD_M_PBX.FieldByName('ID_BAIXA').Text+', ' +
              'CNPJ/CPF: ' + dmGeral.FIN_CD_M_PBX.FieldByName('int_doccnpj').Text + ' - ' +
              dmGeral.FIN_CD_M_PBX.FieldByName('INT_NOMEFOR').Text;
          end
       else
          begin
            dmGeral.FIN_CD_M_PBX.FieldByName('OBSERVACAO').Text := 'Pagto ref. baixa: ' +
              dmGeral.FIN_CD_M_PBX.FieldByName('ID_BAIXA').Text+', ' +
              'CNPJ/CPF: ' + dmGeral.FIN_CD_M_PBX.FieldByName('int_doccnpj').Text + ' - ' +
              dmGeral.FIN_CD_M_PBX.FieldByName('INT_NOMEFOR').Text;
          end;


       cbbTipoFinanceiro.SetFocus;
     end;

end;

procedure TFIN_FM_M_PBX.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';

  if cbbPesquisa.ItemIndex in [2]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 144;
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

procedure TFIN_FM_M_PBX.cbbPlanoContasEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BusPlanoCta(90,' '''+'1'+''','''+'4'+''' ');
  dmGeral.BusPlanoCtaExp11(90,' '''+'1'+''','''+'4'+''' ');
  cbbPlanoContas.DropDown;
end;

procedure TFIN_FM_M_PBX.cbbTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFin(90,'0');
  cbbTipoFinanceiro.DropDown;
end;

procedure TFIN_FM_M_PBX.dgIButtonNovoTituloClick(Sender: TObject);
begin
  inherited;
   try
     dgIButtonNovoTitulo.Enabled := False;
     if dmGeral.FIN_CD_M_PBX_GER.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FIN_CD_M_PBX_GER.Delete;
     dmGeral.FIN_CD_M_PBX_GER.Edit;
  finally
    dgIButtonNovoTitulo.Enabled := True;
  end;
end;

procedure TFIN_FM_M_PBX.dgNovoTitMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   if pnlNovoTit.Enabled = False then
     pnlNovoTit.Enabled := True;

  dmGeral.FIN_CD_M_PBX_GER.cancel;

  if dmGeral.FIN_CD_M_PBX_GER.IsEmpty then
     begin
       dmGeral.FIN_CD_M_PBX_GER.Append;

       pnlNovoTit.Enabled := True;

       dpkVencimento.SetFocus;
     end
  else
    begin
     dmGeral.FIN_CD_M_PBX_GER.Edit;
     pnlNovoTit.Enabled := True;
     dpkVencimento.SetFocus;
    end;
end;

procedure TFIN_FM_M_PBX.dpkVencimentoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


    if (dmGeral.FIN_CD_M_PBX_GER.FieldByName('DTA_VENCIMENTO').AsString ='')  then
     begin
        dpkVencimento.SetFocus;
        ShowMessage('O campo "Vencimento" deve ser preenchido.');
        abort;
     end;


   if (abs(dmGeral.FIN_CD_M_PBX_GER.FieldByName('DTA_VENCIMENTO').AsDateTime -
     dmGeral.FIN_CD_M_PBX.FieldByName('DTA_BAIXA').AsDateTime)> 1825)  then
     begin
        dpkVencimento.SetFocus;
        ShowMessage('Data de vencimento não pode ser menor ou maior em mais de 5 anos da data da baixa.');
        abort;
     end;
end;

procedure TFIN_FM_M_PBX.dsoStateChange(Sender: TObject);
begin
  inherited;
  if (dso.DataSet.State in [dsInsert]) Then
     begin
       txtFornecedor.Enabled:=true;
     end
  else if (dso.DataSet.State in [dsEdit]) Then
     begin
       txtFornecedor.Enabled:=false;
     end;

 { if not dso.DataSet.IsEmpty then
     begin
       if dmGeral.FIN_CD_M_PBX.FieldByName('id_conta').AsInteger > 0 then
          begin
            dmGeral.BusCxaBco(0,dmGeral.FIN_CD_M_PBX.FieldByName('id_conta').AsString);
          end;
     end;   }
end;

procedure TFIN_FM_M_PBX.ExibirDadosTit;
begin
  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_TITULO').AsString;

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('INT_COD_PLANO').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_PLANO').AsString;

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('INT_NOMEPCT').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('INT_NOMEPCT').AsString;

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('INT_HISTORICO').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('HISTORICO').AsString;

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency;

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('num_parcela').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('num_parcela').AsString;

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('dta_vencimento').AsDateTime :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime;

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('atraso').AsInteger := 0;
  if  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime<xDataSis then
      begin
        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('atraso').AsFloat:=
           (xDataSis - dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime);
      end;

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_juros').asCurrency:=
    RoundTo( (((dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency*
        dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_juros').AsCurrency)/100)/30)*
        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('atraso').AsFloat,-2);

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_multa').asCurrency:=
    RoundTo( ((dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency*
       dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_multa').AsCurrency)/100),-2);
end;

procedure TFIN_FM_M_PBX.FIN_DB_M_PBX_GERCheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
  FIN_FR_M_PBX_CHE.Variables['valor_extenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_PBX_GERvlr_pagamento.AsCurrency));
end;

procedure TFIN_FM_M_PBX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_PBX.Close;
  FreeAndNil(FIN_FM_M_PBX);
end;

procedure TFIN_FM_M_PBX.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_PBX.Close;
  dmGeral.FIN_CD_M_PBX.Data := dmGeral.FIN_CD_M_PBX.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_PBX.Open;

  btnImprime.Enabled := True;
  dmGeral.BusCxaBco(xFuncionario);
  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusTipoFin(90,'0');
  dmGeral.BusPlanoCtaExp11(90,' '''+'1'+''','''+'4'+''' ');

  dmGeral.BusCCusto(1,'%');
end;

procedure TFIN_FM_M_PBX.FormShow(Sender: TObject);
begin
  inherited;
  txtPesquisa.SetFocus;
  cbbPesquisaChange(self);
end;

procedure TFIN_FM_M_PBX.grdTitulosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdTitulosIButton.Enabled := False;
     if dmGeral.FIN_CD_M_PBX_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.FIN_CD_M_PBX_TIT.Delete;
     dmGeral.FIN_CD_M_PBX_TIT.Edit;
  finally
    grdTitulosIButton.Enabled := True;
  end;
end;

procedure TFIN_FM_M_PBX.grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlTitulos.Enabled = False then
     pnlTitulos.Enabled := True;

  dmGeral.FIN_CD_M_PBX_TIT.Cancel;

  if dmGeral.FIN_CD_M_PBX_TIT.IsEmpty then
     begin

       dmGeral.FIN_CD_M_PBX_TIT.Append;

       pnlTitulos.Enabled := true;

       txtNTitulo.Enabled := true;
       txtNTitulo.SetFocus;
     end
  else
    begin
     dmGeral.FIN_CD_M_PBX_TIT.Edit;
     pnlTitulos.Enabled := True;
     txtNTitulo.Enabled := False;
     txtPerDesconto.SetFocus;
    end;
end;

procedure TFIN_FM_M_PBX.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  txtFornecedor.Enabled := Estado;
  txtFornecedor.Color   := Cor;
end;

procedure TFIN_FM_M_PBX.pnlNovoTitExit(Sender: TObject);
begin
  inherited;
   if (btnAddNovosTitulos.Focused) or (dgNovoTit.Focused) or (not dgIButtonNovoTitulo.Enabled) then
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

        dmGeral.FIN_CD_M_PBX_GER.Cancel;
        dmGeral.FIN_CD_M_PBX_GER.edit;

        finally
           pnlNovoTit.Enabled := False;
        end;
      end;
end;

procedure TFIN_FM_M_PBX.pnlTitulosExit(Sender: TObject);
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
        dmGeral.FIN_CD_M_PBX_TIT.Cancel;
        dmGeral.FIN_CD_M_PBX_TIT.edit;

        finally
           pnlTitulos.Enabled := False;
        end;
      end;
end;

procedure TFIN_FM_M_PBX.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   tipo_pesquisa := 1;
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.FIN_CD_M_PBX.FieldByName('ID_FORNECEDOR').AsString :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;

           dmGeral.FIN_CD_M_PBX.FieldByName('INT_NOMEFOR').Text :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TFIN_FM_M_PBX.txtFornecedorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  dmGeral.FIN_CD_M_PBX.FieldByName('INT_NOMEFOR').Text := '';

  if dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').Text = '' then
     begin
       ShowMessage('O campo "Fornecedor" deve ser prenchido.');
       txtFornecedor.SetFocus;
       abort;
     end;

  dmGeral.BUS_CD_C_FOR.Close;
  dmGeral.BUS_CD_C_FOR.Data :=
  dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtFornecedor.Text]));


  if dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
       ShowMessage('Fornecedor não encontrado.');
       exit;
     end;

  dmGeral.FIN_CD_M_PBX.FieldByName('INT_NOMEFOR').Text :=
     dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

  dmGeral.FIN_CD_M_PBX.FieldByName('int_doccnpj').Text :=
     dmGeral.BUS_CD_C_FOR.FieldByName('doc_cnpj').AsString;
end;

procedure TFIN_FM_M_PBX.txtNChequeExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if  dgNovoTit.Focused or dpkVencimento.Focused or txtNTVlrPago.Focused  then
     begin
       abort;
     end;


  dmGeral.FIN_CD_M_PBX_GER.Post;
end;

procedure TFIN_FM_M_PBX.txtNTituloButtonClick(Sender: TObject);
begin
  inherited;
  {PSQ_FM_X_PBX_TIT := TPSQ_FM_X_PBX_TIT.Create(Self);
  xChamada := 1;
  PSQ_FM_X_PBX_TIT.xTitulos := '';
  PSQ_FM_X_PBX_TIT.ShowModal;
  if not dmGeral.BUS_CD_M_PAG_TIT.IsEmpty then
     begin
       ExibirDadosTit;
     end;
  PSQ_FM_X_PBX_TIT.Free;}


  PSQ_FM_X_PBX_TIT := TPSQ_FM_X_PBX_TIT.Create(Self);
  xChamada := 1;
  PSQ_FM_X_PBX_TIT.xTitulos := '';
  PSQ_FM_X_PBX_TIT.ShowModal;
  if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_tit').AsBoolean = true)) then
     begin
      if not dmGeral.BUS_CD_M_PAG_TIT.IsEmpty then
         begin
           ExibirDadosTit;
         end;
     end
  else
     begin
       if (dmGeral.FIN_CD_M_PBX_TIT.RecordCount >0) then
         begin
           pnlTitulos.Enabled := true;
           dmGeral.FIN_CD_M_PBX_TIT.First;
           dmGeral.FIN_CD_M_PBX_TIT.Edit;
           txtVlrPago.SetFocus;
         end;
     end;
   PSQ_FM_X_PBX_TIT.Free;


end;

procedure TFIN_FM_M_PBX.txtNTituloExit(Sender: TObject);
var
  id_titulo: string;
begin
  inherited;

  if dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').Text = '' then
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

       if (txtVlrJuros.Focused) or (txtVlrMulta.Focused) or
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
       if dmGeral.FIN_CD_M_PBX_TIT.state in [dsBrowse] then
          dmGeral.FIN_CD_M_PBX_TIT.edit;
     end;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_emp').AsBoolean then
     begin
        dmGeral.BUS_CD_M_PAG_TIT.Close;
        dmGeral.BUS_CD_M_PAG_TIT.Data :=
        dmGeral.BUS_CD_M_PAG_TIT.DataRequest(VarArrayOf([0,
                       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString]));

        if not dmGeral.BUS_CD_M_PAG_TIT.IsEmpty then
           begin
             if dmGeral.BUS_CD_M_PAG_TIT.FieldByName('id_fornecedor').AsInteger <>
                dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').AsInteger  then
                begin
                  dmGeral.BUS_CD_M_PAG_TIT.Close;
                  Showmessage('Este título não pertence a este fornecedor.');
                  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString := '';
                  txtNTitulo.SetFocus;
                  exit;
                end;
           end;
     end
  else
     begin
        dmGeral.BUS_CD_M_PAG_TIT.Close;
        dmGeral.BUS_CD_M_PAG_TIT.Data :=
        dmGeral.BUS_CD_M_PAG_TIT.DataRequest(VarArrayOf([95,
                       dmGeral.FIN_CD_M_PBX.FieldByName('ID_EMPRESA').AsString,
                       dmGeral.FIN_CD_M_PBX.FieldByName('ID_FORNECEDOR').AsString,
                       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString]));
     end;
  if dmGeral.BUS_CD_M_PAG_TIT.IsEmpty then
     begin
       Showmessage('Título não encontrado.');
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString := '';
       txtNTitulo.SetFocus;
       exit;
     end
  else
     begin
       if dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger <>
          dmGeral.BUS_CD_M_PAG_TIT.FieldByName('id_empresa').AsInteger then
          begin
             if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_emp').AsBoolean then
                begin
                   Showmessage('Você não tem permissão para baixar título da empresa: ' +
                               dmGeral.CAD_CD_C_PAR_BXP.FieldByName('id_empresa_bxp').AsString + '-'+
                               dmGeral.CAD_CD_C_PAR_BXP.FieldByName('int_fantasia').AsString);
                   dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString := '';
                   txtNTitulo.SetFocus;
                   exit;
                end
             else
                begin
                  if dmGeral.CAD_CD_C_PAR_BXP.IsEmpty then
                     begin
                       Showmessage('Você não tem permissão para baixar título da empresa: ' +
                                   dmGeral.CAD_CD_C_PAR_BXP.FieldByName('id_empresa_bxp').AsString + '-'+
                                   dmGeral.CAD_CD_C_PAR_BXP.FieldByName('int_fantasia').AsString);
                       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString := '';
                       txtNTitulo.SetFocus;
                       exit;
                     end
                  else
                     begin
                        if dmGeral.CAD_CD_C_PAR_BXP.Locate('id_empresa_bxp',dmGeral.BUS_CD_M_PAG_TIT.FieldByName('id_empresa').AsInteger,[]) then
                           begin
                             if not dmGeral.CAD_CD_C_PAR_BXP.FieldByName('permite_baixar').AsBoolean then
                                begin
                                  Showmessage('Você não tem permissão para baixar título da empresa: ' +
                                   dmGeral.CAD_CD_C_PAR_BXP.FieldByName('id_empresa_bxp').AsString + '-'+
                                   dmGeral.CAD_CD_C_PAR_BXP.FieldByName('int_fantasia').AsString);
                                  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString := '';
                                  txtNTitulo.SetFocus;
                                  exit;
                                end;
                           end;
                     end;
                end;
          end;

       if dmGeral.BUS_CD_M_PAG_TIT.FieldByName('VLR_SALDO').AsCurrency <=0 then
          begin
            Showmessage('Título já foi quitado.');
            dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString := '';
            txtNTitulo.SetFocus;
            exit;
          end;
     end;

  try
   pnlTitulos.onExit := nil;


  id_titulo := dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString;
  if dmGeral.FIN_CD_M_PBX_TIT.State in [dsInsert] then
     begin
       dmGeral.FIN_CD_M_PBX_TIT.cancel;
       if dmGeral.FIN_CD_M_PBX_TIT.Locate('ID_TITULO', id_titulo,[]) then
          begin
            ShowMessage('Título já informado nessa baixa.');
            btn_Add_Titulos.SetFocus;
            exit;
          end
       else
          begin
            dmGeral.FIN_CD_M_PBX_TIT.Insert;
            dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString := id_titulo;
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

procedure TFIN_FM_M_PBX.txtNTVlrPagoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if  dgNovoTit.Focused or dpkVencimento.Focused  then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FIN_CD_M_PBX_GER.FieldByName('vlr_pagamento').AsCurrency)) then
     begin
       txtNTVlrPago.SetFocus;
       abort;
     end;

  if txtNCheque.CanFocus then
     begin
       txtNCheque.SetFocus;
       exit;
     end;

  dmGeral.FIN_CD_M_PBX_GER.Post;
end;

procedure TFIN_FM_M_PBX.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFIN_FM_M_PBX.txtVlrPagoExit(Sender: TObject);
var
  titulos: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if btn_Add_Titulos.Focused or txtPerDesconto.Focused or txtVlrDesconto.Focused or
     txtVlrCredito.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency)) then
     begin
       txtVlrPago.SetFocus;
       abort;
     end;

  titulos := dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString;
  dmGeral.FIN_CD_M_PBX_TIT.Post;
  pnlTitulos.Enabled := False;
  btn_Add_Titulos.SetFocus;

  dmGeral.FIN_CD_M_PBX_TIT.locate('ID_TITULO',titulos,[]);
end;

end.
