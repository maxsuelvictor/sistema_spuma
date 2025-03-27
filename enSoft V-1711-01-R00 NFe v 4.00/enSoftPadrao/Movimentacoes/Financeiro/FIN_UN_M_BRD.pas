unit FIN_UN_M_BRD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.Wwdbedit, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  JvDBControls, vcl.wwdblook, Datasnap.DBClient, vcl.Wwdbdatetimepicker,
  Vcl.Buttons, enFunc, frxClass, frxDBSet, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TFIN_FM_M_BRD = class(TPAD_FM_X_PAD)
    gbTitulos: TGroupBox;
    lbPosPag: TLabel;
    lblContaCorrente: TLabel;
    cbbContaCorrente: TwwDBLookupCombo;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    cbbTipoFinanceiro: TwwDBLookupCombo;
    dpkDataBaixa: TJvDBDateEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    txtControle: TwwDBEdit;
    Label1: TLabel;
    lblDataBaixa: TLabel;
    lblTipoFinanceiro: TLabel;
    Label2: TLabel;
    txtDataCria: TJvDBDateEdit;
    Label3: TLabel;
    txtDataLib: TJvDBDateEdit;
    lblVendedor: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    txtObservacao: TDBMemo;
    grdTitulos: TwwDBGrid;
    FIN_CD_M_BRD: TClientDataSet;
    FIN_CD_M_BRDid_brd: TIntegerField;
    FIN_CD_M_BRDid_empresa: TIntegerField;
    FIN_CD_M_BRDdta_criacao: TDateField;
    FIN_CD_M_BRDhor_criacao: TTimeField;
    FIN_CD_M_BRDid_resp_criacao: TIntegerField;
    FIN_CD_M_BRDdta_lib: TDateField;
    FIN_CD_M_BRDhor_lib: TTimeField;
    FIN_CD_M_BRDid_resp_lib: TIntegerField;
    FIN_CD_M_BRDdta_bxa: TDateField;
    FIN_CD_M_BRDhor_bxa: TTimeField;
    FIN_CD_M_BRDid_resp_bxa: TIntegerField;
    FIN_CD_M_BRDvlr_a_pagar: TFMTBCDField;
    FIN_CD_M_BRDid_forma_pag: TIntegerField;
    FIN_CD_M_BRDid_tipo_financeiro: TIntegerField;
    FIN_CD_M_BRDobs: TWideStringField;
    FIN_CD_M_BRDid_conta: TIntegerField;
    FIN_CD_M_BRDid_abertura: TIntegerField;
    FIN_CD_M_BRDint_nomectc: TWideStringField;
    FIN_CD_M_BRDint_nometif: TWideStringField;
    FIN_CD_M_BRDint_nomefpg: TWideStringField;
    FIN_CD_M_BRDFIN_SQ_M_BRD_TIT: TDataSetField;
    FIN_CD_M_BRD_TIT: TClientDataSet;
    FIN_CD_M_BRD_TITid_brd: TIntegerField;
    FIN_CD_M_BRD_TITid_titulo: TIntegerField;
    FIN_CD_M_BRD_TITvlr_pagamento: TFMTBCDField;
    FIN_CD_M_BRD_TITvlr_juros: TFMTBCDField;
    FIN_CD_M_BRD_TITvlr_desconto: TFMTBCDField;
    FIN_CD_M_BRD_TITper_desconto: TFloatField;
    FIN_CD_M_BRD_TITvlr_a_pagar: TFMTBCDField;
    FIN_CD_M_BRD_TITvlr_restante: TFMTBCDField;
    FIN_CD_M_BRD_TITdta_vencimento: TDateField;
    FIN_CD_M_BRD_TITvlr_titulo: TFMTBCDField;
    FIN_CD_M_BRD_TITnum_parcela: TWideStringField;
    FIN_CD_M_BRD_TITvlr_multa: TFMTBCDField;
    FIN_CD_M_BRD_TITatraso: TIntegerField;
    FIN_CD_M_BRD_TITid_conta: TIntegerField;
    FIN_CD_M_BRD_TITid_plano: TWideStringField;
    FIN_CD_M_BRD_TITid_ccusto: TIntegerField;
    FIN_CD_M_BRD_TITint_nomepct: TWideStringField;
    FIN_CD_M_BRD_TITint_nomeccu: TWideStringField;
    dsBrdTit: TwwDataSource;
    Label7: TLabel;
    FIN_CD_M_BRDcod_lme: TWideStringField;
    FIN_CD_M_BRDrev_lme: TWideStringField;
    FIN_CD_M_BRDint_nomeresp_cria: TWideStringField;
    FIN_CD_M_BRDint_nomeresp_lib: TWideStringField;
    FIN_CD_M_BRDint_nomeresp_bxa: TWideStringField;
    txtHoraCria: TwwDBDateTimePicker;
    pnlTitulos: TPanel;
    lblNTitulo: TLabel;
    lblVencimento: TLabel;
    lblVlrTitulo: TLabel;
    lblPerDesconto: TLabel;
    lblVlrDesconto: TLabel;
    lblTotalPagar: TLabel;
    lblVlrPago: TLabel;
    lblVlrRestante: TLabel;
    Label8: TLabel;
    txtPerDesconto: TDBEdit;
    txtVlrDesconto: TDBEdit;
    txtTotalPagar: TDBEdit;
    txtVlrPago: TDBEdit;
    txtVlrRestante: TDBEdit;
    txtNTitulo: TJvDBComboEdit;
    txtVlrJuros: TDBEdit;
    txtVlrMulta: TDBEdit;
    btnVlrSaldo: TDBEdit;
    btn_Add_Titulos: TBitBtn;
    FIN_CD_M_BRD_TITint_nomefor: TWideStringField;
    grdTitulosIButton: TwwIButton;
    txtNomeFunCria: TDBText;
    txtNomeFunLib: TDBText;
    txtNomeFunBxa: TDBText;
    txtHoraLib: TwwDBDateTimePicker;
    txtHoraBxa: TwwDBDateTimePicker;
    cxBtnLib: TcxButton;
    cxBtnBxa: TcxButton;
    FIN_CD_M_BRDliberado: TBooleanField;
    FIN_CD_M_BRDbaixado: TBooleanField;
    FIN_CD_M_BRDcancelado: TBooleanField;
    FIN_CD_M_BRDid_resp_canc: TIntegerField;
    FIN_CD_M_BRDdta_canc: TDateField;
    FIN_CD_M_BRDint_nomeresp_can: TWideStringField;
    pnDadExt: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    cbbCCusto: TwwDBLookupCombo;
    cbbPContas: TwwDBLookupCombo;
    Button1: TButton;
    cxBtnCan: TcxButton;
    Panel2: TPanel;
    Label9: TLabel;
    Panel5: TPanel;
    Panel1: TPanel;
    Label10: TLabel;
    Panel3: TPanel;
    Label13: TLabel;
    Panel4: TPanel;
    Label14: TLabel;
    pmBrd: TPopupMenu;
    Rebrirborder1: TMenuItem;
    Label15: TLabel;
    Label16: TLabel;
    txtTotalJuros: TEdit;
    txtTotalMulta: TEdit;
    txtTotalDesc: TEdit;
    Label17: TLabel;
    lblTotalQuitado: TLabel;
    txtTotalPago: TEdit;
    FIN_FR_M_BRD: TfrxReport;
    FIN_DB_M_BRD: TfrxDBDataset;
    FIN_DB_M_BRD_TIT: TfrxDBDataset;
    FIN_CD_M_BRD_TITint_id_fornecedor: TIntegerField;
    FIN_CD_M_BRD_TITint_id_empresa: TIntegerField;
    BUS_CD_M_BRD_TIT_INT: TClientDataSet;
    cbbSituacao: TComboBox;
    txtPesquisaData: TJvDateEdit;
    procedure txtNTituloButtonClick(Sender: TObject);
    procedure txtNTituloExit(Sender: TObject);
    procedure pnlTitulosExit(Sender: TObject);
    procedure txtVlrPagoExit(Sender: TObject);
    procedure FIN_CD_M_BRD_TITvlr_jurosChange(Sender: TField);
    procedure FIN_CD_M_BRD_TITvlr_multaChange(Sender: TField);
    procedure FIN_CD_M_BRD_TITper_descontoChange(Sender: TField);
    procedure FIN_CD_M_BRD_TITvlr_descontoChange(Sender: TField);
    procedure FIN_CD_M_BRD_TITvlr_pagamentoChange(Sender: TField);
    procedure grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Add_TitulosClick(Sender: TObject);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure txtObservacaoEnter(Sender: TObject);
    procedure txtObservacaoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtnLibClick(Sender: TObject);
    procedure cbbTipoFinanceiroEnter(Sender: TObject);
    procedure cxBtnBxaClick(Sender: TObject);
    procedure FIN_CD_M_BRDNewRecord(DataSet: TDataSet);
    procedure FIN_CD_M_BRD_TITBeforeOpen(DataSet: TDataSet);
    procedure FIN_CD_M_BRD_TITNewRecord(DataSet: TDataSet);
    procedure grdTitulosDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbbCCustoEnter(Sender: TObject);
    procedure cbbPContasEnter(Sender: TObject);
    procedure grdTitulosIButtonClick(Sender: TObject);
    procedure FIN_CD_M_BRDBeforeEdit(DataSet: TDataSet);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cxBtnCanClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Rebrirborder1Click(Sender: TObject);
    procedure FIN_CD_M_BRD_TITAfterPost(DataSet: TDataSet);
    procedure dbGridRowChanged(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure FIN_CD_M_BRDBeforePost(DataSet: TDataSet);
    procedure FIN_CD_M_BRD_TITBeforePost(DataSet: TDataSet);
    procedure grdTitulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ExibirDadosTit;
    procedure AbrirBuscas;
    procedure ExibirTotais;
    var
      xCodFpg:string;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_BRD: TFIN_FM_M_BRD;
  xLiberaBordero: boolean;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_PBX_TIT, FIN_RN_M_BRD,uProxy;

procedure TFIN_FM_M_BRD.AbrirBuscas;
begin
  dmGeral.BusCxaBco(xFuncionario);
  // Formas de pagamento com doc_impresso = 5 - Dinheiro
  //                  e  tipo_pagamento = 0 - A vista  e  Gera caixa e banco = true

  dmGeral.BUS_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_FPG.Data :=
  dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([6, '''0''','''5''']));

  dmGeral.BusTipoFin(90,'0');
  dmGeral.BusCCusto(1,'%');
  dmGeral.BusPlanoCtaExp11(90,' '''+'1'+''','''+'4'+''' ');
end;

procedure TFIN_FM_M_BRD.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,FIN_CD_M_BRD);

  dmGeral.BUS_CD_M_CXA.Close;
  dmGeral.BUS_CD_M_CXA.Data :=
  dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));

  {if not dmGeral.BUS_CD_M_CXA.IsEmpty then
     begin
       txtDataCxa.Text := dmGeral.BUS_CD_M_CXA.FieldByName('dta_abertura').AsString;
     end;}

  btnImprime.Enabled := False;
  pnlTitulos.Enabled := False;

  cxBtnLib.Enabled   := False;
  cxBtnBxa.Enabled   := False;
  cxBtnCan.Enabled   := False;

  dmGeral.BusFuncionario2(0,IntToStr(xFuncionario));

  FIN_CD_M_BRD.FieldByName('int_nomeresp_cria').AsString  :=
       dmGeral.BUS_CD_C_FU2.FieldByName('nome').AsString;

  dmGeral.BUS_CD_C_FU2.Close;

  cbbContaCorrente.SetFocus;

  //lblNCheque.Visible := false;
  //txtNCheque.Visible := false;
end;

procedure TFIN_FM_M_BRD.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,FIN_CD_M_BRD) then
      begin
         if FIN_CD_M_BRD.FieldByName('baixado').AsBoolean then
             begin
               ShowMessage('Borderô já baixado!');
               FIN_CD_M_BRD.cancel;
               abort;
             end;

          if FIN_CD_M_BRD.FieldByName('liberado').AsBoolean then
             begin
               ShowMessage('Borderô já liberado!');
               FIN_CD_M_BRD.cancel;
               abort;
             end;

          inherited;

          pnlTitulos.Enabled := False;
          btnImprime.Enabled := False;

          cxBtnLib.Enabled   := False;
          cxBtnBxa.Enabled   := False;
          cxBtnCan.Enabled   := False;

        { // Geração da Duplicata, Promissória , Cartão de crédito , Boleto e Cheque
        if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger in [1,2,3,4,6] then
           begin
             gbNovosTitulos.Enabled := true;

             if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger = 6 then  //doc impresso = cheque
               begin
                 txtNCheque.Visible := true;
                 lblNCheque.Visible := true;
               end;


           end;}
        txtObservacao.SetFocus;
      end;
end;

procedure TFIN_FM_M_BRD.acCancelarExecute(Sender: TObject);
begin
  pnDadExt.Visible := false;
  gbTitulos.Enabled := true;
  if Botoes(dso.DataSet, TAction(Sender).Tag,FIN_CD_M_BRD) then
     begin
       inherited;
       btnImprime.Enabled := True;

       cxBtnLib.Enabled   := True;
       if not xLiberaBordero then
          cxBtnLib.Enabled := false;

       cxBtnBxa.Enabled   := True;
       cxBtnCan.Enabled   := True;
       dbGrid.SetFocus;
     end
  else
     begin
       btnImprime.Enabled := False;
       txtObservacao.SetFocus;
     end;
end;

procedure TFIN_FM_M_BRD.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  pnDadExt.Visible := false;
  gbTitulos.Enabled := true;

  FIN_RN_M_BRD.FinOutrasValRrd;

  codigo := FIN_CD_M_BRD.FieldByName('ID_BRD').AsString;
  DmGeral.Grava(FIN_CD_M_BRD);

  inherited;

  FIN_CD_M_BRD.Close;
  FIN_CD_M_BRD.Data :=
  FIN_CD_M_BRD.DataRequest(
          VarArrayOf([0,codigo]));

  btnImprime.Enabled := True;
  cxBtnLib.Enabled   := True;
  if not xLiberaBordero then
     cxBtnLib.Enabled := false;
  cxBtnBxa.Enabled   := True;
  cxBtnCan.Enabled   := True;

end;

procedure TFIN_FM_M_BRD.btnFiltroClick(Sender: TObject);
var
  xPesquisa:String;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
     if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;


    if cbbPesquisa.ItemIndex = 0 then
       begin
          FIN_CD_M_BRD.Close;
          FIN_CD_M_BRD.Data :=
          FIN_CD_M_BRD.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,xPesquisa]));
       end
    else if cbbPesquisa.ItemIndex = 5 then
       begin
          FIN_CD_M_BRD.Close;
          FIN_CD_M_BRD.Data :=
          FIN_CD_M_BRD.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,cbbSituacao.ItemIndex]));
       end
    else
       begin
          FIN_CD_M_BRD.Close;
          FIN_CD_M_BRD.Data :=
          FIN_CD_M_BRD.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,xPesquisa]));
       end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_BRD.btnImprimeClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  codigo: String;
begin
  inherited;

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

  if FIN_CD_M_BRD.IsEmpty then
     begin
       ShowMessage('Nenhum borderô foi selecionado!');
       exit;
     end;

  codigo := FIN_CD_M_BRD.FieldByName('id_brd').AsString;
  try

  FIN_CD_M_BRD.Filtered := true;
  FIN_CD_M_BRD.Filter   := ' id_brd = ' + codigo;

  if FileExists(PathImg) then
     begin
       LogoEmpresa := TfrxPictureView(FIN_FR_M_BRD.FindObject('imgEmpresa1'));
       if Assigned(LogoEmpresa) then
          LogoEmpresa.Picture.LoadFromFile(PathImg);
     end;
  dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_BRD.Name,xCodLme,xRevLme,nil);
  FIN_FR_M_BRD.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

  if FIN_CD_M_BRD.FieldByName('cancelado').AsBoolean then
     FIN_FR_M_BRD.Variables['ft_cancelado'] := QuotedStr('BORDERÔ CANCELADO')
  else
     FIN_FR_M_BRD.Variables['ft_cancelado'] := QuotedStr(' ');

  FIN_FR_M_BRD.PrepareReport();
  FIN_FR_M_BRD.ShowReport();

  finally
     FIN_CD_M_BRD.Filtered := false;
  end;

end;

procedure TFIN_FM_M_BRD.btn_Add_TitulosClick(Sender: TObject);
begin
  inherited;
  pnlTitulos.Enabled := True;
  FIN_CD_M_BRD_TIT.Insert;
  txtNTitulo.Enabled := true;
  txtNTitulo.SetFocus;
end;

procedure TFIN_FM_M_BRD.Button1Click(Sender: TObject);
begin
  inherited;
  pnDadExt.Visible := false;
  if FIN_CD_M_BRD_TIT.State in [dsInsert,dsEdit] then
     begin
       FIN_CD_M_BRD_TIT.FieldByName('int_nomeccu').AsString := dmGeral.BUS_CD_C_CCU.FieldByName('descricao').AsString;
       FIN_CD_M_BRD_TIT.FieldByName('int_nomepct').AsString := dmGeral.BUS_CD_C_PCT_EXP11.FieldByName('descricao').AsString;
       FIN_CD_M_BRD_TIT.Post;
     end;
  gbTitulos.Enabled := true;
  if btn_Add_Titulos.CanFocus then
     btn_Add_Titulos.SetFocus;
end;

procedure TFIN_FM_M_BRD.cbbCCustoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCCusto(1,'%');
  cbbCCusto.DropDown;
end;

procedure TFIN_FM_M_BRD.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCxaBco(xFuncionario);
  cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_BRD.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  xCodFpg :=  FIN_CD_M_BRD.FieldByName('ID_FORMA_PAG').AsString;
  // Formas de pagamento com doc_impresso = 5 - Dinheiro
  //                  e  tipo_pagamento = 0 - A vista  e  Gera caixa e banco = true

  dmGeral.BUS_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_FPG.Data :=
  dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([6, '''0''','''5''']));

  cbbFormaPagamento.DropDown;
end;

procedure TFIN_FM_M_BRD.cbbFormaPagamentoExit(Sender: TObject);
begin
  inherited;



  if FIN_CD_M_BRD.FieldByName('ID_FORMA_PAG').AsInteger > 0 then
     begin
       FIN_CD_M_BRD_TIT.cancel;

       if (not FIN_CD_M_BRD_TIT.IsEmpty) then
          begin
            if (xCodFpg <> '') and (xCodFpg <> FIN_CD_M_BRD.FieldByName('ID_FORMA_PAG').AsString) then
               begin
                if (FIN_CD_M_BRD_TIT.RecordCount > 0) then
                    Showmessage('Não é permitido alterar a forma de pagamento com títulos já informado na baixa.');

                 FIN_CD_M_BRD.FieldByName('ID_FORMA_PAG').AsString := xCodFpg;
                 //exit;
               end;
          end;


       // Geração da Duplicata, Promissória , Cartão de crédito , Boleto e Cheque
       if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger in [1,2,3,4,6] then
          begin
            ShowMessage('Informação: ' + #13 +
                        'Utilizando esta forma de pagamento a baixa será uma "Substituição".');
          end;
       ActiveControl        := nil;
       PostMessage(cbbTipoFinanceiro.Handle, WM_SETFOCUS, 0, 0);
       cbbTipoFinanceiro.SetFocus;
     end;
end;

procedure TFIN_FM_M_BRD.cbbPContasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp11(90,' '''+'1'+''','''+'4'+''' ');
  cbbPContas.DropDown;
end;

procedure TFIN_FM_M_BRD.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.text := '';

  txtPesquisa.Visible := false;
  cbbSituacao.Visible := false;
  txtPesquisaData.Visible := false;
  if cbbPesquisa.ItemIndex IN [1,2,3] then
    BEGIN
       txtPesquisaData.Visible := true;
    END
  else if cbbPesquisa.ItemIndex = 5 then
    begin
      cbbSituacao.Visible := true;
    end
  else
    begin
      txtPesquisa.Visible := true;
    end;
end;

procedure TFIN_FM_M_BRD.cbbTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFin(90,'0');
  cbbTipoFinanceiro.DropDown;
end;

procedure TFIN_FM_M_BRD.cxBtnBxaClick(Sender: TObject);
var
  codigo: string;
  IdAbertura: String;
  SMPrincipal: TSMClient;
begin
  inherited;

  if FIN_CD_M_BRD.IsEmpty then
     begin
       ShowMessage('Nenhum borderô foi selecionado!');
       exit;
     end;

  if FIN_CD_M_BRD.FieldByName('cancelado').AsBoolean then
     begin
       ShowMessage('Borderô já cancelado!');
       exit;
     end;

  if not FIN_CD_M_BRD.FieldByName('liberado').AsBoolean then
     begin
       ShowMessage('O Borderô ainda não foi liberado!');
       exit;
     end;

  if FIN_CD_M_BRD.FieldByName('baixado').AsBoolean then
     begin
       ShowMessage('Borderô já baixado!');
       exit;
     end;


  IdAbertura := '';
  if dmGeral.BUS_CD_C_CXA_BCO.FieldByName('tipo').asInteger = 0 then // Caixa
      begin
        dmGeral.BUS_CD_M_CXA.Close;
        dmGeral.BUS_CD_M_CXA.Data :=
        dmGeral.BUS_CD_M_CXA.DataRequest(
                VarArrayOf([93, xFuncionario, FIN_CD_M_BRD.FieldByName('id_empresa').AsString,
                                FIN_CD_M_BRD.FieldByName('id_conta').AsString]));

        if dmGeral.BUS_CD_M_CXA.IsEmpty then
           begin
             ShowMessage('Não existe caixa aberto!');
             dmGeral.BUS_CD_M_CXA.Close;
             exit;
           end
        else
           begin
             if dmGeral.BUS_CD_M_CXA.FieldByName('dta_abertura').AsDateTime <> xDataSis then
                begin
                  Showmessage('Data do caixa diferente: ' + #13 +
                              'Data do caixa('+dmGeral.BUS_CD_C_CXA_BCO.FieldByName('descricao').AsString+'): ' +
                                dmGeral.BUS_CD_M_CXA.FieldByName('dta_abertura').AsString + #13 +
                              'Data do computador: ' + DateToStr(xDataSis));
                  dmGeral.BUS_CD_M_CXA.Close;
                  exit;
                end
             else
                begin
                  IdAbertura :=  dmGeral.BUS_CD_M_CXA.FieldByName('id_abertura').AsString;
                end;
           end;
      end;

  if Dc_MessageDlgCheck('Baixa borderô?', mtConfirmation, [mbYes, mbNo],0, mrYes, true, false,'', nil) <> 7 then
     begin
       Screen.Cursor := crHourGlass;
       try

       codigo := FIN_CD_M_BRD.FieldByName('id_brd').AsString;

       FIN_CD_M_BRD.Edit;

       FIN_CD_M_BRD.FieldByName('id_abertura').AsString  := IdAbertura;

       FIN_CD_M_BRD.FieldByName('id_resp_bxa').AsInteger := xFuncionario;
       FIN_CD_M_BRD.FieldByName('baixado').AsBoolean     := true;
       FIN_CD_M_BRD.FieldByName('dta_bxa').AsDateTime    := xDataSis;

       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

       try
         FIN_CD_M_BRD.FieldByName('hor_bxa').AsDateTime :=
                       SMPrincipal.enHoraServer;
       finally
         FreeAndNil(SMPrincipal);
       end;

       FIN_CD_M_BRD.Post;

       dmGeral.BUS_CD_M_CXA.Close;
       try
         FIN_CD_M_BRD.ApplyUpdates(0);
       except
         on e: Exception do
            begin
              ShowMessage('Erro: ' + e.Message);
            end;
       end;

       FIN_CD_M_BRD.Close;
       FIN_CD_M_BRD.Data :=
       FIN_CD_M_BRD.DataRequest(
          VarArrayOf([0,codigo]));

       if FIN_CD_M_BRD.FieldByName('baixado').AsBoolean then
          ShowMessage('Borderô baixado!');
       finally
         Screen.Cursor := crDefault;
       end;
     end;
end;

procedure TFIN_FM_M_BRD.cxBtnCanClick(Sender: TObject);
var
  codigo: string;
begin
  inherited;

  if FIN_CD_M_BRD.IsEmpty then
     begin
       ShowMessage('Nenhum borderô foi selecionado!');
       exit;
     end;

  if Dc_MessageDlgCheck('Cancela borderô?', mtConfirmation, [mbYes, mbNo],0, mrYes, true, false,'', nil) <> 7 then
     begin
       Screen.Cursor := crHourGlass;
       try

       codigo := FIN_CD_M_BRD.FieldByName('id_brd').AsString;

       FIN_CD_M_BRD.Edit;
       FIN_CD_M_BRD.FieldByName('id_resp_canc').AsInteger := xFuncionario;
       FIN_CD_M_BRD.FieldByName('cancelado').AsBoolean    := true;
       FIN_CD_M_BRD.FieldByName('dta_canc').AsDateTime    := xDataSis;
       //FIN_CD_M_BRD.FieldByName('hor_bxa').AsDateTime    := xHoraSis;
       FIN_CD_M_BRD.Post;
       try
         FIN_CD_M_BRD.ApplyUpdates(0);
       except
         on e: Exception do
            begin
              ShowMessage('Erro: ' + e.Message);
            end;
       end;

       FIN_CD_M_BRD.Close;
       FIN_CD_M_BRD.Data :=
       FIN_CD_M_BRD.DataRequest(
          VarArrayOf([0,codigo]));

       if FIN_CD_M_BRD.FieldByName('cancelado').AsBoolean then
          ShowMessage('Borderô cancelado!');

       finally
         Screen.Cursor := crDefault;
       end;
     end;
end;

procedure TFIN_FM_M_BRD.cxBtnLibClick(Sender: TObject);
var
  codigo: string;
  SMPrincipal: TSMClient;
  hora:TTime;
begin
  inherited;

  if FIN_CD_M_BRD.IsEmpty then
     begin
       ShowMessage('Nenhum borderô foi selecionado!');
       exit;
     end;

  if FIN_CD_M_BRD.FieldByName('cancelado').AsBoolean then
     begin
       ShowMessage('Borderô já cancelado!');
       exit;
     end;

  if FIN_CD_M_BRD.FieldByName('baixado').AsBoolean then
     begin
       ShowMessage('Borderô já baixado!');
       exit;
     end;

  if FIN_CD_M_BRD.FieldByName('liberado').AsBoolean then
     begin
       ShowMessage('Borderô já liberado!');
       exit;
     end;

  if Dc_MessageDlgCheck('Libera borderô?', mtConfirmation, [mbYes, mbNo],0, mrYes, true, false,'', nil) <> 7 then
     begin
       Screen.Cursor := crHourGlass;
       try

       codigo := FIN_CD_M_BRD.FieldByName('id_brd').AsString;

       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
           try
             hora :=SMPrincipal.enHoraServer;
           except
             on e: Exception do
                begin
                  Showmessage('Erro ao tentar executar o método: enDataServer');
                end;
           end;
        finally
          FreeAndNil(SMPrincipal);
        end;

       FIN_CD_M_BRD.Edit;
       FIN_CD_M_BRD.FieldByName('id_resp_lib').AsInteger := xFuncionario;
       FIN_CD_M_BRD.FieldByName('liberado').AsBoolean    := true;
       FIN_CD_M_BRD.FieldByName('dta_lib').AsDateTime    := xDataSis;
       FIN_CD_M_BRD.FieldByName('hor_lib').AsDateTime    := hora;
       FIN_CD_M_BRD.Post;
       try
         FIN_CD_M_BRD.ApplyUpdates(0);
       except
         on e: Exception do
            begin
              ShowMessage('Erro: ' + e.Message);
            end;
       end;

       FIN_CD_M_BRD.Close;
       FIN_CD_M_BRD.Data :=
       FIN_CD_M_BRD.DataRequest(
          VarArrayOf([0,codigo]));
       if FIN_CD_M_BRD.FieldByName('liberado').AsBoolean then
          ShowMessage('Borderô liberado!');

       finally
         Screen.Cursor := crDefault;
       end;
     end;
end;

procedure TFIN_FM_M_BRD.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if FIN_CD_M_BRD.FieldByName('liberado').AsBoolean then
     AFont.Color := clBlue;

  if FIN_CD_M_BRD.FieldByName('baixado').AsBoolean then
     AFont.Color := clGreen;

  if FIN_CD_M_BRD.FieldByName('cancelado').AsBoolean then
     AFont.Color := clRed;

end;

procedure TFIN_FM_M_BRD.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  ExibirTotais;

  dmGeral.BUS_CD_C_CXA_BCO.Close;
  dmGeral.BUS_CD_C_CXA_BCO.Data :=
          dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([4,'%']));

end;

procedure TFIN_FM_M_BRD.dsoStateChange(Sender: TObject);
begin
  inherited;
  btnExcluir.Enabled := false;
end;

procedure TFIN_FM_M_BRD.ExibirDadosTit;
begin
   FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_TITULO').AsString;

  FIN_CD_M_BRD_TIT.FieldByName('int_nomefor').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('int_nomefor').AsString;

  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('int_nomeccu').AsString :=
          dmGeral.BUS_CD_M_PAG_TIT.FieldByName('int_nomecusto').AsString;

  FIN_CD_M_BRD_TIT.FieldByName('id_plano').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('id_plano').AsString;

  FIN_CD_M_BRD_TIT.FieldByName('id_ccusto').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('id_ccusto').AsString;

  FIN_CD_M_BRD_TIT.FieldByName('int_nomepct').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('int_nomepct').AsString;

  FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency;

  FIN_CD_M_BRD_TIT.FieldByName('num_parcela').AsString :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('num_parcela').AsString;

  FIN_CD_M_BRD_TIT.FieldByName('dta_vencimento').AsDateTime :=
           dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime;

  FIN_CD_M_BRD_TIT.FieldByName('atraso').AsInteger := 0;
  if  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime<xDataSis then
      begin
        FIN_CD_M_BRD_TIT.FieldByName('atraso').AsFloat:=
           (xDataSis - dmGeral.BUS_CD_M_PAG_TIT.FieldByName('dta_vencimento').AsDateTime);
      end;

  FIN_CD_M_BRD_TIT.FieldByName('vlr_juros').asCurrency:=
     (((FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency*
        dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_juros').AsCurrency)/100)/30)*
        FIN_CD_M_BRD_TIT.FieldByName('atraso').AsFloat;

  FIN_CD_M_BRD_TIT.FieldByName('vlr_multa').asCurrency:=
     ((FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency*
       dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_multa').AsCurrency)/100);
end;

procedure TFIN_FM_M_BRD.ExibirTotais;
var
  TotalJuros,TotalMulta,TotalDesc,TotalPago: Currency;
begin
  txtTotalJuros.Text := FormatCurr('###,###,###,##0.00',0);
  txtTotalMulta.Text := FormatCurr('###,###,###,##0.00',0);
  txtTotalDesc.Text  := FormatCurr('###,###,###,##0.00',0);
  txtTotalPago.Text  := FormatCurr('###,###,###,##0.00',0);


  TotalDesc  := 0;
  TotalJuros := 0;
  TotalMulta := 0;
  TotalPago  := 0;

  if not FIN_CD_M_BRD.IsEmpty then
     begin
       FIN_CD_M_BRD_TIT.First;
       while not FIN_CD_M_BRD_TIT.eof do
          begin
            TotalDesc  := TotalDesc + FIN_CD_M_BRD_TIT.FieldByName('vlr_desconto').asCurrency;
            TotalJuros := TotalJuros + FIN_CD_M_BRD_TIT.FieldByName('vlr_juros').asCurrency;
            TotalMulta := TotalMulta + FIN_CD_M_BRD_TIT.FieldByName('vlr_multa').asCurrency;
            TotalPago  := TotalPago + FIN_CD_M_BRD_TIT.FieldByName('vlr_pagamento').asCurrency;


            FIN_CD_M_BRD_TIT.Next;
          end;
       FIN_CD_M_BRD_TIT.First;
     end;

  txtTotalJuros.Text := FormatCurr('###,###,###,##0.00',TotalJuros);
  txtTotalMulta.Text := FormatCurr('###,###,###,##0.00',TotalMulta);
  txtTotalDesc.Text  := FormatCurr('###,###,###,##0.00',TotalDesc);
  txtTotalPago.Text  := FormatCurr('###,###,###,##0.00',TotalPago);

end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRDBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FIN_RN_M_BRD.FinPermiteAltBrd;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRDBeforePost(DataSet: TDataSet);
begin
  inherited;
  { TODO -oMaxsuel : Inserido por Maxsuel Victor, em 05/09/2016 }
  dmGeral.enAudRegistrarInfo(DataSet);

end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRDNewRecord(DataSet: TDataSet);
begin
  inherited;
  FIN_RN_M_BRD.finNovoBrd;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRD_TITAfterPost(DataSet: TDataSet);
begin
  inherited;
  ExibirTotais;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRD_TITBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  FIN_RN_M_BRD.FinMascaraBrdTit;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRD_TITBeforePost(DataSet: TDataSet);
begin
  inherited;
  fin_rn_m_brd.FinValidaBrdTit;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRD_TITNewRecord(DataSet: TDataSet);
begin
  inherited;
  FIN_RN_M_BRD.FinNovoBrdTit;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRD_TITper_descontoChange(Sender: TField);
begin
  inherited;
  FIN_RN_M_BRD.FIN_CD_M_BRD_TITper_descontoChange;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_descontoChange(Sender: TField);
begin
  inherited;
  FIN_RN_M_BRD.FIN_CD_M_BRD_TITvlr_descontoChange;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_jurosChange(Sender: TField);
begin
  inherited;
  FIN_RN_M_BRD.FIN_CD_M_BRD_TITvlr_jurosChange;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_multaChange(Sender: TField);
begin
  inherited;
  FIN_RN_M_BRD.FIN_RN_M_BRD_TITvlr_multaChange;
end;

procedure TFIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_pagamentoChange(Sender: TField);
begin
  inherited;
  FIN_RN_M_BRD.finBrdCalcTotalTitulo;

end;

procedure TFIN_FM_M_BRD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_TIF.Close;
  dmGeral.CAD_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_CXA_BCO.Close;
  dmGeral.BUS_CD_M_CXA.close;

  FIN_CD_M_BRD.Close;
  FreeAndNil(FIN_FM_M_BRD);
end;

procedure TFIN_FM_M_BRD.FormCreate(Sender: TObject);
begin
  inherited;

  FIN_CD_M_BRD.Close;
  FIN_CD_M_BRD.Data :=
      FIN_CD_M_BRD.DataRequest(VarArrayOf([0, '']));
  FIN_CD_M_BRD.Open;

  AbrirBuscas;
end;

procedure TFIN_FM_M_BRD.FormShow(Sender: TObject);
begin
  inherited;
  AbrirBuscas;

  dmGeral.BusFuncionario2(0,IntToStr(xFuncionario));

  xLiberaBordero := true;
  if not (dmGeral.BUS_CD_C_FU2.FieldByName('seg_hab_lib_brd').AsBoolean) then
     begin
       xLiberaBordero := false;
     end;
  dmGeral.BUS_CD_C_FU2.close;

  if not xLiberaBordero then
     cxBtnLib.Enabled := false;

  btnImprime.Enabled := true;
  txtPesquisa.SetFocus;
end;

procedure TFIN_FM_M_BRD.grdTitulosDblClick(Sender: TObject);
begin
  inherited;
  {pnDadExt.Visible := true;
  cbbCCusto.SetFocus;
  gbTitulos.Enabled := false;}


  if FIN_CD_M_BRD_TIT.State in [dsInsert,dsEdit] then
     FIN_CD_M_BRD_TIT.Cancel;

  if not FIN_CD_M_BRD_TIT.IsEmpty then
    begin
      FIN_CD_M_BRD_TIT.Edit;
      pnlTitulos.Enabled := True;
      txtNTitulo.Enabled := False;
      txtPerDesconto.SetFocus;
    end;
end;

procedure TFIN_FM_M_BRD.grdTitulosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdTitulosIButton.Enabled := False;
     if FIN_CD_M_BRD_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     FIN_CD_M_BRD_TIT.Delete;
     FIN_CD_M_BRD_TIT.Edit;
  finally
    grdTitulosIButton.Enabled := True;
  end;
end;

procedure TFIN_FM_M_BRD.grdTitulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ord(key) = VK_F10 then
     BEGIN
       pnDadExt.Visible := true;
       cbbCCusto.SetFocus;
       gbTitulos.Enabled := false;
     END;
end;

procedure TFIN_FM_M_BRD.grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //if pnlTitulos.Enabled = False then
  //   pnlTitulos.Enabled := True;

  {if FIN_CD_M_BRD_TIT.State in [dsInsert,dsEdit] then
     FIN_CD_M_BRD_TIT.Cancel;  }

  {if not FIN_CD_M_BRD_TIT.IsEmpty then
    begin
      FIN_CD_M_BRD_TIT.Edit;
      pnlTitulos.Enabled := True;
      txtNTitulo.Enabled := False;
      txtPerDesconto.SetFocus;
    end; }

  {
  if FIN_CD_M_BRD_TIT.IsEmpty then
     begin
       FIN_CD_M_BRD_TIT.Append;

       pnlTitulos.Enabled := true;

       txtNTitulo.Enabled := true;
       txtNTitulo.SetFocus;
     end
  else
    begin
     FIN_CD_M_BRD_TIT.Edit;
     pnlTitulos.Enabled := True;
     txtNTitulo.Enabled := False;
     txtPerDesconto.SetFocus;
    end;   }
end;

procedure TFIN_FM_M_BRD.pnlTitulosExit(Sender: TObject);
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
        FIN_CD_M_BRD_TIT.Cancel;
        FIN_CD_M_BRD_TIT.edit;

        finally
           pnlTitulos.Enabled := False;
        end;
      end;
end;

procedure TFIN_FM_M_BRD.Rebrirborder1Click(Sender: TObject);
var
  codigo: String;
begin
  inherited;

  if FIN_CD_M_BRD.IsEmpty then
     begin
       ShowMessage('Nenhum borderô foi selecionado!');
       exit;
     end;

   if FIN_CD_M_BRD.FieldByName('cancelado').AsBoolean then
      begin
         ShowMessage('Borderô já cancelado!');
         abort;
      end;


   if FIN_CD_M_BRD.FieldByName('baixado').AsBoolean then
      begin
         ShowMessage('Borderô já baixado!');
         abort;
      end;

    if not (FIN_CD_M_BRD.FieldByName('liberado').AsBoolean) then
       begin
         ShowMessage('Não há necessidade de reabrir pois o borderô continua em aberto.');
         abort;
       end;

   if Dc_MessageDlgCheck('Deseja realmente reabrir o borderô?', mtConfirmation, [mbYes, mbNo],0, mrYes, true, false,'', nil) <> 7 then
      begin
         codigo := FIN_CD_M_BRD.FieldByName('id_brd').AsString;

         FIN_CD_M_BRD.Edit;
         FIN_CD_M_BRD.FieldByName('id_resp_lib').AsString  := '';
         FIN_CD_M_BRD.FieldByName('liberado').AsBoolean    := false;
         FIN_CD_M_BRD.FieldByName('dta_lib').AsString      := '';
         FIN_CD_M_BRD.FieldByName('hor_lib').AsString      := '';
         FIN_CD_M_BRD.Post;
         try
           FIN_CD_M_BRD.ApplyUpdates(0);
         except
           on e: Exception do
              begin
                ShowMessage('Erro: ' + e.Message);
              end;
         end;

         FIN_CD_M_BRD.Close;
         FIN_CD_M_BRD.Data :=
         FIN_CD_M_BRD.DataRequest(
            VarArrayOf([0,codigo]));

         if FIN_CD_M_BRD.FieldByName('liberado').AsBoolean = false then
            ShowMessage('O Borderô foi reaberto!');
      end;

end;

procedure TFIN_FM_M_BRD.txtNTituloButtonClick(Sender: TObject);
var
  xTitulos,codTitulo:String;
  dataSetState:Integer;
begin
  inherited;


  PSQ_FM_X_PBX_TIT := TPSQ_FM_X_PBX_TIT.Create(Self);
  xChamada := 2;

  try
   pnlTitulos.OnExit := nil;
   txtNTitulo.OnExit := nil;
   xTitulos := '';

   if FIN_CD_M_BRD_TIT.State in [dsInsert] then
     dataSetState := 0;

   if FIN_CD_M_BRD_TIT.State in [dsEdit] then
    begin
     dataSetState := 1;
     codTitulo := FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString;
    end;

   FIN_CD_M_BRD_TIT.First;
   while not FIN_CD_M_BRD_TIT.eof do
    begin
      if xTitulos <> '' then
        begin
          xTitulos := xTitulos + ',' +''''+FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString+'''';
        end
      else
        begin
           xTitulos := xTitulos +''''+ FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString+'''';
        end;

      FIN_CD_M_BRD_TIT.Next;
    end;


  if (dataSetState = 0) then
     FIN_CD_M_BRD_TIT.Insert;

  if (dataSetState = 1) then
    begin
     FIN_CD_M_BRD_TIT.locate('ID_TITULO',codTitulo,[]);
     FIN_CD_M_BRD_TIT.Edit;
    end;

  PSQ_FM_X_PBX_TIT.xTitulos := xTitulos;
  PSQ_FM_X_PBX_TIT.ShowModal;

   if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_tit').AsBoolean = true)) then
     begin
      if not dmGeral.BUS_CD_M_PAG_TIT.IsEmpty then
         begin
           ExibirDadosTit;
           txtNTitulo.SetFocus;
         end;
     end
  else
     begin
       if (FIN_CD_M_BRD_TIT.RecordCount >0) then
         begin
           pnlTitulos.Enabled := true;
           ExibirTotais;
           FIN_CD_M_BRD_TIT.First;
           FIN_CD_M_BRD_TIT.Edit;
           txtVlrPago.SetFocus;
         end;
     end;



 // pnlTitulos.Enabled := true;

  PSQ_FM_X_PBX_TIT.Free;

  finally
    pnlTitulos.OnExit := pnlTitulosExit;
    txtNTitulo.OnExit := txtNTituloExit;
  end;
end;

procedure TFIN_FM_M_BRD.txtNTituloExit(Sender: TObject);
var
  id_titulo: string;
begin
  inherited;

  if FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').Text = '' then
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
          (txtVlrPago.Focused) then
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
       if FIN_CD_M_BRD_TIT.state in [dsBrowse] then
          FIN_CD_M_BRD_TIT.edit;
     end;

  //if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_emp').AsBoolean then
  //   begin
        dmGeral.BUS_CD_M_PAG_TIT.Close;
        dmGeral.BUS_CD_M_PAG_TIT.Data :=
        dmGeral.BUS_CD_M_PAG_TIT.DataRequest(VarArrayOf([0,
                       FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString]));

        {if not dmGeral.BUS_CD_M_PAG_TIT.IsEmpty then
           begin
             if dmGeral.BUS_CD_M_PAG_TIT.FieldByName('id_fornecedor').AsInteger <>
                FIN_CD_M_BRD_TIT.FieldByName('id_fornecedor').AsInteger  then
                begin
                  dmGeral.BUS_CD_M_PAG_TIT.Close;
                  Showmessage('Este título não pertence a este fornecedor.');
                  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString := '';
                  txtNTitulo.SetFocus;
                  exit;
                end;
           end;}
  {   end
  else
     begin
        dmGeral.BUS_CD_M_PAG_TIT.Close;
        dmGeral.BUS_CD_M_PAG_TIT.Data :=
        dmGeral.BUS_CD_M_PAG_TIT.DataRequest(VarArrayOf([95,
                       dmGeral.FIN_CD_M_PBX.FieldByName('ID_EMPRESA').AsString,
                       dmGeral.FIN_CD_M_PBX.FieldByName('ID_FORNECEDOR').AsString,
                       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString]));
     end; }

  if dmgeral.BUS_CD_M_PAG_TIT.IsEmpty then
     begin
       Showmessage('Título não encontrado.');
       FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString := '';
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
                   FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString := '';
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
                       FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString := '';
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
                                  FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString := '';
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
            FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString := '';
            txtNTitulo.SetFocus;
            exit;
          end;

        BUS_CD_M_BRD_TIT_INT.Close;
        BUS_CD_M_BRD_TIT_INT.Data :=
        BUS_CD_M_BRD_TIT_INT.DataRequest(VarArrayOf([1,FIN_CD_M_BRD.FieldByName('id_brd').AsString,
                       FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString]));
        if not BUS_CD_M_BRD_TIT_INT.IsEmpty then
           begin
             Showmessage('Este título está pendente em outro borderô.' +  #13 +
                         'Borderô: ' + BUS_CD_M_BRD_TIT_INT.FieldByName('id_brd').AsString);
             FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString := '';
             txtNTitulo.SetFocus;
             exit;
           end;
     end;

  try
   pnlTitulos.onExit := nil;


  id_titulo := FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString;
  if FIN_CD_M_BRD_TIT.State in [dsInsert] then
     begin
       FIN_CD_M_BRD_TIT.cancel;
       if FIN_CD_M_BRD_TIT.Locate('ID_TITULO', id_titulo,[]) then
          begin
            ShowMessage('Título já informado nessa baixa.');
            btn_Add_Titulos.SetFocus;
            exit;
          end
       else
          begin
            FIN_CD_M_BRD_TIT.Insert;
            FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString := id_titulo;
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

procedure TFIN_FM_M_BRD.txtObservacaoEnter(Sender: TObject);
begin
  inherited;
  KeyPreview := false;
end;

procedure TFIN_FM_M_BRD.txtObservacaoExit(Sender: TObject);
begin
  inherited;
  KeyPreview := true;
end;

procedure TFIN_FM_M_BRD.txtVlrPagoExit(Sender: TObject);
var
  titulos: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if Focused or txtPerDesconto.Focused or txtVlrDesconto.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlr(FIN_CD_M_BRD_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency)) then
     begin
       txtVlrPago.SetFocus;
       abort;
     end;

  titulos := FIN_CD_M_BRD_TIT.FieldByName('ID_TITULO').AsString;
  FIN_CD_M_BRD_TIT.Post;
  pnlTitulos.Enabled := False;
  FIN_CD_M_BRD_TIT.locate('ID_TITULO',titulos,[]);

   btn_Add_Titulos.SetFocus;
end;

end.
