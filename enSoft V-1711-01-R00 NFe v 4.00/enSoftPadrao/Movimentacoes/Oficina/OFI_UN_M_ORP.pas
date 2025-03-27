unit OFI_UN_M_ORP;

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
  TOFI_FM_M_ORP = class(TPAD_FM_X_PAD)
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
    txtEqp: TJvDBComboEdit;
    lblTipoOS: TLabel;
    cbbTipoOS: TwwDBLookupCombo;
    lblCondicaoPag: TLabel;
    cbbCondicaoPag: TwwDBLookupCombo;
    lblAnalista: TLabel;
    cbbAnalista: TwwDBLookupCombo;
    lblOrcamento: TLabel;
    gbObservacoes: TGroupBox;
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
    pnlMecTer: TPanel;
    lblMecanico: TLabel;
    lblTerceiro: TLabel;
    cbbTerceiro: TwwDBLookupCombo;
    cbbMecanico: TwwDBLookupCombo;
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
    txtDescEqp: TwwDBEdit;
    OFI_FR_M_ORV_EQP: TfrxReport;
    Panel7: TPanel;
    Label7: TLabel;
    cbbAlmoxarifado: TwwDBLookupCombo;
    Label8: TLabel;
    Label9: TLabel;
    txtHorimetro: TwwDBEdit;
    txtKM: TwwDBEdit;
    Label10: TLabel;
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
    procedure txtEqpButtonClick(Sender: TObject);
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
    procedure txtEqpExit(Sender: TObject);
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
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
  private
    { Private declarations }
  procedure Atualizar_xBusca;
  procedure HabilDesabCammpos(Ativar:Boolean);
  procedure ChamaMecanicoTerceiro;
  procedure AbrirBusca;
    var
      xbusca_item: String;
      modo_adicionar:boolean;
      xOrcAnterior:string;
      XCod_Req:integer;
      xAtivadoOrc:boolean;
      XClienteAnt,XEquipAnt:string;
  public
    { Public declarations }
  end;

var
  OFI_FM_M_ORP: TOFI_FM_M_ORP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI,  PSQ_UN_X_ITE, OFI_RN_M_ORV, enConstantes, FAT_RN_M_NFE, PSQ_UN_X_MEQ{, CSU_UN_C_ITE_COJ};
  {OFI_UN_M_ORP_SUB;}

procedure TOFI_FM_M_ORP.acAdicionaExecute(Sender: TObject);
begin
  inherited;

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

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV);
  dpkEntrega.SetFocus;
  pnlItens.Enabled := false;
  btnExcluir.Enabled := false;
  btnImprimirEspelho.Enabled := false;
  XEquipAnt := '';
  XClienteAnt := '';

  {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
    begin
      pnlItens.Enabled := false;
      btnAddItens.Enabled := false;
      dgItensIButton.Enabled := false;
    end;}
   xcod_req := 0;

   dmGeral.OFI_CD_M_ORV.FieldBYName('TIPO_ORDEM').AsInteger := 4;
end;

procedure TOFI_FM_M_ORP.HabilDesabCammpos(Ativar:Boolean);
begin
  modo_adicionar := Ativar;
  txtIdCliente.Enabled := Ativar;
  txtEqp.Enabled := Ativar;
  cbbTipoOS.Enabled := Ativar;
  pnlItens.Enabled := Ativar;
  btnAddItens.Enabled := Ativar;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('ORDEM_SUBSTITUICAO').AsBoolean=false) then
    dgItensIButton.Enabled := Ativar;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
    begin
      cbbCondicaoPag.Enabled := Ativar;
    end;

end;

procedure TOFI_FM_M_ORP.AbrirBusca;
begin
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
      dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1, '%']));

  dmGeral.BUS_CD_C_FUN_MEC.Close;
  dmGeral.BUS_CD_C_FUN_MEC.Open;

  dmGeral.BusTipoOS(1,'%');
  dmGeral.BusCondPgto(1,'%');
  dmGeral.BusFornecedor(1,'%');
  dmgeral.BusAlmox(1,'%');
end;

procedure TOFI_FM_M_ORP.acAlterarExecute(Sender: TObject);
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
        HabilDesabCammpos(false);
        txtReclamacaoCliente.SetFocus;
        btnImprimirEspelho.Enabled := false;
        dmgeral.BusMaqEquip(0,dmGeral.OFI_CD_M_ORV.FieldByName('id_meq').AsString);
      end;
    btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_ORP.acCancelarExecute(Sender: TObject);
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

procedure TOFI_FM_M_ORP.acExcluirExecute(Sender: TObject);
begin
  inherited;
//  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV);
end;

procedure TOFI_FM_M_ORP.ChamaMecanicoTerceiro;
begin
  if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_mecanico').AsBoolean=true) then
    begin
      if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09')) or
         ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
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

procedure TOFI_FM_M_ORP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

   {cOMTEN}
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

  { if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_critica_ocv_aber').AsBoolean = True) and
      (not dmGeral.BUS_CD_M_OCV.IsEmpty) and
      (cbbOrcamento.CanFocus) then
      begin
       if (dmGeral.OFI_CD_M_ORV.FieldByName('id_orcamento').AsString='') then
         begin
           ShowMessage('Orcamento deve ser informado.');
           cbbOrcamento.SetFocus;
           Exit;
         end;
      end; }



   OFI_RN_M_ORV.BusOrdemAbertoFechadaAndamento;

   if (not dmGeral.BUS_CD_M_ORV.IsEmpty) then
      begin
        ShowMessage('Há ordem de serviço não faturada para o mesmo cliente, veículo e tipo OS em questão.');
        exit;
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
             dmGeral.OFI_CD_M_ORV.DataRequest(VarArrayOf([0, codigo,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'1','4']));
     AbrirBusca;
    end
  else
    begin
      dpkEntrega.SetFocus;
    end;
     btnExcluir.Enabled := false;

end;

procedure TOFI_FM_M_ORP.Atualizar_xBusca;
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



procedure TOFI_FM_M_ORP.btnAddItensClick(Sender: TObject);
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

procedure TOFI_FM_M_ORP.btnAddItensKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_ORP.btnCancelarRegistroClick(Sender: TObject);
begin
  inherited;
//  OFI_FM_M_ORQ_CAN := TOFI_FM_M_ORQ_CAN.Create(Self);
  //OFI_FM_M_ORQ_CAN.Show;
end;

procedure TOFI_FM_M_ORP.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (cbbPesquisa.ItemIndex in [0,1]) then
      begin
       dmGeral.OFI_CD_M_ORV.Close;
       dmGeral.OFI_CD_M_ORV.Data :=
       dmGeral.OFI_CD_M_ORV.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,'1','4']));
      end
    else if (cbbPesquisa.ItemIndex in [2..5]) then
      begin
      dmGeral.OFI_CD_M_ORV.Close;
      dmGeral.OFI_CD_M_ORV.Data :=
      dmGeral.OFI_CD_M_ORV.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex+1,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,'1','4']));
      end
    else if (cbbPesquisa.ItemIndex in [6,7]) then
      begin
      dmGeral.OFI_CD_M_ORV.Close;
      dmGeral.OFI_CD_M_ORV.Data :=
      dmGeral.OFI_CD_M_ORV.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex+6,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,'1','4']));
      end

  finally
     Screen.Cursor := crDefault;
  end;
   btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_ORP.btnImprimirEspelhoClick(Sender: TObject);
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
              LogoEmpresa := TfrxPictureView(OFI_FR_M_ORV_EQP.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCliente(0,dmGeral.OFI_CD_R_ORV.FieldByName('ID_CLIENTE').AsString);

        if (dmGeral.OFI_CD_M_ORV.FieldByName('INT_TIPOMEI').AsInteger = 0) then
          begin
             OFI_FR_M_ORV_EQP.Variables['km_horimetro'] :=  QuotedStr('Horímetro:'+dmGeral.OFI_CD_M_ORV.FieldByName('horimetro').AsString);
          end
        else
          begin
             OFI_FR_M_ORV_EQP.Variables['km_horimetro'] :=  QuotedStr('Km Atual:'+dmGeral.OFI_CD_M_ORV.FieldByName('km_atual').AsString);
          end;

        OFI_FR_M_ORV_EQP.Variables['ft_profissao'] :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('PROFISSAO').AsString);

        dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_ORP.Name,xCodLme,xRevLme,nil);
        OFI_FR_M_ORV_EQP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        OFI_FR_M_ORV_EQP.Variables['Opcoes'] :=  QuotedStr('');
        OFI_FR_M_ORV_EQP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        OFI_FR_M_ORV_EQP.PrepareReport();
        OFI_FR_M_ORV_EQP.ShowReport();

      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;

end;

procedure TOFI_FM_M_ORP.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BusAlmox(1,'%');
  cbbAlmoxarifado.DropDown;
end;

procedure TOFI_FM_M_ORP.cbbAnalistaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
      dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1, '%']));
  cbbAnalista.DropDown;
end;

procedure TOFI_FM_M_ORP.cbbAnalistaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dpkEntrega.Focused or txtIdCliente.Focused or txtEqp.Focused or
     cbbTipoOS.Focused or cbbCondicaoPag.Focused then
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

procedure TOFI_FM_M_ORP.cbbCondicaoPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  cbbCondicaoPag.DropDown;
end;

procedure TOFI_FM_M_ORP.cbbCondicaoPagExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dpkEntrega.Focused or txtIdCliente.Focused or
     txtEqp.Focused or cbbTipoOS.Focused then
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


procedure TOFI_FM_M_ORP.cbbMecanico1Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FU2.Close;
  dmGeral.BUS_CD_C_FU2.Data :=
      dmGeral.BUS_CD_C_FU2.DataRequest(VarArrayOf([8,1, '%']));

  cbbMecanico.DropDown;
end;

procedure TOFI_FM_M_ORP.cbbMecanico1Exit(Sender: TObject);
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

procedure TOFI_FM_M_ORP.cbbMecanicoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN_MEC.Close;
  dmGeral.BUS_CD_C_FUN_MEC.Open;
  cbbMecanico.DropDown;
end;

procedure TOFI_FM_M_ORP.cbbMecanicoExit(Sender: TObject);
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

   if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString = '') then
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
     end;


  { dmGeral.BUS_CD_C_FUN_CRG.Close;
   dmGeral.BUS_CD_C_FUN_CRG.Data :=
   dmGeral.BUS_CD_C_FUN_CRG.DataRequest(VarArrayOf(['', '']));

   if (not dmGeral.BUS_CD_C_FUN_CRG.IsEmpty) then
     begin
       ShowMessage('Funcionário não permitido.');
       cbbMecanico.SetFocus;
       exit;
     end; }

   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEMEC').AsString :=
              dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;

   txtQtde.SetFocus;
   pnlMecTer.Visible := False;
end;

procedure TOFI_FM_M_ORP.cbbOrcamentoEnter(Sender: TObject);
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
    end;

  dmGeral.BUS_CD_M_OCV.Close;
  dmGeral.BUS_CD_M_OCV.Data :=
  dmGeral.BUS_CD_M_OCV.DataRequest(VarArrayOf([dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString,
                                               dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString,
                                               dmGeral.OFI_CD_M_ORV.FieldByname('INT_PLACA').AsString]));

  dmGeral.BUS_CD_M_OCV.IndexFieldNames := 'ID_ORCAMENTO';}
  cbbOrcamento.DropDown;
end;

procedure TOFI_FM_M_ORP.cbbOrcamentoExit(Sender: TObject);
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
                //PostMessage(txtKmAtual.Handle, WM_SETFOCUS, 0, 0);
                //txtKmAtual.SetFocus;
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

procedure TOFI_FM_M_ORP.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if cbbPesquisa.ItemIndex in [0,4] then
    begin
     txtPesquisa.NumbersOnly := true;
     end
  else
    begin
     txtPesquisa.NumbersOnly := false;
   end;
end;

procedure TOFI_FM_M_ORP.cbbTerceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFornecedor(1,'%');
  cbbTerceiro.DropDown;
end;

procedure TOFI_FM_M_ORP.cbbTerceiroExit(Sender: TObject);
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

   if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').AsString = '') then
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
       dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

   txtQtde.SetFocus;
   pnlMecTer.Visible := False;
end;

procedure TOFI_FM_M_ORP.cbbTipoOSEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoOS(1,'%');
  cbbTipoOS.DropDown;
end;

procedure TOFI_FM_M_ORP.cbbTipoOSExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dpkEntrega.Focused or txtIdCliente.Focused or
     txtEqp.Focused then
    begin
      exit;
    end;

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

 //  OFI_RN_M_ORV.BusOrdemAbertoFechadaAndamento;

   if (not dmGeral.BUS_CD_M_ORV.IsEmpty) then
      begin
        ShowMessage('Há ordem de serviço não faturada para o mesmo cliente, máquina/equip e tipo OS em questão.');
        cbbTipoOS.SetFocus;
        exit;
      end;

   dmGeral.OFI_CD_M_ORV.FieldByName('INT_NOMETIO').AsString :=
      dmGeral.BUS_CD_C_TIO.FieldByName('DESCRICAO').AsString;
end;

procedure TOFI_FM_M_ORP.dbGridCalcCellColors(Sender: TObject; Field: TField;
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

   if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 5) then
     begin
       AFont.Color := clPurple;
     end;
end;

procedure TOFI_FM_M_ORP.dbGridRowChanged(Sender: TObject);
begin
  inherited;
 if (not dmGeral.OFI_CD_M_ORV.IsEmpty) then
   begin
      if (dmGeral.OFI_CD_M_ORV.FieldByName('int_tipomei').AsInteger=0) then
        begin
          txtKm.Enabled := false;
          txtKm.Color := $00DADADA;


          txtHorimetro.Enabled := true;
          txtHorimetro.Color := clWhite;
        end
      else
        begin
          txtKm.Enabled := true;
          txtKm.Color := clWhite;

          txtHorimetro.Enabled := false;
          txtHorimetro.Color := $00DADADA;

        end;
   end;
end;

procedure TOFI_FM_M_ORP.dgItensIButtonClick(Sender: TObject);
var
  codOrdSub:String;
begin
  inherited;
   try
      dgItensIButton.Enabled := false;
     if dmGeral.OFI_CD_M_ORV_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     codOrdSub := '';
     if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ORDEM_SUBST').AsInteger>0) then
        begin
          codOrdSub := dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ORDEM_SUBST').AsString;
          if MessageDlg('Outros itens serão deletados da mesma ordem de serviço a ser substituída. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
            begin
              exit;
            end;
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



     if (codOrdSub <>'') then
        begin
          try
            dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;
            dmGeral.OFI_CD_M_ORV_ITE.Filtered:=true;
            dmGeral.OFI_CD_M_ORV_ITE.Filter:='ID_ORDEM_SUBST='+codOrdSub;
            while (not dmGeral.OFI_CD_M_ORV_ITE.IsEmpty) do
             begin
               dmGeral.OFI_CD_M_ORV_ITE.Delete;
             end;
          finally
            dmGeral.OFI_CD_M_ORV_ITE.Filtered:=false;
            dmGeral.OFI_CD_M_ORV_ITE.AfterPost :=dmGeral.OFI_CD_M_ORV_ITEAfterPost;
          end;
          OFI_RN_M_ORV.OfiCalculaVlrTotaisOrv;
          OFI_RN_M_ORV.OfiRatearVlrDescOrv;
        end;

     if ((dmGeral.OFI_CD_M_ORV_ITE.RecordCount=0) and (dmGeral.OFI_CD_M_ORV.UpdateStatus in [usInserted])) then
        begin
          btnAddItens.Enabled := true;
          dmgeral.OFI_CD_M_ORV.FieldByName('ORDEM_SUBSTITUICAO').AsBoolean:=false;
        end;

     dmGeral.OFI_CD_M_ORV_ITE.Edit;
  finally
    dgItensIButton.Enabled := true;
  end;
end;

procedure TOFI_FM_M_ORP.dgItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if ((modo_adicionar) and (dmGeral.OFI_CD_M_ORV.FieldByName('ORDEM_SUBSTITUICAO').AsBoolean=false)) then
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

procedure TOFI_FM_M_ORP.dpkEntregaExit(Sender: TObject);
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

procedure TOFI_FM_M_ORP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.OFI_CD_M_ORV.Close;
  FreeAndNil(OFI_FM_M_ORP);
end;

procedure TOFI_FM_M_ORP.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.OFI_CD_M_ORV.Close;
  dmGeral.OFI_CD_M_ORV.Data := dmGeral.OFI_CD_M_ORV.DataRequest(VarArrayOf([0, '','','1']));
  dmGeral.OFI_CD_M_ORV.Open;

  xbusca_item := '';
  xOrcAnterior := '';

  Atualizar_xBusca;

  AbrirBusca;

  modo_adicionar := true;

  btnExcluir.Enabled := false;
  txtReclamacaoCliente.Height:=95;


  txtNomeCliente.ReadOnly := true;
  txtNomeCliente.Color := $00DADADA;

  txtTelFixo.ReadOnly := true;
  txtTelFixo.Color := $00DADADA;

  txtTelMovel.ReadOnly := true;
  txtTelMOvel.Color := $00DADADA;



  txtDescricaoItem.ReadOnly := true;
  txtDescricaoItem.Color := $00DADADA;

  txtVlrTotal.ReadOnly := true;
  txtVlrTotal.Color := $00DADADA;

  {txtVlrUnitario.Enabled := false;
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
    end; }
  txtPesquisa.SetFocus;



end;

procedure TOFI_FM_M_ORP.pmCancelarPopup(Sender: TObject);
begin
  inherited;
  if (dmGeral.OFI_CD_M_ORVstatus.AsInteger = 0) then
    begin
       OFI_FM_M_ORP.pmCancelar.Items[0].Enabled := True;
    end
  else
    begin
         OFI_FM_M_ORP.pmCancelar.Items[0].Enabled := False;
    end;
end;

procedure TOFI_FM_M_ORP.pnlItensExit(Sender: TObject);
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

procedure TOFI_FM_M_ORP.txtIdClienteButtonClick(Sender: TObject);
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



procedure TOFI_FM_M_ORP.txtIdClienteExit(Sender: TObject);
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
         (dmGeral.OFI_CD_M_ORV.FieldByName('ID_MEQ').Text <> '')) and
          ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> XClienteAnt) or
          (dmGeral.OFI_CD_M_ORV.FieldByName('ID_MEQ').Text <> XEquipAnt)) then
         begin
          if ((dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) {and (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').AsString<>'')}) then
            begin
             if MessageDlg('Os itens selecionados serão deletados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
               begin
                dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text := XClienteAnt;
                dmGeral.OFI_CD_M_ORV.FieldByName('id_meq').Text := XEquipAnt;
                exit;
               end;
            end;

         { dmGeral.BUS_CD_M_OCV.Close;
          dmGeral.BUS_CD_M_OCV.Data :=
          dmGeral.BUS_CD_M_OCV.DataRequest(VarArrayOf([dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString,
                                               dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString,
                                               dmGeral.OFI_CD_M_ORV.FieldByname('ID_EQUIPAMENTO').AsString]));
          dmGeral.BUS_CD_M_OCV.IndexFieldNames := 'ID_ORCAMENTO';  }
          pnlItens.Enabled := true;
          btnAddItens.Enabled := true;
          dgItensIButton.Enabled := true;
           {   if (not dmGeral.BUS_CD_M_OCV.IsEmpty) then
                begin
                 cbbOrcamento.Enabled := true;
                end
              else
                begin
                 cbbOrcamento.Enabled := false;
                end; }

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
           XEquipAnt   := dmGeral.OFI_CD_M_ORV.FieldByName('ID_MEQ').Text;
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


end;

procedure TOFI_FM_M_ORP.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
    //if  dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsString<>'' then
      id_categ_vei := 0;

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

procedure TOFI_FM_M_ORP.txtBuscaItemExit(Sender: TObject);
var
  id_categoria:Integer;
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


  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = true) then
    begin
      if (dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
        begin
          ShowMessage('O item tem que ser tipo serviço');
          txtBuscaItem.Text := '';
          txtBuscaItem.SetFocus;
          exit;
        end;
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


  {if (pos(dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString,'00-04-09') = 0) then
      begin
        ShowMessage('O item só pode ser de grupo com tipo do item igual a: ' + #13 +
                    '- Mercadoria para Revenda;' + #13 +
                    '- Produto Acabado;' + #13 +
                    '- ou Serviço;');
        txtBuscaItem.SetFocus;
        dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
        exit;
      end; }



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


   id_categoria:= 0;
  // if  dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsString<>'' then
  //    id_categoria := dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsInteger;

   dmGeral.CalcPrecoItem(1,'0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text,
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
                ShowMessage('Preço do item não cadastro para categoria do veiculo.');
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

   { if not FAT_RN_M_NFE.VerifTribItem('S', dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').Text,
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
              end;  }



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

procedure TOFI_FM_M_ORP.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_ORP.txtDescricaoProblemaEnter(Sender: TObject);
begin
  inherited;
   OFI_FM_M_ORP.KeyPreview := false;
end;

procedure TOFI_FM_M_ORP.txtDescricaoProblemaExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.CanFocus) then
    begin
      btnAddItens.SetFocus;
    end;

   OFI_FM_M_ORP.KeyPreview := true;
end;

procedure TOFI_FM_M_ORP.txtKmAtualExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if dpkEntrega.Focused or txtIdCliente.Focused or txtEqp.Focused then
    begin
      exit;
    end;

  {if dmGeral.OFI_CD_M_ORV.FieldByName('KM_ATUAL').Text = '' then
     begin
       ShowMessage('O campo "Km Atual" deve ser preenchido.');
       txtKmAtual.SetFocus;
     end; }
end;

procedure TOFI_FM_M_ORP.txtOrcamentoExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused then
     begin
       exit;
     end;

   if dpkEntrega.Focused or txtIdCliente.Focused or txtEqp.Focused or
      cbbTipoOS.Focused or cbbCondicaoPag.Focused or
      cbbAnalista.Focused then
      begin
        exit;
      end;
end;

procedure TOFI_FM_M_ORP.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_ORP.txtEqpButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
  PSQ_FM_X_MEQ.ShowModal;
  if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
     begin
        dmGeral.OFI_CD_M_ORV.FieldByName('id_meq').Text :=
                PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('id_meq').AsString;
        dmGeral.OFI_CD_M_ORV.FieldByName('int_nomemeq').Text :=
                trim(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('descricao').AsString);
     end;
   PSQ_FM_X_MEQ.BUS_CD_C_MEQ.Close;
   PSQ_FM_X_MEQ.Free;
end;



procedure TOFI_FM_M_ORP.txtEqpExit(Sender: TObject);
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

  if (trim(dmGeral.OFI_CD_M_ORV.FieldByName('id_meq').AsString) = '') then
    begin
      ShowMessage('O campo "Equipamento" deve ser preenchido.');
      txtEqp.SetFocus;
      exit;
    end;


  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomemeq').Text := '';

  dmGeral.BusMaqEquip(0,trim(dmGeral.OFI_CD_M_ORV.FieldByName('id_meq').Text));
  if dmGeral.BUS_CD_C_MEQ.IsEmpty then
     begin
       ShowMessage('Equipamento não encontrado.');
       txtEqp.SetFocus;
       Exit;
     end;

  {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
    begin }
     if ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> '') and
         (dmGeral.OFI_CD_M_ORV.FieldByName('ID_MEQ').Text <> ''))  and
          ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> XClienteAnt) or
          (dmGeral.OFI_CD_M_ORV.FieldByName('ID_MEQ').Text <> XEquipAnt))  then
         begin
           if ((dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) {and (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').AsString<>'')}) then
            begin
             if MessageDlg('Os itens selecionados serão deletados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
               begin
                dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text := XClienteAnt;
                dmGeral.OFI_CD_M_ORV.FieldByName('ID_MEQ').Text := XEquipAnt;
                exit;
               end;
            end;

          {dmGeral.BUS_CD_M_OCV.Close;
          dmGeral.BUS_CD_M_OCV.Data :=
          dmGeral.BUS_CD_M_OCV.DataRequest(VarArrayOf([dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString,
                                               dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString,
                                               dmGeral.OFI_CD_M_ORV.FieldByname('ID_EQUIPAMENTO').AsString]));
          dmGeral.BUS_CD_M_OCV.IndexFieldNames := 'ID_ORCAMENTO'; }
         // pnlItens.Enabled := true;
          btnAddItens.Enabled := true;
          dgItensIButton.Enabled := true;
          {if (not dmGeral.BUS_CD_M_OCV.IsEmpty) then
            begin
             cbbOrcamento.Enabled := true;
            end
          else
            begin

             cbbOrcamento.Enabled := false;
            end; }
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
           XEquipAnt := dmGeral.OFI_CD_M_ORV.FieldByName('id_meq').Text;
         end;
   // end;

  {dmGeral.OFI_CD_M_ORV.FieldByName('int_nomevei').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('descricao').AsString);
  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecom').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('int_nomecom').AsString);  }
  dmGeral.OFI_CD_M_ORV.FieldByName('id_meq').Text :=
                trim(dmGeral.BUS_CD_C_MEQ.FieldByName('id_meq').AsString);
  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomemeq').Text :=
                trim(dmGeral.BUS_CD_C_MEQ.FieldByName('descricao').AsString);

 dmGeral.OFI_CD_M_ORV.FieldByName('INT_TIPOMEI').AsString :=
                trim(dmGeral.BUS_CD_C_MEQ.FieldByName('tipo_mei').AsString);
  if (dmGeral.BUS_CD_C_MEQ.FieldByName('TIPO_MEI').AsInteger=0) then
    begin
      txtKm.Enabled := false;
      txtKm.ReadOnly := true;
      txtKm.Color := $00DADADA;
      txtKm.Text := '';
      dmGeral.OFI_CD_M_ORV.FieldByName('km_atual').Text := '';

      txtHorimetro.Enabled := true;
      txtHorimetro.ReadOnly := false;
      txtHorimetro.Color := clWhite;
    end
  else
    begin
      txtKm.Enabled := true;
      txtKm.ReadOnly := false;
      txtKm.Color := clWhite;

      txtHorimetro.Enabled := false;
      txtHorimetro.Color := $00DADADA;
      txtHorimetro.ReadOnly := true;
      txtHorimetro.Text := '';
      dmGeral.OFI_CD_M_ORV.FieldByName('horimetro').Text := '';
    end;


end;

procedure TOFI_FM_M_ORP.txtQtdeExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
  saldo_fisico,msg:string;
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

  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
    begin
       if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
        begin

          dmGeral.BusSaldoItem(dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').Text,
                                     dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text,
                                     dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_COR').Text,
                                     dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TAMANHO').Text,
                                     dmGeral.OFI_CD_M_ORV.FieldByName('ID_ALMOXARIFADO').Text,saldo_fisico);

          if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat > saldo_fisico.ToDouble(saldo_fisico)) then
            begin
             ShowMessage('Quantidade do item disponível no estoque é '+saldo_fisico);
             dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat := 0;
             txtQtde.SetFocus;
             exit;
           end;
        end;


       if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_ITE_CONJ').AsBoolean =true then
         begin
            msg := dmGeral.BusSaldoItemCoj(dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').Text,
                                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text,
                                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_COR').Text,
                                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TAMANHO').Text,
                                      '0',dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsCurrency);
            if msg <>'' then
              begin
                ShowMessage('Item tem os seguintes conjugados com saldo insuficiente:'+#13+msg);
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat := 0;
                txtQtde.SetFocus;
                exit;
              end;

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

procedure TOFI_FM_M_ORP.txtReclamacaoClienteEnter(Sender: TObject);
begin
  inherited;
  OFI_FM_M_ORP.KeyPreview := false;
end;

procedure TOFI_FM_M_ORP.txtReclamacaoClienteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       OFI_FM_M_ORP.KeyPreview := true;
       Exit;
     end;

  if dpkEntrega.Focused or txtIdCliente.Focused or txtEqp.Focused or
     cbbTipoOS.Focused or cbbCondicaoPag.Focused or
     cbbAnalista.Focused or cbbOrcamento.Focused  then
    begin
      OFI_FM_M_ORP.KeyPreview := true;
      exit;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('OBS_RECLAMACAO').Text = '') then
     begin
       ShowMessage('O campo "Reclamação do Cliente" deve ser preenchido.');
       txtReclamacaoCliente.SetFocus;
       Exit;
     end;
    OFI_FM_M_ORP.KeyPreview := true;

end;

procedure TOFI_FM_M_ORP.txtVlrUnitarioExit(Sender: TObject);
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
