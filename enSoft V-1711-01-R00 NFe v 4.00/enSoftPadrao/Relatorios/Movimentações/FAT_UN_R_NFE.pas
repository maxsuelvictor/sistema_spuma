unit FAT_UN_R_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls, ComObj,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Vcl.Menus, Data.DB, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Datasnap.DBClient, Vcl.Buttons;

type
  TFAT_FM_R_NFE = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    lblOrdenacao: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    cbbOrdenacao: TComboBox;
    pcfiltro: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsTipoEstoque: TTabSheet;
    lblTipoEstoqueDisponiveis: TLabel;
    lblTipoEstoqueSelecionado: TLabel;
    lboxTipoEstoqueDisponiveis: TListBox;
    lboxTipoEstoqueSelecionado: TListBox;
    tsCfop: TTabSheet;
    lblCfopDisponiveis: TLabel;
    lblCfopSelecionado: TLabel;
    lboxCfopDisponiveis: TListBox;
    lboxCfopSelecionado: TListBox;
    cbbTipoNF: TComboBox;
    lblTipoNF: TLabel;
    lblPesquisaPor: TLabel;
    cbbPesquisaPor: TComboBox;
    lblNDoc: TLabel;
    txtNDoc: TEdit;
    pmSelTipoEstoque: TPopupMenu;
    btnTodosTipoEstoque: TMenuItem;
    pmRemoverCfop: TPopupMenu;
    btnRemoverCfop: TMenuItem;
    pmSelCfop: TPopupMenu;
    btnSelCfop: TMenuItem;
    pmRemoverTipoEstoque: TPopupMenu;
    btnRemoverTiposEstoque: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    FAT_XL_R_NFE: TfrxXLSExport;
    FAT_PD_R_NFE: TfrxPDFExport;
    FAT_DB_R_NFE: TfrxDBDataset;
    FAT_FR_R_NFE_ACF: TfrxReport;
    FAT_FR_R_NFE_ATE: TfrxReport;
    FAT_FR_R_NFE_RCF: TfrxReport;
    FAT_FR_R_NFE_RTE: TfrxReport;
    FAT_FR_R_NFE_RNF: TfrxReport;
    FAT_FR_R_NFE_ENF: TfrxReport;
    FAT_DB_R_NFE_FRE: TfrxDBDataset;
    FAT_DB_R_NFE_TIT: TfrxDBDataset;
    FAT_DB_R_NFE_ITE: TfrxDBDataset;
    FAT_DB_R_NFE_CFO: TfrxDBDataset;
    FAT_DB_R_NFE_TME: TfrxDBDataset;
    tsModelo: TTabSheet;
    lboxModeloDisp: TListBox;
    lboxModeloSel: TListBox;
    lblModeloDis: TLabel;
    lblModeloSel: TLabel;
    pmRemoverModelo: TPopupMenu;
    pmSelModelo: TPopupMenu;
    btnRemoverTodosModelos: TMenuItem;
    btnTodosModelos: TMenuItem;
    chbExibirNotaCancelada: TCheckBox;
    tsSitNota: TTabSheet;
    lboxSitNotaDisp: TListBox;
    lboxSitNotaSel: TListBox;
    lblSitNotaDisp: TLabel;
    lblSitNotaSel: TLabel;
    pmSelSituacaoNota: TPopupMenu;
    btnSelTodasSitNota: TMenuItem;
    pmExcluirSituacaoNota: TPopupMenu;
    btnExcluirTodosSitNota: TMenuItem;
    FAT_CD_R_NFE: TClientDataSet;
    FAT_CD_R_NFEid_fiscal: TIntegerField;
    FAT_CD_R_NFEid_almoxarifado: TIntegerField;
    FAT_CD_R_NFEid_pedido_compra: TIntegerField;
    FAT_CD_R_NFEid_condicao_pag: TIntegerField;
    FAT_CD_R_NFEid_empresa: TIntegerField;
    FAT_CD_R_NFEid_emitente: TIntegerField;
    FAT_CD_R_NFEid_cfo: TWideStringField;
    FAT_CD_R_NFEid_transportadora: TIntegerField;
    FAT_CD_R_NFEid_tipo_mov_estoque: TIntegerField;
    FAT_CD_R_NFEuf_emitente: TWideStringField;
    FAT_CD_R_NFEuf_empresa: TWideStringField;
    FAT_CD_R_NFEdta_emissao: TDateField;
    FAT_CD_R_NFEdta_documento: TDateField;
    FAT_CD_R_NFEcpf_cnpj: TWideStringField;
    FAT_CD_R_NFEnumero: TIntegerField;
    FAT_CD_R_NFEserie: TWideStringField;
    FAT_CD_R_NFEsub_serie: TWideStringField;
    FAT_CD_R_NFEmodelo: TWideStringField;
    FAT_CD_R_NFEstatus: TIntegerField;
    FAT_CD_R_NFEnfe_ecf: TIntegerField;
    FAT_CD_R_NFEecf_prevenda: TIntegerField;
    FAT_CD_R_NFEid_fiscal_referenciado: TIntegerField;
    FAT_CD_R_NFEcanc_motivo: TWideStringField;
    FAT_CD_R_NFEcanc_data: TDateField;
    FAT_CD_R_NFEcanc_usuario: TIntegerField;
    FAT_CD_R_NFEpeso_liquido: TFloatField;
    FAT_CD_R_NFEpeso_bruto: TFloatField;
    FAT_CD_R_NFEnfe_chave: TWideStringField;
    FAT_CD_R_NFEnfe_obs: TWideStringField;
    FAT_CD_R_NFEnfe_protocolo: TWideStringField;
    FAT_CD_R_NFEnfe_recibo: TWideStringField;
    FAT_CD_R_NFEnfe_canc_protocolo: TWideStringField;
    FAT_CD_R_NFEnfe_canc_status: TWideStringField;
    FAT_CD_R_NFEnfe_tipo_emissao: TWideStringField;
    FAT_CD_R_NFEnfe_tipo_ambiente: TWideStringField;
    FAT_CD_R_NFEnfe_cod_sit: TWideStringField;
    FAT_CD_R_NFEind_operacao: TIntegerField;
    FAT_CD_R_NFEind_emitente: TIntegerField;
    FAT_CD_R_NFEind_frete: TIntegerField;
    FAT_CD_R_NFEvlr_mercadoria: TFMTBCDField;
    FAT_CD_R_NFEvlr_desconto: TFMTBCDField;
    FAT_CD_R_NFEvlr_acrescimo: TFMTBCDField;
    FAT_CD_R_NFEvlr_liquido: TFMTBCDField;
    FAT_CD_R_NFEicm_n_valor: TFMTBCDField;
    FAT_CD_R_NFEicm_n_base: TFMTBCDField;
    FAT_CD_R_NFEicm_s_valor: TFMTBCDField;
    FAT_CD_R_NFEicm_s_base: TFMTBCDField;
    FAT_CD_R_NFEipi_base: TFMTBCDField;
    FAT_CD_R_NFEipi_valor: TFMTBCDField;
    FAT_CD_R_NFEiss_base: TFMTBCDField;
    FAT_CD_R_NFEiss_valor: TFMTBCDField;
    FAT_CD_R_NFEfre_base: TFMTBCDField;
    FAT_CD_R_NFEfre_valor: TFMTBCDField;
    FAT_CD_R_NFEpis_valor: TFMTBCDField;
    FAT_CD_R_NFEpis_valor_st: TFMTBCDField;
    FAT_CD_R_NFEcof_valor: TFMTBCDField;
    FAT_CD_R_NFEcof_valor_st: TFMTBCDField;
    FAT_CD_R_NFEvlr_isenta: TFMTBCDField;
    FAT_CD_R_NFEvlr_outras: TFMTBCDField;
    FAT_CD_R_NFEvlr_seguro: TFMTBCDField;
    FAT_CD_R_NFEtipo_nf: TWideStringField;
    FAT_CD_R_NFEecf_serial_impressora: TWideStringField;
    FAT_CD_R_NFEecf_marca_impressora: TWideStringField;
    FAT_CD_R_NFEecf_modelo_impressora: TWideStringField;
    FAT_CD_R_NFEecf_caixa: TWideStringField;
    FAT_CD_R_NFEdta_movimento: TDateField;
    FAT_CD_R_NFEorigem_nf: TWideStringField;
    FAT_CD_R_NFEfaturada: TBooleanField;
    FAT_CD_R_NFEsituacao_inspecao: TIntegerField;
    FAT_CD_R_NFEid_fiscal_frete: TIntegerField;
    FAT_CD_R_NFEid_pedido_venda: TIntegerField;
    FAT_CD_R_NFEvlr_outras_desp: TFMTBCDField;
    FAT_CD_R_NFEfre_custo: TFMTBCDField;
    FAT_CD_R_NFEvlr_icm_ser_nao_incide: TFMTBCDField;
    FAT_CD_R_NFEcof_base: TFMTBCDField;
    FAT_CD_R_NFEpis_base: TFMTBCDField;
    FAT_CD_R_NFEposvenda: TBooleanField;
    FAT_CD_R_NFEid_responsavel: TIntegerField;
    FAT_CD_R_NFEint_id_perfil_cli: TIntegerField;
    FAT_CD_R_NFEint_nfeecf: TWideMemoField;
    FAT_CD_R_NFEint_nometme: TWideStringField;
    FAT_CD_R_NFEint_nomeope: TWideMemoField;
    FAT_CD_R_NFEint_nomecpg: TWideStringField;
    FAT_CD_R_NFEint_nomevnd: TWideStringField;
    FAT_CD_R_NFEint_nomeres: TWideStringField;
    FAT_CD_R_NFEid_vendedor: TIntegerField;
    FAT_CD_R_NFEcod_lme: TWideStringField;
    FAT_CD_R_NFErev_lme: TWideStringField;
    FAT_CD_R_NFEint_nometra: TWideStringField;
    FAT_CD_R_NFEint_endtra: TWideStringField;
    FAT_CD_R_NFEint_cidtra: TWideStringField;
    FAT_CD_R_NFEint_esttra: TWideStringField;
    FAT_CD_R_NFEint_cnptra: TWideStringField;
    FAT_CD_R_NFEint_instra: TWideStringField;
    FAT_CD_R_NFEtipo_cte: TIntegerField;
    FAT_CD_R_NFEnfe_finalidade: TIntegerField;
    FAT_CD_R_NFEpath_xml: TWideStringField;
    FAT_CD_R_NFEnfref_chave: TWideStringField;
    FAT_CD_R_NFEint_cnpjcpf: TWideMemoField;
    FAT_CD_R_NFEint_pessoa: TIntegerField;
    FAT_CD_R_NFEint_telefone: TWideMemoField;
    FAT_CD_R_NFEint_doc_ie: TWideMemoField;
    FAT_CD_R_NFEint_email: TWideMemoField;
    FAT_CD_R_NFEint_cep: TWideMemoField;
    FAT_CD_R_NFEint_endereco: TWideMemoField;
    FAT_CD_R_NFEint_estado: TWideMemoField;
    FAT_CD_R_NFEint_bairro: TWideMemoField;
    FAT_CD_R_NFEint_numero: TWideMemoField;
    FAT_CD_R_NFEint_complemento: TWideMemoField;
    FAT_CD_R_NFEint_cod_cidade: TWideMemoField;
    FAT_CD_R_NFEint_nom_cidade: TWideMemoField;
    FAT_CD_R_NFEimp_valor: TFMTBCDField;
    FAT_CD_R_NFEtri_valor: TFMTBCDField;
    FAT_CD_R_NFEtra_placa: TWideStringField;
    FAT_CD_R_NFEtra_uf: TWideStringField;
    FAT_CD_R_NFEtra_rntc: TWideStringField;
    FAT_CD_R_NFEtra_qtde_vol: TFloatField;
    FAT_CD_R_NFEtra_especie: TWideStringField;
    FAT_CD_R_NFEtra_marca: TWideStringField;
    FAT_CD_R_NFEtra_num_vol: TWideStringField;
    FAT_CD_R_NFEint_indpag: TIntegerField;
    FAT_CD_R_NFEint_cod_pais: TWideMemoField;
    FAT_CD_R_NFEint_nom_pais: TWideMemoField;
    FAT_CD_R_NFEid_iqm: TIntegerField;
    FAT_CD_R_NFEint_nomeemp: TWideStringField;
    FAT_CD_R_NFEid_abertura: TIntegerField;
    FAT_CD_R_NFElegenda: TWideStringField;
    FAT_CD_R_NFEint_classe: TWideStringField;
    FAT_CD_R_NFEprevenda: TBooleanField;
    FAT_CD_R_NFEid_ordem: TIntegerField;
    FAT_CD_R_NFEvenctos_origem: TWideStringField;
    FAT_CD_R_NFEint_baitra: TWideStringField;
    FAT_CD_R_NFEint_descnat: TWideStringField;
    FAT_CD_R_NFEint_nomeemi: TWideStringField;
    FAT_CD_R_NFEint_descnfecodsit: TWideStringField;
    FAT_CD_R_NFEnro_termo: TIntegerField;
    FAT_CD_R_NFEint_nomecfo: TWideStringField;
    FAT_CD_R_NFEFAT_SQ_R_NFE_FRE: TDataSetField;
    FAT_CD_R_NFEFAT_SQ_R_NFE_TIT: TDataSetField;
    FAT_CD_R_NFEFAT_SQ_R_NFE_ITE: TDataSetField;
    FAT_CD_R_NFEind_nf: TIntegerField;
    FAT_CD_R_NFEvlr_part_dest: TFMTBCDField;
    FAT_CD_R_NFEvlr_part_orig: TFMTBCDField;
    FAT_CD_R_NFEvlr_icm_desc: TFMTBCDField;
    FAT_CD_R_NFEid_ors: TIntegerField;
    FAT_CD_R_NFEvlr_fcp: TFMTBCDField;
    FAT_CD_R_NFEint_notacancelada: TWideStringField;
    FAT_CD_R_NFE_FRE: TClientDataSet;
    FAT_CD_R_NFE_FREnumero: TIntegerField;
    FAT_CD_R_NFE_FREserie: TWideStringField;
    FAT_CD_R_NFE_FREsub_serie: TWideStringField;
    FAT_CD_R_NFE_FREmodelo: TWideStringField;
    FAT_CD_R_NFE_FREid_cfo: TWideStringField;
    FAT_CD_R_NFE_FREicm_n_valor: TFMTBCDField;
    FAT_CD_R_NFE_FREint_nomefor: TWideStringField;
    FAT_CD_R_NFE_FREint_indfrete: TWideMemoField;
    FAT_CD_R_NFE_FREvlr_total_frete: TFMTBCDField;
    FAT_CD_R_NFE_FREvlr_frete_rat: TFMTBCDField;
    FAT_CD_R_NFE_FREdta_emissao: TDateField;
    FAT_CD_R_NFE_ITE: TClientDataSet;
    FAT_CD_R_NFE_ITEid_fiscal: TIntegerField;
    FAT_CD_R_NFE_ITEid_sequencia: TIntegerField;
    FAT_CD_R_NFE_ITEid_item: TIntegerField;
    FAT_CD_R_NFE_ITEid_inf_fisco: TIntegerField;
    FAT_CD_R_NFE_ITEid_cfo: TWideStringField;
    FAT_CD_R_NFE_ITEid_st_icm: TWideStringField;
    FAT_CD_R_NFE_ITEqtde: TFloatField;
    FAT_CD_R_NFE_ITEqtde_devolvida: TFloatField;
    FAT_CD_R_NFE_ITEvlr_unitario: TFMTBCDField;
    FAT_CD_R_NFE_ITEvlr_mercadoria: TFMTBCDField;
    FAT_CD_R_NFE_ITEper_desconto: TFloatField;
    FAT_CD_R_NFE_ITEvlr_desconto: TFMTBCDField;
    FAT_CD_R_NFE_ITEvlr_custo: TFMTBCDField;
    FAT_CD_R_NFE_ITEvlr_liquido: TFMTBCDField;
    FAT_CD_R_NFE_ITEvlr_outras: TFMTBCDField;
    FAT_CD_R_NFE_ITEvlr_isenta: TFMTBCDField;
    FAT_CD_R_NFE_ITEvlr_seguro: TFMTBCDField;
    FAT_CD_R_NFE_ITEicm_n_aliquota: TFloatField;
    FAT_CD_R_NFE_ITEicm_per_reducao: TFloatField;
    FAT_CD_R_NFE_ITEicm_n_base: TFMTBCDField;
    FAT_CD_R_NFE_ITEicm_n_valor: TFMTBCDField;
    FAT_CD_R_NFE_ITEicm_s_base: TFMTBCDField;
    FAT_CD_R_NFE_ITEicm_s_valor: TFMTBCDField;
    FAT_CD_R_NFE_ITEipi_base: TFMTBCDField;
    FAT_CD_R_NFE_ITEipi_aliquota: TFloatField;
    FAT_CD_R_NFE_ITEipi_valor: TFMTBCDField;
    FAT_CD_R_NFE_ITEiss_base: TFMTBCDField;
    FAT_CD_R_NFE_ITEiss_aliquota: TFloatField;
    FAT_CD_R_NFE_ITEiss_valor: TFMTBCDField;
    FAT_CD_R_NFE_ITEfre_base: TFMTBCDField;
    FAT_CD_R_NFE_ITEfre_percentual: TFloatField;
    FAT_CD_R_NFE_ITEfre_valor: TFMTBCDField;
    FAT_CD_R_NFE_ITEpis_base: TFMTBCDField;
    FAT_CD_R_NFE_ITEpis_aliquota: TFloatField;
    FAT_CD_R_NFE_ITEpis_valor: TFMTBCDField;
    FAT_CD_R_NFE_ITEcof_base: TFMTBCDField;
    FAT_CD_R_NFE_ITEcof_aliquota: TFloatField;
    FAT_CD_R_NFE_ITEcof_valor: TFMTBCDField;
    FAT_CD_R_NFE_ITEpeso_liquido: TFloatField;
    FAT_CD_R_NFE_ITEpeso_bruto: TFloatField;
    FAT_CD_R_NFE_ITEnro_pedido: TIntegerField;
    FAT_CD_R_NFE_ITEcof_valor_st: TFMTBCDField;
    FAT_CD_R_NFE_ITEimp_valor: TFMTBCDField;
    FAT_CD_R_NFE_ITEvlr_icm_ser_nao_incide: TFMTBCDField;
    FAT_CD_R_NFE_ITEvlr_outras_desp: TFMTBCDField;
    FAT_CD_R_NFE_ITEpis_valor_st: TFMTBCDField;
    FAT_CD_R_NFE_ITEicm_n_dif_aliq: TFMTBCDField;
    FAT_CD_R_NFE_ITEicm_n_vlr_dif_aliq: TFMTBCDField;
    FAT_CD_R_NFE_ITEpara_analise_raa: TIntegerField;
    FAT_CD_R_NFE_ITEfre_dif_aliq_icm: TFMTBCDField;
    FAT_CD_R_NFE_ITEfre_vlr_dif_icm: TFMTBCDField;
    FAT_CD_R_NFE_ITEfre_custo: TFMTBCDField;
    FAT_CD_R_NFE_ITEorigem_mercadoria: TWideStringField;
    FAT_CD_R_NFE_ITEid_cor: TIntegerField;
    FAT_CD_R_NFE_ITEid_tamanho: TIntegerField;
    FAT_CD_R_NFE_ITEint_desc_item: TWideStringField;
    FAT_CD_R_NFE_ITEint_und_venda: TWideStringField;
    FAT_CD_R_NFE_ITEid_busca_item: TWideStringField;
    FAT_CD_R_NFE_ITEid_tributo: TIntegerField;
    FAT_CD_R_NFE_ITEnum_lote: TWideStringField;
    FAT_CD_R_NFE_ITEint_nomecor: TWideStringField;
    FAT_CD_R_NFE_ITEint_nometam: TWideStringField;
    FAT_CD_R_NFE_ITEid_st_pis: TWideStringField;
    FAT_CD_R_NFE_ITEid_st_cof: TWideStringField;
    FAT_CD_R_NFE_ITEid_st_ipi: TWideStringField;
    FAT_CD_R_NFE_ITEint_id_ncm: TWideStringField;
    FAT_CD_R_NFE_ITEtri_valor: TFMTBCDField;
    FAT_CD_R_NFE_ITEtri_indice: TFloatField;
    FAT_CD_R_NFE_ITEicm_s_vlr_mva: TFMTBCDField;
    FAT_CD_R_NFE_ITEicm_s_per_mva: TFloatField;
    FAT_CD_R_NFE_ITEid_sequencia_ite_cmp_ped: TIntegerField;
    FAT_CD_R_NFE_ITEimp_base_calculo: TFMTBCDField;
    FAT_CD_R_NFE_ITEimp_desp_aduana: TFMTBCDField;
    FAT_CD_R_NFE_ITEimp_iof: TFMTBCDField;
    FAT_CD_R_NFE_ITEdi_numero: TIntegerField;
    FAT_CD_R_NFE_ITEdi_data: TDateField;
    FAT_CD_R_NFE_ITEdi_local_desemb: TWideStringField;
    FAT_CD_R_NFE_ITEdi_uf_desemb: TWideStringField;
    FAT_CD_R_NFE_ITEdi_data_desemb: TDateField;
    FAT_CD_R_NFE_ITEdi_exportador: TWideStringField;
    FAT_CD_R_NFE_ITEdi_numero_adicao: TIntegerField;
    FAT_CD_R_NFE_ITEdi_seq_adicao: TIntegerField;
    FAT_CD_R_NFE_ITEdi_fabricante: TWideStringField;
    FAT_CD_R_NFE_ITEdi_vlr_desconto: TFMTBCDField;
    FAT_CD_R_NFE_ITEdi_fci: TWideStringField;
    FAT_CD_R_NFE_ITEid_sequencia_ite_iqm: TIntegerField;
    FAT_CD_R_NFE_ITEint_sldqtde: TFloatField;
    FAT_CD_R_NFE_ITEid_sequencia_ite_xml: TIntegerField;
    FAT_CD_R_NFE_ITEint_tipo_item: TWideStringField;
    FAT_CD_R_NFE_ITEvlr_acrescimo: TFMTBCDField;
    FAT_CD_R_NFE_ITEint_ncmperimposto: TFloatField;
    FAT_CD_R_NFE_TIT: TClientDataSet;
    FAT_CD_R_NFE_TITid_fiscal: TIntegerField;
    FAT_CD_R_NFE_TITid_nfe_tit: TIntegerField;
    FAT_CD_R_NFE_TITid_forma_pag: TIntegerField;
    FAT_CD_R_NFE_TITnum_parcela: TWideStringField;
    FAT_CD_R_NFE_TITdias: TIntegerField;
    FAT_CD_R_NFE_TITdta_vencimento: TDateField;
    FAT_CD_R_NFE_TITvlr_titulo: TFMTBCDField;
    FAT_CD_R_NFE_TITid_plano: TWideStringField;
    FAT_CD_R_NFE_TITid_ccusto: TIntegerField;
    FAT_CD_R_NFE_TITche_banco: TWideStringField;
    FAT_CD_R_NFE_TITche_agencia: TWideStringField;
    FAT_CD_R_NFE_TITche_conta: TIntegerField;
    FAT_CD_R_NFE_TITche_numero: TIntegerField;
    FAT_CD_R_NFE_TITche_emitente: TWideStringField;
    FAT_CD_R_NFE_TITint_nomefpg: TWideStringField;
    FAT_CD_R_NFE_TITint_nomepct: TWideStringField;
    FAT_CD_R_NFE_TITint_nomeccu: TWideStringField;
    FAT_CD_R_NFE_TIThistorico_pag: TWideStringField;
    FAT_CD_R_NFE_TITint_tipopgto: TIntegerField;
    FAT_CD_R_NFE_TME: TClientDataSet;
    FAT_CD_R_NFE_TMEint_nometme: TWideStringField;
    FAT_CD_R_NFE_TMEvlr_liquido: TFMTBCDField;
    FAT_CD_R_NFE_CFO: TClientDataSet;
    FAT_CD_R_NFE_CFOint_nomecfo: TWideStringField;
    FAT_CD_R_NFE_CFOvlr_liquido: TFMTBCDField;
    FAT_CD_R_NFE_CFOvlr_icm: TFMTBCDField;
    FAT_CD_R_NFE_CFOvlr_icm_subs: TFMTBCDField;
    FAT_CD_R_NFE_CFOvlr_pis_cof: TFMTBCDField;
    FAT_CD_R_NFE_CFOid_cfo: TWideStringField;
    tsFornecedores: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
    pmExcluirFornecedor: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    FAT_CD_R_NFE_CFOnfe_cod_sit: TWideStringField;
    FAT_CD_R_NFE_TMEnfe_cod_sit: TWideStringField;
    FAT_CD_R_NFE_CFOid_empresa: TIntegerField;
    FAT_CD_R_NFE_CFOint_nomeemp: TWideStringField;
    FAT_CD_R_NFE_TMEid_empresa: TIntegerField;
    FAT_CD_R_NFE_TMEint_nomeemp: TWideStringField;
    chbExibirNotaF11: TCheckBox;
    FAT_CD_R_NFE_DPI: TClientDataSet;
    FAT_DB_R_NFE_DPI: TfrxDBDataset;
    btnExcel: TSpeedButton;
    tsItem: TTabSheet;
    FAT_FR_R_NFE_DPI: TfrxReport;
    FAT_CD_R_NFE_DPIsap: TWideMemoField;
    FAT_CD_R_NFE_DPIempresa: TWideStringField;
    FAT_CD_R_NFE_DPIproduto: TWideStringField;
    FAT_CD_R_NFE_DPInumeronotafiscal: TIntegerField;
    FAT_CD_R_NFE_DPIserie: TWideStringField;
    FAT_CD_R_NFE_DPImodelo: TWideStringField;
    FAT_CD_R_NFE_DPIid_pedido_venda: TIntegerField;
    FAT_CD_R_NFE_DPIid_item: TIntegerField;
    FAT_CD_R_NFE_DPIid_st_icm: TWideStringField;
    FAT_CD_R_NFE_DPIvlr_desconto: TFMTBCDField;
    FAT_CD_R_NFE_DPIicm_n_valor: TFMTBCDField;
    FAT_CD_R_NFE_DPIid_und_venda: TWideStringField;
    FAT_CD_R_NFE_DPIint_nomecpg: TWideStringField;
    FAT_CD_R_NFE_DPIint_nometme: TWideStringField;
    FAT_CD_R_NFE_DPIdatadeemissãonotafiscal: TDateField;
    FAT_CD_R_NFE_DPIcfop: TWideStringField;
    FAT_CD_R_NFE_DPIgerente: TWideMemoField;
    FAT_CD_R_NFE_DPInatureza: TWideMemoField;
    FAT_CD_R_NFE_DPIvlr_unitario: TFMTBCDField;
    FAT_CD_R_NFE_DPIcpfconsultorvendedor: TWideStringField;
    FAT_CD_R_NFE_DPIdta_documento: TDateField;
    FAT_CD_R_NFE_DPIcliente_fornecedor: TWideMemoField;
    FAT_CD_R_NFE_DPIcpf_cnpj: TWideStringField;
    FAT_CD_R_NFE_DPIinscricao_prod: TWideMemoField;
    FAT_CD_R_NFE_DPImunicipio: TWideMemoField;
    FAT_CD_R_NFE_DPIestado: TWideMemoField;
    FAT_CD_R_NFE_DPIcultura: TWideMemoField;
    FAT_CD_R_NFE_DPIconsultorvendedor: TWideMemoField;
    FAT_CD_R_NFE_DPIvendedor: TWideMemoField;
    FAT_CD_R_NFE_DPItelefonedoprodutor: TWideMemoField;
    FAT_CD_R_NFE_DPIquantidade: TFloatField;
    FAT_CD_R_NFE_DPIvalor_total: TFMTBCDField;
    lblItemDisponivel: TLabel;
    lboxItem: TListBox;
    pmExcluirItem: TPopupMenu;
    bntRemoverItem: TMenuItem;
    pmSelGrupoItem: TPopupMenu;
    MenuItemGruposItens: TMenuItem;
    pmExcluirAlm: TPopupMenu;
    btnExcluirAlm: TMenuItem;
    pmRemoverTodosGrupos: TPopupMenu;
    btnRemoverTodosGrupos: TMenuItem;
    pmSelAlm: TPopupMenu;
    btnSelAlm: TMenuItem;
    tsGrupoEstoque: TTabSheet;
    tsFamilia: TTabSheet;
    tsAlmoxarifado: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    lboxGruposSelecionados: TListBox;
    lboxGruposDisponiveis: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    lboxAlmSel: TListBox;
    lboxAlmDisp: TListBox;
    pmSelFamItem: TPopupMenu;
    btnSelTipos: TMenuItem;
    pmExcluirFam: TPopupMenu;
    btnExcluirTipoItem: TMenuItem;
    Label12: TLabel;
    lboxFamDisp: TListBox;
    Label13: TLabel;
    lboxFamSel: TListBox;
    cbTipoPeriodo: TComboBox;
    Label5: TLabel;
    FAT_CD_R_NFEvlr_icm: TFMTBCDField;
    FAT_CD_R_NFEvlr_icm_subs: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
    procedure lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
    procedure btnTodosTipoEstoqueClick(Sender: TObject);
    procedure btnRemoverTiposEstoqueClick(Sender: TObject);
    procedure lboxCfopDisponiveisDblClick(Sender: TObject);
    procedure lboxCfopSelecionadoDblClick(Sender: TObject);
    procedure btnSelCfopClick(Sender: TObject);
    procedure btnRemoverCfopClick(Sender: TObject);
    procedure btnRemoverTodosModelosClick(Sender: TObject);
    procedure btnTodosModelosClick(Sender: TObject);
    procedure lboxModeloDispDblClick(Sender: TObject);
    procedure lboxModeloSelDblClick(Sender: TObject);
    procedure lboxSitNotaDispDblClick(Sender: TObject);
    procedure lboxSitNotaSelDblClick(Sender: TObject);
    procedure btnSelTodasSitNotaClick(Sender: TObject);
    procedure btnExcluirTodosSitNotaClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure lboxItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bntRemoverItemClick(Sender: TObject);
    procedure lboxGruposDisponiveisDblClick(Sender: TObject);
    procedure lboxGruposSelecionadosDblClick(Sender: TObject);
    procedure MenuItemGruposItensClick(Sender: TObject);
    procedure btnRemoverTodosGruposClick(Sender: TObject);
    procedure btnSelAlmClick(Sender: TObject);
    procedure btnExcluirAlmClick(Sender: TObject);
    procedure lboxAlmSelDblClick(Sender: TObject);
    procedure lboxAlmDispDblClick(Sender: TObject);
    procedure lboxFamDispDblClick(Sender: TObject);
    procedure lboxFamSelDblClick(Sender: TObject);
    procedure btnSelTiposClick(Sender: TObject);
    procedure btnExcluirTipoItemClick(Sender: TObject);
  private
    { Private declarations }
    procedure GerarExcel(Consulta:TClientDataSet);
  public
    { Public declarations }
  end;

var
  FAT_FM_R_NFE: TFAT_FM_R_NFE;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, FAT_RN_R_NFE, PSQ_UN_X_FOR, enConstantes, PSQ_UN_X_ITE;

procedure TFAT_FM_R_NFE.bntRemoverItemClick(Sender: TObject);
begin
  inherited;
  if lboxItem.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxItem.DeleteSelected;
end;

procedure TFAT_FM_R_NFE.btnExcelClick(Sender: TObject);
begin
  inherited;
  if TestarCampos(deInicial,deFinal) then
    begin
      GerarExcel(FAT_CD_R_NFE_DPI);
    end;
end;

procedure TFAT_FM_R_NFE.btnExcluirAlmClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxAlmSel.ClearSelection;

  if lboxAlmSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxAlmSel.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmSel.Items.Count - 1 do
           begin
             lboxAlmDisp.Items.Add(lboxAlmSel.Items[i]);
             lboxAlmSel.Items.Delete(lboxAlmSel.ItemIndex);
           end;
       lboxAlmSel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnExcluirTipoItemClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxFamSel.ClearSelection;

  if lboxFamSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFamSel.Items.Count > 0 then
     begin
       for i := 0 to lboxFamSel.Items.Count - 1 do
           begin
             lboxFamDisp.Items.Add(lboxFamSel.Items[i]);
             lboxFamSel.Items.Delete(lboxFamSel.ItemIndex);
           end;
       lboxFamSel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnExcluirTodosSitNotaClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxSitNotaSel.ClearSelection;

  if lboxSitNotaSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSitNotaSel.Items.Count > 0 then
     begin
       for i := 0 to lboxSitNotaSel.Items.Count - 1 do
           begin
             lboxSitNotaDisp.Items.Add(lboxSitNotaSel.Items[i]);
             lboxSitNotaSel.Items.Delete(lboxSitNotaSel.ItemIndex);
           end;
       lboxSitNotaSel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnImprimirClick(Sender: TObject);
begin
   inherited;
   if TestarCampos(deInicial,deFinal) then
    begin
      ExibirRel(lbxRelatorios,lboxEmpresaSelecionada,lboxFornecedores,lboxTipoEstoqueSelecionado,
        lboxCfopSelecionado,lboxModeloSel,lboxSitNotaSel,lboxItem,lboxGruposSelecionados,
        lboxFamSel,lboxAlmSel, chbExibirNotaCancelada,cbbTipoNF,cbbPesquisaPor,
        cbbOrdenacao,cbTipoPeriodo,txtNDoc,deInicial,deFinal,FAT_FR_R_NFE_ENF,FAT_FR_R_NFE_RNF,FAT_FR_R_NFE_RTE,FAT_FR_R_NFE_RCF,
        FAT_FR_R_NFE_ATE,FAT_FR_R_NFE_ACF,FAT_FR_R_NFE_DPI);
    end;
end;

procedure TFAT_FM_R_NFE.btnRemoverCfopClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCfopSelecionado.ClearSelection;

  if lboxCfopSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCfopSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxCfopSelecionado.Items.Count - 1 do
           begin
             lboxCfopDisponiveis.Items.Add(lboxCfopSelecionado.Items[i]);
             lboxCfopSelecionado.Items.Delete(lboxCfopSelecionado.ItemIndex);
           end;
       lboxCfopSelecionado.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnRemoverRegistroFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFAT_FM_R_NFE.btnRemoverTiposEstoqueClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxTipoEstoqueSelecionado.ClearSelection;

  if lboxTipoEstoqueSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoEstoqueSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoEstoqueSelecionado.Items.Count - 1 do
           begin
             lboxTipoEstoqueDisponiveis.Items.Add(lboxTipoEstoqueSelecionado.Items[i]);
             lboxTipoEstoqueSelecionado.Items.Delete(lboxTipoEstoqueSelecionado.ItemIndex);
           end;
       lboxTipoEstoqueSelecionado.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnRemoverTodosEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpresaSelecionada.ClearSelection;

  if lboxEmpresaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Items.Count - 1 do
           begin
             lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[i]);
             lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnRemoverTodosGruposClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxGruposSelecionados.ClearSelection;
  if lboxGruposSelecionados.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGruposSelecionados.Items.Count > 0 then
     begin
       for i := 0 to lboxGruposSelecionados.Items.Count - 1 do
           begin
             lboxGruposDisponiveis.Items.Add(lboxGruposSelecionados.Items[i]);
             lboxGruposSelecionados.Items.Delete(lboxGruposSelecionados.ItemIndex);
           end;
       lboxGruposSelecionados.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnRemoverTodosModelosClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxModeloSel.ClearSelection;

  if lboxModeloSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxModeloSel.Items.Count > 0 then
     begin
       for i := 0 to lboxModeloSel.Items.Count - 1 do
           begin
             lboxModeloDisp.Items.Add(lboxModeloSel.Items[i]);
             lboxModeloSel.Items.Delete(lboxModeloSel.ItemIndex);
           end;
       lboxModeloSel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnSelAlmClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxAlmDisp.ClearSelection;

  if lboxAlmDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxAlmDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmDisp.Items.Count - 1 do
           begin
             lboxAlmSel.Items.Add(lboxAlmDisp.Items[i]);
             lboxAlmDisp.Items.Delete(lboxAlmDisp.ItemIndex);
           end;
       lboxAlmDisp.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnSelCfopClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCfopDisponiveis.ClearSelection;
  if lboxCfopDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCfopDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxCfopDisponiveis.Items.Count - 1 do
           begin
             lboxCfopSelecionado.Items.Add(lboxCfopDisponiveis.Items[i]);
             lboxCfopDisponiveis.Items.Delete(lboxCfopDisponiveis.ItemIndex);
           end;
       lboxCfopDisponiveis.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnSelTiposClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxFamDisp.ClearSelection;

  if lboxFamDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxFamDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxFamDisp.Items.Count - 1 do
           begin
             lboxFamSel.Items.Add(lboxFamDisp.Items[i]);
             lboxFamDisp.Items.Delete(lboxFamDisp.ItemIndex);
           end;
       lboxFamDisp.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnSelTodasSitNotaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxSitNotaDisp.ClearSelection;

  if lboxSitNotaDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSitNotaDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxSitNotaDisp.Items.Count - 1 do
           begin
             lboxSitNotaSel.Items.Add(lboxSitNotaDisp.Items[i]);
             lboxSitNotaDisp.Items.Delete(lboxSitNotaDisp.ItemIndex);
           end;
       lboxSitNotaDisp.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnTodosModelosClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxModeloDisp.ClearSelection;
  if lboxModeloDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxModeloDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxModeloDisp.Items.Count - 1 do
           begin
             lboxModeloSel.Items.Add(lboxModeloDisp.Items[i]);
             lboxModeloDisp.Items.Delete(lboxModeloDisp.ItemIndex);
           end;
       lboxModeloDisp.Items.Clear;
     end;
end;

procedure TFAT_FM_R_NFE.btnTodosTipoEstoqueClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxTipoEstoqueDisponiveis.ClearSelection;

  if lboxTipoEstoqueDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoEstoqueDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoEstoqueDisponiveis.Items.Count - 1 do
           begin
             lboxTipoEstoqueSelecionado.Items.Add(lboxTipoEstoqueDisponiveis.Items[i]);
             lboxTipoEstoqueDisponiveis.Items.Delete(lboxTipoEstoqueDisponiveis.ItemIndex);
           end;
       lboxTipoEstoqueDisponiveis.Items.Clear;
     end;
end;
procedure TFAT_FM_R_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_NFE);
end;

procedure TFAT_FM_R_NFE.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  // Empresas ------------------------------------------------------------------
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;

       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;

  // Tipos de Estoque ----------------------------------------------------------
  dmGeral.BUS_CD_C_TME.Close;
  dmGeral.BUS_CD_C_TME.Data :=
  dmGeral.BUS_CD_C_TME.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       dmGeral.BUS_CD_C_TME.First;

       while not dmGeral.BUS_CD_C_TME.eof do
          begin
            lboxTipoEstoqueDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_TME.FieldByName('ID_TIPO_MOV_ESTOQUE').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TME.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_TME.Next;
          end;
     end;

 dmGeral.BUS_CD_C_TME.Close;

  // CFOP ----------------------------------------------------------------------
  dmGeral.BUS_CD_C_CFO.Close;
  dmGeral.BUS_CD_C_CFO.Data :=
  dmGeral.BUS_CD_C_CFO.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_CFO.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CFO.First;

       while not dmGeral.BUS_CD_C_CFO.eof do
          begin
            lboxCfopDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_CFO.FieldByName('ID_CFO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CFO.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CFO.Next;
          end;
     end;

 dmGeral.BUS_CD_C_CFO.Close;


 //Modelo ----------------------------------------------------------------------
 dmGeral.BUS_PR_X_MOD_NFE;
 if not dmGeral.BUS_CD_X_MOD.IsEmpty then
     begin
       dmGeral.BUS_CD_X_MOD.First;

       while not dmGeral.BUS_CD_X_MOD.eof do
          begin
            lboxModeloDisp.Items.Add(trim(dmGeral.BUS_CD_X_MOD.FieldByName('CODIGO').AsString) +
                                    ' - ' + trim(dmGeral.BUS_CD_X_MOD.FieldByName('DESCRICAO').AsString));
            dmGeral.BUS_CD_X_MOD.Next;
          end;
     end;

 dmGeral.BUS_CD_X_MOD.Close;

 //Cod. Situacao Nota Fiscal ----------------------------------------------------------------------
 dmGeral.BUS_PR_X_STN;
 if not dmGeral.BUS_CD_X_STN.IsEmpty then
     begin
       dmGeral.BUS_CD_X_STN.First;

       while not dmGeral.BUS_CD_X_STN.eof do
          begin
            lboxSitNotaDisp.Items.Add(trim(dmGeral.BUS_CD_X_STN.FieldByName('CODIGO').AsString) +
                                    ' - ' + trim(dmGeral.BUS_CD_X_STN.FieldByName('DESCRICAO').AsString));
            dmGeral.BUS_CD_X_STN.Next;
          end;
     end;

 dmGeral.BUS_CD_X_STN.Close;


  // Almoxarifados -------------------------------------------------------------
  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
    begin
    dmGeral.BUS_CD_C_ALM.Close;
    dmGeral.BUS_CD_C_ALM.Data :=
    dmGeral.BUS_CD_C_ALM.DataRequest(
           VarArrayOf([1, '%']));

    if not dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ALM.First;

       while not dmGeral.BUS_CD_C_ALM.eof do
          begin
            lboxAlmDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_ALM.Next;
          end;
     end;

     dmGeral.BUS_CD_C_ALM.Close;
  end;

 // Grupo de Itens ------------------------------------------------------------
  dmGeral.BUS_CD_C_GRU.Close;
  dmGeral.BUS_CD_C_GRU.Data :=
  dmGeral.BUS_CD_C_GRU.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_GRU.First;

       while not dmGeral.BUS_CD_C_GRU.eof do
          begin
            lboxGruposDisponiveis.Items.Add(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;

  dmGeral.BUS_CD_C_GRU.Close;

  // Famílias ------------------------------------------------------------
  dmGeral.BUS_CD_C_FAM.Close;
  dmGeral.BUS_CD_C_FAM.Data :=
  dmGeral.BUS_CD_C_FAM.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_FAM.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FAM.First;

       while not dmGeral.BUS_CD_C_FAM.eof do
          begin
            lboxfamDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_FAM.FieldByName('ID_FAMILIA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FAM.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_FAM.Next;
          end;
     end;

  dmGeral.BUS_CD_C_FAM.Close;


end;

procedure TFAT_FM_R_NFE.GerarExcel(Consulta: TClientDataSet);
var
  coluna, linha: integer;
  Excel : Variant;
  valor,rDtaIni, rDtaFin: string;
begin
  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

  PreencherCondicao(lboxEmpresaSelecionada,lboxFornecedores,lboxTipoEstoqueSelecionado,
    lboxCfopSelecionado,lboxModeloSel,lboxSitNotaSel,lboxItem,
    lboxGruposSelecionados, lboxFamSel,lboxAlmSel,
    chbExibirNotaCancelada,cbbTipoNF,
    cbbPesquisaPor,cbbOrdenacao,txtNDoc,deInicial,deFinal);

  Consulta.Close;
  Consulta.Data :=
    Consulta.DataRequest(VarArrayOf([rDtaIni, rDtaFin,xCondEmpresa, xCondTipoEstoque,
      xCondCfop, xCondModelo,xCondSitNota,xCondFornecedor,'',xCondItem]));

  if FAT_CD_R_NFE_DPI.IsEmpty then
    begin
      ShowMessage('Nenhum registro foi encontrado.');
      exit;
    end;

  try
    Excel := CreateOleObject('Excel.Application');
    Excel.Workbooks.add(1);
    Excel.cells.NumberFormat := AnsiChar('@');
  except
    Application.MessageBox ('Versão do Ms-Excel'+
    'Incompatível','Erro',MB_OK+MB_ICONEXCLAMATION);
  end;

  Consulta.First;
  try
    for linha:=0 to Consulta.RecordCount-1 do
      begin
        for coluna:=1 to Consulta.FieldCount-10 do // eliminei a coluna 0 da relação do Excel
          begin
            valor:= Consulta.Fields[coluna-1].AsString;
            if (coluna = 21) then
              Excel.cells [linha+2,coluna]:=txtNDoc.Text
            else
              Excel.cells[linha+2,coluna] :=trim(valor);
          end;
        Consulta.Next;
      end;

    for coluna:=1 to Consulta.FieldCount-10 do // eliminei a coluna 0 da relação do Excel
      begin
        valor:= Consulta.Fields[coluna-1].DisplayLabel;
        Excel.cells[1,coluna].font.bold :=True;
        Excel.cells[1,coluna].Interior.Color :=clSilver;
        Excel.cells[1,coluna].Borders.LineStyle  := 1;
        Excel.cells[1,coluna].Borders.Color   := clBlack;
        Excel.cells[1,coluna]:=AnsiUpperCase(Trim(valor));
      end;
    Excel.columns.AutoFit; // esta linha é para fazer com que o Excel dimencione as células adequadamente.
    Excel.visible:=true;
  except
    Application.MessageBox ('Aconteceu um erro desconhecido durante a conversão'+
    'da tabela para o Ms-Excel','Erro',MB_OK+MB_ICONEXCLAMATION);
  end;
end;

procedure TFAT_FM_R_NFE.lboxAlmDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxAlmDisp.ItemIndex > - 1 then
     begin
       lboxAlmSel.Items.Add(lboxAlmDisp.Items[lboxAlmDisp.ItemIndex]);
       lboxAlmDisp.Items.Delete(lboxAlmDisp.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxAlmSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxAlmSel.ItemIndex > -1 then
     begin
       lboxAlmDisp.Items.Add(lboxAlmSel.Items[lboxAlmSel.ItemIndex]);
       lboxAlmSel.Items.Delete(lboxAlmSel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxCfopDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopDisponiveis.ItemIndex > - 1 then
     begin
       lboxCfopSelecionado.Items.Add(lboxCfopDisponiveis.Items[lboxCfopDisponiveis.ItemIndex]);
       lboxCfopDisponiveis.Items.Delete(lboxCfopDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxCfopSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCfopSelecionado.ItemIndex > -1 then
     begin
       lboxCfopDisponiveis.Items.Add(lboxCfopSelecionado.Items[lboxCfopSelecionado.ItemIndex]);
       lboxCfopSelecionado.Items.Delete(lboxCfopSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedores,6,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0)) then
                begin
                  lboxFornecedores.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TFAT_FM_R_NFE.lboxGruposDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposDisponiveis.ItemIndex > - 1 then
     begin
       lboxGruposSelecionados.Items.Add(lboxGruposDisponiveis.Items[lboxGruposDisponiveis.ItemIndex]);
       lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxGruposSelecionadosDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposSelecionados.ItemIndex > -1 then
     begin
       lboxGruposDisponiveis.Items.Add(lboxGruposSelecionados.Items[lboxGruposSelecionados.ItemIndex]);
       lboxGruposSelecionados.Items.Delete(lboxGruposSelecionados.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItem,6,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0)) then
                begin
                  lboxItem.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TFAT_FM_R_NFE.lboxModeloDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxModeloDisp.ItemIndex > - 1 then
     begin
       lboxModeloSel.Items.Add(lboxModeloDisp.Items[lboxModeloDisp.ItemIndex]);
       lboxModeloDisp.Items.Delete(lboxModeloDisp.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxModeloSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxModeloSel.ItemIndex > -1 then
     begin
       lboxModeloDisp.Items.Add(lboxModeloSel.Items[lboxModeloSel.ItemIndex]);
       lboxModeloSel.Items.Delete(lboxModeloSel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxSitNotaDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxSitNotaDisp.ItemIndex > - 1 then
     begin
       lboxSitNotaSel.Items.Add(lboxSitNotaDisp.Items[lboxSitNotaDisp.ItemIndex]);
       lboxSitNotaDisp.Items.Delete(lboxSitNotaDisp.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxSitNotaSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxSitNotaSel.ItemIndex > -1 then
     begin
       lboxSitNotaDisp.Items.Add(lboxSitNotaSel.Items[lboxSitNotaSel.ItemIndex]);
       lboxSitNotaSel.Items.Delete(lboxSitNotaSel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxFamDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxFamDisp.ItemIndex > - 1 then
     begin
       lboxFamSel.Items.Add(lboxFamDisp.Items[lboxFamDisp.ItemIndex]);
       lboxFamDisp.Items.Delete(lboxAlmDisp.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxFamSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFamSel.ItemIndex > -1 then
     begin
       lboxFamDisp.Items.Add(lboxFamSel.Items[lboxFamSel.ItemIndex]);
       lboxFamSel.Items.Delete(lboxFamSel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxTipoEstoqueDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueDisponiveis.ItemIndex > - 1 then
     begin
       lboxTipoEstoqueSelecionado.Items.Add(lboxTipoEstoqueDisponiveis.Items[lboxTipoEstoqueDisponiveis.ItemIndex]);
       lboxTipoEstoqueDisponiveis.Items.Delete(lboxTipoEstoqueDisponiveis.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lboxTipoEstoqueSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoEstoqueSelecionado.ItemIndex > -1 then
     begin
       lboxTipoEstoqueDisponiveis.Items.Add(lboxTipoEstoqueSelecionado.Items[lboxTipoEstoqueSelecionado.ItemIndex]);
       lboxTipoEstoqueSelecionado.Items.Delete(lboxTipoEstoqueSelecionado.ItemIndex);
     end;
end;

procedure TFAT_FM_R_NFE.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06-Detalhado por Item(Excel)' then
    begin
      chbExibirNotaCancelada.Visible := false;
      chbExibirNotaF11.Visible := false;
      lblTipoNF.Visible := false;
      cbbTipoNF.Visible := false;
      lblPesquisaPor.Visible := false;
      cbbPesquisaPor.Visible := false;
      lblNDoc.Caption := 'Gerente :';
      txtNDoc.Width := 208;
      lblOrdenacao.Visible := false;
      cbbOrdenacao.Visible := false;
      btnImprimir.Visible := false;
      btnExcel.Left := 5;
      btnExcel.Visible := true;
    end
  else
    begin
      chbExibirNotaCancelada.Visible := true;
      chbExibirNotaF11.Visible := true;
      lblTipoNF.Visible := true;
      cbbTipoNF.Visible := true;
      lblPesquisaPor.Visible := true;
      cbbPesquisaPor.Visible := true;
      lblNDoc.Caption := 'Nº Doc. :';
      txtNDoc.Width := 90;
      lblOrdenacao.Visible := true;
      cbbOrdenacao.Visible := true;
      btnImprimir.Visible := true;
      btnExcel.Visible := false;
    end;

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06-Detalhado por Item(Excel)') or
    (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07-Detalhado por item(Simples)')then
    begin
      tsItem.TabVisible:=True;
    end
  else
    tsItem.TabVisible:=False;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07-Detalhado por item(Simples)' then
    begin
      cbbTipoNf.Clear;
      cbbTipoNf.AddItem('S-Saídas',nil);
      cbbTipoNf.AddItem('E-Entradas',nil);
      cbbTipoNf.AddItem('D-Devolução de Fornecedor',nil);
      cbbTipoNf.AddItem('R-Devolução de Cliente',nil);
      cbbTipoNf.AddItem('F-Fretes',nil);
      cbbTipoNf.AddItem('C-Cancelados',nil);
      cbbTipoNf.AddItem('T-Todos',nil);
      cbbTipoNf.ItemIndex := 5;
      lblNDoc.Visible := false;
      txtNDoc.Visible := false;
      chbExibirNotaCancelada.Visible := false;
      chbExibirNotaF11.Visible := false;
      lblPesquisaPor.Visible := false;
      cbbPesquisaPor.Visible := false;
      lblOrdenacao.Visible := false;
      cbbOrdenacao.Visible := false;
    end
  else
    begin
      cbbTipoNf.Clear;
      cbbTipoNf.AddItem('S-Saídas',nil);
      cbbTipoNf.AddItem('E-Entradas',nil);
      cbbTipoNf.AddItem('D-Devolução de Fornecedor',nil);
      cbbTipoNf.AddItem('R-Devolução de Cliente',nil);
      cbbTipoNf.AddItem('F-Fretes',nil);
      cbbTipoNf.AddItem('C-Cancelados',nil);
      cbbTipoNf.ItemIndex := 0;
      lblNDoc.Visible := true;
      txtNDoc.Visible := true;
    end;
end;

procedure TFAT_FM_R_NFE.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpresas.ClearSelection;

  if lboxEmpresas.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresas.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresas.Items.Count - 1 do
           begin
             lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[i]);
             lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
           end;
       lboxEmpresas.Items.Clear;
     end;
end;
procedure TFAT_FM_R_NFE.MenuItemGruposItensClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxGruposDisponiveis.ClearSelection;

  if lboxGruposDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxGruposDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxGruposDisponiveis.Items.Count - 1 do
           begin
             lboxGruposSelecionados.Items.Add(lboxGruposDisponiveis.Items[i]);
             lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
           end;
       lboxGruposDisponiveis.Items.Clear;
     end;
end;

end.
