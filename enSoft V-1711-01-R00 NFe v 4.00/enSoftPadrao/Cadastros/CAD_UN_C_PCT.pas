unit CAD_UN_C_PCT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  vcl.Wwdbedit, vcl.wwclearbuttongroup, vcl.wwradiogroup, JvExExtCtrls,
  JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TCAD_FM_C_PCT = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    Label2: TLabel;
    txtDescricao: TDBEdit;
    gbxTipoDespesa: TDBRadioGroup;
    txtCodigo: TDBEdit;
    gbNatureza: TDBRadioGroup;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    cbbEstrDre: TwwDBComboBox;
    lblEstrDre: TLabel;
    Label3: TLabel;
    txtCodContabil: TDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure gbNaturezaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtCodigoExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure cbbEstrDreEnter(Sender: TObject);
    procedure TestarNivel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_PCT: TCAD_FM_C_PCT;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_PCT.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PCT);
  txtCodigo.Enabled := True;
  txtCodigo.SetFocus;
  gbxTipoDespesa.Enabled := True;
  gbNatureza.Enabled := True;
  cbbEstrDre.Visible := false;
  lblEstrDre.Visible := false;
end;

procedure TCAD_FM_C_PCT.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PCT) then
      begin
        inherited;
        txtCodigo.Enabled := False;
        txtDescricao.SetFocus;
        gbxTipoDespesa.Enabled := False;
        gbNatureza.Enabled := False;
      end;
end;

procedure TCAD_FM_C_PCT.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PCT) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtCodigo.Enabled := True;
       txtCodigo.SetFocus;
     end;
end;

procedure TCAD_FM_C_PCT.acExcluirExecute(Sender: TObject);
begin
  TestarNivel;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PCT);
end;

procedure TCAD_FM_C_PCT.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_PCT.FieldByName('ID_PLANO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_PCT);
  inherited;
  dmGeral.CAD_CD_C_PCT.Close;
  dmGeral.CAD_CD_C_PCT.Data :=
  dmGeral.CAD_CD_C_PCT.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_PCT.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_PCT.Close;
    dmGeral.CAD_CD_C_PCT.Data :=
    dmGeral.CAD_CD_C_PCT.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_PCT.cbbEstrDreEnter(Sender: TObject);
begin
  inherited;
  cbbEstrDre.DropDown;
end;

procedure TCAD_FM_C_PCT.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  {if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;}
end;

procedure TCAD_FM_C_PCT.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if COPY(dmGeral.CAD_CD_C_PCT.FieldByName('ID_PLANO').AsString,7,3)='000' then
    begin
      //aFont.Color := clBlue; //Vermelho
      afont.Style := [fsBold];
    end;
end;

procedure TCAD_FM_C_PCT.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  cbbEstrDre.Visible := false;
  lblEstrDre.Visible := false;
  if (dmGeral.CAD_CD_C_PCT.FieldByName('TIPO').AsInteger = 0) then //Analitico
    begin
      cbbEstrDre.Visible := true;
      lblEstrDre.Visible := true;
    end;
end;

procedure TCAD_FM_C_PCT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_PCT.Close;
  FreeAndNil(CAD_FM_C_PCT);
end;

procedure TCAD_FM_C_PCT.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PCT.Close;
  dmGeral.CAD_CD_C_PCT.Data := dmGeral.CAD_CD_C_PCT.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_PCT.Open;
end;

procedure TCAD_FM_C_PCT.FormShow(Sender: TObject);
begin
  inherited;
  txtCodigo.Enabled := False;
end;

procedure TCAD_FM_C_PCT.gbNaturezaChange(Sender: TObject);
begin
  inherited;
  if gbNatureza.ItemIndex=0 then
     gbxTipoDespesa.Enabled := true
  else
     gbxTipoDespesa.Enabled := false;
end;

procedure TCAD_FM_C_PCT.TestarNivel;
var
a,b,c: String;
begin
  a := copy(dmGeral.CAD_CD_C_PCTid_plano.Text,1,2);
  b := copy(dmGeral.CAD_CD_C_PCTid_plano.Text,4,2);
  c := copy(dmGeral.CAD_CD_C_PCTid_plano.Text,7,3);

  if strtoint(c) > 0 then
    exit;

  if strtoint(b) > 0 then
    begin
      dmGeral.BUS_CD_C_PCT.Close;
      dmGeral.BUS_CD_C_PCT.Data :=
        dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([95, a+'.'+b]));
    end;

  if strtoint(b) = 0 then
    begin
      dmGeral.BUS_CD_C_PCT.Close;
      dmGeral.BUS_CD_C_PCT.Data :=
        dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([95, a]));
    end;

  if dmGeral.BUS_CD_C_PCT.RecordCount > 1 then // contagem de resgitros
    begin
      showmessage('O Registro sintetico não pode ser excluido!');
      abort;
    end;
end;

procedure TCAD_FM_C_PCT.txtCodigoExit(Sender: TObject);
begin
  inherited;
  cbbEstrDre.Visible := false;
  lblEstrDre.Visible := false;
  if (dmGeral.CAD_CD_C_PCT.FieldByName('TIPO').AsInteger = 0) then //Analitico
    begin
      cbbEstrDre.Visible := true;
      lblEstrDre.Visible := true;
    end;
end;

procedure TCAD_FM_C_PCT.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
