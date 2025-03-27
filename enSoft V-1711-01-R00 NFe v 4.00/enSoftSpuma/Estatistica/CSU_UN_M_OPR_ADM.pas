unit CSU_UN_M_OPR_ADM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask,
  vcl.Wwdbedit, Vcl.Grids, Vcl.DBGrids, Vcl.ImgList, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, JvExExtCtrls, JvExtComponent, JvPanel,
  cxButtons, Vcl.ExtCtrls, vcl.wwdbigrd, vcl.wwdbgrid, JvExMask, JvToolEdit,
  JvDBControls, Datasnap.DBClient, Vcl.ComCtrls, Vcl.CheckLst,System.Generics.Collections, JvgPage;

type
  TCSU_FM_M_OPR_ADM = class(TPAD_FM_X_FRM)
    dsoOpp: TwwDataSource;
    dsQtdTotIte: TwwDataSource;
    dsQtdeItePed: TwwDataSource;
    BUS_CD_M_OPR_QTD_TOT_ITE: TClientDataSet;
    BUS_CD_M_OPR_QTD_ITE_PED: TClientDataSet;
    dsPedPend: TwwDataSource;
    BUS_CD_M_PED_PEN: TClientDataSet;
    dsPedPendItens: TwwDataSource;
    BUS_CD_M_PED_PEN_ITE: TClientDataSet;
    dsPedDig: TwwDataSource;
    BUS_CD_M_PED_DIG: TClientDataSet;
    BUS_CD_M_PED_DIG_ITE: TClientDataSet;
    dsPedDigIte: TwwDataSource;
    BUS_CD_M_EST_ALM_PEN: TClientDataSet;
    BUS_CD_M_PED_PENint_selecao: TBooleanField;
    BUS_CD_M_PED_PENid_pedido: TIntegerField;
    BUS_CD_M_PED_PENid_empresa: TIntegerField;
    BUS_CD_M_PED_PENdta_pedido: TDateField;
    BUS_CD_M_PED_PENid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_PED_PENid_vendedor: TIntegerField;
    BUS_CD_M_PED_PENobs: TWideStringField;
    BUS_CD_M_PED_PENvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_PENvlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_PENper_desconto: TFloatField;
    BUS_CD_M_PED_PENvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_PENhor_pedido: TSQLTimeStampField;
    BUS_CD_M_PED_PENid_condicao_pag: TIntegerField;
    BUS_CD_M_PED_PENpcp_obs: TWideStringField;
    BUS_CD_M_PED_PENpcp_id_opr: TIntegerField;
    BUS_CD_M_PED_PENsituacao: TIntegerField;
    BUS_CD_M_PED_PENsituacao_aprovacao: TIntegerField;
    BUS_CD_M_PED_PENid_atendente: TIntegerField;
    BUS_CD_M_PED_PENid_responsavel: TIntegerField;
    BUS_CD_M_PED_PENid_cliente: TIntegerField;
    BUS_CD_M_PED_PENtipo_restricao: TWideStringField;
    BUS_CD_M_PED_PENid_almoxarifado: TIntegerField;
    BUS_CD_M_PED_PENjustificativa: TWideStringField;
    BUS_CD_M_PED_PENid_usuario_lib: TIntegerField;
    BUS_CD_M_PED_PENcod_lme: TWideStringField;
    BUS_CD_M_PED_PENrev_lme: TWideStringField;
    BUS_CD_M_PED_PENorigem: TIntegerField;
    BUS_CD_M_PED_PENdispositivo: TWideStringField;
    BUS_CD_M_PED_PENgps_latitude: TFloatField;
    BUS_CD_M_PED_PENgps_longitude: TFloatField;
    BUS_CD_M_PED_PENcubagem: TFloatField;
    BUS_CD_M_PED_PENid_orcamento: TIntegerField;
    BUS_CD_M_PED_PENenvia_carga: TBooleanField;
    BUS_CD_M_PED_PENdta_prev_entrega: TDateField;
    BUS_CD_M_PED_PENid_abertura: TIntegerField;
    BUS_CD_M_PED_PENdias_cpg_prazo: TIntegerField;
    BUS_CD_M_PED_PENoffline: TBooleanField;
    BUS_CD_M_PED_PENconferido: TBooleanField;
    BUS_CD_M_PED_PENid_conf: TIntegerField;
    BUS_CD_M_PED_PENdta_conf: TDateField;
    BUS_CD_M_PED_PENhor_conf: TTimeField;
    BUS_CD_M_PED_PENresultado_conf: TIntegerField;
    BUS_CD_M_PED_PENid_resp_conf: TIntegerField;
    BUS_CD_M_PED_PENint_nomecli: TWideStringField;
    BUS_CD_M_PED_PENint_nometme: TWideStringField;
    BUS_CD_M_PED_PENint_nomefun: TWideStringField;
    BUS_CD_M_PED_PENint_nomecpg: TWideStringField;
    BUS_CD_M_PED_PENint_nomeate: TWideStringField;
    BUS_CD_M_PED_PENint_nome_rcn: TWideStringField;
    BUS_CD_M_PED_PENint_nomeres: TWideStringField;
    BUS_CD_M_PED_PENint_nomecid: TWideStringField;
    BUS_CD_M_PED_PENint_nomeest: TWideStringField;
    BUS_CD_M_PED_PENint_cpfcnpj: TWideStringField;
    BUS_CD_M_PED_PENint_pessoacli: TIntegerField;
    BUS_CD_M_PED_PENint_id_perfil: TIntegerField;
    BUS_CD_M_PED_PENid_ors: TIntegerField;
    BUS_CD_M_PED_PENint_sitaprov: TWideStringField;
    BUS_CD_M_PED_PENint_sitped: TWideStringField;
    BUS_CD_M_PED_PENint_ie_rg_cli: TWideStringField;
    BUS_CD_M_PED_PENint_nomereg: TWideStringField;
    BUS_CD_M_PED_PENBUS_SQ_M_PED_ITE: TDataSetField;
    BUS_CD_M_PED_PEN_ITEid_pedido: TIntegerField;
    BUS_CD_M_PED_PEN_ITEid_item: TIntegerField;
    BUS_CD_M_PED_PEN_ITEqtde: TFloatField;
    BUS_CD_M_PED_PEN_ITEvlr_unitario: TFMTBCDField;
    BUS_CD_M_PED_PEN_ITEvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_PEN_ITEvlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_PEN_ITEvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_PEN_ITEint_nomeite: TWideStringField;
    BUS_CD_M_PED_PEN_ITEint_nomecor: TWideStringField;
    BUS_CD_M_PED_PEN_ITEint_id_und_venda: TWideStringField;
    BUS_CD_M_PED_PEN_ITEint_nometam: TWideStringField;
    BUS_CD_M_PED_PENint_num_lote_opr: TWideStringField;
    BUS_CD_M_PED_DIGint_selecao: TBooleanField;
    BUS_CD_M_PED_DIGid_pedido: TIntegerField;
    BUS_CD_M_PED_DIGid_empresa: TIntegerField;
    BUS_CD_M_PED_DIGdta_pedido: TDateField;
    BUS_CD_M_PED_DIGid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_PED_DIGid_vendedor: TIntegerField;
    BUS_CD_M_PED_DIGobs: TWideStringField;
    BUS_CD_M_PED_DIGvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_DIGvlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_DIGper_desconto: TFloatField;
    BUS_CD_M_PED_DIGvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_DIGhor_pedido: TSQLTimeStampField;
    BUS_CD_M_PED_DIGid_condicao_pag: TIntegerField;
    BUS_CD_M_PED_DIGpcp_obs: TWideStringField;
    BUS_CD_M_PED_DIGpcp_id_opr: TIntegerField;
    BUS_CD_M_PED_DIGsituacao: TIntegerField;
    BUS_CD_M_PED_DIGsituacao_aprovacao: TIntegerField;
    BUS_CD_M_PED_DIGid_atendente: TIntegerField;
    BUS_CD_M_PED_DIGid_responsavel: TIntegerField;
    BUS_CD_M_PED_DIGid_cliente: TIntegerField;
    BUS_CD_M_PED_DIGtipo_restricao: TWideStringField;
    BUS_CD_M_PED_DIGid_almoxarifado: TIntegerField;
    BUS_CD_M_PED_DIGjustificativa: TWideStringField;
    BUS_CD_M_PED_DIGid_usuario_lib: TIntegerField;
    BUS_CD_M_PED_DIGcod_lme: TWideStringField;
    BUS_CD_M_PED_DIGrev_lme: TWideStringField;
    BUS_CD_M_PED_DIGorigem: TIntegerField;
    BUS_CD_M_PED_DIGdispositivo: TWideStringField;
    BUS_CD_M_PED_DIGgps_latitude: TFloatField;
    BUS_CD_M_PED_DIGgps_longitude: TFloatField;
    BUS_CD_M_PED_DIGcubagem: TFloatField;
    BUS_CD_M_PED_DIGid_orcamento: TIntegerField;
    BUS_CD_M_PED_DIGenvia_carga: TBooleanField;
    BUS_CD_M_PED_DIGdta_prev_entrega: TDateField;
    BUS_CD_M_PED_DIGid_abertura: TIntegerField;
    BUS_CD_M_PED_DIGdias_cpg_prazo: TIntegerField;
    BUS_CD_M_PED_DIGoffline: TBooleanField;
    BUS_CD_M_PED_DIGconferido: TBooleanField;
    BUS_CD_M_PED_DIGid_conf: TIntegerField;
    BUS_CD_M_PED_DIGdta_conf: TDateField;
    BUS_CD_M_PED_DIGhor_conf: TTimeField;
    BUS_CD_M_PED_DIGresultado_conf: TIntegerField;
    BUS_CD_M_PED_DIGid_resp_conf: TIntegerField;
    BUS_CD_M_PED_DIGint_nomecli: TWideStringField;
    BUS_CD_M_PED_DIGint_nometme: TWideStringField;
    BUS_CD_M_PED_DIGint_nomefun: TWideStringField;
    BUS_CD_M_PED_DIGint_nomecpg: TWideStringField;
    BUS_CD_M_PED_DIGint_nomeate: TWideStringField;
    BUS_CD_M_PED_DIGint_nome_rcn: TWideStringField;
    BUS_CD_M_PED_DIGint_nomeres: TWideStringField;
    BUS_CD_M_PED_DIGint_nomecid: TWideStringField;
    BUS_CD_M_PED_DIGint_nomeest: TWideStringField;
    BUS_CD_M_PED_DIGint_cpfcnpj: TWideStringField;
    BUS_CD_M_PED_DIGint_pessoacli: TIntegerField;
    BUS_CD_M_PED_DIGint_id_perfil: TIntegerField;
    BUS_CD_M_PED_DIGid_ors: TIntegerField;
    BUS_CD_M_PED_DIGint_sitaprov: TWideStringField;
    BUS_CD_M_PED_DIGint_sitped: TWideStringField;
    BUS_CD_M_PED_DIGint_ie_rg_cli: TWideStringField;
    BUS_CD_M_PED_DIGint_nomereg: TWideStringField;
    BUS_CD_M_PED_DIGint_num_lote_opr: TWideStringField;
    BUS_CD_M_PED_DIGBUS_SQ_M_PED_ITE: TDataSetField;
    jpgGerencial: TJvgPageControl;
    tbFiltro: TTabSheet;
    Panel2: TPanel;
    gbxFiltro: TGroupBox;
    cxButton1: TcxButton;
    tsOp: TTabSheet;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    txtCodOpr: TEdit;
    Label2: TLabel;
    lblPeriodo: TLabel;
    txtPeriodoIni: TJvDateEdit;
    Label5: TLabel;
    txtPeriodoFinal: TJvDateEdit;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    grdPedidosPend: TwwDBGrid;
    grdPedidosItensPend: TwwDBGrid;
    txtCodOprPedPend: TEdit;
    btnFiltrarPedPend: TcxButton;
    grdPedidosItensDigApr: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    txtNroPedidoPedDig: TEdit;
    btnBuscarPedDig: TcxButton;
    Panel1: TPanel;
    PageControl1: TPageControl;
    tsItensProducao: TTabSheet;
    lblLegendaItePro: TLabel;
    Panel6: TPanel;
    dgItensProduzir: TwwDBGrid;
    tsTotalItem: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    tsTotalItePed: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    btnRequisicoes: TcxButton;
    btnPedidoVenda: TcxButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dgOrdemProAcabados: TwwDBGrid;
    lblPosEstAtual: TLabel;
    Panel7: TPanel;
    Label7: TLabel;
    grdItensPend: TwwDBGrid;
    dsEstAlmPen: TwwDataSource;
    Label13: TLabel;
    lblQtdePedidosPen: TLabel;
    Label14: TLabel;
    lblQtdePedidosDigApr: TLabel;
    pnPedidosdoItem: TPanel;
    wwDBGrid4: TwwDBGrid;
    Label15: TLabel;
    dsPedItensSel: TwwDataSource;
    BUS_CD_M_PED_PEN_ITE_SEL: TClientDataSet;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    WideStringField2: TWideStringField;
    FMTBCDField1: TFMTBCDField;
    FloatField1: TFloatField;
    BooleanField1: TBooleanField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    WideStringField3: TWideStringField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FloatField2: TFloatField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField6: TIntegerField;
    WideStringField4: TWideStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    WideStringField5: TWideStringField;
    IntegerField12: TIntegerField;
    WideStringField6: TWideStringField;
    IntegerField13: TIntegerField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    IntegerField14: TIntegerField;
    WideStringField9: TWideStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField15: TIntegerField;
    BooleanField2: TBooleanField;
    DateField2: TDateField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    IntegerField18: TIntegerField;
    DateField3: TDateField;
    TimeField1: TTimeField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    DataSetField1: TDataSetField;
    Button1: TButton;
    pmGer: TPopupMenu;
    Exibirpedidosquecontmesteproduto1: TMenuItem;
    Panel8: TPanel;
    Panel9: TPanel;
    btnSairTela: TButton;
    pnOrdenacaoItePro: TPanel;
    rgOrdenarItePro: TRadioGroup;
    Panel10: TPanel;
    Label16: TLabel;
    pnFiltro: TPanel;
    rgBuscar: TRadioGroup;
    txtItem: TEdit;
    Buscar: TButton;
    Label17: TLabel;
    Label18: TLabel;
    pmPedPen: TPopupMenu;
    Exibirpedidospedente1: TMenuItem;
    procedure btnPedidoVendaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dgOrdemProAcabadosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgItensProduzirCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnRequisicoesClick(Sender: TObject);
    procedure dgOrdemProAcabadosRowChanged(Sender: TObject);
    procedure btnFiltrarPedPendClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure btnBuscarPedDigClick(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure tsSairShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Exibirpedidosquecontmesteproduto1Click(Sender: TObject);
    procedure tsOpShow(Sender: TObject);
    procedure btnSairTelaClick(Sender: TObject);
    procedure rgOrdenarIteProClick(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure grdItensPendCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdItensPendTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure rgBuscarClick(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure Exibirpedidospedente1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConsultarSitOp;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_OPR_ADM: TCSU_FM_M_OPR_ADM;
  xCorFundo: string;
  xid_opr_opp, xAnt: integer;
  ListaOps: TDictionary<String,Integer>;
implementation

{$R *.dfm}

uses uDmGeral, CSU_UN_M_OPR_PED, CSU_UN_C_CLI, CSU_UN_M_OPR_REQ, enSoftMenu,
  CSU_UN_C_ITE_PPN;

procedure TCSU_FM_M_OPR_ADM.acSairExecute(Sender: TObject);
begin
//  inherited;
//  close;
end;

procedure TCSU_FM_M_OPR_ADM.btnBuscarPedDigClick(Sender: TObject);
begin
  inherited;
  if txtNroPedidoPedDig.text <> '' then
     begin
      if not ( BUS_CD_M_PED_DIG.locate('id_pedido',txtNroPedidoPedDig.text,[]) ) then
         begin
           ShowMessage('Pedido não encontrado!');
         end;
     end;

end;

procedure TCSU_FM_M_OPR_ADM.btnFiltrarPedPendClick(Sender: TObject);
begin
  inherited;
  if txtCodOprPedPend.Text <> '' then
     begin
       lblQtdePedidosPen.Caption := '0';

       BUS_CD_M_PED_PEN.Close;
           BUS_CD_M_PED_PEN.Data :=
              BUS_CD_M_PED_PEN.DataRequest(
                    VarArrayOf([2,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtCodOprPedPend.Text]));
       if not (BUS_CD_M_PED_PEN.IsEmpty) then
          lblQtdePedidosPen.Caption := IntToStr(BUS_CD_M_PED_PEN.RecordCount);
     end;

end;

procedure TCSU_FM_M_OPR_ADM.btnFiltroClick(Sender: TObject);
begin
  inherited;
  xCorFundo := 'CINZA';
  xid_opr_opp := 0;

  if (trim(txtCodOpr.text) = '') and ((txtPeriodoIni.Text = '  /  /    ') or (txtPeriodoFinal.Text = '  /  /    ')) then
     begin
       ShowMessage('Nenhum filtro foi inserido.');
       txtPeriodoIni.SetFocus;
       exit;
     end;

  if ((txtPeriodoIni.Text <> '  /  /    ') or (txtPeriodoFinal.Text <> '  /  /    ')) then
     begin
        if (txtPeriodoIni.Date > txtPeriodoFinal.Date) then
          begin
            ShowMessage('Período inicial não pode ser maior que o período final.');
            txtPeriodoFinal.SetFocus;
            exit;
          end;
     end;

  if trim(txtCodOpr.text) <> '' then
     begin
       dmGeral.BUS_CD_M_CSU_OPR.Close;
        dmGeral.BUS_CD_M_CSU_OPR.Data :=
          dmGeral.BUS_CD_M_CSU_OPR.DataRequest(
                VarArrayOf([7,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtCodOpr.text]));
      end
  else
      begin
        dmGeral.BUS_CD_M_CSU_OPR.Close;
           dmGeral.BUS_CD_M_CSU_OPR.Data :=
               dmGeral.BUS_CD_M_CSU_OPR.DataRequest(
                VarArrayOf([4,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtPeriodoIni.Text,txtPeriodoFinal.Text]));
      end;
end;

procedure TCSU_FM_M_OPR_ADM.btnPedidoVendaClick(Sender: TObject);
begin
  //inherited;
 { if dmGeral.BUS_CD_M_CSU_OPR.IsEmpty then
    begin
      ShowMessage('Não há ordem de produção selecionada.');
      exit;
    end;

  dmGeral.BUS_CD_M_CSU_OPR_PED.Close;
  dmGeral.BUS_CD_M_CSU_OPR_PED.Data :=
  dmGeral.BUS_CD_M_CSU_OPR_PED.DataRequest(
            VarArrayOf([0, dmGeral.BUS_CD_M_CSU_OPR.FieldByName('ID_OPR').AsString])); }
  CSU_FM_M_OPR_PED := TCSU_FM_M_OPR_PED.Create(Self);
  CSU_FM_M_OPR_PED.Show;

end;



procedure TCSU_FM_M_OPR_ADM.btnRequisicoesClick(Sender: TObject);
begin
  inherited;
  if not dmGeral.BUS_CD_M_CSU_OPR.IsEmpty then
    begin
      CSU_FM_M_OPR_REQ := TCSU_FM_M_OPR_REQ.Create(Self);
      CSU_FM_M_OPR_REQ.Show;
    end
  else
    begin
      Showmessage('Nenhuma OPR selecionada.');
    end;
end;

procedure TCSU_FM_M_OPR_ADM.BuscarClick(Sender: TObject);
var
  idItem,texto: string;
begin
  inherited;
  if trim(txtItem.Text) = '' then
     begin
       if rgBuscar.ItemIndex = 0 then
          ShowMessage('Nenhum código foi digitado para a busca.')
       else
          ShowMessage('Nenhum texto foi digitado para a busca.');
       exit;
     end;

  if rgBuscar.ItemIndex = 0 then
     begin
       if not ( BUS_CD_M_EST_ALM_PEN.Locate('id_item',txtItem.Text,[]) ) then
          begin
             Showmessage('Registro não encontrado.')
          end;
     end
  else
     begin
       grdItensPend.DataSource := nil;

       texto := ''''+ '%'+ uppercase( txtItem.Text )+'%'+ '''';

       BUS_CD_M_EST_ALM_PEN.Filtered := true;

       BUS_CD_M_EST_ALM_PEN.Filter   := ' UPPER(DESCRICAO) LIKE('+texto+')';

       if BUS_CD_M_EST_ALM_PEN.RecordCount > 0 then
          begin
            idItem := BUS_CD_M_EST_ALM_PEN.FieldByName('id_item').AsString;
            BUS_CD_M_EST_ALM_PEN.Filtered := false;
            grdItensPend.DataSource := dsEstAlmPen;
            BUS_CD_M_EST_ALM_PEN.First;
            BUS_CD_M_EST_ALM_PEN.Locate('id_item',idItem,[]);
          end
       else
          begin
            BUS_CD_M_EST_ALM_PEN.Filtered := false;
            grdItensPend.DataSource := dsEstAlmPen;
            BUS_CD_M_EST_ALM_PEN.First;
            Showmessage('Registro não encontrado.')
          end;
     end;
end;

procedure TCSU_FM_M_OPR_ADM.Button1Click(Sender: TObject);
begin
  inherited;
  pnPedidosdoItem.visible := false;
end;

procedure TCSU_FM_M_OPR_ADM.ConsultarSitOp;

begin
   if not dmGeral.BUS_CD_M_CSU_OPR.IsEmpty then
      begin
        try
          dmGeral.BUS_CD_M_CSU_OPR.First;
          while not dmGeral.BUS_CD_M_CSU_OPR.eof do
             begin

               dmGeral.BUS_CD_M_CSU_OPR_OPP.Filtered := true;
               dmGeral.BUS_CD_M_CSU_OPR_OPP.Filter   := ' QTDE_A_PRODUZIR > 0 AND QTDE_A_PRODUZIR <> QTDE_PRODUZIDA ';

               if dmGeral.BUS_CD_M_CSU_OPR_OPP.RecordCount > 0 then
                  begin
                   ListaOps.Add(dmGeral.BUS_CD_M_CSU_OPR.FieldByName('id_opr').AsString,0);
                  end
               else
                  ListaOps.Add(dmGeral.BUS_CD_M_CSU_OPR.FieldByName('id_opr').AsString,1);

               dmGeral.BUS_CD_M_CSU_OPR.Next;
             end;
        finally
          dmGeral.BUS_CD_M_CSU_OPR.First;
          dmGeral.BUS_CD_M_CSU_OPR_OPP.Filtered := false;
          dmGeral.BUS_CD_M_CSU_OPR_OPP.First;
        end;
      end;
end;

procedure TCSU_FM_M_OPR_ADM.btnSairTelaClick(Sender: TObject);
begin
  inherited;
  frmSoftMenu.rbMenu.ShowTabGroups := true;
  close;
end;

procedure TCSU_FM_M_OPR_ADM.cxButton1Click(Sender: TObject);
begin
  inherited;
 if (trim(txtCodOpr.text) = '') and ((txtPeriodoIni.Text = '  /  /    ') or (txtPeriodoFinal.Text = '  /  /    ')) then
     begin
       ShowMessage('Nenhum filtro foi inserido.');
       txtPeriodoIni.SetFocus;
       exit;
     end;

  if ((txtPeriodoIni.Text <> '  /  /    ') or (txtPeriodoFinal.Text <> '  /  /    ')) then
     begin
        if (txtPeriodoIni.Date > txtPeriodoFinal.Date) then
          begin
            ShowMessage('Período inicial não pode ser maior que o período final.');
            txtPeriodoFinal.SetFocus;
            exit;
          end;
     end;

  if trim(txtCodOpr.text) <> '' then
     begin
       dmGeral.BUS_CD_M_CSU_OPR.Close;
        dmGeral.BUS_CD_M_CSU_OPR.Data :=
          dmGeral.BUS_CD_M_CSU_OPR.DataRequest(
                VarArrayOf([7,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtCodOpr.text]));
      end
  else
      begin
        dmGeral.BUS_CD_M_CSU_OPR.Close;
           dmGeral.BUS_CD_M_CSU_OPR.Data :=
               dmGeral.BUS_CD_M_CSU_OPR.DataRequest(
                VarArrayOf([4,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtPeriodoIni.Text,txtPeriodoFinal.Text]));
      end;

  dmGeral.BUS_CD_M_CSU_OPR_OPP.IndexFieldNames := 'ID_ITEM;INT_NOMECOR';

  ConsultarSitOp;

  if not  dmGeral.BUS_CD_M_CSU_OPR.IsEmpty then
     begin
       jpgGerencial.ActivePage := tsOp;
     end;
end;

procedure TCSU_FM_M_OPR_ADM.dgItensProduzirCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);


begin
  inherited;


  if dmGeral.BUS_CD_M_CSU_OPR_OPP.FieldByName('REG_ALT').AsBoolean then
     begin
       AFont.Color := clMaroon;
     end;
{
  if xid_opr_opp = 0 then
     begin
       xid_opr_opp :=  dmGeral.BUS_CD_M_CSU_OPR_OPP.FieldByName('id_opr_opp').AsInteger;
       xAnt := xid_opr_opp;
     end
  else
     xid_opr_opp :=  dmGeral.BUS_CD_M_CSU_OPR_OPP.FieldByName('id_opr_opp').AsInteger;

  if (xid_opr_opp <> xAnt) then
     begin
       csu_fm_m_opr_adm.Refresh;
       xAnt := xid_opr_opp;
       if  xCorFundo = 'CINZA' then
           begin
             xCorFundo := 'BRANCA';
           end
        else
           begin
             xCorFundo := 'CINZA';
           end;
     end;

  if xCorFundo = 'CINZA' then
     begin
       Abrush.Color := clWhite;

     end
  else
     begin
       Abrush.Color := clSilver;

     end;      }
end;

procedure TCSU_FM_M_OPR_ADM.dgOrdemProAcabadosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;

  if ListaOps.ContainsKey(dmGeral.BUS_CD_M_CSU_OPR.FieldByName('id_opr').AsString) then
     if ListaOps[dmGeral.BUS_CD_M_CSU_OPR.FieldByName('id_opr').AsString] = 1 then
        AFont.Color := clGreen;

   {
   if (dmGeral.BUS_CD_M_CSU_OPR.FieldByName('SITUACAO').AsInteger = 2) then
     begin
       AFont.Color := clGreen;
     end;

   if (dmGeral.BUS_CD_M_CSU_OPR.FieldByName('SITUACAO').AsInteger = 3) then
     begin
       AFont.Color := clRed;
     end;}
end;

procedure TCSU_FM_M_OPR_ADM.dgOrdemProAcabadosRowChanged(Sender: TObject);
begin
  inherited;
  BUS_CD_M_OPR_QTD_TOT_ITE.Close;
        BUS_CD_M_OPR_QTD_TOT_ITE.Data :=
          BUS_CD_M_OPR_QTD_TOT_ITE.DataRequest(
                VarArrayOf([0,0,0]));

   BUS_CD_M_OPR_QTD_ITE_PED.Close;
       BUS_CD_M_OPR_QTD_ITE_PED.Data :=
          BUS_CD_M_OPR_QTD_ITE_PED.DataRequest(
                VarArrayOf([0,0,0]));
  if not ( dmGeral.BUS_CD_M_CSU_OPR.IsEmpty ) then
     begin
       BUS_CD_M_OPR_QTD_TOT_ITE.Close;
            BUS_CD_M_OPR_QTD_TOT_ITE.Data :=
              BUS_CD_M_OPR_QTD_TOT_ITE.DataRequest(
                    VarArrayOf([0,dmGeral.BUS_CD_M_CSU_OPR.FieldByName('id_empresa').AsInteger,
                                dmGeral.BUS_CD_M_CSU_OPR.FieldByName('id_opr').AsInteger ]));

       BUS_CD_M_OPR_QTD_ITE_PED.Close;
           BUS_CD_M_OPR_QTD_ITE_PED.Data :=
              BUS_CD_M_OPR_QTD_ITE_PED.DataRequest(
                    VarArrayOf([0,dmGeral.BUS_CD_M_CSU_OPR.FieldByName('id_empresa').AsInteger,
                                dmGeral.BUS_CD_M_CSU_OPR.FieldByName('id_opr').AsInteger ]));

     end;
end;

procedure TCSU_FM_M_OPR_ADM.Exibirpedidospedente1Click(Sender: TObject);
begin
  inherited;

 CSU_FM_C_ITE_PPN := TCSU_FM_C_ITE_PPN.Create(Self);
 xTela_CSU_FM_C_ITE_PPN := 'CSU_FM_M_OPR_ADM';
 CSU_FM_C_ITE_PPN.ShowModal;
 CSU_FM_C_ITE_PPN.Free;

end;

procedure TCSU_FM_M_OPR_ADM.Exibirpedidosquecontmesteproduto1Click(
  Sender: TObject);
begin
  inherited;
  if dmGeral.BUS_CD_M_CSU_OPR_OPP.FieldByName('id_item').AsString <> '' then
     begin
         pnPedidosdoItem.Visible := true;

         BUS_CD_M_PED_PEN_ITE_SEL.Close;
             BUS_CD_M_PED_PEN_ITE_SEL.Data :=
                BUS_CD_M_PED_PEN_ITE_SEL.DataRequest(
                      VarArrayOf([4,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                    dmGeral.BUS_CD_M_CSU_OPR.FieldByName('id_opr').AsString,
                                    dmGeral.BUS_CD_M_CSU_OPR_OPP.FieldByName('id_item').AsString,
                                    dmGeral.BUS_CD_M_CSU_OPR_OPP.FieldByName('id_cor').AsString,
                                    dmGeral.BUS_CD_M_CSU_OPR_OPP.FieldByName('id_tamanho').AsString]));
     end
  else
    begin
       ShowMessage('Nenhum item foi selecionado!');
    end;
end;

procedure TCSU_FM_M_OPR_ADM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CSU_FM_M_OPR_ADM);
end;

procedure TCSU_FM_M_OPR_ADM.FormCreate(Sender: TObject);
begin
  //inherited;
  // WindowState := wsMaximized;
 //  FormStyle := fsMDIChild;
 xid_opr_opp := -1;

  BUS_CD_M_OPR_QTD_TOT_ITE.Close;
        BUS_CD_M_OPR_QTD_TOT_ITE.Data :=
          BUS_CD_M_OPR_QTD_TOT_ITE.DataRequest(
                VarArrayOf([0,0,0]));

   BUS_CD_M_OPR_QTD_ITE_PED.Close;
       BUS_CD_M_OPR_QTD_ITE_PED.Data :=
          BUS_CD_M_OPR_QTD_ITE_PED.DataRequest(
                VarArrayOf([0,0,0]));

  // Informações sobre o pedido de venda
  lblQtdePedidosPen.Caption := '0';
  lblQtdePedidosDigApr.Caption := '0';

  BUS_CD_M_PED_PEN.Close;
       BUS_CD_M_PED_PEN.Data :=
          BUS_CD_M_PED_PEN.DataRequest(
                VarArrayOf([0,'']));

  BUS_CD_M_PED_DIG.Close;
       BUS_CD_M_PED_DIG.Data :=
          BUS_CD_M_PED_DIG.DataRequest(
                VarArrayOf([0,'']));

  BUS_CD_M_EST_ALM_PEN.Close;
       BUS_CD_M_EST_ALM_PEN.Data :=
          BUS_CD_M_EST_ALM_PEN.DataRequest(
                VarArrayOf([0,0]));


end;

procedure TCSU_FM_M_OPR_ADM.FormResize(Sender: TObject);
begin
 // inherited;
  Self.WindowState := wsMaximized;
  Self.FormStyle := fsMDIChild;
  pnlDados.top := (pnlDireita.Height div 2) - (pnlDados.height div 2);
  pnlDados.left := (pnlDireita.Width div 2) - (pnlDados.width div 2);
end;

procedure TCSU_FM_M_OPR_ADM.FormShow(Sender: TObject);
begin
  //inherited;


  dmGeral.BUS_CD_M_CSU_OPR.Close;
  dmGeral.BUS_CD_M_CSU_OPR.Data :=
          dmGeral.BUS_CD_M_CSU_OPR.DataRequest(
           VarArrayOf([0,'']));
  dmGeral.AtualizarGridItens(dgItensProduzir,'int_nomeite',14,9);

  dmGeral.AtualizarGridItens(grdPedidosPend,'int_nomeite',8,8);
  dmGeral.AtualizarGridItens(grdPedidosItensDigApr,'int_nomeite',8,8);

  frmSoftMenu.rbMenu.ShowTabGroups := false;

  ListaOps := TDictionary<String,Integer>.Create;

  txtCodOpr.Text := '';
  txtCodOpr.Setfocus;
end;

procedure TCSU_FM_M_OPR_ADM.grdItensPendCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if (Field.FieldName = 'resta_produzir') then
       ABrush.Color := $00FCD1D1;
end;

procedure TCSU_FM_M_OPR_ADM.grdItensPendTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  inherited;
  BUS_CD_M_EST_ALM_PEN.IndexFieldNames := AFieldName;
  BUS_CD_M_EST_ALM_PEN.First;
end;

procedure TCSU_FM_M_OPR_ADM.rgBuscarClick(Sender: TObject);
begin
  inherited;

  if rgBuscar.ItemIndex = 0 then
     begin
       txtItem.Text := '';
       txtItem.NumbersOnly := true;
     end
  else
     begin
       txtItem.Text := '';
       txtItem.NumbersOnly := false;
     end;

end;

procedure TCSU_FM_M_OPR_ADM.rgOrdenarIteProClick(Sender: TObject);
begin
  inherited;
  if rgOrdenarItePro.ItemIndex = 0 then
     begin
       dmGeral.BUS_CD_M_CSU_OPR_OPP.IndexFieldNames := 'ID_ITEM;INT_NOMECOR';
     end;
  if rgOrdenarItePro.ItemIndex = 1 then
     begin
       dmGeral.BUS_CD_M_CSU_OPR_OPP.IndexFieldNames := 'INT_NOMEITE;INT_NOMECOR';
     end;

end;

procedure TCSU_FM_M_OPR_ADM.TabSheet1Enter(Sender: TObject);
begin
  inherited;
  BUS_CD_M_PED_PEN.Close;
       BUS_CD_M_PED_PEN.Data :=
          BUS_CD_M_PED_PEN.DataRequest(
                VarArrayOf([1,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));

   if not (BUS_CD_M_PED_PEN.IsEmpty) then
          lblQtdePedidosPen.Caption := IntToStr(BUS_CD_M_PED_PEN.RecordCount);


  BUS_CD_M_PED_DIG.Close;
       BUS_CD_M_PED_DIG.Data :=
          BUS_CD_M_PED_DIG.DataRequest(
                VarArrayOf([3,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));

   if not (BUS_CD_M_PED_DIG.IsEmpty) then
          lblQtdePedidosDigApr.Caption := IntToStr(BUS_CD_M_PED_DIG.RecordCount);


  BUS_CD_M_EST_ALM_PEN.Close;
       BUS_CD_M_EST_ALM_PEN.Data :=
          BUS_CD_M_EST_ALM_PEN.DataRequest(
                VarArrayOf([0,dmGeral.cad_cd_c_par.FieldByName('id_empresa').AsString]));
  BUS_CD_M_EST_ALM_PEN.First;
end;

procedure TCSU_FM_M_OPR_ADM.TabSheet2Enter(Sender: TObject);
begin
  inherited;

  BUS_CD_M_EST_ALM_PEN.Close;
       BUS_CD_M_EST_ALM_PEN.Data :=
          BUS_CD_M_EST_ALM_PEN.DataRequest(
                VarArrayOf([0,dmGeral.cad_cd_c_par.FieldByName('id_empresa').AsString]));
  BUS_CD_M_EST_ALM_PEN.First;

  rgBuscarClick(Self);

  txtItem.SetFocus;
end;

procedure TCSU_FM_M_OPR_ADM.tsOpShow(Sender: TObject);
begin
  inherited;
  pnPedidosdoItem.Visible := false;
end;

procedure TCSU_FM_M_OPR_ADM.tsSairShow(Sender: TObject);
begin
  inherited;

//  frmSoftMenu.rbMenu.ShowTabGroups := true;
 // close;
end;

end.

