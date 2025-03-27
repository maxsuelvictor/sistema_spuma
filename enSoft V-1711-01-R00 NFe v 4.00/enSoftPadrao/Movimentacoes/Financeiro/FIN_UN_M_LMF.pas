unit FIN_UN_M_LMF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.DBCtrls, vcl.wwdblook, JvExMask, JvToolEdit, JvDBControls,
  Vcl.Mask, vcl.Wwdbedit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TFIN_FM_M_LMF = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    txtCodigo: TwwDBEdit;
    Label2: TLabel;
    txtDtaMov: TJvDBDateEdit;
    Label3: TLabel;
    cbbPlanoContas: TwwDBLookupCombo;
    lblPlanoContas: TLabel;
    cbbTipoFinanceiro: TwwDBLookupCombo;
    lblTipoFinanceiro: TLabel;
    lblContaCorrente: TLabel;
    txtHistorico: TDBMemo;
    Label4: TLabel;
    lblVlrLancamento: TLabel;
    cbbContaCorrente: TwwDBLookupCombo;
    txtFuncionario: TJvDBComboEdit;
    txtDescFuncionario: TDBText;
    Label6: TLabel;
    txtSaldo: TwwDBEdit;
    txtVlrLancamento: TwwDBEdit;
    Panel6: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    txtDescObra: TDBEdit;
    txtobra: TJvDBComboEdit;
    lbobra: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure txtFuncionarioButtonClick(Sender: TObject);
    procedure txtFuncionarioExit(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure cbbTipoFinanceiroEnter(Sender: TObject);
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtVlrLancamentoExit(Sender: TObject);
    procedure cbbTipoFinanceiroExit(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_LMF: TFIN_FM_M_LMF;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN, PSQ_UN_X_OBR, uDmCtc;

procedure TFIN_FM_M_LMF.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_LMF);
  txtDtaMov.SetFocus;
end;

procedure TFIN_FM_M_LMF.AbrirBuscas;
begin
   dmGeral.BusPlanoCta(92,'0');
   dmGeral.BusTipoFin(1,'%');

   dmGeral.BUS_CD_C_CXA_BCO.Close;
   dmGeral.BUS_CD_C_CXA_BCO.Data :=
       dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([4, '']));

end;

procedure TFIN_FM_M_LMF.acAlterarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_LMF) then
     begin
       inherited;
       txtDtaMov.SetFocus;
     end;
end;

procedure TFIN_FM_M_LMF.acCancelarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_LMF) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
        txtDtaMov.SetFocus;
     end;
end;


procedure TFIN_FM_M_LMF.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_LMF);
end;

procedure TFIN_FM_M_LMF.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  if dmGeral.BUS_CD_C_TIF.FieldByName('PRESTACAO_CONTA').AsBoolean=false  then
    begin
     dmGeral.FIN_CD_M_LMF.FieldByName('VLR_PAGO').AsCurrency :=
                  dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency;
    end
  else
    begin
       dmGeral.FIN_CD_M_LMF.FieldByName('VLR_PAGO').AsCurrency := 0;
    end;

   dmGeral.FIN_CD_M_LMF.FieldByName('VLR_SALDO').AsCurrency :=
                  dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency -
                   dmGeral.FIN_CD_M_LMF.FieldByName('VLR_PAGO').AsCurrency;

   if dmGeral.FIN_CD_M_LMF.FieldByName('VLR_SALDO').AsCurrency = 0 then
    begin
      dmGeral.FIN_CD_M_LMF.FieldByName('STATUS').AsInteger := 2;
    end
   else
    begin
      if  dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency =
           dmGeral.FIN_CD_M_LMF.FieldByName('VLR_SALDO').AsCurrency then
        dmGeral.FIN_CD_M_LMF.FieldByName('STATUS').AsInteger := 0;
    end;


  codigo := dmGeral.FIN_CD_M_LMF.FieldByName('ID_LMF').AsString;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DmGeral.Grava(dmGeral.FIN_CD_M_LMF);
      inherited;
      dmGeral.FIN_CD_M_LMF.Close;
      dmGeral.FIN_CD_M_LMF.Data :=
      dmGeral.FIN_CD_M_LMF.DataRequest(
              VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldBYName('ID_EMPRESA').AsString, codigo]));
      AbrirBuscas;
    end
  else
    begin
      txtDtaMov.SetFocus;
    end;
end;

procedure TFIN_FM_M_LMF.btnFiltroClick(Sender: TObject);
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


    dmGeral.FIN_CD_M_LMF.Close;
    dmGeral.FIN_CD_M_LMF.Data :=
    dmGeral.FIN_CD_M_LMF.DataRequest(
        VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xPesquisa]));

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_LMF.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusCxaBco(xFuncionario);
   cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_LMF.cbbPesquisaChange(Sender: TObject);
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
end;

procedure TFIN_FM_M_LMF.cbbPlanoContasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta(92,'0');
  cbbPlanoContas.DropDown;
end;

procedure TFIN_FM_M_LMF.cbbTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFin(1,'%');
  cbbTipoFinanceiro.DropDown;
end;

procedure TFIN_FM_M_LMF.cbbTipoFinanceiroExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused then
      exit;


  if dmGeral.BUS_CD_C_TIF.FieldByName('PRESTACAO_CONTA').AsBoolean=false  then
    begin
     dmGeral.FIN_CD_M_LMF.FieldByName('VLR_PAGO').AsCurrency :=
                  dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency;
    end
  else
    begin
       dmGeral.FIN_CD_M_LMF.FieldByName('VLR_PAGO').AsCurrency := 0;
    end;

   dmGeral.FIN_CD_M_LMF.FieldByName('VLR_SALDO').AsCurrency :=
                  dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency -
                   dmGeral.FIN_CD_M_LMF.FieldByName('VLR_PAGO').AsCurrency;
end;

procedure TFIN_FM_M_LMF.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if dmgeral.FIN_CD_M_LMFstatus.AsInteger = 0 then
    begin
      aFont.Color := clBlue;
    end;

  if dmgeral.FIN_CD_M_LMFstatus.AsInteger = 2 then
    begin
      aFont.Color := clGreen;
    end;
end;

procedure TFIN_FM_M_LMF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_M_LMF);
end;

procedure TFIN_FM_M_LMF.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_LMF.Close;
  dmGeral.FIN_CD_M_LMF.Data :=
  dmGeral.FIN_CD_M_LMF.DataRequest(
        VarArrayOf([0,'']));
  AbrirBuscas;
end;

procedure TFIN_FM_M_LMF.FormShow(Sender: TObject);
begin
  inherited;
   if not dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean then
    begin
      lbObra.Visible  := false;
      txtObra.Visible := false;
      txtDescObra.Visible := false;
    end;
end;

procedure TFIN_FM_M_LMF.txtFuncionarioButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
  PSQ_FM_X_FUN.ShowModal;
  if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
     begin
       dmGeral.FIN_CD_M_LMF.FieldByName('ID_FUNCIONARIO').AsInteger :=
          PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

       dmGeral.FIN_CD_M_LMF.FieldByName('int_nomefun').Text :=
          PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;

     end;
  PSQ_FM_X_FUN.Free;
end;

procedure TFIN_FM_M_LMF.txtFuncionarioExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused then
      exit;



   dmGeral.FIN_CD_M_LMF.FieldByName('INT_NOMEFUN').AsString := '';
   if dmGeral.FIN_CD_M_LMF.FieldByName('ID_FUNCIONARIO').AsString = '' then
     begin
       ShowMessage('Deve-se ser preenchido funcionário.');
       txtFuncionario.SetFocus;
       exit;
     end;

   dmGeral.BusFuncionario(0,txtFuncionario.Text);

   if dmGeral.BUS_CD_C_FUN.EOF then
     begin
       ShowMessage('Funcionario não cadastrado.');
       txtFuncionario.Text := '';
       txtFuncionario.SetFocus;
       exit;
     end;

   if not dmGeral.BUS_CD_C_FUN.EOF then
     begin
       dmGeral.FIN_CD_M_LMF.FieldByName('INT_NOMEFUN').AsString :=
                  dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
     end;


end;

procedure TFIN_FM_M_LMF.txtobraButtonClick(Sender: TObject);
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

procedure TFIN_FM_M_LMF.txtobraExit(Sender: TObject);
begin
  inherited;
  dmCtc.BUS_CD_C_OBR.Close;
  dmCtc.BUS_CD_C_OBR.Data :=
    dmCtc.BUS_CD_C_OBR.DataRequest(
      VarArrayOf([0, txtobra.Text,'True']));


  dmGeral.FIN_CD_M_LMF.FieldBYName('INT_NOMEOBR').AsString :='';
  if dmCtc.BUS_CD_C_OBR.IsEmpty then
    begin
      showmessage('Obra não Encontrada!');
      txtobra.Text := '0';
    end
  else
    begin
      txtDescObra.Text :=  dmCtc.BUS_CD_C_OBR.FieldByName('descricao').Text;
    end;
end;

procedure TFIN_FM_M_LMF.txtVlrLancamentoExit(Sender: TObject);
begin
  inherited;

  {if btnCancelar.Focused then
      exit;}

  if (dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsString ='') or
     (dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency <= 0) then
    begin
      ShowMessage('O valor do lançamento tem que ser maior que zero.');
      dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency :=0;
      txtVlrLancamento.SetFocus;
      exit;
    end;

  if dmGeral.BUS_CD_C_TIF.FieldByName('PRESTACAO_CONTA').AsBoolean=false  then
    begin
     dmGeral.FIN_CD_M_LMF.FieldByName('VLR_PAGO').AsCurrency :=
                  dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency;
    end
  else
    begin
       dmGeral.FIN_CD_M_LMF.FieldByName('VLR_PAGO').AsCurrency := 0;
    end;

   dmGeral.FIN_CD_M_LMF.FieldByName('VLR_SALDO').AsCurrency :=
                  dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency -
                   dmGeral.FIN_CD_M_LMF.FieldByName('VLR_PAGO').AsCurrency;

end;

end.



