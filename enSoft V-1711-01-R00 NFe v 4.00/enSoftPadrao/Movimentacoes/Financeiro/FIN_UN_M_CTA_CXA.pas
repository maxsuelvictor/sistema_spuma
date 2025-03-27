unit FIN_UN_M_CTA_CXA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, JvExMask,
  JvToolEdit, JvDBControls, vcl.wwdblook, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExExtCtrls,
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
  dxSkinXmas2008Blue, frxExportPDF, frxClass, frxExportXLS, Datasnap.DBClient,
  frxDBSet, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TFIN_FM_M_CTA_CXA = class(TPAD_FM_X_PAD)
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
    cbbContaCorrenteEL: TwwDBLookupCombo;
    cbbTipoFinanceiroEL: TwwDBLookupCombo;
    cbbPlanoContasEL: TwwDBLookupCombo;
    txtVlrLancamento: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    dpkDtaMovimento: TJvDBDateEdit;
    btnImprimir: TcxButton;
    cdsCxa: TClientDataSet;
    FIN_XL_M_CTA_CXA: TfrxXLSExport;
    FIN_PD_M_CTA_CXA: TfrxPDFExport;
    cdsCxaid_controle: TIntegerField;
    cdsCxadta_movimento: TDateField;
    cdsCxavlr_lancamento: TCurrencyField;
    cdsCxaid_conta: TIntegerField;
    cdsCxaid_tipo_financeiro: TIntegerField;
    cdsCxaid_plano: TStringField;
    cdsCxaint_nomectc: TStringField;
    cdsCxaint_nometif: TStringField;
    cdsCxaint_nomepct: TStringField;
    cdsCxaexp_id_conta: TIntegerField;
    cdsCxaexp_id_tipo_financeiro: TIntegerField;
    cdsCxaexp_id_plano: TStringField;
    cdsCxaint_nomefun_imp: TStringField;
    FIN_FR_M_CTA_CXA: TfrxReport;
    FIN_DB_M_CTA_CXA: TfrxDBDataset;
    cdsCxaint_nomectcexp: TStringField;
    cdsCxaint_nometifexp: TStringField;
    cdsCxaint_nomepctexp: TStringField;
    lbobra: TLabel;
    txtobra: TJvDBComboEdit;
    txtDescObra: TDBEdit;
    cdsCxahistorico: TStringField;
    txtPesquisaData: TJvDateEdit;
    rgPagCredCliente: TDBRadioGroup;
    txtClienteNome: TDBText;
    txtCliente: TJvDBComboEdit;
    lblCliente: TLabel;
    txtCredDisp: TEdit;
    lblCredDisp: TLabel;
    cdsCxaid_cliente: TIntegerField;
    cdsCxaint_nomecli: TStringField;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure cbbTipoFinanceiroEnter(Sender: TObject);
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure cbbContaCorrenteELEnter(Sender: TObject);
    procedure cbbTipoFinanceiroELEnter(Sender: TObject);
    procedure cbbPlanoContasELEnter(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbTipoFinanceiroExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure cbbContaCorrenteELExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
    procedure cbbTipoFinanceiroELExit(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure rgPagCredClienteChange(Sender: TObject);
  private
    { Private declarations }
     procedure AbrirBuscas;
    var
      tif_natureza,tif_natureza_exp:string;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_CTA_CXA: TFIN_FM_M_CTA_CXA;

implementation

{$R *.dfm}

uses uProxy, uDmGeral, PSQ_UN_X_OBR, uDmCtc, PSQ_UN_X_CLI;

procedure TFIN_FM_M_CTA_CXA.acAdicionaExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CTA_CXA);
  btnImprimir.Enabled := false;
  txtNDocumento.SetFocus;
end;

procedure TFIN_FM_M_CTA_CXA.acAlterarExecute(Sender: TObject);
begin

   if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ORIGEM').AsInteger = 0) and
       (not dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTROLE').IsNull) and
        (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTROLE').AsInteger <> 0) then
      begin
         ShowMessage('Alteração não permitida. Registro gerado pela exportação.');
         exit;
      end;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CTA_CXA) then
      begin
        inherited;
        btnImprimir.Enabled := false;
        txtNDocumento.SetFocus;
        dmGeral.BusTipoFin(0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsString);
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
        if dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString <>'' then
          begin
            dmGeral.BusTipoFinExp(0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString);
            if not dmGeral.BUS_CD_C_TIF_EXP.IsEmpty then
             begin
                tif_natureza_exp := dmGeral.BUS_CD_C_TIF_EXP.FieldByName('NATUREZA').AsString;
             end;
          end;
        if dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CLIENTE').AsInteger>0 then
          txtCredDisp.Text := FormatCurr('0.00',dmGeral.BusSaldoCreCli(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CLIENTE').AsString));


      end;
end;

procedure TFIN_FM_M_CTA_CXA.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CTA_CXA) then
     begin
       inherited;
       txtCredDisp.Text := '';
       btnImprimir.Enabled := true;
       dbGrid.SetFocus;
       cbbContaCorrenteEL.Enabled := true;
       cbbTipoFinanceiroEL.Enabled := true;
       cbbPlanoContasEL.Enabled := true;
     end
  else
     begin
       txtNDocumento.SetFocus;
     end;
end;

procedure TFIN_FM_M_CTA_CXA.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CTA_CXA);
end;

procedure TFIN_FM_M_CTA_CXA.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CONTROLE').AsString;
   DmGeral.Grava(dmGeral.FIN_CD_M_CTA_CXA);
   txtCredDisp.Text := '';
   inherited;
   AbrirBuscas;
   //Retirei o ultimo paramatro de valor 0 que traziz registro do tipo debito.Responsavel:Luan.Data:06/10/2015
   dmGeral.FIN_CD_M_CTA_CXA.Close;
   dmGeral.FIN_CD_M_CTA_CXA.Data :=
   dmGeral.FIN_CD_M_CTA_CXA.DataRequest(
           VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));
    cbbContaCorrenteEL.Enabled := true;
    cbbTipoFinanceiroEL.Enabled := true;
    cbbPlanoContasEL.Enabled := true;
    btnImprimir.Enabled := true;
end;

procedure TFIN_FM_M_CTA_CXA.btnFiltroClick(Sender: TObject);
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

    dmGeral.FIN_CD_M_CTA_CXA.Close;
    dmGeral.FIN_CD_M_CTA_CXA.Data :=
    dmGeral.FIN_CD_M_CTA_CXA.DataRequest(
        VarArrayOf([cbbPesquisa.ItemIndex+8,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'0',xPesquisa]));


  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_CTA_CXA.btnImprimirClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
  Exporta:boolean;
begin
  inherited;
  cdsCxa.EmptyDataSet;
  if not dmGeral.FIN_CD_M_CTA_CXA.IsEmpty then
    begin

      if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTROLE').AsInteger = 0) then
         begin
             cdsCxa.Insert;

             cdsCxa.FieldByName('ID_CONTROLE').AsInteger := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CONTROLE').AsInteger;
             cdsCxa.FieldByName('DTA_MOVIMENTO').AsDateTime := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('DTA_MOVIMENTO').AsDateTime;
             cdsCxa.FieldByName('VLR_LANCAMENTO').AsCurrency := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('VLR_LANCAMENTO').AsCurrency;
             cdsCxa.FieldByName('HISTORICO').AsString := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('HISTORICO').AsString;

             cdsCxa.FieldByName('ID_CLIENTE').AsInteger := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CLIENTE').AsInteger;
             cdsCxa.FieldByName('INT_NOMECLI').AsString := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('INT_NOMECLI').AsString;

             dmGeral.BUS_CD_C_FUN.Close;
             dmGeral.BUS_CD_C_FUN.Data :=
             dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0,IntToStr(xFuncionario)]));

             cdsCxa.FieldByName('INT_NOMEFUN_IMP').AsString := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;


             dmGeral.BUS_CD_C_CTC.Close;
             dmGeral.BUS_CD_C_CTC.Data :=
             dmGeral.BUS_CD_C_CTC.DataRequest(VarArrayOf([0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsString]));

             cdsCxa.FieldByName('ID_CONTA').AsInteger := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsInteger;
             cdsCxa.FieldByName('INT_NOMECTC').AsString := dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;

             dmGeral.BUS_CD_C_TIF.Close;
             dmGeral.BUS_CD_C_TIF.Data :=
             dmGeral.BUS_CD_C_TIF.DataRequest(VarArrayOf([0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsString]));
             Exporta := false;
             if ((not dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').IsNull) and
                (dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').AsBoolean = True)) then
               begin
                 Exporta := true;
               end;

             cdsCxa.FieldByName('ID_TIPO_FINANCEIRO').AsInteger := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;
             cdsCxa.FieldByName('INT_NOMETIF').AsString := dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString;


             dmGeral.BUS_CD_C_PCT.Close;
             dmGeral.BUS_CD_C_PCT.Data :=
             dmGeral.BUS_CD_C_PCT.DataRequest(VarArrayOf([0,trim(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString)]));

             cdsCxa.FieldByName('ID_PLANO').AsString := trim(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_PLANO').AsString);
             cdsCxa.FieldByName('INT_NOMEPCT').AsString := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;

             if (Exporta = true) then
                begin
                 dmGeral.BUS_CD_C_CTC.Close;
                 dmGeral.BUS_CD_C_CTC.Data :=
                 dmGeral.BUS_CD_C_CTC.DataRequest(VarArrayOf([0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsString]));

                 cdsCxa.FieldByName('EXP_ID_CONTA').AsInteger := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsInteger;
                 cdsCxa.FieldByName('INT_NOMECTCEXP').AsString := dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;

                 dmGeral.BUS_CD_C_TIF.Close;
                 dmGeral.BUS_CD_C_TIF.Data :=
                 dmGeral.BUS_CD_C_TIF.DataRequest(VarArrayOf([0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString]));

                 cdsCxa.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsInteger := dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsInteger;
                 cdsCxa.FieldByName('INT_NOMETIFEXP').AsString := dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString;


                 dmGeral.BUS_CD_C_PCT.Close;
                 dmGeral.BUS_CD_C_PCT.Data :=
                 dmGeral.BUS_CD_C_PCT.DataRequest(VarArrayOf([0,trim(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').AsString)]));

                 cdsCxa.FieldByName('EXP_ID_PLANO').AsString := trim(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').AsString);
                 cdsCxa.FieldByName('INT_NOMEPCTEXP').AsString := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
                end;

             cdsCxa.Post;

             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(FIN_FR_M_CTA_CXA.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

             FIN_FR_M_CTA_CXA.Variables['exporta'] := false;
             if (Exporta=true) then
               begin
                 FIN_FR_M_CTA_CXA.Variables['exporta'] := true;
               end;

             if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('pag_cred_cli').AsInteger=1) then
               begin
                TfrxMemoView(FIN_FR_M_CTA_CXA.FindObject('lblCliente') ).Visible := true;
                TfrxMemoView(FIN_FR_M_CTA_CXA.FindObject('campoCliente') ).Visible := true;
               end
             else
               begin
                 TfrxMemoView(FIN_FR_M_CTA_CXA.FindObject('lblCliente') ).Visible := false;
                 TfrxMemoView(FIN_FR_M_CTA_CXA.FindObject('campoCliente') ).Visible := false;
               end;
             FIN_FR_M_CTA_CXA.Variables['Opcoes'] := QuotedStr('');
             FIN_FR_M_CTA_CXA.PrepareReport();
             FIN_FR_M_CTA_CXA.ShowReport();
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

procedure TFIN_FM_M_CTA_CXA.AbrirBuscas;
begin
   dmGeral.BusContaCorr(4,'%');
   dmGeral.BusTipoFin(1,'%');
   dmGeral.BusPlanoCta(1,'%');

   dmGeral.BusCxaBcoExp;
   dmGeral.BusTipoFinExp(1,'%');
   dmGeral.BusPlanoCtaExp(1,'%');
end;

procedure TFIN_FM_M_CTA_CXA.cbbContaCorrenteELEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCxaBcoExp;
  cbbContaCorrenteEL.DropDown;
end;

procedure TFIN_FM_M_CTA_CXA.cbbContaCorrenteELExit(Sender: TObject);
begin
  inherited;
   if ((dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsString <> '') and
     (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsString <> '')) then
     begin
       if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CONTA').AsString =
           dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsString) then
          begin
            ShowMessage('Conta corrente exporta não pode ser igual ao conta corrente selecionado anteriormente.');
            dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsString := '';
            cbbContaCorrenteEL.Text := '';
            cbbContaCorrenteEL.SetFocus;
          end;
     end;
end;

procedure TFIN_FM_M_CTA_CXA.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusContaCorr(4,'%');
  cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_CTA_CXA.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [1,6]  then
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


  if (cbbPesquisa.ItemIndex in [0,2]) then
     begin
       txtPesquisa.NumbersOnly := true;
     end
  else
     begin
       txtPesquisa.NumbersOnly := false;
     end;
end;

procedure TFIN_FM_M_CTA_CXA.cbbPlanoContasELEnter(Sender: TObject);
begin
  inherited;
  {if (tif_natureza = '0') then
    begin
      dmGeral.BusPlanoCtaExp(92,'1');
    end;
  if (tif_natureza = '1') then
    begin
       dmGeral.BusPlanoCtaExp(90,'1');
    end; }


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

procedure TFIN_FM_M_CTA_CXA.cbbPlanoContasEnter(Sender: TObject);
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

procedure TFIN_FM_M_CTA_CXA.cbbTipoFinanceiroELEnter(Sender: TObject);
begin
  inherited;
  if (tif_natureza = '0') then
    dmGeral.BusTipoFinExp(90,'1');
  if (tif_natureza = '1') then
    dmGeral.BusTipoFinExp(90,'0');

  cbbTipoFinanceiroEL.DropDown;
end;

procedure TFIN_FM_M_CTA_CXA.cbbTipoFinanceiroELExit(Sender: TObject);
begin
  inherited;
  tif_natureza_exp := dmGeral.BUS_CD_C_TIF_EXP.FieldByName('NATUREZA').AsString;
end;

procedure TFIN_FM_M_CTA_CXA.cbbTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFin(1,'%');
  cbbTipoFinanceiro.DropDown;
end;

procedure TFIN_FM_M_CTA_CXA.cbbTipoFinanceiroExit(Sender: TObject);
begin
  inherited;
   cbbContaCorrenteEL.Enabled := false;
   cbbTipoFinanceiroEL.Enabled := false;
   cbbPlanoContasEL.Enabled := false;
   tif_natureza := '';

   cbbContaCorrenteEL.Text := '';
   cbbTipoFinanceiroEL.Text := '';
   cbbPlanoContasEL.Text := '';
   dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_CONTA').AsString := '';
   dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_TIPO_FINANCEIRO').AsString := '';
   dmGeral.FIN_CD_M_CTA_CXA.FieldByName('EXP_ID_PLANO').AsString := '';
  if (dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsString <> '') then
     begin
       dmGeral.BusTipoFin(0,dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_TIPO_FINANCEIRO').AsString);
       if not dmGeral.BUS_CD_C_TIF.IsEmpty then
         begin
          tif_natureza := dmGeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsString;
           dmGeral.FIN_CD_M_CTA_CXA.FieldByName('DEB_CRE').AsInteger :=
                          dmGeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsInteger;
          if ((not dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').IsNull) and
             (dmGeral.BUS_CD_C_TIF.FieldByName('CRI_EXPORTA').AsBoolean = True)) then
            begin
               cbbContaCorrenteEL.Enabled := true;
               cbbTipoFinanceiroEL.Enabled := true;
               cbbPlanoContasEL.Enabled := true;
            end;

         
         end;
     end;
end;

procedure TFIN_FM_M_CTA_CXA.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if dmGeral.FIN_CD_M_CTA_CXA.FieldByName('deb_cre').AsInteger=0 then
    begin
      aFont.Color := clRed; //Vermelho
      afont.Style := [fsBold];
    end;
  if dmGeral.FIN_CD_M_CTA_CXA.FieldByName('deb_cre').AsInteger=1 then
    begin
      aFont.Color := clGreen; //Vermelho
      afont.Style := [fsBold];
    end;

end;

procedure TFIN_FM_M_CTA_CXA.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  AbrirBuscas;



  if not dmgeral.FIN_CD_M_CTA_CXA.IsEmpty then
    begin
       

         if dmGeral.FIN_CD_M_CTA_CXA.FieldByName('PAG_CRED_CLI').AsInteger = 0 then
            begin
              lblCliente.Visible := false;
              txtCliente.Visible := false;
              txtClienteNome.Visible := false;
              txtCredDisp.Visible := false;
              lblCredDisp.Visible := false;
            end
          else
            begin
              lblCliente.Visible := true;
              txtCliente.Visible := true;
              txtClienteNome.Visible := true;
              txtCredDisp.Visible := true;
              lblCredDisp.Visible := true;
            end;

    end;

end;

procedure TFIN_FM_M_CTA_CXA.dsoStateChange(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_CXA.Close;
  dmGeral.BUS_CD_M_CXA.Data :=
  dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));

  if dmGeral.BUS_CD_M_CXA.RecordCount=0 then
     begin
       acAdiciona.Enabled  := false; //dso.State  = dsBrowse;
       acAlterar.Enabled   := false;
       acExcluir.Enabled   := false;
       acCancelar.Enabled  := false;
       acGravar.Enabled    := false;
       pnlDados.Enabled    := false;
     end;

end;

procedure TFIN_FM_M_CTA_CXA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_CTA_CXA.Close;
  FreeAndNil(FIN_FM_M_CTA_CXA);
end;

procedure TFIN_FM_M_CTA_CXA.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCxa.CreateDataSet;

  dmGeral.FIN_CD_M_CTA_CXA.Close;
  dmGeral.FIN_CD_M_CTA_CXA.Data := dmGeral.FIN_CD_M_CTA_CXA.DataRequest(VarArrayOf([0,'',0]));

  dmGeral.BusContaCorr(2,'%');
  dmGeral.BusTipoFin(1,'%');
  dmGeral.BusPlanoCta(1,'%');

  dmGeral.BusContaCorrExp(2,'%');
  dmGeral.BusTipoFinExp(1,'%');
  dmGeral.BusPlanoCtaExp(1,'%');
end;
procedure TFIN_FM_M_CTA_CXA.FormShow(Sender: TObject);
begin
  inherited;
  txtPesquisa.SetFocus;

  if not dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean then
    begin
      lbObra.Visible  :=  dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
      txtObra.Visible := dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
      txtDescObra.Visible := dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
      lblDtaLancamento.Top := 29;
      lblDtaLancamento.Left := 46;
      dpkDtaMovimento.Top := 26;
      dpkDtaMovimento.Left := 110;
    end;
end;

procedure TFIN_FM_M_CTA_CXA.rgPagCredClienteChange(Sender: TObject);
begin
  inherited;
  if rgPagCredCliente.ItemIndex = 0 then
    begin
      lblCliente.Visible := false;
      txtCliente.Visible := false;
      txtClienteNome.Visible := false;
      txtCredDisp.Visible := false;
      lblCredDisp.Visible := false;
      txtCredDisp.text := '';
      txtCliente.Text := '';
      txtCredDisp.Text := '';
      txtClienteNome.Caption := '';
      //dmgeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CLIENTE').AsString := '';
      //dmgeral.FIN_CD_M_CTA_CXA.FieldByName('INT_NOMECLI').AsString := '';
    end
  else
    begin
      lblCliente.Visible := true;
      txtCliente.Visible := true;
      txtClienteNome.Visible := true;
      txtCredDisp.Visible := true;
      lblCredDisp.Visible := true;
    end;
end;

procedure TFIN_FM_M_CTA_CXA.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;

      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CLIENTE').AsInteger :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

           dmGeral.FIN_CD_M_CTA_CXA.FieldByName('INT_NOMECLI').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.BUS_CD_C_CLI.Close;
   PSQ_FM_X_CLI.Free;

end;

procedure TFIN_FM_M_CTA_CXA.txtClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  dmGeral.FIN_CD_M_CTA_CXA.FieldByName('INT_NOMECLI').Text := '';

  if dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CLIENTE').Text = '' then
     begin
       ShowMessage('O campo "Cliente" deve ser preenchido.');
       abort;
     end;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));


  if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
     begin
       txtCliente.SetFocus;
       exit;
     end;

  dmGeral.FIN_CD_M_CTA_CXA.FieldByName('INT_NOMECLI').Text :=
       dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

  txtCredDisp.Text := FormatCurr('0.00',dmGeral.BusSaldoCreCli(dmGeral.FIN_CD_M_CTA_CXA.FieldByName('ID_CLIENTE').AsString));

end;

procedure TFIN_FM_M_CTA_CXA.txtobraButtonClick(Sender: TObject);
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

procedure TFIN_FM_M_CTA_CXA.txtobraExit(Sender: TObject);
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

procedure TFIN_FM_M_CTA_CXA.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

end.
