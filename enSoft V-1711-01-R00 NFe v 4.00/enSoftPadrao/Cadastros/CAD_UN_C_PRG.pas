unit CAD_UN_C_PRG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.Mask, vcl.Wwdbedit, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.DBCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, vcl.Wwdotdot, vcl.Wwdbcomb;

type
  TCAD_FM_C_PRG = class(TPAD_FM_X_PAD)
    txtCodigo: TwwDBEdit;
    lblCodigo: TLabel;
    lblTipo: TLabel;
    Label1: TLabel;
    txtDescricao: TwwDBEdit;
    lblModulo: TLabel;
    lblFormulario: TLabel;
    txtFormulario: TwwDBEdit;
    lblOrdemMenu: TLabel;
    txtOrdemMenu: TwwDBEdit;
    txtPathMenu: TwwDBEdit;
    lblPathMenu: TLabel;
    cbbTipo: TwwDBComboBox;
    cbbModulo: TwwDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbModuloEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_PRG: TCAD_FM_C_PRG;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_PRG.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PRG);
  cbbTipo.ItemIndex := 0;
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_PRG.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PRG) then
      begin
        inherited;
        cbbTipo.SetFocus;
      end;
end;

procedure TCAD_FM_C_PRG.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PRG) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbTipo.SetFocus;
     end;
end;

procedure TCAD_FM_C_PRG.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PRG);
end;

procedure TCAD_FM_C_PRG.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_PRG.FieldByName('ID_PRG').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_PRG);
  inherited;
  dmGeral.CAD_CD_C_PRG.Close;
  dmGeral.CAD_CD_C_PRG.Data :=
  dmGeral.CAD_CD_C_PRG.DataRequest(
          VarArrayOf([0, codigo,'']));
end;

procedure TCAD_FM_C_PRG.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_PRG.Close;
    dmGeral.CAD_CD_C_PRG.Data :=
    dmGeral.CAD_CD_C_PRG.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text,'']));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_PRG.cbbModuloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_PR1;
  cbbModulo.DropDown;
end;

procedure TCAD_FM_C_PRG.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_PRG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_PRG.Close;
  FreeAndNil(CAD_FM_C_PRG);
end;

procedure TCAD_FM_C_PRG.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PRG.Close;
  dmGeral.CAD_CD_C_PRG.Data := dmGeral.CAD_CD_C_PRG.DataRequest(VarArrayOf([0,'','']));
  dmGeral.CAD_CD_C_PRG.Open;

  dmGeral.BUS_PR_X_PR1;
end;

procedure TCAD_FM_C_PRG.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
