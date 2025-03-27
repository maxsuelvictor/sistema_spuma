unit PSQ_UN_X_MEQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TPSQ_FM_X_MEQ = class(TPAD_FM_X_PSQ)
    BUS_CD_C_MEQ: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      xFormCall:String;
  end;

var
  PSQ_FM_X_MEQ: TPSQ_FM_X_MEQ;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_MEQ.btnPesquisaClick(Sender: TObject);
begin
  inherited;

  if xFormCall='OFI_FM_M_CVL' then
    begin
      BUS_CD_C_MEQ.Close;
      BUS_CD_C_MEQ.Data :=
      BUS_CD_C_MEQ.DataRequest(
         VarArrayOf([cmbParametro.ItemIndex+5,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, edtPesquisa.Text]));
    end
  else
    begin
      BUS_CD_C_MEQ.Close;
      BUS_CD_C_MEQ.Data :=
      BUS_CD_C_MEQ.DataRequest(
         VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
    end;

  dbGrid.SetFocus;
end;

end.
