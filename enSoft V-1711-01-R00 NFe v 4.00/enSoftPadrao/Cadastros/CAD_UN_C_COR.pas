unit CAD_UN_C_COR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue;

type
  TCAD_FM_C_COR = class(TPAD_FM_X_PAD)
    lblDescricao: TLabel;
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_COR: TCAD_FM_C_COR;

implementation

{$R *.dfm}

uses uDmGeral, uProxy;

procedure TCAD_FM_C_COR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_COR);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_COR.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_COR);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_COR.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_COR) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
end;

procedure TCAD_FM_C_COR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_COR);
end;

procedure TCAD_FM_C_COR.acGravarExecute(Sender: TObject);
begin
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       DmGeral.Grava(dmGeral.CAD_CD_C_COR);
       inherited;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_COR.btnFiltroClick(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_COR.Close;
  dmGeral.CAD_CD_C_COR.Data :=
  dmGeral.CAD_CD_C_COR.DataRequest(
     VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
end;

procedure TCAD_FM_C_COR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_COR.Close;
  FreeAndNil(CAD_FM_C_COR);
end;

procedure TCAD_FM_C_COR.FormCreate(Sender: TObject);
begin
  inherited;
   dmGeral.CAD_CD_C_COR.Close;
  dmGeral.CAD_CD_C_COR.Data :=
  dmGeral.CAD_CD_C_COR.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_COR.Open;
end;

procedure TCAD_FM_C_COR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
