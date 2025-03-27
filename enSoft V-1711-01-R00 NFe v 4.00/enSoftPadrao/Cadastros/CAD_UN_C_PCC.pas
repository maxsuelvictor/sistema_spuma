unit CAD_UN_C_PCC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DB,
  Datasnap.DBClient, Vcl.ImgList, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit, vcl.Wwdotdot,
  vcl.Wwdbcomb;

type
  TCAD_FM_C_PCC = class(TPAD_FM_X_PAD)
    Label2: TLabel;
    cbbCodNatCC: TwwDBComboBox;
    Label3: TLabel;
    cbbIndTipoConta: TwwDBComboBox;
    Label4: TLabel;
    txtCodCta: TwwDBEdit;
    txtNomeCta: TwwDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    wwDBEdit3: TwwDBEdit;
    txtNivel: TwwDBEdit;
    Label1: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbCodNatCCEnter(Sender: TObject);
    procedure cbbIndTipoContaEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_PCC: TCAD_FM_C_PCC;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_PCC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PCC);
  txtCodCta.SetFocus;
end;

procedure TCAD_FM_C_PCC.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PCC) then
      begin
        inherited;
        txtCodCta.Enabled := false;
        txtNomeCta.SetFocus;
      end;
end;

procedure TCAD_FM_C_PCC.acCancelarExecute(Sender: TObject);
begin
  inherited;
 if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PCC) then
     begin
       inherited;
       txtCodCta.Enabled := true;
       dbGrid.SetFocus;
     end
  else
     begin
       txtNomeCta.SetFocus;
     end;
end;

procedure TCAD_FM_C_PCC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PCC);
end;

procedure TCAD_FM_C_PCC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := TRIM(dmGeral.CAD_CD_C_PCC.FieldByName('COD_CTA').AsString);
  DmGeral.Grava(dmGeral.CAD_CD_C_PCC);
  inherited;
  dmGeral.CAD_CD_C_PCC.Close;
  dmGeral.CAD_CD_C_PCC.Data :=
  dmGeral.CAD_CD_C_PCC.DataRequest(
          VarArrayOf([0, codigo]));

  txtCodCta.Enabled := true;
end;

procedure TCAD_FM_C_PCC.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_PCC.Close;
    dmGeral.CAD_CD_C_PCC.Data :=
    dmGeral.CAD_CD_C_PCC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_PCC.cbbCodNatCCEnter(Sender: TObject);
begin
  inherited;
  cbbCodNatCC.DropDown;
end;

procedure TCAD_FM_C_PCC.cbbIndTipoContaEnter(Sender: TObject);
begin
  inherited;
  cbbIndTipoConta.DropDown;
end;

procedure TCAD_FM_C_PCC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_PCC.Close;
  FreeAndNil(CAD_FM_C_PCC);
end;

procedure TCAD_FM_C_PCC.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PCC.Close;
  dmGeral.CAD_CD_C_PCC.Data := dmGeral.CAD_CD_C_PCC.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_PCC.Open;
end;

end.
