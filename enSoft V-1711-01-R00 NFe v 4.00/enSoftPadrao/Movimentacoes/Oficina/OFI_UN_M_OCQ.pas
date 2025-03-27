unit OFI_UN_M_OCQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Datasnap.DBClient, Vcl.Buttons, JvDBControls, vcl.wwdblook,
  Vcl.DBCtrls, JvExMask, JvToolEdit, Vcl.Mask, vcl.Wwdbedit, frxExportPDF,
  frxClass, frxExportXLS, frxDBSet;

type
  TOFI_FM_M_OCQ = class(TPAD_FM_X_PAD)
    OFI_CD_M_OCQ: TClientDataSet;
    OFI_CD_M_OCQ_ITE: TClientDataSet;
    dsoIte: TwwDataSource;
    lblNumeroOrcamento: TLabel;
    lblDataOrcamento: TLabel;
    lblValidade: TLabel;
    lblCliente: TLabel;
    lblEquip: TLabel;
    lblAnalista: TLabel;
    lblVlrServicos: TLabel;
    lblDescProduto: TLabel;
    lblDescServico: TLabel;
    lblVlrProduto: TLabel;
    lblVlrTerceiro: TLabel;
    lblVlrTotal: TLabel;
    lblCondicaoPagamento: TLabel;
    lblReclamacaoCliente: TLabel;
    lblCnpjCpf: TLabel;
    txtNumeroOrcamento: TwwDBEdit;
    dpkDataOrcamento: TJvDBDateEdit;
    dpkValidade: TJvDBDateEdit;
    txtNomeCliente: TwwDBEdit;
    txtEquipDescricao: TDBEdit;
    cbbAnalista: TwwDBLookupCombo;
    txtVlrServicos: TwwDBEdit;
    txtVlrProduto: TwwDBEdit;
    txtVlrTerceiro: TwwDBEdit;
    txtDescServico: TwwDBEdit;
    txtDescProduto: TwwDBEdit;
    txtVlrTotal1: TwwDBEdit;
    gbItens: TGroupBox;
    pnlItens: TPanel;
    lblItem: TLabel;
    lblQtdeItens: TLabel;
    lblVlrUnitarioItens: TLabel;
    lblVlrTotalItens: TLabel;
    txtQtde: TwwDBEdit;
    txtVlrUnitario: TwwDBEdit;
    txtVlrTotal: TwwDBEdit;
    txtItemDescricao: TDBEdit;
    txtBuscaItem: TJvDBComboEdit;
    dgItens: TwwDBGrid;
    dgItensIButton: TwwIButton;
    btnAddItens: TBitBtn;
    txtEquip: TJvDBComboEdit;
    txtIdCliente: TJvDBComboEdit;
    cbbCondicaoPagamento: TwwDBLookupCombo;
    txtReclamacao: TwwDBEdit;
    txtCnpjCpf: TwwDBEdit;
    btnImprimirEspelho: TBitBtn;
    btnCancelamento: TButton;
    pmOcq: TPopupMenu;
    Cancelaroramento1: TMenuItem;
    Cancelaroramentosvencidos1: TMenuItem;
    OFI_FR_M_OCQ: TfrxReport;
    OFI_DB_M_OCQ: TfrxDBDataset;
    OFI_DB_M_OCQ_PRO: TfrxDBDataset;
    OFI_CD_R_OCQ_PRO: TClientDataSet;
    OFI_CD_R_OCQ_PROid_orcamento: TIntegerField;
    OFI_CD_R_OCQ_PROid_sequencia: TIntegerField;
    OFI_CD_R_OCQ_PROid_item: TIntegerField;
    OFI_CD_R_OCQ_PROid_busca_item: TWideStringField;
    OFI_CD_R_OCQ_PROqtde: TFloatField;
    OFI_CD_R_OCQ_PROvlr_unitario: TFMTBCDField;
    OFI_CD_R_OCQ_PROvlr_bruto: TFMTBCDField;
    OFI_CD_R_OCQ_PROper_desconto: TFloatField;
    OFI_CD_R_OCQ_PROvlr_desconto: TFMTBCDField;
    OFI_CD_R_OCQ_PROvlr_liquido: TFMTBCDField;
    OFI_CD_R_OCQ_PROid_terceiro: TIntegerField;
    OFI_CD_R_OCQ_PROint_nomeite: TWideStringField;
    OFI_CD_R_OCQ_PROint_nomeund: TWideStringField;
    OFI_CD_R_OCQ_PROint_nomeapl: TWideStringField;
    OFI_CD_R_OCQ_PROint_nomeref: TWideStringField;
    OFI_CD_R_OCQ_PROint_nometer: TWideStringField;
    OFI_CD_R_OCQ_PROint_tipo_item: TIntegerField;
    OFI_CD_R_OCQ_PROvlr_unitario_orig: TFMTBCDField;
    OFI_CD_R_OCQ_PROnome_ite: TWideStringField;
    OFI_CD_R_OCQ: TClientDataSet;
    OFI_XL_M_OCQ: TfrxXLSExport;
    OFI_PD_M_OCQ: TfrxPDFExport;
    OFI_CD_M_OCQid_orcamento: TIntegerField;
    OFI_CD_M_OCQid_empresa: TIntegerField;
    OFI_CD_M_OCQid_equipamento: TIntegerField;
    OFI_CD_M_OCQdta_orcamento: TDateField;
    OFI_CD_M_OCQdta_validade: TDateField;
    OFI_CD_M_OCQid_cliente: TIntegerField;
    OFI_CD_M_OCQnome_cliente: TWideStringField;
    OFI_CD_M_OCQid_funcionario: TIntegerField;
    OFI_CD_M_OCQid_analista: TIntegerField;
    OFI_CD_M_OCQid_condicao_pag: TIntegerField;
    OFI_CD_M_OCQvlr_servicos: TFMTBCDField;
    OFI_CD_M_OCQvlr_produtos: TFMTBCDField;
    OFI_CD_M_OCQvlr_terceiro: TFMTBCDField;
    OFI_CD_M_OCQdes_servicos: TFMTBCDField;
    OFI_CD_M_OCQdes_produtos: TFMTBCDField;
    OFI_CD_M_OCQvlr_total: TFMTBCDField;
    OFI_CD_M_OCQstatus: TIntegerField;
    OFI_CD_M_OCQobs: TWideStringField;
    OFI_CD_M_OCQdoc_cnpj_cpf: TWideStringField;
    OFI_CD_M_OCQhor_orcamento: TTimeField;
    OFI_CD_M_OCQcan_motivo: TWideStringField;
    OFI_CD_M_OCQcan_data: TDateField;
    OFI_CD_M_OCQcan_hora: TTimeField;
    OFI_CD_M_OCQcan_usuario: TIntegerField;
    OFI_CD_M_OCQserial: TWideStringField;
    OFI_CD_M_OCQint_nomefuc: TWideStringField;
    OFI_CD_M_OCQint_nomeana: TWideStringField;
    OFI_CD_M_OCQint_nomecpg: TWideStringField;
    OFI_CD_M_OCQOFI_SQ_M_OCQ_ITE: TDataSetField;
    OFI_CD_M_OCQ_ITEid_orcamento: TIntegerField;
    OFI_CD_M_OCQ_ITEid_sequencia: TIntegerField;
    OFI_CD_M_OCQ_ITEid_item: TIntegerField;
    OFI_CD_M_OCQ_ITEid_busca_item: TWideStringField;
    OFI_CD_M_OCQ_ITEqtde: TFloatField;
    OFI_CD_M_OCQ_ITEvlr_unitario: TFMTBCDField;
    OFI_CD_M_OCQ_ITEvlr_bruto: TFMTBCDField;
    OFI_CD_M_OCQ_ITEper_desconto: TFloatField;
    OFI_CD_M_OCQ_ITEvlr_desconto: TFMTBCDField;
    OFI_CD_M_OCQ_ITEvlr_liquido: TFMTBCDField;
    OFI_CD_M_OCQ_ITEid_terceiro: TIntegerField;
    OFI_CD_M_OCQ_ITEvlr_unitario_orig: TFMTBCDField;
    OFI_CD_M_OCQ_ITEnome_ite: TWideStringField;
    OFI_CD_M_OCQ_ITEint_nomeite: TWideStringField;
    OFI_CD_M_OCQ_ITEint_nomeund: TWideStringField;
    OFI_CD_M_OCQ_ITEint_nomeapl: TWideStringField;
    OFI_CD_M_OCQ_ITEint_nomeref: TWideStringField;
    OFI_CD_M_OCQ_ITEint_nometer: TWideStringField;
    OFI_CD_M_OCQ_ITEint_tipo_item: TWideStringField;
    OFI_CD_M_OCQ_ITEint_serterceiro: TBooleanField;
    gbLegenda: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    OFI_CD_R_OCQ_SER: TClientDataSet;
    OFI_CD_R_OCQ_SERid_orcamento: TIntegerField;
    OFI_CD_R_OCQ_SERid_sequencia: TIntegerField;
    OFI_CD_R_OCQ_SERid_item: TIntegerField;
    OFI_CD_R_OCQ_SERid_busca_item: TWideStringField;
    OFI_CD_R_OCQ_SERqtde: TFloatField;
    OFI_CD_R_OCQ_SERvlr_unitario: TFMTBCDField;
    OFI_CD_R_OCQ_SERvlr_bruto: TFMTBCDField;
    OFI_CD_R_OCQ_SERper_desconto: TFloatField;
    OFI_CD_R_OCQ_SERvlr_desconto: TFMTBCDField;
    OFI_CD_R_OCQ_SERvlr_liquido: TFMTBCDField;
    OFI_CD_R_OCQ_SERid_terceiro: TIntegerField;
    OFI_CD_R_OCQ_SERint_nomeite: TWideStringField;
    OFI_CD_R_OCQ_SERint_nomeund: TWideStringField;
    OFI_CD_R_OCQ_SERint_nomeapl: TWideStringField;
    OFI_CD_R_OCQ_SERint_nomeref: TWideStringField;
    OFI_CD_R_OCQ_SERint_nometer: TWideStringField;
    OFI_CD_R_OCQ_SERint_tipo_item: TIntegerField;
    OFI_CD_R_OCQ_SERvlr_unitario_orig: TFMTBCDField;
    OFI_CD_R_OCQ_SERnome_ite: TWideStringField;
    OFI_DB_M_OCQ_SER: TfrxDBDataset;
    OFI_CD_R_OCQid_orcamento: TIntegerField;
    OFI_CD_R_OCQid_empresa: TIntegerField;
    OFI_CD_R_OCQid_equipamento: TIntegerField;
    OFI_CD_R_OCQdta_orcamento: TDateField;
    OFI_CD_R_OCQdta_validade: TDateField;
    OFI_CD_R_OCQid_cliente: TIntegerField;
    OFI_CD_R_OCQnome_cliente: TWideStringField;
    OFI_CD_R_OCQid_funcionario: TIntegerField;
    OFI_CD_R_OCQid_analista: TIntegerField;
    OFI_CD_R_OCQid_condicao_pag: TIntegerField;
    OFI_CD_R_OCQvlr_servicos: TFMTBCDField;
    OFI_CD_R_OCQvlr_produtos: TFMTBCDField;
    OFI_CD_R_OCQvlr_terceiro: TFMTBCDField;
    OFI_CD_R_OCQdes_servicos: TFMTBCDField;
    OFI_CD_R_OCQdes_produtos: TFMTBCDField;
    OFI_CD_R_OCQvlr_total: TFMTBCDField;
    OFI_CD_R_OCQstatus: TIntegerField;
    OFI_CD_R_OCQobs: TWideStringField;
    OFI_CD_R_OCQdoc_cnpj_cpf: TWideStringField;
    OFI_CD_R_OCQhor_orcamento: TTimeField;
    OFI_CD_R_OCQcan_motivo: TWideStringField;
    OFI_CD_R_OCQcan_data: TDateField;
    OFI_CD_R_OCQcan_hora: TTimeField;
    OFI_CD_R_OCQcan_usuario: TIntegerField;
    OFI_CD_R_OCQserial: TWideStringField;
    OFI_CD_R_OCQint_nomefuc: TWideStringField;
    OFI_CD_R_OCQint_nomeana: TWideStringField;
    OFI_CD_R_OCQint_nomecpg: TWideStringField;
    OFI_CD_R_OCQBUS_SQ_R_OCQ_PRO: TDataSetField;
    OFI_CD_R_OCQBUS_SQ_R_OCQ_SER: TDataSetField;
    OFI_CD_M_OCQint_nomeeqp: TWideStringField;
    OFI_CD_R_OCQint_nomeeqp: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure Cancelaroramento1Click(Sender: TObject);
    procedure OFI_CD_M_OCQBeforeDelete(DataSet: TDataSet);
    procedure OFI_CD_M_OCQBeforeEdit(DataSet: TDataSet);
    procedure OFI_CD_M_OCQBeforeOpen(DataSet: TDataSet);
    procedure OFI_CD_M_OCQBeforePost(DataSet: TDataSet);
    procedure OFI_CD_M_OCQNewRecord(DataSet: TDataSet);
    procedure OFI_CD_M_OCQReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure OFI_CD_M_OCQ_ITEAfterPost(DataSet: TDataSet);
    procedure OFI_CD_M_OCQ_ITEBeforeOpen(DataSet: TDataSet);
    procedure OFI_CD_M_OCQ_ITEBeforePost(DataSet: TDataSet);
    procedure OFI_CD_M_OCQ_ITENewRecord(DataSet: TDataSet);
    procedure Cancelaroramentosvencidos1Click(Sender: TObject);
    procedure OFI_CD_M_OCQdes_servicosChange(Sender: TField);
    procedure OFI_CD_M_OCQdes_produtosChange(Sender: TField);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure dpkValidadeExit(Sender: TObject);
    procedure txtIdClienteButtonClick(Sender: TObject);
    procedure txtIdClienteExit(Sender: TObject);
    procedure txtNomeClienteExit(Sender: TObject);
    procedure txtCnpjCpfExit(Sender: TObject);
    procedure txtEquipButtonClick(Sender: TObject);
    procedure txtEquipExit(Sender: TObject);
    procedure cbbCondicaoPagamentoEnter(Sender: TObject);
    procedure cbbCondicaoPagamentoExit(Sender: TObject);
    procedure cbbAnalistaEnter(Sender: TObject);
    procedure cbbAnalistaExit(Sender: TObject);
    procedure btnAddItensClick(Sender: TObject);
    procedure OFI_CD_M_OCQ_ITEid_itemChange(Sender: TField);
    procedure OFI_CD_M_OCQ_ITEqtdeChange(Sender: TField);
    procedure OFI_CD_M_OCQ_ITEvlr_unitarioChange(Sender: TField);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtQtdeEnter(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtVlrUnitarioExit(Sender: TObject);
    procedure dgItensIButtonClick(Sender: TObject);
    procedure txtDescServicoEnter(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar_xBusca;
    procedure AbrirBusca;
    procedure HabilitarDesabCampos(Ativar:Boolean);
    var
      xbusca_item: String;
      xPercDescPerm: Currency;
      permiteAltVlrUnit:Boolean;
  public
    { Public declarations }
  end;

var
  OFI_FM_M_OCQ: TOFI_FM_M_OCQ;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, OFI_UN_M_OCV_CAN, OFI_RN_M_OCQ, enFunc,
  PSQ_UN_X_CLI, PSQ_UN_X_EQP, PSQ_UN_X_ITE, uProxy;

procedure TOFI_FM_M_OCQ.AbrirBusca;
begin
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
    dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1,'%']));
  dmGeral.BusCondPgto(1,'%');
end;

procedure TOFI_FM_M_OCQ.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,OFI_CD_M_OCQ);
  dpkValidade.SetFocus;
  btnImprimirEspelho.Enabled := false;
  btnCancelamento.Enabled    := false;
end;

procedure TOFI_FM_M_OCQ.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,OFI_CD_M_OCQ) then
    begin
      HabilitarDesabCampos(false);
      btnImprimirEspelho.Enabled := false;
      btnCancelamento.Enabled    := false;
      pnlItens.Enabled := False;
      dpkValidade.SetFocus;
    end;
end;

procedure TOFI_FM_M_OCQ.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,OFI_CD_M_OCQ) then
     begin
       inherited;
       HabilitarDesabCampos(true);
       btnImprimirEspelho.Enabled := true;
         btnCancelamento.Enabled    := true;
       dbGrid.SetFocus;
     end
  else
     begin
       txtNumeroOrcamento.SetFocus;
     end;
end;

procedure TOFI_FM_M_OCQ.acExcluirExecute(Sender: TObject);
begin
  inherited;
  if OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger = 2 then
    begin
      Showmessage('Orçamentos cancelados não poder ser excluidos.');
      exit;
    end;
  Botoes(dso.DataSet, TAction(Sender).Tag,OFI_CD_M_OCQ);
end;

procedure TOFI_FM_M_OCQ.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;
   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       codigo := OFI_CD_M_OCQ.FieldByName('ID_ORCAMENTO').AsString;
       DmGeral.Grava(OFI_CD_M_OCQ);
       HabilitarDesabCampos(true);
       btnImprimirEspelho.Enabled := true;
       btnCancelamento.Enabled    := true;
       OFI_CD_M_OCQ.Close;
       OFI_CD_M_OCQ.Data :=
       OFI_CD_M_OCQ.DataRequest(VarArrayOf([0, codigo,'1']));
     end
   else
     begin
       dpkValidade.SetFocus;
     end;
end;

procedure TOFI_FM_M_OCQ.Atualizar_xBusca;
begin
  if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
  else if xbusca_item = 'ID_ITEM' then
      begin
        lblItem.Caption := '<F7> Cód. fábrica';
        xbusca_item := 'COD_FABRICA';
      end
   else if xbusca_item = 'COD_FABRICA' then
      begin
        lblItem.Caption := '<F7> Cód. barra';
        xbusca_item := 'COD_BARRA';
      end
   else if xbusca_item = 'COD_BARRA' then
      begin
        lblItem.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end;
end;

procedure TOFI_FM_M_OCQ.btnAddItensClick(Sender: TObject);
begin
  inherited;
  pnlItens.Enabled  := True;

  OFI_CD_M_OCQ_ITEqtde.OnChange := nil;
  OFI_CD_M_OCQ_ITEvlr_unitario.OnChange := nil;
 // OFI_CD_M_OCQ_ITEper_desconto.OnChange := nil;
 // OFI_CD_M_OCQ_ITEvlr_desconto.OnChange := nil;
  OFI_CD_M_OCQ_ITEid_item.OnChange := nil;

  OFI_CD_M_OCQ.BeforePost := nil;

  OFI_CD_M_OCQ_ITE.Insert;

  OFI_CD_M_OCQ_ITEqtde.OnChange := OFI_CD_M_OCQ_ITEqtdeChange;
  OFI_CD_M_OCQ_ITEvlr_unitario.OnChange := OFI_CD_M_OCQ_ITEvlr_unitarioChange;
  //OFI_CD_M_OCQ_ITEper_desconto.OnChange := OFI_CD_M_OCQ_ITEper_descontoChange;
  //OFI_CD_M_OCQ_ITEvlr_desconto.OnChange := OFI_CD_M_OCQ_ITEvlr_descontoChange;
  OFI_CD_M_OCQ_ITEid_item.OnChange := OFI_CD_M_OCQ_ITEid_itemChange;
  OFI_CD_M_OCQ.BeforePost := OFI_CD_M_OCQBeforePost;
  txtBuscaItem.Enabled := true;
  txtBuscaItem.SetFocus;
end;

procedure TOFI_FM_M_OCQ.btnFiltroClick(Sender: TObject);
var
  index:integer;
begin
  inherited;
   index := 0;
  if (cbbPesquisa.ItemIndex = 0) then
    begin
      index := 0;
    end;
  if (cbbPesquisa.ItemIndex = 1) then
    begin
      index := 3;
    end;
  if (cbbPesquisa.ItemIndex = 2) then
    begin
      index := 2;
    end;
  if (cbbPesquisa.ItemIndex = 3) then
    begin
      index := 5;
    end;
   if (cbbPesquisa.ItemIndex = 4) then
    begin
      index := 4;
    end;
   if (cbbPesquisa.ItemIndex = 5) then
    begin
      index := 1;
    end;


   Screen.Cursor := crHourGlass;
  try
    inherited;
    if (index = 0)  then
       begin
         OFI_CD_M_OCQ.Close;
         OFI_CD_M_OCQ.Data :=
         OFI_CD_M_OCQ.DataRequest(
            VarArrayOf([index,trim(txtPesquisa.Text),'1']));
       end
    else
       begin
         OFI_CD_M_OCQ.Close;
         OFI_CD_M_OCQ.Data :=
         OFI_CD_M_OCQ.DataRequest(
            VarArrayOf([index,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString , trim(txtPesquisa.Text),'1']));
       end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TOFI_FM_M_OCQ.btnImprimirEspelhoClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not OFI_CD_M_OCQ.IsEmpty then
    begin
      codigo := OFI_CD_M_OCQid_orcamento.text;

      OFI_CD_R_OCQ.Close;
      OFI_CD_R_OCQ.Data :=
        OFI_CD_R_OCQ.DataRequest(VarArrayOf([0,codigo]));


        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(OFI_FR_M_OCQ.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;
        // OFI_FR_M_OCQ.Variables['ft_telfixo'] :=  QuotedStr('');
          dmGeral.BusCliente(0,OFI_CD_R_OCQ.FieldByName('ID_CLIENTE').AsString);
         if (not dmGeral.BUS_CD_C_CLI.IsEmpty) {and (not dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').IsNull)} then
          begin
            OFI_FR_M_OCQ.Variables['ft_telfixo']  :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').AsString);
            OFI_FR_M_OCQ.Variables['ft_telmovel'] :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('TEL_MOVEL').AsString);
            OFI_FR_M_OCQ.Variables['ft_email']    :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('EMAIL').AsString);
          end
         else
          begin
            OFI_FR_M_OCQ.Variables['ft_telfixo']  :=  QuotedStr('');
            OFI_FR_M_OCQ.Variables['ft_telmovel'] :=  QuotedStr('');
            OFI_FR_M_OCQ.Variables['ft_email']    :=  QuotedStr('');
          end;
        dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_OCQ.Name,xCodLme,xRevLme,nil);
        OFI_FR_M_OCQ.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        OFI_FR_M_OCQ.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        OFI_FR_M_OCQ.Variables['Opcoes'] :=  QuotedStr('');
        OFI_FR_M_OCQ.PrepareReport();
        OFI_FR_M_OCQ.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TOFI_FM_M_OCQ.Cancelaroramento1Click(Sender: TObject);
begin
  inherited;
  if  OFI_CD_M_OCQ.IsEmpty then
      begin
        ShowMessage('Nenhum orçamento foi selecionado.');
        exit;
      end;

  if (OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger in [1]) then
      begin
        ShowMessage('Este orçamento já foi importado.');
        exit;
      end;

  if (OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger in [2]) then
      begin
        ShowMessage('Este orçamento já foi cancelado.');
        exit;
      end;
  OFI_FM_M_OCV_CAN := TOFI_FM_M_OCV_CAN.Create(Self);
  OFI_FM_M_OCV_CAN.dso.DataSet := OFI_FM_M_OCQ.OFI_CD_M_OCQ;
  OFI_FM_M_OCV_CAN.Show;
end;

procedure TOFI_FM_M_OCQ.Cancelaroramentosvencidos1Click(Sender: TObject);
var
  registros: String;
begin
  inherited;

  if Dc_MessageDlgCheck('Deseja realmente cancelar os orçamentos vencidos?', mtConfirmation, [mbYes, mbNo],0, mrYes, true, false,'', nil) <> 7 then
     begin
         OFI_CD_M_OCQ.Close;
         OFI_CD_M_OCQ.Data :=
         OFI_CD_M_OCQ.DataRequest(
            VarArrayOf([90,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'1']));

       if OFI_CD_M_OCQ.IsEmpty then
          begin
            ShowMessage('Nenhum orçamento foi selecionado.');
            exit;
          end
       else
          begin
            Screen.Cursor := crHourGlass;
            try
              OFI_CD_M_OCQ.BeforePost := nil;
              registros := inttostr(OFI_CD_M_OCQ.recordCount);
              OFI_CD_M_OCQ.First;
              while not OFI_CD_M_OCQ.eof do
                 begin
                   OFI_CD_M_OCQ.edit;
                   OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger      := 2;
                   OFI_CD_M_OCQ.FieldByName('CAN_USUARIO').AsInteger := xFuncionario;
                   OFI_CD_M_OCQ.FieldByName('CAN_DATA').AsDateTime   := xDataSis;
                   OFI_CD_M_OCQ.FieldByName('CAN_HORA').AsDateTime   := xHoraSis;
                   OFI_CD_M_OCQ.FieldByName('CAN_MOTIVO').AsString   := 'Cancelamento de orçamento vencido';

                   OFI_CD_M_OCQ.Post;
                   OFI_CD_M_OCQ.Next;
                 end;

                try
                   if OFI_CD_M_OCQ.ApplyUpdates(0) = 0 then
                      begin
                        ShowMessage('Qtde de orçamentos cancelados: ' + registros +'!');
                      end;
                except
                   on e: exception do
                      begin
                        ShowMessage('Erro: ' + e.Message);
                        abort;
                      end;
                end;
            finally
               Screen.Cursor := crDefault;
               OFI_CD_M_OCQ.BeforePost := OFI_CD_M_OCQBeforePost;
            end;
          end;
     end;
end;

procedure TOFI_FM_M_OCQ.cbbAnalistaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
      dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1, '%']));
  cbbAnalista.DropDown;
end;

procedure TOFI_FM_M_OCQ.cbbAnalistaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if (dpkValidade.Focused or txtIdCliente.Focused or txtNomeCliente.Focused or
      txtEquip.Focused or cbbCondicaoPagamento.Focused) then
    begin
      exit;
    end;

   OFI_CD_M_OCQ.FieldByName('INT_NOMEANA').AsString := '';

  if OFI_CD_M_OCQ.FieldByName('ID_ANALISTA').Text = '' then
     begin
       ShowMessage('O campo "Analista" deve ser prenchido.');
       cbbAnalista.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario(0,OFI_CD_M_OCQ.FieldByName('ID_ANALISTA').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Analista não cadastrado.');
       cbbAnalista.SetFocus;
       Exit;
     end;

    if (dmGeral.BUS_CD_C_FUN.FieldByName('ATIVO').AsBoolean = False) then
     begin
       ShowMessage('Analista inativo.');
       cbbAnalista.SetFocus;
       Exit;
     end;

  OFI_CD_M_OCQ.FieldByName('INT_NOMEANA').AsString :=
               dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
end;

procedure TOFI_FM_M_OCQ.cbbCondicaoPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  cbbCondicaoPagamento.DropDown;
end;

procedure TOFI_FM_M_OCQ.cbbCondicaoPagamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if (dpkValidade.Focused or txtIdCliente.Focused or txtNomeCliente.Focused or txtEquip.Focused) then
    begin
      exit;
    end;

  OFI_CD_M_OCQ.FieldByName('INT_NOMECPG').AsString := '';

  if OFI_CD_M_OCQ.FieldByName('ID_CONDICAO_PAG').Text = '' then
     begin
       ShowMessage('O campo "Condição de Pagamento" deve ser preenchido.');
       cbbCondicaoPagamento.SetFocus;
       Exit;
     end;

  dmGeral.BusCondPgto(0,OFI_CD_M_OCQ.FieldByName('ID_CONDICAO_PAG').Text);
  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de Pagamento não cadastrado.');
       cbbCondicaoPagamento.SetFocus;
       Exit;
     end;

  if (dmGeral.BUS_CD_C_CPG.FieldByName('ATIVO').AsBoolean = False) then
     begin
       ShowMessage('Condição de Pagamento inativo.');
       cbbCondicaoPagamento.SetFocus;
       Exit;
     end;


  OFI_CD_M_OCQ.FieldByName('INT_NOMECPG').AsString :=
               dmGeral.BUS_CD_C_CPG.FieldByName('DESCRICAO').AsString;

  OFI_CD_M_OCQ_ITE.Cancel;
  if (OFI_CD_M_OCQ_ITE.RecordCount > 0) then
     begin
       OFI_CD_M_OCQ_ITEvlr_unitario.OnChange := nil;
       OFI_CD_M_OCQ_ITEqtde.OnChange := nil;
       OFI_CD_M_OCQ_ITE.AfterPost := nil;
       OFI_CD_M_OCQ.FieldByName('VLR_SERVICOS').AsCurrency := 0;
       OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
       OFI_CD_M_OCQ.FieldByName('VLR_TERCEIRO').AsCurrency := 0;
       OFI_CD_M_OCQ.FieldByName('VLR_TOTAL').AsCurrency :=0;
       OFI_CD_M_OCQ_ITE.First;
       while(not OFI_CD_M_OCQ_ITE.EOF) do
         begin
           OFI_CD_M_OCQ_ITE.Edit;
           OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;
           dmGeral.CalcPrecoItem(1,'0',OFI_CD_M_OCQ.FieldByName('ID_CONDICAO_PAG').Text,
                            OFI_CD_M_OCQ_ITE,false,false);
           OFI_CD_M_OCQ_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
           OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
           OFI_RN_M_OCQ.OfiOcqCalcTotalItem;
           OFI_CD_M_OCQ.FieldByName('VLR_TOTAL').AsCurrency :=
                   OFI_CD_M_OCQ.FieldByName('VLR_TOTAL').AsCurrency +
                   OFI_CD_M_OCQ_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

           if (pos(OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').text,'00-01-02-03-04-05-06') <> 0) then
             begin
               OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency :=
                      OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency +
                      OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency;
             end;

           if (OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
               (OFI_CD_M_OCQ_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=False) then
             begin
                OFI_CD_M_OCQ.FieldByName('VLR_SERVICOS').AsCurrency :=
                       OFI_CD_M_OCQ.FieldByName('VLR_SERVICOS').AsCurrency +
                       OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency;
             end;

           if (OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
              (OFI_CD_M_OCQ_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=True) then
             begin
               OFI_CD_M_OCQ.FieldByName('VLR_TERCEIRO').AsCurrency :=
                      OFI_CD_M_OCQ.FieldByName('VLR_TERCEIRO').AsCurrency +
                      OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency;
             end;
           OFI_CD_M_OCQ_ITE.Post;
           OFI_CD_M_OCQ_ITE.Next;
        end;

       OFI_CD_M_OCQ_ITEqtde.OnChange := OFI_CD_M_OCQ_ITEqtdeChange;
       OFI_CD_M_OCQ_ITEvlr_unitario.OnChange := OFI_CD_M_OCQ_ITEvlr_unitarioChange;
       OFI_CD_M_OCQ_ITE.AfterPost := OFI_CD_M_OCQ_ITEAfterPost;

       OFI_CD_M_OCQdes_servicos.OnChange := nil;
       OFI_CD_M_OCQdes_produtos.OnChange := nil;

       OFI_CD_M_OCQ.FieldByName('DES_SERVICOS').AsCurrency := 0;
       OFI_CD_M_OCQ.FieldByName('DES_PRODUTOS').AsCurrency := 0;

       OFI_CD_M_OCQdes_servicos.OnChange := OFI_CD_M_OCQdes_servicosChange;
       OFI_CD_M_OCQdes_produtos.OnChange := OFI_CD_M_OCQdes_produtosChange;
     end;
end;

procedure TOFI_FM_M_OCQ.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if (cbbPesquisa.ItemIndex = 0) then
    begin
      txtPesquisa.NumbersOnly := true;
    end;
  if (cbbPesquisa.ItemIndex = 1) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
  if (cbbPesquisa.ItemIndex = 2) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
  if (cbbPesquisa.ItemIndex = 3) then
    begin
      txtPesquisa.NumbersOnly := true;
    end;
   if (cbbPesquisa.ItemIndex = 4) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
   if (cbbPesquisa.ItemIndex = 5) then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
end;

procedure TOFI_FM_M_OCQ.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger = 1) then
    begin
      AFont.Color := clGreen;
    end;
    if (OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger = 2) then
      begin
        AFont.Color := clRed;
      end;
end;

procedure TOFI_FM_M_OCQ.dgItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
      dgItensIButton.Enabled := false;
     if OFI_CD_M_OCQ_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     if (OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') then
       begin
         OFI_CD_M_OCQdes_servicos.OnChange := nil;
         OFI_CD_M_OCQ.FieldByName('DES_SERVICOS').AsCurrency := 0;
         OFI_CD_M_OCQdes_servicos.OnChange := OFI_CD_M_OCQdes_servicosChange;
       end
     else
       begin
        OFI_CD_M_OCQdes_produtos.OnChange := nil;
        OFI_CD_M_OCQ.FieldByName('DES_PRODUTOS').AsCurrency := 0;
        OFI_CD_M_OCQdes_produtos.OnChange := OFI_CD_M_OCQdes_produtosChange;
       end;
     OFI_CD_M_OCQ_ITE.Delete;
     OFI_CD_M_OCQ_ITE.Edit;
  finally
    dgItensIButton.Enabled := true;
  end;
end;

procedure TOFI_FM_M_OCQ.dpkValidadeExit(Sender: TObject);
begin
  inherited;
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
    begin
      OFI_CD_M_OCQ.FieldByName('DTA_VALIDADE').AsString := '';
      exit;
    end;

  if (OFI_CD_M_OCQ.FieldByName('DTA_VALIDADE').AsString = '') then
    begin
      ShowMessage('O campo "Validade" deve ser preenchido.');
      dpkValidade.SetFocus;
      exit;
    end
  else
    begin
      if OFI_CD_M_OCQ.FieldByName('DTA_VALIDADE').AsDateTime <
        OFI_CD_M_OCQ.FieldByName('DTA_ORCAMENTO').AsDateTime then
        begin
          ShowMessage('Data de validade não pode ser menor que a data do orçamento.');
          OFI_CD_M_OCQ.FieldByName('DTA_VALIDADE').AsString := '';
        end;
    end;
end;

procedure TOFI_FM_M_OCQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  OFI_CD_M_OCQ.Close;
  FreeAndNil(OFI_FM_M_OCQ);
end;

procedure TOFI_FM_M_OCQ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_F2) and (OFI_CD_M_OCQ.state in [dsInsert,dsEdit]) then
    txtDescServico.SetFocus;
end;

procedure TOFI_FM_M_OCQ.FormShow(Sender: TObject);
begin
  inherited;
  OFI_CD_M_OCQ.Close;
  OFI_CD_M_OCQ.Data := OFI_CD_M_OCQ.DataRequest(VarArrayOf([0, '']));
  OFI_CD_M_OCQ.Open;

  AbrirBusca;

  pnlItens.Enabled := false;

  xbusca_item := '';
  Atualizar_xBusca;
  txtPesquisa.SetFocus;

  txtReclamacao.Color := clWhite;

  txtEquipDescricao.ReadOnly := true;
  txtEquipDescricao.Color := $00DADADA;

  txtVlrUnitario.Enabled := false;
  txtVlrUnitario.Color := $00DADADA;

  txtVlrServicos.ReadOnly := true;
  txtVlrServicos.Color := $00DADADA;

  txtVlrProduto.ReadOnly := true;
  txtVlrProduto.Color := $00DADADA;

  txtVlrTerceiro.ReadOnly := true;
  txtVlrTerceiro.Color := $00DADADA;

  txtVlrTotal1.ReadOnly := true;
  txtVlrTotal1.Color := $00DADADA;

  permiteAltVlrUnit:=false;
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_ALTERA_PRECO').AsBoolean = True) then
    begin
      txtVlrUnitario.Enabled := true;
      txtVlrUnitario.Color := clWhite;
      permiteAltVlrUnit:=true;
    end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_ALTERA_PRECO').AsBoolean = false) then
    begin
       dmGeral.BusFuncionario(0,xFuncionario.ToString(xFuncionario));
      if (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_ALT_PRE_PRO').AsBoolean = True) then
        begin
         txtVlrUnitario.Enabled := true;
         txtVlrUnitario.Color := clWhite;
          permiteAltVlrUnit:=true;
        end;
    end;
end;

procedure TOFI_FM_M_OCQ.HabilitarDesabCampos(Ativar: Boolean);
begin
  txtIdCliente.Enabled := Ativar;
  txtNomeCliente.Enabled := Ativar;
  txtEquip.Enabled := Ativar;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger = 1) then
     begin
       raise Exception.Create('Operação de exclusão não permitida.');
        abort;
     end;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if (OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger in [1,2]) then
     begin
       raise Exception.Create('Operação de alteração não permitida.');
        abort;
     end;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  OFI_RN_M_OCQ.OfiMascaraOcq;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQBeforePost(DataSet: TDataSet);
begin
  inherited;
  OFI_RN_M_OCQ.OfiValidaOcq;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQdes_produtosChange(Sender: TField);
begin
  inherited;
  OFI_RN_M_OCQ.OFI_CD_M_OCQdes_produtosChange;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQdes_servicosChange(Sender: TField);
begin
  inherited;
  OFI_RN_M_OCQ.OFI_CD_M_OCQdes_servicosChange;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQNewRecord(DataSet: TDataSet);
begin
  inherited;
  OFI_RN_M_OCQ.OfiNovaOcq;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  dmgeral.VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEAfterPost(DataSet: TDataSet);
begin
  inherited;
  OFI_RN_M_OCQ.OfiCalculaVlrTotaisOcq;
  OFI_RN_M_OCQ.OfiRatearVlrDescOcq;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  OFI_RN_M_OCQ.OfiMascaraOcqIte;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEBeforePost(DataSet: TDataSet);
begin
  inherited;
  OFI_RN_M_OCQ.OfiValidaOcqIte(DataSet);
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEid_itemChange(Sender: TField);
begin
  inherited;
  OFI_RN_M_OCQ.OFI_CD_M_OCQ_ITEitemChange;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQ_ITENewRecord(DataSet: TDataSet);
begin
  inherited;
  OFI_RN_M_OCQ.OfiNovaOcqIte;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEqtdeChange(Sender: TField);
begin
  inherited;
  OFI_RN_M_OCQ.OfiZerarVlrDescOcq;
  OFI_RN_M_OCQ.ofiOcqCalcTotalItem;
end;

procedure TOFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEvlr_unitarioChange(Sender: TField);
begin
  inherited;
  OFI_RN_M_OCQ.OfiZerarVlrDescOcq;
  OFI_RN_M_OCQ.ofiOcqCalcTotalItem;
end;

procedure TOFI_FM_M_OCQ.pnlItensExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.Focused) or (dgItens.Focused) or
     (not dgItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             Exit;
           end;

        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              Exit;
           end;

        OFI_CD_M_OCQ_ITE.Cancel;
        OFI_CD_M_OCQ_ITE.Edit;

        finally
           pnlItens.Enabled := False;
        end;
      end;
end;

procedure TOFI_FM_M_OCQ.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);

   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           OFI_CD_M_OCQ_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           OFI_CD_M_OCQ_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           OFI_CD_M_OCQ_ITE.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

           OFI_CD_M_OCQ_ITE.FieldByName('nome_ite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TOFI_FM_M_OCQ.txtBuscaItemExit(Sender: TObject);
var
  id_categoria:Integer;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            Exit;
          end;

  if OFI_CD_M_OCQ_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin


       if btnAddItens.Focused then
          Exit;

       if dgItens.Focused then
          Exit;

       if not dgItensIButton.Enabled then
          Exit;

       if (txtQtde.Focused) or (txtVlrUnitario.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser preenchido.');
             txtBuscaItem.SetFocus;
             Exit;
           end
       else
           begin
             pnlItens.Enabled := False;
             Exit;
           end;
     end
  else
     begin
       if OFI_CD_M_OCQ_ITE.state in [dsBrowse] then
          OFI_CD_M_OCQ_ITE.Edit;
     end;

  if trim(OFI_CD_M_OCQ_ITE.FieldByName('ID_BUSCA_ITEM').Text) = '0' then
     begin
       // OFI_CD_M_OCQdes_servicos.OnChange := nil;
        OFI_CD_M_OCQ_ITE.FieldByName('ID_ITEM').AsInteger := 0;

        //OFI_CD_M_OCQdes_servicos.OnChange := OFI_CD_M_OCQdes_servicosChange;
        txtItemDescricao.ReadOnly := false;
        txtItemDescricao.Color := clWhite;
        txtItemDescricao.SetFocus;
        exit;
     end;

  OFI_CD_M_OCQ_ITE.FieldByName('nome_ite').AsString := '';
  OFI_CD_M_OCQ_ITE.FieldByName('int_nomeite').AsString := '';
  OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEAPL').AsString := '';
  OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEREF').AsString := '';
  OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEUND').AsString := '';
  OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString := '';



  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
     end;

  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtBuscaItem.Text]));
     end;

  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
     end;

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
       Exit;
     end;

  dmGeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString);

  // Inserido por Maxsuel Victor, 21/09/2016 conversado com Mariel
  // se o resultado for igual = 0, quer dizer que não foi encontrado

  if (pos(dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString,'00-04-09') = 0) then
      begin
        ShowMessage('O item só pode ser de grupo com tipo do item igual a: ' + #13 +
                    '- Mercadoria para Revenda;' + #13 +
                    '- Produto Acabado;' + #13 +
                    '- ou Serviço;');
        txtBuscaItem.SetFocus;
        OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
        exit;
      end;

  {if dmGeral.BUS_CD_C_GRU.IsEmpty or (pos(dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString,'07-08')<>0) then
    begin
      ShowMessage('Tipo de item não permitido.');
      txtBuscaItem.SetFocus;
      OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
      exit;
    end;}

   if (dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString = '09') then
    begin
      OFI_CD_M_OCQ_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean :=
         dmGeral.BUS_CD_C_GRU.FieldByName('SER_TERCEIRO').AsBoolean;
    end;


  OFI_CD_M_OCQ_ITE.FieldByName('ID_ITEM').Text :=
        dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

   id_categoria:= 0;

  if (((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = true) or
        (dmGeral.CAD_CD_C_PAR_MOD.FieldBYName('OME').AsBoolean = true)) and
        (dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString ='09')) then
        begin
            dmGeral.BUS_CD_C_ITE_CAT.Close;
            dmGeral.BUS_CD_C_ITE_CAT.Data :=
            dmGeral.BUS_CD_C_ITE_CAT.DataRequest(
                   VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,
                                  IntToStr(id_categoria)]));

            if ((dmGeral.BUS_CD_C_ITE_CAT.IsEmpty) or
               (dmGeral.BUS_CD_C_ITE_CAT.FieldByName('PRECO').AsString = '')) then
              begin
                ShowMessage('Preço do item não cadastrado para categoria do equipamento');
                OFI_CD_M_OCQ_ITE.FieldByName('int_nomeite').Text := '';
                OFI_CD_M_OCQ_ITE.FieldByName('nome_ite').Text := '';
                OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEAPL').AsString  := '';
                OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEREF').AsString := '';
                OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEUND').AsString := '';
                OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString := '';
                txtBuscaItem.SetFocus;
                exit;
              end;

        end;

  OFI_CD_M_OCQ_ITE.FieldByName('int_nomeite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  OFI_CD_M_OCQ_ITE.FieldByName('nome_ite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEAPL').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('APLICACAO').AsString;

  OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEREF').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('REFERENCIA').AsString;

  OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEUND').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;

  OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

  OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

  OFI_CD_M_OCQ_ITE.FieldByname('PER_DESCONTO').AsCurrency := 0;

  try
   pnlItens.onExit := nil;

  finally
     pnlItens.OnExit := pnlItensExit;
  end;

end;

procedure TOFI_FM_M_OCQ.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;

   if (Key = vk_F2) then
     begin
       pnlItens.OnExit := nil;
       dmGeral.FAT_CD_M_PED_ITE.cancel;
       ActiveControl := nil;
       PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
       btnGrava.SetFocus;
       pnlItens.OnExit := pnlItensExit;
     end;
end;

procedure TOFI_FM_M_OCQ.txtCnpjCpfExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
    begin
      exit;
    end;

   if txtIdCliente.Focused or dpkValidade.Focused or txtNomeCliente.Focused then
    begin
      exit;
    end;

  if (OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString = '') then
    begin
      ShowMessage('O campo "CNPJ/CPF" deve ser preenchido.');
      txtCnpjCpf.SetFocus;
      exit;
    end;

   if not (OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString.Length in [11,14]) then
     begin
       ShowMessage('CNPJ/CPF inválido.');
       txtCnpjCpf.SetFocus;
       exit;
     end;

   if (OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString.Length = 11) then
     begin
       if (enFunc.VerCPF(OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString) = False) then
         begin
            ShowMessage('CNPJ/CPF inválido.');
            txtCnpjCpf.SetFocus;
            exit;
         end;
     end;

    if (OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString.Length = 14) then
     begin
       if (enFunc.VerCNPJ(OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString) = False) then
         begin
            ShowMessage('CNPJ/CPF inválido.');
            txtCnpjCpf.SetFocus;
            exit;
         end;
     end;
end;

procedure TOFI_FM_M_OCQ.txtDescServicoEnter(Sender: TObject);
begin
  inherited;
  OFI_CD_M_OCQdes_servicos.OnChange:= OFI_CD_M_OCQdes_servicosChange;
end;

procedure TOFI_FM_M_OCQ.txtEquipButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_EQP := TPSQ_FM_X_EQP.Create(Self);
  PSQ_FM_X_EQP.ShowModal;
  if not PSQ_FM_X_EQP.BUS_CD_C_EQP.IsEmpty then
     begin
        OFI_CD_M_OCQ.FieldByName('id_equipamento').Text :=
                PSQ_FM_X_EQP.BUS_CD_C_EQP.FieldByName('id_equipamento').AsString;

        OFI_CD_M_OCQ.FieldByName('int_nomeeqp').Text :=
                PSQ_FM_X_EQP.BUS_CD_C_EQP.FieldByName('descricao').AsString;
     end;
   PSQ_FM_X_EQP.Free;
end;

procedure TOFI_FM_M_OCQ.txtEquipExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
    begin
      exit;
    end;

  if (dpkValidade.Focused or txtIdCliente.Focused or txtNomeCliente.Focused) then
    begin
      exit;
    end;

  if (trim(OFI_CD_M_OCQ.FieldByName('ID_EQUIPAMENTO').AsString) = '') then
    begin
      ShowMessage('O campo "Equipamento" deve ser preenchido.');
      txtEquip.SetFocus;
      exit;
    end;

  OFI_CD_M_OCQ.FieldByName('INT_NOMEEQP').Text := '';

  dmGeral.BUS_CD_C_EQP.Close;
  dmGeral.BUS_CD_C_EQP.Data :=
  dmGeral.BUS_CD_C_EQP.DataRequest(VarArrayOf([0, trim(OFI_CD_M_OCQ.FieldByName('ID_EQUIPAMENTO').Text)]));
  if (dmGeral.BUS_CD_C_EQP.IsEmpty) then
    begin
      ShowMessage('Equipamento não encontrado.');
      txtEquip.SetFocus;
      Exit;
    end;
  OFI_CD_M_OCQ.FieldByName('ID_EQUIPAMENTO').AsString :=
    dmGeral.BUS_CD_C_EQP.FieldByName('ID_EQUIPAMENTO').AsString;
  OFI_CD_M_OCQ.FieldByName('INT_NOMEEQP').Text :=
    dmGeral.BUS_CD_C_EQP.FieldByName('DESCRICAO').AsString;
end;

procedure TOFI_FM_M_OCQ.txtIdClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           OFI_CD_M_OCQ.FieldByName('id_cliente').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('id_cliente').AsString;

           OFI_CD_M_OCQ.FieldByName('nome_cliente').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TOFI_FM_M_OCQ.txtIdClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if dpkValidade.Focused then
    begin
      exit;
    end;

  if (OFI_CD_M_OCQ.FieldByName('ID_CLIENTE').Text <> '') then
    begin
      OFI_CD_M_OCQ.FieldByName('nome_cliente').Text := '';
      OFI_CD_M_OCQ.FieldByName('doc_cnpj_cpf').Text := '';
      dmGeral.BUS_CD_C_CLI.Close;
      dmGeral.BUS_CD_C_CLI.Data :=
      dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, OFI_CD_M_OCQ.FieldByName('ID_CLIENTE').Text]));

      if dmGeral.BUS_CD_C_CLI.IsEmpty then
        begin
         ShowMessage('Cliente não cadastrado.');
         txtIDCliente.SetFocus;
         Exit;
        end;

      if (dmGeral.BUS_CD_C_CLI.FieldByName('ATIVO').AsBoolean = False) then
         begin
           ShowMessage('Cliente inativo.');
           txtIDCliente.SetFocus;
           Exit;
         end;

      OFI_CD_M_OCQ.FieldByName('nome_cliente').Text :=
                         dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
      OFI_CD_M_OCQ.FieldByName('doc_cnpj_cpf').Text :=
                         dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;
      txtNomeCliente.ReadOnly := true;
      txtCnpjCpf.ReadOnly := true;
      txtEquip.SetFocus;
      exit;

    end;
    txtNomeCliente.ReadOnly := false;
    txtCnpjCpf.ReadOnly := false;
    txtNomeCliente.SetFocus;
end;

procedure TOFI_FM_M_OCQ.txtNomeClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
    begin
      exit;
    end;

  if txtIdCliente.Focused or dpkValidade.Focused then
    begin
      exit;
    end;

  if (OFI_CD_M_OCQ.FieldByName('NOME_CLIENTE').AsString = '') then
    begin
      ShowMessage('O nome do cliente deve ser preenchido.');
      txtIdCliente.SetFocus;
      exit;
    end;
end;

procedure TOFI_FM_M_OCQ.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_OCQ.txtQtdeEnter(Sender: TObject);
var
  id_item,id_busca_item,desc,referencia,tipo_item,und,aplicacao:String;
  ser_terceiro:Boolean;
  vlrdesc,perdesc,vlrunit:currency;
begin
  inherited;
  if OFI_CD_M_OCQ_ITE.FieldByName('id_item').AsInteger <> 0 then
    begin
      if OFI_CD_M_OCQ_ITE.State in [dsInsert] then
         begin
           pnlItens.Enabled := true;
           id_busca_item := OFI_CD_M_OCQ_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
           id_item := OFI_CD_M_OCQ_ITE.FieldByName('ID_ITEM').Text;
           desc := OFI_CD_M_OCQ_ITE.FieldByName('nome_ite').Text;
           aplicacao := OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEAPL').AsString;
          // id_cor := OFI_CD_M_OCQ_ITE.FieldByName('ID_COR').Text;
           //id_tamanho := OFI_CD_M_OCQ_ITE.FieldByName('ID_TAMANHO').AsString;
           referencia := OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEREF').AsString;
           und := OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEUND').AsString;
           ser_terceiro := OFI_CD_M_OCQ_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean;
           tipo_item := OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString;
           vlrdesc := OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
           perdesc := OFI_CD_M_OCQ_ITE.FieldByname('PER_DESCONTO').AsCurrency;
           vlrUnit := OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency;

           OFI_CD_M_OCQ_ITE.Cancel;

           if dmGeral.LocalizarRegItem(OFI_CD_M_OCQ_ITE,OFI_FM_M_OCQ.Name,id_item,'0','0','','') then
              begin
                ShowMessage('Item já inserido no orçamento.');
                OFI_CD_M_OCQ_ITE.Insert;
                txtBuscaItem.SetFocus;
                exit;
              end
           else
              begin
                OFI_CD_M_OCQ_ITE.Insert;
                OFI_CD_M_OCQ_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                OFI_CD_M_OCQ_ITE.FieldByName('ID_ITEM').Text := id_item;
                OFI_CD_M_OCQ_ITE.FieldByName('int_nomeite').Text := desc;
                OFI_CD_M_OCQ_ITE.FieldByName('nome_ite').Text := desc;
                OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEAPL').AsString := aplicacao;
                OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEREF').AsString := referencia;
                OFI_CD_M_OCQ_ITE.FieldByName('INT_NOMEUND').AsString := und;
                OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString := tipo_item;
                OFI_CD_M_OCQ_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean := ser_terceiro;
                OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency := vlrdesc;
                OFI_CD_M_OCQ_ITE.FieldByname('PER_DESCONTO').AsCurrency := perdesc;
                OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency := vlrUnit;
                OFI_CD_M_OCQ_ITE.FieldByName('QTDE').AsString := '';
              end;
         end;
    end;
end;

procedure TOFI_FM_M_OCQ.txtQtdeExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or dgItens.Focused  then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(OFI_CD_M_OCQ_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;

  if txtVlrUnitario.CanFocus then
    begin
      txtVlrUnitario.SetFocus;
      exit;
    end;

  if (OFI_CD_M_OCQ_ITE.FieldByName('ID_ITEM').AsInteger=0) and  (permiteAltVlrUnit=false) then
    begin
      txtVlrUnitario.Enabled := true;
      txtVlrUnitario.Color := clWhite;
      txtVlrUnitario.SetFocus;
      exit;
    end;

  seq_item := OFI_CD_M_OCQ_ITE.FieldByName('ID_SEQUENCIA').AsString;
   if OFI_CD_M_OCQ_ITE.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
     begin
       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         OFI_CD_M_OCQ_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('OFI_TB_M_OCQ_ITE');
         seq_item := OFI_CD_M_OCQ_ITE.FieldByName('ID_SEQUENCIA').AsString;
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

  OFI_CD_M_OCQ_ITE.Post;

  txtItemDescricao.ReadOnly := true;
  txtItemDescricao.Color := $00DADADA;
  pnlItens.Enabled := False;
  btnAddItens.SetFocus;
  OFI_CD_M_OCQ_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TOFI_FM_M_OCQ.txtVlrUnitarioExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or txtQtde.Focused or
     dgItens.Focused  then
     begin
       exit;
     end;

  if not (dmGeral.TesValVlrUnitario(OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
       txtVlrUnitario.SetFocus;
       abort;
     end;

   if OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency <
       OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
    begin
      ShowMessage('O campo "Valor unitário" é menor que o preço tabelado.');
    end;

   if OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency >
         OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
      begin
        ShowMessage('O campo "Valor unitário" é maior que o preço tabelado.');
      end;

   seq_item := OFI_CD_M_OCQ_ITE.FieldByName('ID_SEQUENCIA').AsString;
   if OFI_CD_M_OCQ_ITE.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
     begin
       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         OFI_CD_M_OCQ_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('OFI_TB_M_OCQ_ITE');
         seq_item := OFI_CD_M_OCQ_ITE.FieldByName('ID_SEQUENCIA').AsString;
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

  OFI_CD_M_OCQ_ITE.Post;

  pnlItens.Enabled := False;
  txtItemDescricao.ReadOnly := true;
  txtItemDescricao.Color := $00DADADA;
  if (permiteAltVlrUnit=false) then
    begin
      txtVlrUnitario.Enabled := false;
      txtVlrUnitario.Color := $00DADADA;
    end;

  btnAddItens.SetFocus;
  OFI_CD_M_OCQ_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

end.
