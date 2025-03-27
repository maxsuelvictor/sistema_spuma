unit FIN_UN_M_CTA_BCO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, Vcl.DBCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, JvExStdCtrls, JvCombobox, JvDBCombobox, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Datasnap.DBClient, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TFIN_FM_M_CTA_BCO = class(TPAD_FM_X_PAD)
    lblVlrLancamento: TLabel;
    Label2: TLabel;
    lblPlanoContas: TLabel;
    lblTipoFinanceiro: TLabel;
    lblContaCorrente: TLabel;
    lblDtaLancamento: TLabel;
    lblNDocumento: TLabel;
    txtHistorico: TDBMemo;
    cbbPlanoContas: TwwDBLookupCombo;
    cbbTipoFinanceiro: TwwDBLookupCombo;
    cbbContaCorrente: TwwDBLookupCombo;
    txtNDocumento: TDBMemo;
    gbExportaLancamento: TGroupBox;
    lblContaCorrenteEL: TLabel;
    lblTipoFinanceiroEL: TLabel;
    lblPlanoContasEL: TLabel;
    cbbTipoFinanceiroEL: TwwDBLookupCombo;
    cbbPlanoContasEL: TwwDBLookupCombo;
    txtVlrLancamento: TDBEdit;
    dpkDtaMovimento: TJvDBDateEdit;
    txtRev: TLabel;
    DBEdit1: TDBEdit;
    cbbContaCorrenteEL: TwwDBLookupCombo;
    btnImprimir: TcxButton;
    FIN_XL_M_CTA_BCO: TfrxXLSExport;
    FIN_PD_M_CTA_BCO: TfrxPDFExport;
    FIN_FR_M_CTA_BCO: TfrxReport;
    FIN_DB_M_CTA_BCO: TfrxDBDataset;
    cdsBco: TClientDataSet;
    cdsBcodta_movimento: TDateField;
    cdsBcoid_conta: TIntegerField;
    cdsBcoid_tipo_financeiro: TIntegerField;
    cdsBcoid_plano: TStringField;
    cdsBcoexp_id_conta: TIntegerField;
    cdsBcoexp_id_tipo_financeiro: TIntegerField;
    cdsBcoexp_id_plano: TStringField;
    cdsBcovlr_lancamento: TCurrencyField;
    cdsBcoint_nomectc: TStringField;
    cdsBcoint_nometif: TStringField;
    cdsBcoint_nomepct: TStringField;
    cdsBcoint_nomectcexp: TStringField;
    cdsBcoint_nometifexp: TStringField;
    cdsBcoint_nomepctexp: TStringField;
    cdsBcoint_nomefun_imp: TStringField;
    cdsBcoid_controle: TIntegerField;
    lbobra: TLabel;
    txtobra: TJvDBComboEdit;
    txtDescObra: TDBEdit;
    cdsBcohistorico: TStringField;
    txtPesquisaData: TJvDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure cbbTipoFinanceiroEnter(Sender: TObject);
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure cbbContaCorrenteELEnter(Sender: TObject);
    procedure cbbTipoFinanceiroELEnter(Sender: TObject);
    procedure cbbPlanoContasELEnter(Sender: TObject);
    procedure cbbTipoFinanceiroChange(Sender: TObject);
    procedure cbbTipoFinanceiroExit(Sender: TObject);
    procedure dpkDtaMovimentoExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure cbbContaCorrenteELExit(Sender: TObject);
    procedure cbbContaCorrenteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cbbTipoFinanceiroELExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    var
      tif_natureza,tif_natureza_exp:string;
      gera_pag:boolean;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_CTA_BCO: TFIN_FM_M_CTA_BCO;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, PSQ_UN_X_OBR, uDmCtc;

procedure TFIN_FM_M_CTA_BCO.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CTA_BCO);
  cbbContaCorrenteEL.Enabled := False;
  cbbTipoFinanceiroEL.Enabled := False;
  cbbPlanoContasEL.Enabled := False;
  btnImprimir.Enabled := false;
  txtNDocumento.SetFocus;
end;

procedure TFIN_FM_M_CTA_BCO.AbrirBuscas;
begin
   dmGeral.BusContaCorr(4,'%');
   dmGeral.BusTipoFin(1,'%');
   dmGeral.BusPlanoCta(1,'%');

   dmGeral.BusCxaBcoExp;
   dmGeral.BusTipoFinExp(1,'%');
   dmGeral.BusPlanoCtaExp(1,'%');
end;

procedure TFIN_FM_M_CTA_BCO.acAlterarExecute(Sender: TObject);
begin

  if dmGeral.FIN_CD_M_CTA_BCO.RecordCount >0 then
   begin
    if (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ORIGEM').AsInteger <> 0)  then
      begin
        ShowMessage('Alteração não permitida. Registro não foi gerado manualmente.');
        exit;
      end;

    if (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ORIGEM').AsInteger = 0) and
       (not dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTROLE').IsNull) and
        (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTROLE').AsInteger <> 0) then
      begin
         ShowMessage('Alteração não permitida. Registro gerado pela exportação.');
         exit;
      end;

    if ((dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ORIGEM').AsInteger = 0) and
       (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('CONCILIADO').AsBoolean = True))  then
      begin
        ShowMessage('Alteração não permitida. Registro já conciliado.');
        exit;
      end;

   end;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CTA_BCO) then
      begin
        inherited;
        btnImprimir.Enabled := false;
        txtNDocumento.SetFocus;
        dmGeral.BusTipoFin(0,dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_TIPO_FINANCEIRO').AsString);
        if not dmGeral.BUS_CD_C_TIF.IsEmpty then
         begin
          tif_natureza := dmGeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsString;
          if ((dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').IsNull) or
             (dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').AsBoolean = False)) then
            begin
               cbbContaCorrenteEL.Enabled := false;
               cbbTipoFinanceiroEL.Enabled := false;
               cbbPlanoContasEL.Enabled := false;
            end;
         end;

        tif_natureza_exp := '';
        if dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString <>'' then
          begin
            dmGeral.BusTipoFinExp(0,dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString);
            if not dmGeral.BUS_CD_C_TIF_EXP.IsEmpty then
             begin
                tif_natureza_exp := dmGeral.BUS_CD_C_TIF_EXP.FieldByName('NATUREZA').AsString;
             end;
          end;


      end;
end;

procedure TFIN_FM_M_CTA_BCO.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CTA_BCO) then
     begin
       inherited;
       dbGrid.SetFocus;
       btnImprimir.Enabled := true;
       cbbContaCorrenteEL.Enabled := true;
       cbbTipoFinanceiroEL.Enabled := true;
       cbbPlanoContasEL.Enabled := true;
     end
  else
     begin
       txtNDocumento.SetFocus;
     end;
end;

procedure TFIN_FM_M_CTA_BCO.acExcluirExecute(Sender: TObject);
begin
 if dmGeral.FIN_CD_M_CTA_BCO.RecordCount >0 then
   begin
    if dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ORIGEM').AsInteger <> 0 then
      begin
        ShowMessage('Exclusão não permitida. Registro não foi gerado manualmente.');
        exit;
      end;

    if (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ORIGEM').AsInteger = 0) and
       (not dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTROLE').IsNull) and
        (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTROLE').AsInteger <> 0) then
      begin
         ShowMessage('Exclusão não permitida. Registro gerado pela exportação.');
         exit;
      end;

    if ((dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ORIGEM').AsInteger = 0) and
       (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('CONCILIADO').AsBoolean = True))  then
      begin
        ShowMessage('Exclusão não permitida. Registro já conciliado.');
        exit;
      end;

   end;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CTA_BCO);
end;

procedure TFIN_FM_M_CTA_BCO.acGravarExecute(Sender: TObject);
var
  codigo,mens: string;
begin

   codigo := dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_CONTROLE').AsString;

   if (gera_pag = true) then
      begin
        mens := '';

        if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PDE_ID_FORMA_PAG').AsString) = '') then
              begin
                mens := 'Forma de Pagamento em "Despesas".'+#13+#10;
              end;

        if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PDE_ID_LOCAL_TITULO').AsString) = '') then
              begin
                mens := 'Local título em "Despesas".'+#13+#10;
              end;

        if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MVB_ID_FORNECEDOR').AsString) = '') then
              begin
                mens := 'Fornecedor em "Movimento Bancário".'+#13+#10;
              end;

        if (mens <>'') then
           begin
              mens := 'Na tela de parâmetros devem ser preenchidos os seguintes campos:'+#13+#10+mens;
              ShowMessage(mens);
              exit;
           end;

      end;


   DmGeral.Grava(dmGeral.FIN_CD_M_CTA_BCO);
   inherited;
   {dmGeral.BusContaCorr(2,'%');
   dmGeral.BusTipoFin(1,'%');
   dmGeral.BusPlanoCta(1,'%');

   dmGeral.BusContaCorrExp(2,'%');
   dmGeral.BusTipoFinExp(1,'%');
   dmGeral.BusPlanoCtaExp(1,'%');}

   AbrirBuscas;

   //Retirei o ultimo paramatro de valor 1 que traziz registro do tipo credito.Responsavel:Luan.Data:06/10/2015
   dmGeral.FIN_CD_M_CTA_BCO.Close;
   dmGeral.FIN_CD_M_CTA_BCO.Data :=
   dmGeral.FIN_CD_M_CTA_BCO.DataRequest(
           VarArrayOf([8,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'1',codigo]));
   btnImprimir.Enabled := true;
   cbbContaCorrenteEL.Enabled := true;
   cbbTipoFinanceiroEL.Enabled := true;
   cbbPlanoContasEL.Enabled := true;
end;

procedure TFIN_FM_M_CTA_BCO.btnFiltroClick(Sender: TObject);
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

    dmGeral.FIN_CD_M_CTA_BCO.Close;
    dmGeral.FIN_CD_M_CTA_BCO.Data :=
    dmGeral.FIN_CD_M_CTA_BCO.DataRequest(
        VarArrayOf([cbbPesquisa.ItemIndex+8,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'1',xPesquisa]));


  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_CTA_BCO.cbbContaCorrenteELEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCxaBcoExp;
  cbbContaCorrenteEL.DropDown;
end;

procedure TFIN_FM_M_CTA_BCO.cbbContaCorrenteELExit(Sender: TObject);
begin
  inherited;
  if ((dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_CONTA').AsString <> '') and
     (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTA').AsString <> '')) then
     begin
       if (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_CONTA').AsString =
           dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTA').AsString) then
          begin
            ShowMessage('Conta corrente exporta não pode ser igual ao conta corrente selecionado anteriormente.');
            dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTA').AsString := '';
            cbbContaCorrenteEL.Text := '';
            cbbContaCorrenteEL.SetFocus;
          end;
     end;
end;

procedure TFIN_FM_M_CTA_BCO.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusContaCorr(3,'1');
  cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_CTA_BCO.cbbContaCorrenteExit(Sender: TObject);
begin
  inherited;
   if ((dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_CONTA').AsString <> '') and
     (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTA').AsString <> '')) then
     begin
       if (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_CONTA').AsString =
           dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTA').AsString) then
          begin
            ShowMessage('Conta corrente não pode ser igual ao conta corrente de exportação.');
            dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_CONTA').AsString := '';
            cbbContaCorrente.Text := '';
            cbbContaCorrente.SetFocus;
          end;
     end;
end;

procedure TFIN_FM_M_CTA_BCO.cbbPesquisaChange(Sender: TObject);
begin
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [1,6]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 115;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;

  if (cbbPesquisa.ItemIndex in [0,2]) then
    begin
      txtPesquisa.NumbersOnly := true;
    end
  else
    begin
      txtPesquisa.NumbersOnly := false;
    end;
end;

procedure TFIN_FM_M_CTA_BCO.cbbPlanoContasELEnter(Sender: TObject);
begin
  inherited;
  {if (tif_natureza = '0') then
    begin
      dmGeral.BusPlanoCtaExp(92,'1');
    end;
  if (tif_natureza = '1') then
    begin
       dmGeral.BusPlanoCtaExp(90,'1');
    end;}

  if (tif_natureza_exp = '0') then
    begin
      dmGeral.BusPlanoCtaExp(90,'1');
    end;
  if (tif_natureza_exp = '1') then
    begin
       dmGeral.BusPlanoCtaExp(92,'''1'',''2'',''4''');
    end;
  cbbPlanoContasEL.DropDown;
end;

procedure TFIN_FM_M_CTA_BCO.cbbPlanoContasEnter(Sender: TObject);
begin
  inherited;
  {if (tif_natureza = '0') then
    begin
      dmGeral.BusPlanoCta(92,'0');
    end;
  if (tif_natureza = '1') then
    begin
       dmGeral.BusPlanoCta(90,'0');
    end;  }
  if (tif_natureza = '0') then
    begin
      dmGeral.BusPlanoCta(90,'1');
    end;
  if (tif_natureza = '1') then
    begin
       dmGeral.BusPlanoCta(92,'''1'',''2'',''4''');
    end;


  cbbPlanoContas.DropDown;
end;

procedure TFIN_FM_M_CTA_BCO.cbbTipoFinanceiroChange(Sender: TObject);
begin
  inherited;
   cbbContaCorrenteEL.Enabled := True;
   cbbTipoFinanceiroEL.Enabled := True;
   cbbPlanoContasEL.Enabled := True;



   if (dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').AsBoolean = False) then
    begin
      cbbContaCorrenteEL.Enabled := False;
      cbbTipoFinanceiroEL.Enabled := False;
      cbbPlanoContasEL.Enabled := False;
    end;
end;

procedure TFIN_FM_M_CTA_BCO.cbbTipoFinanceiroELEnter(Sender: TObject);
begin
  inherited;
  if (tif_natureza = '0') then
    dmGeral.BusTipoFinExp(90,'1');
  if (tif_natureza = '1') then
    dmGeral.BusTipoFinExp(90,'0');
  cbbTipoFinanceiroEL.DropDown;
end;

procedure TFIN_FM_M_CTA_BCO.cbbTipoFinanceiroELExit(Sender: TObject);
begin
  inherited;
  tif_natureza_exp := dmGeral.BUS_CD_C_TIF_EXP.FieldByName('NATUREZA').AsString;
end;

procedure TFIN_FM_M_CTA_BCO.cbbTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFin(1,'%');
  cbbTipoFinanceiro.DropDown;
end;

procedure TFIN_FM_M_CTA_BCO.cbbTipoFinanceiroExit(Sender: TObject);
begin
  inherited;

  tif_natureza := '';
   cbbContaCorrenteEL.Text := '';
   cbbTipoFinanceiroEL.Text := '';
   cbbPlanoContasEL.Text := '';
  dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTA').AsString := '';
  dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString := '';
  dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_PLANO').AsString := '';
  if (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_TIPO_FINANCEIRO').AsString <> '') then
     begin
       dmGeral.BusTipoFin(0,dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_TIPO_FINANCEIRO').AsString);
       if not dmGeral.BUS_CD_C_TIF.IsEmpty then
         begin
          tif_natureza := dmGeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsString;
          gera_pag := dmGeral.BUS_CD_C_TIF.FieldByName('GERA_PAG').AsBoolean;
          dmGeral.FIN_CD_M_CTA_BCO.FieldByName('DEB_CRE').AsInteger :=
                          dmGeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsInteger;
         end;
     end;
end;

procedure TFIN_FM_M_CTA_BCO.btnImprimirClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  Exporta:boolean;
begin
  inherited;
  cdsBco.EmptyDataSet;
  if not dmGeral.FIN_CD_M_CTA_BCO.IsEmpty then
    begin
      {dmGeral.FIN_CD_M_CTA_BCO.Close;
      dmGeral.FIN_CD_M_CTA_BCO.Data :=
      dmGeral.FIN_CD_M_CTA_BCO.DataRequest(VarArrayOf([0,empresa,codigo]));}


      if (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTROLE').AsInteger = 0) then
         begin
             cdsBco.Insert;

             cdsBco.FieldByName('ID_CONTROLE').AsInteger := dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_CONTROLE').AsInteger;
             cdsBco.FieldByName('DTA_MOVIMENTO').AsDateTime := dmGeral.FIN_CD_M_CTA_BCO.FieldByName('DTA_MOVIMENTO').AsDateTime;
             cdsBco.FieldByName('VLR_LANCAMENTO').AsCurrency := dmGeral.FIN_CD_M_CTA_BCO.FieldByName('VLR_LANCAMENTO').AsCurrency;

             dmGeral.BUS_CD_C_FUN.Close;
             dmGeral.BUS_CD_C_FUN.Data :=
             dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0,IntToStr(xFuncionario)]));

             cdsBco.FieldByName('INT_NOMEFUN_IMP').AsString := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;


             dmGeral.BUS_CD_C_CTC.Close;
             dmGeral.BUS_CD_C_CTC.Data :=
             dmGeral.BUS_CD_C_CTC.DataRequest(VarArrayOf([0,dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_CONTA').AsString]));

             cdsBco.FieldByName('ID_CONTA').AsInteger := dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_CONTA').AsInteger;
             cdsBco.FieldByName('INT_NOMECTC').AsString := dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;

             dmGeral.BUS_CD_C_TIF.Close;
             dmGeral.BUS_CD_C_TIF.Data :=
             dmGeral.BUS_CD_C_TIF.DataRequest(VarArrayOf([0,dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_TIPO_FINANCEIRO').AsString]));
             Exporta := false;
             if ((not dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').IsNull) and
                (dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').AsBoolean = True)) then
               begin
                 Exporta := true;
               end;

             cdsBco.FieldByName('ID_TIPO_FINANCEIRO').AsInteger := dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;
             cdsBco.FieldByName('INT_NOMETIF').AsString := dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString;


             dmGeral.BUS_CD_C_PCT.Close;
             dmGeral.BUS_CD_C_PCT.Data :=
             dmGeral.BUS_CD_C_PCT.DataRequest(VarArrayOf([0,trim(dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_PLANO').AsString)]));

             cdsBco.FieldByName('ID_PLANO').AsString := trim(dmGeral.FIN_CD_M_CTA_BCO.FieldByName('ID_PLANO').AsString);
             cdsBco.FieldByName('INT_NOMEPCT').AsString := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;

             if (Exporta = true) then
                begin
                 dmGeral.BUS_CD_C_CTC.Close;
                 dmGeral.BUS_CD_C_CTC.Data :=
                 dmGeral.BUS_CD_C_CTC.DataRequest(VarArrayOf([0,dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTA').AsString]));

                 cdsBco.FieldByName('EXP_ID_CONTA').AsInteger := dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_CONTA').AsInteger;
                 cdsBco.FieldByName('INT_NOMECTCEXP').AsString := dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;

                 dmGeral.BUS_CD_C_TIF.Close;
                 dmGeral.BUS_CD_C_TIF.Data :=
                 dmGeral.BUS_CD_C_TIF.DataRequest(VarArrayOf([0,dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString]));

                 cdsBco.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsInteger := dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsInteger;
                 cdsBco.FieldByName('INT_NOMETIFEXP').AsString := dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString;


                 dmGeral.BUS_CD_C_PCT.Close;
                 dmGeral.BUS_CD_C_PCT.Data :=
                 dmGeral.BUS_CD_C_PCT.DataRequest(VarArrayOf([0,trim(dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_PLANO').AsString)]));

                 cdsBco.FieldByName('EXP_ID_PLANO').AsString := trim(dmGeral.FIN_CD_M_CTA_BCO.FieldByName('EXP_ID_PLANO').AsString);
                 cdsBco.FieldByName('INT_NOMEPCTEXP').AsString := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;

                 cdsBco.FieldByName('HISTORICO').AsString := trim(dmGeral.FIN_CD_M_CTA_BCO.FieldByName('HISTORICO').AsString);
                end;

             cdsBco.Post;

             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(FIN_FR_M_CTA_BCO.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

             FIN_FR_M_CTA_BCO.Variables['exporta'] := false;
             if (Exporta=true) then
               begin
                 FIN_FR_M_CTA_BCO.Variables['exporta'] := true;
               end;
             FIN_FR_M_CTA_BCO.Variables['Opcoes'] := QuotedStr('');
             FIN_FR_M_CTA_BCO.PrepareReport();
             FIN_FR_M_CTA_BCO.ShowReport();
         end
       else
         begin
            ShowMessage('Operação não permitida. Registro gerado pela exportação.');
         end;

    end
  else
    begin
      ShowMessage('É necessário selecionar o registro.');
    end;


end;

procedure TFIN_FM_M_CTA_BCO.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
   if dmGeral.FIN_CD_M_CTA_BCO.FieldByName('deb_cre').AsInteger=0 then
    begin
      aFont.Color := clRed; //Vermelho
      afont.Style := [fsBold];
    end;
  if dmGeral.FIN_CD_M_CTA_BCO.FieldByName('deb_cre').AsInteger=1 then
    begin
      aFont.Color := clGreen; //Vermelho
      afont.Style := [fsBold];
    end;
end;

procedure TFIN_FM_M_CTA_BCO.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  AbrirBuscas;
end;

procedure TFIN_FM_M_CTA_BCO.dpkDtaMovimentoExit(Sender: TObject);
begin
  inherited;
  if (dmGeral.FIN_CD_M_CTA_BCO.FieldByName('DTA_MOVIMENTO').AsString = '  /  /    ') then
     begin
       dmGeral.FIN_CD_M_CTA_BCO.FieldByName('DTA_MOVIMENTO').AsDateTime := xDataSis;
     end;
  if dmGeral.FIN_CD_M_CTA_BCO.FieldByName('DTA_MOVIMENTO').AsDateTime > xDataSis then
    begin
       ShowMessage('A data do movimento não pode ser maior que data atual.');
       dmGeral.FIN_CD_M_CTA_BCO.FieldByName('DTA_MOVIMENTO').AsDateTime := xDataSis;
       dpkDtaMovimento.SetFocus;
    end;

end;

procedure TFIN_FM_M_CTA_BCO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_CTA_BCO.Close;
  FreeAndNil(FIN_FM_M_CTA_BCO);
end;

procedure TFIN_FM_M_CTA_BCO.FormCreate(Sender: TObject);
begin
  inherited;
  cdsBco.CreateDataSet;

  dmGeral.FIN_CD_M_CTA_BCO.Close;
  dmGeral.FIN_CD_M_CTA_BCO.Data := dmGeral.FIN_CD_M_CTA_BCO.DataRequest(VarArrayOf([0, '']));


  {dmGeral.BusContaCorr(2,'%');
  dmGeral.BusTipoFin(1,'%');
  dmGeral.BusPlanoCta(1,'%');

  dmGeral.BusContaCorrExp(2,'%');
  dmGeral.BusTipoFinExp(1,'%');
  dmGeral.BusPlanoCtaExp(1,'%');}


  AbrirBuscas;

  cbbContaCorrenteEL.Enabled := False;
  cbbTipoFinanceiroEL.Enabled := False;
  cbbPlanoContasEL.Enabled := False;

  gera_pag := false;
end;



procedure TFIN_FM_M_CTA_BCO.FormShow(Sender: TObject);
begin
  inherited;
  txtPesquisa.SetFocus;

  if not dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean then
    begin
      lbObra.Visible  :=  dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
      txtObra.Visible := dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
      txtDescObra.Visible := dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
      lblDtaLancamento.Top := 30;
      lblDtaLancamento.Left := 13;
      dpkDtaMovimento.Top := 27;
      dpkDtaMovimento.Left := 110;
    end;
end;

procedure TFIN_FM_M_CTA_BCO.txtobraButtonClick(Sender: TObject);
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

procedure TFIN_FM_M_CTA_BCO.txtobraExit(Sender: TObject);
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

end.
