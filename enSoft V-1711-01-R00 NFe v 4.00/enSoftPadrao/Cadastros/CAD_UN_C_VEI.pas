unit CAD_UN_C_VEI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls,
  vcl.wwdblook, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, JvDBControls, JvExStdCtrls, JvCombobox,
  JvDBCombobox, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, JvExExtCtrls,
  JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TCAD_FM_C_VEI = class(TPAD_FM_X_PAD)
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    lblSerie: TLabel;
    lblMotor: TLabel;
    lblNMotor: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    txtplaca: TDBEdit;
    txtdescricao: TDBEdit;
    txtchassiserial: TDBEdit;
    txtkmAqui: TDBEdit;
    txtkmatual: TDBEdit;
    txtrenavam: TDBEdit;
    txtserie: TDBEdit;
    txtmotor: TDBEdit;
    txtnmotor: TDBEdit;
    txtDtaAquisicao: TJvDBDateEdit;
    chbRastreado: TDBCheckBox;
    cbbTipos: TJvDBComboBox;
    txtrev: TDBEdit;
    txtcapavei: TDBEdit;
    chbEquipTerc: TDBCheckBox;
    txtkml: TDBEdit;
    txttara: TDBEdit;
    cbbUfLincenciado: TwwDBComboBox;
    txtAnoFab: TwwDBEdit;
    txtAnoMod: TwwDBEdit;
    cbbAliment: TwwDBLookupCombo;
    cbbComb: TwwDBLookupCombo;
    cbbCarr: TwwDBLookupCombo;
    cbbRod: TwwDBLookupCombo;
    cbbCores: TwwDBLookupCombo;
    cbbModelos: TwwDBLookupCombo;
    Label33: TLabel;
    txtCliente: TJvDBComboEdit;
    txtClienteNome: TDBText;
    Label1: TLabel;
    txtCubagem: TwwDBEdit;
    rbDadosReboque: TGroupBox;
    Label2: TLabel;
    txtPlacaReboque: TDBEdit;
    Label3: TLabel;
    txtTaraReboque: TDBEdit;
    Label4: TLabel;
    txtCapReboque: TwwDBEdit;
    txtCubReboque: TDBEdit;
    Label5: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtCapacidadeKeyPress(Sender: TObject; var Key: Char);
    procedure txtMediaConsumoKeyPress(Sender: TObject; var Key: Char);
    procedure cbbCombEnter(Sender: TObject);
    procedure cbbAlimentEnter(Sender: TObject);
    procedure cbbCarrEnter(Sender: TObject);
    procedure cbbRodEnter(Sender: TObject);
    procedure cbbCoresEnter(Sender: TObject);
    procedure cbbModelosEnter(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure cbbRodExit(Sender: TObject);
    procedure cbbRodChange(Sender: TObject);
    procedure cbbRodCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet;
      modified: Boolean);
  private
    { Private declarations }
    procedure CadVeiculoSimplificado(status:Boolean);
  public
    { Public declarations }
  end;

var
  CAD_FM_C_VEI: TCAD_FM_C_VEI;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI;



procedure TCAD_FM_C_VEI.CadVeiculoSimplificado(status:Boolean);
VAR
  cor:TColor;
  habilitar:Boolean;
begin

    if (status=true) then
      begin
        cor := $00DADADA;
        habilitar := false;
      end
    else
      begin
        cor := clWhite;
        habilitar := true;
      end;



   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) then
      begin

          cbbTipos.Enabled := habilitar;
          cbbTipos.Color := cor;

          chbEquipTerc.Visible := habilitar;
          chbRastreado.Visible := habilitar;

          txtSerie.Enabled := habilitar;
          txtSerie.Color := cor;


          txtMotor.Enabled := habilitar;
          txtMotor.Color := cor;

          txtNMotor.Enabled := habilitar;
          txtNMotor.Color := cor;

          txtDescricao.Enabled := habilitar;
          txtDescricao.Color := cor;

          txtChassiSerial.Enabled := habilitar;
          txtChassiSerial.Color := cor;

          txtCapaVei.Enabled := habilitar;
          txtCapaVei.Color := cor;

          cbbRod.Enabled := habilitar;
          cbbRod.Color := cor;

          txtDtaAquisicao.Enabled := habilitar;
          txtDtaAquisicao.Color := cor;

          txtKmAqui.Enabled := habilitar;
          txtKmAqui.Color := cor;

          txtKmAtual.Enabled := habilitar;
          txtKmAtual.Color := cor;

          cbbUfLincenciado.Enabled := habilitar;
          cbbUfLincenciado.Color := cor;

          txtRenavam.Enabled := habilitar;
          txtRenavam.Color := cor;

          cbbAliment.Enabled := habilitar;
          cbbAliment.Color := cor;

          cbbCarr.Enabled := habilitar;
          cbbCarr.Color := cor;

          txtKml.Enabled := habilitar;
          txtKml.Color := cor;

          txtTara.Enabled := habilitar;
          txtTara.Color := cor;
      end;


   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean=true) then
      begin
          chbEquipTerc.Visible := habilitar;
          chbRastreado.Visible := habilitar;

          txtSerie.Enabled := habilitar;
          txtSerie.Color := cor;


          txtMotor.Enabled := habilitar;
          txtMotor.Color := cor;

          txtNMotor.Enabled := habilitar;
          txtNMotor.Color := cor;

          txtChassiSerial.Enabled := habilitar;
          txtChassiSerial.Color := cor;

          txtCapaVei.Enabled := habilitar;
          txtCapaVei.Color := cor;

          cbbRod.Enabled := habilitar;
          cbbRod.Color := cor;

          txtKmAqui.Enabled := habilitar;
          txtKmAqui.Color := cor;

          txtKmAtual.Enabled := habilitar;
          txtKmAtual.Color := cor;

          txtAnoFab.Enabled := habilitar;
          txtAnoFab.Color := cor;

          cbbUfLincenciado.Enabled := habilitar;
          cbbUfLincenciado.Color := cor;

          txtAnoMod.Enabled := habilitar;
          txtAnoMod.Color := cor;

          txtRenavam.Enabled := habilitar;
          txtRenavam.Color := cor;

          cbbAliment.Enabled := habilitar;
          cbbAliment.Color := cor;

          cbbComb.Enabled := habilitar;
          cbbComb.Color := cor;

          cbbCarr.Enabled := habilitar;
          cbbCarr.Color := cor;

          txtKml.Enabled := habilitar;
          txtKml.Color := cor;

          txtTara.Enabled := habilitar;
          txtTara.Color := cor;
    end;


end;


procedure TCAD_FM_C_VEI.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_VEI);
  txtPlaca.Enabled := true;
  if cbbTipos.CanFocus then
    begin
     cbbTipos.SetFocus;
     cbbTipos.DroppedDown := true;
    end
  else if txtPlaca.CanFocus then
    begin
      txtPlaca.SetFocus;
    end;

end;

procedure TCAD_FM_C_VEI.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_VEI) then
      begin
        inherited;
        cbbTipos.SetFocus;

      end;
end;

procedure TCAD_FM_C_VEI.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_VEI) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtPlaca.Enabled := True;
       cbbTipos.SetFocus;
     end;
end;

procedure TCAD_FM_C_VEI.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_VEI);
end;

procedure TCAD_FM_C_VEI.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_VEI.FieldByName('ID_VEICULO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_VEI);
  inherited;
  dmGeral.CAD_CD_C_VEI.Close;
  dmGeral.CAD_CD_C_VEI.Data :=
  dmGeral.CAD_CD_C_VEI.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_VEI.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
  if cbbpesquisa.ItemIndex = 5 then
    begin
      dmGeral.CAD_CD_C_VEI.Close;
      dmGeral.CAD_CD_C_VEI.Data :=
        dmGeral.CAD_CD_C_VEI.DataRequest(
            VarArrayOf([7, txtPesquisa.Text]));
    end
  else
    begin
      dmGeral.CAD_CD_C_VEI.Close;
      dmGeral.CAD_CD_C_VEI.Data :=
        dmGeral.CAD_CD_C_VEI.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
    end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_VEI.cbbCarrEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_VEI_CAR.Open;
  cbbCarr.DropDown;
end;

procedure TCAD_FM_C_VEI.cbbAlimentEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BUS_PR_X_ALV;
  cbbAliment.Dropdown;

end;

procedure TCAD_FM_C_VEI.cbbModelosEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusModVeiculo(1,'%');
  cbbModelos.DropDown;
end;

procedure TCAD_FM_C_VEI.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,2,4] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCAD_FM_C_VEI.cbbRodChange(Sender: TObject);
begin
  inherited;
  rbDadosReboque.Enabled := false;

end;

procedure TCAD_FM_C_VEI.cbbRodCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  inherited;
  if dmGeral.CAD_CD_C_VEI.FieldByName('tipo_rodado').AsString <> '' then
     begin
        if dmGeral.CAD_CD_C_VEI.FieldByName('tipo_rodado').AsInteger = 3 then // Cavalo mecânico
           begin
             rbDadosReboque.Enabled := true;
             CAD_FM_C_VEI.Refresh;
           end;
     end;

end;

procedure TCAD_FM_C_VEI.cbbRodEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_VEI_ROD.Open;
  cbbrod.DropDown;
end;

procedure TCAD_FM_C_VEI.cbbRodExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  {
    0-Não Aplicavel,
    1-Truck,
    2-Toco,
    3-Cavalo Mecanico,
    4-VAN,
    5-Utilitario,
    6-Outros
  }
  
end;

procedure TCAD_FM_C_VEI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_VEI.Close;
  FreeAndNil(CAD_FM_C_VEI);
end;

procedure TCAD_FM_C_VEI.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_VEI.Close;
  dmGeral.CAD_CD_C_VEI.Data := dmGeral.CAD_CD_C_VEI.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_VEI.Open;

  dmGeral.BusModVeiculo(1,'%');
  dmGeral.BusCor(1,'%');
  dmGeral.BUS_PR_X_ALV;
  dmGeral.BUS_PR_X_COV;
  dmGeral.BUS_PR_X_VEI_ROD;
  dmGeral.BUS_PR_X_VEI_CAR;
end;

procedure TCAD_FM_C_VEI.FormShow(Sender: TObject);
begin
  inherited;
  txtPlaca.Enabled := False;
  dmGeral.BUS_PR_X_COV;
  dmGeral.BUS_PR_X_ALV;



  if dmGeral.CAD_CD_C_PAR_CTR.FieldBYname('CAD_VEI_SIMPLIFICADO').AsBoolean then
     CadVeiculoSimplificado(true);

end;

procedure TCAD_FM_C_VEI.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
  PSQ_FM_X_CLI.ShowModal;

  if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
    begin
      dmGeral.CAD_CD_C_VEI.FieldByName('ID_CLIENTE').AsString :=
        PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;

      dmGeral.CAD_CD_C_VEI.FieldByName('INT_NOMECLI').AsString :=
        PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
    end;
  PSQ_FM_X_CLI.Free;
end;

procedure TCAD_FM_C_VEI.txtClienteExit(Sender: TObject);
begin
  inherited;
  if btnGrava.Focused  then
       begin
         exit;
       end;

    if btnCancelar.Focused then
       begin
         exit;
       end;

    dmGeral.CAD_CD_C_VEI.FieldByName('INT_NOMECLI').Text := '';

    if ((dmGeral.CAD_CD_C_VEI.FieldByName('ID_CLIENTE').Text) <> '')  and
       ((dmGeral.CAD_CD_C_VEI.FieldByName('ID_CLIENTE').Text) <> '0') then
       begin
          dmGeral.BUS_CD_C_CLI.Close;
          dmGeral.BUS_CD_C_CLI.Data :=
          dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));

          if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
             begin
               dmGeral.CAD_CD_C_VEI.FieldByName('INT_NOMECLI').Text :='';
               txtCliente.SetFocus;
               abort;
             end;

          dmGeral.CAD_CD_C_VEI.FieldByName('INT_NOMECLI').Text :=
               dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
       end;
end;

procedure TCAD_FM_C_VEI.txtCapacidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TCAD_FM_C_VEI.txtMediaConsumoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TCAD_FM_C_VEI.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_VEI.cbbCoresEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCores.DropDown;
end;

procedure TCAD_FM_C_VEI.cbbCombEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_COV;
  cbbComb.Dropdown;
end;

end.
