unit PSQ_UN_X_FPG;

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
  dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TPSQ_FM_X_FPG = class(TPAD_FM_X_PSQ)
    BUS_CD_C_FPG: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    xOrigemPsqFpg:  string;
    xCodFpg:String;
     // ''  -> indica que a consulta é livre
     // '1' -> Buscará as formas de pagamento a vista do pedido de venda
     // '2' -> Buscará as formas de pagamento a vista do pedido de venda

  end;

var
  PSQ_FM_X_FPG: TPSQ_FM_X_FPG;


implementation

{$R *.dfm}

uses uDmGeral, FAT_UN_M_PED;

procedure TPSQ_FM_X_FPG.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  if xOrigemPsqFpg = '' then
     begin
        BUS_CD_C_FPG.Close;
        BUS_CD_C_FPG.Data :=
        BUS_CD_C_FPG.DataRequest(
           VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
     end
  else
     begin
       if xOrigemPsqFpg = '1' then   // '1' -> Buscará as formas de pagamento a vista do pedido de venda
          begin
            BUS_CD_C_FPG.Close;
            BUS_CD_C_FPG.Data :=
               BUS_CD_C_FPG.DataRequest(
                     VarArrayOf([5,cmbParametro.ItemIndex, edtPesquisa.Text,'''0''',xCodFpg]));
          end;

       if xOrigemPsqFpg = '2' then  // '2' -> Buscará as formas de pagamento a vista do pedido de venda
          begin
             // Busca as formas de pagamento a prazo
             BUS_CD_C_FPG.Close;
             BUS_CD_C_FPG.Data :=
                BUS_CD_C_FPG.DataRequest(
                     VarArrayOf([5,cmbParametro.ItemIndex, edtPesquisa.Text,'''1''',xCodFpg]));

          end;
     end;
  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_FPG.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN)  then
      begin
        btnPesquisaClick(self);
      end;
end;

procedure TPSQ_FM_X_FPG.FormCreate(Sender: TObject);
begin
  inherited;
  xOrigemPsqFpg := '';
end;

end.
