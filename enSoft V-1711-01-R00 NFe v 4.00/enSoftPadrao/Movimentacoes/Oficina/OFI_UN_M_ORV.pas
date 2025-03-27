unit OFI_UN_M_ORV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls,
  vcl.wwclearbuttongroup, vcl.wwradiogroup, vcl.wwdblook, JvDBControls,
  JvExMask, JvToolEdit, Vcl.Mask, vcl.Wwdbedit, JvExExtCtrls, JvExtComponent,
  JvPanel, frxClass, frxDBSet, frxExportPDF, frxExportXLS, uProxy, Vcl.DBCtrls,
  Datasnap.DBClient, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  TOFI_FM_M_ORV = class(TPAD_FM_X_PAD)
    dsoIte: TwwDataSource;
    lblCliente: TLabel;
    lblEmissao: TLabel;
    txtNumeroOrdem: TwwDBEdit;
    dpkEmissao: TJvDBDateEdit;
    lblEntrega: TLabel;
    dpkEntrega: TJvDBDateEdit;
    Label1: TLabel;
    txtIdCliente: TJvDBComboEdit;
    txtNomeCliente: TwwDBEdit;
    lblTelFixo: TLabel;
    txtTelFixo: TwwDBEdit;
    lblTelMovel: TLabel;
    txtTelMovel: TwwDBEdit;
    lblPlaca: TLabel;
    txtPlaca: TJvDBComboEdit;
    lblKmAtual: TLabel;
    txtKmAtual: TwwDBEdit;
    lblCombustivel: TLabel;
    txtCombustivel: TwwDBEdit;
    lblTipoOS: TLabel;
    cbbTipoOS: TwwDBLookupCombo;
    lblCondicaoPag: TLabel;
    cbbCondicaoPag: TwwDBLookupCombo;
    lblAnalista: TLabel;
    cbbAnalista: TwwDBLookupCombo;
    lblOrcamento: TLabel;
    gbObservacoes: TGroupBox;
    rgTanqueCombus: TwwRadioGroup;
    lblReclamacaoCliente: TLabel;
    lblDescricaoProblema: TLabel;
    gpItens: TGroupBox;
    pnlItens: TPanel;
    txtBuscaItem: TJvDBComboEdit;
    txtDescricaoItem: TwwDBEdit;
    txtQtde: TwwDBEdit;
    txtVlrUnitario: TwwDBEdit;
    txtVlrTotal: TwwDBEdit;
    lblItem: TLabel;
    lblQtde: TLabel;
    lblVlrUnitario: TLabel;
    lblVlrTotal: TLabel;
    dgItens: TwwDBGrid;
    btnAddItens: TBitBtn;
    dgItensIButton: TwwIButton;
    OFI_XL_M_ORV: TfrxXLSExport;
    OFI_PD_M_ORV: TfrxPDFExport;
    OFI_DB_M_ORV: TfrxDBDataset;
    pmCancelar: TPopupMenu;
    btnCancelarRegistro: TMenuItem;
    cbbOrcamento: TwwDBLookupCombo;
    btnImprimirEspelho: TBitBtn;
    OFI_DB_M_ORV_PRO: TfrxDBDataset;
    OFI_DB_M_ORV_SER: TfrxDBDataset;
    txtVlrServicos: TwwDBEdit;
    txtVlrProdutos: TwwDBEdit;
    txtVlrTerceiro: TwwDBEdit;
    txtDescServicos: TwwDBEdit;
    txtDescProdutos: TwwDBEdit;
    txtVlrTotal1: TwwDBEdit;
    lblVlrServicos: TLabel;
    lblVlrProdutos: TLabel;
    lblVlrTerceiro: TLabel;
    lblDescServico: TLabel;
    lblDescProduto: TLabel;
    lblVlrTotal1: TLabel;
    txtDescTerceiro: TwwDBEdit;
    lblDescTerceiro: TLabel;
    txtReclamacaoCliente: TDBMemo;
    txtDescricaoProblema: TDBMemo;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnlMecTer: TPanel;
    lblMecanico: TLabel;
    lblTerceiro: TLabel;
    cbbTerceiro: TwwDBLookupCombo;
    cbbMecanico: TwwDBLookupCombo;
    OFI_FR_M_ORV: TfrxReport;
    Label7: TLabel;
    txtOSGar: TJvDBComboEdit;
    Label8: TLabel;
    txtIdFiscal: TJvDBComboEdit;
    pmImpSimp: TPopupMenu;
    btnImpSimp: TMenuItem;
    OFI_FR_M_ORV_SMP: TfrxReport;
    Label9: TLabel;
    txtAnoFab: TwwDBEdit;
    Label11: TLabel;
    txtModelo: TwwDBEdit;
    Label12: TLabel;
    txtMotor: TwwDBEdit;
    Label10: TLabel;
    txtAnoMod: TwwDBEdit;
    Label13: TLabel;
    cbbAtendente: TwwDBLookupCombo;
    txtPesquisaData: TJvDateEdit;
    lblMecPai: TLabel;
    cbbMecPai: TwwDBLookupCombo;
    procedure cbbAnalistaEnter(Sender: TObject);
    procedure cbbCondicaoPagEnter(Sender: TObject);
    procedure cbbCondicaoPagExit(Sender: TObject);
    procedure cbbAnalistaExit(Sender: TObject);
    procedure cbbMecanico1Enter(Sender: TObject);
    procedure cbbMecanico1Exit(Sender: TObject);
    procedure dgItensIButtonClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtIdClienteButtonClick(Sender: TObject);
    procedure txtPlacaButtonClick(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtIdClienteExit(Sender: TObject);
    procedure txtPlacaExit(Sender: TObject);
    procedure dpkEntregaExit(Sender: TObject);
    procedure txtKmAtualExit(Sender: TObject);
    procedure btnAddItensClick(Sender: TObject);
    procedure cbbTipoOSEnter(Sender: TObject);
    procedure cbbTipoOSExit(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure dgItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbMecanicoExit(Sender: TObject);
    procedure cbbTerceiroExit(Sender: TObject);
    procedure txtOrcamentoExit(Sender: TObject);
    procedure txtReclamacaoClienteExit(Sender: TObject);
    procedure btnCancelarRegistroClick(Sender: TObject);
    procedure pmCancelarPopup(Sender: TObject);
    procedure cbbOrcamentoEnter(Sender: TObject);
    procedure cbbOrcamentoExit(Sender: TObject);
    procedure cbbMecanicoEnter(Sender: TObject);
    procedure cbbTerceiroEnter(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtVlrUnitarioExit(Sender: TObject);
    procedure txtDescricaoProblemaExit(Sender: TObject);
    procedure txtReclamacaoClienteEnter(Sender: TObject);
    procedure txtDescricaoProblemaEnter(Sender: TObject);
    procedure btnAddItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtOSGarButtonClick(Sender: TObject);
    procedure txtIdFiscalButtonClick(Sender: TObject);
    procedure txtIdFiscalExit(Sender: TObject);
    procedure btnImpSimpClick(Sender: TObject);
    procedure cbbAtendenteEnter(Sender: TObject);
    procedure cbbMecPaiEnter(Sender: TObject);
    procedure cbbMecPaiExit(Sender: TObject);
  private
    { Private declarations }
  procedure Atualizar_xBusca;
  procedure HabilDesabCammpos(Ativar:Boolean);
  procedure ChamaMecanicoTerceiro;
  procedure AbrirBusca;

    var
      xbusca_item, id_perfil_cli: String;
      modo_adicionar:boolean;
      xOrcAnterior:string;
      XCod_Req:integer;
      xAtivadoOrc:boolean;
      XClienteAnt,XPlacaAnt:string;
  public
    { Public declarations }
    function RemoveCaracter (Str: String; Caracter: Array of String):String;
  end;

var
  OFI_FM_M_ORV: TOFI_FM_M_ORV;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_VEI, PSQ_UN_X_ITE, OFI_RN_M_ORV,
  OFI_UN_M_ORV_CAN, enConstantes, FAT_RN_M_NFE, OFI_UN_M_ORV_GAR, PSQ_UN_X_NFE,
  OFI_UN_M_ORV_IMP;

procedure TOFI_FM_M_ORV.acAdicionaExecute(Sender: TObject);
var
  msg:String;
begin
  inherited;
  msg := '';
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString = '') then
    begin
      msg := msg +'Tipo de movimento de estoque deve ser preenchido na tela de parâmetros.'+#13+#10;
    end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tme_dev_gar').AsString = '') then
    begin
       msg := msg +'Tipo de movimento de estoque da garantia da devolução do fornecedor deve ser preenchido na tela de parâmetros.'+#13+#10;
    end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tme_dev_cli_gar').AsString = '') then
    begin
      msg := msg +'Tipo de movimento de estoque da garantia da devolução do cliente deve ser preenchido na tela de parâmetros.'+#13+#10;
    end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('nfe_ecf_id_condicao_pag').AsString = '') then
    begin
       msg := msg +'Condição de pagamento da NF-e originada do cupom fiscal deve ser preenchido na tela de parâmetros.'+#13+#10;
    end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('nfe_ecf_tipo_estoque').AsString = '') then
    begin
      msg := msg +'Tipo de movimento de estoque da NF-e originada do cupom fiscal deve ser preenchido na tela de parâmetros.'+#13+#10;
    end;

  dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString);
  if (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_DENTRO').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_FORA').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PJ').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PJ').AsString = '') then
    begin
        msg := msg +'Tipo de movimento de estoque selecionado na tela de parâmetros deve ter os CFOPs preenchidos.'+#13+#10;

    end;


   if msg <> '' then
     begin
       ShowMessage(msg);
       abort;
     end;



  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV);
  dpkEntrega.SetFocus;
  pnlItens.Enabled := false;
  btnExcluir.Enabled := false;
  btnImprimirEspelho.Enabled := false;
  XPlacaAnt := '';
  XClienteAnt := '';

  {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
    begin
      pnlItens.Enabled := false;
      btnAddItens.Enabled := false;
      dgItensIButton.Enabled := false;
    end;}
   xcod_req := 0;

   dmgeral.OFI_CD_M_ORV.FieldByName('TIPO_ORDEM').AsInteger := 1;

   txtOSGar.Enabled := false;
   txtOSGar.Color := $00DADADA;

   txtIdFiscal.Enabled := false;
   txtIdFiscal.Color := $00DADADA;
end;

procedure TOFI_FM_M_ORV.HabilDesabCammpos(Ativar:Boolean);
begin
  modo_adicionar := Ativar;
  txtIdCliente.Enabled := Ativar;
  txtPlaca.Enabled := Ativar;
  txtCombustivel.Enabled := Ativar;
  cbbTipoOS.Enabled := Ativar;
  cbbOrcamento.Enabled := Ativar;
  pnlItens.Enabled := Ativar;
  btnAddItens.Enabled := Ativar;
  dgItensIButton.Enabled := Ativar;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
    begin
      cbbCondicaoPag.Enabled := Ativar;
    end;

end;

procedure TOFI_FM_M_ORV.AbrirBusca;
begin
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
      dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1, '%']));

  dmGeral.BUS_CD_C_FU2.Close;
  dmGeral.BUS_CD_C_FU2.Data :=
      dmGeral.BUS_CD_C_FU2.DataRequest(VarArrayOf([8,1, '%']));

  dmGeral.BusTipoOS(1,'%');
  dmGeral.BusCondPgto(1,'%');
  dmGeral.BusFornecedor(1,'%');
end;

procedure TOFI_FM_M_ORV.acAlterarExecute(Sender: TObject);
begin
    if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString = '') then
    begin
      ShowMessage('Tipo de movimento de estoque deve ser preenchido na tela de parâmetros.');
      abort;
    end;

    dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString);
    if (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_DENTRO').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_FORA').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PJ').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PJ').AsString = '') then
       begin
         ShowMessage('Tipo de movimento de estoque selecionado na tela de parâmetros deve ter os CFOPs preenchidos.');
         abort;
       end;

    if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger <> 0) then
      begin
        ShowMessage('Alteração é permitida somente para ordem de serviço em aberto.');
        exit;
      end;

    if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV) then
      begin
        inherited;
        dmgeral.BusCliente(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').AsString);
        if (((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean=true) and
            (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean=true)) or
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean=true)) then
          id_perfil_cli :=  dmGeral.BUS_CD_C_CLI.FieldByName('id_perfil_cli').AsString
        else
          id_perfil_cli := '0';
        HabilDesabCammpos(false);
        txtReclamacaoCliente.SetFocus;
        btnImprimirEspelho.Enabled := false;
        dmgeral.BusVeiculo(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_VEICULO').AsString);
        dmgeral.BusTipoOS(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_TIPO_OS').AsString);

        txtOSGar.Enabled := false;
        txtOSGar.Color := $00DADADA;

        txtIdFiscal.Enabled := false;
        txtIdFiscal.Color := $00DADADA;



      end;
    btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_ORV.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV) then
     begin
       inherited;
       dbGrid.SetFocus;
       HabilDesabCammpos(true);
       btnImprimirEspelho.Enabled := true;
     end
  else
     begin
       //dpkEntrega.SetFocus;
     end;
    btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_ORV.acExcluirExecute(Sender: TObject);
begin
  inherited;
//  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV);
end;

procedure TOFI_FM_M_ORV.ChamaMecanicoTerceiro;
begin
  if  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('informar_mec_por_item_os').AsBoolean=true) and
     (((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') and (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_MECANICO').AsBoolean)) or
     ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False) and (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_MECANICO').AsBoolean)) ) then
     begin
       cbbTerceiro.Visible := false;
       lblTerceiro.Visible  := false;
       cbbMecanico.Visible := true;
       lblMecanico.Visible  := true;

       pnlMecTer.Left  := 122;
       pnlMecTer.Top   := pnlItens.Top;
       pnlMecTer.Width := 137;

       pnlMecTer.Visible := True;
       cbbMecanico.SetFocus;
     end;

  if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
     begin
       cbbTerceiro.Visible := true;
       lblTerceiro.Visible  := true;
       cbbMecanico.Visible := false;
       lblMecanico.Visible  := false;


       pnlMecTer.Left := 122;
       pnlMecTer.Top := pnlItens.Top;
       pnlMecTer.Width := 137;

       cbbTerceiro.Left := 4;
       lblTerceiro.left := 4;

       pnlMecTer.Visible := True;
       cbbTerceiro.SetFocus;
     end;
end;

procedure TOFI_FM_M_ORV.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

   {cOMTEN}
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString = '') then
    begin
      ShowMessage('Tipo de movimento de estoque deve ser preenchido na tela de parâmetros.');
      abort;
    end;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_MECANICO').AsBoolean=true) and
      (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('informar_mec_por_item_os').AsBoolean=true)) then
     begin
        PreencherMecItem;
     end;


  dmGeral.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString);
  if (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_DENTRO').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_SERVICO_FORA').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_INTERNO_ICM_S_PJ').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PF').AsString = '') or
      (dmgeral.BUS_CD_C_TME.FieldByName('CFO_EXTERNO_ICM_S_PJ').AsString = '') then
    begin
       ShowMessage('Tipo de movimento de estoque selecionado na tela de parâmetros deve ter os CFOPs preenchidos.');
        abort;
    end;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_critica_ocv_aber').AsBoolean = True) and
      (not dmGeral.BUS_CD_M_OCV.IsEmpty) and
      (cbbOrcamento.CanFocus) then
      begin
       if (dmGeral.OFI_CD_M_ORV.FieldByName('id_orcamento').AsString='') then
         begin
           ShowMessage('Orcamento deve ser informado.');
           cbbOrcamento.SetFocus;
           Exit;
         end;
      end;


   if (dmGeral.OFI_CD_M_ORV.FieldByName('INT_TIPO_OS').AsInteger =1) then
     begin
       if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount =0 ) then
         begin
          ShowMessage('OS é de garantia, deverá ter pelo menos 1 item selecionado.');
          abort;
         end;
       if dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text <> '' then
         begin
           dmGeral.BusCondPgto(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text);
           if (dmgeral.BUS_CD_C_CPG.IsEmpty) or
              (dmgeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger <> 1) then
             begin
              ShowMessage('Condição de Pagamento tem que ser do tipo "A Prazo".');
              abort;
             end;
         end;
     end;

   if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('permitir_nova_os_cli_placa').AsBoolean=true)) then
     begin
       OFI_RN_M_ORV.BusOrdemAbertoFechadaAndamento;

       if (not dmGeral.BUS_CD_M_ORV.IsEmpty) then
          begin
            ShowMessage('Há ordem de serviço não faturada para o mesmo cliente, veículo e tipo OS em questão.');
            exit;
          end;
      end;
  { if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_critica_ocv_aber').AsBoolean = True) and
      (cbbOrcamento.CanFocus) then
      begin
       if (OfiDeletaItensNaoTemSaldoOrv = true) then
        begin
          dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
          dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
          dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
          dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
          dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
          OFI_RN_M_ORV.OfiRatearVlrDescOrv;
        end;
      end;  }

  dmGeral.OFI_CD_M_ORV_ITE.Cancel;
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_critica_ite_aber').AsBoolean = True) and
     (dmGeral.OFI_CD_M_ORV_ITE.IsEmpty) then
    begin
      ShowMessage('É necessário incluir pelo menos 1 item.');
      abort;
    end;

  {dmGeral.OFI_CD_M_ORV_ITE.First;
  while (not dmGeral.OFI_CD_M_ORV_ITE.EOF) do
    begin
       dmGeral.OFI_CD_M_ORV_ITE.Edit;
       dmGeral.OFI_CD_M_ORV_ITE.Post;
       dmGeral.OFI_CD_M_ORV_ITE.Next;
    end;}


 if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     //OfiCalculaVlrTotaisOrv;
     //OFI_RN_M_ORV.OfiAtuSeqOrvIte;

     codigo := dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsString;
     DmGeral.Grava(dmGeral.OFI_CD_M_ORV);
     HabilDesabCammpos(true);
     btnImprimirEspelho.Enabled := true;
     inherited;
     dmGeral.OFI_CD_M_ORV.Close;
     dmGeral.OFI_CD_M_ORV.Data :=
             dmGeral.OFI_CD_M_ORV.DataRequest(VarArrayOf([0, codigo,dmgeral.CAD_CD_C_PARid_empresa.Text,'1','1']));
     AbrirBusca;
    end
  else
    begin
      dpkEntrega.SetFocus;
    end;
     btnExcluir.Enabled := false;

end;

procedure TOFI_FM_M_ORV.Atualizar_xBusca;
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



procedure TOFI_FM_M_ORV.btnAddItensClick(Sender: TObject);
begin
  inherited;
  pnlItens.Enabled  := True;

  dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange := nil;
  dmGeral.OFI_CD_M_ORV_ITEqtde.OnChange := nil;
  dmGeral.OFI_CD_M_ORV.BeforePost := nil;

  dmGeral.OFI_CD_M_ORV_ITE.Insert;

  dmGeral.OFI_CD_M_ORV_ITEqtde.OnChange := dmGeral.OFI_CD_M_ORV_ITEqtdeChange;
  dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange := dmGeral.OFI_CD_M_ORV_ITEvlr_unitarioChange;
  dmGeral.OFI_CD_M_ORV.BeforePost := dmGeral.OFI_CD_M_ORVBeforePost;
  txtBuscaItem.SetFocus;
end;

procedure TOFI_FM_M_ORV.btnAddItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = vk_F2 then
     begin
           ActiveControl := nil;
           PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
           btnGrava.SetFocus;
     end;
end;

procedure TOFI_FM_M_ORV.btnCancelarRegistroClick(Sender: TObject);
begin
  inherited;
  OFI_FM_M_ORV_CAN := TOFI_FM_M_ORV_CAN.Create(Self);
  OFI_FM_M_ORV_CAN.Show;
end;

procedure TOFI_FM_M_ORV.btnFiltroClick(Sender: TObject);
VAR
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;



    if (cbbPesquisa.ItemIndex = 0) then
      begin
       dmGeral.OFI_CD_M_ORV.Close;
       dmGeral.OFI_CD_M_ORV.Data :=
       dmGeral.OFI_CD_M_ORV.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,xPesquisa,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'1','1']));
      end
    else
      begin
       dmGeral.OFI_CD_M_ORV.Close;
       dmGeral.OFI_CD_M_ORV.Data :=
       dmGeral.OFI_CD_M_ORV.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,xPesquisa,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,'1','1']));
      end;
  finally
     Screen.Cursor := crDefault;
  end;
   btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_ORV.btnImprimirEspelhoClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.OFI_CD_M_ORV.IsEmpty then
      begin
        codigo := dmGeral.OFI_CD_M_ORVid_ordem.text;

        dmGeral.OFI_CD_R_ORV.Close;
        dmGeral.OFI_CD_R_ORV.Data :=
        dmGeral.OFI_CD_R_ORV.DataRequest(VarArrayOf([codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(OFI_FR_M_ORV.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('');
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 0) then
            begin
              OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('Vazio');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 1) then
            begin
              OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('1/4');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 2) then
            begin
              OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('1/2');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 3) then
            begin
              OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('3/4');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 4) then
            begin
              OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('Cheio');
            end;

        dmGeral.BusCliente(0,dmGeral.OFI_CD_R_ORV.FieldByName('ID_CLIENTE').AsString);

        OFI_FR_M_ORV.Variables['ft_profissao'] :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('PROFISSAO').AsString);
        OFI_FR_M_ORV.Variables['ft_email'] :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('email').AsString);

        if length(RemoveCaracter(dmGeral.BUS_CD_C_CLIdoc_cnpj_cpf.AsString,['/','.','-'])) = 14 then
          OFI_FR_M_ORV.Variables['ft_ie_identidade'] := QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('doc_ie_identidade').AsString)
        else
          OFI_FR_M_ORV.Variables['ft_ie_identidade'] := QuotedStr('ISENTO');

        dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_ORV.Name,xCodLme,xRevLme,nil);
        OFI_FR_M_ORV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        OFI_FR_M_ORV.Variables['Opcoes'] :=  QuotedStr('');
        OFI_FR_M_ORV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        OFI_FR_M_ORV.PrepareReport();
        OFI_FR_M_ORV.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;

end;

procedure TOFI_FM_M_ORV.btnImpSimpClick(Sender: TObject);
begin
  inherited;
  if dmGeral.OFI_CD_M_ORV.IsEmpty then
      begin
         ShowMessage('Nenhum registro encontrado!');
         exit;
      end;

  OFI_FM_M_ORV_IMP := TOFI_FM_M_ORV_IMP.Create(Self);
  OFI_FM_M_ORV_IMP.ShowModal;
  OFI_FM_M_ORV_IMP.Free;
end;

procedure TOFI_FM_M_ORV.cbbAnalistaEnter(Sender: TObject);
begin
  inherited;
  {dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
      dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1, '%']));}

  dmgeral.BusFuncionario(10,'2');

  cbbAnalista.DropDown;
end;

procedure TOFI_FM_M_ORV.cbbAnalistaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dpkEntrega.Focused or txtIdCliente.Focused or txtPlaca.Focused or
     txtKmAtual.Focused or cbbTipoOS.Focused or cbbCondicaoPag.Focused then
    begin
      exit;
    end;

  if dmGeral.OFI_CD_M_ORV.FieldByName('ID_ANALISTA').Text = '' then
     begin
       ShowMessage('O campo "Analista" deve ser preenchido.');
       cbbAnalista.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_ANALISTA').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Analista não encontrado.');
       cbbAnalista.SetFocus;
       Exit;
     end;
end;

procedure TOFI_FM_M_ORV.cbbAtendenteEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BusFuncionario2(10,'2');
  cbbAtendente.DropDown;
end;

procedure TOFI_FM_M_ORV.cbbCondicaoPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  cbbCondicaoPag.DropDown;
end;

procedure TOFI_FM_M_ORV.cbbCondicaoPagExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dpkEntrega.Focused or txtIdCliente.Focused or
     txtPlaca.Focused or txtKmAtual.Focused or cbbTipoOS.Focused then
    begin
      exit;
    end;

  if dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text = '' then
     begin
       ShowMessage('O campo "Condição Pag" deve ser preenchido.');
       cbbCondicaoPag.SetFocus;
       Exit;
     end;

  dmGeral.BusCondPgto(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text);
  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de pagamento não encontrado.');
       cbbCondicaoPag.SetFocus;
       Exit;
     end;


  if (dmGeral.OFI_CD_M_ORV.FieldByName('INT_TIPO_OS').AsInteger  = 1) then
   begin
      if (dmgeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger <> 1) then
        begin
          ShowMessage('Condição de Pagamento tem que ser do tipo "A Prazo".');
          cbbCondicaoPag.SetFocus;
          exit;
        end;
   end;


 if (dmgeral.BUS_CD_C_TIO.FieldByName('TIPO').AsInteger = 0) then
   begin
      dmGeral.OFI_CD_M_ORV_ITE.Cancel;
      if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) then
         begin
            dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange := nil;
            dmGeral.OFI_CD_M_ORV_ITEqtde.OnChange := nil;
            dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;

           dmGeral.OFI_CD_M_ORV_ITE.First;
           while(not dmGeral.OFI_CD_M_ORV_ITE.EOF) do
             begin
               if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
                  begin
                   dmGeral.OFI_CD_M_ORV_ITE.Edit;
                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;
                   dmGeral.CalcPrecoItem(1,'0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text,
                                dmGeral.OFI_CD_M_ORV_ITE,false,false);
                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                   dmGeral.OFI_CD_M_ORV_ITE.FieldByname('PER_DESCONTO').AsCurrency := 0;
                   OFI_RN_M_ORV.OfiOrvCalcTotalItem;
                   dmGeral.OFI_CD_M_ORV_ITE.Post;
                  end;
               dmGeral.OFI_CD_M_ORV_ITE.Next;
             end;

           dmGeral.OFI_CD_M_ORV_ITEqtde.OnChange := dmGeral.OFI_CD_M_ORV_ITEqtdeChange;
           dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange := dmGeral.OFI_CD_M_ORV_ITEvlr_unitarioChange;
           dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;

           dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;
           dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
           dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
           dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
           dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
           dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;

           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
           dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
           dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
           dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;

           dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;
           dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
           dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
           dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
           dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
           dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;

           OfiCalculaVlrTotaisOrv;
         end;
   end;


end;


procedure TOFI_FM_M_ORV.cbbMecanico1Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FU2.Close;
  dmGeral.BUS_CD_C_FU2.Data :=
      dmGeral.BUS_CD_C_FU2.DataRequest(VarArrayOf([8,1, '%']));

  cbbMecanico.DropDown;
end;

procedure TOFI_FM_M_ORV.cbbMecanico1Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').Text = '' then
     begin
       ShowMessage('O campo "Mecânico" deve ser preenchido.');
       cbbMecanico.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario2(0,dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').Text);
  if dmGeral.BUS_CD_C_FU2.IsEmpty then
     begin
       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomemec').Text :='';
       ShowMessage('Mecânico não encontrado.');
       cbbMecanico.SetFocus;
       Exit;
     end
  else
    begin
      dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomemec').Text :=
          dmGeral.BUS_CD_C_FU2.FieldByName('nome').AsString;
    end;
end;

procedure TOFI_FM_M_ORV.cbbMecanicoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN_MEC.Close;
  dmGeral.BUS_CD_C_FUN_MEC.Open;
  cbbMecanico.DropDown;
end;

procedure TOFI_FM_M_ORV.cbbMecanicoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

   {if txtBuscaItem.Focused  or dgItens.Focused then
     begin
       Exit;
     end;}

   {if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString = '') then
     begin
       ShowMessage('O campo "Mecânico" deve ser preenchido.');
       cbbMecanico.SetFocus;
       exit;
     end;

   dmGeral.BusFuncionario2(0,dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString);
   if (dmGeral.BUS_CD_C_FU2.IsEmpty) then
      begin
         ShowMessage('Funcionário não encontrado.');
         cbbMecanico.SetFocus;
         exit;
      end;

   if (dmGeral.BUS_CD_C_FU2.FieldByName('ATIVO').AsBoolean = False) then
     begin
       ShowMessage('Funcionário inativo.');
       cbbMecanico.SetFocus;
       exit;
     end; }


  { dmGeral.BUS_CD_C_FUN_CRG.Close;
   dmGeral.BUS_CD_C_FUN_CRG.Data :=
   dmGeral.BUS_CD_C_FUN_CRG.DataRequest(VarArrayOf(['', '']));

   if (not dmGeral.BUS_CD_C_FUN_CRG.IsEmpty) then
     begin
       ShowMessage('Funcionário não permitido.');
       cbbMecanico.SetFocus;
       exit;
     end; }

   {dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEMEC').AsString :=
              dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;}

   txtQtde.SetFocus;
   pnlMecTer.Visible := False;
end;

procedure TOFI_FM_M_ORV.cbbMecPaiEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN_MEC.Close;
  dmGeral.BUS_CD_C_FUN_MEC.Open;
  cbbMecPai.DropDown;
end;

procedure TOFI_FM_M_ORV.cbbMecPaiExit(Sender: TObject);
begin
  inherited;
   if cbbMecPai.Text='' then
    dmgeral.FAT_CD_M_PED.FieldByname('ID_MECANICO').AsString := '';
end;

procedure TOFI_FM_M_ORV.cbbOrcamentoEnter(Sender: TObject);
begin
  inherited;

  {if (dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').AsString ='') then
    begin
      ShowMessage('O campo "Cliente" deve ser preenchido.');
      txtIdCliente.SetFocus;
      abort;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').AsString ='') then
    begin
      ShowMessage('O campo "Placa" deve ser preenchido.');
      txtPlaca.SetFocus;
      abort;
    end;}

  dmGeral.BUS_CD_M_OCV.Close;
  dmGeral.BUS_CD_M_OCV.Data :=
  dmGeral.BUS_CD_M_OCV.DataRequest(VarArrayOf(['0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString,
                                               dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString,
                                               dmGeral.OFI_CD_M_ORV.FieldByname('INT_PLACA').AsString]));

  dmGeral.BUS_CD_M_OCV.IndexFieldNames := 'ID_ORCAMENTO';
  cbbOrcamento.DropDown;
end;

procedure TOFI_FM_M_ORV.cbbOrcamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
     begin
       Exit;
     end;

 { if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end; }

  {if dpkEntrega.Focused or txtIdCliente.Focused or txtPlaca.Focused or
     txtKmAtual.Focused or cbbTipoOS.Focused or cbbCondicaoPag.Focused or
     cbbAnalista.Focused then
    begin
      exit;
    end;  }

   if (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').Text = '') and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_critica_ocv_aber').AsBoolean = False)  then
     begin
       cbbOrcamento.Enabled := false;
       dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := nil;
       if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) then
         begin
           dmGeral.OFI_CD_M_ORV_ITE.Cancel;
           while (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) do
              begin
                dmGeral.OFI_CD_M_ORV_ITE.Delete;
              end;
         end;
       dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := dmGeral.OFI_CD_M_ORV_ITEAfterDelete;
       pnlItens.Enabled := true;
       btnAddItens.Enabled := true;
       dgItensIButton.Enabled := true;
       Exit;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').Text = '') and (not dmGeral.BUS_CD_M_OCV.IsEmpty) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_critica_ocv_aber').AsBoolean = True)  then
     begin
       ShowMessage('O campo "Orçamento" deve ser preenchido.');
       cbbOrcamento.SetFocus;
       Exit;
     end;

  if (not dmGeral.BUS_CD_M_OCV.Locate('ID_ORCAMENTO',dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').Text,[])) then
    begin
       ShowMessage('Nº Orçamento inválido.');
       dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').Text := '';
       cbbOrcamento.SetFocus;
       Exit;
    end;

 { if dmGeral.BUS_CD_M_OCV.IsEmpty then
    begin
      ShowMessage('Nº Orçamento inválido.');
      cbbOrcamento.SetFocus;

    end; }

  { if (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').Text = '') then
     begin
       txtReclamacaoCliente.SetFocus;
       exit;
     end;  }

   dmGeral.BusCondPgto(1,'%');

   OfiImportarOrcamentoOrv;

   dmGeral.OFI_CD_M_ORV_ITE.First;
   while not dmGeral.OFI_CD_M_ORV_ITE.eof do
      begin
         if not FAT_RN_M_NFE.VerifTribItem('S', dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').Text,
                                                   dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text,
                                                   dmgeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').text,
                                                   dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').Text,
                                              'V') then
              begin
                Showmessage('A tributação do item não foi encontrada:' + #13 +
                            'Item: ' + dmgeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text + ' - ' +
                             dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEITE').AsString + #13 +
                            'Por favor verifique a tributação dos itens do orçamento.');
                ActiveControl := nil;
                PostMessage(txtKmAtual.Handle, WM_SETFOCUS, 0, 0);
                txtKmAtual.SetFocus;
                dmGeral.OFI_CD_M_ORV.FieldByName('id_orcamento').AsString := '';
                dmGeral.OFI_CD_M_ORV_ITE.EmptyDataSet;
                exit;
              end;
         dmGeral.OFI_CD_M_ORV_ITE.Next;
      end;
   btnAddItens.Enabled := false;
   dgItensIButton.Enabled := false;
   pnlItens.Enabled := false;
   ActiveControl := nil;
   PostMessage(txtReclamacaoCliente.Handle, WM_SETFOCUS, 0, 0);
   txtReclamacaoCliente.SetFocus;
end;

procedure TOFI_FM_M_ORV.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisaData.Text := '  /  /    ';

  if cbbPesquisa.ItemIndex in [1]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 16;
      txtPesquisaData.Left := 108;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;


  if cbbPesquisa.ItemIndex in [0,4] then
    begin
     txtPesquisa.NumbersOnly := true;
     end
  else
    begin
     txtPesquisa.NumbersOnly := false;
   end;
end;

procedure TOFI_FM_M_ORV.cbbTerceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFornecedor(1,'%');
  cbbTerceiro.DropDown;
end;

procedure TOFI_FM_M_ORV.cbbTerceiroExit(Sender: TObject);
begin
  inherited;

   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

   { if txtBuscaItem.Focused or cbbMecanico.Focused  or dgItens.Focused then
     begin
       Exit;
     end;}

   {if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').AsString = '') then
     begin
       ShowMessage('O campo "Terceiro" deve ser preenchido.');
       cbbTerceiro.SetFocus;
       exit;
     end;

   dmGeral.BusFornecedor(0,dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').AsString);
   if (dmGeral.BUS_CD_C_FOR.IsEmpty) then
      begin
         ShowMessage('Fornecedor não encontrado.');
         cbbTerceiro.SetFocus;
         exit;
      end;

   if (dmGeral.BUS_CD_C_FUN.FieldByName('ATIVO').AsBoolean = False) then
     begin
       ShowMessage('Fornecedor inativo.');
       cbbTerceiro.SetFocus;
       exit;
     end;

   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMETER').AsString :=
       dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;}

   txtQtde.SetFocus;
   pnlMecTer.Visible := False;
end;

procedure TOFI_FM_M_ORV.cbbTipoOSEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoOS(1,'%');
  cbbTipoOS.DropDown;
end;

procedure TOFI_FM_M_ORV.cbbTipoOSExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dpkEntrega.Focused or txtIdCliente.Focused or
     txtPlaca.Focused or txtKmAtual.Focused then
    begin
      exit;
    end;

  dmGeral.OFI_CD_M_ORV.FieldByName('INT_NOMETIO').AsString := '';
  dmGeral.OFI_CD_M_ORV.FieldByName('INT_TIPO_OS').AsString := '';
  dmgeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM_ORIG_GAR').AsString := '';
  dmgeral.OFI_CD_M_ORV.FieldByName('ID_FISCAL_REF_ENTRADA').AsString := '';
  while (dmgeral.OFI_CD_M_ORV_ITE.RecordCount>0) do
    dmGeral.OFI_CD_M_ORV_ITE.Delete;

  if dmGeral.OFI_CD_M_ORV.FieldByName('ID_TIPO_OS').Text = '' then
     begin
       ShowMessage('O campo "Tipo da OS" deve ser preenchido.');
       cbbTipoOS.SetFocus;
       Exit;
     end;

  dmGeral.BusTipoOS(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_TIPO_OS').Text);
  if dmGeral.BUS_CD_C_TIO.IsEmpty then
     begin
       ShowMessage('Tipo da OS não encontrado.');
       cbbTipoOS.SetFocus;
       Exit;
     end;

  if (dmgeral.BUS_CD_C_TIO.FieldByName('TIPO').AsInteger = 0) then
    begin
       txtOSGar.Enabled := false;
       txtOSGar.Color := $00DADADA;
       txtIdFiscal.Enabled := false;
       txtIdFiscal.Color := $00DADADA;

       btnAddItens.Enabled := true;
       cbbAnalista.Enabled := true;
       if not dmGeral.BUS_CD_M_OCV.IsEmpty then
         cbbOrcamento.Enabled := true;
       txtDescProdutos.Enabled := true;
       txtDescServicos.Enabled := true;
       txtDescTerceiro.Enabled := true;
       dgItens.OnMouseUp := dgItensMouseUp;



       if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('permitir_nova_os_cli_placa').AsBoolean=true)) then
         begin
           OFI_RN_M_ORV.BusOrdemAbertoFechadaAndamento;


           if (not dmGeral.BUS_CD_M_ORV.IsEmpty) then
              begin
                ShowMessage('Há ordem de serviço em aberto ou andamento para o mesmo cliente, veículo e tipo OS em questão.');
                dmgeral.BUS_CD_M_ORV.Close;
                cbbTipoOS.SetFocus;
                exit;
              end;
         end;
      if cbbCondicaoPag.CanFocus then
        begin
         ActiveControl := nil;
         PostMessage(cbbCondicaoPag.Handle, WM_SETFOCUS, 0, 0);
        end
      else
        begin
         ActiveControl := nil;
         PostMessage(cbbAtendente.Handle, WM_SETFOCUS, 0, 0);
        end;
    end
  else
    begin
        txtOSGar.Enabled := true;
        txtOSGar.Color := clWhite;
        txtIdFiscal.Enabled := true;
        txtIdFiscal.Color := clWhite;

        btnAddItens.Enabled := false;
        cbbAnalista.Enabled := false;
        cbbOrcamento.Enabled := false;
        txtDescProdutos.Enabled := false;
        txtDescServicos.Enabled := false;
        txtDescTerceiro.Enabled := false;
        dgItens.OnMouseUp := nil;
        txtIdFiscal.SetFocus;
    end;
  dmGeral.OFI_CD_M_ORV.FieldByName('INT_NOMETIO').AsString :=
      dmGeral.BUS_CD_C_TIO.FieldByName('DESCRICAO').AsString;
  dmGeral.OFI_CD_M_ORV.FieldByName('INT_TIPO_OS').AsInteger :=
       dmGeral.BUS_CD_C_TIO.FieldByName('TIPO').AsInteger;
end;

procedure TOFI_FM_M_ORV.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
    if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 0) then
     begin
       AFont.Color := clBlue;
     end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 2) then
     begin
       AFont.Color := clOlive;
     end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 3) then
     begin
       AFont.Color := clGreen;
     end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 4) then
     begin
       AFont.Color := clRed;
     end;
end;

procedure TOFI_FM_M_ORV.dgItensIButtonClick(Sender: TObject);
begin
  inherited;



  IF (dmGeral.BUS_CD_C_TIO.FieldBYName('TIPO').AsInteger = 0) then
    begin
       try
          dgItensIButton.Enabled := false;
         if dmGeral.OFI_CD_M_ORV_ITE.IsEmpty then
            begin
              ShowMessage('Não há registro para excluir.');
              abort;
            end;

         if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') then
           begin
            if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False) then
              begin
                dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;
                dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
                dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;
                dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
              end;
            if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True) then
              begin
                dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
                dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;
                dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
                dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
              end;
           end
         else
           begin
            dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
            dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
            dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
           end;

         dmGeral.OFI_CD_M_ORV_ITE.Delete;
         dmGeral.OFI_CD_M_ORV_ITE.Edit;
      finally
        dgItensIButton.Enabled := true;
      end;
    end;

  if (dmGeral.BUS_CD_C_TIO.FieldBYName('TIPO').AsInteger = 1) then
    begin
       if dmGeral.OFI_CD_M_ORV_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
       dmGeral.OFI_CD_M_ORV_ITE.Delete;
    end;
end;

procedure TOFI_FM_M_ORV.dgItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if (modo_adicionar) then
    begin
      if pnlItens.Enabled = false then
         pnlItens.Enabled := true;

      dmGeral.OFI_CD_M_ORV_ITE.cancel;

      if dmGeral.OFI_CD_M_ORV_ITE.IsEmpty then
        begin
          dmGeral.OFI_CD_M_ORV_ITE.Append;
          pnlItens.Enabled := true;
          txtBuscaItem.SetFocus;
        end
      else
        begin
          if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA_ITE_OCV').IsNull) or
               (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA_ITE_OCV').AsString = '')) then
             begin
              pnlItens.Enabled := true;
              dmGeral.OFI_CD_M_ORV_ITE.Edit;
              txtBuscaItem.SetFocus;
             end
           else
             begin
               pnlItens.Enabled := false;
             end;
        end;
    end;

end;

procedure TOFI_FM_M_ORV.dpkEntregaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('DTA_ENTREGA').Text = '') then
     begin
       ShowMessage('O campo "Entrega" deve ser preenchido.');
       dpkEntrega.SetFocus;
       Exit;
     end;
end;

procedure TOFI_FM_M_ORV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.OFI_CD_M_ORV.Close;
  FreeAndNil(OFI_FM_M_ORV);
end;

procedure TOFI_FM_M_ORV.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.OFI_CD_M_ORV.Close;
  dmGeral.OFI_CD_M_ORV.Data := dmGeral.OFI_CD_M_ORV.DataRequest(VarArrayOf([0, '','','1','1']));
  dmGeral.OFI_CD_M_ORV.Open;

  xbusca_item := '';
  xOrcAnterior := '';

  Atualizar_xBusca;

  AbrirBusca;

  modo_adicionar := true;

  btnExcluir.Enabled := false;
  txtReclamacaoCliente.Height:=95;
  txtDescricaoProblema.Height:=95;

  txtNomeCliente.ReadOnly := true;
  txtNomeCliente.Color := $00DADADA;

  txtTelFixo.ReadOnly := true;
  txtTelFixo.Color := $00DADADA;

  txtTelMovel.ReadOnly := true;
  txtTelMOvel.Color := $00DADADA;

  txtCombustivel.ReadOnly := true;
  txtCombustivel.Color := $00DADADA;


  txtDescricaoItem.ReadOnly := true;
  txtDescricaoItem.Color := $00DADADA;

  txtVlrTotal.ReadOnly := true;
  txtVlrTotal.Color := $00DADADA;

  txtVlrUnitario.Enabled := false;
  txtVlrUnitario.Color := $00DADADA;
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_ALTERA_PRECO').AsBoolean = True) then
    begin
      txtVlrUnitario.Enabled := true;
      txtVlrUnitario.Color := clWhite;
    end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_ALTERA_PRECO').AsBoolean = false) then
    begin
       dmGeral.BusFuncionario(0,xFuncionario.ToString(xFuncionario));
      if (dmGeral.BUS_CD_C_FUN.FieldByName('SEG_ALT_PRE_PRO').AsBoolean = True) then
        begin
         txtVlrUnitario.Enabled := true;
         txtVlrUnitario.Color := clWhite;
        end;
    end;

  if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('n_utilizar_cond_pag_os').AsBoolean = True)) then
    begin
      cbbCondicaoPag.Visible := true;
      lblCondicaoPag.Visible := true;

    end
  else
    begin
      cbbCondicaoPag.Visible := false;
      lblCondicaoPag.Visible := false;
    end;


   lblMecPai.Visible := false;
   cbbMecPai.Visible := false;
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_MECANICO').AsBoolean=true) and
      (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('informar_mec_por_item_os').AsBoolean=true)) then
     begin
        lblMecPai.Visible := true;
        cbbMecPai.Visible := true;
     end;

  txtPesquisa.SetFocus;

 { cbbOrcamento.Visible := false;
  lblOrcamento.Visible := false;
  xAtivadoOrc := false;
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
    begin
      cbbOrcamento.Visible := true;
      lblOrcamento.Visible := true;
      cbbOrcamento.Enabled := false;
    end; }

  if not(((dmgeral.CAD_CD_C_PAR_MODome.AsBoolean = True) or
     (dmgeral.CAD_CD_C_PAR_MODota.AsBoolean = True)) and
     (dmgeral.CAD_CD_C_FUNseg_per_canc_orv.AsBoolean = True)) then
    begin
      dbgrid.PopupMenu := nil;
    end;
end;

procedure TOFI_FM_M_ORV.pmCancelarPopup(Sender: TObject);
begin
  inherited;
  if (dmGeral.OFI_CD_M_ORVstatus.AsInteger = 0) then
    begin
       OFI_FM_M_ORV.pmCancelar.Items[0].Enabled := True;
    end
  else
    begin
         OFI_FM_M_ORV.pmCancelar.Items[0].Enabled := False;
    end;
end;

procedure TOFI_FM_M_ORV.pnlItensExit(Sender: TObject);
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

        dmGeral.OFI_CD_M_ORV_ITE.Cancel;
        dmGeral.OFI_CD_M_ORV_ITE.Edit;

        finally
           pnlItens.Enabled := False;
        end;
      end;
end;

function TOFI_FM_M_ORV.RemoveCaracter(Str: String;
  Caracter: array of String): String;
  var
  I: integer;
begin
  Result := Str;
  for I := 0 to High(Caracter) do
    begin
      while Pos(Caracter[I],Result) > 0 do
        delete (result, Pos(caracter[i],Result),1);
    end;
end;

procedure TOFI_FM_M_ORV.txtIdClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.OFI_CD_M_ORV.FieldByName('id_cliente').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('id_cliente').AsString;

           dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecli').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;

           dmGeral.OFI_CD_M_ORV.FieldByName('int_telfix').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('tel_fixo').AsString;

           dmGeral.OFI_CD_M_ORV.FieldByName('int_telmov').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('tel_movel').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;



procedure TOFI_FM_M_ORV.txtIdClienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dpkEntrega.Focused then
     begin
       Exit;
     end;

  if dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text = '' then
     begin
       ShowMessage('O campo "Cliente" deve ser preenchido.');
       txtIdCliente.SetFocus;
       Exit;
     end;

  dmGeral.BusCliente(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text);
  if dmGeral.BUS_CD_C_CLI.IsEmpty then
     begin
         dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecli').Text :='';
         dmGeral.OFI_CD_M_ORV.FieldByName('int_telfix').Text :='';
         dmGeral.OFI_CD_M_ORV.FieldByName('int_telmov').Text :='';
       ShowMessage('Cliente não encontrado.');
       dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text := '';
       txtIdCliente.SetFocus;
       Exit;
     end;

  if (dmGeral.BUS_CD_C_CLI.FieldByName('ATIVO').AsBoolean = False) then
     begin
       dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecli').Text :='';
       dmGeral.OFI_CD_M_ORV.FieldByName('int_telfix').Text :='';
       dmGeral.OFI_CD_M_ORV.FieldByName('int_telmov').Text :='';
       ShowMessage('Cliente inativo.');
        dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text := '';
       txtIdCliente.SetFocus;
       Exit;
     end;

   {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
    begin }
     if ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> '') and
         (dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').Text <> '')) and
          ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> XClienteAnt) or
          (dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').Text <> XPlacaAnt)) then
         begin
          if ((dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) {and (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').AsString<>'')}) then
            begin
             if MessageDlg('Os itens selecionados serão deletados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
               begin
                dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text := XClienteAnt;
                dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').Text := XPlacaAnt;
                exit;
               end;
            end;

          dmGeral.BUS_CD_M_OCV.Close;
          dmGeral.BUS_CD_M_OCV.Data :=
          dmGeral.BUS_CD_M_OCV.DataRequest(VarArrayOf(['0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString,
                                               dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString,
                                               dmGeral.OFI_CD_M_ORV.FieldByname('INT_PLACA').AsString]));
          dmGeral.BUS_CD_M_OCV.IndexFieldNames := 'ID_ORCAMENTO';
          //pnlItens.Enabled := true;
          btnAddItens.Enabled := true;
          dgItensIButton.Enabled := true;
           {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
            begin}
              if (not dmGeral.BUS_CD_M_OCV.IsEmpty) then
                begin
                 //cbbCondicaoPag.Enabled := false;
                 cbbOrcamento.Enabled := true;
                 {pnlItens.Enabled := false;
                 btnAddItens.Enabled := false;
                 dgItensIButton.Enabled := false; }
                end
              else
                begin
                 //cbbCondicaoPag.Enabled := true;
                 cbbOrcamento.Enabled := false;
                 {pnlItens.Enabled := true;
                 btnAddItens.Enabled := true;
                 dgItensIButton.Enabled := true; }
                end;
             //end;
           dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString := '';
           dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').AsString := '';
            dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := nil;
           if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) then
                 begin
                   dmGeral.OFI_CD_M_ORV_ITE.Cancel;
                   while (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) do
                      begin
                        dmGeral.OFI_CD_M_ORV_ITE.Delete;
                      end;
                 end;
           dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := dmGeral.OFI_CD_M_ORV_ITEAfterDelete;
           OfiZerarValoresOrv;
           XClienteAnt := dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text;
           XPlacaAnt := dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').Text;
         end;
   // end;


  dmGeral.OFI_CD_M_ORV.FieldByName('id_cliente').Text :=
          dmGeral.BUS_CD_C_CLI.FieldByName('id_cliente').AsString;

  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecli').Text :=
          dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

  dmGeral.OFI_CD_M_ORV.FieldByName('int_telfix').Text :=
          dmGeral.BUS_CD_C_CLI.FieldByName('tel_fixo').AsString;

  dmGeral.OFI_CD_M_ORV.FieldByName('int_telmov').Text :=
          dmGeral.BUS_CD_C_CLI.FieldByName('tel_movel').AsString;


  if (((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean=true) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean=true)) or
           (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean=true)) then
    id_perfil_cli :=  dmGeral.BUS_CD_C_CLI.FieldByName('id_perfil_cli').AsString
  else
    id_perfil_cli := '0';


end;

procedure TOFI_FM_M_ORV.txtIdFiscalButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_NFE := TPSQ_FM_X_NFE.Create(Self);
  PSQ_FM_X_NFE.xFormCall := 'OFI_FM_M_ORV';
  PSQ_FM_X_NFE.ShowModal;

   if not PSQ_FM_X_NFE.BUS_CD_M_NFE.IsEmpty then
     begin
        dmGeral.OFI_CD_M_ORV.FieldByName('ID_FISCAL_REF_ENTRADA').AsInteger :=
              PSQ_FM_X_NFE.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger;
     end;



  PSQ_FM_X_NFE.Free;
end;

procedure TOFI_FM_M_ORV.txtIdFiscalExit(Sender: TObject);
VAR
  codItens:String;
begin
  inherited;

   if btnCancelar.Focused then
     begin
      exit;
     end;


   if (dmGeral.OFI_CD_M_ORV.FieldByName('ID_FISCAL_REF_ENTRADA').AsString = '') then
     begin
       ShowMessage('Nº fiscal deve ser preenchido.');
       exit;
     end;



   codItens := '';
   if dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0 then
     begin
      dmGeral.BUS_CD_M_NFE.Close;
      dmGeral.BUS_CD_M_NFE.Data :=
      dmGeral.BUS_CD_M_NFE.DataRequest(
            VarArrayOf([12,dmGeral.OFI_CD_M_ORV.FieldByName('ID_FISCAL_REF_ENTRADA').AsString]));

      dmGeral.OFI_CD_M_ORV_ITE.First;
      while not dmGeral.OFI_CD_M_ORV_ITE.eof do
        begin
          if not dmGeral.BUS_CD_M_NFE_ITE.locate('ID_ITEM',dmGeral.OFI_CD_M_ORV_ITE.FieldBYName('ID_ITEM').AsString,[]) then
             begin
               if codItens='' then
                codItens := codItens +dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsString
              else
                codItens := codItens +', '+dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsString;
             end;
          dmGeral.OFI_CD_M_ORV_ITE.Next;
        end;
      dmGeral.BUS_CD_M_NFE.Close;
     end;


   if codItens <> '' then
     begin
       ShowMessage('Os seguintes itens não constam na nota fiscal de entrada selecionado:'+#13+#10+CodItens);
       dmGeral.OFI_CD_M_ORV.FieldByName('ID_FISCAL_REF_ENTRADA').AsString := '';
       txtIdFiscal.SetFocus;
       exit;
     end;





end;

procedure TOFI_FM_M_ORV.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);

   dmgeral.BusVeiculo(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_VEICULO').AsString);

   if dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsString<>'' then
      id_categ_vei := dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsInteger;

   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeund').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;

           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_tipo_item').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TOFI_FM_M_ORV.txtBuscaItemExit(Sender: TObject);
var
  id_categoria,id_cond_pag:Integer;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;
  if dgItens.Focused then
     Exit;

  if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
    begin
    if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

     if btnAddItens.Focused then
          Exit;

       if dgItens.Focused then
          Exit;

       if not dgItensIButton.Enabled then
          Exit;

       if (cbbMecanico.Focused) or (txtQtde.Focused) or (cbbTerceiro.Focused) then
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
       if dmGeral.OFI_CD_M_ORV_ITE.state in [dsBrowse] then
          dmGeral.OFI_CD_M_ORV_ITE.Edit;
     end;



  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeite').Text := '';
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeund').AsString := '';
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_tipo_item').AsString := '';
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEAPL').AsString := '';
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEREF').AsString := '';


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
       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
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
        dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
        exit;
      end;

  {if dmGeral.BUS_CD_C_GRU.IsEmpty or (pos(dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString,'07-08')<>0) then
    begin
      ShowMessage('Tipo de item não permitido.');
      txtBuscaItem.SetFocus;
      dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
      exit;
    end;}

  if (dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString = '09') then
    begin
      dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean :=
         dmGeral.BUS_CD_C_GRU.FieldByName('SER_TERCEIRO').AsBoolean;
    end;

  {dmGeral.CalcPrecoItem(1,'0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text,
                          dmGeral.OFI_CD_M_ORV_ITE);}

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;



  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeite').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEAPL').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('APLICACAO').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEREF').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('REFERENCIA').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeund').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_tipo_item').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

  dmgeral.BusVeiculo(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_VEICULO').AsString);

  id_categoria:= 0;
  if dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsString<>'' then
     id_categoria := dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsInteger;

  id_cond_pag:= 0;
  if dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text <>'' then
      id_cond_pag:=  dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsInteger;

   dmGeral.CalcPrecoItem(1,id_perfil_cli,IntToStr(id_cond_pag),
                          dmGeral.OFI_CD_M_ORV_ITE,false,false,0,0,id_categoria);


 if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_preco_cat_ser').AsBoolean = true) and
    ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = true) or
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
            ShowMessage('Preço do item não cadastrado para categoria do veículo.');
            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEITE').AsString := '';
            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEAPL').AsString := '';
            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEREF').AsString := '';
            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEUND').AsString := '';
            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString := '';
            txtBuscaItem.SetFocus;
            exit;
          end;

    end;



   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;

    if not FAT_RN_M_NFE.VerifTribItem('S', dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').Text,
                                         dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text,
                                         dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text,
                                         dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').Text,
                                         'V') then
              begin
                Showmessage('A tributação do item não foi encontrada');
                txtBuscaItem.SetFocus;
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text := '';
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').Text := '';
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeite').Text := '';
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEAPL').AsString := '';
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEREF').AsString := '';
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeund').Text := '';
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').text := '';
                abort;
              end;



  try
   pnlItens.onExit := nil;

   ChamaMecanicoTerceiro;

  finally
     pnlItens.OnExit := pnlItensExit;
  end;



  {if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text = '' then
     begin
       ShowMessage('O campo "Item" deve ser prenchido.');
       txtBuscaItem.SetFocus;
     end;

  dmGeral.BusItens(0,dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text);
  if dmGeral.BUS_CD_C_ITE.IsEmpty then
     begin
       ShowMessage('Item não encontrado.');
       txtBuscaItem.SetFocus;
       Exit;
     end;  }
end;

procedure TOFI_FM_M_ORV.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
  if (Key = vk_F2) then
     begin
       pnlItens.OnExit := nil;
       dmGeral.OFI_CD_M_ORV_ITE.cancel;
       ActiveControl := nil;
       PostMessage(btnGrava.Handle, WM_SETFOCUS, 0, 0);
       btnGrava.SetFocus;
       pnlItens.OnExit := pnlItensExit;
     end;
end;

procedure TOFI_FM_M_ORV.txtDescricaoProblemaEnter(Sender: TObject);
begin
  inherited;
   OFI_FM_M_ORV.KeyPreview := false;
end;

procedure TOFI_FM_M_ORV.txtDescricaoProblemaExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.CanFocus) then
    begin
      btnAddItens.SetFocus;
    end;

   OFI_FM_M_ORV.KeyPreview := true;
end;

procedure TOFI_FM_M_ORV.txtKmAtualExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if dpkEntrega.Focused or txtIdCliente.Focused or txtPlaca.Focused then
    begin
      exit;
    end;

  {if dmGeral.OFI_CD_M_ORV.FieldByName('KM_ATUAL').Text = '' then
     begin
       ShowMessage('O campo "Km Atual" deve ser preenchido.');
       txtKmAtual.SetFocus;
     end; }
end;

procedure TOFI_FM_M_ORV.txtOrcamentoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused then
     begin
       exit;
     end;

   if dpkEntrega.Focused or txtIdCliente.Focused or txtPlaca.Focused or
     txtKmAtual.Focused or cbbTipoOS.Focused or cbbCondicaoPag.Focused or
     cbbAnalista.Focused then
    begin
      exit;
    end;
end;

procedure TOFI_FM_M_ORV.txtOSGarButtonClick(Sender: TObject);
begin
  inherited;
  OFI_FM_M_ORV_GAR := TOFI_FM_M_ORV_GAR.Create(Self);
  OFI_FM_M_ORV_GAR.ShowModal;
  OFI_FM_M_ORV_GAR.Free;
end;

procedure TOFI_FM_M_ORV.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_ORV.txtPlacaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_VEI := TPSQ_FM_X_VEI.Create(Self);
  PSQ_FM_X_VEI.ShowModal;
  if not PSQ_FM_X_VEI.BUS_CD_C_VEI.IsEmpty then
     begin
        dmGeral.OFI_CD_M_ORV.FieldByName('id_veiculo').Text :=
                PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('id_veiculo').AsString;
        dmGeral.OFI_CD_M_ORV.FieldByName('int_placa').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('id_placa').AsString);
        dmGeral.OFI_CD_M_ORV.FieldByName('int_nomevei').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('descricao').AsString);
        dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecom').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('combustivel').AsString);

        dmGeral.OFI_CD_M_ORV.FieldByName('int_anofabric').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('ano_fabricacao').AsString);

        dmGeral.OFI_CD_M_ORV.FieldByName('int_anomodelo').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('ano_modelo').AsString);

        dmGeral.OFI_CD_M_ORV.FieldByName('int_nomemve').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('int_nomemve').AsString);

        dmGeral.OFI_CD_M_ORV.FieldByName('int_motorvei').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('motor').AsString);

     end;
   PSQ_FM_X_VEI.BUS_CD_C_VEI.Close;
   PSQ_FM_X_VEI.Free;
end;



procedure TOFI_FM_M_ORV.txtPlacaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if dpkEntrega.Focused or txtIDCliente.Focused then
    begin
      exit;
    end;

  if (trim(dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').AsString) = '') then
    begin
      ShowMessage('O campo "Placa" deve ser preenchido.');
      txtPlaca.SetFocus;
      exit;
    end;

  dmGeral.OFI_CD_M_ORV.FieldByName('id_veiculo').Text := '';
  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomevei').Text := '';
  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecom').Text := '';

  dmGeral.OFI_CD_M_ORV.FieldByName('int_anofabric').Text := '';
  dmGeral.OFI_CD_M_ORV.FieldByName('int_anomodelo').Text := '';
  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomemve').Text := '';
  dmGeral.OFI_CD_M_ORV.FieldByName('int_motorvei').Text := '';

  dmGeral.BusVeiculo(3,trim(dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').Text));
  if dmGeral.BUS_CD_C_VEI.IsEmpty then
     begin
       ShowMessage('Placa não encontrado.');
       txtPlaca.SetFocus;
       Exit;
     end;

  if (dmGeral.BUS_CD_C_VEI.FieldByName('TIPO').AsInteger <> 0) then
    begin
       ShowMessage('Tem que ser do tipo veículo.');
       txtPlaca.SetFocus;
       Exit;
    end;

   dmGeral.BUS_CD_C_CLI_VEI.Close;
   dmGeral.BUS_CD_C_CLI_VEI.Data :=
   dmGeral.BUS_CD_C_CLI_VEI.DataRequest(VarArrayOf([0,dmGeral.OFI_CD_M_ORV.FieldByname('INT_PLACA').AsString]));

   dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text := '';
   if (not dmGeral.BUS_CD_C_CLI_VEI.IsEmpty) then
      dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text :=
                   dmGeral.BUS_CD_C_CLI_VEI.FieldByName('ID_CLIENTE').Text;

  {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
    begin }
     if ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> '') and
         (dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').Text <> ''))  and
          ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> XClienteAnt) or
          (dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').Text <> XPlacaAnt))  then
         begin
           if ((dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) {and (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').AsString<>'')}) then
            begin
             if MessageDlg('Os itens selecionados serão deletados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
               begin
                dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text := XClienteAnt;
                dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').Text := XPlacaAnt;
                exit;
               end;
            end;

          dmGeral.BUS_CD_M_OCV.Close;
          dmGeral.BUS_CD_M_OCV.Data :=
          dmGeral.BUS_CD_M_OCV.DataRequest(VarArrayOf(['0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString,
                                               dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString,
                                               dmGeral.OFI_CD_M_ORV.FieldByname('INT_PLACA').AsString]));
          dmGeral.BUS_CD_M_OCV.IndexFieldNames := 'ID_ORCAMENTO';
          //pnlItens.Enabled := true;
          btnAddItens.Enabled := true;
          dgItensIButton.Enabled := true;
          if (not dmGeral.BUS_CD_M_OCV.IsEmpty) then
            begin
             //cbbCondicaoPag.Enabled := false;
             cbbOrcamento.Enabled := true;
             {pnlItens.Enabled := false;
             btnAddItens.Enabled := false;
             dgItensIButton.Enabled := false;}
            end
          else
            begin
             //cbbCondicaoPag.Enabled := true;
             cbbOrcamento.Enabled := false;
             {pnlItens.Enabled := true;
             btnAddItens.Enabled := true;
             dgItensIButton.Enabled := true;}
            end;
           dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString := '';
           dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').AsString := '';

           dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := nil;
           if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) then
                 begin
                   dmGeral.OFI_CD_M_ORV_ITE.Cancel;
                   while (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) do
                      begin
                        dmGeral.OFI_CD_M_ORV_ITE.Delete;
                      end;
                 end;
           dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := dmGeral.OFI_CD_M_ORV_ITEAfterDelete;
            OfiZerarValoresOrv;
           XClienteAnt := dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text;
           XPlacaAnt := dmGeral.OFI_CD_M_ORV.FieldByName('INT_PLACA').Text;
         end;
   // end;

  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomevei').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('descricao').AsString);
  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecom').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('int_nomecom').AsString);
  dmGeral.OFI_CD_M_ORV.FieldByName('id_veiculo').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('id_veiculo').AsString);


   dmGeral.OFI_CD_M_ORV.FieldByName('int_anofabric').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('ano_fabricacao').AsString);

   dmGeral.OFI_CD_M_ORV.FieldByName('int_anomodelo').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('ano_modelo').AsString);

   dmGeral.OFI_CD_M_ORV.FieldByName('int_nomemve').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('int_nomemve').AsString);

   dmGeral.OFI_CD_M_ORV.FieldByName('int_motorvei').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('motor').AsString);


  if (not dmGeral.BUS_CD_C_CLI_VEI.IsEmpty) then
    begin

        dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecli').Text :=
                dmGeral.BUS_CD_C_CLI_VEI.FieldByName('int_nomecli').AsString;

        dmGeral.OFI_CD_M_ORV.FieldByName('int_telfix').Text :=
                dmGeral.BUS_CD_C_CLI_VEI.FieldByName('int_telfix').AsString;

        dmGeral.OFI_CD_M_ORV.FieldByName('int_telmov').Text :=
                dmGeral.BUS_CD_C_CLI_VEI.FieldByName('int_telmovel').AsString;
    end;
   dmGeral.BUS_CD_C_CLI_VEI.Close;
end;

procedure TOFI_FM_M_ORV.txtQtdeExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
  saldo_fisico:string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or dgItens.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;

  if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
   begin
       // Este código foi comentado por Maxsuel Victor em 23/01/2017
       // foi substituído pelo código logo abaixo, pois ele contempla a questão de Estoque negativo.
       {dmGeral.BusSaldoItem(dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').Text,
                                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text,
                                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_COR').Text,
                                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TAMANHO').Text,
                                   '0',saldo_fisico);

       if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat > saldo_fisico.ToDouble(saldo_fisico)) then
          begin
           ShowMessage('Quantidade do item disponível no estoque é '+saldo_fisico);
           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat := 0;
           txtQtde.SetFocus;
           exit;
         end; }

       if not FAT_RN_M_NFE.FatTestaQtdeIte(4,dmGeral.OFI_CD_M_ORV,dmGeral.OFI_CD_M_ORV_ITE) then
          begin
            ShowMessage('Produto sem saldo no estoque!');
            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat := 0;
            txtQtde.SetFocus;
            abort;
          end;
   end;

   if txtVlrUnitario.CanFocus then
     begin
      txtVlrUnitario.SetFocus;
      exit;
     end;

    seq_item := dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsString;
    if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
     begin
       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
        // dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
         dmGeral.OFI_CD_M_ORV_ITEid_sequencia.AsInteger := (dmGeral.OFI_CD_M_ORV_ITE.RecordCount + 1) * -1;
         seq_item := dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsString;

          if (xcod_req = 0) then
           begin
             xcod_req :=SMPrincipal.enValorChave('OFI_REQUISICAO');
           end;
         dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_REQUISICAO').AsInteger := xcod_req;
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

   dmGeral.OFI_CD_M_ORV_ITE.Post;
   pnlItens.Enabled := false;
   btnAddItens.SetFocus;
   dmGeral.OFI_CD_M_ORV_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TOFI_FM_M_ORV.txtReclamacaoClienteEnter(Sender: TObject);
begin
  inherited;
  OFI_FM_M_ORV.KeyPreview := false;
end;

procedure TOFI_FM_M_ORV.txtReclamacaoClienteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       OFI_FM_M_ORV.KeyPreview := true;
       Exit;
     end;

  if dpkEntrega.Focused or txtIdCliente.Focused or txtPlaca.Focused or
     txtKmAtual.Focused or cbbTipoOS.Focused or cbbCondicaoPag.Focused or
     cbbAnalista.Focused or cbbOrcamento.Focused  then
    begin
      OFI_FM_M_ORV.KeyPreview := true;
      exit;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('OBS_RECLAMACAO').Text = '') then
     begin
       ShowMessage('O campo "Reclamação do Cliente" deve ser preenchido.');
       txtReclamacaoCliente.SetFocus;
       Exit;
     end;
    OFI_FM_M_ORV.KeyPreview := true;

end;

procedure TOFI_FM_M_ORV.txtVlrUnitarioExit(Sender: TObject);
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

  if txtBuscaItem.Focused or txtQtde.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValVlrUnitario(dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
       txtVlrUnitario.SetFocus;
       abort;
     end;

  if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency <
       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
    begin
      ShowMessage('O campo "Valor unitário" é menor que o preço tabelado.');
    end;

  if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency >
       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
    begin
      ShowMessage('O campo "Valor unitário" é maior que o preço tabelado.');
    end;


   seq_item := dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsString;
   if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
     begin
       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
       //  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
         dmGeral.OFI_CD_M_ORV_ITEid_sequencia.AsInteger := (dmGeral.OFI_CD_M_ORV_ITE.RecordCount + 1) * -1;
         seq_item := dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsString;
         if (xcod_req = 0) then
           begin
             xcod_req :=SMPrincipal.enValorChave('OFI_REQUISICAO');
           end;
         dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_REQUISICAO').AsInteger := xcod_req;
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

   dmGeral.OFI_CD_M_ORV_ITE.Post;
   pnlItens.Enabled := false;
   btnAddItens.SetFocus;
   dmGeral.OFI_CD_M_ORV_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

end.
