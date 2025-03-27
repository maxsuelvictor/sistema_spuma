unit CAD_UN_C_CFO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  vcl.wwdblook, Vcl.ComCtrls, vcl.wwriched, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBControls, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, vcl.Wwdbedit, Datasnap.DBClient, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TCAD_FM_C_CFO = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblClasse: TLabel;
    cbbClasse: TwwDBLookupCombo;
    lblDescricao: TLabel;
    txtCodigo: TJvDBMaskEdit;
    txtDescricao: TDBMemo;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    lblPessoaFisica: TLabel;
    cbbCfopXml: TwwDBLookupCombo;
    Label2: TLabel;
    txtDescNatOpeNfe: TwwDBEdit;
    cbbPcc: TwwDBLookupCombo;
    Label1: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtCodigoExit(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbClasseEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbCfopXmlEnter(Sender: TObject);
    procedure cbbClasseExit(Sender: TObject);
    procedure cbbPccEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CFO: TCAD_FM_C_CFO;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_CFO.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CFO);
  txtCodigo.Enabled := True;
  txtCodigo.SetFocus;
end;

procedure TCAD_FM_C_CFO.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CFO) then
      begin
        inherited;
        txtCodigo.Enabled := False;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_CFO.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CFO) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtCodigo.Enabled := True;
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_CFO.acExcluirExecute(Sender: TObject);
begin
    Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CFO);
end;

procedure TCAD_FM_C_CFO.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_CFO.FieldByName('ID_CFO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_CFO);
  inherited;
  dmGeral.CAD_CD_C_CFO.Close;
  dmGeral.CAD_CD_C_CFO.Data :=
  dmGeral.CAD_CD_C_CFO.DataRequest(
          VarArrayOf([0, codigo]));
  dmgeral.BusPlanoCtb(1,'');
end;

procedure TCAD_FM_C_CFO.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_CFO.Close;
    dmGeral.CAD_CD_C_CFO.Data :=
    dmGeral.CAD_CD_C_CFO.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CFO.cbbClasseEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusNatureza(1,'%');
  cbbClasse.DropDown;
end;

procedure TCAD_FM_C_CFO.cbbClasseExit(Sender: TObject);
begin
  inherited;
  if Pos(dmgeral.CAD_CD_C_CFOid_classe.AsString, 'EA10 EA30 EA40 EA50 EA60 EA65 EA70 EA80 EA90 EA91 EA99') = 0 then
    begin
      cbbCfopXml.Text :='';
      cbbCfopXml.Enabled:=False;
   end
  else
    cbbCfopXml.Enabled:=True;
end;

procedure TCAD_FM_C_CFO.cbbCfopXmlEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCfop(1,'%');
  cbbCfopXml.DropDown;
end;

procedure TCAD_FM_C_CFO.cbbPccEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BusPlanoCtb(1,'');
  cbbPcc.DropDown;
end;

procedure TCAD_FM_C_CFO.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TCAD_FM_C_CFO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_CFO.Close;
  FreeAndNil(CAD_FM_C_CFO);
end;

procedure TCAD_FM_C_CFO.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_CFO.Close;
  dmGeral.CAD_CD_C_CFO.Data := dmGeral.CAD_CD_C_CFO.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_CFO.Open;

  dmGeral.BusNatureza(1,'%');
end;

procedure TCAD_FM_C_CFO.FormShow(Sender: TObject);
begin
  inherited;
  txtCodigo.Enabled := False;
  dmGeral.BusCfop(1,'%');
  dmgeral.BusPlanoCtb(1,'');
end;

procedure TCAD_FM_C_CFO.txtCodigoExit(Sender: TObject);
begin
  inherited;
  try
    if btnCancelar.focused then
       begin
         exit;
       end
  finally
    begin
      if btnCancelar.focused then
         begin
           txtDescricao.Text := '';
           acCancelarExecute(self);
         end;
    end;
  end;
  if txtCodigo.Text='' Then
     begin
       ShowMessage('Código é obrigatório.');
       txtCodigo.SetFocus;
       Abort;
     end;

  dmGeral.BUS_CD_C_CFO.Close;
  dmGeral.BUS_CD_C_CFO.Data :=
  dmGeral.BUS_CD_C_CFO.DataRequest(VarArrayOf([0,Trim(txtCodigo.Text)]));

  if not dmGeral.BUS_CD_C_CFO.IsEmpty then
     begin
       ShowMessage('Código já cadastrado.');
       txtCodigo.SetFocus;
       Abort;
     end;
end;

procedure TCAD_FM_C_CFO.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
