unit FAT_UN_M_MKT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.wwdblook, Vcl.DBCtrls, vcl.Wwdbdatetimepicker, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, Datasnap.DBClient, vcl.Wwdbedit,
  Vcl.ComCtrls, JvgPage, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFAT_FM_M_MKT = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    txtControle: TDBEdit;
    lblResponsavel: TLabel;
    txtNomeResp: TDBText;
    txtCodResponsavel: TDBEdit;
    Label2: TLabel;
    txtDataCria: TJvDBDateEdit;
    txtHoraCria: TwwDBDateTimePicker;
    dsoPed: TwwDataSource;
    dsoTit: TwwDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    txtObservacaoCli: TDBMemo;
    grdClientes: TwwDBGrid;
    dsMktCli: TwwDataSource;
    FAT_CD_M_MKT: TClientDataSet;
    FAT_CD_M_MKT_CLI: TClientDataSet;
    FAT_CD_M_MKTid_mkt: TIntegerField;
    FAT_CD_M_MKTdta_criacao: TDateField;
    FAT_CD_M_MKThor_criacao: TTimeField;
    FAT_CD_M_MKTid_responsavel: TIntegerField;
    FAT_CD_M_MKTid_rota: TIntegerField;
    FAT_CD_M_MKTid_empresa: TIntegerField;
    FAT_CD_M_MKTint_nomeresp: TWideStringField;
    FAT_CD_M_MKTint_nomerot: TWideStringField;
    FAT_CD_M_MKTint_nomefan: TWideStringField;
    FAT_CD_M_MKTcod_lme: TWideStringField;
    FAT_CD_M_MKTrev_lme: TWideStringField;
    FAT_CD_M_MKTFAT_SQ_M_MKT_CLI: TDataSetField;
    FAT_CD_M_MKT_CLIid_mkt: TIntegerField;
    FAT_CD_M_MKT_CLIid_cliente: TIntegerField;
    FAT_CD_M_MKT_CLIdta_gravacao: TDateField;
    FAT_CD_M_MKT_CLIhor_gravacao: TTimeField;
    FAT_CD_M_MKT_CLIobs: TWideStringField;
    FAT_CD_M_MKT_CLIint_nomecli: TWideStringField;
    btnNovaVenda: TButton;
    FAT_CD_M_MKT_CLIint_fantasiacli: TWideStringField;
    FAT_CD_M_MKT_CLIint_telfixocli: TWideStringField;
    FAT_CD_M_MKT_CLIint_telmovelcli: TWideStringField;
    FAT_CD_M_MKT_CLIint_endercli: TWideStringField;
    FAT_CD_M_MKT_CLIint_bairrocli: TWideStringField;
    FAT_CD_M_MKT_CLIint_idcidadecli: TWideStringField;
    FAT_CD_M_MKT_CLIint_nomecidcli: TWideStringField;
    FAT_CD_M_MKT_CLIint_ufcidcli: TWideStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtEndereco: TwwDBEdit;
    txtBairro: TwwDBEdit;
    txtCidade: TwwDBEdit;
    txtUf: TwwDBEdit;
    BUS_CD_M_MKT: TClientDataSet;
    BUS_CD_M_MKT_CLI: TClientDataSet;
    BUS_CD_M_MKTid_mkt: TIntegerField;
    BUS_CD_M_MKTdta_criacao: TDateField;
    BUS_CD_M_MKThor_criacao: TTimeField;
    BUS_CD_M_MKTid_responsavel: TIntegerField;
    BUS_CD_M_MKTid_rota: TIntegerField;
    BUS_CD_M_MKTid_empresa: TIntegerField;
    BUS_CD_M_MKTint_nomeresp: TWideStringField;
    BUS_CD_M_MKTint_nomerot: TWideStringField;
    BUS_CD_M_MKTint_nomefan: TWideStringField;
    BUS_CD_M_MKTcod_lme: TWideStringField;
    BUS_CD_M_MKTrev_lme: TWideStringField;
    BUS_CD_M_MKTFAT_SQ_M_MKT_CLI: TDataSetField;
    BUS_CD_M_MKTFAT_SQ_M_MKT_PED: TDataSetField;
    FAT_CD_M_MKT_CLIselecao: TBooleanField;
    BUS_CD_M_PED: TClientDataSet;
    BUS_CD_M_PED_ITE: TClientDataSet;
    BUS_CD_M_PED_TIT: TClientDataSet;
    BUS_CD_M_PEDid_pedido: TIntegerField;
    BUS_CD_M_PEDid_empresa: TIntegerField;
    BUS_CD_M_PEDdta_pedido: TDateField;
    BUS_CD_M_PEDid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_PEDid_vendedor: TIntegerField;
    BUS_CD_M_PEDobs: TWideStringField;
    BUS_CD_M_PEDvlr_bruto: TFMTBCDField;
    BUS_CD_M_PEDvlr_desconto: TFMTBCDField;
    BUS_CD_M_PEDper_desconto: TFloatField;
    BUS_CD_M_PEDvlr_liquido: TFMTBCDField;
    BUS_CD_M_PEDhor_pedido: TSQLTimeStampField;
    BUS_CD_M_PEDid_condicao_pag: TIntegerField;
    BUS_CD_M_PEDpcp_obs: TWideStringField;
    BUS_CD_M_PEDpcp_id_opr: TIntegerField;
    BUS_CD_M_PEDsituacao: TIntegerField;
    BUS_CD_M_PEDsituacao_aprovacao: TIntegerField;
    BUS_CD_M_PEDid_atendente: TIntegerField;
    BUS_CD_M_PEDid_responsavel: TIntegerField;
    BUS_CD_M_PEDid_cliente: TIntegerField;
    BUS_CD_M_PEDtipo_restricao: TWideStringField;
    BUS_CD_M_PEDid_almoxarifado: TIntegerField;
    BUS_CD_M_PEDjustificativa: TWideStringField;
    BUS_CD_M_PEDid_usuario_lib: TIntegerField;
    BUS_CD_M_PEDcod_lme: TWideStringField;
    BUS_CD_M_PEDrev_lme: TWideStringField;
    BUS_CD_M_PEDorigem: TIntegerField;
    BUS_CD_M_PEDdispositivo: TWideStringField;
    BUS_CD_M_PEDgps_latitude: TFloatField;
    BUS_CD_M_PEDgps_longitude: TFloatField;
    BUS_CD_M_PEDcubagem: TFloatField;
    BUS_CD_M_PEDid_orcamento: TIntegerField;
    BUS_CD_M_PEDenvia_carga: TBooleanField;
    BUS_CD_M_PEDdta_prev_entrega: TDateField;
    BUS_CD_M_PEDint_nomecli: TWideStringField;
    BUS_CD_M_PEDint_nometme: TWideStringField;
    BUS_CD_M_PEDint_nomefun: TWideStringField;
    BUS_CD_M_PEDint_nomecpg: TWideStringField;
    BUS_CD_M_PEDint_nomeate: TWideStringField;
    BUS_CD_M_PEDint_nomeres: TWideStringField;
    BUS_CD_M_PEDint_nomecid: TWideStringField;
    BUS_CD_M_PEDint_nomeest: TWideStringField;
    BUS_CD_M_PEDint_cpfcnpj: TWideStringField;
    BUS_CD_M_PEDint_pessoacli: TIntegerField;
    BUS_CD_M_PEDint_id_perfil: TIntegerField;
    BUS_CD_M_PEDid_ors: TIntegerField;
    BUS_CD_M_PEDint_sitaprov: TWideStringField;
    BUS_CD_M_PEDint_sitped: TWideStringField;
    BUS_CD_M_PEDid_abertura: TIntegerField;
    BUS_CD_M_PEDint_ie_rg_cli: TWideStringField;
    BUS_CD_M_PEDint_selecao: TBooleanField;
    BUS_CD_M_PEDdias_cpg_prazo: TIntegerField;
    BUS_CD_M_PEDint_nomereg: TWideStringField;
    BUS_CD_M_PEDoffline: TBooleanField;
    BUS_CD_M_PEDconferido: TBooleanField;
    BUS_CD_M_PEDid_conf: TIntegerField;
    BUS_CD_M_PEDdta_conf: TDateField;
    BUS_CD_M_PEDhor_conf: TTimeField;
    BUS_CD_M_PEDresultado_conf: TIntegerField;
    BUS_CD_M_PEDid_resp_conf: TIntegerField;
    BUS_CD_M_PEDint_nome_rcn: TWideStringField;
    BUS_CD_M_PEDid_propriedade: TIntegerField;
    BUS_CD_M_PEDmod_frete: TIntegerField;
    BUS_CD_M_PEDvlr_frete: TFMTBCDField;
    BUS_CD_M_PEDFAT_SQ_M_PED_TIT: TDataSetField;
    BUS_CD_M_PEDFAT_SQ_M_PED_ITE: TDataSetField;
    JvgPageControl1: TJvgPageControl;
    tsInfoCliente: TTabSheet;
    tsPedidoMark: TTabSheet;
    Panel1: TPanel;
    Label6: TLabel;
    grdUltimosPed: TwwDBGrid;
    pnFinCli: TPanel;
    Label3: TLabel;
    grdTitVencidos: TwwDBGrid;
    Shape1: TShape;
    Shape2: TShape;
    Label10: TLabel;
    Label11: TLabel;
    wwDBGrid1: TwwDBGrid;
    Label12: TLabel;
    dsoPedIte: TwwDataSource;
    Shape3: TShape;
    Label13: TLabel;
    Shape4: TShape;
    Label14: TLabel;
    Panel3: TPanel;
    Shape5: TShape;
    Label15: TLabel;
    Shape6: TShape;
    Label16: TLabel;
    Shape7: TShape;
    Label17: TLabel;
    Shape8: TShape;
    Label18: TLabel;
    wwDBGrid2: TwwDBGrid;
    BUS_CD_M_PED_ITEid_pedido: TIntegerField;
    BUS_CD_M_PED_ITEid_sequencia: TIntegerField;
    BUS_CD_M_PED_ITEid_item: TIntegerField;
    BUS_CD_M_PED_ITEqtde: TFloatField;
    BUS_CD_M_PED_ITEvlr_unitario: TFMTBCDField;
    BUS_CD_M_PED_ITEvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_ITEper_desconto: TFloatField;
    BUS_CD_M_PED_ITEvlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_ITEvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_ITEid_cor: TIntegerField;
    BUS_CD_M_PED_ITEid_tamanho: TIntegerField;
    BUS_CD_M_PED_ITEid_busca_item: TWideStringField;
    BUS_CD_M_PED_ITEint_nomeite: TWideStringField;
    BUS_CD_M_PED_ITEint_nomecor: TWideStringField;
    BUS_CD_M_PED_ITEint_id_und_venda: TWideStringField;
    BUS_CD_M_PED_ITEint_nometam: TWideStringField;
    BUS_CD_M_PED_ITEvlr_unitario_orig: TFMTBCDField;
    BUS_CD_M_PED_ITEint_tipo_item: TWideStringField;
    BUS_CD_M_PED_ITEint_seqitem: TIntegerField;
    BUS_CD_M_PED_ITEint_rua: TWideStringField;
    BUS_CD_M_PED_ITEint_prateleira: TWideStringField;
    BUS_CD_M_PED_ITEint_escaninho: TWideStringField;
    BUS_CD_M_PED_ITEper_desc_max: TFloatField;
    BUS_CD_M_PED_ITEqtde_conferida: TFloatField;
    BUS_CD_M_PED_ITEpcp_obs_item: TWideStringField;
    BUS_CD_M_PED_ITEid_cultura: TIntegerField;
    BUS_CD_M_PED_ITEint_nomecul: TWideStringField;
    BUS_CD_M_PED_MKT: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    WideStringField1: TWideStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FloatField1: TFloatField;
    FMTBCDField3: TFMTBCDField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField5: TIntegerField;
    WideStringField2: TWideStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    WideStringField3: TWideStringField;
    IntegerField12: TIntegerField;
    WideStringField4: TWideStringField;
    IntegerField13: TIntegerField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    IntegerField14: TIntegerField;
    WideStringField7: TWideStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField15: TIntegerField;
    BooleanField1: TBooleanField;
    DateField2: TDateField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    IntegerField19: TIntegerField;
    WideStringField19: TWideStringField;
    BooleanField2: TBooleanField;
    IntegerField20: TIntegerField;
    WideStringField20: TWideStringField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    IntegerField21: TIntegerField;
    DateField3: TDateField;
    TimeField1: TTimeField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    WideStringField21: TWideStringField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    FMTBCDField4: TFMTBCDField;
    BUS_CD_M_PED_ITE_MKT: TClientDataSet;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    FloatField5: TFloatField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    FloatField6: TFloatField;
    FMTBCDField7: TFMTBCDField;
    FMTBCDField8: TFMTBCDField;
    IntegerField29: TIntegerField;
    IntegerField30: TIntegerField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    FMTBCDField9: TFMTBCDField;
    WideStringField27: TWideStringField;
    IntegerField31: TIntegerField;
    WideStringField28: TWideStringField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    WideStringField31: TWideStringField;
    IntegerField32: TIntegerField;
    WideStringField32: TWideStringField;
    BUS_CD_M_PED_MKTid_mkt: TIntegerField;
    BUS_CD_M_PED_MKTFAT_SQ_M_PED_ITE: TDataSetField;
    dsoPedMkt: TwwDataSource;
    dsoPedIteMkt: TwwDataSource;
    FAT_CD_M_MKT_CLIid_banco_info: TIntegerField;
    txtVisita: TJvDBComboEdit;
    Label19: TLabel;
    FAT_CD_M_MKTid_vis: TIntegerField;
    FAT_CD_M_MKT_CLIcliente_contato: TBooleanField;
    btnSelCliente: TButton;
    FAT_CD_M_MKT_CLIcliente_avulso: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    Panel4: TPanel;
    Label20: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure grdClientesRowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovaVendaClick(Sender: TObject);
    procedure cbbRotaExit(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FAT_CD_M_MKTNewRecord(DataSet: TDataSet);
    procedure grdClientesFieldChanged(Sender: TObject; Field: TField);
    procedure grdUltimosPedCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure tsPedidoMarkShow(Sender: TObject);
    procedure tsInfoClienteShow(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtObservacaoCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
    procedure FAT_CD_M_MKTBeforePost(DataSet: TDataSet);
    procedure FAT_CD_M_MKTReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure txtObservacaoCliKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtObservacaoCliEnter(Sender: TObject);
    procedure txtObservacaoCliExit(Sender: TObject);
    procedure txtVisitaButtonClick(Sender: TObject);
    procedure txtVisitaExit(Sender: TObject);
    procedure btnSelClienteClick(Sender: TObject);
    procedure grdClientesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
    procedure ExibirInforCli;
    procedure BuscarCliVisita;

  public
    { Public declarations }
  end;

procedure OpenForm(FClass: TFormClass; var Instance);

var
  FAT_FM_M_MKT: TFAT_FM_M_MKT;

implementation

{$R *.dfm}

uses uDmGeral, FAT_UN_M_PED, enFunc, FAT_RN_M_MKT, uProxy, FAT_UN_M_MKT_VIS,
  PSQ_UN_X_CLI;

{ TFAT_FM_M_MKT }



procedure TFAT_FM_M_MKT.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,FAT_CD_M_MKT);

  dmGeral.BusFuncionario(0,FAT_CD_M_MKT.FieldByName('id_responsavel').AsString);
  FAT_CD_M_MKT.FieldByName('int_nomeresp').AsString := dmGeral.BUS_CD_C_FUN.FieldByName('nome').AsString;
  dmGeral.BUS_CD_C_FUN.close;

  {cbbRota.Enabled := True;
  cbbRota.Color   := $00DADADA;
  cbbRota.SetFocus;}
  txtVisita.Enabled := true;
  txtVisita.SetFocus;
end;

procedure TFAT_FM_M_MKT.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,FAT_CD_M_MKT) then
     begin
       inherited;
       //cbbRota.Enabled := false;
       txtVisita.Enabled := false;
       BuscarCliVisita;
       grdClientes.SetFocus;
       FAT_CD_M_MKT_CLI.First;
     end;
end;

procedure TFAT_FM_M_MKT.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,FAT_CD_M_MKT) then
      begin
        inherited;
        dbGrid.SetFocus;
       // cbbRota.Enabled := true;
        txtVisita.Enabled := true;
      end
  else
      begin
        txtObservacaoCli.SetFocus;
      end;
end;

procedure TFAT_FM_M_MKT.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,FAT_CD_M_MKT);
  inherited;
end;

procedure TFAT_FM_M_MKT.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := FAT_CD_M_MKT.FieldByName('ID_MKT').AsString;

  FAT_RN_M_MKT.FatApagarCliDesmarcado;

  DmGeral.Grava(FAT_CD_M_MKT);
  inherited;
  FAT_CD_M_MKT.Close;
  FAT_CD_M_MKT.Data :=
      FAT_CD_M_MKT.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, codigo,xFuncionario]));

  //cbbRota.enabled   := true;
  txtVisita.Enabled := true;
end;

procedure TFAT_FM_M_MKT.btnFiltroClick(Sender: TObject);
var
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    FAT_CD_M_MKT.Close;
    FAT_CD_M_MKT.Data :=
       FAT_CD_M_MKT.DataRequest(
              VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,xPesquisa,
                          xFuncionario]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_MKT.btnNovaVendaClick(Sender: TObject);
var
  codigo: String;
begin
  inherited;

  if FAT_CD_M_MKT_CLI.IsEmpty then
     begin
       ShowMessage('Não há cliente neste telemarketing!');
       exit;
     end;

  if not (FAT_CD_M_MKT_CLI.FieldByName('SELECAO').AsBoolean) then
     begin
       ShowMessage('O cliente não foi selecionado!');
       exit;
     end;

  FAT_CD_M_MKT_CLI.edit;

  codigo := FAT_CD_M_MKT_CLI.FieldByName('id_cliente').AsString;

  FAT_CD_M_MKT_CLI.FieldByName('dta_gravacao').AsDateTime := Date;
  FAT_CD_M_MKT_CLI.FieldByName('hor_gravacao').AsDateTime := Time;

  try
    grdClientes.OnFieldChanged := nil;

    FAT_RN_M_MKT.FatApagarCliDesmarcado;
    FAT_CD_M_MKT.ApplyUpdates(0);
  finally
    grdClientes.OnFieldChanged := grdClientesFieldChanged;
    if (FAT_CD_M_MKT.FieldByName('ID_VIS').AsInteger>0) then
      BuscarCliVisita;
    FAT_CD_M_MKT_CLI.Locate('id_cliente',codigo,[]);
    FAT_CD_M_MKT_CLI.edit;
  end;

  OpenForm(TFAT_FM_M_PED, FAT_FM_M_PED);

  FAT_FM_M_PED.xMark_IdMkt     := FAT_CD_M_MKT.FieldByName('ID_MKT').AsInteger;
  FAT_FM_M_PED.xMark_IdCliente := FAT_CD_M_MKT_CLI.FieldByName('ID_CLIENTE').AsInteger;
  FAT_FM_M_PED.xChamadoPor_TeleMarketing := true;
  FAT_FM_M_PED.cdsMarketing    := FAT_CD_M_MKT;

 // cbbRota.Enabled := false;
  txtVisita.Enabled := false;
end;

procedure TFAT_FM_M_MKT.btnSelClienteClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;

  if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(
          VarArrayOf([0,PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString]));


       if not dmGeral.BUS_CD_C_CLI.IsEmpty then
           begin
             try
               FAT_CD_M_MKT.BeforePost := nil;
               grdClientes.OnRowChanged :=  nil;

               dmGeral.BUS_CD_C_CLI.First;
               while not dmGeral.BUS_CD_C_CLI.eof do
                  begin
                    if not (FAT_CD_M_MKT_CLI.Locate('ID_CLIENTE',dmGeral.BUS_CD_C_CLI.FieldByName('id_cliente').AsString,[])) then
                       begin
                          FAT_CD_M_MKT_CLI.Insert;
                          FAT_CD_M_MKT_CLI.FieldByName('selecao').AsBoolean    := false;
                          FAT_CD_M_MKT_CLI.FieldByName('cliente_contato').AsBoolean := false;
                          FAT_CD_M_MKT_CLI.FieldByName('cliente_avulso').AsBoolean := true;
                          FAT_CD_M_MKT_CLI.FieldByName('id_cliente').AsInteger :=
                              dmGeral.BUS_CD_C_CLI.FieldByName('id_cliente').AsInteger;

                          FAT_CD_M_MKT_CLI.FieldByName('int_nomecli').AsString :=
                              dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
                          FAT_CD_M_MKT_CLI.FieldByName('int_fantasiacli').AsString :=
                              dmGeral.BUS_CD_C_CLI.FieldByName('apelido').AsString;
                          FAT_CD_M_MKT_CLI.FieldByName('int_telfixocli').AsString :=
                              dmGeral.BUS_CD_C_CLI.FieldByName('tel_fixo').AsString;
                          FAT_CD_M_MKT_CLI.FieldByName('int_telmovelcli').AsString :=
                              dmGeral.BUS_CD_C_CLI.FieldByName('tel_movel').AsString;

                          FAT_CD_M_MKT_CLI.FieldByName('int_endercli').AsString :=
                              dmGeral.BUS_CD_C_CLI.FieldByName('endereco').AsString;
                          FAT_CD_M_MKT_CLI.FieldByName('int_bairrocli').AsString :=
                              dmGeral.BUS_CD_C_CLI.FieldByName('bairro').AsString;
                          FAT_CD_M_MKT_CLI.FieldByName('int_idcidadecli').AsString :=
                              dmGeral.BUS_CD_C_CLI.FieldByName('id_cidade').AsString;
                          FAT_CD_M_MKT_CLI.FieldByName('int_ufcidcli').AsString :=
                              dmGeral.BUS_CD_C_CLI.FieldByName('int_uf').AsString;

                          FAT_CD_M_MKT_CLI.Post;
                       end
                    else
                       begin
                         ShowMessage('Cliente já foi selecionado.');
                       end;
                    dmGeral.BUS_CD_C_CLI.Next;
                  end;
             finally
                grdClientes.OnRowChanged := grdClientesRowChanged;
                FAT_CD_M_MKT.BeforePost := FAT_CD_M_MKTBeforePost;
             end;
           end;
        dmGeral.BUS_CD_C_CLI.Close;

     end;
   PSQ_FM_X_CLI.BUS_CD_C_CLI.Close;
   PSQ_FM_X_CLI.Free;
end;

procedure TFAT_FM_M_MKT.BuscarCliVisita;
var
  cpf_cnpj:String;
begin
   dmGeral.BUS_CD_C_VIS.Close;
   dmGeral.BUS_CD_C_VIS.Data :=
   dmGeral.BUS_CD_C_VIS.DataRequest(
               VarArrayOf([7,FAT_CD_M_MKT.FieldByName('ID_VIS').AsString]));


   cpf_cnpj := '';
   dmGeral.BUS_CD_C_VIS_CLI.First;
   while not dmGeral.BUS_CD_C_VIS_CLI.Eof do
     begin
       if cpf_cnpj <> '' then
          begin
           cpf_cnpj :=
           cpf_cnpj + ',' +''''+  dmGeral.BUS_CD_C_VIS_CLI.FieldByName('doc_cnpj_cpf').AsString+'''';
          end
       else
          begin
           cpf_cnpj :=
           cpf_cnpj +''''+ dmGeral.BUS_CD_C_VIS_CLI.FieldByName('doc_cnpj_cpf').AsString+'''';
          end;

       dmGeral.BUS_CD_C_VIS_CLI.Next;
     end;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
          dmGeral.BUS_CD_C_CLI.DataRequest(
              VarArrayOf([84,cpf_cnpj]));
  if not dmGeral.BUS_CD_C_CLI.IsEmpty then
     begin
       try
         FAT_CD_M_MKT.BeforePost := nil;
         grdClientes.OnRowChanged :=  nil;

         dmGeral.BUS_CD_C_CLI.First;
         while not dmGeral.BUS_CD_C_CLI.eof do
            begin
              if not (FAT_CD_M_MKT_CLI.Locate('ID_CLIENTE',dmGeral.BUS_CD_C_CLI.FieldByName('id_cliente').AsString,[])) then
                 begin
                    FAT_CD_M_MKT_CLI.Insert;
                    FAT_CD_M_MKT_CLI.FieldByName('selecao').AsBoolean    := false;

                    FAT_CD_M_MKT_CLI.FieldByName('cliente_contato').AsBoolean := false;
                    FAT_CD_M_MKT_CLI.FieldByName('cliente_avulso').AsBoolean := false;

                    FAT_CD_M_MKT_CLI.FieldByName('id_cliente').AsInteger :=
                        dmGeral.BUS_CD_C_CLI.FieldByName('id_cliente').AsInteger;

                    FAT_CD_M_MKT_CLI.FieldByName('int_nomecli').AsString :=
                        dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
                    FAT_CD_M_MKT_CLI.FieldByName('int_fantasiacli').AsString :=
                        dmGeral.BUS_CD_C_CLI.FieldByName('apelido').AsString;
                    FAT_CD_M_MKT_CLI.FieldByName('int_telfixocli').AsString :=
                        dmGeral.BUS_CD_C_CLI.FieldByName('tel_fixo').AsString;
                    FAT_CD_M_MKT_CLI.FieldByName('int_telmovelcli').AsString :=
                        dmGeral.BUS_CD_C_CLI.FieldByName('tel_movel').AsString;

                    FAT_CD_M_MKT_CLI.FieldByName('int_endercli').AsString :=
                        dmGeral.BUS_CD_C_CLI.FieldByName('endereco').AsString;
                    FAT_CD_M_MKT_CLI.FieldByName('int_bairrocli').AsString :=
                        dmGeral.BUS_CD_C_CLI.FieldByName('bairro').AsString;
                    FAT_CD_M_MKT_CLI.FieldByName('int_idcidadecli').AsString :=
                        dmGeral.BUS_CD_C_CLI.FieldByName('id_cidade').AsString;
                    FAT_CD_M_MKT_CLI.FieldByName('int_ufcidcli').AsString :=
                        dmGeral.BUS_CD_C_CLI.FieldByName('int_uf').AsString;

                    FAT_CD_M_MKT_CLI.Post;
                 end
              else
                 begin

                 end;
              dmGeral.BUS_CD_C_CLI.Next;
            end;
       finally
          grdClientes.OnRowChanged := grdClientesRowChanged;
          FAT_CD_M_MKT.BeforePost := FAT_CD_M_MKTBeforePost;
       end;
     end;
  dmGeral.BUS_CD_C_CLI.Close;
end;

procedure TFAT_FM_M_MKT.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [1]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 109;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;

  txtPesquisa.NumbersOnly := true;
  if cbbPesquisa.ItemIndex = 1 then
     begin
       txtPesquisa.NumbersOnly := false;
     end;
end;



procedure TFAT_FM_M_MKT.cbbRotaExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  {if not FAT_CD_M_MKT_PED.IsEmpty then
     begin
       ShowMessage('Alteração de rota não permitida!' + #13 +
                   'Já existe pedido de venda feito para esse telemarketing.');
       FAT_CD_M_MKT.cancel;
       FAT_CD_M_MKT.Edit;
       abort;
     end;   }

  try

  FAT_CD_M_MKT_CLI.Filtered := true;
  FAT_CD_M_MKT_CLI.Filter := ' SELECAO = ''TRUE'' AND OBS <> '''' ';

  if not FAT_CD_M_MKT_CLI.IsEmpty then
     begin
       if Dc_MessageDlgCheck('Já existe cliente com Observações gravadas!' + #13 +
                             'Se alterar a rota essas informações seram apagadas, continua?', mtConfirmation, [mbYes, mbNo],
          0, mrNo, true, false,'', nil) <> 7 then
          begin
            FAT_CD_M_MKT_CLI.Filtered := false;
            while not FAT_CD_M_MKT_CLI.eof do
              FAT_CD_M_MKT_CLI.delete;

            BUS_CD_M_PED.Close;
            BUS_CD_M_PED.Data :=
             BUS_CD_M_PED.DataRequest(
                 VarArrayOf([0, '']));

            BUS_CD_M_PED_MKT.Close;
            BUS_CD_M_PED_MKT.Data :=
             BUS_CD_M_PED_MKT.DataRequest(
                 VarArrayOf([0, '']));

            BuscarCliVisita;
          end
       else
          abort;
     end;

  FAT_CD_M_MKT_CLI.Filtered := false;
  while not FAT_CD_M_MKT_CLI.eof do
      FAT_CD_M_MKT_CLI.delete;

  BUS_CD_M_PED.Close;
  BUS_CD_M_PED.Data :=
  BUS_CD_M_PED.DataRequest(
      VarArrayOf([0, '']));

  BUS_CD_M_PED_MKT.Close;
  BUS_CD_M_PED_MKT.Data :=
   BUS_CD_M_PED_MKT.DataRequest(
       VarArrayOf([0, '']));

  BuscarCliVisita;

  finally
    FAT_CD_M_MKT_CLI.Filtered := false;
  end;
end;

procedure TFAT_FM_M_MKT.Edit1Exit(Sender: TObject);
begin
  inherited;
  dmGeral.BuscarSeq('CAD_TB_C_CLI_BCO');
end;

procedure TFAT_FM_M_MKT.ExibirInforCli;
begin

  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
              dmGeral.BUS_CD_M_REC.DataRequest(
               VarArrayOf([0,'']));

  BUS_CD_M_PED.Close;
     BUS_CD_M_PED.Data :=
          BUS_CD_M_PED.DataRequest(
               VarArrayOf([0,'']));


  if not FAT_CD_M_MKT_CLI.IsEmpty then
     begin
       if FAT_CD_M_MKT_CLI.FieldByName('ID_CLIENTE').AsInteger > 0 then
          begin
            dmGeral.BUS_CD_M_REC.Close;
                dmGeral.BUS_CD_M_REC.Data :=
                        dmGeral.BUS_CD_M_REC.DataRequest(
                         VarArrayOf([110, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,
                           FAT_CD_M_MKT_CLI.FieldByName('ID_CLIENTE').AsString]));

            BUS_CD_M_PED.Close;
               BUS_CD_M_PED.Data :=
                    BUS_CD_M_PED.DataRequest(
                         VarArrayOf([79, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,
                           FAT_CD_M_MKT_CLI.FieldByName('ID_CLIENTE').AsString,
                           FAT_CD_M_MKT_CLI.FieldByName('ID_MKT').AsString]));
          end;
     end;
end;

procedure TFAT_FM_M_MKT.FAT_CD_M_MKTBeforePost(DataSet: TDataSet);
begin
  inherited;
  FAT_RN_M_MKT.FatValidaMkt;
end;

procedure TFAT_FM_M_MKT.FAT_CD_M_MKTNewRecord(DataSet: TDataSet);
begin
  inherited;
  FAT_RN_M_MKT.FatNovoMkt(FAT_CD_M_MKT);
end;

procedure TFAT_FM_M_MKT.FAT_CD_M_MKTReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  dmGeral.VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TFAT_FM_M_MKT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FAT_CD_M_MKT.Close;
  FreeAndNil(FAT_FM_M_MKT);
end;

procedure TFAT_FM_M_MKT.FormCreate(Sender: TObject);
begin
  inherited;

  FAT_CD_M_MKT.Close;
  FAT_CD_M_MKT.Data :=
      FAT_CD_M_MKT.DataRequest(
           VarArrayOf([0, '','',0]));
end;

procedure TFAT_FM_M_MKT.FormShow(Sender: TObject);
begin
  inherited;
  cbbPesquisaChange(self);
end;

procedure TFAT_FM_M_MKT.grdClientesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
   if FAT_CD_M_MKT_CLI.FieldByName('cliente_avulso').AsBoolean  then
    begin
      aFont.Color := clBlue;
    end;
end;

procedure TFAT_FM_M_MKT.grdClientesFieldChanged(Sender: TObject; Field: TField);
var
  SMPrincipal : TSMClient;
  retorno: String;
begin
  inherited;

  try
    grdClientes.OnFieldChanged := nil;

  if Field.FieldName = 'selecao' then
     begin
       if Field.Value = false then
          begin
             if not BUS_CD_M_PED_MKT.IsEmpty then
                begin
                  ShowMessage('O cliente: ' + FAT_CD_M_MKT_CLI.FieldByName('int_fantasiacli').AsString + ', não pode ser desmarcado pois ' +
                              'já tem pedido de venda para este telemarketing!');
                  FAT_CD_M_MKT_CLI.FieldByName('selecao').AsBoolean := true;
                  abort;
                end;

             if FAT_CD_M_MKT_CLI.FieldByName('obs').AsString <> '' then
                begin
                  FAT_CD_M_MKT_CLI.FieldByName('obs').AsString := '';
                  FAT_CD_M_MKT.ApplyUpdates(0);
                  FAT_CD_M_MKT.Edit;
                end;
          end
       else
          begin
             SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

             retorno := SMPrincipal.enVerifTeleMarkCli(FAT_CD_M_MKT_CLI.FieldByName('id_mkt').AsString,
                                               FAT_CD_M_MKT_CLI.FieldByName('id_cliente').AsString);
             if retorno <> '' then
                begin
                  ShowMessage('Já existe outro telemarketing para este cliente na data de hoje!' + #13 +
                              'Telemarketing: ' + retorno);
                  FAT_CD_M_MKT_CLI.FieldByName('selecao').AsBoolean := false;
                  abort;
                end;
             FreeAndNil(SMPrincipal);
          end;

     end;
  finally
     grdClientes.OnFieldChanged := grdClientesFieldChanged;
  end;
end;

procedure TFAT_FM_M_MKT.grdClientesRowChanged(Sender: TObject);
begin
  inherited;
  ExibirInforCli;
end;


procedure TFAT_FM_M_MKT.grdUltimosPedCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;

  if (BUS_CD_M_PED.FieldByName('situacao').AsInteger = 1) then
     begin
       AFont.Color  := clMaroon;
     end;

  if (BUS_CD_M_PED.FieldByName('situacao').AsInteger = 3) then
     begin
       AFont.Color  := clGreen;
     end;

  if (BUS_CD_M_PED.FieldByName('situacao').AsInteger = 4) then
     begin
       AFont.Color  := clRed;
     end;
end;

procedure TFAT_FM_M_MKT.tsInfoClienteShow(Sender: TObject);
begin
  inherited;
  ExibirInforCli;
end;

procedure TFAT_FM_M_MKT.tsPedidoMarkShow(Sender: TObject);
begin
  inherited;
  BUS_CD_M_PED_MKT.Close;
  BUS_CD_M_PED_MKT.Data :=
      BUS_CD_M_PED_MKT.DataRequest(
           VarArrayOf([80, FAT_CD_M_MKT.FieldByName('ID_EMPRESA').AsString,
             FAT_CD_M_MKT_CLI.FieldByName('ID_MKT').AsString]));
end;

procedure TFAT_FM_M_MKT.txtObservacaoCliEnter(Sender: TObject);
begin
  inherited;
  fat_fm_m_mkt.KeyPreview := false;
end;

procedure TFAT_FM_M_MKT.txtObservacaoCliExit(Sender: TObject);
begin
  inherited;
  fat_fm_m_mkt.KeyPreview := true;
end;

procedure TFAT_FM_M_MKT.txtObservacaoCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  codigo:String;
begin
  inherited;
  if (ord(key) = vk_return) or
     (ord(key) = vk_tab) then
     begin
       if FAT_CD_M_MKT_CLI.FieldByName('selecao').AsBoolean then
          begin
             codigo := FAT_CD_M_MKT_CLI.FieldByName('id_cliente').AsString;

             FAT_CD_M_MKT_CLI.Edit;

             FAT_CD_M_MKT_CLI.FieldByName('dta_gravacao').AsDateTime := Date;
             FAT_CD_M_MKT_CLI.FieldByName('hor_gravacao').AsDateTime := Time;

             if FAT_CD_M_MKT_CLI.FieldByName('id_banco_info').AsString = '' then
                begin
                  FAT_CD_M_MKT_CLI.FieldByName('id_banco_info').AsInteger :=
                     dmGeral.BuscarSeq('CAD_TB_C_CLI_BCO');
                end;
             try
               grdClientes.OnFieldChanged := nil;

               FAT_RN_M_MKT.FatApagarCliDesmarcado;
               FAT_CD_M_MKT.ApplyUpdates(0);
             finally
               grdClientes.OnFieldChanged := grdClientesFieldChanged;
               BuscarCliVisita;
               FAT_CD_M_MKT_CLI.Locate('id_cliente',codigo,[]);
               FAT_CD_M_MKT_CLI.edit;
             end;
          end;
       ActiveControl := nil;
       PostMessage(btnNovaVenda.Handle, WM_SETFOCUS, 0, 0);
       btnNovaVenda.SetFocus;
     end;
end;

procedure TFAT_FM_M_MKT.txtObservacaoCliKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (ord(key) = vk_tab) then
     begin
       showmessage('oi');
     end;
end;

procedure TFAT_FM_M_MKT.txtVisitaButtonClick(Sender: TObject);
begin
  inherited;
   FAT_FM_M_MKT_VIS := TFAT_FM_M_MKT_VIS.Create(Self);
   dmGeral.BUS_CD_C_VIS.Close;
   dmGeral.BUS_CD_C_VIS.Data :=
   dmGeral.BUS_CD_C_VIS.DataRequest(
               VarArrayOf([6,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));
   FAT_FM_M_MKT_VIS.ShowModal;
   if not dmGeral.BUS_CD_C_VIS.IsEmpty then
     begin
        FAT_CD_M_MKT.FieldByName('ID_VIS').AsString :=
            dmGeral.BUS_CD_C_VIS.FieldByName('ID_VIS').AsString;

     end;
   FAT_FM_M_MKT_VIS.Free;
end;

procedure TFAT_FM_M_MKT.txtVisitaExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;



  { if FAT_CD_M_MKT.FieldByName('ID_VIS').AsString = '' then
     begin
       ShowMessage('Deve-se preencher o cód. da visita.');
       txtVisita.SetFocus;
       exit;
     end;  }

   if FAT_CD_M_MKT.FieldByName('ID_VIS').AsString <> '' then
     begin

       dmGeral.BUS_CD_C_VIS.Close;
       dmGeral.BUS_CD_C_VIS.Data :=
       dmGeral.BUS_CD_C_VIS.DataRequest(
                   VarArrayOf([7,FAT_CD_M_MKT.FieldByName('ID_VIS').AsString]));


       if (dmGeral.BUS_CD_C_VIS.IsEmpty) then
        begin
          ShowMessage('Visita não encontrado.');
          FAT_CD_M_MKT.FieldByName('ID_VIS').AsString := '';
          txtVisita.Text := '';
          txtVisita.SetFocus;
          exit;
        end
       else if (dmGeral.BUS_CD_C_VIS.FieldByName('FECHADA').AsBoolean = true) then
        begin
          ShowMessage('Visita está fechada.');
          FAT_CD_M_MKT.FieldByName('ID_VIS').AsString := '';
          txtVisita.Text := '';
          txtVisita.SetFocus;
          exit;
        end;
     end;

  {if not FAT_CD_M_MKT_PED.IsEmpty then
     begin
       ShowMessage('Alteração de rota não permitida!' + #13 +
                   'Já existe pedido de venda feito para esse telemarketing.');
       FAT_CD_M_MKT.cancel;
       FAT_CD_M_MKT.Edit;
       abort;
     end;   }

  try

  FAT_CD_M_MKT_CLI.Filtered := true;
  FAT_CD_M_MKT_CLI.Filter := ' SELECAO = ''TRUE'' AND OBS <> '''' ';

  if not FAT_CD_M_MKT_CLI.IsEmpty then
     begin
       if Dc_MessageDlgCheck('Já existe cliente com Observações gravadas!' + #13 +
                             'Se alterar a rota essas informações seram apagadas, continua?', mtConfirmation, [mbYes, mbNo],
          0, mrNo, true, false,'', nil) <> 7 then
          begin
            FAT_CD_M_MKT_CLI.Filtered := false;
            while not FAT_CD_M_MKT_CLI.eof do
              FAT_CD_M_MKT_CLI.delete;

            BUS_CD_M_PED.Close;
            BUS_CD_M_PED.Data :=
             BUS_CD_M_PED.DataRequest(
                 VarArrayOf([0, '']));

            BUS_CD_M_PED_MKT.Close;
            BUS_CD_M_PED_MKT.Data :=
             BUS_CD_M_PED_MKT.DataRequest(
                 VarArrayOf([0, '']));

            if FAT_CD_M_MKT.FieldByName('ID_VIS').AsString <> '' then
               BuscarCliVisita;
          end
       else
          abort;
     end;

  FAT_CD_M_MKT_CLI.Filtered := false;
  while not FAT_CD_M_MKT_CLI.eof do
      FAT_CD_M_MKT_CLI.delete;

  BUS_CD_M_PED.Close;
  BUS_CD_M_PED.Data :=
  BUS_CD_M_PED.DataRequest(
      VarArrayOf([0, '']));

  BUS_CD_M_PED_MKT.Close;
  BUS_CD_M_PED_MKT.Data :=
   BUS_CD_M_PED_MKT.DataRequest(
       VarArrayOf([0, '']));

  if FAT_CD_M_MKT.FieldByName('ID_VIS').AsString <> '' then
    BuscarCliVisita;

  finally
    FAT_CD_M_MKT_CLI.Filtered := false;
    dmGeral.BUS_CD_C_VIS.Close;
  end;
end;

procedure TFAT_FM_M_MKT.wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;

  if (BUS_CD_M_PED_MKT.FieldByName('situacao').AsInteger = 1) then
     begin
       AFont.Color  := clMaroon;
     end;

  if (BUS_CD_M_PED_MKT.FieldByName('situacao').AsInteger = 3) then
     begin
       AFont.Color  := clGreen;
     end;

  if (BUS_CD_M_PED_MKT.FieldByName('situacao').AsInteger = 4) then
     begin
       AFont.Color  := clRed;
     end;
end;

procedure OpenForm(FClass: TFormClass; var Instance);
begin
  if Assigned(TForm(Instance)) then begin
	 TForm(Instance).SetFocus;
	 TForm(Instance).WindowState := wsMaximized;
	 TForm(Instance).BringToFront;
  end else
	 Application.CreateForm(FClass, Instance);
end;


end.
