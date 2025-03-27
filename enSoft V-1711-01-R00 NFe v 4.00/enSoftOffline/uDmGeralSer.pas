unit uDmGeralSer;

interface

uses
  System.SysUtils, System.Classes,System.IniFiles,Vcl.Forms,Vcl.Controls, DbxDevartPostgreSQL, Data.DB,
  Datasnap.DBClient, Data.SqlExpr, Data.DBXDataSnap, IPPeerClient,Vcl.Dialogs,
  Data.DBXCommon, Datasnap.DSConnect,DataSnap.DSSession,Winapi.Windows,
  Data.FMTBcd;

type
  TdmGeralSer = class(TDataModule)
    BUS_CD_C_FUN: TClientDataSet;
    pcConexao: TDSProviderConnection;
    Conexao: TSQLConnection;
    BUS_CD_C_PAR: TClientDataSet;
    BUS_CD_C_FUNid_funcionario: TIntegerField;
    BUS_CD_C_FUNativo: TBooleanField;
    BUS_CD_C_FUNnome: TWideStringField;
    BUS_CD_C_FUNendereco: TWideStringField;
    BUS_CD_C_FUNcep: TWideStringField;
    BUS_CD_C_FUNnumero: TWideStringField;
    BUS_CD_C_FUNtel_fixo: TWideStringField;
    BUS_CD_C_FUNtel_movel: TWideStringField;
    BUS_CD_C_FUNdoc_cpf: TWideStringField;
    BUS_CD_C_FUNdoc_identidade: TWideStringField;
    BUS_CD_C_FUNbairro: TWideStringField;
    BUS_CD_C_FUNid_cidade: TWideStringField;
    BUS_CD_C_FUNestado: TWideStringField;
    BUS_CD_C_FUNemail: TWideStringField;
    BUS_CD_C_FUNsexo: TIntegerField;
    BUS_CD_C_FUNdta_nascimento: TDateField;
    BUS_CD_C_FUNdta_cadastro: TDateField;
    BUS_CD_C_FUNlogin: TWideStringField;
    BUS_CD_C_FUNsenha: TWideStringField;
    BUS_CD_C_FUNdta_senha_expira: TDateField;
    BUS_CD_C_FUNid_perfil_seg: TIntegerField;
    BUS_CD_C_FUNseg_alt_lim_cli: TBooleanField;
    BUS_CD_C_FUNseg_alt_sit_cli: TBooleanField;
    BUS_CD_C_FUNseg_alt_pre_pro: TBooleanField;
    BUS_CD_C_FUNseg_hab_bot_exc: TBooleanField;
    BUS_CD_C_FUNint_nomecid: TWideStringField;
    BUS_CD_C_FUNcod_lme: TWideStringField;
    BUS_CD_C_FUNrev_lme: TWideStringField;
    BUS_CD_C_FUNseg_vis_ult_cmp_ite: TBooleanField;
    BUS_CD_C_FUNseg_vis_msg_sol_cmp: TBooleanField;
    BUS_CD_C_FUNseg_apr_rep_cmp_ped: TBooleanField;
    BUS_CD_C_FUNseg_per_canc_orv: TBooleanField;
    BUS_CD_C_FUNseg_habilitar_seg: TBooleanField;
    BUS_CD_C_FUNseg_redef_senha: TBooleanField;
    BUS_CD_C_FUNseg_hab_bot_alt_fun: TBooleanField;
    BUS_CD_C_FUNseq_vis_msg_ped_exp_fat: TBooleanField;
    BUS_CD_C_FUNseg_ctc_apg: TBooleanField;
    BUS_CD_C_FUNseg_alt_vend_ped: TBooleanField;
    BUS_CD_C_FUNCAD_SQ_C_FUN_CRG: TDataSetField;
    BUS_CD_C_FPG: TClientDataSet;
    BUS_CD_C_CPG: TClientDataSet;
    BUS_CD_C_CID: TClientDataSet;
    BUS_CD_C_TME: TClientDataSet;
    BUS_CD_C_GRU: TClientDataSet;
    BUS_CD_C_PEC: TClientDataSet;
    BUS_CD_C_PCT: TClientDataSet;
    BUS_CD_C_FOR: TClientDataSet;
    BUS_CD_C_UND: TClientDataSet;
    BUS_CD_C_FAM: TClientDataSet;
    BUS_CD_C_ITE: TClientDataSet;
    BUS_CD_C_ITE_PRC: TClientDataSet;
    BUS_CD_C_ITEid_item: TIntegerField;
    BUS_CD_C_ITEativo: TBooleanField;
    BUS_CD_C_ITEcardapio: TBooleanField;
    BUS_CD_C_ITEdescricao: TWideStringField;
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
    BUS_CD_C_ITEetiq_madeira: TWideStringField;
    BUS_CD_C_ITEetiq_espuma1: TWideStringField;
    BUS_CD_C_ITEetiq_espuma2: TWideStringField;
    BUS_CD_C_ITEetiq_espuma3: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento1: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento2: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento3: TWideStringField;
    BUS_CD_C_ITEetiq_recomendacoes_1: TWideStringField;
    BUS_CD_C_ITEetiq_recomendacoes_2: TWideStringField;
    BUS_CD_C_ITElote_fabric_obrigatorio: TIntegerField;
    BUS_CD_C_ITEid_ncm: TWideStringField;
    BUS_CD_C_ITEPRECO_AVISTA: TFMTBCDField;
    BUS_CD_C_ITEPRECO_APRAZO: TFMTBCDField;
    BUS_CD_C_ITEint_nomencm: TWideStringField;
    BUS_CD_C_ITEint_desc_grupo: TWideStringField;
    BUS_CD_C_ITEint_tipo_item: TWideStringField;
    BUS_CD_C_ITEint_origem: TWideStringField;
    BUS_CD_C_ITEint_tributo: TIntegerField;
    BUS_CD_C_ITEint_nomefor: TWideStringField;
    BUS_CD_C_ITEdta_cadastro: TDateField;
    BUS_CD_C_ITEetiq_modelo: TWideStringField;
    BUS_CD_C_ITEfantasia: TWideStringField;
    BUS_CD_C_ITEcod_lme: TWideStringField;
    BUS_CD_C_ITErev_lme: TWideStringField;
    BUS_CD_C_ITEint_mva: TFloatField;
    BUS_CD_C_ITEint_fteetq: TIntegerField;
    BUS_CD_C_ITEid_familia: TIntegerField;
    BUS_CD_C_ITEdes_completa: TWideStringField;
    BUS_CD_C_ITEint_impselo: TBooleanField;
    BUS_CD_C_ITErt_pricipio_ativo: TWideStringField;
    BUS_CD_C_ITErt_composicao: TWideStringField;
    BUS_CD_C_ITEcod_onu: TWideStringField;
    BUS_CD_C_ITEret_emb_nao_lavavel: TIntegerField;
    BUS_CD_C_ITEret_emb_lavaveis: TIntegerField;
    BUS_CD_C_ITEtam_observacoes: TWideStringField;
    BUS_CD_C_ITEint_perimpostoncm: TFloatField;
    BUS_CD_C_ITEret_emb_capacidade: TWideStringField;
    BUS_CD_C_ITEint_pis_entrada: TWideStringField;
    BUS_CD_C_ITEint_pis_saida: TWideStringField;
    BUS_CD_C_ITEint_cof_entrada: TWideStringField;
    BUS_CD_C_ITEint_cof_saida: TWideStringField;
    BUS_CD_C_ITEsgq_critica_laudo_fab: TBooleanField;
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
    BUS_CD_C_ITECAD_SQ_C_ITE_PRC: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_XML: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_APL: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_TPR: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_ESP: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_COM: TDataSetField;
    BUS_CD_C_ITE_PRCid_item: TIntegerField;
    BUS_CD_C_ITE_PRCid_perfil_cli: TIntegerField;
    BUS_CD_C_ITE_PRCpreco_avista: TFMTBCDField;
    BUS_CD_C_ITE_PRCpreco1: TFMTBCDField;
    BUS_CD_C_ITE_PRCpreco2: TFMTBCDField;
    BUS_CD_C_ITE_PRCpreco3: TFMTBCDField;
    BUS_CD_C_ITE_PRCpreco4: TFMTBCDField;
    BUS_CD_C_ITE_PRCint_desc_perfil: TWideStringField;
    BUS_CD_M_FES: TClientDataSet;
    BUS_CD_M_FES_ALM: TClientDataSet;
    BUS_CD_C_CLI: TClientDataSet;
    BUS_CD_C_ALM: TClientDataSet;
    BUS_CD_C_COR: TClientDataSet;
    BUS_CD_C_TAM: TClientDataSet;
    BUS_CD_C_PAR_CTR: TClientDataSet;
    BUS_CD_C_PAR_MOD: TClientDataSet;
    BUS_CD_C_PAR_CPG: TClientDataSet;
    BUS_CD_C_PARid_empresa: TIntegerField;
    BUS_CD_C_PARemp_cnpj: TWideStringField;
    BUS_CD_C_PARemp_razao: TWideStringField;
    BUS_CD_C_PARemp_fantasia: TWideStringField;
    BUS_CD_C_PARCAD_SQ_C_PAR_CPG: TDataSetField;
    BUS_CD_C_PARCAD_SQ_C_PAR_MOD: TDataSetField;
    BUS_CD_C_PARCAD_SQ_C_PAR_CTR: TDataSetField;
    BUS_CD_C_PAR_CTRid_empresa: TIntegerField;
    BUS_CD_C_PAR_CTRativa_producao: TBooleanField;
    BUS_CD_C_PAR_CTRped_ativa_titulos: TBooleanField;
    BUS_CD_C_PAR_CTRped_aceita_est_negativo: TBooleanField;
    BUS_CD_C_PAR_CTRutiliza_almoxarifado: TBooleanField;
    BUS_CD_C_PAR_CTRutiliza_lote_na_entrada: TBooleanField;
    BUS_CD_C_PAR_CTRativa_cor: TBooleanField;
    BUS_CD_C_PAR_CTRativa_tamanho: TBooleanField;
    BUS_CD_C_PAR_CTRrcr_inf_pag_credito: TBooleanField;
    BUS_CD_C_PAR_CTRnfe_separa_prod_serv: TBooleanField;
    BUS_CD_C_PAR_CTRped_ver_limite: TBooleanField;
    BUS_CD_C_PAR_CTRfaz_corr_preco_perfil: TBooleanField;
    BUS_CD_C_PAR_CTRtax_juros_mensal: TFloatField;
    BUS_CD_C_PAR_CTRper_margem_lucro: TFloatField;
    BUS_CD_C_PAR_CTRper_desp_fixa: TFloatField;
    BUS_CD_C_PAR_CTRdia_protesto: TIntegerField;
    BUS_CD_C_PAR_CTRper_ir: TFloatField;
    BUS_CD_C_PAR_CTRper_cssl: TFloatField;
    BUS_CD_C_PAR_CTRper_desconto: TFloatField;
    BUS_CD_C_PAR_CTRvlr_lim_maximo: TFMTBCDField;
    BUS_CD_C_PAR_CTRper_iss: TFloatField;
    BUS_CD_C_PAR_CTRped_cliente_consumidor: TIntegerField;
    BUS_CD_C_PAR_CTRpde_id_forma_pag: TIntegerField;
    BUS_CD_C_PAR_CTRpde_id_ccusto: TIntegerField;
    BUS_CD_C_PAR_CTRpde_id_local_titulo: TIntegerField;
    BUS_CD_C_PAR_CTRpde_id_tipo_financeiro: TIntegerField;
    BUS_CD_C_PAR_CTRpde_id_fornecedor: TIntegerField;
    BUS_CD_C_PAR_CTRint_pdefornecedor: TWideStringField;
    BUS_CD_C_PAR_CTReff_finalidade: TWideStringField;
    BUS_CD_C_PAR_CTReff_perfil: TWideStringField;
    BUS_CD_C_PAR_CTReff_atividade: TWideStringField;
    BUS_CD_C_PAR_CTRefc_layout: TWideStringField;
    BUS_CD_C_PAR_CTRefc_tipo_escrituracao: TWideStringField;
    BUS_CD_C_PAR_CTRefc_ind_reg_cum: TWideStringField;
    BUS_CD_C_PAR_CTRefc_situa_especial: TWideStringField;
    BUS_CD_C_PAR_CTRefc_ind_nat_pj: TWideStringField;
    BUS_CD_C_PAR_CTRefc_ind_ativ: TWideStringField;
    BUS_CD_C_PAR_CTRefc_ind_apro_cred: TWideStringField;
    BUS_CD_C_PAR_CTRefc_cod_tipo_cont: TWideStringField;
    BUS_CD_C_PAR_CTRefc_cod_inc_trib: TWideStringField;
    BUS_CD_C_PAR_CTRsef_layout: TWideStringField;
    BUS_CD_C_PAR_CTRsef_cod_fin: TWideStringField;
    BUS_CD_C_PAR_CTRsef_cod_ctd: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_ed: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_arq: TWideStringField;
    BUS_CD_C_PAR_CTRsef_prf_iss: TWideStringField;
    BUS_CD_C_PAR_CTRsef_prf_icms: TWideStringField;
    BUS_CD_C_PAR_CTRsef_prf_ridf: TWideStringField;
    BUS_CD_C_PAR_CTRsef_prf_rudf: TWideStringField;
    BUS_CD_C_PAR_CTRsef_prf_lmc: TWideStringField;
    BUS_CD_C_PAR_CTRsef_prf_rv: TWideStringField;
    BUS_CD_C_PAR_CTRsef_prf_ri: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_ec: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_iss: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_rt: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_icms: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_st: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_at: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_ipi: TWideStringField;
    BUS_CD_C_PAR_CTRsef_ind_ri: TWideStringField;
    BUS_CD_C_PAR_CTRaliq_interna_icms: TIntegerField;
    BUS_CD_C_PAR_CTRdta_saldo_inicial: TDateField;
    BUS_CD_C_PAR_CTRano_corrente: TIntegerField;
    BUS_CD_C_PAR_CTRmes_corrente: TIntegerField;
    BUS_CD_C_PAR_CTRid_lme: TIntegerField;
    BUS_CD_C_PAR_CTRtipo_desconto_cmp_ped: TIntegerField;
    BUS_CD_C_PAR_CTRid_alm_padrao: TIntegerField;
    BUS_CD_C_PAR_CTRdoc_layout: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_cod_fin: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_cod_ctd: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_ed: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_arq: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_prf_iss: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_prf_icms: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_prf_ridf: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_prf_rudf: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_prf_lmc: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_prf_rv: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_prf_ri: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_ec: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_iss: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_rt: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_icms: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_st: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_at: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_ipi: TWideStringField;
    BUS_CD_C_PAR_CTRdoc_ind_ri: TWideStringField;
    BUS_CD_C_PAR_CTRper_corr_preco_prazo: TFloatField;
    BUS_CD_C_PAR_CTRcte_tipo_estoque_ent: TIntegerField;
    BUS_CD_C_PAR_CTRcte_tipo_estoque_sai: TIntegerField;
    BUS_CD_C_PAR_CTRdec_forma_pag_credito: TIntegerField;
    BUS_CD_C_PAR_CTRpcp_id_item_sob_medida: TIntegerField;
    BUS_CD_C_PAR_CTRpcp_cod_int_fte_etq: TWideStringField;
    BUS_CD_C_PAR_CTRped_cliente: TIntegerField;
    BUS_CD_C_PAR_CTRped_altera_preco: TBooleanField;
    BUS_CD_C_PAR_CTRint_nomeitesobmed: TWideStringField;
    BUS_CD_C_PAR_CTRper_desp_var: TFloatField;
    BUS_CD_C_PAR_CTRorv_id_tipo_mov_estoque: TIntegerField;
    BUS_CD_C_PAR_CTRserie_nf: TWideStringField;
    BUS_CD_C_PAR_CTRrcr_id_tif_deb: TIntegerField;
    BUS_CD_C_PAR_CTRrcr_id_tif_cre: TIntegerField;
    BUS_CD_C_PAR_CTRrcr_id_plano_sef: TWideStringField;
    BUS_CD_C_PAR_CTRcxa_id_plano_suprim: TWideStringField;
    BUS_CD_C_PAR_CTRcxa_id_tif_suprim: TIntegerField;
    BUS_CD_C_PAR_CTRcxa_id_plano_sangria: TWideStringField;
    BUS_CD_C_PAR_CTRcxa_id_tif_sangria: TIntegerField;
    BUS_CD_C_PAR_CTRcxa_exp_id_tif_sangria: TIntegerField;
    BUS_CD_C_PAR_CTRcxa_exp_id_plano_sangria: TWideStringField;
    BUS_CD_C_PAR_CTRrcr_id_condicao_pag: TIntegerField;
    BUS_CD_C_PAR_CTRrcr_id_forma_pag: TIntegerField;
    BUS_CD_C_PAR_CTRdev_for_id_condicao_pag: TIntegerField;
    BUS_CD_C_PAR_CTRcxa_critica_chq: TBooleanField;
    BUS_CD_C_PAR_CTRnfe_ecf_id_condicao_pag: TIntegerField;
    BUS_CD_C_PAR_CTRnfe_ecf_tipo_estoque: TIntegerField;
    BUS_CD_C_PAR_CTRcxa_imprime_etq: TBooleanField;
    BUS_CD_C_PAR_CTRcxa_f11_pedido: TBooleanField;
    BUS_CD_C_PAR_CTRper_cofins_l_real: TFloatField;
    BUS_CD_C_PAR_CTRper_pis_l_real: TFloatField;
    BUS_CD_C_PAR_CTRfat_seq_termo: TIntegerField;
    BUS_CD_C_PAR_CTRper_cofins_l_presumido: TFloatField;
    BUS_CD_C_PAR_CTRper_pis_l_presumido: TFloatField;
    BUS_CD_C_PAR_CTRcxa_inf_lote_car_fech: TBooleanField;
    BUS_CD_C_PAR_CTRconc_alt_txa_fixa_car: TBooleanField;
    BUS_CD_C_PAR_CTRmch_id_tif_dep: TIntegerField;
    BUS_CD_C_PAR_CTRmch_id_tif_dev: TIntegerField;
    BUS_CD_C_PAR_CTRmch_id_plano_dep: TWideStringField;
    BUS_CD_C_PAR_CTRmch_id_plano_dev: TWideStringField;
    BUS_CD_C_PAR_CTRmch_id_plano_ppr: TWideStringField;
    BUS_CD_C_PAR_CTRmch_id_tif_ppr: TIntegerField;
    BUS_CD_C_PAR_CTRmch_id_forma_pag: TIntegerField;
    BUS_CD_C_PAR_CTRorv_id_cargo_mec: TIntegerField;
    BUS_CD_C_PAR_CTRorv_critica_ite_aber: TBooleanField;
    BUS_CD_C_PAR_CTRorv_critica_ocv_aber: TBooleanField;
    BUS_CD_C_PAR_CTReff_motivo_inv: TWideStringField;
    BUS_CD_C_PAR_CTRfin_id_maquineta_pad: TIntegerField;
    BUS_CD_C_PAR_CTRorv_id_forma_pag_rcr: TIntegerField;
    BUS_CD_C_PAR_CTRfin_perm_n_maquinetas: TBooleanField;
    BUS_CD_C_PAR_CTRped_envia_carga: TBooleanField;
    BUS_CD_C_PAR_CTRnfe_per_partilha_dest: TFloatField;
    BUS_CD_C_PAR_CTRnfe_per_partilha_orig: TFloatField;
    BUS_CD_C_PAR_CTRnfe_per_icms_saida: TFloatField;
    BUS_CD_C_PAR_CTRsgq_ped_gera_nfs: TBooleanField;
    BUS_CD_C_PAR_CTRcbx_id_plano_desc_ope: TWideStringField;
    BUS_CD_C_PAR_CTRcbx_id_plano_desc_antec: TWideStringField;
    BUS_CD_C_PAR_CTRcbx_id_tipo_financeiro: TIntegerField;
    BUS_CD_C_PAR_CTRcbx_id_tipo_financeiro_desc: TIntegerField;
    BUS_CD_C_PAR_CTRrbx_ret_id_plano: TWideStringField;
    BUS_CD_C_PAR_CTRrbx_ret_id_tipo_financeiro: TIntegerField;
    BUS_CD_C_PAR_CTRrbx_ret_id_ccu: TIntegerField;
    BUS_CD_C_PAR_CTRrbx_ret_id_forma_pag: TIntegerField;
    BUS_CD_C_PAR_CTRcbx_id_plano: TWideStringField;
    BUS_CD_C_PAR_CTRsgq_dias_prev_cid_dentro: TIntegerField;
    BUS_CD_C_PAR_CTRsgq_dias_prev_cid_fora: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_ed: TIntegerField;
    BUS_CD_C_PAR_CTRdes_cod_fin: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_arq: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_iss: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_ec: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_rt: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_icms: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_st: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_at: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_ipi: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_pi: TIntegerField;
    BUS_CD_C_PAR_CTRdes_ind_gef: TIntegerField;
    BUS_CD_C_PAR_CTRdes_prf_icms: TIntegerField;
    BUS_CD_C_PAR_CTRdes_prf_iss: TIntegerField;
    BUS_CD_C_PAR_CTRdes_prf_ridf: TIntegerField;
    BUS_CD_C_PAR_CTRdes_prf_rudf: TIntegerField;
    BUS_CD_C_PAR_CTRdes_prf_lcm: TIntegerField;
    BUS_CD_C_PAR_CTRdes_prf_rv: TIntegerField;
    BUS_CD_C_PAR_CTRdes_prf_ri: TIntegerField;
    BUS_CD_C_PAR_CTRecf_id_tipo_mov_estoque: TIntegerField;
    BUS_CD_C_PAR_CTRecf_id_condicao_pag: TIntegerField;
    BUS_CD_C_PAR_CTRmvb_id_fornecedor: TIntegerField;
    BUS_CD_C_PAR_CTRped_cupom_imp: TIntegerField;
    BUS_CD_C_PAR_CTRrcr_id_tipo_financeiro: TIntegerField;
    BUS_CD_C_PAR_CTRrcr_id_plano: TWideStringField;
    BUS_CD_C_PAR_CTRperm_bxa_pag_n_emp: TBooleanField;
    BUS_CD_C_PAR_CTRrcr_cri_forma_pag: TBooleanField;
    BUS_CD_C_PAR_CTRfp_per_cust_ven_mens: TFloatField;
    BUS_CD_C_PAR_CTRfp_per_icms_ven: TFloatField;
    BUS_CD_C_PAR_CTRfp_per_simples: TFloatField;
    BUS_CD_C_PAR_CTRfp_per_comissao: TFloatField;
    BUS_CD_C_PAR_CTRfp_per_frete_ven: TFloatField;
    BUS_CD_C_PAR_CTRfp_per_cust_fin_ven: TFloatField;
    BUS_CD_C_PAR_CTRfp_per_prc_prz_ven_prat: TFloatField;
    BUS_CD_C_PAR_CTRassociado_acavasf: TBooleanField;
    BUS_CD_C_PAR_CTRtipo_impressao: TIntegerField;
    BUS_CD_C_PAR_CTRped_corr_preco_prazo: TBooleanField;
    BUS_CD_C_PAR_CTRemite_duplicata_aceite: TBooleanField;
    BUS_CD_C_PAR_CTRped_cli_cns_vnd_max: TFMTBCDField;
    BUS_CD_C_PAR_CTRcxa_id_tipo_fin_canc_ant: TIntegerField;
    BUS_CD_C_PAR_CTRcxa_id_plano_canc_ant: TWideStringField;
    BUS_CD_C_PAR_CTRprc_ite_manual: TBooleanField;
    BUS_CD_C_PAR_CTRsgq_opr_id_setor: TIntegerField;
    BUS_CD_C_PAR_MODid_empresa: TIntegerField;
    BUS_CD_C_PAR_MODcad: TBooleanField;
    BUS_CD_C_PAR_MODtab: TBooleanField;
    BUS_CD_C_PAR_MODcsu: TBooleanField;
    BUS_CD_C_PAR_MODcmp: TBooleanField;
    BUS_CD_C_PAR_MODest: TBooleanField;
    BUS_CD_C_PAR_MODfat: TBooleanField;
    BUS_CD_C_PAR_MODome: TBooleanField;
    BUS_CD_C_PAR_MODota: TBooleanField;
    BUS_CD_C_PAR_MODseg: TBooleanField;
    BUS_CD_C_PAR_MODchave: TWideStringField;
    BUS_CD_C_PAR_MODsgq: TBooleanField;
    BUS_CD_C_PAR_MODctc: TBooleanField;
    BUS_CD_C_PAR_MODfin: TBooleanField;
    BUS_CD_C_PAR_MODrev: TBooleanField;
    BUS_CD_C_PAR_MODsnf: TBooleanField;
    BUS_CD_C_PAR_MODcar: TBooleanField;
    BUS_CD_C_PAR_CPGid_empresa: TIntegerField;
    BUS_CD_C_PAR_CPGid_condicao_pag: TIntegerField;
    BUS_CD_C_PAR_CPGper_reajuste: TFloatField;
    BUS_CD_C_PAR_CPGsequencia: TIntegerField;
    BUS_CD_C_PAR_CPGint_nomecpg: TWideStringField;
    BUS_CD_C_TRI: TClientDataSet;
    BUS_CD_C_TRI_REG: TClientDataSet;
    BUS_CD_C_TRIid_tributo: TIntegerField;
    BUS_CD_C_TRIdescricao: TWideStringField;
    BUS_CD_C_TRIcod_lme: TWideStringField;
    BUS_CD_C_TRIrev_lme: TWideStringField;
    BUS_CD_C_TRICAD_SQ_C_TRI_REG: TDataSetField;
    BUS_CD_C_TRI_REGid_tributo: TIntegerField;
    BUS_CD_C_TRI_REGid_tipo_mov_estoque: TIntegerField;
    BUS_CD_C_TRI_REGuf: TWideStringField;
    BUS_CD_C_TRI_REGcnt_id_st_icm: TWideStringField;
    BUS_CD_C_TRI_REGcnt_reducao: TFloatField;
    BUS_CD_C_TRI_REGcnt_aliquota: TFloatField;
    BUS_CD_C_TRI_REGnct_id_st_icm: TWideStringField;
    BUS_CD_C_TRI_REGnct_reducao: TFloatField;
    BUS_CD_C_TRI_REGnct_aliquota: TFloatField;
    BUS_CD_C_TRI_REGid_inf: TIntegerField;
    BUS_CD_C_TRI_REGid_empresa: TIntegerField;
    BUS_CD_C_TRI_REGint_nometme: TWideStringField;
    BUS_CD_C_TRI_REGint_nomeemp: TWideStringField;
    BUS_CD_C_TRI_REGint_nomeinf: TWideStringField;
    BUS_CD_C_TRI_REGcnt_csosn: TWideStringField;
    BUS_CD_C_TRI_REGnct_csosn: TWideStringField;
    BUS_CD_C_TRI_REGnct_aliquota_ecf: TWideStringField;
    BUS_CD_C_TRI_REGpart_per_aliq_dest: TFloatField;
    BUS_CD_C_TRI_REGpart_per_ope_int_isen: TBooleanField;
    BUS_CD_C_TRI_REGpart_per_ope_ext_isen: TBooleanField;
    BUS_CD_C_TRI_REGpart_per_red_dest: TFloatField;
    BUS_CD_C_PARid_cidade: TWideStringField;
    BUS_CD_C_REG: TClientDataSet;
    BUS_CD_C_REGid_regiao: TIntegerField;
    BUS_CD_C_REGdescricao: TWideStringField;
    BUS_CD_C_REGid_rota: TIntegerField;
    BUS_CD_C_REGdesc_perc: TFloatField;
    BUS_CD_C_PARemp_endereco: TWideStringField;
    BUS_CD_C_PARemp_numero: TWideStringField;
    BUS_CD_C_PARemp_bairro: TWideStringField;
    BUS_CD_C_PARemp_cep: TWideStringField;
    BUS_CD_C_PARemp_telefone: TWideStringField;
    BUS_CD_C_PARemp_fax: TWideStringField;
    BUS_CD_M_REC: TClientDataSet;
    FAT_CD_M_PED: TClientDataSet;
    FAT_CD_M_PED_ITE: TClientDataSet;
    FAT_CD_M_PED_TIT: TClientDataSet;
    FAT_CD_M_PEDid_pedido: TIntegerField;
    FAT_CD_M_PEDid_empresa: TIntegerField;
    FAT_CD_M_PEDdta_pedido: TDateField;
    FAT_CD_M_PEDid_tipo_mov_estoque: TIntegerField;
    FAT_CD_M_PEDid_vendedor: TIntegerField;
    FAT_CD_M_PEDobs: TWideStringField;
    FAT_CD_M_PEDvlr_bruto: TFMTBCDField;
    FAT_CD_M_PEDvlr_desconto: TFMTBCDField;
    FAT_CD_M_PEDper_desconto: TFloatField;
    FAT_CD_M_PEDvlr_liquido: TFMTBCDField;
    FAT_CD_M_PEDhor_pedido: TSQLTimeStampField;
    FAT_CD_M_PEDid_condicao_pag: TIntegerField;
    FAT_CD_M_PEDpcp_obs: TWideStringField;
    FAT_CD_M_PEDpcp_id_opr: TIntegerField;
    FAT_CD_M_PEDsituacao: TIntegerField;
    FAT_CD_M_PEDsituacao_aprovacao: TIntegerField;
    FAT_CD_M_PEDid_atendente: TIntegerField;
    FAT_CD_M_PEDid_responsavel: TIntegerField;
    FAT_CD_M_PEDid_cliente: TIntegerField;
    FAT_CD_M_PEDtipo_restricao: TWideStringField;
    FAT_CD_M_PEDid_almoxarifado: TIntegerField;
    FAT_CD_M_PEDjustificativa: TWideStringField;
    FAT_CD_M_PEDid_usuario_lib: TIntegerField;
    FAT_CD_M_PEDcod_lme: TWideStringField;
    FAT_CD_M_PEDrev_lme: TWideStringField;
    FAT_CD_M_PEDorigem: TIntegerField;
    FAT_CD_M_PEDdispositivo: TWideStringField;
    FAT_CD_M_PEDgps_latitude: TFloatField;
    FAT_CD_M_PEDgps_longitude: TFloatField;
    FAT_CD_M_PEDcubagem: TFloatField;
    FAT_CD_M_PEDid_orcamento: TIntegerField;
    FAT_CD_M_PEDenvia_carga: TBooleanField;
    FAT_CD_M_PEDdta_prev_entrega: TDateField;
    FAT_CD_M_PEDint_nomecli: TWideStringField;
    FAT_CD_M_PEDint_nometme: TWideStringField;
    FAT_CD_M_PEDint_nomefun: TWideStringField;
    FAT_CD_M_PEDint_nomecpg: TWideStringField;
    FAT_CD_M_PEDint_nomeate: TWideStringField;
    FAT_CD_M_PEDint_nomeres: TWideStringField;
    FAT_CD_M_PEDint_nomecid: TWideStringField;
    FAT_CD_M_PEDint_nomeest: TWideStringField;
    FAT_CD_M_PEDint_cpfcnpj: TWideStringField;
    FAT_CD_M_PEDint_pessoacli: TIntegerField;
    FAT_CD_M_PEDint_id_perfil: TIntegerField;
    FAT_CD_M_PEDid_ors: TIntegerField;
    FAT_CD_M_PEDint_sitaprov: TWideStringField;
    FAT_CD_M_PEDint_sitped: TWideStringField;
    FAT_CD_M_PEDid_abertura: TIntegerField;
    FAT_CD_M_PEDint_ie_rg_cli: TWideStringField;
    FAT_CD_M_PEDint_selecao: TBooleanField;
    FAT_CD_M_PEDdias_cpg_prazo: TIntegerField;
    FAT_CD_M_PEDint_nomereg: TWideStringField;
    FAT_CD_M_PEDFAT_SQ_M_PED_TIT: TDataSetField;
    FAT_CD_M_PEDFAT_SQ_M_PED_ITE: TDataSetField;
    FAT_CD_M_PED_ITEid_pedido: TIntegerField;
    FAT_CD_M_PED_ITEid_sequencia: TIntegerField;
    FAT_CD_M_PED_ITEid_item: TIntegerField;
    FAT_CD_M_PED_ITEqtde: TFloatField;
    FAT_CD_M_PED_ITEvlr_unitario: TFMTBCDField;
    FAT_CD_M_PED_ITEvlr_bruto: TFMTBCDField;
    FAT_CD_M_PED_ITEper_desconto: TFloatField;
    FAT_CD_M_PED_ITEvlr_desconto: TFMTBCDField;
    FAT_CD_M_PED_ITEvlr_liquido: TFMTBCDField;
    FAT_CD_M_PED_ITEid_cor: TIntegerField;
    FAT_CD_M_PED_ITEid_tamanho: TIntegerField;
    FAT_CD_M_PED_ITEid_busca_item: TWideStringField;
    FAT_CD_M_PED_ITEint_nomeite: TWideStringField;
    FAT_CD_M_PED_ITEint_nomecor: TWideStringField;
    FAT_CD_M_PED_ITEint_id_und_venda: TWideStringField;
    FAT_CD_M_PED_ITEint_nometam: TWideStringField;
    FAT_CD_M_PED_ITEvlr_unitario_orig: TFMTBCDField;
    FAT_CD_M_PED_ITEint_tipo_item: TWideStringField;
    FAT_CD_M_PED_ITEint_seqitem: TIntegerField;
    FAT_CD_M_PED_ITEint_rua: TWideStringField;
    FAT_CD_M_PED_ITEint_prateleira: TWideStringField;
    FAT_CD_M_PED_ITEint_escaninho: TWideStringField;
    FAT_CD_M_PED_ITEper_desc_max: TFloatField;
    FAT_CD_M_PED_TITid_pedido: TIntegerField;
    FAT_CD_M_PED_TITid_titulo: TIntegerField;
    FAT_CD_M_PED_TITdias: TIntegerField;
    FAT_CD_M_PED_TITdta_vencimento: TDateField;
    FAT_CD_M_PED_TITvlr_titulo: TFMTBCDField;
    FAT_CD_M_PED_TITche_banco: TWideStringField;
    FAT_CD_M_PED_TITche_agencia: TWideStringField;
    FAT_CD_M_PED_TITche_conta: TIntegerField;
    FAT_CD_M_PED_TITche_numero: TIntegerField;
    FAT_CD_M_PED_TITche_emitente: TWideStringField;
    FAT_CD_M_PED_TITid_forma_pag: TIntegerField;
    FAT_CD_M_PED_TITbol_nosso_numero: TIntegerField;
    FAT_CD_M_PED_TITint_nomefpg: TWideStringField;
    FAT_CD_M_PED_TITid_maquineta: TIntegerField;
    FAT_CD_M_PED_TITint_docimpresso: TIntegerField;
    FAT_CD_M_PEX: TClientDataSet;
    FAT_CD_M_PEXid_pedido: TIntegerField;
    FAT_CD_M_PEXid_empresa: TIntegerField;
    FAT_CD_M_PEXdta_pedido: TDateField;
    FAT_CD_M_PEXid_tipo_mov_estoque: TIntegerField;
    FAT_CD_M_PEXid_vendedor: TIntegerField;
    FAT_CD_M_PEXobs: TWideStringField;
    FAT_CD_M_PEXvlr_bruto: TFMTBCDField;
    FAT_CD_M_PEXvlr_desconto: TFMTBCDField;
    FAT_CD_M_PEXper_desconto: TFloatField;
    FAT_CD_M_PEXvlr_liquido: TFMTBCDField;
    FAT_CD_M_PEXhor_pedido: TSQLTimeStampField;
    FAT_CD_M_PEXid_condicao_pag: TIntegerField;
    FAT_CD_M_PEXpcp_obs: TWideStringField;
    FAT_CD_M_PEXpcp_id_opr: TIntegerField;
    FAT_CD_M_PEXsituacao: TIntegerField;
    FAT_CD_M_PEXsituacao_aprovacao: TIntegerField;
    FAT_CD_M_PEXid_atendente: TIntegerField;
    FAT_CD_M_PEXid_responsavel: TIntegerField;
    FAT_CD_M_PEXid_cliente: TIntegerField;
    FAT_CD_M_PEXtipo_restricao: TWideStringField;
    FAT_CD_M_PEXid_almoxarifado: TIntegerField;
    FAT_CD_M_PEXjustificativa: TWideStringField;
    FAT_CD_M_PEXid_usuario_lib: TIntegerField;
    FAT_CD_M_PEXcod_lme: TWideStringField;
    FAT_CD_M_PEXrev_lme: TWideStringField;
    FAT_CD_M_PEXorigem: TIntegerField;
    FAT_CD_M_PEXdispositivo: TWideStringField;
    FAT_CD_M_PEXgps_latitude: TFloatField;
    FAT_CD_M_PEXgps_longitude: TFloatField;
    FAT_CD_M_PEXcubagem: TFloatField;
    FAT_CD_M_PEXid_orcamento: TIntegerField;
    FAT_CD_M_PEXenvia_carga: TBooleanField;
    FAT_CD_M_PEXdta_prev_entrega: TDateField;
    FAT_CD_M_PEXid_abertura: TIntegerField;
    FAT_CD_M_PEXdias_cpg_prazo: TIntegerField;
    FAT_CD_M_PEDoffline: TBooleanField;
    FAT_CD_M_PED_ITEqtde_conferida: TFloatField;
    FAT_CD_M_PEXoffline: TBooleanField;
    FAT_CD_M_PEDconferido: TBooleanField;
    BUS_CD_C_PAR_RST: TClientDataSet;
    BUS_CD_C_PARCAD_SQ_C_PAR_RST: TDataSetField;
    BUS_CD_C_PAR_RSTid_empresa: TIntegerField;
    BUS_CD_C_PAR_RSTletra_restricao: TWideStringField;
    BUS_CD_C_PAR_RSTtipo_restricao: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    function AcessarBancoRemoto:Boolean;
    { Public declarations }
  end;

var
  dmGeralSer: TdmGeralSer;
  xDataSis: TDate;
  xHoraSis: TTime;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SEG_UN_X_IMP, uProxy;

{$R *.dfm}



function TdmGeralSer.AcessarBancoRemoto:Boolean;
var
  SMPrincipal : TSMClient;
  cds: TClientDataSet;
  x,z: integer;
  i: integer;
  xx:string;
  Rede:TInifile;
  msg: String;
begin
  Conexao.Close;
  Conexao.CloseDataSets;
  Conexao.Params.Clear;

  Result := true;
  msg:='';
  if Conexao.Connected = true then
     begin
       msg := msg + 'A conexão esta aberta' + #13;
       Conexao.Connected := false;
       msg := msg + 'A Conexão será reiniciada' + #13;
     end;


  {if trim(msg) <> '' then
     begin
       ShowMessage(msg);
     end; }

  If not FileExists(ExtractFilePath(Application.ExeName)+'RedeCli.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCli.Ini');
       Rede.WriteString('DEFINICAO_DE_DATABASE','HOST','');
       Application.MessageBox('O Arquivo Rede.Ini Encontra-se desconfigurado, Configure-o e reinicie o sistema!',
        'Atenção', MB_ICONINFORMATION or MB_OK);
       Result := false;
       exit;

     end;
  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCli.Ini');
  Conexao.Close;
  Conexao.Params.Clear;
  Conexao.Params.Add('DriverUnit=Data.DBXDataSnap');
  Conexao.Params.Add('HostName='+Rede.ReadString('DEFINICAO_DE_DATABASE','HOST',''));
  Conexao.Params.Add('Port='+Rede.ReadString('DEFINICAO_DE_DATABASE','PORTA',''));

  Conexao.Params.Add('CommunicationProtocol=tcp/ip');
  Conexao.Params.Add('DatasnapContext=datasnap/');
  Conexao.Params.Add('DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland.Data.DbxClientDriver,Version=18.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
  Conexao.Params.Add('Filters={}');
  Try
    begin
      Conexao.Open;

      for z := 0 to ComponentCount-1 do
          begin
            if (components[z] is TClientDataSet) and
               ((components[z] as TClientDataSet).Active) then
               begin
                  msg := msg + 'CDS: ' + (components[z] as TClientDataSet).name + ' está ativo.' + #13;
                 (components[z] as TClientDataSet).active := false;
                  msg := msg + 'CDS: ' + (components[z] as TClientDataSet).name + ' fechado.';
               end;
          end;
    end;
  Except on E:Exception do
    Begin
      Result := false;
      Application.MessageBox(Pchar('Não Foi possível conectar-se ao banco de dados do servidor!'+#13+#13+#13+
        'Descrição do erro: '+
        #13+#13+E.Message),'Atenção', MB_ICONERROR or MB_OK);
      Application.Terminate;
      exit;
    End;
  End;

   //Busca data do Servidor
  SMPrincipal := TSMClient.Create(dmGeralSer.Conexao.DBXConnection);
  try
     try
       xDataSis :=SMPrincipal.enDataServer;
       xHoraSis :=SMPrincipal.enHoraServer;
     except
       on e: Exception do
          begin
            Showmessage('Erro ao tentar executar o método: enDataServer');
          end;
     end;
  finally
    FreeAndNil(SMPrincipal);
  end;



end;







procedure TdmGeralSer.DataModuleCreate(Sender: TObject);
begin
  Conexao.Close;
  Conexao.CloseDataSets;
  Conexao.Params.Clear;

end;

end.
