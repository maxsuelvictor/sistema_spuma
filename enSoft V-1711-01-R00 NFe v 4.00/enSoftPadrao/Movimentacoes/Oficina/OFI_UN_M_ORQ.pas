unit OFI_UN_M_ORQ;

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
  Datasnap.DBClient;

type
  TOFI_FM_M_ORQ = class(TPAD_FM_X_PAD)
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
    OFI_FR_M_ORV: TfrxReport;
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
    pmIteCoj: TPopupMenu;
    btnIteCoj: TMenuItem;
    btnImportar: TcxButton;
    Panel7: TPanel;
    Label7: TLabel;
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
    procedure btnIteCojClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
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
  OFI_FM_M_ORQ: TOFI_FM_M_ORQ;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI,  PSQ_UN_X_ITE, OFI_RN_M_ORV,
  OFI_UN_M_ORV_CAN, enConstantes, FAT_RN_M_NFE, PSQ_UN_X_EQP, CSU_UN_C_ITE_COJ,
  OFI_UN_M_ORQ_SUB;

procedure TOFI_FM_M_ORQ.acAdicionaExecute(Sender: TObject);
begin
  inherited;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString = '') then
    begin
      ShowMessage('Tipo de movimento de estoque deve ser preenchido na tela de par�metros.');
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
       ShowMessage('Tipo de movimento de estoque selecionado na tela de par�metros deve ter os CFOPs preenchidos.');
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

   dmGeral.OFI_CD_M_ORV.FieldBYName('TIPO_ORDEM').AsInteger := 3;
end;

procedure TOFI_FM_M_ORQ.HabilDesabCammpos(Ativar:Boolean);
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

procedure TOFI_FM_M_ORQ.AbrirBusca;
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

procedure TOFI_FM_M_ORQ.acAlterarExecute(Sender: TObject);
begin
    if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString = '') then
    begin
      ShowMessage('Tipo de movimento de estoque deve ser preenchido na tela de par�metros.');
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
         ShowMessage('Tipo de movimento de estoque selecionado na tela de par�metros deve ter os CFOPs preenchidos.');
         abort;
       end;

    if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger <> 0) then
      begin
        ShowMessage('Altera��o � permitida somente para ordem de servi�o em aberto.');
        exit;
      end;

    if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV) then
      begin
        inherited;
        HabilDesabCammpos(false);
        txtReclamacaoCliente.SetFocus;
        btnImprimirEspelho.Enabled := false;
        dmgeral.BusEquip(0,dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').AsString);
      end;
    btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_ORQ.acCancelarExecute(Sender: TObject);
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

procedure TOFI_FM_M_ORQ.acExcluirExecute(Sender: TObject);
begin
  inherited;
//  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV);
end;

procedure TOFI_FM_M_ORQ.ChamaMecanicoTerceiro;
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

procedure TOFI_FM_M_ORQ.btnImportarClick(Sender: TObject);
begin
  inherited;
  OFI_FM_M_ORQ_SUB := TOFI_FM_M_ORQ_SUB.Create(Self);
  OFI_FM_M_ORQ_SUB.ShowModal;
  OFI_FM_M_ORQ_SUB.Free;
end;

procedure TOFI_FM_M_ORQ.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

   {cOMTEN}
   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString = '') then
    begin
      ShowMessage('Tipo de movimento de estoque deve ser preenchido na tela de par�metros.');
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
       ShowMessage('Tipo de movimento de estoque selecionado na tela de par�metros deve ter os CFOPs preenchidos.');
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
        ShowMessage('H� ordem de servi�o n�o faturada para o mesmo cliente, ve�culo e tipo OS em quest�o.');
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
      ShowMessage('� necess�rio incluir pelo menos 1 item.');
      abort;
    end;

  {dmGeral.OFI_CD_M_ORV_ITE.First;
  while (not dmGeral.OFI_CD_M_ORV_ITE.EOF) do
    begin
       dmGeral.OFI_CD_M_ORV_ITE.Edit;
       dmGeral.OFI_CD_M_ORV_ITE.Post;
       dmGeral.OFI_CD_M_ORV_ITE.Next;
    end;}


  if (dmGeral.OFI_CD_M_ORV.FieldByName('ORDEM_SUBSTITUICAO').AsBoolean=true) and
     (dmGeral.OFI_CD_M_ORV.RecordCount=0) then
    begin
      ShowMessage('A ordem � de substitui��o, tem que importar itens de pelo menos 1 OS em aberto ou andamento.');
      exit;
    end;



 if MessageDlg('Confirma a Grava��o?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
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
             dmGeral.OFI_CD_M_ORV.DataRequest(VarArrayOf([0, codigo,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'1','3']));
     AbrirBusca;
    end
  else
    begin
      dpkEntrega.SetFocus;
    end;
     btnExcluir.Enabled := false;

end;

procedure TOFI_FM_M_ORQ.Atualizar_xBusca;
begin
   if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> C�d. item';
       xbusca_item := 'ID_ITEM';
     end
  else if xbusca_item = 'ID_ITEM' then
      begin
        lblItem.Caption := '<F7> C�d. f�brica';
        xbusca_item := 'COD_FABRICA';
      end
   else if xbusca_item = 'COD_FABRICA' then
      begin
        lblItem.Caption := '<F7> C�d. barra';
        xbusca_item := 'COD_BARRA';
      end
   else if xbusca_item = 'COD_BARRA' then
      begin
        lblItem.Caption := '<F7> C�d. item';
        xbusca_item := 'ID_ITEM';
      end;
end;



procedure TOFI_FM_M_ORQ.btnAddItensClick(Sender: TObject);
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

procedure TOFI_FM_M_ORQ.btnAddItensKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_ORQ.btnCancelarRegistroClick(Sender: TObject);
begin
  inherited;
//  OFI_FM_M_ORQ_CAN := TOFI_FM_M_ORQ_CAN.Create(Self);
  //OFI_FM_M_ORQ_CAN.Show;
end;

procedure TOFI_FM_M_ORQ.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (cbbPesquisa.ItemIndex = 0) then
      begin
    dmGeral.OFI_CD_M_ORV.Close;
    dmGeral.OFI_CD_M_ORV.Data :=
    dmGeral.OFI_CD_M_ORV.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,'1','3']));
      end
    else
      begin
      dmGeral.OFI_CD_M_ORV.Close;
      dmGeral.OFI_CD_M_ORV.Data :=
      dmGeral.OFI_CD_M_ORV.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,'1','3']));
      end;
  finally
     Screen.Cursor := crDefault;
  end;
   btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_ORQ.btnImprimirEspelhoClick(Sender: TObject);
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

        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean or
           dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean then
           begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

              if FileExists(PathImg) then
                 begin
                    LogoEmpresa := TfrxPictureView(OFI_FR_M_ORV_EQP.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;

              dmGeral.BusCliente(0,dmGeral.OFI_CD_R_ORV.FieldByName('ID_CLIENTE').AsString);

              if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = true) then
               begin
                TfrxMemoView(OFI_FR_M_ORV_EQP.FindComponent('mmAssCli')).Visible := true;
                TfrxLineView(OFI_FR_M_ORV_EQP.FindComponent('lvAssinCli')).Visible := true;
               end
              else
               begin
                TfrxMemoView(OFI_FR_M_ORV_EQP.FindComponent('mmAssCli')).Visible := false;
                TfrxLineView(OFI_FR_M_ORV_EQP.FindComponent('lvAssinCli')).Visible := false;
               end;

              OFI_FR_M_ORV_EQP.Variables['ft_profissao'] :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('PROFISSAO').AsString);

              dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_ORQ.Name,xCodLme,xRevLme,nil);
              OFI_FR_M_ORV_EQP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              OFI_FR_M_ORV_EQP.Variables['Opcoes'] :=  QuotedStr('');
              OFI_FR_M_ORV_EQP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              OFI_FR_M_ORV_EQP.PrepareReport();
              OFI_FR_M_ORV_EQP.ShowReport();
           end
        else
           begin
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

              dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_ORQ.Name,xCodLme,xRevLme,nil);
              OFI_FR_M_ORV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              OFI_FR_M_ORV.Variables['Opcoes'] :=  QuotedStr('');
              OFI_FR_M_ORV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              OFI_FR_M_ORV.PrepareReport();
              OFI_FR_M_ORV.ShowReport();
           end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;

end;

procedure TOFI_FM_M_ORQ.btnIteCojClick(Sender: TObject);
begin
  inherited;
  if not dmGeral.OFI_CD_M_ORV_ITE.IsEmpty then
    begin
      CSU_FM_C_ITE_COJ := TCSU_FM_C_ITE_COJ.Create(Self);
      CSU_FM_C_ITE_COJ.xCodItem := dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').text;
      CSU_FM_C_ITE_COJ.ShowModal;
      CSU_FM_C_ITE_COJ.Free;
    end;
end;

procedure TOFI_FM_M_ORQ.cbbAnalistaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
      dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1, '%']));
  cbbAnalista.DropDown;
end;

procedure TOFI_FM_M_ORQ.cbbAnalistaExit(Sender: TObject);
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
       ShowMessage('Analista n�o encontrado.');
       cbbAnalista.SetFocus;
       Exit;
     end;
end;

procedure TOFI_FM_M_ORQ.cbbCondicaoPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  cbbCondicaoPag.DropDown;
end;

procedure TOFI_FM_M_ORQ.cbbCondicaoPagExit(Sender: TObject);
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
       ShowMessage('O campo "Condi��o Pag" deve ser preenchido.');
       cbbCondicaoPag.SetFocus;
       Exit;
     end;

  dmGeral.BusCondPgto(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text);
  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condi��o de pagamento n�o encontrado.');
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


procedure TOFI_FM_M_ORQ.cbbMecanico1Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FU2.Close;
  dmGeral.BUS_CD_C_FU2.Data :=
      dmGeral.BUS_CD_C_FU2.DataRequest(VarArrayOf([8,1, '%']));

  cbbMecanico.DropDown;
end;

procedure TOFI_FM_M_ORQ.cbbMecanico1Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').Text = '' then
     begin
       ShowMessage('O campo "Mec�nico" deve ser preenchido.');
       cbbMecanico.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario2(0,dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').Text);
  if dmGeral.BUS_CD_C_FU2.IsEmpty then
     begin
       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomemec').Text :='';
       ShowMessage('Mec�nico n�o encontrado.');
       cbbMecanico.SetFocus;
       Exit;
     end
  else
    begin
      dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomemec').Text :=
          dmGeral.BUS_CD_C_FU2.FieldByName('nome').AsString;
    end;
end;

procedure TOFI_FM_M_ORQ.cbbMecanicoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FU2.Close;
  dmGeral.BUS_CD_C_FU2.Data :=
      dmGeral.BUS_CD_C_FU2.DataRequest(VarArrayOf([8,1, '%']));
  cbbMecanico.DropDown;
end;

procedure TOFI_FM_M_ORQ.cbbMecanicoExit(Sender: TObject);
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
       ShowMessage('O campo "Mec�nico" deve ser preenchido.');
       cbbMecanico.SetFocus;
       exit;
     end;

   dmGeral.BusFuncionario2(0,dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString);
   if (dmGeral.BUS_CD_C_FU2.IsEmpty) then
      begin
         ShowMessage('Funcion�rio n�o encontrado.');
         cbbMecanico.SetFocus;
         exit;
      end;

   if (dmGeral.BUS_CD_C_FU2.FieldByName('ATIVO').AsBoolean = False) then
     begin
       ShowMessage('Funcion�rio inativo.');
       cbbMecanico.SetFocus;
       exit;
     end;


  { dmGeral.BUS_CD_C_FUN_CRG.Close;
   dmGeral.BUS_CD_C_FUN_CRG.Data :=
   dmGeral.BUS_CD_C_FUN_CRG.DataRequest(VarArrayOf(['', '']));

   if (not dmGeral.BUS_CD_C_FUN_CRG.IsEmpty) then
     begin
       ShowMessage('Funcion�rio n�o permitido.');
       cbbMecanico.SetFocus;
       exit;
     end; }

   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEMEC').AsString :=
              dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;

   txtQtde.SetFocus;
   pnlMecTer.Visible := False;
end;

procedure TOFI_FM_M_ORQ.cbbOrcamentoEnter(Sender: TObject);
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

procedure TOFI_FM_M_ORQ.cbbOrcamentoExit(Sender: TObject);
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
       ShowMessage('O campo "Or�amento" deve ser preenchido.');
       cbbOrcamento.SetFocus;
       Exit;
     end;

  if (not dmGeral.BUS_CD_M_OCV.Locate('ID_ORCAMENTO',dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').Text,[])) then
    begin
       ShowMessage('N� Or�amento inv�lido.');
       dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').Text := '';
       cbbOrcamento.SetFocus;
       Exit;
    end;

 { if dmGeral.BUS_CD_M_OCV.IsEmpty then
    begin
      ShowMessage('N� Or�amento inv�lido.');
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
                Showmessage('A tributa��o do item n�o foi encontrada:' + #13 +
                            'Item: ' + dmgeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text + ' - ' +
                             dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEITE').AsString + #13 +
                            'Por favor verifique a tributa��o dos itens do or�amento.');
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

procedure TOFI_FM_M_ORQ.cbbPesquisaChange(Sender: TObject);
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

procedure TOFI_FM_M_ORQ.cbbTerceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFornecedor(1,'%');
  cbbTerceiro.DropDown;
end;

procedure TOFI_FM_M_ORQ.cbbTerceiroExit(Sender: TObject);
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
         ShowMessage('Fornecedor n�o encontrado.');
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

procedure TOFI_FM_M_ORQ.cbbTipoOSEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoOS(1,'%');
  cbbTipoOS.DropDown;
end;

procedure TOFI_FM_M_ORQ.cbbTipoOSExit(Sender: TObject);
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
       ShowMessage('Tipo da OS n�o encontrado.');
       cbbTipoOS.SetFocus;
       Exit;
     end;

   OFI_RN_M_ORV.BusOrdemAbertoFechadaAndamento;

   if (not dmGeral.BUS_CD_M_ORV.IsEmpty) then
      begin
        ShowMessage('H� ordem de servi�o n�o faturada para o mesmo cliente, ve�culo e tipo OS em quest�o.');
        cbbTipoOS.SetFocus;
        exit;
      end;

   dmGeral.OFI_CD_M_ORV.FieldByName('INT_NOMETIO').AsString :=
      dmGeral.BUS_CD_C_TIO.FieldByName('DESCRICAO').AsString;
end;

procedure TOFI_FM_M_ORQ.dbGridCalcCellColors(Sender: TObject; Field: TField;
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

procedure TOFI_FM_M_ORQ.dgItensIButtonClick(Sender: TObject);
var
  codOrdSub:String;
begin
  inherited;
   try
      dgItensIButton.Enabled := false;
     if dmGeral.OFI_CD_M_ORV_ITE.IsEmpty then
        begin
          ShowMessage('N�o h� registro para excluir.');
          abort;
        end;
     codOrdSub := '';
     if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ORDEM_SUBST').AsInteger>0) then
        begin
          codOrdSub := dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ORDEM_SUBST').AsString;
          if MessageDlg('Outros itens ser�o deletados da mesma ordem de servi�o a ser substitu�da. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
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

procedure TOFI_FM_M_ORQ.dgItensMouseUp(Sender: TObject; Button: TMouseButton;
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

procedure TOFI_FM_M_ORQ.dpkEntregaExit(Sender: TObject);
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

procedure TOFI_FM_M_ORQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.OFI_CD_M_ORV.Close;
  FreeAndNil(OFI_FM_M_ORQ);
end;

procedure TOFI_FM_M_ORQ.FormShow(Sender: TObject);
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

  if (not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean=true)) then
    begin
      dgItens.PopupMenu := nil;
    end;

  btnImportar.Visible := false;
  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('SUBSTITUIR_OS').AsBoolean=true) and
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean=true)) then
    begin
       btnImportar.Visible := true;
    end;
end;

procedure TOFI_FM_M_ORQ.pmCancelarPopup(Sender: TObject);
begin
  inherited;
  if (dmGeral.OFI_CD_M_ORVstatus.AsInteger = 0) then
    begin
       OFI_FM_M_ORQ.pmCancelar.Items[0].Enabled := True;
    end
  else
    begin
         OFI_FM_M_ORQ.pmCancelar.Items[0].Enabled := False;
    end;
end;

procedure TOFI_FM_M_ORQ.pnlItensExit(Sender: TObject);
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

procedure TOFI_FM_M_ORQ.txtIdClienteButtonClick(Sender: TObject);
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



procedure TOFI_FM_M_ORQ.txtIdClienteExit(Sender: TObject);
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
       ShowMessage('Cliente n�o encontrado.');
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
         (dmGeral.OFI_CD_M_ORV.FieldByName('ID_EQUIPAMENTO').Text <> '')) and
          ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> XClienteAnt) or
          (dmGeral.OFI_CD_M_ORV.FieldByName('ID_EQUIPAMENTO').Text <> XEquipAnt)) then
         begin
          if ((dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) {and (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').AsString<>'')}) then
            begin
             if MessageDlg('Os itens selecionados ser�o deletados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
               begin
                dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text := XClienteAnt;
                dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').Text := XEquipAnt;
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
           XEquipAnt   := dmGeral.OFI_CD_M_ORV.FieldByName('ID_EQUIPAMENTO').Text;
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

procedure TOFI_FM_M_ORQ.txtBuscaItemButtonClick(Sender: TObject);
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

procedure TOFI_FM_M_ORQ.txtBuscaItemExit(Sender: TObject);
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
          ShowMessage('O item tem que ser tipo servi�o');
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
  // se o resultado for igual = 0, quer dizer que n�o foi encontrado
  if (pos(dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString,'00-04-09') = 0) then
      begin
        ShowMessage('O item s� pode ser de grupo com tipo do item igual a: ' + #13 +
                    '- Mercadoria para Revenda;' + #13 +
                    '- Produto Acabado;' + #13 +
                    '- ou Servi�o;');
        txtBuscaItem.SetFocus;
        dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
        exit;
      end;

  {if dmGeral.BUS_CD_C_GRU.IsEmpty or (pos(dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString,'07-08')<>0) then
    begin
      ShowMessage('Tipo de item n�o permitido.');
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
                ShowMessage('Pre�o do item n�o cadastro para categoria do veiculo.');
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
                Showmessage('A tributa��o do item n�o foi encontrada');
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
       ShowMessage('Item n�o encontrado.');
       txtBuscaItem.SetFocus;
       Exit;
     end;  }
end;

procedure TOFI_FM_M_ORQ.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_ORQ.txtDescricaoProblemaEnter(Sender: TObject);
begin
  inherited;
   OFI_FM_M_ORQ.KeyPreview := false;
end;

procedure TOFI_FM_M_ORQ.txtDescricaoProblemaExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.CanFocus) then
    begin
      btnAddItens.SetFocus;
    end;

   OFI_FM_M_ORQ.KeyPreview := true;
end;

procedure TOFI_FM_M_ORQ.txtKmAtualExit(Sender: TObject);
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

procedure TOFI_FM_M_ORQ.txtOrcamentoExit(Sender: TObject);
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

procedure TOFI_FM_M_ORQ.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_ORQ.txtEqpButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_EQP := TPSQ_FM_X_EQP.Create(Self);
  PSQ_FM_X_EQP.ShowModal;
  if not PSQ_FM_X_EQP.BUS_CD_C_EQP.IsEmpty then
     begin
        dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').Text :=
                PSQ_FM_X_EQP.BUS_CD_C_EQP.FieldByName('id_equipamento').AsString;
        dmGeral.OFI_CD_M_ORV.FieldByName('int_nomeeqp').Text :=
                trim(PSQ_FM_X_EQP.BUS_CD_C_EQP.FieldByName('descricao').AsString);
     end;
   PSQ_FM_X_EQP.BUS_CD_C_EQP.Close;
   PSQ_FM_X_EQP.Free;
end;



procedure TOFI_FM_M_ORQ.txtEqpExit(Sender: TObject);
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

  if (trim(dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').AsString) = '') then
    begin
      ShowMessage('O campo "Equipamento" deve ser preenchido.');
      txtEqp.SetFocus;
      exit;
    end;


  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomeeqp').Text := '';

  dmGeral.BusEquip(0,trim(dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').Text));
  if dmGeral.BUS_CD_C_EQP.IsEmpty then
     begin
       ShowMessage('Equipamento n�o encontrado.');
       txtEqp.SetFocus;
       Exit;
     end;

  {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_CRITICA_OCV_ABER').AsBoolean = True) then
    begin }
     if ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> '') and
         (dmGeral.OFI_CD_M_ORV.FieldByName('ID_EQUIPAMENTO').Text <> ''))  and
          ((dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text <> XClienteAnt) or
          (dmGeral.OFI_CD_M_ORV.FieldByName('ID_EQUIPAMENTO').Text <> XEquipAnt))  then
         begin
           if ((dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) {and (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORCAMENTO').AsString<>'')}) then
            begin
             if MessageDlg('Os itens selecionados ser�o deletados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
               begin
                dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text := XClienteAnt;
                dmGeral.OFI_CD_M_ORV.FieldByName('ID_EQUIPAMENTO').Text := XEquipAnt;
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
           XEquipAnt := dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').Text;
         end;
   // end;

  {dmGeral.OFI_CD_M_ORV.FieldByName('int_nomevei').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('descricao').AsString);
  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomecom').Text :=
                trim(dmGeral.BUS_CD_C_VEI.FieldByName('int_nomecom').AsString);  }
  dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').Text :=
                trim(dmGeral.BUS_CD_C_EQP.FieldByName('id_equipamento').AsString);
  dmGeral.OFI_CD_M_ORV.FieldByName('int_nomeeqp').Text :=
                trim(dmGeral.BUS_CD_C_EQP.FieldByName('descricao').AsString);


end;

procedure TOFI_FM_M_ORQ.txtQtdeExit(Sender: TObject);
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
                                     '0',saldo_fisico);

          if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat > saldo_fisico.ToDouble(saldo_fisico)) then
            begin
             ShowMessage('Quantidade do item dispon�vel no estoque � '+saldo_fisico);
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

procedure TOFI_FM_M_ORQ.txtReclamacaoClienteEnter(Sender: TObject);
begin
  inherited;
  OFI_FM_M_ORQ.KeyPreview := false;
end;

procedure TOFI_FM_M_ORQ.txtReclamacaoClienteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       OFI_FM_M_ORQ.KeyPreview := true;
       Exit;
     end;

  if dpkEntrega.Focused or txtIdCliente.Focused or txtEqp.Focused or
     cbbTipoOS.Focused or cbbCondicaoPag.Focused or
     cbbAnalista.Focused or cbbOrcamento.Focused  then
    begin
      OFI_FM_M_ORQ.KeyPreview := true;
      exit;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('OBS_RECLAMACAO').Text = '') then
     begin
       ShowMessage('O campo "Reclama��o do Cliente" deve ser preenchido.');
       txtReclamacaoCliente.SetFocus;
       Exit;
     end;
    OFI_FM_M_ORQ.KeyPreview := true;

end;

procedure TOFI_FM_M_ORQ.txtVlrUnitarioExit(Sender: TObject);
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
