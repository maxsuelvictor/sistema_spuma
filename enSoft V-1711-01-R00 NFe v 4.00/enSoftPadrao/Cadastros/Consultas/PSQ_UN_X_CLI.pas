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
  dxSkinXmas2008Blue, Vcl.DBCtrls, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TPSQ_FM_X_CLI = class(TPAD_FM_X_PSQ)
    BUS_CD_C_CLI: TClientDataSet;
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
    GroupBox2: TGroupBox;
    Label6: TLabel;
    wwDBGrid1: TwwDBGrid;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    wwDBGrid2: TwwDBGrid;
    dsoPed: TwwDataSource;
    dsoTit: TwwDataSource;
    Panel4: TPanel;
    Label8: TLabel;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbGridRowChanged(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
     PSQ_FM_X_CLI_id_vendedor: integer;
  end;

var
  PSQ_FM_X_CLI: TPSQ_FM_X_CLI;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_CLI.btnPesquisaClick(Sender: TObject);
var
  cdsBusFun: TClientDataSet;
begin
  inherited;

  try

  cdsBusFun :=  TClientDataSet.Create(nil);
  cdsBusFun.RemoteServer :=  dmGeral.pcConecao;
  cdsBusFun.ProviderName := 'CAD_DP_C_FUN';

  cdsBusFun.Close;
   cdsBusFun.Data :=
          cdsBusFun.DataRequest(
               VarArrayOf([0, IntToStr(xFuncionario)]));

  if (cdsBusFun.FieldByName('vnd_interno_externo').AsInteger = 0) then
      begin
        BUS_CD_C_CLI.Close;
        BUS_CD_C_CLI.Data :=
        BUS_CD_C_CLI.DataRequest(
           VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
      end
  else
      begin
        if cmbParametro.ItemIndex = 0 then
           begin
              BUS_CD_C_CLI.Close;
              BUS_CD_C_CLI.Data :=
              BUS_CD_C_CLI.DataRequest(
                 VarArrayOf([85, edtPesquisa.Text,xFuncionario]));
           end;
        if cmbParametro.ItemIndex = 1 then
           begin
              BUS_CD_C_CLI.Close;
              BUS_CD_C_CLI.Data :=
              BUS_CD_C_CLI.DataRequest(
                 VarArrayOf([86, edtPesquisa.Text,xFuncionario]));
           end;
      end;

  dbGrid.SetFocus;
  finally
    FreeAndNil(cdsBusFun);
  end;

end;

procedure TPSQ_FM_X_CLI.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if not BUS_CD_C_CLI.FieldByName('ativo').AsBoolean then
    begin
      aFont.Color := clMaroon;
      aFont.Style := [fsBold];
    end;
end;

procedure TPSQ_FM_X_CLI.dbGridRowChanged(Sender: TObject);
begin
  inherited;
   if BUS_CD_C_CLI.RecordCount >0 then
      begin
      dmGeral.BUS_CD_M_REC.Close;
      dmGeral.BUS_CD_M_REC.Data :=
              dmGeral.BUS_CD_M_REC.DataRequest(
               VarArrayOf([110, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,
                 BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString]));

      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
              dmGeral.BUS_CD_M_PED.DataRequest(
               VarArrayOf([78, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,
                 BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString]));
     end;
end;

procedure TPSQ_FM_X_CLI.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN)  then
      begin
        btnPesquisaClick(self);
      end;
end;

procedure TPSQ_FM_X_CLI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   dmGeral.BUS_CD_M_REC.EmptyDataSet;
   dmGeral.BUS_CD_M_REC.Close;

   dmGeral.BUS_CD_M_PED.EmptyDataSet;
   dmGeral.BUS_CD_M_PED.Close;

end;

procedure TPSQ_FM_X_CLI.FormCreate(Sender: TObject);
begin
  inherited;
  BUS_CD_C_CLI.Close;
  BUS_CD_C_CLI.Data :=
              BUS_CD_C_CLI.DataRequest(
               VarArrayOf([0,'']));

  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
              dmGeral.BUS_CD_M_REC.DataRequest(
               VarArrayOf([0,'']));

  dmGeral.BUS_CD_M_PED.Close;
  dmGeral.BUS_CD_M_PED.Data :=
              dmGeral.BUS_CD_M_PED.DataRequest(
               VarArrayOf([0,'']));
end;

end.
