unit CTC_UN_M_BDE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit, vcl.wwdblook, JvExMask, JvToolEdit,
  JvDBControls, Vcl.DBCtrls, Vcl.Buttons, Datasnap.DBClient, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ComCtrls, vcl.Wwdotdot, vcl.Wwdbcomb;

type
  TCTC_FM_M_BDE = class(TPAD_FM_X_PAD)
    dso_Oco: TwwDataSource;
    pcGeral: TPageControl;
    tsDados: TTabSheet;
    tsVerificacoes: TTabSheet;
    lblcodigo: TLabel;
    lblcliente: TLabel;
    lblequipamento: TLabel;
    lblhorimetroinicial: TLabel;
    lblobra: TLabel;
    lbloperador: TLabel;
    lbldata: TLabel;
    lblhorimetrofinal: TLabel;
    txtClienteDescricao: TDBText;
    txtOperadorDescricao: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txtcodigo: TwwDBEdit;
    txthorimetroinicial: TwwDBEdit;
    cbbobra: TwwDBLookupCombo;
    txthorimetrofinal: TwwDBEdit;
    cbbequipamento: TwwDBLookupCombo;
    txtCliente: TJvDBComboEdit;
    txtOperador: TJvDBComboEdit;
    txtHorimetro: TwwDBEdit;
    txtBruto: TwwDBEdit;
    txtCombustivel: TwwDBEdit;
    txtComissao: TwwDBEdit;
    txtAcrescimo: TwwDBEdit;
    txtDesconto: TwwDBEdit;
    txtTotServico: TwwDBEdit;
    txtNumero: TwwDBEdit;
    dpkdata: TJvDBDateEdit;
    grbOco: TGroupBox;
    dgOco: TwwDBGrid;
    dgOcoIButton: TwwIButton;
    pnlOco: TPanel;
    lbl7: TLabel;
    Label63: TLabel;
    txtQtde: TDBEdit;
    cbbOcorrencia: TwwDBLookupCombo;
    btn_Add_Oco: TBitBtn;
    cbbFinalidadeDoc: TwwDBComboBox;
    Label11: TLabel;
    Label12: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Label13: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Label14: TLabel;
    wwDBComboBox3: TwwDBComboBox;
    Label15: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    Label16: TLabel;
    wwDBComboBox5: TwwDBComboBox;
    Label17: TLabel;
    wwDBComboBox6: TwwDBComboBox;
    wwDBComboBox7: TwwDBComboBox;
    wwDBComboBox8: TwwDBComboBox;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    wwDBComboBox10: TwwDBComboBox;
    wwDBComboBox11: TwwDBComboBox;
    wwDBComboBox12: TwwDBComboBox;
    Label22: TLabel;
    Label23: TLabel;
    wwDBComboBox13: TwwDBComboBox;
    wwDBComboBox14: TwwDBComboBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    wwDBComboBox15: TwwDBComboBox;
    wwDBComboBox16: TwwDBComboBox;
    Label27: TLabel;
    Label28: TLabel;
    wwDBComboBox17: TwwDBComboBox;
    Label29: TLabel;
    wwDBComboBox18: TwwDBComboBox;
    Label30: TLabel;
    wwDBComboBox19: TwwDBComboBox;
    Label31: TLabel;
    wwDBComboBox20: TwwDBComboBox;
    Label32: TLabel;
    wwDBComboBox21: TwwDBComboBox;
    Label33: TLabel;
    wwDBComboBox22: TwwDBComboBox;
    wwDBComboBox23: TwwDBComboBox;
    wwDBComboBox24: TwwDBComboBox;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    wwDBComboBox26: TwwDBComboBox;
    wwDBComboBox27: TwwDBComboBox;
    wwDBComboBox28: TwwDBComboBox;
    Label38: TLabel;
    Label39: TLabel;
    wwDBComboBox29: TwwDBComboBox;
    Label41: TLabel;
    TabSheet1: TTabSheet;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    wwDBComboBox30: TwwDBComboBox;
    wwDBComboBox31: TwwDBComboBox;
    wwDBComboBox32: TwwDBComboBox;
    wwDBComboBox33: TwwDBComboBox;
    wwDBComboBox34: TwwDBComboBox;
    wwDBComboBox35: TwwDBComboBox;
    wwDBComboBox36: TwwDBComboBox;
    wwDBComboBox37: TwwDBComboBox;
    wwDBComboBox38: TwwDBComboBox;
    wwDBComboBox39: TwwDBComboBox;
    wwDBComboBox40: TwwDBComboBox;
    wwDBComboBox41: TwwDBComboBox;
    wwDBComboBox42: TwwDBComboBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    dso_Vrf: TwwDataSource;
    Label20: TLabel;
    wwDBComboBox9: TwwDBComboBox;
    Label36: TLabel;
    Label57: TLabel;
    wwDBComboBox25: TwwDBComboBox;
    Label58: TLabel;
    wwDBComboBox43: TwwDBComboBox;
    wwDBComboBox44: TwwDBComboBox;
    Label59: TLabel;
    txtObs: TDBMemo;
    Label60: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbobraEnter(Sender: TObject);
    procedure cbbequipamentoEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbobraExit(Sender: TObject);
    procedure cbbequipamentoExit(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure txtOperadorButtonClick(Sender: TObject);
    procedure txtOperadorExit(Sender: TObject);
    procedure txthorimetroinicialExit(Sender: TObject);
    procedure txthorimetrofinalExit(Sender: TObject);
    procedure txtNumeroExit(Sender: TObject);
    procedure btn_Add_OcoClick(Sender: TObject);
    procedure cbbOcorrenciaEnter(Sender: TObject);
    procedure cbbOcorrenciaExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure pnlOcoExit(Sender: TObject);
    procedure dgOcoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgOcoIButtonClick(Sender: TObject);
    procedure txtAcrescimoExit(Sender: TObject);
    procedure txtDescontoExit(Sender: TObject);
    procedure txtObsEnter(Sender: TObject);
    procedure txtObsExit(Sender: TObject);
  private
    { Private declarations }
    procedure CalcTotais;

    var
    numerobde : String;
  public
    { Public declarations }
  end;

var
  CTC_FM_M_BDE: TCTC_FM_M_BDE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_FUN, uDmCtc;

procedure TCTC_FM_M_BDE.acAdicionaExecute(Sender: TObject);
begin
  inherited;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_BDE);

  if not (dmCtc.CTC_CD_M_BDE_VRF.IsEmpty) then
     begin
       dmCtc.CTC_CD_M_BDE_VRF.Insert;
     end;

  numerobde := '';
  txtnumero.SetFocus;
end;

procedure TCTC_FM_M_BDE.acAlterarExecute(Sender: TObject);
begin
if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_BDE) then
      begin
        inherited;
        numerobde := dmCtc.CTC_CD_M_BDE.FieldByName('nro_bde').AsString;
        txtnumero.SetFocus;
      end;
end;

procedure TCTC_FM_M_BDE.acCancelarExecute(Sender: TObject);
begin
  inherited;
if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_BDE) then
     begin
       inherited;
       dbGrid.SetFocus;
       pcGeral.ActivePage := tsDados;
     end
  else
     begin
       txtnumero.SetFocus;
     end;
end;

procedure TCTC_FM_M_BDE.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_BDE);
end;

procedure TCTC_FM_M_BDE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_M_BDE.FieldByName('ID_BDE').AsString;

  if dmCtc.CTC_CD_M_BDE_VRF.State in [dsInsert,dsEdit] then
     begin
       dmCtc.CTC_CD_M_BDE_VRF.Post;
     end;

  DmGeral.Grava(dmCtc.CTC_CD_M_BDE);
  inherited;
  dmCtc.CTC_CD_M_BDE.Close;
  dmCtc.CTC_CD_M_BDE.Data :=
  dmCtc.CTC_CD_M_BDE.DataRequest(
          VarArrayOf([0, codigo]));

  pcGeral.ActivePage := tsDados;

  dmCtc.BusObra(1,'%');
  dmGeral.BusMaquinas(1,'%');
  dmctc.BusOco(1,'%');
end;

procedure TCTC_FM_M_BDE.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_M_BDE.Close;
    dmCtc.CTC_CD_M_BDE.Data :=
    dmCtc.CTC_CD_M_BDE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_BDE.btn_Add_OcoClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_BDE_OCO.Insert;

  pnlOco.Enabled  := true;
  cbbOcorrencia.Enabled := true;
  cbbOcorrencia.SetFocus;
end;

procedure TCTC_FM_M_BDE.CalcTotais;
begin
  dmCtc.CTC_CD_M_BDE.FieldByName('hori_total').AsCurrency :=
    dmCtc.CTC_CD_M_BDE.FieldByName('hori_final').AsCurrency -
    dmCtc.CTC_CD_M_BDE.FieldByName('hori_inicial').AsCurrency;

  dmCtc.CTC_CD_M_BDE.FieldByName('vlr_bruto').AsCurrency :=
    dmGeral.BUS_CD_C_MEQ.FieldByName('vlr_hora').AsCurrency *
    dmCtc.CTC_CD_M_BDE.FieldByName('hori_total').AsCurrency;

  dmCtc.CTC_CD_M_BDE.FieldByName('vlr_comissao').AsCurrency :=
    dmGeral.BUS_CD_C_MEQ.FieldByName('vlr_comissao').AsCurrency *
    dmCtc.CTC_CD_M_BDE.FieldByName('hori_total').AsCurrency;

  if dmCtc.CTC_CD_M_BDE.FieldByName('vlr_desconto').AsCurrency <=
     dmCtc.CTC_CD_M_BDE.FieldByName('vlr_bruto').AsCurrency then
     begin
       dmCtc.CTC_CD_M_BDE.FieldByName('vlr_servicos').AsCurrency :=
          dmCtc.CTC_CD_M_BDE.FieldByName('vlr_bruto').AsCurrency -
          dmCtc.CTC_CD_M_BDE.FieldByName('vlr_desconto').AsCurrency +
          dmCtc.CTC_CD_M_BDE.FieldByName('vlr_acrescimo').AsCurrency;
     end
  else
    begin
      ShowMessage('Valor de desconto deve ser menor que valor bruto do serviço.');
      dmCtc.CTC_CD_M_BDE.FieldByName('vlr_desconto').AsCurrency := 0;
    end;
end;

procedure TCTC_FM_M_BDE.cbbequipamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusMaquinas(1,'%');
  cbbequipamento.DropDown;
end;

procedure TCTC_FM_M_BDE.cbbequipamentoExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_BDE.FieldByName('id_meq').Text) = '' then
     begin
       ShowMessage('O campo "Equipamento" não foi preenchido.');
       exit;
     end;

  dmGeral.BusMaquinas(0,dmCtc.CTC_CD_M_BDE.FieldByName('id_meq').Text);
  if dmGeral.BUS_CD_C_MEQ.IsEmpty then
     begin
       ShowMessage('Equipamento não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_BDE.cbbobraEnter(Sender: TObject);
begin
  inherited;
  dmCtc.BusObra(1,'%');
  cbbobra.DropDown;
end;

procedure TCTC_FM_M_BDE.cbbobraExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_BDE.FieldByName('id_obra').Text) = '' then
     begin
       ShowMessage('O campo "Obra" não foi preenchido.');
       exit;
     end;

  dmCtc.BusObra(0,dmCtc.CTC_CD_M_BDE.FieldByName('id_obra').Text);
  if dmCtc.BUS_CD_C_OBR.IsEmpty then
     begin
       ShowMessage('Obra não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_BDE.cbbOcorrenciaEnter(Sender: TObject);
begin
  inherited;
  dmctc.BusOco(1,'%');
  cbbOcorrencia.DropDown;
end;

procedure TCTC_FM_M_BDE.cbbOcorrenciaExit(Sender: TObject);
var
 id_oco:integer;
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if dgOco.Focused or
       btn_Add_Oco.Focused  then
       begin
         exit;
       end;

  try
    pnlOco.OnExit := nil;

   dmCtc.CTC_CD_M_BDE_OCO.FieldByName('int_nomeoco').AsString := '';
  if dmCtc.CTC_CD_M_BDE_OCO.FieldByName('id_ocorrencia').AsString = '' then
    begin
      ShowMessage('Deve-se preencher Ocorrencia.');
      cbbOcorrencia.SetFocus;
      exit;
    end;

  dmctc.BusOco(0,dmCtc.CTC_CD_M_BDE_OCO.FieldByName('id_ocorrencia').AsString);
  if dmCtc.CTC_CD_M_BDE_OCO.IsEmpty then
     begin
       ShowMessage('Ocorrecia não cadastrada.');
       cbbOcorrencia.SetFocus;
     end;

    id_oco := dmCtc.CTC_CD_M_BDE_OCO.FieldByName('id_ocorrencia').AsInteger;

     dmCtc.CTC_CD_M_BDE_OCO.Cancel;
    if  dmCtc.CTC_CD_M_BDE_OCO.Locate('id_ocorrencia',id_oco,[]) then
      begin
        ShowMessage('A Ocorrencia já tinha sido selecionado.');
        dmCtc.CTC_CD_M_BDE_OCO.Insert;
        cbbOcorrencia.SetFocus;
        exit;
      end
    else
      begin
        dmCtc.CTC_CD_M_BDE_OCO.Insert;
        dmCtc.CTC_CD_M_BDE_OCO.FieldByName('id_ocorrencia').AsInteger := id_oco;
        dmCtc.CTC_CD_M_BDE_OCO.FieldByName('ID_BDE').AsInteger := dmCtc.CTC_CD_M_BDE.FieldByName('ID_BDE').AsInteger  ;
      end;

    dmCtc.CTC_CD_M_BDE_OCO.FieldByName('int_nomeoco').AsString :=
               dmCtc.BUS_CD_C_OCO.FieldByName('DESCRICAO').AsString;

    ActiveControl := nil;
    PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
    txtQtde.SetFocus;
  finally
    pnlOco.OnExit := pnlOcoExit;
  end;
end;

procedure TCTC_FM_M_BDE.cbbPesquisaChange(Sender: TObject);
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

procedure TCTC_FM_M_BDE.dgOcoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgOcoIButton.Enabled := False;
     if dmCtc.CTC_CD_M_BDE_OCO.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_M_BDE_OCO.Delete;
  finally
    dgOcoIButton.Enabled := true;
  end;
end;

procedure TCTC_FM_M_BDE.dgOcoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlOco.Enabled = False then
     pnlOco.Enabled := True;

  dmCtc.CTC_CD_M_BDE_OCO.cancel;

  if dmCtc.CTC_CD_M_BDE_OCO.IsEmpty then
     begin
       cbbocorrencia.Enabled := True;
       dmCtc.CTC_CD_M_BDE_OCO.Append;
       pnlOco.Enabled := true;
       cbbOcorrencia.SetFocus;
     end
  else
    begin
     cbbOcorrencia.Enabled := False;
     dmCtc.CTC_CD_M_BDE_OCO.Edit;
     pnlOco.Enabled := True;
     txtQtde.SetFocus;
    end;
end;

procedure TCTC_FM_M_BDE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_M_BDE.Close;
  FreeAndNil(CTC_FM_M_BDE);
end;

procedure TCTC_FM_M_BDE.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_BDE.Close;
  dmCtc.CTC_CD_M_BDE.Data := dmCtc.CTC_CD_M_BDE.DataRequest(VarArrayOf([0, '']));
  dmCtc.CTC_CD_M_BDE.Open;

  dmCtc.BusObra(1,'%');
  dmGeral.BusMaquinas(1,'%');
  dmctc.BusOco(1,'%');
  end;

procedure TCTC_FM_M_BDE.pnlOcoExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Oco.Focused) or (dgOco.Focused) or
     (not dgOcoIButton.Enabled) or (cbbOcorrencia.Focused) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmCtc.CTC_CD_M_BDE_OCO.Cancel;
        dmCtc.CTC_CD_M_BDE_OCO.Edit;

        finally
           pnlOco.Enabled := False;
           cbbOcorrencia.Enabled := True;
        end;
      end;
end;

procedure TCTC_FM_M_BDE.txtAcrescimoExit(Sender: TObject);
begin
  inherited;
  CalcTotais;
end;

procedure TCTC_FM_M_BDE.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
     PSQ_FM_X_CLI.ShowModal;

        if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
           begin
             dmCtc.CTC_CD_M_BDE.FieldByName('ID_CLIENTE').AsInteger:=
               PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

             dmCtc.CTC_CD_M_BDE.FieldByName('INT_NOMECLI').AsString:=
               PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
           end;
     PSQ_FM_X_CLI.Free;
end;

procedure TCTC_FM_M_BDE.txtClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_BDE.FieldByName('id_cliente').Text) = '' then
     begin
       ShowMessage('O campo "Cliente" não foi preenchido.');
       exit;
     end;

  dmGeral.BusCliente(0,dmCtc.CTC_CD_M_BDE.FieldByName('id_cliente').Text);
  if dmGeral.BUS_CD_C_CLI.IsEmpty then
     begin
       ShowMessage('Cliente não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_BDE.txtDescontoExit(Sender: TObject);
begin
  inherited;
  CalcTotais;
end;

procedure TCTC_FM_M_BDE.txthorimetrofinalExit(Sender: TObject);
begin
  inherited;
  if  (dmCtc.CTC_CD_M_BDE.FieldByName('hori_final').AsString <> '') and
    (dmCtc.CTC_CD_M_BDE.FieldByName('hori_inicial').AsString <> '') then
    begin
      if dmCtc.CTC_CD_M_BDE.FieldByName('hori_final').AsInteger <
        dmCtc.CTC_CD_M_BDE.FieldByName('hori_inicial').AsInteger then
        begin
          Showmessage('"Horimetro inicial" deve ser menor que "horimetro final".');
          dmCtc.CTC_CD_M_BDE.FieldByName('hori_final').AsString := '';
          txthorimetrofinal.SetFocus;
          exit;
        end;
      CalcTotais;
    end;
end;

procedure TCTC_FM_M_BDE.txthorimetroinicialExit(Sender: TObject);
begin
  inherited;
  if  (dmCtc.CTC_CD_M_BDE.FieldByName('hori_final').AsString <> '') and
    (dmCtc.CTC_CD_M_BDE.FieldByName('hori_inicial').AsString <> '') then
    begin
      if dmCtc.CTC_CD_M_BDE.FieldByName('hori_final').AsInteger <
        dmCtc.CTC_CD_M_BDE.FieldByName('hori_inicial').AsInteger then
        begin
          Showmessage('"Horimetro inicial" deve ser menor que "horimetro final".');
          dmCtc.CTC_CD_M_BDE.FieldByName('hori_inicial').AsString := '';
          txthorimetroinicial.SetFocus;
          exit;
        end;
      CalcTotais;
    end;
end;

procedure TCTC_FM_M_BDE.txtNumeroExit(Sender: TObject);
  begin
  inherited;
  if dmCtc.CTC_CD_M_BDE.FieldByName('nro_bde').Text <> '' then
    begin
      dmCtc.bus_cd_m_bde.Close;
      dmCtc.bus_cd_m_bde.Data :=
      dmCtc.bus_cd_m_bde.DataRequest(VarArrayOf([7,dmCtc.CTC_CD_M_BDE.FieldByName('nro_bde').Text]));

      if (not dmCtc.bus_cd_m_bde.IsEmpty) and (numerobde <> dmCtc.CTC_CD_M_BDE.FieldByName('nro_bde').Text ) then
        begin
          Showmessage('Numero do Boletim Diário já cadastrado.');
          dmCtc.CTC_CD_M_BDE.FieldByName('nro_bde').Text := '';
          txtNumero.SetFocus;
        end;
    end;
end;

procedure TCTC_FM_M_BDE.txtObsEnter(Sender: TObject);
begin
  inherited;
   CTC_FM_M_BDE.KeyPreview := false;
end;

procedure TCTC_FM_M_BDE.txtObsExit(Sender: TObject);
begin
  inherited;
   CTC_FM_M_BDE.KeyPreview := true;
end;

procedure TCTC_FM_M_BDE.txtOperadorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
     PSQ_FM_X_FUN.ShowModal;

        if not dmCtc.CTC_CD_M_BDE.IsEmpty then
           begin
             dmCtc.CTC_CD_M_BDE.FieldByName('ID_OPERADOR').AsInteger:=
               PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

             dmCtc.CTC_CD_M_BDE.FieldByName('INT_NOMEOPE').AsString:=
               PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;
           end;
     PSQ_FM_X_FUN.Free;
end;

procedure TCTC_FM_M_BDE.txtOperadorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_BDE.FieldByName('id_operador').Text) = '' then
     begin
       ShowMessage('O campo "Operador" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_BDE.FieldByName('id_operador').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Operador não Cadastrado.');
     end;
  end;

procedure TCTC_FM_M_BDE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCTC_FM_M_BDE.txtQtdeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or (btn_Add_Oco.Focused) or (dgOco.Focused) or
     btnGrava.Focused or cbbOcorrencia.Focused then
     begin
       Exit;
     end;

  if  dmCtc.CTC_CD_M_BDE_OCO.FieldByName('qtde').AsString = '' then
    begin
      Showmessage('Quantidade deve ser informada.');
      txtqtde.SetFocus;
      abort;
    end;
  try
    pnlOco.OnExit := nil;

  dmctc.ctc_cd_m_bde_oco.Post;

  ActiveControl := nil;
  PostMessage(btn_Add_Oco.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Oco.SetFocus;

  pnlOco.Enabled := false;

  finally
    pnlOco.OnExit := pnlOcoExit;
  end;
end;

end.
