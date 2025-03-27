unit FIN_UN_M_PRC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Buttons, vcl.wwdblook, Vcl.DBCtrls, JvDBControls, JvExMask,
  JvToolEdit, Vcl.Mask, vcl.Wwdbedit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Datasnap.DBClient;

type
  TFIN_FM_M_PRC = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    txtCodigo: TwwDBEdit;
    Label2: TLabel;
    txtDtaPrestacao: TJvDBDateEdit;
    Label3: TLabel;
    txtDescFuncionario: TDBText;
    Label10: TLabel;
    txtCodMovimento: TJvDBComboEdit;
    Label11: TLabel;
    dsoPrcDet: TwwDataSource;
    txtCodFun: TDBText;
    Label12: TLabel;
    txtVlrMovimento: TwwDBEdit;
    Label13: TLabel;
    txtVlrSaldo: TwwDBEdit;
    txtDtaMov: TJvDBDateEdit;
    gbDet: TGroupBox;
    dgDet: TwwDBGrid;
    dgDetIButton: TwwIButton;
    pnlPrc: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    txtDescPlano: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    cbbTif: TwwDBLookupCombo;
    cbbTipoTitulo: TwwDBLookupCombo;
    txtCodPlano: TJvDBComboEdit;
    txtValor: TwwDBEdit;
    txtHistorico: TwwDBEdit;
    cbbConta: TwwDBLookupCombo;
    cbbTifContraPart: TwwDBLookupCombo;
    btnAddDet: TBitBtn;
    txtVlrTotal: TwwDBEdit;
    Label15: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnAddDetClick(Sender: TObject);
    procedure txtHistoricoExit(Sender: TObject);
    procedure cbbTifEnter(Sender: TObject);
    procedure cbbTifContraPartEnter(Sender: TObject);
    procedure cbbTifExit(Sender: TObject);
    procedure cbbTipoTituloEnter(Sender: TObject);
    procedure cbbContaEnter(Sender: TObject);
    procedure txtCodPlanoButtonClick(Sender: TObject);
    procedure txtCodPlanoExit(Sender: TObject);
    procedure dgDetIButtonClick(Sender: TObject);
    procedure dgDetMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtCodMovimentoButtonClick(Sender: TObject);
    procedure txtCodMovimentoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlPrcExit(Sender: TObject);
    procedure cbbTifContraPartExit(Sender: TObject);
    procedure cbbTipoTituloExit(Sender: TObject);
    procedure cbbContaExit(Sender: TObject);
    procedure txtValorExit(Sender: TObject);
    procedure txtCodPlanoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    procedure AbrirBuscas;
    var
      xNaturezaTif:String;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_PRC: TFIN_FM_M_PRC;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_PCT, PSQ_UN_X_LMF;

procedure TFIN_FM_M_PRC.AbrirBuscas;
begin
  dmgeral.BusTipoFin(1,'%');
  dmgeral.BusTipoFinExp(1,'%');
  dmGeral.BUS_CD_C_CXA_BCO.Close;
  dmGeral.BUS_CD_C_CXA_BCO.Data :=
       dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([4, '']));
  dmGeral.BusFormaPgtos(1,'%');

end;

procedure TFIN_FM_M_PRC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PRC);
   txtDtaPrestacao.SetFocus;
end;

procedure TFIN_FM_M_PRC.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PRC) then
     begin
       inherited;
       dmGeral.BUS_CD_M_LMF.Close;
       dmGeral.BUS_CD_M_LMF.Data :=
       dmGeral.BUS_CD_M_LMF.DataRequest(
        VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                   dmGeral.FIN_CD_M_PRC.FieldByName('ID_LMF').AsString]));
       txtCodMovimento.Enabled := false;
       txtDtaMov.Enabled := false;
       btnAddDet.SetFocus;
     end;
end;

procedure TFIN_FM_M_PRC.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PRC) then
     begin
       inherited;
       txtCodMovimento.Enabled := true;
       txtDtaMov.Enabled := true;
       dbGrid.SetFocus;
     end
  else
     begin
       btnAddDet.SetFocus;
     end;
end;



procedure TFIN_FM_M_PRC.acExcluirExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PRC);
end;

procedure TFIN_FM_M_PRC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  if (dmGeral.FIN_CD_M_PRC_DET.RecordCount = 0)  then
    begin
       ShowMessage('Deve ter pelo menos um registro de prestação de conta.');
       abort;
    end;
  if ((dmGeral.FIN_CD_M_PRC.FieldByName('VLR_TOTAL_PRC').AsString='') or
      (dmGeral.FIN_CD_M_PRC.FieldByName('VLR_TOTAL_PRC').AsCurrency=0))   then
    begin
       ShowMessage('O valor total de prestação de conta tem que ser maior que zero.');
       abort;
    end;

   if (dmGeral.FIN_CD_M_PRC.FieldByName('INT_VLR_SALDO').AsCurrency<
      dmGeral.FIN_CD_M_PRC.FieldByName('VLR_TOTAL_PRC').AsCurrency) then
    begin
       ShowMessage('O valor total de prestação de conta tem que ser menor que valor saldo do movimento.');
       abort;
    end;

  codigo := dmGeral.FIN_CD_M_PRC.FieldByName('ID_PRC').AsString;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DmGeral.Grava(dmGeral.FIN_CD_M_PRC);
      inherited;
      dmGeral.FIN_CD_M_PRC.Close;
      dmGeral.FIN_CD_M_PRC.Data :=
      dmGeral.FIN_CD_M_PRC.DataRequest(
              VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));
      txtCodMovimento.Enabled := true;
      txtDtaMov.Enabled := true;
      AbrirBuscas;
    end
  else
    begin
      btnAddDet.SetFocus;
    end;
end;

procedure TFIN_FM_M_PRC.btnAddDetClick(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_PRC_DET.Insert;
  pnlPrc.Enabled := true;

  cbbTif.SetFocus;
end;

procedure TFIN_FM_M_PRC.btnFiltroClick(Sender: TObject);
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
    dmGeral.FIN_CD_M_PRC.Close;
    dmGeral.FIN_CD_M_PRC.Data :=
    dmGeral.FIN_CD_M_PRC.DataRequest(
        VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xPesquisa]));

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_PRC.cbbContaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCxaBco(xFuncionario);
  cbbConta.DropDown;
end;

procedure TFIN_FM_M_PRC.cbbContaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    exit;

  if dgDet.Focused  or txtCodPlano.Focused or cbbTipoTitulo.Focused or
     cbbTifContraPart.Focused or cbbTif.Focused then
     exit;

  dmgeral.FIN_CD_M_PRC_DET.FieldByName('INT_NOMECTC').AsString := '';

  dmgeral.FIN_CD_M_PRC_DET.FieldByName('INT_NOMECTC').AsString := '';
  if trim(cbbConta.Text)='' then
      dmgeral.FIN_CD_M_PRC_DET.FieldByName('ID_CONTA').AsInteger := 0;

  if dmgeral.FIN_CD_M_PRC_DET.FieldByName('ID_CONTA').AsInteger > 0 then
    begin
      dmGeral.BusContaCorr(0,dmgeral.FIN_CD_M_PRC_DET.FieldByName('ID_CONTA').AsString);
      if dmGeral.BUS_CD_C_CTC.EOF then
        begin
          ShowMessage('Conta inválido.');
          cbbConta.SetFocus;
          exit;
        end;
    end;

  dmgeral.FIN_CD_M_PRC_DET.FieldByName('INT_NOMECTC').AsString :=
                            dmGeral.BUS_CD_C_CTC.FieldByname('DESCRICAO').AsString;

end;

procedure TFIN_FM_M_PRC.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
   txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [1]  then
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
end;

procedure TFIN_FM_M_PRC.cbbTifContraPartEnter(Sender: TObject);
begin
  inherited;

  if xNaturezaTif = '0' then
     dmgeral.BusTipoFinExp(90,'1')
  else if  dmgeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsInteger = 1 then
    dmgeral.BusTipoFinExp(90,'0');

  cbbTifContraPart.DropDown;
end;

procedure TFIN_FM_M_PRC.cbbTifContraPartExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    exit;

  if dgDet.Focused or cbbTif.Focused then
     exit;

  dmgeral.FIN_CD_M_PRC_DET.FieldByName('INT_NOMETIF_CP').AsString :=
     dmGeral.BUS_CD_C_TIF_EXP.FieldByName('DESCRICAO').AsString;
end;

procedure TFIN_FM_M_PRC.cbbTifEnter(Sender: TObject);
begin
  inherited;

  dmgeral.BusTipoFin(1,'%');
  cbbTif.DropDown;
end;

procedure TFIN_FM_M_PRC.cbbTifExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    exit;

  try
      pnlPrc.OnExit := nil;

      dmgeral.FIN_CD_M_PRC_DET.FieldByName('INT_NOMETIF').AsString :='';
      xNaturezaTif := dmGeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsString;


      if dmGeral.BUS_CD_C_TIF.FieldByName('GERA_DEB_CRE').AsBoolean=true then
        begin
          cbbTifContraPart.Enabled := true;
          cbbTifContraPart.SetFocus;
        end
      ELSE
        begin
          dmgeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_FINANCEIRO_CP').AsInteger := 0;
          dmgeral.FIN_CD_M_PRC_DET.FieldByName('INT_NOMETIF_CP').AsString :='';
          cbbTifContraPart.Enabled := false;
          cbbTipoTitulo.SetFocus;
        end;
      dmgeral.FIN_CD_M_PRC_DET.FieldByName('INT_NOMETIF').AsString :=
         dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString;


  finally
      pnlPrc.OnExit := pnlPrcExit;
  end;

end;

procedure TFIN_FM_M_PRC.cbbTipoTituloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(2,'0');
  cbbTipoTitulo.DropDown;
end;

procedure TFIN_FM_M_PRC.cbbTipoTituloExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    exit;

  if dgDet.Focused  or cbbTifContraPart.Focused or
     cbbTif.Focused then
     exit;

  dmgeral.FIN_CD_M_PRC_DET.FieldByName('INT_NOMEFPG').AsString := '';
  if (cbbTipoTitulo.Text='') then
      dmgeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_TITULO').AsInteger := 0;


  if (xNaturezaTif = '0') and  (dmgeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_TITULO').AsInteger = 0) then
    begin
      ShowMessage('Deve-se preencher tipo de titulo');
      cbbTipoTitulo.SetFocus;
      exit;
    end;



  if (dmgeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_TITULO').AsInteger > 0) then
    begin
      dmGeral.BusFormaPgtos(0,dmgeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_TITULO').AsString);
      if dmGeral.BUS_CD_C_FPG.EOF then
        begin
          ShowMessage('Tipo de titulo inválido.');
          cbbTipoTitulo.SetFocus;
          exit;
        end;
    end;

  dmgeral.FIN_CD_M_PRC_DET.FieldByName('INT_NOMEFPG').AsString := dmgeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

end;

procedure TFIN_FM_M_PRC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_M_LMF.Close;
  dmGeral.FIN_CD_M_PRC.Close;
  FreeAndNil(FIN_FM_M_PRC);
end;

procedure TFIN_FM_M_PRC.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_PRC.Close;
  dmGeral.FIN_CD_M_PRC.Data :=
  dmGeral.FIN_CD_M_PRC.DataRequest(
        VarArrayOf([0,'']));
  AbrirBuscas;
end;

procedure TFIN_FM_M_PRC.FormShow(Sender: TObject);
begin
  inherited;
  cbbPesquisaChange(self);
end;

procedure TFIN_FM_M_PRC.pnlPrcExit(Sender: TObject);
begin
  inherited;
   if (btnAddDet.Focused) or (dgDet.Focused) or
     (not dgDetIButton.Enabled) then
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

        dmGeral.FIN_CD_M_PRC_DET.Cancel;
        dmGeral.FIN_CD_M_PRC_DET.edit;

        finally
           pnlPrc.Enabled := false;
        end;
      end;
end;

procedure TFIN_FM_M_PRC.txtCodMovimentoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_LMF := TPSQ_FM_X_LMF.Create(Self);
   PSQ_FM_X_LMF.ShowModal;
      if not dmgeral.BUS_CD_M_LMF.IsEmpty then
         begin
           dmGeral.FIN_CD_M_PRC.FieldByName('ID_LMF').AsString :=
             dmgeral.BUS_CD_M_LMF.FieldByName('ID_LMF').AsString;
         end;
   PSQ_FM_X_LMF.Free;
end;

procedure TFIN_FM_M_PRC.txtCodMovimentoExit(Sender: TObject);
begin
  inherited;
     if btnCancelar.Focused then
        exit;

    dmGeral.FIN_CD_M_PRC.FieldByName('INT_DTA_MOV').AsString :='';
    dmGeral.FIN_CD_M_PRC.FieldByName('INT_CODFUN').AsString :='';
    dmGeral.FIN_CD_M_PRC.FieldByName('INT_NOMEFUN').AsString :='';
    dmGeral.FIN_CD_M_PRC.FieldByName('INT_VLR_MOV').AsString :='';
    dmGeral.FIN_CD_M_PRC.FieldByName('INT_VLR_SALDO').AsString := '';




    dmGeral.BUS_CD_M_LMF.Close;
    dmGeral.BUS_CD_M_LMF.Data :=
    dmGeral.BUS_CD_M_LMF.DataRequest(
        VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                   dmGeral.FIN_CD_M_PRC.FieldByName('ID_LMF').AsString]));

    if dmGeral.BUS_CD_M_LMF.IsEmpty then
      begin
        ShowMessage('Lançamento de movimento não encontrado.');
        txtCodMovimento.Text := '';
        txtCodMovimento.SetFocus;
        exit;
      end;

  if  dmGeral.FIN_CD_M_LMF.FieldByName('STATUS').AsInteger =2 then
    begin
      ShowMessage('Lançamento de movimento encerrado.');
      txtCodMovimento.Text := '';
      txtCodMovimento.SetFocus;
      exit;
    end;


     dmGeral.FIN_CD_M_PRC.FieldByName('INT_DTA_MOV').AsDateTime :=
                       dmGeral.BUS_CD_M_LMF.FieldByName('DTA_MOVIMENTO').AsDateTime;

     dmGeral.FIN_CD_M_PRC.FieldByName('INT_CODFUN').AsInteger :=
                       dmGeral.BUS_CD_M_LMF.FieldByName('ID_FUNCIONARIO').AsInteger;

     dmGeral.FIN_CD_M_PRC.FieldByName('INT_NOMEFUN').AsString :=
                       dmGeral.BUS_CD_M_LMF.FieldByName('INT_NOMEFUN').AsString;

     dmGeral.FIN_CD_M_PRC.FieldByName('INT_VLR_MOV').AsCurrency :=
                       dmGeral.BUS_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency;

     dmGeral.FIN_CD_M_PRC.FieldByName('INT_VLR_SALDO').AsCurrency :=
                       dmGeral.BUS_CD_M_LMF.FieldByName('VLR_SALDO').AsCurrency;

     btnAddDet.SetFocus;

end;

procedure TFIN_FM_M_PRC.txtCodPlanoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_PCT := TPSQ_FM_X_PCT.Create(Self);
   PSQ_FM_X_PCT.xPctChamadaPor := 'E';
   PSQ_FM_X_PCT.ShowModal;
      if not PSQ_FM_X_PCT.BUS_CD_C_PCT.IsEmpty then
         begin
           dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_PLANO').AsString :=
             PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
         end;
   PSQ_FM_X_PCT.Free;
end;

procedure TFIN_FM_M_PRC.txtCodPlanoEnter(Sender: TObject);
begin
  inherited;
  if trim(dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_PLANO').Text)='' then
   dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_PLANO').Text :=
         dmGeral.BUS_CD_M_LMF.FieldByName('ID_PLANO').AsString;

end;

procedure TFIN_FM_M_PRC.txtCodPlanoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    exit;

  if dgDet.Focused or cbbTipoTitulo.Focused or cbbTifContraPart.Focused or
     cbbTif.Focused then
     exit;

  dmGeral.FIN_CD_M_PRC_DET.FieldByName('int_nomepct').Text := '';
  dmGeral.BusPlanoCta(0,dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_PLANO').Text);
  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       ShowMessage('Plano de contas não encontrada.');
       txtCodPlano.Text := '';
       txtCodPlano.SetFocus;
       abort;
     end;


  if dmGeral.BUS_CD_C_PCT.FieldByName('TIPO').AsInteger <>0 then
       begin
        ShowMessage('O plano de contas deve ser do tipo ANALÍTICO!');
        txtCodPlano.Text := '';
        txtCodPlano.SetFocus;
       end;

 if xNaturezaTif = '0' then
   begin
     if not (dmGeral.BUS_CD_C_PCT.FieldByName('TIPO_DESP').AsInteger IN [0,2]) then
       begin
        ShowMessage('O plano de contas deve ser do tipo DESPESA ou SEM FLUXO, pois, o tipo financeiro é de DÉBITO!');
        txtCodPlano.Text := '';
        txtCodPlano.SetFocus;
       end;
   end
 else if xNaturezaTif = '1' then
   begin
     if not (dmGeral.BUS_CD_C_PCT.FieldByName('TIPO_DESP').AsInteger in [1,2]) then
       begin
        ShowMessage('O plano de contas deve ser do tipo RECEBIMENTO ou SEM FLUXO, pois o tipo financeiro é de CRÉDITO!');
        txtCodPlano.Text := '';
        txtCodPlano.SetFocus;
       end;
   end;


  dmGeral.FIN_CD_M_PRC_DET.FieldByName('int_nomepct').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
end;

procedure TFIN_FM_M_PRC.txtHistoricoExit(Sender: TObject);
VAR
  codigo:String;
begin
  inherited;
  if btnCancelar.Focused then
    exit;


  if dgDet.Focused or txtValor.Focused or cbbConta.Focused or
     txtCodPlano.Focused or cbbTipoTitulo.Focused or cbbTifContraPart.Focused or
     cbbTif.Focused then
     exit;



  if trim(dmGeral.FIN_CD_M_PRC_DET.FieldByName('HISTORICO').AsString) ='' then
     begin
       ShowMessage('Histórico tem que ser preenchido.');
       txtHistorico.SetFocus;
       exit;
     end;

  if  dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
    begin
     dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_SEQUENCIA').AsInteger :=
                  dmGeral.BuscarSeq('FIN_TB_M_PRC_DET');
    end;
  codigo:= dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_SEQUENCIA').AsString;
  dmGeral.FIN_CD_M_PRC_DET.Post;
  //pnlPrc.OnExit := pnlPrcExit;
  pnlPrc.Enabled := false;
  btnAddDet.SetFocus;

  dmGeral.FIN_CD_M_PRC_DET.locate('ID_SEQUENCIA',codigo,[]);
end;

procedure TFIN_FM_M_PRC.txtValorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
    exit;

  if dgDet.Focused or cbbConta.Focused or
     txtCodPlano.Focused or cbbTipoTitulo.Focused or cbbTifContraPart.Focused or
     cbbTif.Focused then
     exit;


  if (dmGeral.FIN_CD_M_PRC_DET.FieldByName('VLR_PRESTACAO').AsString='') or
     (dmGeral.FIN_CD_M_PRC_DET.FieldByName('VLR_PRESTACAO').AsCurrency=0) then
    begin
      ShowMessage('O valor tem que ser maior que zero.');
      txtValor.SetFocus;
      exit;
    end;


end;

procedure TFIN_FM_M_PRC.dgDetIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgDetIButton.Enabled := false;
     if dmGeral.FIN_CD_M_PRC_DET.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FIN_CD_M_PRC_DET.Delete;
     dmGeral.FIN_CD_M_PRC_DET.Edit;
  finally
     dgDetIButton.Enabled := true;
  end;
end;

procedure TFIN_FM_M_PRC.dgDetMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlPrc.Enabled = false then
     pnlPrc.Enabled := true;

  dmGeral.FIN_CD_M_PRC_DET.cancel;

  if dmGeral.FIN_CD_M_PRC_DET.IsEmpty then
     begin
       dmGeral.FIN_CD_M_PRC_DET.Append;
       pnlPrc.Enabled := true;
       cbbTif.SetFocus;
     end
  else
    begin
      dmGeral.FIN_CD_M_PRC_DET.Edit;
      dmgeral.BusTipoFin(0,dmGeral.FIN_CD_M_PRC_DET.FieldByname('ID_TIPO_FINANCEIRO').AsString);
      xNaturezaTif := dmGeral.BUS_CD_C_TIF.FieldByname('NATUREZA').AsString;
      pnlPrc.Enabled := true;
      cbbTif.SetFocus;
    end;
end;

end.
