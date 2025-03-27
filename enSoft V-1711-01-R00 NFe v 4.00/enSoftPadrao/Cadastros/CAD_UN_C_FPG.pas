unit CAD_UN_C_FPG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls,
  vcl.Wwdbdatetimepicker, JvExMask, JvToolEdit, JvDBControls, Vcl.DBCtrls,
  Vcl.Mask, vcl.wwdblook, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, vcl.Wwdbedit,DBClient,
  vcl.Wwdotdot, vcl.Wwdbcomb, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TCAD_FM_C_FPG = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    lblPerfil: TLabel;
    cbbCentroCusto: TwwDBLookupCombo;
    lblTipoFinanceiro: TLabel;
    cbbTipoFinanceiro: TwwDBLookupCombo;
    lblDocImpresso: TLabel;
    cbbDocImpresso: TwwDBLookupCombo;
    lblTipoPagamento: TLabel;
    cbbTipoPagamento: TwwDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    lblLocalTitulo: TLabel;
    cbbLocalTitulo: TwwDBLookupCombo;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    dsFpgTap: TwwDataSource;
    pcDadosGerais: TPageControl;
    tsDados: TTabSheet;
    chkCriticaDebito: TDBCheckBox;
    chkGeraCaixaBanco: TDBCheckBox;
    gbVendasCompras: TGroupBox;
    lblVendas: TLabel;
    lblCompras: TLabel;
    lblJurosPagamento: TLabel;
    lblDescontoPagamento: TLabel;
    lblJurosRecebimento: TLabel;
    lblDescontoRecebimento: TLabel;
    cbbVendas: TwwDBLookupCombo;
    cbbCompras: TwwDBLookupCombo;
    cbbJurosPagamento: TwwDBLookupCombo;
    cbbDescontoPagamento: TwwDBLookupCombo;
    cbbDescontoRecebimento: TwwDBLookupCombo;
    cbbJurosRecebimento: TwwDBLookupCombo;
    tsCartao: TTabSheet;
    ScrollBox1: TScrollBox;
    gbItens: TGroupBox;
    pnTaxas: TPanel;
    Label12: TLabel;
    lblAliquotasTaxas: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    txtDeParc: TwwDBEdit;
    txtAteParc: TwwDBEdit;
    txtTotParc: TwwDBEdit;
    txtTaxaPrazo: TwwDBEdit;
    numQtdeDiasAcres: TwwDBEdit;
    cbbFilial: TwwDBLookupCombo;
    cbbMaquineta: TwwDBLookupCombo;
    btn_Add_Itens: TBitBtn;
    grdTaxas: TwwDBGrid;
    grdTaxasIButton: TwwIButton;
    txtTaxaAntec: TwwDBEdit;
    Label8: TLabel;
    Label2: TLabel;
    gb_C: TGroupBox;
    lblContaCredito: TLabel;
    Label9: TLabel;
    txtContaCredito: TDBEdit;
    txtTelefone: TDBEdit;
    rgTipoCartao: TDBRadioGroup;
    gbDadosVenda: TGroupBox;
    lblCcr: TLabel;
    lblBandeira: TLabel;
    cbbBandeira: TwwDBComboBox;
    cbbCredenciadora: TwwDBLookupCombo;
    tsBxaContasReceber: TTabSheet;
    gbBxaRapida: TGroupBox;
    cbbRbxTipoFinan: TwwDBLookupCombo;
    cbbRbxCCusto: TwwDBLookupCombo;
    cbbRbxPlano: TwwDBLookupCombo;
    lblRbxTipoFinan: TLabel;
    lblRbxPlano: TLabel;
    lblRbxCCusto: TLabel;
    Label13: TLabel;
    txtVlrMini: TDBEdit;
    chbAtivaRedParcRec: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Label14: TLabel;
    txtDiasVenc: TwwDBEdit;
    txtQtdeLimitParc: TwwDBEdit;
    Label15: TLabel;
    chbUtilPedVnd: TDBCheckBox;
    tsGestaoQualid: TTabSheet;
    Label16: TLabel;
    DBCheckBox2: TDBCheckBox;
    Label17: TLabel;
    wwDBEdit1: TwwDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbCentroCustoEnter(Sender: TObject);
    procedure cbbTipoFinanceiroEnter(Sender: TObject);
    procedure cbbVendasEnter(Sender: TObject);
    procedure cbbComprasEnter(Sender: TObject);
    procedure cbbJurosPagamentoEnter(Sender: TObject);
    procedure cbbDescontoPagamentoEnter(Sender: TObject);
    procedure cbbJurosRecebimentoEnter(Sender: TObject);
    procedure cbbDescontoRecebimentoEnter(Sender: TObject);
    procedure cbbDocImpressoEnter(Sender: TObject);
    procedure cbbTipoPagamentoEnter(Sender: TObject);
    procedure cbbLocalTituloEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbDocImpressoExit(Sender: TObject);
    procedure grdTaxasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtDeParcExit(Sender: TObject);
    procedure txtAteParcExit(Sender: TObject);
    procedure txtTaxaPrazoExit(Sender: TObject);
    procedure numQtdeDiasAcresExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure grdTaxasIButtonClick(Sender: TObject);
    procedure pnTaxasExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtTaxaAntecExit(Sender: TObject);
    procedure cbbFilialEnter(Sender: TObject);
    procedure cbbMaquinetaEnter(Sender: TObject);
    procedure cbbCredenciadoraEnter(Sender: TObject);
    procedure tsBxaContasReceberShow(Sender: TObject);
    procedure cbbRbxTipoFinanEnter(Sender: TObject);
    procedure cbbRbxPlanoEnter(Sender: TObject);
    procedure cbbRbxCCustoEnter(Sender: TObject);
    procedure chbAtivaRedParcRecClick(Sender: TObject);
    procedure txtQtdeLimitParcExit(Sender: TObject);
  private
    { Private declarations }
    procedure AltEstadoCampo(Estado: Boolean; Cor: TColor);
    procedure CadInfTotParcFpgTap;
    var
  AtivarFocuTxa: Boolean;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_FPG: TCAD_FM_C_FPG;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_PCT, PSQ_UN_X_TIF, PSQ_UN_X_CTC, CAD_UN_R_FPG;

procedure TCAD_FM_C_FPG.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FPG);
  AltEstadoCampo(false,$00DADADA);
  gb_c.Enabled := False;
  tsCartao.TabVisible := false;

  if (dmGeral.CAD_CD_C_FPG.FieldByName('ativa_red_parc_car_rec').AsBoolean=true) then
    begin
     txtQtdeLimitParc.Enabled := true;
     txtQtdeLimitParc.Color := clWhite;
    end
  else
    begin
     txtQtdeLimitParc.Enabled := false;
     txtQtdeLimitParc.Color := $00DADADA;
    end;


  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_FPG.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FPG) then
      begin
        inherited;
        AltEstadoCampo(false,$00DADADA);
        if dmGeral.CAD_CD_C_FPGdoc_impresso.Text = '3' then
          begin
            gb_c.Enabled := True;
            tsCartao.TabVisible := true;
          end
        else
          begin
            gb_c.Enabled := False;
            tsCartao.TabVisible := false;
          end;


        if (dmGeral.CAD_CD_C_FPG.FieldByName('ativa_red_parc_car_rec').AsBoolean=true) then
          begin
           txtQtdeLimitParc.Enabled := true;
           txtQtdeLimitParc.Color := clWhite;
          end
        else
          begin
           txtQtdeLimitParc.Enabled := false;
           txtQtdeLimitParc.Color := $00DADADA;
          end;

        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_FPG.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FPG) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_FPG.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FPG);
end;

procedure TCAD_FM_C_FPG.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_FPG);
  inherited;
  dmGeral.CAD_CD_C_FPG.Close;
  dmGeral.CAD_CD_C_FPG.Data :=
  dmGeral.CAD_CD_C_FPG.DataRequest(
          VarArrayOf([0, codigo]));

  dmGeral.BusCCusto(1,'%');
  dmGeral.BusTipoFin(1,'%');
  dmGeral.BusPlanoCta(1,'%');
  dmGeral.BusPlanoCta2(1,'%');
  dmGeral.BusPlanoCtaExp(1,'%');
end;

procedure TCAD_FM_C_FPG.AltEstadoCampo(Estado: Boolean; Cor: TColor);
begin
  txtDeParc.Enabled    := Estado;
  txtDeParc.Color      := Cor;
  txtAteParc.Enabled   := Estado;
  txtAteParc.Color     := Cor;
  txtTaxaPrazo.Enabled := Estado;
  txtTaxaPrazo.Color   := cor;
end;

procedure TCAD_FM_C_FPG.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_FPG.Close;
    dmGeral.CAD_CD_C_FPG.Data :=
    dmGeral.CAD_CD_C_FPG.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_FPG.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  AltEstadoCampo(True,$00F9E1DF);
  dmGeral.CAD_CD_C_FPG_TAP.Insert;

  cbbFilial.SetFocus;
end;

procedure TCAD_FM_C_FPG.cbbCentroCustoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCCusto(1,'%');
  cbbCentroCusto.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbComprasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta2(92,'0');
  cbbCompras.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbCredenciadoraEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCredenciadoraCartao(1,'%');
  cbbCredenciadora.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbDescontoPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp(91,'0');
  cbbDescontoPagamento.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbDescontoRecebimentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp(91,'0');
  cbbDescontoRecebimento.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbDocImpressoEnter(Sender: TObject);
begin
  inherited;
//  dmGeral.BUS_PR_X_DOC; //Removi essa instrução para evitar que o valor doc_impresso fica escondido
                           //quando o cursor passar por ele. Responsavel: Luan. Data:13/10/2015
  cbbDocImpresso.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbDocImpressoExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_FPGdoc_impresso.Text = '3' then
    begin
      gb_c.Enabled := True;
      tsCartao.TabVisible := true;
    end
  else
    begin
      gb_c.Enabled := False;
      tsCartao.TabVisible := false;
    end;

end;

procedure TCAD_FM_C_FPG.cbbJurosPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp(91,'0');
  cbbJurosPagamento.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbJurosRecebimentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp(91,'0');
  cbbJurosRecebimento.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbLocalTituloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusLocalTit(1,'%');
  cbbLocalTitulo.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbMaquinetaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_MCT.Close;
  dmGeral.BUS_CD_C_MCT.Data := dmGeral.BUS_CD_C_MCT.DataRequest(VarArrayOf([1, '%']));

  cbbMaquineta.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCAD_FM_C_FPG.cbbRbxCCustoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCCustoExp2(1,'%');
  cbbRbxCCusto.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbRbxPlanoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp(92,' '''+'1'+''','''+'2'+''' ');
  cbbRbxPlano.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbRbxTipoFinanEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp(90,'1');
  cbbRbxTipoFinan.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFin(1,'%');
  cbbTipoFinanceiro.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbTipoPagamentoEnter(Sender: TObject);
begin
  inherited;
//  dmGeral.BUS_PR_X_TPG;   //Removi essa instrução para evitar que o valor doc_impresso fica escondido
                           //quando o cursor passar por ele. Responsavel: Luan. Data:13/10/2015
  cbbTipoPagamento.DropDown;
end;

procedure TCAD_FM_C_FPG.cbbVendasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta(92,'1');
  cbbVendas.DropDown;
end;

procedure TCAD_FM_C_FPG.chbAtivaRedParcRecClick(Sender: TObject);
begin
  inherited;
  if chbAtivaRedParcRec.Checked then
    begin
     txtQtdeLimitParc.Enabled := true;
     txtQtdeLimitParc.Color := clWhite;
    end
  else
    begin
     txtQtdeLimitParc.Enabled := false;
     txtQtdeLimitParc.Color := $00DADADA;
    end;
end;

procedure TCAD_FM_C_FPG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_FPG.Close;
  FreeAndNil(CAD_FM_C_FPG);
end;

procedure TCAD_FM_C_FPG.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_FPG.Close;
  dmGeral.CAD_CD_C_FPG.Data := dmGeral.CAD_CD_C_FPG.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_FPG.Open;

  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data := dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1, '%']));

  dmGeral.BUS_CD_C_MCT.Close;
  dmGeral.BUS_CD_C_MCT.Data := dmGeral.BUS_CD_C_MCT.DataRequest(VarArrayOf([1, '%']));

  dmGeral.BusCCusto(1,'%');
  dmGeral.BusTipoFin(1,'%');
  dmGeral.BusPlanoCta(1,'%');
  dmGeral.BusPlanoCta2(1,'%');
  dmGeral.BusPlanoCtaExp(1,'%');
  dmGeral.BUS_PR_X_DOC;
  dmGeral.BUS_PR_X_TPG;
end;

procedure TCAD_FM_C_FPG.FormShow(Sender: TObject);
begin
  inherited;
  pcDadosGerais.ActivePage := tsDados;



  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativar_util_fpg_ped_vnd').AsBoolean then
    begin
      chbUtilPedVnd.Visible := true;
    end
  else
    begin
      chbUtilPedVnd.Visible := false;
    end;


  tsGestaoQualid.TabVisible := false;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean then
    begin
      tsGestaoQualid.TabVisible := true;
    end;
end;

procedure TCAD_FM_C_FPG.grdTaxasIButtonClick(Sender: TObject);
begin
  inherited;
  // dmGeral.CAD_CD_C_FPG_TAP.Cancel;
  try
   grdTaxasIButton.Enabled := false;
   if not dmGeral.CAD_CD_C_FPG_TAP.IsEmpty then
      begin
        dmGeral.CAD_CD_C_FPG_TAP.edit;
        dmGeral.CAD_CD_C_FPG_TAP.Delete;
      end
   else
     begin
       ShowMessage('Nenhum registro encontrado!');
       dmGeral.CAD_CD_C_FPG_TAP.Insert;
     end;
  finally
     grdTaxasIButton.Enabled := true;
  end;
end;

procedure TCAD_FM_C_FPG.grdTaxasMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dmGeral.CAD_CD_C_FPG_TAP.cancel;
  AltEstadoCampo(false,$00DADADA);
  if not dmGeral.CAD_CD_C_FPG_TAP.IsEmpty then
     begin
       numQtdeDiasAcres.SetFocus;
     end;
end;

procedure TCAD_FM_C_FPG.numQtdeDiasAcresExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtTaxaPrazo.Focused or
     grdTaxas.Focused     or txtAteParc.Focused or
     txtDeParc.Focused or
     (not grdTaxasIButton.Enabled) then
     begin
       exit;
     end;

  if dmGeral.CAD_CD_C_FPG_TAP.FieldByName('DIAS_ACRES_VENCTO').AsFloat < 0 then
     begin
       ShowMessage('Não é permitido valor menor que 0.');
       numQtdeDiasAcres.SetFocus;
       abort;
     end;

  dmGeral.CAD_CD_C_FPG_TAP.Post;

  ActiveControl := nil;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

procedure TCAD_FM_C_FPG.pnTaxasExit(Sender: TObject);
begin
 inherited;
{ if (btn_Add_Itens.Focused) or (grdTaxas.Focused) or
     (not grdTaxasIButton.Enabled) then
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

        dmGeral.CAD_CD_C_FPG_TAP.Cancel;
        dmGeral.CAD_CD_C_FPG_TAP.edit;

        finally
           pnTaxas.Enabled := false;
        end;
      end;   }
end;

procedure TCAD_FM_C_FPG.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_FPG.txtQtdeLimitParcExit(Sender: TObject);
begin
  inherited;

  if ((dmGeral.CAD_CD_C_FPG.FieldByName('qtde_red_parc_car_rec').AsString <> '') and
      (dmGeral.CAD_CD_C_FPG.FieldByName('qtde_red_parc_car_rec').AsInteger <= 0)) then
     begin
       ShowMessage('Não é permitido valor menor ou igual a zero.');
       dmGeral.CAD_CD_C_FPG.FieldByName('qtde_red_parc_car_rec').AsString := '';
       txtQtdeLimitParc.SetFocus;
       abort;
     end;
end;

procedure TCAD_FM_C_FPG.txtTaxaAntecExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.CAD_CD_C_FPG.FieldByName('taxa_antecipacao').AsFloat < 0 then
     begin
       ShowMessage('Não é permitido valor menor que 0.');
       dmGeral.CAD_CD_C_FPG.FieldByName('taxa_antecipacao').AsFloat := 0;
       txtTaxaAntec.SetFocus;
       abort;
     end;
end;

procedure TCAD_FM_C_FPG.txtTaxaPrazoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdTaxas.Focused  or txtAteParc.Focused or
     txtDeParc.Focused then
     begin
       exit;
     end;


  if dmGeral.CAD_CD_C_FPG_TAP.FieldByName('TAXA').AsFloat < 0 then
     begin
       ShowMessage('Não é permitido valor menor que 0.');
       txtTaxaPrazo.SetFocus;
       abort;
     end;
end;

procedure TCAD_FM_C_FPG.cbbFilialEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data := dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1, '%']));

  cbbFilial.DropDown;
end;

procedure TCAD_FM_C_FPG.tsBxaContasReceberShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp(90,'1');
  dmGeral.BusPlanoCtaExp(92,' '''+'1'+''','''+'2'+''' ');
  dmGeral.BusCCustoExp2(1,'%');
end;

procedure TCAD_FM_C_FPG.txtAteParcExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdTaxas.Focused  or
     txtDeParc.Focused or (not grdTaxasIButton.Enabled) then
     begin
       exit;
     end;

  if dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger < 0 then
     begin
       ShowMessage('Não é permitido valor menor que 0.');
       dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger := 0;
       txtAteParc.SetFocus;
       exit;
     end;

  AtivarFocuTxa := false;
  if txtTaxaPrazo.Focused then
     begin
       AtivarFocuTxa := true;
     end;

  CadInfTotParcFpgTap;

  if AtivarFocuTxa then
     begin
       ActiveControl := nil;
       PostMessage(txtTaxaPrazo.Handle, WM_SETFOCUS, 0, 0);
       txtTaxaPrazo.SetFocus;
     end;

end;

procedure TCAD_FM_C_FPG.txtDeParcExit(Sender: TObject);
var
  AtivarFocuAte: Boolean;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdTaxas.Focused  or
     txtDeParc.Focused or (not grdTaxasIButton.Enabled) then
     begin
       exit;
     end;

  if dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger < 0 then
     begin
       ShowMessage('Não é permitido valor menor que 0.');
       dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger := 0;
       txtDeParc.SetFocus;
       exit;
     end;

  AtivarFocuAte := false;
  if txtAteParc.Focused then
     begin
       AtivarFocuAte := true;
     end;

  CadInfTotParcFpgTap;

  if AtivarFocuAte then
     begin
       ActiveControl := nil;
       PostMessage(txtAteParc.Handle, WM_SETFOCUS, 0, 0);
       txtAteParc.SetFocus;
     end;
end;


procedure TCAD_FM_C_FPG.CadInfTotParcFpgTap;
var
  IdFilial, IdMaquineta, QtdIni, QtdFin, QtdTot: integer;
  Taxa: Extended;
  DescMaq: String;
begin
  dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_TOT').text  := '';

  if (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger > 0) and
     (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger > 0) then
      begin
        dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_TOT').AsInteger  :=
           dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger +
           (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger -
           dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger);


        if dmGeral.CAD_CD_C_FPG_TAP.State in [dsInsert] then
           begin
              IdFilial     := dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_EMPRESA').AsInteger;
              IdMaquineta  := dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_MAQUINETA').AsInteger;
              QtdIni := dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger;
              QtdFin := dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger;
              QtdTot := dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_TOT').AsInteger;
              Taxa   := dmGeral.CAD_CD_C_FPG_TAP.FieldByName('TAXA').AsFloat;

              dmGeral.CAD_CD_C_FPG_TAP.Cancel;
              dmGeral.CAD_CD_C_FPG_TAP.First;
              while not dmGeral.CAD_CD_C_FPG_TAP.eof  do
                 begin
                   if (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_EMPRESA').AsInteger     = IdFilial) and
                      (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_MAQUINETA').AsInteger  = IdMaquineta) and
                      (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger = QtdIni) then
                      begin
                        ShowMessage('Já existe um prazo com a quantidade inicial a ' + inttostr(QtdIni)+' na mesma Filial e Maquineta.');
                        AtivarFocuTxa := false;
                        dmGeral.CAD_CD_C_FPG_TAP.Insert;
                        cbbFilial.SetFocus;
                        exit;
                      end;
                   if (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_EMPRESA').AsInteger     = IdFilial) and
                      (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_MAQUINETA').AsInteger  = IdMaquineta) and
                      (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger = QtdIni) then
                      begin
                        ShowMessage('A quantidade inicial que deseja inserir está chocando com outra quantidade final de outro prazo na mesma Filial e Maquineta.');
                        AtivarFocuTxa := false;
                        dmGeral.CAD_CD_C_FPG_TAP.Insert;
                        cbbFilial.SetFocus;
                        exit;
                      end;

                   if (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_EMPRESA').AsInteger     = IdFilial) and
                      (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_MAQUINETA').AsInteger  = IdMaquineta) and
                      (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger = QtdFin) then
                      begin
                        ShowMessage('Já existe um prazo com a quantidade Final a ' + inttostr(QtdFin)+' na mesma Filial e Maquineta.');
                        AtivarFocuTxa := false;
                        dmGeral.CAD_CD_C_FPG_TAP.Insert;
                        cbbFilial.SetFocus;
                        exit;
                      end;
                   if (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_EMPRESA').AsInteger     = IdFilial) and
                      (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_MAQUINETA').AsInteger  = IdMaquineta) and
                      (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_TOT').AsInteger = QtdTot) then
                      begin
                        ShowMessage('Já existe um prazo com quantidade de parcela(s) igual a ' + inttostr(QtdTot)+' na mesma Filial e Maquineta.');
                        AtivarFocuTxa := false;
                        dmGeral.CAD_CD_C_FPG_TAP.Insert;
                        cbbFilial.SetFocus;
                        exit;
                      end;
                   if (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_EMPRESA').AsInteger     = IdFilial) and
                      (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_MAQUINETA').AsInteger  = IdMaquineta) and
                      ( QtdTot < dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_TOT').AsInteger)  then
                      begin
                         if (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_EMPRESA').AsInteger     = IdFilial) and
                            (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_MAQUINETA').AsInteger  = IdMaquineta) and
                            (dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger <= QtdTot) then
                              begin
                                ShowMessage('Já existe um prazo que compreende este prazo que deseja inserir na mesma Filial e Maquineta.');
                                AtivarFocuTxa := false;
                                dmGeral.CAD_CD_C_FPG_TAP.Insert;
                                cbbFilial.SetFocus;
                                exit;
                             end;
                      end;
                   dmGeral.CAD_CD_C_FPG_TAP.Next;
                 end;
              dmGeral.CAD_CD_C_FPG_TAP.Insert;
              dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_EMPRESA').AsInteger     := IdFilial;
              dmGeral.CAD_CD_C_FPG_TAP.FieldByName('ID_MAQUINETA').AsInteger  := IdMaquineta;
              dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger := QtdIni;
              dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger := QtdFin;
              dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_TOT').AsInteger := QtdTot;
              dmGeral.CAD_CD_C_FPG_TAP.FieldByName('TAXA').AsFloat := Taxa;
           end
      end;
end;

end.
