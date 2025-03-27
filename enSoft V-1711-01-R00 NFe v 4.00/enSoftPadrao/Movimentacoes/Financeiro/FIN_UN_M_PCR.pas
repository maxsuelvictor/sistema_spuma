unit FIN_UN_M_PCR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.DBCtrls, JvDBControls, JvExMask, JvToolEdit, Vcl.Mask,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Datasnap.DBClient;

type
  TFIN_FM_M_PCR = class(TPAD_FM_X_PAD)
    lblCobranca: TLabel;
    lblDataCredito: TLabel;
    Label53: TLabel;
    txtControle: TDBEdit;
    dpkDataCredito: TJvDBDateEdit;
    txtCodRev: TDBEdit;
    lblCliente: TLabel;
    txtFornecedorNome: TDBText;
    txtFornecedor: TJvDBComboEdit;
    lblHistorico: TLabel;
    txtHistorico: TDBMemo;
    lblVlrLancamento: TLabel;
    txtVlrLancamento: TDBMemo;
    rgDebCre: TDBRadioGroup;
    gbLegenda: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_PCR: TFIN_FM_M_PCR;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, uProxy;

procedure TFIN_FM_M_PCR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PCR);
  txtFornecedor.SetFocus;
end;

procedure TFIN_FM_M_PCR.acAlterarExecute(Sender: TObject);
begin

  ShowMessage('Alteração não permitida.');
  exit;
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PCR) then
      begin
        inherited;
        txtFornecedor.SetFocus;
      end;
end;

procedure TFIN_FM_M_PCR.acCancelarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PCR) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtFornecedor.SetFocus;
     end;
end;

procedure TFIN_FM_M_PCR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Exclusão não permitida.');
  exit;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_PCR);
end;

procedure TFIN_FM_M_PCR.acGravarExecute(Sender: TObject);
var
  codigo:string;
  valorCredito:Currency;
  SMPrincipal: TSMClient;
begin
   if ((dmGeral.FIN_CD_M_PCR.FieldByName('ID_FORNECEDOR').AsString <> '') and
      (dmGeral.FIN_CD_M_PCR.FieldByName('VLR_CREDITO').AsString <> '') and
      (dmGeral.FIN_CD_M_PCR.FieldByName('VLR_CREDITO').AsCurrency > 0) and
      (rgDebCre.ItemIndex = 0)) then
     begin
        valorCredito := 0;
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          valorCredito :=
                  SMPrincipal.enVerCreditoForn(dmGeral.FIN_CD_M_PCR.FieldByName('ID_FORNECEDOR').asString);
        finally
          FreeAndNil(SMPrincipal);
        end;

        if (dmGeral.FIN_CD_M_PCR.FieldByName('VLR_CREDITO').AsCurrency > valorCredito) then
           begin
             ShowMessage('Não há saldo suficiente.');
             txtVlrLancamento.SetFocus;
             exit;
           end;
     end;

   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      codigo := dmGeral.FIN_CD_M_PCR.FieldByName('ID_CREDITO').AsString;
      DmGeral.Grava(dmGeral.FIN_CD_M_PCR);
      inherited;
      dmGeral.FIN_CD_M_PCR.Close;
      dmGeral.FIN_CD_M_PCR.Data :=
      dmGeral.FIN_CD_M_PCR.DataRequest(
              VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));
    end
  else
    begin
      txtFornecedor.SetFocus;
    end;
end;

procedure TFIN_FM_M_PCR.btnFiltroClick(Sender: TObject);
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


    dmGeral.FIN_CD_M_PCR.Close;
    dmGeral.FIN_CD_M_PCR.Data :=
    dmGeral.FIN_CD_M_PCR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_PCR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [4]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 112;
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
       txtPesquisa.NumbersOnly := true;
    end
  else
    begin
       txtPesquisa.NumbersOnly := false;
    end;
end;

procedure TFIN_FM_M_PCR.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
   if (dmGeral.FIN_CD_M_PCR.FieldByName('ORIGEM').AsInteger = 1) then
      begin
        AFont.Color := clRed;
      end;
end;

procedure TFIN_FM_M_PCR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_M_PCR);
end;

procedure TFIN_FM_M_PCR.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_PCR.Close;
  dmGeral.FIN_CD_M_PCR.Data := dmGeral.FIN_CD_M_PCR.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_PCR.Open;
end;

procedure TFIN_FM_M_PCR.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   tipo_pesquisa := 1;
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.FIN_CD_M_PCR.FieldByName('ID_FORNECEDOR').AsString :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;

           dmGeral.FIN_CD_M_PCR.FieldByName('INT_NOMEFOR').Text :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TFIN_FM_M_PCR.txtFornecedorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  dmGeral.FIN_CD_M_PCR.FieldByName('INT_NOMEFOR').Text := '';

  if dmGeral.FIN_CD_M_PCR.FieldByName('id_fornecedor').Text = '' then
     begin
       ShowMessage('O campo "Fornecedor" deve ser prenchido.');
       txtFornecedor.Text := '';
       txtFornecedor.SetFocus;
       abort;
     end;

  dmGeral.BUS_CD_C_FOR.Close;
  dmGeral.BUS_CD_C_FOR.Data :=
  dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtFornecedor.Text]));


  if dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
       ShowMessage('Fornecedor não encontrado.');
       txtFornecedor.Text := '';
       txtFornecedor.SetFocus;
       exit;
     end;

  dmGeral.FIN_CD_M_PCR.FieldByName('INT_NOMEFOR').Text :=
     dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
end;

end.
