unit PCP_UN_M_OPB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, JvExExtCtrls, JvExtComponent, JvPanel,
  Datasnap.DBClient, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  vcl.Wwdbdatetimepicker, vcl.wwdblook;

type
  TPCP_FM_M_OPB = class(TPAD_FM_X_PAD)
    lbResponsavel: TLabel;
    txtResponsavel: TJvDBComboEdit;
    lblObservacaoAmd: TLabel;
    txtObservacaoAdm: TDBMemo;
    lblObservacaoProducao: TLabel;
    txtObservacaoProducao: TDBMemo;
    lblDataEmissao: TLabel;
    dpkDataEmissao: TJvDBDatePickerEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    cbOrigem: TwwDBComboBox;
    Label2: TLabel;
    txtOP: TwwDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    gbItens: TGroupBox;
    pnItens: TPanel;
    lblItem: TLabel;
    Label12: TLabel;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    btn_Add_Itens: TBitBtn;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    txtHoraBlo: TwwDBDateTimePicker;
    Label5: TLabel;
    deDataBlo: TJvDBDateEdit;
    dsOpbBlo: TDataSource;
    chBlocoEspuma: TwwDBLookupCombo;
    BUS_CD_C_ITE: TClientDataSet;
    BUS_CD_C_ITEid_item: TIntegerField;
    BUS_CD_C_ITEativo: TBooleanField;
    BUS_CD_C_ITEcardapio: TBooleanField;
    BUS_CD_C_ITEdescricao: TWideStringField;
    BUS_CD_C_ITEfantasia: TWideStringField;
    BUS_CD_C_ITEreferencia: TWideStringField;
    BUS_CD_C_ITEaplicacao: TWideStringField;
    BUS_CD_C_ITEid_fornecedor: TIntegerField;
    BUS_CD_C_ITEid_grupo: TWideStringField;
    BUS_CD_C_ITEid_und_compra: TWideStringField;
    BUS_CD_C_ITEid_und_venda: TWideStringField;
    BUS_CD_C_ITEemb_compra: TFloatField;
    BUS_CD_C_ITEemb_venda: TFloatField;
    BUS_CD_C_ITEcod_barra: TWideStringField;
    BUS_CD_C_ITEcod_fabrica: TWideStringField;
    BUS_CD_C_ITEpes_liquido: TFloatField;
    BUS_CD_C_ITEpes_bruto: TFloatField;
    BUS_CD_C_ITEest_minimo: TFloatField;
    BUS_CD_C_ITEloca_rua: TWideStringField;
    BUS_CD_C_ITEloca_prateleira: TWideStringField;
    BUS_CD_C_ITEloca_escaninho: TWideStringField;
    BUS_CD_C_ITEtam_largura: TFloatField;
    BUS_CD_C_ITEtam_comprimento: TFloatField;
    BUS_CD_C_ITEtam_espessura: TFloatField;
    BUS_CD_C_ITEdensidade: TIntegerField;
    BUS_CD_C_ITEdensidade_2: TIntegerField;
    BUS_CD_C_ITEdensidade_3: TIntegerField;
    BUS_CD_C_ITEtipo: TIntegerField;
    BUS_CD_C_ITEgeracao_lote_interno: TIntegerField;
    BUS_CD_C_ITEdestino_reclamado: TIntegerField;
    BUS_CD_C_ITEetiq_classificacao_pro: TIntegerField;
    BUS_CD_C_ITEetiq_medidas: TWideStringField;
    BUS_CD_C_ITEetiq_recomendacoes_1: TWideStringField;
    BUS_CD_C_ITEetiq_recomendacoes_2: TWideStringField;
    BUS_CD_C_ITElote_fabric_obrigatorio: TIntegerField;
    BUS_CD_C_ITEid_ncm: TWideStringField;
    BUS_CD_C_ITEint_nomencm: TWideStringField;
    BUS_CD_C_ITEint_desc_grupo: TWideStringField;
    BUS_CD_C_ITEint_tipo_item: TWideStringField;
    BUS_CD_C_ITEint_origem: TWideStringField;
    BUS_CD_C_ITEint_tributo: TIntegerField;
    BUS_CD_C_ITEint_nomefor: TWideStringField;
    BUS_CD_C_ITECAD_SQ_C_ITE_ESP: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_COM: TDataSetField;
    BUS_CD_C_ITEPRECO_AVISTA: TFMTBCDField;
    BUS_CD_C_ITEPRECO_APRAZO: TFMTBCDField;
    BUS_CD_C_ITEdta_cadastro: TDateField;
    BUS_CD_C_ITEetiq_modelo: TWideStringField;
    BUS_CD_C_ITEcod_lme: TWideStringField;
    BUS_CD_C_ITErev_lme: TWideStringField;
    BUS_CD_C_ITEint_mva: TFloatField;
    BUS_CD_C_ITEint_fteetq: TIntegerField;
    BUS_CD_C_ITEint_impselo: TBooleanField;
    BUS_CD_C_ITEint_pis_entrada: TWideStringField;
    BUS_CD_C_ITEint_pis_saida: TWideStringField;
    BUS_CD_C_ITEint_cof_entrada: TWideStringField;
    BUS_CD_C_ITEint_cof_saida: TWideStringField;
    BUS_CD_C_ITEid_familia: TIntegerField;
    BUS_CD_C_ITEdes_completa: TWideStringField;
    BUS_CD_C_ITErt_pricipio_ativo: TWideStringField;
    BUS_CD_C_ITErt_composicao: TWideStringField;
    BUS_CD_C_ITEcod_onu: TWideStringField;
    BUS_CD_C_ITEret_emb_nao_lavavel: TIntegerField;
    BUS_CD_C_ITEret_emb_lavaveis: TIntegerField;
    BUS_CD_C_ITEtam_observacoes: TWideStringField;
    BUS_CD_C_ITEint_perimpostoncm: TFloatField;
    BUS_CD_C_ITEret_emb_capacidade: TWideStringField;
    BUS_CD_C_ITEsgq_critica_laudo_fab: TBooleanField;
    BUS_CD_C_ITECAD_SQ_C_ITE_XML: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_APL: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_TPR: TDataSetField;
    BUS_CD_C_ITEint_ipi_entrada: TWideStringField;
    BUS_CD_C_ITEint_ipi_saida: TWideStringField;
    BUS_CD_C_ITEint_serterceiro: TBooleanField;
    BUS_CD_C_ITEetiq_id_cue: TIntegerField;
    BUS_CD_C_ITEint_msg_etq1: TWideStringField;
    BUS_CD_C_ITEint_msg_etq2: TWideStringField;
    BUS_CD_C_ITEint_msg_etq3: TWideStringField;
    BUS_CD_C_ITEint_msg_etq4: TWideStringField;
    BUS_CD_C_ITEint_msg_etq5: TWideStringField;
    BUS_CD_C_ITEint_impmsgetq: TBooleanField;
    BUS_CD_C_ITEint_msg_etq6: TWideStringField;
    BUS_CD_C_ITEint_msg_etq7: TWideStringField;
    BUS_CD_C_ITEcubagem: TFMTBCDField;
    BUS_CD_C_ITEpreco_avista_ant_reajuste: TFMTBCDField;
    BUS_CD_C_ITEpreco_aprazo_ant_reajuste: TFMTBCDField;
    BUS_CD_C_ITEdta_ult_reajuste: TDateField;
    BUS_CD_C_ITEint_ctcepi: TBooleanField;
    BUS_CD_C_ITEint_dre_perc_ircs: TFloatField;
    BUS_CD_C_ITEint_dre_perc_out_ded_ven: TFloatField;
    BUS_CD_C_ITErt_registro: TWideStringField;
    BUS_CD_C_ITEint_ctr_lot_entr: TBooleanField;
    BUS_CD_C_ITEcusto_servico: TFMTBCDField;
    BUS_CD_C_ITEint_impetqsimples: TBooleanField;
    BUS_CD_C_ITEint_pathetqsimples: TWideStringField;
    BUS_CD_C_ITEint_inf_tempo_ite_coj: TBooleanField;
    BUS_CD_C_ITEint_ctc_epi: TBooleanField;
    BUS_CD_C_ITEper_cmv_interno: TFMTBCDField;
    BUS_CD_C_ITEper_cmv_externo: TFMTBCDField;
    BUS_CD_C_ITECAD_SQ_C_ITE_LOC: TDataSetField;
    BUS_CD_C_ITEetiq_marca: TWideStringField;
    BUS_CD_C_ITEint_lote_gru: TBooleanField;
    BUS_CD_C_ITEsgq_personalizado: TBooleanField;
    BUS_CD_C_ITEint_verif_cod_barra_ped: TBooleanField;
    BUS_CD_C_ITEetiq_madeira: TWideStringField;
    BUS_CD_C_ITEetiq_espuma1: TWideStringField;
    BUS_CD_C_ITEetiq_espuma2: TWideStringField;
    BUS_CD_C_ITEetiq_espuma3: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento1: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento2: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento3: TWideStringField;
    BUS_CD_C_ITEetiq_espuma4: TWideStringField;
    BUS_CD_C_ITEetiq_espuma5: TWideStringField;
    BUS_CD_C_ITEetiq_espuma6: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento4: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento5: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento6: TWideStringField;
    BUS_CD_C_ITEint_sgqblocoespuma: TBooleanField;
    BUS_CD_C_ITEint_sgqcalcbloco: TBooleanField;
    BUS_CD_C_ITEcod_item_prod: TIntegerField;
    BUS_CD_C_ITEetiq_tipo_produto: TIntegerField;
    BUS_CD_C_ITEint_etiq_tipo_produto: TWideStringField;
    BUS_CD_C_ITEtam_esp_espessura_1: TFloatField;
    BUS_CD_C_ITEtam_esp_espessura_2: TFloatField;
    BUS_CD_C_ITEtam_esp_espessura_3: TFloatField;
    BUS_CD_C_ITEtam_esp_comprimento_1: TFloatField;
    BUS_CD_C_ITEtam_esp_comprimento_2: TFloatField;
    BUS_CD_C_ITEtam_esp_comprimento_3: TFloatField;
    BUS_CD_C_ITEtam_esp_largura_1: TFloatField;
    BUS_CD_C_ITEtam_esp_largura_2: TFloatField;
    BUS_CD_C_ITEtam_esp_largura_3: TFloatField;
    BUS_CD_C_ITEcubagem_esp_1: TFloatField;
    BUS_CD_C_ITEcubagem_esp_2: TFloatField;
    BUS_CD_C_ITEcubagem_esp_3: TFloatField;
    rgAprovadoBlo: TDBRadioGroup;
    txtNroLoteOP: TwwDBEdit;
    txtNomeResp: TDBText;
    txtQtde: TwwDBEdit;
    Label4: TLabel;
    wwDBGrid1: TwwDBGrid;
    dsPcpObl: TDataSource;
    lblPedidoVenda: TLabel;
    Label6: TLabel;
    pnlAberto: TPanel;
    lblAberto: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure chBlocoEspumaExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure dsoDataChange(Sender: TObject; Field: TField);
    procedure grdItensCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdItensIButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure ChamaCorTamanho;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_OPB: TPCP_FM_M_OPB;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPCP_FM_M_OPB.AbrirBuscas;
begin
  BUS_CD_C_ITE.close;
  BUS_CD_C_ITE.Data :=
         BUS_CD_C_ITE.DataRequest(VarArrayOf([96]));


  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');

end;

procedure TPCP_FM_M_OPB.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_OPB);


  pnItens.Enabled := false;

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  dmGeral.PCP_CD_M_OPB.FieldByName('id_responsavel').AsInteger := xFuncionario;
  dmGeral.PCP_CD_M_OPB.FieldByName('int_nomeres').AsString     := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
  dmGeral.BUS_CD_C_FUN.Close;




  dpkDataEmissao.SetFocus;
end;

procedure TPCP_FM_M_OPB.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_SOL) then
     begin
       inherited;
       pnItens.Enabled := False;
       dpkDataEmissao.SetFocus;
     end;
end;

procedure TPCP_FM_M_OPB.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_OPB) then
     begin
       inherited;
       dbGrid.SetFocus;
     end;
end;

procedure TPCP_FM_M_OPB.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_OPB);
end;

procedure TPCP_FM_M_OPB.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;

  codigo := dmGeral.PCP_CD_M_OPB.FieldByName('id_opb').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_OPB);
  inherited;
  dmGeral.PCP_CD_M_OPB.Close;
  dmGeral.PCP_CD_M_OPB.Data :=
  dmGeral.PCP_CD_M_OPB.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger, codigo]));
  AbrirBuscas;
end;

procedure TPCP_FM_M_OPB.btnFiltroClick(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_OPB.Close;
  dmGeral.PCP_CD_M_OPB.Data :=
  dmGeral.PCP_CD_M_OPB.DataRequest(
     VarArrayOf([cbbPesquisa.ItemIndex,  dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger,
        txtPesquisa.Text]));
end;

procedure TPCP_FM_M_OPB.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;
  dmGeral.PCP_CD_M_OPB_BLO.Insert;
  rgAprovadoBlo.ItemIndex := 1;
  chBlocoEspuma.SetFocus;
end;

procedure TPCP_FM_M_OPB.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TPCP_FM_M_OPB.cbbCorExit(Sender: TObject);
begin
  inherited;

  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.PCP_CD_M_OPB_BLO.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.PCP_CD_M_OPB_BLO.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.PCP_CD_M_OPB_BLO.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.PCP_CD_M_OPB_BLO.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;
  txtQtde.SetFocus;

  pnlCorTamanho.Visible := False;

end;

procedure TPCP_FM_M_OPB.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_OPB.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TPCP_FM_M_OPB.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.PCP_CD_M_OPB_BLO.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.PCP_CD_M_OPB_BLO.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.PCP_CD_M_OPB_BLO.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.PCP_CD_M_OPB_BLO.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtQtde.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TPCP_FM_M_OPB.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        txtQtde.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := 26;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 140;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 126;
                  pnlCorTamanho.Top   := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := false;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 126;
                  pnlCorTamanho.Top := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;
               end;
         end;
     end;
end;

procedure TPCP_FM_M_OPB.chBlocoEspumaExit(Sender: TObject);
begin
  inherited;

  if dmGeral.PCP_CD_M_OPB_BLO.FieldByName('id_item_bloco').Text = '' then
     begin
        if btnCancelar.Focused or
           btnGrava.Focused  then
           begin
             exit;
           end;

        if (btn_Add_Itens.Focused or grdItens.Focused)  then
           begin
             exit;
           end;

        if not grdItensIButton.Enabled then
          exit;

        if ( (rgAprovadoBlo.Focused) or (deDataBlo.Focused) or (txtHoraBlo.Focused) or (txtQtde.Focused) ) then
            begin
              ShowMessage('O campo "Item" deve ser preenchido.');
              chBlocoEspuma.SetFocus;
              exit;
            end
        else
            begin
              pnItens.Enabled := false;
              exit;
            end;
     end
  else
     begin
       if dmGeral.PCP_CD_M_OPB_BLO.state in [dsBrowse] then
          dmGeral.PCP_CD_M_OPB_BLO.edit;
     end;

  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('int_nomeite').text :=
          BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;


  try
   pnItens.onExit := nil;

   ChamaCorTamanho;
  finally
     pnItens.OnExit := pnItensExit;
  end;

end;

procedure TPCP_FM_M_OPB.dsoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  acExcluir.Enabled := false;
end;

procedure TPCP_FM_M_OPB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_OPB.Close;
  FreeAndNil(PCP_FM_M_OPB);
end;

procedure TPCP_FM_M_OPB.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_OPB.Close;
  dmGeral.PCP_CD_M_OPB.Data :=
      dmGeral.PCP_CD_M_OPB.DataRequest(
                VarArrayOf([0, '']));
end;

procedure TPCP_FM_M_OPB.FormShow(Sender: TObject);
begin
  inherited;
  AbrirBuscas;

end;

procedure TPCP_FM_M_OPB.grdItensCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if dmGeral.PCP_CD_M_OPB_BLObloco_aprovado.AsBoolean = false then
     Afont.Color := clRed;
end;

procedure TPCP_FM_M_OPB.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.PCP_CD_M_OPB_BLO.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.PCP_CD_M_OPB_BLO.Delete;
     dmGeral.PCP_CD_M_OPB_BLO.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TPCP_FM_M_OPB.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmGeral.PCP_CD_M_OPB_BLO.cancel;

  if dmGeral.PCP_CD_M_OPB_BLO.IsEmpty then
     begin
       dmGeral.PCP_CD_M_OPB_BLO.Append;
       pnItens.Enabled := true;
       rgAprovadoBlo.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_OPB_BLO.Edit;
       pnItens.Enabled := true;
       txtQtde.SetFocus;
     end;
end;

procedure TPCP_FM_M_OPB.pnItensExit(Sender: TObject);
var
  saldo_fisico: String;
begin
  inherited;

  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
   //  (cbbCor.Focused) or (cbbTamanho.Focused) or
     (not grdItensIButton.Enabled) then
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

        dmGeral.PCP_CD_M_OPB_BLO.Cancel;
        dmGeral.PCP_CD_M_OPB_BLO.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;

end;

procedure TPCP_FM_M_OPB.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_OPB.txtQtdeExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if chBlocoEspuma.Focused or
     grdItens.Focused      or deDataBlo.Focused or
     txtHoraBlo.Focused    or rgAprovadoBlo.Focused  then
     begin
        exit;
     end;

  dmGeral.PCP_CD_M_OPB_BLO.Post;

  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus;
end;

end.
