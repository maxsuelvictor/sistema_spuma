unit CAD_UN_C_TIF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
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
  dxSkinXmas2008Blue;

type
  TCAD_FM_C_TIF = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    Label2: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    rgNatureza: TDBRadioGroup;
    txtSigla: TDBEdit;
    lblSigla: TLabel;
    rgGeraConta: TDBRadioGroup;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    rgCriticaExportacao: TDBRadioGroup;
    rgPrestarConta: TDBRadioGroup;
    rgGeraDebCre: TDBRadioGroup;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_TIF: TCAD_FM_C_TIF;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_TIF.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TIF);
  txtDescricao.SetFocus;
  rgnatureza.Enabled := True;
end;

procedure TCAD_FM_C_TIF.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TIF) then
      begin
        inherited;
        txtDescricao.SetFocus;
        rgnatureza.Enabled := False;
      end;
end;

procedure TCAD_FM_C_TIF.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TIF) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtSigla.SetFocus;
     end;
end;

procedure TCAD_FM_C_TIF.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TIF);
end;

procedure TCAD_FM_C_TIF.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_TIF.FieldByName('ID_TIPO_FINANCEIRO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_TIF);
  inherited;
  dmGeral.CAD_CD_C_TIF.Close;
  dmGeral.CAD_CD_C_TIF.Data :=
  dmGeral.CAD_CD_C_TIF.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_TIF.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_TIF.Close;
    dmGeral.CAD_CD_C_TIF.Data :=
    dmGeral.CAD_CD_C_TIF.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_TIF.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_TIF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_TIF.Close;
  FreeAndNil(CAD_FM_C_TIF);
end;

procedure TCAD_FM_C_TIF.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_TIF.Close;
  dmGeral.CAD_CD_C_TIF.Data := dmGeral.CAD_CD_C_TIF.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_TIF.Open;
end;

procedure TCAD_FM_C_TIF.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
