unit CAD_UN_C_NTR;

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
  vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit;

type
  TCAD_FM_C_NTR = class(TPAD_FM_X_PAD)
    CAD_CD_C_NTR: TClientDataSet;
    CAD_CD_C_NTRcodigo: TWideStringField;
    CAD_CD_C_NTRdescricao: TWideStringField;
    txtCodigo: TwwDBEdit;
    txtDescricao: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CAD_CD_C_NTRBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_NTR: TCAD_FM_C_NTR;

implementation

{$R *.dfm}

uses uDmGeral, uValidacoes;

procedure TCAD_FM_C_NTR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_NTR);
  txtCodigo.SetFocus;
end;

procedure TCAD_FM_C_NTR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_NTR) then
      begin
        inherited;
        txtCodigo.Enabled := false;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_NTR.acCancelarExecute(Sender: TObject);
begin
 if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_NTR) then
     begin
       inherited;
       txtCodigo.Enabled := true;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_NTR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_NTR);
end;

procedure TCAD_FM_C_NTR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := TRIM(CAD_CD_C_NTR.FieldByName('codigo').AsString);
  DmGeral.Grava(CAD_CD_C_NTR);
  inherited;
  CAD_CD_C_NTR.Close;
  CAD_CD_C_NTR.Data :=
  CAD_CD_C_NTR.DataRequest(
          VarArrayOf([0, codigo]));

  txtCodigo.Enabled := true;

end;

procedure TCAD_FM_C_NTR.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    CAD_CD_C_NTR.Close;
    CAD_CD_C_NTR.Data :=
    CAD_CD_C_NTR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_NTR.CAD_CD_C_NTRBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidaCAD_CD_C_NTR(DataSet);
end;

procedure TCAD_FM_C_NTR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CAD_CD_C_NTR.Close;
  FreeAndNil(CAD_FM_C_NTR);
end;

procedure TCAD_FM_C_NTR.FormShow(Sender: TObject);
begin
  inherited;
  CAD_CD_C_NTR.Close;
  CAD_CD_C_NTR.DataRequest(
          VarArrayOf([0, '']));
  CAD_CD_C_NTR.open;
end;

end.
