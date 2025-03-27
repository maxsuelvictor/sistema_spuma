unit CAD_UN_C_MVE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, vcl.wwdblook, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Datasnap.DBClient;

type
  TCAD_FM_C_MVE = class(TPAD_FM_X_PAD)
    txtDescricao: TDBEdit;
    txtCodigo: TDBEdit;
    lblDescricao: TLabel;
    lblCodigo: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    Label1: TLabel;
    cbbMarca: TwwDBLookupCombo;
    cbbCategoria: TwwDBLookupCombo;
    lblCategoria: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbMarcaEnter(Sender: TObject);
    procedure cbbCategoriaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_MVE: TCAD_FM_C_MVE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_MVE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MVE);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_MVE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MVE) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_MVE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MVE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_MVE.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_MVE);
end;

procedure TCAD_FM_C_MVE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_MVE.FieldByName('ID_MVE').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_MVE);
  inherited;
  dmGeral.CAD_CD_C_MVE.Close;
  dmGeral.CAD_CD_C_MVE.Data :=
  dmGeral.CAD_CD_C_MVE.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_MVE.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_MVE.Close;
    dmGeral.CAD_CD_C_MVE.Data :=
    dmGeral.CAD_CD_C_MVE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_MVE.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_MVE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_MVE.Close;
  FreeAndNil(CAD_FM_C_MVE);
end;

procedure TCAD_FM_C_MVE.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_MVE.Close;
  dmGeral.CAD_CD_C_MVE.Data := dmGeral.CAD_CD_C_MVE.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_MVE.Open;
end;

procedure TCAD_FM_C_MVE.FormShow(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_MODome.AsBoolean then
    begin
      dmgeral.BusMarca(1,'%');
      dmgeral.BusCategoria(1,'%');
    end;


  if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean=true) then
    begin
     lblCategoria.Visible := true;
     cbbCategoria.Visible := true;
    end
  else
    begin
      lblCategoria.Visible := false;
      cbbCategoria.Visible := false;
    end;


  cbbMarca.Visible := dmGeral.CAD_CD_C_PAR_MODome.AsBoolean;
  Label1.Visible := dmGeral.CAD_CD_C_PAR_MODome.AsBoolean;

end;

procedure TCAD_FM_C_MVE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_MVE.cbbCategoriaEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BusCategoria(1,'%');
  cbbCategoria.DropDown;
end;

procedure TCAD_FM_C_MVE.cbbMarcaEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BusMarca(1,'%');
  cbbMarca.DropDown;
end;

end.
