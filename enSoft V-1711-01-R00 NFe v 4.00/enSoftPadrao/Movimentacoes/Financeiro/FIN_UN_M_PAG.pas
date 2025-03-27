unit FIN_UN_M_PAG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Mask, JvExMask, vcl.Wwdbedit,
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
  dxSkinXmas2008Blue, Datasnap.DBClient, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TFIN_FM_M_PAG = class(TPAD_FM_X_PAD)
    lblFornecedor: TLabel;
    txtFornecedor: TJvDBComboEdit;
    txtFornecedorNome: TDBText;
    lblNTitulo: TLabel;
    Label1: TLabel;
    dpkEmissao: TJvDBDateEdit;
    lblVencimento: TLabel;
    dpkVencimento: TJvDBDateEdit;
    lblPrevBaixa: TLabel;
    dpkPrevBaixa: TJvDBDateEdit;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    lblLocalTitulo: TLabel;
    cbbLocalTitulo: TwwDBLookupCombo;
    Label2: TLabel;
    lblVlrTitulo: TLabel;
    lblVlrSaldo: TLabel;
    lblCentroCusto: TLabel;
    cbbCentroCusto: TwwDBLookupCombo;
    lblVlrMulta: TLabel;
    lblVlrJuros: TLabel;
    txtNTitulo: TwwDBEdit;
    txtHistorico: TwwDBEdit;
    txtTitulo: TwwDBEdit;
    txtMulta: TwwDBEdit;
    txtJuros: TwwDBEdit;
    txtVlrSaldo: TwwDBEdit;
    gbCheque: TGroupBox;
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
    cbbPlanoContas: TwwDBLookupCombo;
    Label3: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    lbObra: TLabel;
    chbGeraAuto: TCheckBox;
    txtParcelas: TEdit;
    lblQtdeParcela: TLabel;
    txtobra: TJvDBComboEdit;
    txtDescObra: TDBEdit;
    pmApoio: TPopupMenu;
    btnDesfPeqDesp: TMenuItem;
    chbDiaFixo: TCheckBox;
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
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure cbbLocalTituloEnter(Sender: TObject);
    procedure cbbCentroCustoEnter(Sender: TObject);
    procedure cbbFormaPagamentoChange(Sender: TObject);
    procedure txtNTituloExit(Sender: TObject);
    procedure txtContaCorrenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsoDataChange(Sender: TObject; Field: TField);
    procedure chbGeraAutoClick(Sender: TObject);
    procedure txtParcelasExit(Sender: TObject);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
    procedure dpkEmissaoExit(Sender: TObject);
    procedure dpkVencimentoExit(Sender: TObject);
    procedure dpkPrevBaixaExit(Sender: TObject);
    procedure txtNTituloKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridRowChanged(Sender: TObject);
    procedure btnDesfPeqDespClick(Sender: TObject);
    procedure txtTituloKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    procedure AltEstCampos(const tipo:integer);
    procedure AbrirBuscas;
    procedure RestaurarCamposGerarAuto;
    procedure HabDesabCamposAlteracaoGerarAuto(ativar:boolean);
    function PermitirValidarData:Boolean;
  public
    { Public declarations }
    var
      validarData:Boolean;
  end;

var
  FIN_FM_M_PAG: TFIN_FM_M_PAG;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, PSQ_UN_X_FOR, PSQ_UN_X_PCT, FIN_RN_M_PAG, PSQ_UN_X_OBR,
  uDmCtc, enFunc;

procedure TFIN_FM_M_PAG.AbrirBuscas;
begin
  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusLocalTit(1,'%');
  dmGeral.BusCCusto(1,'%');
  dmGeral.BusPlanoCta(90,' '''+'1'+''','''+'4'+''' ');
end;

function TFIN_FM_M_PAG.PermitirValidarData:Boolean;
begin
   Result := true;
   if (dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime - xDataSis)< -365  then
    begin
       Result := false;
    end;

   if dmGeral.FIN_CD_M_PAG.FieldByName('dta_emissao').AsDateTime >
      dmGeral.FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime  then
    begin
        Result := false;
    end;


   if (dmGeral.FIN_CD_M_PAG.FieldByName('DTA_ORIGINAL').AsDateTime -
        dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime> 1825)  then
     begin
        Result := false;
     end;


   if dmGeral.FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime >
      dmGeral.FIN_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime then
     begin
        Result := false;
     end;

   if (dmGeral.FIN_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsDateTime -
        dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime)> 1825  then
     begin
        Result := false;
     end;
end;

procedure TFIN_FM_M_PAG.HabDesabCamposAlteracaoGerarAuto(ativar:boolean);
begin
   txtNTitulo.Enabled        := ativar;
   dpkEmissao.Enabled        := ativar;
   dpkVencimento.Enabled     := ativar;
   dpkPrevBaixa.Enabled      := ativar;
   cbbFormaPagamento.Enabled := ativar;

end;

procedure TFIN_FM_M_PAG.RestaurarCamposGerarAuto;
begin
   chbGeraAuto.Enabled := true;
   chbGeraAuto.Checked := false;
   txtParcelas.Text := '1';
   txtParcelas.Enabled := false;
   chbDiaFixo.Visible := false;
end;

procedure TFIN_FM_M_PAG.acAdicionaExecute(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PAG);

  dmGeral.FIN_CD_M_PAG.FieldByName('ID_EMPRESA').AsInteger :=
    dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_PAG.FieldByName('NUM_PARCELA').AsString :=
      SMPrincipal.enValorChave('FIN_TB_M_PAG_NUM').ToString;

  finally
    FreeAndNil(SMPrincipal);
  end;
  validarData := true;
  txtFornecedor.SetFocus;
end;

procedure TFIN_FM_M_PAG.acAlterarExecute(Sender: TObject);
var
  tipo: integer;
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PAG) then
      begin
        inherited;
        tipo := FIN_RN_M_PAG.FinPermiteAltPag;
        AltEstCampos(tipo);


        chbGeraAuto.Enabled := false;
        if txtNTitulo.CanFocus then
           txtNTitulo.SetFocus
        else if dpkEmissao.CanFocus then
           dpkEmissao.SetFocus
        else if dpkVencimento.CanFocus then
           dpkVencimento.SetFocus
        else if dpkPrevBaixa.CanFocus then
           dpkPrevBaixa.SetFocus;

        if  (dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean) and
          ((dmGeral.FIN_CD_M_PAG.FieldByName('VLR_SALDO').Text <> '') and (dmGeral.FIN_CD_M_PAG.FieldByName('VLR_SALDO').Text <> '0')) and
          (dmGeral.FIN_CD_M_PAG.FieldByName('VLR_SALDO').Text = dmGeral.FIN_CD_M_PAG.FieldByName('VLR_PARCELA').Text) then
          begin
            txtObra.enabled := True;
            txtObra.color := clWindow;
          end
        else
          begin
            txtObra.enabled := False;
            txtObra.color := $00DADADA;
          end;

        validarData := PermitirValidarData;



      end;
end;

procedure TFIN_FM_M_PAG.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PAG) then
     begin
       inherited;
       AltEstCampos(0);
       RestaurarCamposGerarAuto;
       dbGrid.SetFocus;
     end
  else
     begin
       if txtFornecedor.CanFocus then
          txtFornecedor.SetFocus
       else
          if dpkPrevBaixa.CanFocus then
             dpkPrevBaixa.Setfocus;
     end;
end;

procedure TFIN_FM_M_PAG.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PAG);
end;

procedure TFIN_FM_M_PAG.acGravarExecute(Sender: TObject);
var
  id_empresa,nro_parcela, id_fornecedor: string;
begin
   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       FIN_RN_M_PAG.VerificarData := validarData;
       id_empresa     := dmGeral.FIN_CD_M_PAG.FieldByName('id_empresa').AsString;
       id_fornecedor := dmGeral.FIN_CD_M_PAG.FieldByName('id_fornecedor').AsString;

       if chbGeraAuto.Checked = true then
         begin
           FIN_RN_M_PAG.VerificarData := false;
           FinValidaPag(dmGeral.FIN_CD_M_PAG);
           //Codigo foi retirado a pedido de Mariel.Responsavel:Luan.Data:10/12/2016
           {if abs( dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime -
                 (dmGeral.FIN_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsDateTime +(StrToInt(txtParcelas.Text)-1)*30) )>1865  then
             begin
               ShowMessage('Data de previsão de baixa da última parcela não pode ser menor ou maior em mais de 5 anos da data de emissão.');
               abort;
             end;}

          nro_parcela := FinGeracaoAutomaticaPag(StrToInt(txtParcelas.Text),chbDiaFixo.Checked);
         end
       else
         begin
          nro_parcela    := dmGeral.FIN_CD_M_PAG.FieldByName('num_parcela').AsString;
          DmGeral.Grava(dmGeral.FIN_CD_M_PAG);
         end;

       inherited;
       dmGeral.FIN_CD_M_PAG.Close;
       dmGeral.FIN_CD_M_PAG.Data :=
       dmGeral.FIN_CD_M_PAG.DataRequest(
               VarArrayOf([9, nro_parcela,id_fornecedor,id_empresa]));
       AltEstCampos(0);
       RestaurarCamposGerarAuto;
     end;
end;

procedure TFIN_FM_M_PAG.AltEstCampos(const tipo: integer);
var
  Estado: Boolean;
  Cor   : TColor;
begin
  estado := true;
  cor := clWindow;


  txtFornecedor.enabled  := estado;
  txtFornecedor.color    := cor;
  txtNTitulo.enabled     := estado;
  txtNTitulo.color       := cor;
  txtObra.enabled        := estado;
  txtObra.color          := cor;
  dpkEmissao.enabled     := estado;
  dpkEmissao.color       := cor;
  dpkVencimento.enabled  := estado;
  dpkVencimento.color    := cor;
  dpkPrevBaixa.enabled   := estado;
  dpkPrevBaixa.color     := cor;
  cbbPlanoContas.enabled := estado;
  cbbPlanoContas.color   := cor;
  cbbFormaPagamento.enabled := estado;
  cbbFormaPagamento.color   := cor;
  cbbLocalTitulo.enabled    := estado;
  cbbLocalTitulo.color      := cor;
  cbbCentroCusto.enabled    := estado;
  cbbCentroCusto.color      := cor;
  txtHistorico.enabled      := estado;
  txtHistorico.color        := cor;
  txtTitulo.enabled         := estado;
  txtTitulo.color           := cor;
  txtVlrSaldo.enabled       := estado;
  txtVlrSaldo.color         := cor;
  txtMulta.enabled          := estado;
  txtMulta.color            := cor;
  txtJuros.enabled          := estado;
  txtJuros.color            := cor;
  gbCheque.enabled          := estado;

  if tipo = 1 then   // Permitirá alterar apenas a data de previsão da baixa
     begin
        estado := false;
        cor := $00DADADA;
        txtFornecedor.enabled  := estado;
        txtFornecedor.color    := cor;
        txtNTitulo.enabled     := estado;
        txtNTitulo.color       := cor;
        txtObra.enabled        := estado;
        txtObra.color          := cor;
        dpkEmissao.enabled     := estado;
        dpkEmissao.color       := cor;
        dpkVencimento.enabled  := estado;
        dpkVencimento.color    := cor;

           dpkPrevBaixa.enabled   := True;
           dpkPrevBaixa.color     := clWhite;

        cbbPlanoContas.enabled := estado;
        cbbPlanoContas.color   := cor;
        cbbFormaPagamento.enabled := estado;
        cbbFormaPagamento.color   := cor;
        cbbLocalTitulo.enabled    := estado;
        cbbLocalTitulo.color      := cor;
        cbbCentroCusto.enabled    := estado;
        cbbCentroCusto.color      := cor;
        txtHistorico.enabled      := estado;
        txtHistorico.color        := cor;
        txtTitulo.enabled         := estado;
        txtTitulo.color           := cor;
        txtVlrSaldo.enabled       := estado;
        txtVlrSaldo.color         := cor;
        txtMulta.enabled          := estado;
        txtMulta.color            := cor;
        txtJuros.enabled          := estado;
        txtJuros.color            := cor;
        gbCheque.enabled          := estado;
     end;
  if tipo = 2 then   // Não pode altarar Fornecedor e nem Nro do título
     begin
        estado := false;
        cor := $00DADADA;
        txtFornecedor.enabled  := estado;
        txtFornecedor.color    := cor;
        txtNTitulo.enabled     := estado;
        txtNTitulo.color       := cor;
        txtObra.enabled        := estado;
        txtObra.color          := cor;
     end;

  if tipo = 3 then
    begin
        estado := false;
        cor := $00DADADA;
        txtFornecedor.enabled  := estado;
        txtFornecedor.color    := cor;

        txtObra.enabled        := estado;
        txtObra.color          := cor;

        cbbFormaPagamento.enabled := estado;
        cbbFormaPagamento.color   := cor;
        gbCheque.enabled          := estado;

        if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean=false) then
          begin
            txtNTitulo.enabled     := estado;
            txtNTitulo.color       := cor;
            dpkEmissao.enabled     := estado;
            dpkEmissao.color       := cor;
          end;

       { if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = false) then
          begin
            dpkVencimento.enabled  := estado;
            dpkVencimento.color    := cor;
          end; }
    end;

  if tipo = 4 then   // Permitirá alterar apenas a data de previsão da baixa e valor saldo
     begin
        estado := false;
        cor := $00DADADA;
        txtFornecedor.enabled  := estado;
        txtFornecedor.color    := cor;
        txtNTitulo.enabled     := estado;
        txtNTitulo.color       := cor;
        txtObra.enabled        := estado;
        txtObra.color          := cor;
        dpkEmissao.enabled     := estado;
        dpkEmissao.color       := cor;


        cbbPlanoContas.enabled := estado;
        cbbPlanoContas.color   := cor;
        cbbFormaPagamento.enabled := estado;
        cbbFormaPagamento.color   := cor;
        cbbLocalTitulo.enabled    := estado;
        cbbLocalTitulo.color      := cor;
        cbbCentroCusto.enabled    := estado;
        cbbCentroCusto.color      := cor;
        txtHistorico.enabled      := estado;
        txtHistorico.color        := cor;

        txtMulta.enabled          := estado;
        txtMulta.color            := cor;
        txtJuros.enabled          := estado;
        txtJuros.color            := cor;
        gbCheque.enabled          := estado;
     end;
end;

procedure TFIN_FM_M_PAG.btnDesfPeqDespClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  IdTitulo,retorno: String;
begin

  { TODO -oCriação -cMaxsuel :
    Criado em 18/11/2016
    Tem a função de desfazer a pequena de despesa gerada pelo controle de caixa. }

  if Dc_MessageDlgCheck('Tem certeza que deseja excluir a pequena despesa?', mtConfirmation, [mbYes, mbNo],
     0, mrNo, true, false,'', nil) = 7 then
     begin
       exit;
     end;

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    IdTitulo := dmGeral.FIN_CD_M_PAG.FieldByName('id_titulo').AsString;

    retorno := SMPrincipal.enDesfPeqDesp(IdTitulo);

    // O resultado dessa chamada deve trazer o registro em branco.
    dmGeral.FIN_CD_M_PAG.Close;
    dmGeral.FIN_CD_M_PAG.Data :=
    dmGeral.FIN_CD_M_PAG.DataRequest(
       VarArrayOf([10, IdTitulo]));

  if retorno = 'OK' then
     begin
       ShowMessage('Pequena despesa apagada com sucesso!');
     end;
  finally
    FreeAndNil(SMPrincipal);
  end;

end;

procedure TFIN_FM_M_PAG.btnFiltroClick(Sender: TObject);
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


    dmGeral.FIN_CD_M_PAG.Close;
    dmGeral.FIN_CD_M_PAG.Data :=
    dmGeral.FIN_CD_M_PAG.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, xPesquisa, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));

    AbrirBuscas;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_PAG.cbbCentroCustoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCCusto(1,'%');
  cbbCentroCusto.DropDown;
end;

procedure TFIN_FM_M_PAG.cbbFormaPagamentoChange(Sender: TObject);
begin
  inherited;
  if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger=6 then
     gbCheque.Visible:= true
  else
     gbCheque.Visible:= false;

end;

procedure TFIN_FM_M_PAG.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(7,'''5'',''7''');
  cbbFormaPagamento.DropDown;
end;

procedure TFIN_FM_M_PAG.cbbLocalTituloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusLocalTit(1,'%');
  cbbLocalTitulo.DropDown;
end;

procedure TFIN_FM_M_PAG.cbbPesquisaChange(Sender: TObject);
begin
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [2,3,4]  then
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


  {if cbbPesquisa.ItemIndex in [1,6,7] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;}
end;

procedure TFIN_FM_M_PAG.cbbPlanoContasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta(90,' '''+'1'+''','''+'4'+''' ');  // foi substituiod pelo novo abaixo, chamado: 1548
  //dmGeral.BusPlanoCta(92,' '''+'1'+''','''+'2'+''' ');
  cbbPlanoContas.DropDown;

end;

procedure TFIN_FM_M_PAG.chbGeraAutoClick(Sender: TObject);
begin
  inherited;
  if chbGeraAuto.Checked = true then
     begin
       txtParcelas.Enabled := true;
       txtParcelas.Text := '2';
       chbDiaFixo.Visible := true;
       chbDiaFixo.Checked := false;
     end
  else
     begin
       txtParcelas.Enabled := false;
       txtParcelas.Text := '1';
       chbDiaFixo.Visible := false;
     end;
end;

procedure TFIN_FM_M_PAG.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  btnDesfPeqDesp.Enabled := false;
  if not dmGeral.FIN_CD_M_PAG.IsEmpty then
     begin
       if (dmGeral.FIN_CD_M_PAG.FieldByName('origem').AsInteger = 2) and // Pequena Despesa
          (dmGeral.FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger = 1)  then // lancamento automatico
          begin
            btnDesfPeqDesp.Enabled := true;
          end;
     end;
end;

procedure TFIN_FM_M_PAG.dpkEmissaoExit(Sender: TObject);
begin
  inherited;
   if btnGrava.Focused or btnCancelar.Focused then
    begin
      exit;
    end;

   if (dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsString = '')  then
      begin
       ShowMessage('Data de Emissão deve ser preenchida.');
       dpkEmissao.SetFocus;
       exit;
      end;

    if validarData then
       begin
        if (dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime - xDataSis)< -365  then
          begin
            ShowMessage('Data de emissão não pode ser menor em mais de 1 ano da data atual.');
            dpkEmissao.SetFocus;
            exit;
          end;
      end;
end;

procedure TFIN_FM_M_PAG.dpkPrevBaixaExit(Sender: TObject);
begin
  inherited;
    if btnGrava.Focused or btnCancelar.Focused or dpkEmissao.Focused or dpkVencimento.Focused then
      begin
        exit;
      end;

    if (dmGeral.FIN_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsString = '')  then
      begin
       ShowMessage('Data de Previsão de Baixa deve ser preenchida.');
       dpkPrevBaixa.SetFocus;
       exit;
      end;

   if validarData then
       begin
         if dmGeral.FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime >
            dmGeral.FIN_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime then
             begin
               ShowMessage('Data de previsão de baixa não pode ser menor que a data de vencimento.');
               dpkPrevBaixa.SetFocus;
               exit;
             end;

         if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = false) and
            ((dmGeral.FIN_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsDateTime -
              dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime)> 1825)  then
             begin
                ShowMessage('Data de previsão de baixa não pode ser maior em mais de 5 anos da data de emissão.');
                dpkPrevBaixa.SetFocus;
                exit;
             end;
       end;
end;

procedure TFIN_FM_M_PAG.dpkVencimentoExit(Sender: TObject);
begin
  inherited;
   if btnGrava.Focused or btnCancelar.Focused or dpkEmissao.Focused then
    begin
      exit;
    end;

   if (dmGeral.FIN_CD_M_PAG.FieldByName('DTA_ORIGINAL').AsString = '')  then
      begin
       ShowMessage('Data de Vencimento deve ser preenchida.');
       dpkVencimento.SetFocus;
       exit;
      end;

   if validarData then
       begin
         if dmGeral.FIN_CD_M_PAG.FieldByName('dta_emissao').AsDateTime >
            dmGeral.FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime  then
            begin
              ShowMessage('Data de vencimento não pode ser menor que a data de emissão.');
              dpkVencimento.SetFocus;
              exit;
            end;


         if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = false) and
            ((dmGeral.FIN_CD_M_PAG.FieldByName('DTA_ORIGINAL').AsDateTime -
              dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime)> 1825)  then
             begin
                ShowMessage('Data de vencimento não pode ser maior em mais de 5 anos da data de emissão.');
                dpkVencimento.SetFocus;
                exit;
             end;
      end;
end;

procedure TFIN_FM_M_PAG.dsoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not dso.DataSet.IsEmpty then
     begin
        if dso.DataSet.State in [dsBrowse] then
           begin
             dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_PAGid_forma_pag.AsString);
             gbCheque.Visible := false;
             if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger = 6 then  //doc impresso = cheque
                begin
                  gbCheque.Visible := true;
                end;
           end;
     end;
end;

procedure TFIN_FM_M_PAG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_PAG.Close;
  FreeAndNil(FIN_FM_M_PAG);
end;

procedure TFIN_FM_M_PAG.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_PAG.Close;
  dmGeral.FIN_CD_M_PAG.Data := dmGeral.FIN_CD_M_PAG.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_PAG.Open;
  AbrirBuscas;
end;

procedure TFIN_FM_M_PAG.FormShow(Sender: TObject);
begin
  inherited;
  cbbPesquisaChange(self);
  lbObra.Visible  := dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
  txtObra.Visible := dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
  txtDescObra.Visible := dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
  RestaurarCamposGerarAuto;
end;

procedure TFIN_FM_M_PAG.txtContaCorrenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  txtContaCorrente.NumbersOnly := True;
end;

procedure TFIN_FM_M_PAG.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.FIN_CD_M_PAG.FieldByName('INT_NOMEFOR').Text :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

           dmGeral.FIN_CD_M_PAG.FieldByName('ID_FORNECEDOR').AsInteger :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TFIN_FM_M_PAG.txtFornecedorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmGeral.FIN_CD_M_PAG.FieldByName('INT_NOMEFOR').Text := '';

    if dmGeral.FIN_CD_M_PAG.FieldByName('id_fornecedor').Text = '' then
       begin
         ShowMessage('O campo "Fornecedor" deve ser prenchido.');
         txtFornecedor.SetFocus;
         abort;
       end;

    dmGeral.BUS_CD_C_FOR.Close;
    dmGeral.BUS_CD_C_FOR.Data :=
    dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtFornecedor.Text]));

    if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
       begin
         dmGeral.FIN_CD_M_PAG.FieldByName('INT_NOMEFOR').Text :='';
         txtFornecedor.SetFocus;
         abort;
       end;

    dmGeral.FIN_CD_M_PAG.FieldByName('INT_NOMEFOR').Text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
end;

procedure TFIN_FM_M_PAG.txtNTituloExit(Sender: TObject);
begin
  inherited;
  {if trim(dmGeral.FIN_CD_M_PAG.FieldByName('NUM_PARCELA').AsString) = '' then
     begin
       dmGeral.FIN_CD_M_PAG.FieldByName('NUM_PARCELA').AsString := dmGeral.FIN_CD_M_PAG.FieldByName('ID_TITULO').AsString;
     end;}
end;

procedure TFIN_FM_M_PAG.txtNTituloKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9','-','/',#8] ) then
    key:=#0;
end;

procedure TFIN_FM_M_PAG.txtobraButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
  PSQ_FM_X_OBR.ShowModal;
  if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
    begin
      txtobra.Text := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('id_obra').AsString;
      txtDescObra.Text :=  PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('descricao').Text;
    end;
  PSQ_FM_X_OBR.Free;
end;

procedure TFIN_FM_M_PAG.txtobraExit(Sender: TObject);
begin
  inherited;
  dmCtc.BUS_CD_C_OBR.Close;
  dmCtc.BUS_CD_C_OBR.Data :=
    dmCtc.BUS_CD_C_OBR.DataRequest(
      VarArrayOf([0, txtobra.Text,'True']));

  if dmCtc.BUS_CD_C_OBR.IsEmpty then
    begin
      showmessage('Obra não Encontrada!');
      txtobra.Text := '';
    end
  else
    begin
      txtDescObra.Text :=  dmCtc.BUS_CD_C_OBR.FieldByName('descricao').Text;
    end;
end;

procedure TFIN_FM_M_PAG.txtParcelasExit(Sender: TObject);
begin
  inherited;
  if ((txtParcelas.Text = '') or (StrToInt(txtParcelas.Text)< 2)) then
     begin
       ShowMessage('A quantidade de parcelas tem que ser no mínimo 2.');
       txtParcelas.Text := '2';
     end;
end;

procedure TFIN_FM_M_PAG.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFIN_FM_M_PAG.txtTituloKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if pos(',',txtTitulo.Text)>0 then
    begin
      if (Length(copy(txtTitulo.Text,pos(',',txtTitulo.Text)))>2) then
        begin
           if not ( Key = #8) then
            Key := #0;
        end;
    end;
end;

end.
