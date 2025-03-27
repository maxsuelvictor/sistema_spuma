unit PSQ_UN_X_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, Vcl.DBCtrls;

type
  TPSQ_FM_X_NFE = class(TPAD_FM_X_PSQ)
    BUS_CD_M_NFE: TClientDataSet;
    Panel1: TPanel;
    BUS_CD_M_NFE_ITE: TClientDataSet;
    BUS_CD_M_NFE_ITEid_fiscal: TIntegerField;
    BUS_CD_M_NFE_ITEid_sequencia: TIntegerField;
    BUS_CD_M_NFE_ITEid_item: TIntegerField;
    BUS_CD_M_NFE_ITEid_inf_fisco: TIntegerField;
    BUS_CD_M_NFE_ITEid_cfo: TWideStringField;
    BUS_CD_M_NFE_ITEid_st_icm: TWideStringField;
    BUS_CD_M_NFE_ITEqtde: TFloatField;
    BUS_CD_M_NFE_ITEqtde_devolvida: TFloatField;
    BUS_CD_M_NFE_ITEvlr_unitario: TFMTBCDField;
    BUS_CD_M_NFE_ITEvlr_mercadoria: TFMTBCDField;
    BUS_CD_M_NFE_ITEper_desconto: TFloatField;
    BUS_CD_M_NFE_ITEvlr_desconto: TFMTBCDField;
    BUS_CD_M_NFE_ITEvlr_custo: TFMTBCDField;
    BUS_CD_M_NFE_ITEvlr_liquido: TFMTBCDField;
    BUS_CD_M_NFE_ITEvlr_outras: TFMTBCDField;
    BUS_CD_M_NFE_ITEvlr_isenta: TFMTBCDField;
    BUS_CD_M_NFE_ITEvlr_seguro: TFMTBCDField;
    BUS_CD_M_NFE_ITEicm_n_aliquota: TFloatField;
    BUS_CD_M_NFE_ITEicm_per_reducao: TFloatField;
    BUS_CD_M_NFE_ITEicm_n_base: TFMTBCDField;
    BUS_CD_M_NFE_ITEicm_n_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITEicm_s_base: TFMTBCDField;
    BUS_CD_M_NFE_ITEicm_s_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITEipi_base: TFMTBCDField;
    BUS_CD_M_NFE_ITEipi_aliquota: TFloatField;
    BUS_CD_M_NFE_ITEipi_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITEiss_base: TFMTBCDField;
    BUS_CD_M_NFE_ITEiss_aliquota: TFloatField;
    BUS_CD_M_NFE_ITEiss_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITEfre_base: TFMTBCDField;
    BUS_CD_M_NFE_ITEfre_percentual: TFloatField;
    BUS_CD_M_NFE_ITEfre_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITEpis_base: TFMTBCDField;
    BUS_CD_M_NFE_ITEpis_aliquota: TFloatField;
    BUS_CD_M_NFE_ITEpis_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITEcof_base: TFMTBCDField;
    BUS_CD_M_NFE_ITEcof_aliquota: TFloatField;
    BUS_CD_M_NFE_ITEcof_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITEpeso_liquido: TFloatField;
    BUS_CD_M_NFE_ITEpeso_bruto: TFloatField;
    BUS_CD_M_NFE_ITEnro_pedido: TIntegerField;
    BUS_CD_M_NFE_ITEcof_valor_st: TFMTBCDField;
    BUS_CD_M_NFE_ITEimp_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITEvlr_icm_ser_nao_incide: TFMTBCDField;
    BUS_CD_M_NFE_ITEvlr_outras_desp: TFMTBCDField;
    BUS_CD_M_NFE_ITEpis_valor_st: TFMTBCDField;
    BUS_CD_M_NFE_ITEicm_n_dif_aliq: TFMTBCDField;
    BUS_CD_M_NFE_ITEicm_n_vlr_dif_aliq: TFMTBCDField;
    BUS_CD_M_NFE_ITEpara_analise_raa: TIntegerField;
    BUS_CD_M_NFE_ITEfre_dif_aliq_icm: TFMTBCDField;
    BUS_CD_M_NFE_ITEfre_vlr_dif_icm: TFMTBCDField;
    BUS_CD_M_NFE_ITEfre_custo: TFMTBCDField;
    BUS_CD_M_NFE_ITEorigem_mercadoria: TWideStringField;
    BUS_CD_M_NFE_ITEid_cor: TIntegerField;
    BUS_CD_M_NFE_ITEid_tamanho: TIntegerField;
    BUS_CD_M_NFE_ITEint_desc_item: TWideStringField;
    BUS_CD_M_NFE_ITEint_und_venda: TWideStringField;
    BUS_CD_M_NFE_ITEid_busca_item: TWideStringField;
    BUS_CD_M_NFE_ITEid_tributo: TIntegerField;
    BUS_CD_M_NFE_ITEnum_lote: TWideStringField;
    BUS_CD_M_NFE_ITEint_nomecor: TWideStringField;
    BUS_CD_M_NFE_ITEint_nometam: TWideStringField;
    BUS_CD_M_NFE_ITEid_st_pis: TWideStringField;
    BUS_CD_M_NFE_ITEid_st_cof: TWideStringField;
    BUS_CD_M_NFE_ITEid_st_ipi: TWideStringField;
    BUS_CD_M_NFE_ITEint_id_ncm: TWideStringField;
    BUS_CD_M_NFE_ITEtri_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITEtri_indice: TFloatField;
    BUS_CD_M_NFE_ITEicm_s_vlr_mva: TFMTBCDField;
    BUS_CD_M_NFE_ITEicm_s_per_mva: TFloatField;
    BUS_CD_M_NFE_ITEid_sequencia_ite_cmp_ped: TIntegerField;
    BUS_CD_M_NFE_ITEimp_base_calculo: TFMTBCDField;
    BUS_CD_M_NFE_ITEimp_desp_aduana: TFMTBCDField;
    BUS_CD_M_NFE_ITEimp_iof: TFMTBCDField;
    BUS_CD_M_NFE_ITEdi_numero: TIntegerField;
    BUS_CD_M_NFE_ITEdi_data: TDateField;
    BUS_CD_M_NFE_ITEdi_local_desemb: TWideStringField;
    BUS_CD_M_NFE_ITEdi_uf_desemb: TWideStringField;
    BUS_CD_M_NFE_ITEdi_data_desemb: TDateField;
    BUS_CD_M_NFE_ITEdi_exportador: TWideStringField;
    BUS_CD_M_NFE_ITEdi_numero_adicao: TIntegerField;
    BUS_CD_M_NFE_ITEdi_seq_adicao: TIntegerField;
    BUS_CD_M_NFE_ITEdi_fabricante: TWideStringField;
    BUS_CD_M_NFE_ITEdi_vlr_desconto: TFMTBCDField;
    BUS_CD_M_NFE_ITEdi_fci: TWideStringField;
    BUS_CD_M_NFE_ITEid_sequencia_ite_iqm: TIntegerField;
    BUS_CD_M_NFE_ITEint_sldqtde: TFloatField;
    BUS_CD_M_NFE_ITEid_sequencia_ite_xml: TIntegerField;
    BUS_CD_M_NFE_ITEint_tipo_item: TWideStringField;
    BUS_CD_M_NFE_ITEvlr_acrescimo: TFMTBCDField;
    BUS_CD_M_NFE_ITEint_ncmperimposto: TFloatField;
    dsoIte: TwwDataSource;
    Panel2: TPanel;
    dbGridIte: TwwDBGrid;
    BUS_CD_M_NFEid_fiscal: TIntegerField;
    BUS_CD_M_NFEid_almoxarifado: TIntegerField;
    BUS_CD_M_NFEid_pedido_compra: TIntegerField;
    BUS_CD_M_NFEid_condicao_pag: TIntegerField;
    BUS_CD_M_NFEid_empresa: TIntegerField;
    BUS_CD_M_NFEid_emitente: TIntegerField;
    BUS_CD_M_NFEid_cfo: TWideStringField;
    BUS_CD_M_NFEid_transportadora: TIntegerField;
    BUS_CD_M_NFEid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_NFEuf_emitente: TWideStringField;
    BUS_CD_M_NFEuf_empresa: TWideStringField;
    BUS_CD_M_NFEdta_emissao: TDateField;
    BUS_CD_M_NFEdta_documento: TDateField;
    BUS_CD_M_NFEcpf_cnpj: TWideStringField;
    BUS_CD_M_NFEnumero: TIntegerField;
    BUS_CD_M_NFEserie: TWideStringField;
    BUS_CD_M_NFEsub_serie: TWideStringField;
    BUS_CD_M_NFEmodelo: TWideStringField;
    BUS_CD_M_NFEstatus: TIntegerField;
    BUS_CD_M_NFEnfe_ecf: TIntegerField;
    BUS_CD_M_NFEecf_prevenda: TIntegerField;
    BUS_CD_M_NFEid_fiscal_referenciado: TIntegerField;
    BUS_CD_M_NFEcanc_motivo: TWideStringField;
    BUS_CD_M_NFEcanc_data: TDateField;
    BUS_CD_M_NFEcanc_usuario: TIntegerField;
    BUS_CD_M_NFEpeso_liquido: TFloatField;
    BUS_CD_M_NFEpeso_bruto: TFloatField;
    BUS_CD_M_NFEnfe_chave: TWideStringField;
    BUS_CD_M_NFEnfe_obs: TWideStringField;
    BUS_CD_M_NFEnfe_protocolo: TWideStringField;
    BUS_CD_M_NFEnfe_recibo: TWideStringField;
    BUS_CD_M_NFEnfe_canc_protocolo: TWideStringField;
    BUS_CD_M_NFEnfe_canc_status: TWideStringField;
    BUS_CD_M_NFEnfe_tipo_emissao: TWideStringField;
    BUS_CD_M_NFEnfe_tipo_ambiente: TWideStringField;
    BUS_CD_M_NFEnfe_cod_sit: TWideStringField;
    BUS_CD_M_NFEind_operacao: TIntegerField;
    BUS_CD_M_NFEind_emitente: TIntegerField;
    BUS_CD_M_NFEind_frete: TIntegerField;
    BUS_CD_M_NFEvlr_mercadoria: TFMTBCDField;
    BUS_CD_M_NFEvlr_desconto: TFMTBCDField;
    BUS_CD_M_NFEvlr_acrescimo: TFMTBCDField;
    BUS_CD_M_NFEvlr_liquido: TFMTBCDField;
    BUS_CD_M_NFEicm_n_valor: TFMTBCDField;
    BUS_CD_M_NFEicm_n_base: TFMTBCDField;
    BUS_CD_M_NFEicm_s_valor: TFMTBCDField;
    BUS_CD_M_NFEicm_s_base: TFMTBCDField;
    BUS_CD_M_NFEipi_base: TFMTBCDField;
    BUS_CD_M_NFEipi_valor: TFMTBCDField;
    BUS_CD_M_NFEiss_base: TFMTBCDField;
    BUS_CD_M_NFEiss_valor: TFMTBCDField;
    BUS_CD_M_NFEfre_base: TFMTBCDField;
    BUS_CD_M_NFEfre_valor: TFMTBCDField;
    BUS_CD_M_NFEpis_valor: TFMTBCDField;
    BUS_CD_M_NFEpis_valor_st: TFMTBCDField;
    BUS_CD_M_NFEcof_valor: TFMTBCDField;
    BUS_CD_M_NFEcof_valor_st: TFMTBCDField;
    BUS_CD_M_NFEvlr_isenta: TFMTBCDField;
    BUS_CD_M_NFEvlr_outras: TFMTBCDField;
    BUS_CD_M_NFEvlr_seguro: TFMTBCDField;
    BUS_CD_M_NFEtipo_nf: TWideStringField;
    BUS_CD_M_NFEecf_serial_impressora: TWideStringField;
    BUS_CD_M_NFEecf_marca_impressora: TWideStringField;
    BUS_CD_M_NFEecf_modelo_impressora: TWideStringField;
    BUS_CD_M_NFEecf_caixa: TWideStringField;
    BUS_CD_M_NFEdta_movimento: TDateField;
    BUS_CD_M_NFEorigem_nf: TWideStringField;
    BUS_CD_M_NFEfaturada: TBooleanField;
    BUS_CD_M_NFEsituacao_inspecao: TIntegerField;
    BUS_CD_M_NFEid_fiscal_frete: TIntegerField;
    BUS_CD_M_NFEid_pedido_venda: TIntegerField;
    BUS_CD_M_NFEvlr_outras_desp: TFMTBCDField;
    BUS_CD_M_NFEfre_custo: TFMTBCDField;
    BUS_CD_M_NFEvlr_icm_ser_nao_incide: TFMTBCDField;
    BUS_CD_M_NFEcof_base: TFMTBCDField;
    BUS_CD_M_NFEpis_base: TFMTBCDField;
    BUS_CD_M_NFEposvenda: TBooleanField;
    BUS_CD_M_NFEid_responsavel: TIntegerField;
    BUS_CD_M_NFEint_id_perfil_cli: TIntegerField;
    BUS_CD_M_NFEint_nfeecf: TWideMemoField;
    BUS_CD_M_NFEint_nometme: TWideStringField;
    BUS_CD_M_NFEint_nomeope: TWideMemoField;
    BUS_CD_M_NFEint_nomecpg: TWideStringField;
    BUS_CD_M_NFEint_nomevnd: TWideStringField;
    BUS_CD_M_NFEint_nomeres: TWideStringField;
    BUS_CD_M_NFEid_vendedor: TIntegerField;
    BUS_CD_M_NFEcod_lme: TWideStringField;
    BUS_CD_M_NFErev_lme: TWideStringField;
    BUS_CD_M_NFEint_nometra: TWideStringField;
    BUS_CD_M_NFEint_endtra: TWideStringField;
    BUS_CD_M_NFEint_cidtra: TWideStringField;
    BUS_CD_M_NFEint_esttra: TWideStringField;
    BUS_CD_M_NFEint_cnptra: TWideStringField;
    BUS_CD_M_NFEint_instra: TWideStringField;
    BUS_CD_M_NFEtipo_cte: TIntegerField;
    BUS_CD_M_NFEnfe_finalidade: TIntegerField;
    BUS_CD_M_NFEpath_xml: TWideStringField;
    BUS_CD_M_NFEnfref_chave: TWideStringField;
    BUS_CD_M_NFEint_cnpjcpf: TWideMemoField;
    BUS_CD_M_NFEint_pessoa: TIntegerField;
    BUS_CD_M_NFEint_telefone: TWideMemoField;
    BUS_CD_M_NFEint_doc_ie: TWideMemoField;
    BUS_CD_M_NFEint_email: TWideMemoField;
    BUS_CD_M_NFEint_cep: TWideMemoField;
    BUS_CD_M_NFEint_endereco: TWideMemoField;
    BUS_CD_M_NFEint_estado: TWideMemoField;
    BUS_CD_M_NFEint_bairro: TWideMemoField;
    BUS_CD_M_NFEint_numero: TWideMemoField;
    BUS_CD_M_NFEint_complemento: TWideMemoField;
    BUS_CD_M_NFEint_cod_cidade: TWideMemoField;
    BUS_CD_M_NFEint_nom_cidade: TWideMemoField;
    BUS_CD_M_NFEimp_valor: TFMTBCDField;
    BUS_CD_M_NFEtri_valor: TFMTBCDField;
    BUS_CD_M_NFEtra_placa: TWideStringField;
    BUS_CD_M_NFEtra_uf: TWideStringField;
    BUS_CD_M_NFEtra_rntc: TWideStringField;
    BUS_CD_M_NFEtra_qtde_vol: TFloatField;
    BUS_CD_M_NFEtra_especie: TWideStringField;
    BUS_CD_M_NFEtra_marca: TWideStringField;
    BUS_CD_M_NFEtra_num_vol: TWideStringField;
    BUS_CD_M_NFEint_indpag: TIntegerField;
    BUS_CD_M_NFEint_cod_pais: TWideMemoField;
    BUS_CD_M_NFEint_nom_pais: TWideMemoField;
    BUS_CD_M_NFEid_iqm: TIntegerField;
    BUS_CD_M_NFEint_nomeemp: TWideStringField;
    BUS_CD_M_NFEid_abertura: TIntegerField;
    BUS_CD_M_NFElegenda: TWideStringField;
    BUS_CD_M_NFEint_classe: TWideStringField;
    BUS_CD_M_NFEprevenda: TBooleanField;
    BUS_CD_M_NFEid_ordem: TIntegerField;
    BUS_CD_M_NFEvenctos_origem: TWideStringField;
    BUS_CD_M_NFEint_baitra: TWideStringField;
    BUS_CD_M_NFEint_descnat: TWideStringField;
    BUS_CD_M_NFEint_nomeemi: TWideStringField;
    BUS_CD_M_NFEint_descnfecodsit: TWideStringField;
    BUS_CD_M_NFEnro_termo: TIntegerField;
    BUS_CD_M_NFEFAT_SQ_M_NFE_NFF: TDataSetField;
    BUS_CD_M_NFEFAT_SQ_M_NFE_DEV: TDataSetField;
    BUS_CD_M_NFEFAT_SQ_M_NFE_TIT: TDataSetField;
    BUS_CD_M_NFEFAT_SQ_M_NFE_ITE: TDataSetField;
    RGTipoNota: TRadioGroup;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    txtEmitente: TEdit;
    txtIdEmit: TJvComboEdit;
    txtNumero: TEdit;
    procedure btnPesquisaClick(Sender: TObject);
    procedure txtIdEmitButtonClick(Sender: TObject);
    procedure txtIdEmitExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xFormCall:String;
  end;

var
  PSQ_FM_X_NFE: TPSQ_FM_X_NFE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, PSQ_UN_X_CLI;

procedure TPSQ_FM_X_NFE.btnPesquisaClick(Sender: TObject);
var
Tipo, dtainicial,dtafinal: String;
begin
  inherited;
  case RgTipoNota.ItemIndex of
    0: Tipo := 'E';
    1: Tipo := 'S';
    2: Tipo := 'R';
    3: Tipo := 'D';
    4: Tipo := 'F';
  end;

  //Essa inicialização foi necessaria pois as datas estão indo como vazio,assim trazendo todos os registros
  //Responsavel:Luan.Data:15/03/2016
  dtainicial := deinicial.Text;
  dtafinal := definal.Text;

  if deinicial.Text = '  /  /    ' then
    dtainicial := '';
  if definal.Text = '  /  /    ' then
    dtafinal := '';

  if (deinicial.Text = '  /  /    ') and (definal.Text = '  /  /    ') and (txtIdEmit.Text = '') and (txtNumero.Text = '') then
    begin
      ShowMessage('Ao menos um filtro de pesquisa deve ser preenchido!');
    end
  else
    begin
      BUS_CD_M_NFE.Close;
      BUS_CD_M_NFE.Data :=
      BUS_CD_M_NFE.DataRequest(VarArrayOf([100, dmgeral.CAD_CD_C_PARid_empresa.Text, Tipo, dtainicial, dtafinal, txtIdEmit.Text, txtNumero.Text,'X']));

      dbGrid.SetFocus;
    end;
end;

procedure TPSQ_FM_X_NFE.FormShow(Sender: TObject);
begin
  inherited;

   if (xFormCall = 'OFI_FM_M_ORV') then
     begin
       rgTipoNota.ItemIndex := 0;
       rgTipoNota.Enabled := false;
     end;


  deinicial.SetFocus;
end;

procedure TPSQ_FM_X_NFE.txtIdEmitButtonClick(Sender: TObject);
begin
  inherited;
  if (RGTipoNota.ItemIndex = 0) or (RGTipoNota.ItemIndex = 3) or (RGTipoNota.ItemIndex = 4) then
    begin
      PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
      PSQ_FM_X_FOR.ShowModal;

      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           txtIdEmit.Text     := PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;
           txtEmitente.Text := PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
         end;
      PSQ_FM_X_FOR.BUS_CD_C_FOR.Free;
    end
  else
    begin
      PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
      PSQ_FM_X_CLI.ShowModal;

      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           txtIdEmit.Text     := PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_ClIENTE').AsString;
           txtEmitente.Text := PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
      PSQ_FM_X_CLI.BUS_CD_C_CLI.Free;
    end;
end;

procedure TPSQ_FM_X_NFE.txtIdEmitExit(Sender: TObject);
begin
  inherited;
  if (RGTipoNota.ItemIndex = 0) or (RGTipoNota.ItemIndex = 3) or (RGTipoNota.ItemIndex = 4) then
    begin
      if not (txtIdEmit.Text = '') then
        begin
          dmgeral.BUS_CD_C_FOR.Close;
          dmgeral.BUS_CD_C_FOR.Data :=
            dmgeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtIdEmit.Text]));

          txtIdEmit.Text     := dmgeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;
          txtEmitente.Text   := dmgeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
        end
      else
        txtEmitente.Text   := '';
    end
  else
    begin
      if not (txtIdEmit.Text = '') then
        begin
          dmgeral.BUS_CD_C_CLI.Close;
          dmgeral.BUS_CD_C_CLI.Data :=
            dmgeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtIdEmit.Text]));

          txtIdEmit.Text     := dmgeral.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;
          txtEmitente.Text   := dmgeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
        end
      else
        txtEmitente.Text   := '';
    end;
end;

end.
