unit PSQ_UN_X_CLI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.DBCtrls;

type
  TPSQ_FM_X_CLI = class(TPAD_FM_X_PSQ)
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    Label1: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_CLI: TPSQ_FM_X_CLI;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_CLI.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
  dmGeral.BUS_CD_C_CLI.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

end.
