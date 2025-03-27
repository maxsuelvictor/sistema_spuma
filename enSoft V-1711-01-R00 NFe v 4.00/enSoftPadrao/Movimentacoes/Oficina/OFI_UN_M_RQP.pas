unit OFI_UN_M_RQP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.Mask, vcl.Wwdbedit, JvExMask, JvToolEdit, JvDBControls, JvExExtCtrls,
  JvExtComponent, JvPanel, frxClass, frxDBSet, frxExportPDF, frxExportXLS, uProxy,
  Datasnap.DBClient;

type
  TOFI_FM_M_RQP = class(TPAD_FM_X_PAD)
    gbInfoOrdemServicos: TGroupBox;
    lblNumeroOrdem: TLabel;
    txtNumeroOrdem: TwwDBEdit;
    lblEmissao: TLabel;
    txtEmissao: TwwDBEdit;
    lblTipoOS: TLabel;
    txtTipoOS: TwwDBEdit;
    lblCliente: TLabel;
    txtCliente: TwwDBEdit;
    lblVeiculo: TLabel;
    txtVeiculo: TwwDBEdit;
    gbObservacoes: TGroupBox;
    txtDescricaoProblema: TwwDBEdit;
    gbDespesas: TGroupBox;
    pnlDespesas: TPanel;
    lblData: TLabel;
    lblLocal: TLabel;
    txtLocal: TwwDBEdit;
    lblTipo: TLabel;
    cbbTipo: TwwDBLookupCombo;
    txtValor: TwwDBEdit;
    lblValor: TLabel;
    btnAddDespesas: TBitBtn;
    lblDescricaoProblema: TLabel;
    dgDespesas: TwwDBGrid;
    gbItens: TGroupBox;
    pnlItens: TPanel;
    lblItem: TLabel;
    lblQtde: TLabel;
    lblVlrUnitario: TLabel;
    lblVlrTotal: TLabel;
    txtDescricaoItem: TwwDBEdit;
    btnAddItens: TBitBtn;
    txtQtde: TwwDBEdit;
    txtVlrUnitario: TwwDBEdit;
    txtVlrTotal: TwwDBEdit;
    dgItens: TwwDBGrid;
    dgDespesasIButton: TwwIButton;
    dgItensIButton: TwwIButton;
    dsoDes: TwwDataSource;
    dsoIte: TwwDataSource;
    txtBuscaItem: TJvDBComboEdit;
    dpkData: TJvDBDateEdit;
    btnImprimirEspelho: TBitBtn;
    pmCancelar: TPopupMenu;
    btnCancelarReg: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    OFI_XL_M_RQV: TfrxXLSExport;
    OFI_FR_M_RQV2: TfrxReport;
    OFI_PD_M_RQV: TfrxPDFExport;
    OFI_DB_M_RQV: TfrxDBDataset;
    pnlMecTer: TPanel;
    lblMecanico: TLabel;
    lblTerceiro: TLabel;
    cbbTerceiro: TwwDBLookupCombo;
    cbbMecanico: TwwDBLookupCombo;
    OFI_DB_M_RQV_ITE: TfrxDBDataset;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    OFI_FR_M_RQV: TfrxReport;
    wwDBEdit1: TwwDBEdit;
    procedure FormShow(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddDespesasClick(Sender: TObject);
    procedure txtValorExit(Sender: TObject);
    procedure dgDespesasIButtonClick(Sender: TObject);
    procedure btnAddItensClick(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure dgItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgDespesasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
   // procedure cbbMecanicoExit(Sender: TObject);
   // procedure cbbMecanicoEnter(Sender: TObject);
    procedure dpkDataExit(Sender: TObject);
    procedure txtLocalExit(Sender: TObject);
    procedure txtDescricaoProblemaExit(Sender: TObject);
    procedure cbbTipoEnter(Sender: TObject);
    procedure cbbTipoExit(Sender: TObject);
    procedure dgItensIButtonClick(Sender: TObject);
    procedure pnlDespesasExit(Sender: TObject);
    procedure txtTerceiroButtonClick(Sender: TObject);
   // procedure txtTerceiroExit(Sender: TObject);
    procedure btnCancelarRegClick(Sender: TObject);
    procedure pmCancelarPopup(Sender: TObject);
    procedure dgItensCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure txtVlrUnitarioExit(Sender: TObject);
    procedure cbbMecanicoEnter(Sender: TObject);
    procedure cbbMecanicoExit(Sender: TObject);
    procedure cbbTerceiroEnter(Sender: TObject);
    procedure cbbTerceiroExit(Sender: TObject);
    procedure btnImprimirEspelhoClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dgItensDblClick(Sender: TObject);
    procedure btnAddItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Atualizar_xBusca;
    procedure ChamaMecanicoTerceiro;
    procedure AbrirBuscas;
    var
      xbusca_item: String;
      xcod_req:integer;
  public
    { Public declarations }
  end;

var
  OFI_FM_M_RQP: TOFI_FM_M_RQP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, PSQ_UN_X_FOR, OFI_UN_M_RQP_CAN, OFI_RN_M_ORV,
  OFI_UN_M_RQP_IMP, OFI_RN_M_RQV, FAT_RN_M_NFE, OFI_UN_M_RQV;

procedure TOFI_FM_M_RQP.acAlterarExecute(Sender: TObject);
begin

   if (dmGeral.OFI_CD_M_ORV.FieldByName('ORDEM_SUBSTITUICAO').AsBoolean = true) then
    begin
       ShowMessage('Alteração não permitida. A ordem de serviço é de substituição.');
       exit;
    end;

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

   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV) then
    begin
        inherited;
        pnlDespesas.Enabled := False;
        pnlItens.Enabled := False;
        btnAddItens.SetFocus;
        btnImprimirEspelho.Enabled := false;
        xcod_req := 0;

        dmGeral.BusEquip(0,trim(dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').Text));
        //dmgeral.BusVeiculo(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_VEICULO').AsString);



    end;
end;

procedure TOFI_FM_M_RQP.acCancelarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV) then
     begin
       inherited;
       dbGrid.SetFocus;
       btnImprimirEspelho.Enabled := true;
       btnAddItens.Enabled := true;
     end
  else
     begin
       txtDescricaoProblema.SetFocus;
     end;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_RQP.AbrirBuscas;
begin
  dmGeral.BUS_CD_C_FUN_MEC.Close;
  dmGeral.BUS_CD_C_FUN_MEC.Open;

  dmGeral.BusFornecedor(1,'%');
  dmGeral.BUS_PR_X_ORV_DES_TIP;
end;

procedure TOFI_FM_M_RQP.acExcluirExecute(Sender: TObject);
begin
  inherited;
  //Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_M_ORV);
end;

procedure TOFI_FM_M_RQP.acGravarExecute(Sender: TObject);
var
  codigo: string;
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

  dmGeral.OFI_CD_M_ORV_ITE.Cancel;
  while (not dmgeral.OFI_CD_M_ORV_ITE.EOF) do
    begin
       if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
          begin
           if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = true) and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').AsString = ''))  or

              ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString = '')) or

              ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = false) and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString = '')) then
               begin
                 ShowMessage('Existe item em que o campo "Mecânico" ou "Terceiro" deve ser preenchido.');
                 exit;
               end;
          end;
       dmGeral.OFI_CD_M_ORV_ITE.Next;
    end;

  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     OFI_RN_M_RQV.OfiCalculaVlrDespesaRqvDes;
     OFI_RN_M_RQV.OfiCalculaVlrTotaisRqv;
     if (dmGeral.OFI_CD_M_ORV.ChangeCount>0) then
        begin
          dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger := 1;
        end;

     codigo := dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsString;
     DmGeral.Grava(dmGeral.OFI_CD_M_ORV);
     inherited;
     dmGeral.OFI_CD_M_ORV.Close;
     dmGeral.OFI_CD_M_ORV.Data :=
          dmGeral.OFI_CD_M_ORV.DataRequest(VarArrayOf([0, codigo,'','2','3']));
     AbrirBuscas;
     btnImprimirEspelho.Enabled := true;
     btnAddItens.Enabled := true;
    end
   else
    begin
      btnAddItens.SetFocus;
    end;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_RQP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.OFI_CD_M_ORV.Close;
  FreeAndNil(OFI_FM_M_RQP);
end;

procedure TOFI_FM_M_RQP.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.OFI_CD_M_ORV.Close;
  dmGeral.OFI_CD_M_ORV.Data := dmGeral.OFI_CD_M_ORV.DataRequest(VarArrayOf([0, '','','2']));
  dmGeral.OFI_CD_M_ORV.Open;

  AbrirBuscas;

  xbusca_item := '';
  Atualizar_xBusca;
  txtPesquisa.SetFocus;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
  dgItensIButton.Enabled := false;

  txtDescricaoProblema.Height := 147;

  txtVlrTotal.Color := $00DADADA;
  txtVlrTotal.ReadOnly := true;

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

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_MECANICO').AsBoolean = false) then
    begin
     dgItens.ColumnByName('int_nomeite').DisplayWidth :=
                  (dgItens.ColumnByName('int_nomeite').DisplayWidth +
                   dgItens.ColumnByName('int_nomemec').DisplayWidth);
     dgItens.ColumnByName('int_nomemec').Visible := false;
    end;

  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TOFI_FM_M_RQP.pmCancelarPopup(Sender: TObject);
begin
  inherited;
   if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
    begin
       OFI_FM_M_RQP.pmCancelar.Items[0].Enabled := True;
    end
  else
    begin
       OFI_FM_M_RQP.pmCancelar.Items[0].Enabled := False;
    end;
end;

procedure TOFI_FM_M_RQP.pnlDespesasExit(Sender: TObject);
begin
  inherited;
  if (btnAddDespesas.Focused) or (dgDespesas.Focused) or
     (not dgDespesasIButton.Enabled) then
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

        dmGeral.OFI_CD_M_ORV_DES.Cancel;
        dmGeral.OFI_CD_M_ORV_DES.Edit;

        finally
           pnlDespesas.Enabled := False;
        end;
      end;
end;

procedure TOFI_FM_M_RQP.pnlItensExit(Sender: TObject);
begin
  inherited;
      if (btnAddItens.Focused) or (dgItens.Focused) or
        (not dgItensIButton.Enabled) or (cbbMecanico.Focused) or (cbbTerceiro.Focused) then
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

procedure TOFI_FM_M_RQP.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);

   //if  dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsString<>'' then
     // id_categ_vei := dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsInteger;

     id_categ_vei := 0;
   PSQ_FM_X_ITE.ShowModal;
      // txtTerceiro.Enabled := true;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

           {if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPOITEM').AsInteger <> 9 then
              txtTerceiro.Enabled := false;   }

         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TOFI_FM_M_RQP.txtBuscaItemExit(Sender: TObject);
var
  id_categoria:Integer;
begin
  inherited;


  if dgItens.Focused then
     Exit;
  dmGeral.BUS_CD_C_ITE.Close;
  if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin
       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            Exit;
          end;

       if btnAddItens.Focused then
          Exit;

       if dgItens.Focused then
          Exit;

       if not dgItensIButton.Enabled then
          Exit;

       if (cbbMecanico.Focused) or (cbbTerceiro.Focused) or (txtQtde.Focused) or txtVlrUnitario.Focused then
           begin
             txtDescricaoItem.Text := '';
             ShowMessage('O campo "Item" deve ser prenchido.');
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

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEITE').AsString := '';
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEAPL').AsString := '';
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEREF').AsString := '';
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEUND').AsString := '';
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString := '';

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
      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
      exit;
    end;}

  if (dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString = '09') then
    begin
      dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean :=
         dmGeral.BUS_CD_C_GRU.FieldByName('SER_TERCEIRO').AsBoolean;
    end;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text :=
        dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nomeite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEAPL').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('APLICACAO').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEREF').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('REFERENCIA').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').Text :=
        dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEUND').AsString :=
         dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;


  id_categoria:= 0;
    //if  dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsString<>'' then
    //  id_categoria := dmGeral.BUS_CD_C_VEI.FieldByName('int_id_cat').AsInteger;

  dmGeral.CalcPrecoItem(1,'0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text,
                          dmGeral.OFI_CD_M_ORV_ITE,false,false,0,0,
                          id_categoria);


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

  ChamaMecanicoTerceiro;
  {try
   pnlItens.onExit := nil;

  finally
     pnlItens.OnExit := pnlItensExit;
  end;}
end;

procedure TOFI_FM_M_RQP.ChamaMecanicoTerceiro;
begin

  if  (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_MECANICO').AsBoolean = true) and ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') or
     ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False))) then
     begin
       cbbTerceiro.Visible := false;
       lblTerceiro.Visible  := false;
       cbbMecanico.Visible := true;
       lblMecanico.Visible  := true;

       pnlMecTer.Left  := 126;
       pnlMecTer.Top   := 15;
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


       pnlMecTer.Left := 126;
       pnlMecTer.Top := 15;
       pnlMecTer.Width := 137;

       cbbTerceiro.Left := 4;
       lblTerceiro.left := 4;

       pnlMecTer.Visible := True;
       cbbTerceiro.SetFocus;
     end;
end;

procedure TOFI_FM_M_RQP.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_RQP.txtDescricaoProblemaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if dmGeral.OFI_CD_M_ORV.FieldByName('obs_problema').Text = '' then
     begin
       ShowMessage('O campo "Descrição do Problema" deve ser prenchido.');
       txtDescricaoProblema.SetFocus;
     end;
end;

procedure TOFI_FM_M_RQP.txtLocalExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if btnAddDespesas.Focused or dgDespesas.Focused or dpkData.Focused then
     begin
       Exit;
     end;


  if dmGeral.OFI_CD_M_ORV_DES.FieldByName('LOCAL').Text = '' then
     begin
      ShowMessage('O campo "Local" deve ser preenchido.');
      txtLocal.SetFocus;
     end;
end;

procedure TOFI_FM_M_RQP.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_RQP.txtQtdeExit(Sender: TObject);
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
      dmGeral.BusSaldoItem(dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').Text,
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
       //  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');  //ERA OFI_TB_M_ORV_ITE
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
  // dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;
   dmGeral.OFI_CD_M_ORV_ITE.Post;
  // dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
   pnlItens.Enabled := false;
   btnAddItens.SetFocus;
   dmGeral.OFI_CD_M_ORV_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TOFI_FM_M_RQP.txtTerceiroButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').AsInteger :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;

           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nometer').Text :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;


         end;
   PSQ_FM_X_FOR.Free;
end;

{procedure TOFI_FM_M_RQV.txtTerceiroExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if btnAddItens.Focused or dgItens.Focused
     or txtBuscaItem.Focused or cbbMecanico.Focused then
     begin
       Exit;
     end;

  if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').Text = '' then
     begin
       ShowMessage('O campo "Terceiro" deve ser preenchido.');
       txtTerceiro.SetFocus;
       Exit;
     end;

  dmGeral.BusFornecedor(0,dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').Text);
  if dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
         dmGeral.OFI_CD_M_ORV_ITE.FieldByName('id_terceiro').Text :='';
         dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nometer').Text :='';
       ShowMessage('Terceiro não encontrado.');
       txtTerceiro.SetFocus;
       Exit;

     end;
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('id_terceiro').Text :=
    dmGeral.BUS_CD_C_FOR.FieldByName('id_fornecedor').AsString;

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_nometer').Text :=
    dmGeral.BUS_CD_C_FOR.FieldByName('descricao').AsString;

end; }

procedure TOFI_FM_M_RQP.txtValorExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if  dpkData.Focused or txtLocal.Focused or
       cbbTipo.Focused or dgDespesas.Focused then
     begin
       Exit;
     end;

  if not (dmGeral.TesValVlr(dmGeral.OFI_CD_M_ORV_DES.FieldByName('vlr_despesa').AsCurrency)) then
     begin
       txtValor.SetFocus;
       abort;
     end;

  seq_item := dmGeral.OFI_CD_M_ORV_DES.FieldByName('ID_SEQUENCIA').AsString;
  if dmGeral.OFI_CD_M_ORV_DES.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
     begin
     //Busca sequencia no servidor
      SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
      try
        dmGeral.OFI_CD_M_ORV_DES.FieldByName('ID_SEQUENCIA').AsInteger :=
           SMPrincipal.enValorChave('OFI_TB_M_ORV_DES');
      finally
        FreeAndNil(SMPrincipal);
      end;
    end;

  dmGeral.OFI_CD_M_ORV_DES.Post;

  pnlDespesas.Enabled := False;
  btnAddDespesas.SetFocus;
  dmGeral.OFI_CD_M_ORV_DES.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TOFI_FM_M_RQP.txtVlrUnitarioExit(Sender: TObject);
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
       //  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');   //ERA OFI_TB_M_ORV_ITE
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
  // dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;
   dmGeral.OFI_CD_M_ORV_ITE.Post;
  // dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
   pnlItens.Enabled := false;
   btnAddItens.SetFocus;
   dmGeral.OFI_CD_M_ORV_ITE.locate('ID_SEQUENCIA',seq_item,[]);
end;

procedure TOFI_FM_M_RQP.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
   if (dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger = 0) then
     begin
       AFont.Color := clBlue;
     end;
end;

procedure TOFI_FM_M_RQP.dgDespesasIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgDespesasIButton.Enabled := false;
     if dmGeral.OFI_CD_M_ORV_DES.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.OFI_CD_M_ORV_DES.Delete;
     dmGeral.OFI_CD_M_ORV_DES.Edit;
  finally
    dgDespesasIButton.Enabled := true;
  end;
end;

procedure TOFI_FM_M_RQP.dgDespesasMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlDespesas.Enabled = False then
     pnlDespesas.Enabled := True;

  dmGeral.OFI_CD_M_ORV_DES.Cancel;

  if dmGeral.OFI_CD_M_ORV_DES.IsEmpty then
     begin
       dmGeral.OFI_CD_M_ORV_DES.Append;
       pnlDespesas.Enabled := True;
       dpkData.SetFocus;
     end
  else
     begin
       dmGeral.OFI_CD_M_ORV_DES.Edit;
       pnlDespesas.Enabled := True;
       dpkData.SetFocus;
     end;
end;

procedure TOFI_FM_M_RQP.dgItensCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = True) then
    begin
      AFont.Color := clRed;
    end;
end;

procedure TOFI_FM_M_RQP.dgItensDblClick(Sender: TObject);
begin
  inherited;
  if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) then
    begin
     if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
        begin
          if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09')) or
             ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
             begin
              if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString = '') then
                begin
                  dmGeral.OFI_CD_M_ORV_ITE.Edit;
                  ChamaMecanicoTerceiro;
                end;
             end;
          if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
             begin
              if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').AsString = '') then
                begin
                 dmGeral.OFI_CD_M_ORV_ITE.Edit;
                 ChamaMecanicoTerceiro;
                end;
             end;
        end;
    end;
end;

procedure TOFI_FM_M_RQP.dgItensIButtonClick(Sender: TObject);
begin
  inherited;
{ try
    dgItensIButton.Enabled := false;
    if dmGeral.OFI_CD_M_ORV_ITE.IsEmpty then
       begin
         ShowMessage('Não há registro para excluir.');
         abort;
       end;
    dmGeral.OFI_CD_M_ORV_ITE.Delete;
    dmGeral.OFI_CD_M_ORV_ITE.Edit;
  finally
    dgItensIButton.Enabled := true;
  end;  }
end;

procedure TOFI_FM_M_RQP.dgItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  {if pnlItens.Enabled = False then
     pnlItens.Enabled := True; }

  dmGeral.OFI_CD_M_ORV_ITE.Cancel;

  if dmGeral.OFI_CD_M_ORV_ITE.IsEmpty then
     begin
       dmGeral.OFI_CD_M_ORV_ITE.Append;
       pnlItens.Enabled := True;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       {if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09')) or
          ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
         begin
           if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString = '') then
             begin
               dmGeral.OFI_CD_M_ORV_ITE.Edit;
                ChamaMecanicoTerceiro;
             end;
         end;
       if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
         begin
           if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TERCEIRO').AsString = '') then
             begin
               dmGeral.OFI_CD_M_ORV_ITE.Edit;
               ChamaMecanicoTerceiro;
             end;
         end; }

       //pnlItens.Enabled := True;
     end;

end;

procedure TOFI_FM_M_RQP.dpkDataExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if btnAddDespesas.Focused then
     Exit;

  if dgDespesas.Focused then
     Exit;

  if not dgDespesasIButton.Enabled then
     Exit;


  if dmGeral.OFI_CD_M_ORV_DES.FieldByName('DTA_DESPESA').Text = '' then
     begin
       ShowMessage('O campo "Data" deve ser preenchido.');
       dpkData.SetFocus;
     end;

end;

procedure TOFI_FM_M_RQP.Atualizar_xBusca;
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


procedure TOFI_FM_M_RQP.btnAddDespesasClick(Sender: TObject);
begin
  inherited;
  pnlDespesas.Enabled  := True;
  dmGeral.OFI_CD_M_ORV.BeforePost := nil;
  dmGeral.OFI_CD_M_ORV_DES.Insert;
  dmGeral.OFI_CD_M_ORV.BeforePost := dmGeral.OFI_CD_M_ORVBeforePost;

  dpkData.SetFocus;
end;

procedure TOFI_FM_M_RQP.btnAddItensClick(Sender: TObject);
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

procedure TOFI_FM_M_RQP.btnAddItensKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_M_RQP.btnCancelarRegClick(Sender: TObject);
begin
  inherited;
  OFI_FM_M_RQP_CAN := TOFI_FM_M_RQP_CAN.Create(Self);
  OFI_FM_M_RQP_CAN.Show;
end;

procedure TOFI_FM_M_RQP.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (cbbPesquisa.ItemIndex in [0,1] ) then
       begin
        dmGeral.OFI_CD_M_ORV.Close;
        dmGeral.OFI_CD_M_ORV.Data :=
        dmGeral.OFI_CD_M_ORV.DataRequest(
                VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'2','3']));
       end;

    if (cbbPesquisa.ItemIndex in [2,3]) then
       begin
        dmGeral.OFI_CD_M_ORV.Close;
        dmGeral.OFI_CD_M_ORV.Data :=
        dmGeral.OFI_CD_M_ORV.DataRequest(
                VarArrayOf([cbbPesquisa.ItemIndex+1,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'2','3']));
       end;

    if cbbPesquisa.ItemIndex = 4 then
       begin
        dmGeral.OFI_CD_M_ORV.Close;
        dmGeral.OFI_CD_M_ORV.Data :=
        dmGeral.OFI_CD_M_ORV.DataRequest(
                VarArrayOf([10,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'2','3']));
       end;

    if cbbPesquisa.ItemIndex = 5 then
       begin
        dmGeral.OFI_CD_M_ORV.Close;
        dmGeral.OFI_CD_M_ORV.Data :=
        dmGeral.OFI_CD_M_ORV.DataRequest(
                VarArrayOf([11,txtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'2','3']));
       end;

  if (not dmGeral.OFI_CD_M_ORV.IsEmpty) and (not dmGeral.OFI_CD_M_ORV_ITE.IsEmpty) then
     begin
       dmGeral.OFI_CD_M_ORV_ITE.IndexFieldNames := 'ID_REQUISICAO';
     end;
  finally
     Screen.Cursor := crDefault;
  end;
  btnExcluir.Enabled := false;
  btnIncluir.Enabled := false;
end;

procedure TOFI_FM_M_RQP.btnImprimirEspelhoClick(Sender: TObject);
var
  codigo, PathImg: string;
begin
  inherited;
  if not dmGeral.OFI_CD_M_ORV.IsEmpty then
      begin
        codigo := dmGeral.OFI_CD_M_ORVid_ordem.text;
        dmGeral.OFI_CD_R_RQV.Close;
        dmGeral.OFI_CD_R_RQV.Data :=
        dmGeral.OFI_CD_R_RQV.DataRequest(VarArrayOf([codigo]));

        OFI_FM_M_RQP_IMP := TOFI_FM_M_RQP_IMP.Create(Self);
        OFI_FM_M_RQP_IMP.Show;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;

end;



procedure TOFI_FM_M_RQP.cbbMecanicoEnter(Sender: TObject);
begin
  inherited;

  dmGeral.BUS_CD_C_FUN_MEC.Close;
  dmGeral.BUS_CD_C_FUN_MEC.Open;
  cbbMecanico.DropDown;
  if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString = '' then
    keybd_event(VK_DOWN, 0, 0, 0);
end;

procedure TOFI_FM_M_RQP.cbbMecanicoExit(Sender: TObject);
var
  seq_item:string;
begin
  inherited;
   if btnCancelar.Focused then
     begin
       pnlMecTer.Visible := False;
       Exit;
     end;

   if dgItens.Focused then
     begin
        pnlMecTer.Visible := False;
       Exit;
     end;

   if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString = '') and (not cbbMecanico.Focused)then
     begin
       ShowMessage('O campo "Mecânico" deve ser preenchido.');
       cbbMecanico.SetFocus;
       exit;
     end;

   dmGeral.BusFuncionario(0,dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsString);
   if (dmGeral.BUS_CD_C_FUN.IsEmpty) then
      begin
         ShowMessage('Funcionário não encontrado.');
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

   if dmGeral.OFI_CD_M_ORV_ITE.State in [dsEdit] then
      begin
        seq_item :=  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsString;
        dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;
        dmGeral.OFI_CD_M_ORV_ITE.Post;
        dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
        dmGeral.OFI_CD_M_ORV_ITE.locate('ID_SEQUENCIA',seq_item,[]);
        pnlMecTer.Visible := False;
        btnAddItens.SetFocus;
        exit;
      end;

   txtQtde.SetFocus;
   pnlMecTer.Visible := False;
end;

procedure TOFI_FM_M_RQP.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if cbbPesquisa.ItemIndex in [0,3,5] then
    begin
     txtPesquisa.NumbersOnly := true;
     end
  else
    begin
     txtPesquisa.NumbersOnly := false;
   end;
end;

procedure TOFI_FM_M_RQP.cbbTerceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFornecedor(1,'%');
  cbbTerceiro.DropDown;
end;

procedure TOFI_FM_M_RQP.cbbTerceiroExit(Sender: TObject);
var
  seq_item:string;
begin
  inherited;
   if btnCancelar.Focused then
     begin
       pnlMecTer.Visible := False;
       Exit;
     end;

   if dgItens.Focused then
     begin
        pnlMecTer.Visible := False;
       Exit;
     end;

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

   if (dmGeral.BUS_CD_C_FOR.FieldByName('ATIVO').AsBoolean = False) then
     begin
       ShowMessage('Fornecedor inativo.');
       cbbTerceiro.SetFocus;
       exit;
     end;

   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMETER').AsString :=
       dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

   if dmGeral.OFI_CD_M_ORV_ITE.State in [dsEdit] then
      begin
        seq_item :=  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsString;
        dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;
        dmGeral.OFI_CD_M_ORV_ITE.Post;
        dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
        dmGeral.OFI_CD_M_ORV_ITE.locate('ID_SEQUENCIA',seq_item,[]);
        pnlMecTer.Visible := False;
        btnAddItens.SetFocus;
        exit;
      end;

   txtQtde.SetFocus;
   pnlMecTer.Visible := False;
end;

procedure TOFI_FM_M_RQP.cbbTipoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_ORV_DES_TIP;
  cbbTipo.DropDown;
end;

procedure TOFI_FM_M_RQP.cbbTipoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if btnAddDespesas.Focused or dpkData.Focused or
     txtLocal.Focused or dgDespesas.Focused then
    begin
      Exit;
    end;

  if dmGeral.OFI_CD_M_ORV_DES.FieldByName('tipo').Text = '' then
     begin
       ShowMessage('O campo "Tipo" deve ser preenchido.');
       cbbTipo.SetFocus;
       Exit;
     end;
   dmGeral.OFI_CD_M_ORV_DES.FieldByName('INT_DESCTIPO').AsVariant := dmGeral.BUS_CD_X_ORV_DES_TIPDESCRICAO.AsVariant;

end;

end.

