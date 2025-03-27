unit CAD_UN_C_CTC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  Datasnap.DBClient, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TCAD_FM_C_CTC = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblAgencia: TLabel;
    lblBanco: TLabel;
    txtCodigo: TDBEdit;
    txtAgencia: TDBEdit;
    txtBanco: TDBEdit;
    lblCodigoCedente: TLabel;
    txtCodigoCedente: TDBEdit;
    lblConta: TLabel;
    lblNome: TLabel;
    txtNomeCedente: TDBEdit;
    lblEmail: TLabel;
    txtEmailCedente: TDBEdit;
    txtProxNossoNumero: TDBEdit;
    lblProxNossoNumero: TLabel;
    rgTipo: TDBRadioGroup;
    dlgLicenca: TOpenDialog;
    Label1: TLabel;
    txtdesc: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    Label2: TLabel;
    txtIdemCedente: TDBEdit;
    txtmsg2: TwwDBEdit;
    txtmsg1: TwwDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    cbbNaoLavavel: TwwDBComboBox;
    Label5: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Label6: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBComboBox3: TwwDBComboBox;
    Label11: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    Label12: TLabel;
    txtCarteira: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    Label13: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    txtCNPJTitular: TwwDBEdit;
    txtConta: TwwDBEdit;
    txtContaDig: TwwDBEdit;
    dbImpMsgJurosMora: TDBCheckBox;
    Label16: TLabel;
    wwDBComboBox5: TwwDBComboBox;
    wwDBComboBox6: TwwDBComboBox;
    Label17: TLabel;
    Label18: TLabel;
    txtQtdeDiasProtesto: TwwDBEdit;
    cbProtestarNegativar: TwwDBComboBox;
    Label19: TLabel;
    txtPercMulta: TwwDBEdit;
    Label20: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label21: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgTipoExit(Sender: TObject);
    procedure cbbNaoLavavelExit(Sender: TObject);
    procedure cbProtestarNegativarChange(Sender: TObject);
  private
    { Private declarations }
    procedure TipoConta;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CTC: TCAD_FM_C_CTC;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_CTC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CTC);
  dmGeral.CAD_CD_C_CTCtipo.text := '0' ;
  rgTipo.SetFocus;
end;

procedure TCAD_FM_C_CTC.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CTC) then
      begin
        inherited;
        tipoConta;
        rgTipo.Enabled := false;

        txtCNPJTitular.Enabled := false;
        if dmGeral.CAD_CD_C_CTC.FieldByName('tipo_cobranca').AsInteger = 1 then // Banco do Brasil
           begin
             txtCNPJTitular.Enabled := true;
           end
      end;
end;

procedure TCAD_FM_C_CTC.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CTC) then
     begin
       inherited;
       rgTipo.Enabled := true;
       dbGrid.SetFocus;
     end
  else
     begin
       if (rgtipo.Value = '1') then
       txtBanco.SetFocus
       else
       txtdesc.SetFocus;
     end;
end;

procedure TCAD_FM_C_CTC.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CTC);
end;

procedure TCAD_FM_C_CTC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   inherited;
  if (rgtipo.Value = '0') or (rgtipo.Value = '1') then
    begin
      codigo := dmGeral.CAD_CD_C_CTC.FieldByName('ID_CONTA').AsString;
      rgTipo.Enabled := true;
      DmGeral.Grava(dmGeral.CAD_CD_C_CTC);

      dmGeral.CAD_CD_C_CTC.Close;
      dmGeral.CAD_CD_C_CTC.Data :=
        dmGeral.CAD_CD_C_CTC.DataRequest(
           VarArrayOf([0, codigo]));
    end
  else
    begin
      ShowMessage('Tipo "Caixa" ou "Banco" deve ser Selecionado.');
      rgTipo.SetFocus;
    end;
end;

procedure TCAD_FM_C_CTC.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if cbbPesquisa.ItemIndex <> 3 then
      begin
        dmGeral.CAD_CD_C_CTC.Close;
        dmGeral.CAD_CD_C_CTC.Data :=
          dmGeral.CAD_CD_C_CTC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
      end
    else
      begin
        dmGeral.CAD_CD_C_CTC.Close;
        dmGeral.CAD_CD_C_CTC.Data :=
          dmGeral.CAD_CD_C_CTC.DataRequest(
            VarArrayOf([4, txtPesquisa.Text]));
      end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CTC.cbbNaoLavavelExit(Sender: TObject);
begin
  inherited;
  txtCNPJTitular.Enabled := false;
  if dmGeral.CAD_CD_C_CTC.FieldByName('tipo_cobranca').AsInteger = 1 then // Banco do Brasil
     begin
       txtCNPJTitular.Enabled := true;
     end
  else
     begin
       txtCNPJTitular.text := '';
     end;
end;

procedure TCAD_FM_C_CTC.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_CTC.cbProtestarNegativarChange(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_CTC.state in [dsInsert,dsEdit] then
     begin
        //if dmGeral.CAD_CD_C_CTC.FieldByName('protestar_negativar').AsInteger in [0,2] then
        if (cbProtestarNegativar.Text = 'Nenhum') or (cbProtestarNegativar.Text = 'Negativar')  then
           begin
             dmGeral.CAD_CD_C_CTC.FieldByName('qtde_dias_protesto').AsInteger := 0;
             txtQtdeDiasProtesto.enabled := false;
           end;
        if cbProtestarNegativar.Text = 'Protestar' then
        //if dmGeral.CAD_CD_C_CTC.FieldByName('protestar_negativar').AsInteger in [1] then
           begin
             txtQtdeDiasProtesto.enabled := true;
           end;
     end;
end;

procedure TCAD_FM_C_CTC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_CTC.Close;
  FreeAndNil(CAD_FM_C_CTC);
end;

procedure TCAD_FM_C_CTC.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_CTC.Close;
  dmGeral.CAD_CD_C_CTC.Data := dmGeral.CAD_CD_C_CTC.DataRequest(VarArrayOf([4, '%']));
  dmGeral.CAD_CD_C_CTC.Open;
end;

procedure TCAD_FM_C_CTC.rgTipoExit(Sender: TObject);
begin
  inherited;
  TipoConta;
end;

procedure TCAD_FM_C_CTC.TipoConta;
begin
  if dmgeral.CAD_CD_C_CTCtipo.Text = '0' then
    begin
      txtbanco.Enabled := False;
      txtagencia.Enabled := False;
      txtconta.Enabled := False;
      txtCodigoCedente.Enabled := False;
      txtIdemCedente.Enabled := False;
      txtNomeCedente.Enabled := False;
      txtEmailCedente.Enabled := False;
      txtProxNossoNumero.Enabled := False;
      txtDesc.SetFocus;
    end;
  if dmgeral.CAD_CD_C_CTCtipo.Text = '1' then
    begin
      txtbanco.Enabled := True;
      txtagencia.Enabled := True;
      txtconta.Enabled := True;
      txtCodigoCedente.Enabled := True;
      txtIdemCedente.Enabled := True;
      txtNomeCedente.Enabled := True;
      txtEmailCedente.Enabled := True;
      txtProxNossoNumero.Enabled := True;
      txtBanco.SetFocus;
    end;
end;

procedure TCAD_FM_C_CTC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
