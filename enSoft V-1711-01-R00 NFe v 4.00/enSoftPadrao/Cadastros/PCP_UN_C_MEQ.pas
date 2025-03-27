unit PCP_UN_C_MEQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, vcl.wwdblook, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, JvDBControls, JvExExtCtrls,
  JvExtComponent, JvPanel, vcl.Wwdbedit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  Datasnap.DBClient, Vcl.ComCtrls, vcl.Wwdotdot, vcl.Wwdbcomb;

type
  TPCP_FM_C_MEQ = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    rgSituacao: TDBRadioGroup;
    pgDados: TPageControl;
    tsDados: TTabSheet;
    tsDadosVei: TTabSheet;
    lblCodAtivoImobilizado: TLabel;
    lblNumeroSerie: TLabel;
    lblFabricante: TLabel;
    lblModelo: TLabel;
    lblResponsavel: TLabel;
    lblDataCompra: TLabel;
    lblDataCadastro: TLabel;
    Label1: TLabel;
    lblEstaComGarantia: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtCodAtivoImobilizado: TDBEdit;
    txtNumeroSerie: TDBEdit;
    cbbModelo: TwwDBLookupCombo;
    cbbResponsavel: TwwDBLookupCombo;
    chkEstaComGatantia: TDBCheckBox;
    dpkDataCompra: TJvDBDateEdit;
    dpkDataCadastro: TJvDBDateEdit;
    dpkDataGarantia: TJvDBDateEdit;
    txtIdFabricante: TJvDBComboEdit;
    txtDescFab: TwwDBEdit;
    txtVlrHora: TDBEdit;
    txtVlrComissao: TDBEdit;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Label9: TLabel;
    txtplaca: TDBEdit;
    Label20: TLabel;
    txtserie: TDBEdit;
    Label21: TLabel;
    txtmotor: TDBEdit;
    Label22: TLabel;
    txtnmotor: TDBEdit;
    Label11: TLabel;
    txtchassiserial: TDBEdit;
    Label30: TLabel;
    txtcapavei: TDBEdit;
    Label28: TLabel;
    cbbRod: TwwDBLookupCombo;
    Label12: TLabel;
    cbbCores: TwwDBLookupCombo;
    Label13: TLabel;
    Label23: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label15: TLabel;
    txtkmAqui: TDBEdit;
    Label16: TLabel;
    txtkmatual: TDBEdit;
    txtAnoFab: TwwDBEdit;
    cbbUfLincenciado: TwwDBComboBox;
    Label32: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    txtAnoMod: TwwDBEdit;
    Label17: TLabel;
    txtrenavam: TDBEdit;
    Label14: TLabel;
    cbbAliment: TwwDBLookupCombo;
    cbbComb: TwwDBLookupCombo;
    Label18: TLabel;
    Label29: TLabel;
    cbbCarr: TwwDBLookupCombo;
    Label27: TLabel;
    txtkml: TDBEdit;
    Label31: TLabel;
    txttara: TDBEdit;
    cbbModeloVei: TwwDBLookupCombo;
    procedure cbbModeloEnter(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure chkEstaComGatantiaClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtIdFabricanteExit(Sender: TObject);
    procedure txtDescFabExit(Sender: TObject);
    procedure txtIdFabricanteButtonClick(Sender: TObject);
    procedure cbbModeloVeiEnter(Sender: TObject);
    procedure cbbCoresEnter(Sender: TObject);
    procedure cbbRodEnter(Sender: TObject);
    procedure cbbAlimentEnter(Sender: TObject);
    procedure cbbCombEnter(Sender: TObject);
    procedure cbbCarrEnter(Sender: TObject);
    procedure rgSituacaoClick(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_MEQ: TPCP_FM_C_MEQ;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, uDmSgq;

procedure TPCP_FM_C_MEQ.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MEQ);

  dmSgq.PCP_CD_C_MEQ.FieldByName('id_resp_lancto').AsInteger := xFuncionario;
  dmSgq.PCP_CD_C_MEQ.FieldByName('TIPO_MEI').AsInteger := 0;
  dmSgq.PCP_CD_C_MEQ.FieldByName('GARA_EXISTE').AsBoolean := False;

  dmSgq.PCP_CD_C_MEQ.FieldByName('eqp_terceiro').AsBoolean := False;
  dmSgq.PCP_CD_C_MEQ.FieldByName('rastreado').AsBoolean := False;

  tsDados.TabVisible    := true;
  tsDadosVei.TabVisible := false;

  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_MEQ.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MEQ) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TPCP_FM_C_MEQ.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MEQ) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_MEQ.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MEQ);
end;

procedure TPCP_FM_C_MEQ.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_MEQ.FieldByName('ID_MEQ').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_MEQ);
   inherited;
   dmSgq.PCP_CD_C_MEQ.Close;
   dmSgq.PCP_CD_C_MEQ.Data :=
   dmSgq.PCP_CD_C_MEQ.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_MEQ.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_MEQ.Close;
    dmSgq.PCP_CD_C_MEQ.Data :=
    dmSgq.PCP_CD_C_MEQ.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;



procedure TPCP_FM_C_MEQ.cbbAlimentEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BUS_PR_X_ALV;
  cbbAliment.Dropdown;
end;

procedure TPCP_FM_C_MEQ.cbbCarrEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_VEI_CAR.Open;
  cbbCarr.DropDown;
end;

procedure TPCP_FM_C_MEQ.cbbCombEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_COV;
  cbbComb.Dropdown;
end;

procedure TPCP_FM_C_MEQ.cbbCoresEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCores.DropDown;
end;

procedure TPCP_FM_C_MEQ.cbbModeloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusModelo(1,'%');
  cbbModelo.DropDown;
end;

procedure TPCP_FM_C_MEQ.cbbModeloVeiEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusModelo(1,'%');

  cbbModeloVei.DropDown;
end;

procedure TPCP_FM_C_MEQ.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_MEQ.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_C_MEQ.cbbRodEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_VEI_ROD.Open;
  cbbrod.DropDown;
end;

procedure TPCP_FM_C_MEQ.chkEstaComGatantiaClick(Sender: TObject);
begin
  inherited;
  if chkEstaComGatantia.Checked = True then
     begin
       dpkDataGarantia.Enabled := True;
       if dpkDataGarantia.CanFocus then
          dpkDataGarantia.SetFocus;
     end
  else
     begin
       dpkDataGarantia.Enabled := False;
     end;
end;

procedure TPCP_FM_C_MEQ.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  if not (dmSgq.PCP_CD_C_MEQ.IsEmpty) then
     begin
       if dmSgq.PCP_CD_C_MEQ.FieldByName('tipo_mei').AsInteger <> 4 then
          begin
            tsDados.TabVisible    := true;
            tsDadosVei.TabVisible := false;
          end
       else
          begin
            tsDados.TabVisible    := false;
            tsDadosVei.TabVisible := true;
          end;
     end;
end;

procedure TPCP_FM_C_MEQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_MEQ.Close;
  FreeAndNil(PCP_FM_C_MEQ);
end;

procedure TPCP_FM_C_MEQ.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_MEQ.Close;
  dmSgq.PCP_CD_C_MEQ.Data := dmSgq.PCP_CD_C_MEQ.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_MEQ.Open;

  dmGeral.BusFornecedor(1,'%');
  dmGeral.BusModelo(1,'%');
  dmGeral.BusFuncionario(1,'%');

  dmGeral.BusCor(1,'%');
  dmGeral.BUS_PR_X_ALV;
  dmGeral.BUS_PR_X_COV;
  dmGeral.BUS_PR_X_VEI_ROD;
  dmGeral.BUS_PR_X_VEI_CAR;
end;

procedure TPCP_FM_C_MEQ.rgSituacaoClick(Sender: TObject);
begin
  inherited;
  if rgSituacao.ItemIndex <> 4 then
     begin
       tsDados.TabVisible := true;
       tsDadosVei.TabVisible := false;
     end
  else
     begin
       tsDados.TabVisible := false;
       tsDadosVei.TabVisible := true;
     end;

end;

procedure TPCP_FM_C_MEQ.txtDescFabExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
    begin
      exit;
    end;

  if txtIdFabricante.Focused then
    begin
      exit;
    end;

  if (dmSgq.PCP_CD_C_MEQ.FieldByName('NOME_FABRICANTE').AsString = '') then
    begin
      ShowMessage('O nome do fabricante deve ser preenchido.');
      txtIdFabricante.SetFocus;
      exit;
    end;
end;

procedure TPCP_FM_C_MEQ.txtIdFabricanteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
     begin
       dmSgq.PCP_CD_C_MEQ.FieldByName('ID_FABRICANTE').AsInteger :=
          PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;

       dmSgq.PCP_CD_C_MEQ.FieldByName('NOME_FABRICANTE').AsString :=
          PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

     end;
  PSQ_FM_X_FOR.Free;
end;

procedure TPCP_FM_C_MEQ.txtIdFabricanteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if (dmSgq.PCP_CD_C_MEQ.FieldByName('ID_FABRICANTE').Text <> '') then
    begin
      dmSgq.PCP_CD_C_MEQ.FieldByName('nome_fabricante').Text := '';
      dmGeral.BUS_CD_C_FOR.Close;
      dmGeral.BUS_CD_C_FOR.Data :=
      dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, dmSgq.PCP_CD_C_MEQ.FieldByName('ID_FABRICANTE').Text]));

      if dmGeral.BUS_CD_C_FOR.IsEmpty then
        begin
         ShowMessage('Fornecedor não cadastrado.');
         dmSgq.PCP_CD_C_MEQ.FieldByName('ID_FABRICANTE').Text :='';
         txtIDFabricante.SetFocus;
         Exit;
        end;

      dmSgq.PCP_CD_C_MEQ.FieldByName('nome_fabricante').Text :=
                         dmGeral.BUS_CD_C_FOR.FieldByName('descricao').AsString;
      txtDescFab.ReadOnly := true;
      cbbModelo.SetFocus;
      exit;

    end;
    txtDescFab.ReadOnly := false;
    txtDescFab.SetFocus;
end;

procedure TPCP_FM_C_MEQ.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
