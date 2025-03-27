unit FIN_UN_M_CAR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, JvExExtCtrls,
  JvExtComponent, JvPanel, vcl.Wwdbedit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TFIN_FM_M_CAR = class(TPAD_FM_X_PAD)
    lblNCM: TLabel;
    txtCliente: TJvDBComboEdit;
    txtClienteNome: TDBText;
    lblEmissao: TLabel;
    dpkEmissao: TJvDBDateEdit;
    lblVencimento: TLabel;
    dpkVencimento: TJvDBDateEdit;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    txtVlrVenda: TDBEdit;
    lblVlrVenda: TLabel;
    lblPerTaxa: TLabel;
    lblVlrLiquido: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    txtTaxa: TDBEdit;
    txtVlrLiquido: TDBEdit;
    txtParcelas: TEdit;
    lblQtdeParcela: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure dpkEmissaoExit(Sender: TObject);
    procedure dpkVencimentoExit(Sender: TObject);
    procedure txtVlrVendaExit(Sender: TObject);
    procedure txtParcelasExit(Sender: TObject);
    procedure txtTaxaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_CAR: TFIN_FM_M_CAR;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, FIN_RN_M_CAR;

procedure TFIN_FM_M_CAR.acAdicionaExecute(Sender: TObject);
begin
  inherited;

   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CBX_ID_PLANO').AsString = '' then
     begin
       ShowMessage('Deve ser preenchido Plano de Contas na tela de parâmetros na aba Financeiro no bloco Baixa de Cartão de Crédito.');
       exit;
     end;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CAR);
  cbbFormaPagamento.Text :='';
  txtParcelas.Text := '1';
  txtParcelas.Enabled := true;
  txtCliente.SetFocus;
  dmgeral.FIN_CD_M_CAR.FieldByName('ID_PLANO').AsString :=
         dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CBX_ID_PLANO').AsString;


end;

procedure TFIN_FM_M_CAR.acAlterarExecute(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CBX_ID_PLANO').AsString = '' then
     begin
       ShowMessage('Deve ser preenchido Plano de Contas na tela de parâmetros na aba Financeiro no bloco Baixa de Cartão de Crédito.');
       exit;
     end;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CAR) then
      begin
        inherited;
        txtParcelas.Text := '1';
        txtParcelas.Enabled := false;
        txtCliente.SetFocus;
      end;
end;

procedure TFIN_FM_M_CAR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CAR) then
     begin
       inherited;
       txtParcelas.Text := '1';
       dbGrid.SetFocus;
     end
  else
     begin
       txtCliente.SetFocus;
     end;
end;

procedure TFIN_FM_M_CAR.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CAR);
end;

procedure TFIN_FM_M_CAR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

   if ((txtParcelas.Text = '') or (StrToInt(txtParcelas.Text) = 0)) then
     begin
       ShowMessage('Número de parcelas tem que ser no mínimo igual a 1.');
       exit;
     end;
   FinValidaCar(dmGeral.FIN_CD_M_CAR);

   codigo := dmGeral.FIN_CD_M_CAR.FieldByName('ID_TITULO').AsString;

   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if (StrToInt(txtParcelas.Text) = 1) then
          DmGeral.Grava(dmGeral.FIN_CD_M_CAR)
       else if StrToInt(txtParcelas.Text)>1 then
          FinGeracaoAutomaticaCar(StrToInt(txtParcelas.Text),true);

       inherited;
       dmGeral.FIN_CD_M_CAR.Close;
       dmGeral.FIN_CD_M_CAR.Data :=
       dmGeral.FIN_CD_M_CAR.DataRequest(
              VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));
       txtParcelas.Text := '1';
     end;
end;

procedure TFIN_FM_M_CAR.btnFiltroClick(Sender: TObject);
var
  tipo_filtro:integer;
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;


    tipo_filtro := 1;

    if cbbPesquisa.ItemIndex = 0 then
      begin
        tipo_filtro := 1;
      end;

    if cbbPesquisa.ItemIndex = 1 then
       begin
        tipo_filtro := 2
       end;

    if cbbPesquisa.ItemIndex = 2 then
      begin
        tipo_filtro := 4;
      end;

    if cbbPesquisa.ItemIndex = 3 then
      begin
        tipo_filtro := 6;
      end;

    dmGeral.FIN_CD_M_CAR.Close;
    dmGeral.FIN_CD_M_CAR.Data :=
    dmGeral.FIN_CD_M_CAR.DataRequest(
            VarArrayOf([tipo_filtro, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_CAR.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusFormaPgtos(4,'''3''');
  cbbFormaPagamento.DropDown;
end;

procedure TFIN_FM_M_CAR.cbbFormaPagamentoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if (dmGeral.FIN_CD_M_CAR.FieldByName('ID_FORMA_PAG').Text = '') or
       not (dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').Text = '3') then
     begin
       ShowMessage('O campo "Forma de Pagamento" deve ser preechido.');
       cbbFormaPagamento.SetFocus;
     end
  else
     begin
     dmGeral.BUS_CD_C_FPG.Close;
     dmGeral.BUS_CD_C_FPG.Data :=
     dmGeral.BUS_CD_C_FPG.DataRequest(
            VarArrayOf([1, dmGeral.FIN_CD_M_REC.FieldByName('id_forma_pag').AsString]));
     if not dmGeral.BUS_CD_C_FPG.IsEmpty then
       begin
        dmGeral.FIN_CD_M_CAR.FieldByName('car_taxa').AsString := dmGeral.BUS_CD_C_FPG.FieldByName('car_taxa').AsString;
       end
     else
       begin
         ShowMessage('Forma de Pagamento não encontrado.');
         cbbFormaPagamento.SetFocus;
       end;
    end;
end;

procedure TFIN_FM_M_CAR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';

  if cbbPesquisa.ItemIndex in [1,2]  then
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

procedure TFIN_FM_M_CAR.dpkEmissaoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if dmGeral.FIN_CD_M_CAR.FieldByName('DTA_EMISSAO').Text = '' then
     begin
       ShowMessage('O campo "Emissão" deve ser prenchido.');
       dpkEmissao.SetFocus;
     end;
  dmGeral.FIN_CD_M_CAR.FieldByName('DTA_ORIGINAL').AsDateTime := dmGeral.FIN_CD_M_CAR.FieldByName('DTA_EMISSAO').AsDateTime;
end;

procedure TFIN_FM_M_CAR.dpkVencimentoExit(Sender: TObject);
begin
  inherited;
    if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if dmGeral.FIN_CD_M_CAR.FieldByName('DTA_VENCIMENTO').Text = '' then
     begin
       ShowMessage('O campo "Vencimento" deve ser prenchido.');
       dpkVencimento.SetFocus;
     end;
end;

procedure TFIN_FM_M_CAR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_CAR.Close;
  FreeAndNil(FIN_FM_M_CAR);
end;

procedure TFIN_FM_M_CAR.FormCreate(Sender: TObject);
begin
  inherited;

  dmGeral.FIN_CD_M_CAR.Close;
  dmGeral.FIN_CD_M_CAR.Data := dmGeral.FIN_CD_M_CAR.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_CAR.Open;

  dmGeral.BusFormaPgtos(1,'%');
end;

procedure TFIN_FM_M_CAR.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_CAR.FieldByName('ID_CLIENTE').AsString :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;

           dmGeral.FIN_CD_M_CAR.FieldByName('INT_NOMECLI').Text :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFIN_FM_M_CAR.txtClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    {dmGeral.FIN_CD_M_CAR.FieldByName('INT_NOMECLI').Text := '';

    dmGeral.FIN_CD_M_CAR.Close;
    dmGeral.FIN_CD_M_CAR.Data :=
    dmGeral.FIN_CD_M_CAR.DataRequest(VarArrayOf([0, txtCliente.Text]));

    dmGeral.FIN_CD_M_CAR.FieldByName('INT_NOMECLI').Text :=
         dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;  }



    if trim(txtCliente.Text) <> '' then
    begin
       dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
             dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, trim(txtCliente.Text)]));
       if not dmGeral.BUS_CD_C_CLI.IsEmpty then
        begin
          dmGeral.FIN_CD_M_CAR.FieldByName('INT_NOMECLI').Text := dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

        end
       else
        begin
          dmGeral.FIN_CD_M_CAR.FieldByName('INT_NOMECLI').Text := '';
          ShowMessage('Cliente não encontrado');
          txtCliente.SetFocus;
        end;
    end
  else
    begin
     dmGeral.FIN_CD_M_CAR.FieldByName('INT_NOMECLI').Text := '';
     ShowMessage('O campo "cliente" deve ser preenchido');
     txtCliente.SetFocus;
    end;
end;

procedure TFIN_FM_M_CAR.txtParcelasExit(Sender: TObject);
begin
  inherited;
  if ((txtParcelas.Text = '') or (txtParcelas.Text = '0')) then
     begin
       txtParcelas.Text := '1';
     end;
  txtTaxa.SetFocus;
end;

procedure TFIN_FM_M_CAR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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



procedure TFIN_FM_M_CAR.txtTaxaExit(Sender: TObject);
begin
  inherited;
  { if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end; }

  if (not (dmGeral.FIN_CD_M_CAR.FieldByName('CAR_TAXA').AsCurrency >= 0)) then
     begin
       ShowMessage('O valor do campo "% Taxa" tem que ser maior ou igual a zero.');
       txtTaxa.SetFocus;
     end;
end;

procedure TFIN_FM_M_CAR.txtVlrVendaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if not (dmGeral.FIN_CD_M_CAR.FieldByName('VLR_ORIGINAL').AsCurrency > 0) then
     begin
       ShowMessage('O valor do campo "Vlr. Título" tem que ser maior que zero.');
       txtVlrVenda.SetFocus;
     end;

  //dmGeral.FIN_CD_M_CAR.FieldByName('VLR_PARCELA').AsCurrency :=
         //dmGeral.FIN_CD_M_CAR.FieldByName('CAR_TAXA').AsCurrency *
         //dmGeral.FIN_CD_M_CAR.FieldByName('VLR_ORIGINAL').AsCurrency;

end;

end.
