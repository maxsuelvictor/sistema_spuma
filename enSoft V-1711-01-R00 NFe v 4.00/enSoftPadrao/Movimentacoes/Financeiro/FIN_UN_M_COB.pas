unit FIN_UN_M_COB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,System.Math,Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvToolEdit,
  JvDBControls, Vcl.DBCtrls, JvExMask, Vcl.Mask, vcl.wwdblook, JvExExtCtrls,
  JvExtComponent, JvPanel, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Datasnap.DBClient, vcl.Wwdbedit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TFIN_FM_M_COB = class(TPAD_FM_X_PAD)
    lblCobranca: TLabel;
    txtCobranca: TDBEdit;
    lblCliente: TLabel;
    txtCliente: TJvDBComboEdit;
    txtClienteNome: TDBText;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    lblEmail: TLabel;
    txtEmail: TDBMemo;
    lblTelFixo: TLabel;
    txtTelFixo: TDBMemo;
    lblTelMovel: TLabel;
    txtTelMovel: TDBMemo;
    gbTitulos: TGroupBox;
    gbContato: TGroupBox;
    lblContatoPor: TLabel;
    lblDataAcordo: TLabel;
    dpkDataAcordo: TJvDBDateEdit;
    lblValorAcordo: TLabel;
    txtValorAcordo: TDBMemo;
    cbxAcordo: TDBCheckBox;
    lblAcordo: TLabel;
    grdTitulos: TwwDBGrid;
    dgrdItens: TwwDBGrid;
    dsoTit: TwwDataSource;
    dsoTitIte: TwwDataSource;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    lblContato: TLabel;
    cbxContato: TDBCheckBox;
    cbbContatoPor: TwwDBLookupCombo;
    Panel1: TPanel;
    lblTotalTitulos: TLabel;
    lblTotalVEncido: TLabel;
    lblTotalCorrigido: TLabel;
    lblTotalSelecionado: TLabel;
    lblTotalJuros: TLabel;
    lblTotalSelCor: TLabel;
    txtTotalTitulos: TEdit;
    txtTotalVencido: TEdit;
    txtTotalSelCorrigido: TEdit;
    txtTotalJuros: TEdit;
    txtTotalSelecionado: TEdit;
    txtTotalCorrigido: TEdit;
    lblNome: TLabel;
    txtNomeContato: TwwDBEdit;
    txtObservacao: TDBMemo;
    lblObservacao: TLabel;
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
    procedure cbbContatoPorExit(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure cbxAcordoClick(Sender: TObject);
    procedure grdTitulosRowChanged(Sender: TObject);
    procedure grdTitulosFieldChanged(Sender: TObject; Field: TField);
    procedure txtValorAcordoExit(Sender: TObject);
    procedure txtObservacaoExit(Sender: TObject);
  private
    { Private declarations }
  public
     procedure carregaTitulos;
     procedure dias_atraso;
     procedure preencherTitulos;
     procedure BusTitEmAberto;
     procedure BusTitCobranca;
     procedure deletarTitulosNaoSelecionados;
     var
       titulos:string;
       total_juros_sel:currency;
       total_sel:currency;
       total_sel_cor:currency;
    { Public declarations }
  end;

var
  FIN_FM_M_COB: TFIN_FM_M_COB;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, PSQ_UN_X_CLI;

procedure TFIN_FM_M_COB.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_COB);
  txtCliente.SetFocus;
  txtTotalTitulos.Text := '';
  txtTotalVencido.Text := '';
  txtTotalCorrigido.Text := '';
  txtTotalSelCorrigido.Text := '';
  txtTotalJuros.Text := '';
  txtTotalSelecionado.Text := '';
end;

procedure TFIN_FM_M_COB.acAlterarExecute(Sender: TObject);
var
  total_titulos:currency;
  total_titulos_venc:currency;
  total_juros:currency;
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_COB) then
      begin
        inherited;
        txtCliente.Enabled := false;
        txtObservacao.SetFocus;
      end;
    BusTitCobranca;
    total_titulos := 0;
    total_titulos_venc := 0;
    total_juros := 0;

    total_juros_sel := 0;
    total_sel := 0;
    total_sel_cor := 0;

    dmGeral.FIN_CD_M_COB_TIT.Open;
    dmgeral.FIN_CD_M_COB_TIT.First;

    while not dmGeral.FIN_CD_M_COB_TIT.EOF do
     begin
        total_titulos := total_titulos + dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsFloat;
          if dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_DTA_VENCIMENTO').AsDateTime < xDataSis then
           begin
             total_titulos_venc := total_titulos_venc + dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsFloat;
             if  dmGeral.FIN_CD_M_COB_TIT.FieldByName('DIAS_ATRASO').AsInteger > 0 then
               begin
                total_juros := total_juros + dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsCurrency*
                     (dmgeral.CAD_CD_C_PAR_CTRtax_juros_mensal.Value/100)*
                     dmGeral.FIN_CD_M_COB_TIT.FieldByName('DIAS_ATRASO').AsInteger;
               end;
           end;

           if dmGeral.FIN_CD_M_COB_TIT.FieldByName('SELECAO').AsBoolean = True then
            begin
               total_sel := total_sel + dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsCurrency;
               if dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_DTA_VENCIMENTO').AsDateTime < xDataSis then
                begin
                  total_juros_sel := total_juros_sel + dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsCurrency*
                                             (dmgeral.CAD_CD_C_PAR_CTRtax_juros_mensal.Value/100)*
                                              dmGeral.FIN_CD_M_COB_TIT.FieldByName('DIAS_ATRASO').AsInteger;
                end;
            end;

          dmGeral.FIN_CD_M_COB_TIT.Next;
     end;

     txtTotalSelecionado.Text := formatFloat('#0.00',RoundTo(total_sel,-2));
     txtTotalJuros.Text := formatFloat('#0.00',RoundTo(total_juros_sel,-2));
     txtTotalSelCorrigido.Text := formatFloat('#0.00',RoundTo(total_sel+total_juros_sel,-2));

     txtTotalTitulos.Text := formatfloat('#0.00',RoundTo(total_titulos,-2));
     txtTotalVencido.Text := formatfloat('#0.00',RoundTo(total_titulos_venc,-2));
     txtTotalCorrigido.Text := formatfloat('#0.00',RoundTo(total_titulos+total_juros,-2));
end;

procedure TFIN_FM_M_COB.acCancelarExecute(Sender: TObject);
begin

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_COB) then
        begin
          inherited;
           txtTotalTitulos.Text := '';
           txtTotalVencido.Text := '';
           txtTotalCorrigido.Text := '';
           txtTotalSelCorrigido.Text := '';
           txtTotalJuros.Text := '';
           txtTotalSelecionado.Text := '';
           txtCliente.Enabled := True;
           dbGrid.SetFocus;
           dmGeral.BUS_CD_M_REC_FAT.EmptyDataSet;
        end
     else
        begin
          txtObservacao.SetFocus;
        end;


end;

procedure TFIN_FM_M_COB.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_COB);
end;

procedure TFIN_FM_M_COB.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin


  if not dmGeral.FIN_CD_M_COB_TIT.IsEmpty then
   begin
     deletarTitulosNaoSelecionados;
     if not dmGeral.FIN_CD_M_COB_TIT.IsEmpty then
       begin
         if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmGeral.FIN_CD_M_COB.FieldByName('ID_CONTROLE').AsString;
             DmGeral.Grava(dmGeral.FIN_CD_M_COB);
             txtTotalTitulos.Text := '';
             txtTotalVencido.Text := '';
             txtTotalCorrigido.Text := '';
             txtTotalSelCorrigido.Text := '';
             txtTotalJuros.Text := '';
             txtTotalSelecionado.Text := '';
             txtCliente.Enabled := true;
             inherited;
             dmGeral.FIN_CD_M_COB.Close;
             dmGeral.FIN_CD_M_COB.Data :=
             dmGeral.FIN_CD_M_COB.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));
             dmGeral.BUS_CD_M_REC_FAT.EmptyDataSet;
           end
         else
           begin
             txtCliente.SetFocus;
           end;
       end
     else
       begin
        ShowMessage('Nenhum título foi selecionado');
       end;
   end
   else
     begin
       ShowMessage('Não há títulos pendentes na cobrança');
     end;

end;

procedure TFIN_FM_M_COB.btnFiltroClick(Sender: TObject);
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



    dmGeral.FIN_CD_M_COB.Close;
    dmGeral.FIN_CD_M_COB.Data :=
    dmGeral.FIN_CD_M_COB.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;



procedure TFIN_FM_M_COB.cbbContatoPorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

end;

procedure TFIN_FM_M_COB.cbbPesquisaChange(Sender: TObject);
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


  if cbbPesquisa.ItemIndex = 0 then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFIN_FM_M_COB.cbxAcordoClick(Sender: TObject);
begin
  inherited;
  if cbxAcordo.Checked then
    begin
      dpkDataAcordo.Enabled := true;
      txtValorAcordo.Enabled := true;
    end
  else
    begin
      dpkDataAcordo.Text := '';
      txtValorAcordo.Text := '';
      dpkDataAcordo.Enabled := false;
      txtValorAcordo.Enabled := false;
    end;
end;

procedure TFIN_FM_M_COB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_M_REC.Filtered := false;
  dmGeral.BUS_CD_M_REC_FAT.Filtered := false;
  dmGeral.FIN_CD_M_COB.Close;
  FreeAndNil(FIN_FM_M_COB);
end;

procedure TFIN_FM_M_COB.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_COB.Close;
  dmGeral.FIN_CD_M_COB.Data := dmGeral.FIN_CD_M_COB.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_COB.Open;

  dmGeral.BUS_PR_X_TCO;
end;

procedure TFIN_FM_M_COB.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_COB.FieldByName('ID_CLIENTE').AsInteger :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

           dmGeral.FIN_CD_M_COB.FieldByName('INT_NOMECLI').Text :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;

           dmGeral.FIN_CD_M_COB.FieldByName('INT_TELFIX').Text :=
               PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('TEL_FIXO').AsString;

           dmGeral.FIN_CD_M_COB.FieldByName('INT_TELMOV').Text  :=
               PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('TEL_MOVEL').AsString;

           dmGeral.FIN_CD_M_COB.FieldByName('INT_EMAIL').Text  :=
               PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('EMAIL').AsString;

         end;
   PSQ_FM_X_CLI.Free;


end;

procedure TFIN_FM_M_COB.txtClienteExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  if trim(txtCliente.Text) <> '' then
    begin
       dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
             dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, trim(txtCliente.Text)]));
       if not dmGeral.BUS_CD_C_CLI.IsEmpty then
        begin
          dmGeral.FIN_CD_M_COB.FieldByName('INT_NOMECLI').Text := dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
          dmGeral.FIN_CD_M_COB.FieldByName('INT_TELFIX').Text := dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').AsString;
          dmGeral.FIN_CD_M_COB.FieldByName('INT_TELMOV').Text  := dmGeral.BUS_CD_C_CLI.FieldByName('TEL_MOVEL').AsString;
          dmGeral.FIN_CD_M_COB.FieldByName('INT_EMAIL').Text  := dmGeral.BUS_CD_C_CLI.FieldByName('EMAIL').AsString;
          carregaTitulos;
        end
       else
        begin
          dmGeral.FIN_CD_M_COB.FieldByName('INT_NOMECLI').Text := '';
          dmGeral.FIN_CD_M_COB.FieldByName('INT_TELFIX').Text := '';
          dmGeral.FIN_CD_M_COB.FieldByName('INT_TELMOV').Text := '';
          dmGeral.FIN_CD_M_COB.FieldByName('INT_EMAIL').Text := '';
          ShowMessage('Cliente não encontrado');
          txtCliente.SetFocus;
        end;
    end
  else
    begin
     dmGeral.FIN_CD_M_COB.FieldByName('INT_NOMECLI').Text := '';
     dmGeral.FIN_CD_M_COB.FieldByName('INT_TELFIX').Text := '';
     dmGeral.FIN_CD_M_COB.FieldByName('INT_TELMOV').Text := '';
     dmGeral.FIN_CD_M_COB.FieldByName('INT_EMAIL').Text := '';
     ShowMessage('O campo "cliente" deve ser preenchido');
     txtCliente.SetFocus;
    end;

   total_juros_sel:=0;
   total_sel:=0;
   total_sel_cor:=0;

end;

procedure TFIN_FM_M_COB.txtObservacaoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;
end;

procedure TFIN_FM_M_COB.txtValorAcordoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

end;

procedure TFIN_FM_M_COB.carregaTitulos;
var
  total_titulos:currency;
  total_titulos_venc:currency;
  total_juros:currency;
begin

   try
     grdTitulos.OnRowChanged := nil;

   BusTitEmAberto;

   total_titulos := 0;
   total_titulos_venc := 0;
   total_juros := 0;
   dmGeral.FIN_CD_M_COB_TIT.EmptyDataSet;

   if not dmGeral.BUS_CD_M_REC.IsEmpty then
    begin
       while not dmGeral.BUS_CD_M_REC.Eof do
         begin
          dmGeral.FIN_CD_M_COB_TIT.Insert;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('ID_CONTROLE').Text := dmGeral.FIN_CD_M_COB.FieldByName('ID_CONTROLE').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_CODEMP').Text := dmGeral.BUS_CD_M_REC.FieldByName('ID_EMPRESA').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('ID_TITULO').Text := dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_DTA_VENCIMENTO').Text := dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_DTA_ORIGINAL').Text := dmGeral.BUS_CD_M_REC.FieldByName('DTA_ORIGINAL').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_NOMEFPG').Text := dmGeral.BUS_CD_M_REC.FieldByName('INT_NOMEFPG').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_PARCELA').AsCurrency := dmGeral.BUS_CD_M_REC.FieldByName('VLR_PARCELA').AsCurrency;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsCurrency := dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_ID_FISCAL').Text := dmGeral.BUS_CD_M_REC.FieldByName('ID_FISCAL').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_NUM_PARCELA').Text := dmGeral.BUS_CD_M_REC.FieldByName('NUM_PARCELA').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_DTA_EMISSAO').Text := dmGeral.BUS_CD_M_REC.FieldByName('DTA_EMISSAO').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_ID_FORMA_PAG').Text := dmGeral.BUS_CD_M_REC.FieldByName('ID_FORMA_PAG').Text;
          dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_NOMEFPG').Text := dmGeral.BUS_CD_M_REC.FieldByName('INT_NOMEFPG').Text;

          dias_atraso;
          total_titulos := total_titulos + dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsFloat;

          if dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_DTA_VENCIMENTO').AsDateTime < xDataSis then
           begin
             total_titulos_venc := total_titulos_venc + dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsFloat;
             if  dmGeral.FIN_CD_M_COB_TIT.FieldByName('DIAS_ATRASO').AsInteger > 0 then
               begin
                total_juros := total_juros + dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency*
                     (dmgeral.CAD_CD_C_PAR_CTRtax_juros_mensal.Value/100)*
                     dmGeral.FIN_CD_M_COB_TIT.FieldByName('DIAS_ATRASO').AsInteger;
               end;
           end;


          dmGeral.BUS_CD_M_REC.Next;
         end;
    end
    else
     begin
       ShowMessage('O Cliente não tem títulos pendentes');
      // txtCliente.SetFocus;
     end;

     dmGeral.BUS_CD_M_REC.First;
     txtTotalTitulos.Text := formatFloat('#0.00',RoundTo(total_titulos,-2));
     txtTotalVencido.Text := formatFloat('#0.00',RoundTo(total_titulos_venc,-2));
     txtTotalCorrigido.Text := formatFloat('#0.00',RoundTo(total_titulos+total_juros,-2));


     txtTotalSelecionado.Text := formatFloat('#0.00',RoundTo(total_sel,-2));
     txtTotalJuros.Text := formatFloat('#0.00',RoundTo(total_juros_sel,-2));
     txtTotalSelCorrigido.Text := formatFloat('#0.00',RoundTo(total_sel+total_juros_sel,-2));

   finally
     grdTitulos.OnRowChanged := grdTitulosRowChanged;
     grdTitulosRowChanged(self);
   end;

end;

procedure TFIN_FM_M_COB.grdTitulosFieldChanged(Sender: TObject; Field: TField);
begin
  inherited;
  if (Field.FullName = 'selecao') and (dmGeral.FIN_CD_M_COB.State in [dsedit]) then
     begin
       if dmGeral.FIN_CD_M_COB_TIT.FieldByName('SELECAO').AsBoolean = True then
         begin
           total_sel := total_sel + dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsCurrency;
           if dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_DTA_VENCIMENTO').AsDateTime < xDataSis then
              begin
                total_juros_sel := total_juros_sel + dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsCurrency*
                                             ( (dmgeral.CAD_CD_C_PAR_CTRtax_juros_mensal.Value/30)/100)*
                                              dmGeral.FIN_CD_M_COB_TIT.FieldByName('DIAS_ATRASO').AsInteger;
              end;
         end
       else
         if dmGeral.FIN_CD_M_COB_TIT.FieldByName('SELECAO').AsBoolean = False then
           begin
             total_sel := total_sel - dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsCurrency;
             if dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_DTA_VENCIMENTO').AsDateTime < xDataSis then
                begin
                   total_juros_sel := total_juros_sel - dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_VLR_SALDO').AsCurrency*
                                             ( (dmgeral.CAD_CD_C_PAR_CTRtax_juros_mensal.Value/30)/100)*
                                              dmGeral.FIN_CD_M_COB_TIT.FieldByName('DIAS_ATRASO').AsInteger;
                end;
           end;

       txtTotalSelecionado.Text := formatFloat('#0.00',RoundTo(total_sel,-2));
       txtTotalJuros.Text := formatFloat('#0.00',RoundTo(total_juros_sel,-2));
       txtTotalSelCorrigido.Text := formatFloat('#0.00',RoundTo(total_sel+total_juros_sel,-2));
     end;


end;

procedure TFIN_FM_M_COB.grdTitulosRowChanged(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_REC.Filtered := false;
  dmGeral.BUS_CD_M_REC_FAT.Filtered := false;


  if dmGeral.FIN_CD_M_COB_TITint_id_fiscal.AsInteger > 0 then
     begin
      dmGeral.BUS_CD_M_REC.filter := ' id_fiscal = ' + dmGeral.FIN_CD_M_COB_TITint_id_fiscal.text;
      dmGeral.BUS_CD_M_REC.Filtered := true;
     end
  else
     begin
       dmGeral.BUS_CD_M_REC_FAT.Filtered := false;
       dmGeral.BUS_CD_M_REC_FAT.filter   := ' id_fiscal = -1 ';
       dmGeral.BUS_CD_M_REC_FAT.Filtered := true;
     end;
end;

procedure TFIN_FM_M_COB.dias_atraso;
var
  data_dif:TDateTime;
  dias,mes,ano:Word;
begin
    data_dif := xDataSis - dmGeral.FIN_CD_M_COB_TIT.FieldByName('INT_DTA_ORIGINAL').AsDateTime;
    DecodeDate(data_dif,ano,mes,dias);
    dmGeral.FIN_CD_M_COB_TIT.FieldByName('DIAS_ATRASO').Text := FloatToStr(data_dif);
end;

procedure TFIN_FM_M_COB.preencherTitulos;
begin
  titulos := '';
  dmGeral.FIN_CD_M_COB_TIT.Open;
  dmgeral.FIN_CD_M_COB_TIT.First;

  if not dmGeral.FIN_CD_M_COB_TIT.IsEmpty then
     begin
       titulos := ''''+dmGeral.FIN_CD_M_COB_TIT.FieldByname('ID_TITULO').Text+'''';
       dmGeral.FIN_CD_M_COB_TIT.Next;

       while not dmGeral.FIN_CD_M_COB_TIT.EOF do
         begin
            titulos := titulos + ',' +''''+dmGeral.FIN_CD_M_COB_TIT.FieldByName('ID_TITULO').Text+'''';
            dmGeral.FIN_CD_M_COB_TIT.Next;
         end;
   end;
end;

procedure TFIN_FM_M_COB.BusTitEmAberto;
begin
   dmGeral.BUS_CD_M_REC.Filtered := false;
   dmGeral.BUS_CD_M_REC_FAT.Filtered := false;

   dmGeral.BUS_CD_M_REC.Data :=
   dmGeral.BUS_CD_M_REC.DataRequest(
            VarArrayOf([106, dmGeral.FIN_CD_M_COB.FieldByName('ID_CLIENTE').text]));
end;

procedure TFIN_FM_M_COB.BusTitCobranca;
begin
   preencherTitulos;
   dmGeral.BUS_CD_M_REC.Data :=
   dmGeral.BUS_CD_M_REC.DataRequest(
            VarArrayOf([107, titulos]));
end;

procedure TFIN_FM_M_COB.deletarTitulosNaoSelecionados;
begin
   dmGeral.FIN_CD_M_COB_TIT.First;
   while not dmGeral.FIN_CD_M_COB_TIT.EOF do
    begin
      if dmGeral.FIN_CD_M_COB_TIT.FieldByName('selecao').AsBoolean = False then
        begin
          dmGeral.FIN_CD_M_COB_TIT.Delete;
          dmGeral.FIN_CD_M_COB_TIT.First;
        end
      else
        begin
          dmGeral.FIN_CD_M_COB_TIT.Next;
        end;
    end;
end;

end.
