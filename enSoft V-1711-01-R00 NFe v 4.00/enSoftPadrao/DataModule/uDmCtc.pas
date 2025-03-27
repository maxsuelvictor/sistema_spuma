unit uDmCtc;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,System.Variants,
  Vcl.Dialogs, Vcl.recerror;

type
  TdmCtc = class(TDataModule)
    ctc_cd_m_cfe: TClientDataSet;
    ctc_cd_m_cfeid_cfe: TIntegerField;
    ctc_cd_m_cfedata: TDateField;
    ctc_cd_m_cfeid_funcionario: TIntegerField;
    ctc_cd_m_cfevlr_total: TFMTBCDField;
    ctc_cd_m_cfestatus: TIntegerField;
    ctc_cd_m_cfeint_nomeres: TWideStringField;
    ctc_cd_m_cfectc_sq_m_cfe_fer: TDataSetField;
    ctc_cd_m_cfeint_doccpf: TWideStringField;
    ctc_cd_m_cfe_fer: TClientDataSet;
    ctc_cd_m_cfe_ferid_meq: TIntegerField;
    ctc_cd_m_cfe_ferint_nomemeq: TWideStringField;
    ctc_cd_m_cfe_ferqtde: TFloatField;
    ctc_cd_m_cfe_fervlr_unitario: TFMTBCDField;
    ctc_cd_m_cfe_fervlr_total: TFMTBCDField;
    ctc_cd_m_cfe_ferdta_devolucao: TDateField;
    ctc_cd_m_cfe_ferid_cfe: TIntegerField;
    ctc_cd_m_fac: TClientDataSet;
    ctc_cd_m_facid_fac: TIntegerField;
    ctc_cd_m_facdta_abertura: TDateField;
    ctc_cd_m_facpro_acao: TIntegerField;
    ctc_cd_m_facpro_origem: TIntegerField;
    ctc_cd_m_facpro_id_responsavel: TIntegerField;
    ctc_cd_m_facpro_descricao: TWideStringField;
    ctc_cd_m_facpro_data: TDateField;
    ctc_cd_m_facaci_descricao: TWideStringField;
    ctc_cd_m_facaci_id_responsavel: TIntegerField;
    ctc_cd_m_facaci_data: TDateField;
    ctc_cd_m_facava_id_responsavel: TIntegerField;
    ctc_cd_m_facava_data: TDateField;
    ctc_cd_m_faccap_descricao: TWideStringField;
    ctc_cd_m_faccap_id_responsavel: TIntegerField;
    ctc_cd_m_faccap_data: TDateField;
    ctc_cd_m_facacp_descricao_01: TWideStringField;
    ctc_cd_m_facacp_descricao_02: TWideStringField;
    ctc_cd_m_facacp_descricao_03: TWideStringField;
    ctc_cd_m_facacp_descricao_04: TWideStringField;
    ctc_cd_m_facacp_id_resp_01: TIntegerField;
    ctc_cd_m_facacp_id_resp_02: TIntegerField;
    ctc_cd_m_facacp_id_resp_03: TIntegerField;
    ctc_cd_m_facacp_id_resp_04: TIntegerField;
    ctc_cd_m_facacp_data_01: TDateField;
    ctc_cd_m_facacp_data_02: TDateField;
    ctc_cd_m_facacp_data_03: TDateField;
    ctc_cd_m_facacp_data_04: TDateField;
    ctc_cd_m_facmae_descricao: TWideStringField;
    ctc_cd_m_facaco_perg_01: TBooleanField;
    ctc_cd_m_facaco_perg_02: TBooleanField;
    ctc_cd_m_facaco_perg_03: TBooleanField;
    ctc_cd_m_facaco_perg_04: TBooleanField;
    ctc_cd_m_facaco_perg_01_prazo: TIntegerField;
    ctc_cd_m_facaco_perg_02_prazo: TIntegerField;
    ctc_cd_m_facaco_perg_03_fac: TIntegerField;
    ctc_cd_m_facaco_perg_04_fac: TIntegerField;
    ctc_cd_m_facaca_descricao: TWideStringField;
    ctc_cd_m_facava_avaliacao: TIntegerField;
    bus_cd_c_epi: TClientDataSet;
    IntegerField18: TIntegerField;
    WideStringField75: TWideStringField;
    WideStringField76: TWideStringField;
    WideStringField77: TWideStringField;
    bus_cd_c_tpr: TClientDataSet;
    WideStringField98: TWideStringField;
    IntegerField28: TIntegerField;
    bus_cd_c_tprctc_sq_c_tpr_ite: TDataSetField;
    bus_cd_c_ser: TClientDataSet;
    IntegerField29: TIntegerField;
    WideStringField99: TWideStringField;
    WideStringField100: TWideStringField;
    DataSetField4: TDataSetField;
    bus_cd_c_tpr_ite: TClientDataSet;
    IntegerField30: TIntegerField;
    WideStringField101: TWideStringField;
    WideStringField102: TWideStringField;
    IntegerField31: TIntegerField;
    WideStringField103: TWideStringField;
    FMTBCDField2: TFMTBCDField;
    DateField11: TDateField;
    IntegerField32: TIntegerField;
    bus_cd_m_ctc_tpr: TClientDataSet;
    bus_cd_c_obr: TClientDataSet;
    IntegerField8: TIntegerField;
    WideStringField64: TWideStringField;
    IntegerField12: TIntegerField;
    BooleanField19: TBooleanField;
    WideStringField65: TWideStringField;
    WideStringField66: TWideStringField;
    WideStringField67: TWideStringField;
    WideStringField68: TWideStringField;
    WideStringField69: TWideStringField;
    WideStringField70: TWideStringField;
    DateField10: TDateField;
    WideStringField71: TWideStringField;
    WideStringField72: TWideStringField;
    WideStringField73: TWideStringField;
    WideStringField74: TWideStringField;
    bus_cd_c_obrid_tpr: TIntegerField;
    ctc_cd_c_obr: TClientDataSet;
    ctc_cd_c_obrid_obra: TIntegerField;
    ctc_cd_c_obrid_cliente: TIntegerField;
    ctc_cd_c_obrdescricao: TWideStringField;
    ctc_cd_c_obrativo: TBooleanField;
    ctc_cd_c_obrendereco: TWideStringField;
    ctc_cd_c_obrid_cidade: TWideStringField;
    ctc_cd_c_obrcep: TWideStringField;
    ctc_cd_c_obrtel_fixo: TWideStringField;
    ctc_cd_c_obrfax: TWideStringField;
    ctc_cd_c_obrobs: TWideStringField;
    ctc_cd_c_obrdta_entrega: TDateField;
    ctc_cd_c_obrcod_lme: TWideStringField;
    ctc_cd_c_obrrev_lme: TWideStringField;
    ctc_cd_c_obrint_nomecli: TWideStringField;
    ctc_cd_c_obrint_nomecid: TWideStringField;
    ctc_cd_c_tpr: TClientDataSet;
    ctc_cd_m_orc: TClientDataSet;
    ctc_cd_m_orcid_orc: TIntegerField;
    ctc_cd_m_orcdta_orc: TDateField;
    ctc_cd_m_orcid_obra: TIntegerField;
    ctc_cd_m_orcint_nomeobr: TWideStringField;
    ctc_cd_m_orcobs: TWideStringField;
    ctc_cd_m_orcvlr_total: TFMTBCDField;
    ctc_cd_m_orcid_estrutura: TIntegerField;
    ctc_cd_m_orcctc_sq_m_orc_ite: TDataSetField;
    ctc_cd_m_orc_ite: TClientDataSet;
    ctc_cd_m_orc_itegrupo: TWideStringField;
    ctc_cd_m_orc_itecod_prpoprio: TWideStringField;
    ctc_cd_m_orc_itedescricao: TWideStringField;
    ctc_cd_m_orc_iteund: TWideStringField;
    ctc_cd_m_orc_iteclasse: TWideStringField;
    ctc_cd_m_orc_iteid_orc: TIntegerField;
    ctc_cd_m_orc_iteqtde: TFloatField;
    ctc_cd_m_orc_itevlr_unitario: TFMTBCDField;
    ctc_cd_m_orc_itevlr_total: TFMTBCDField;
    ctc_cd_m_orc_iteqtde_saldo_medicao: TFloatField;
    ctc_cd_m_orc_itevlr_mo: TFMTBCDField;
    ctc_cd_m_orc_itevlr_mat: TFMTBCDField;
    ctc_cd_m_orc_iteper_ls: TFloatField;
    ctc_cd_m_orc_itevlr_ls: TFMTBCDField;
    ctc_cd_m_orc_iteper_bdi: TFloatField;
    ctc_cd_m_orc_itevlr_bdi: TFMTBCDField;
    ctc_cd_m_orc_iteper_adm: TFloatField;
    ctc_cd_m_orc_itevlr_adm: TFMTBCDField;
    ctc_cd_m_orc_itetotal_taxa: TFMTBCDField;
    ctc_cd_m_orc_itectc_sq_m_orc_ite_com: TDataSetField;
    ctc_cd_m_orc_itectc_sq_m_orc_ite_med: TDataSetField;
    ctc_cd_c_epi: TClientDataSet;
    ctc_cd_c_epiid_epi: TIntegerField;
    ctc_cd_c_epidescricao: TWideStringField;
    ctc_cd_c_epiid_unidade: TWideStringField;
    ctc_cd_c_epiint_nomeund: TWideStringField;
    ctc_cd_m_cep: TClientDataSet;
    ctc_cd_m_cepid_cep: TIntegerField;
    ctc_cd_m_cepdata: TDateField;
    ctc_cd_m_cepid_responsavel: TIntegerField;
    ctc_cd_m_cepresp_tecnico: TWideStringField;
    ctc_cd_m_cepstatus: TIntegerField;
    ctc_cd_m_cepint_nomeres: TWideStringField;
    ctc_cd_m_cepctc_sq_m_cep_epi: TDataSetField;
    ctc_cd_m_cep_epi: TClientDataSet;
    ctc_cd_m_cep_epiid_cep: TIntegerField;
    ctc_cd_m_cep_episequencia: TIntegerField;
    ctc_cd_m_cep_epiid_epi: TIntegerField;
    ctc_cd_m_cep_epimarca: TWideStringField;
    ctc_cd_m_cep_epimodelo: TWideStringField;
    ctc_cd_m_cep_epica: TWideStringField;
    ctc_cd_m_cep_epidta_devolucao: TDateField;
    ctc_cd_m_cep_epiint_nomeepi: TWideStringField;
    ctc_cd_c_tpr_ite: TClientDataSet;
    ctc_cd_m_orc_ite_med: TClientDataSet;
    ctc_cd_m_orc_ite_medid_med: TIntegerField;
    ctc_cd_m_orc_ite_medid_responsavel: TIntegerField;
    ctc_cd_m_orc_ite_medqtde: TFloatField;
    ctc_cd_m_orc_ite_meddta_medicao: TDateField;
    ctc_cd_m_orc_ite_medid_item: TWideStringField;
    ctc_cd_m_orc_ite_medgrupo: TWideStringField;
    ctc_cd_m_orc_ite_medid_orc: TIntegerField;
    ctc_cd_c_tpr_ite_com: TClientDataSet;
    ctc_cd_m_orc_ite_com: TClientDataSet;
    ctc_cd_m_orc_ite_comid_item: TWideStringField;
    ctc_cd_m_orc_ite_comint_nomeitetpr: TWideStringField;
    ctc_cd_m_orc_ite_comcoeficiente: TFloatField;
    ctc_cd_m_orc_ite_comvlr_unitario: TFMTBCDField;
    ctc_cd_m_orc_ite_comvlr_total: TFMTBCDField;
    ctc_cd_m_orc_ite_comint_classeitetpr: TIntegerField;
    ctc_cd_m_orc_ite_comid_orc: TIntegerField;
    ctc_cd_m_orc_ite_comgrupo: TWideStringField;
    ctc_cd_m_orc_ite_comid_com: TIntegerField;
    ctc_cd_m_loc: TClientDataSet;
    ctc_cd_m_locid_loc: TIntegerField;
    ctc_cd_m_locdta_locacao: TDateField;
    ctc_cd_m_locid_obra: TIntegerField;
    ctc_cd_m_locnum_contrato: TIntegerField;
    ctc_cd_m_locnum_documento: TIntegerField;
    ctc_cd_m_locstatus: TIntegerField;
    ctc_cd_m_locvlr_frete: TFMTBCDField;
    ctc_cd_m_locvlr_desconto: TFMTBCDField;
    ctc_cd_m_locvlr_total: TFMTBCDField;
    ctc_cd_m_locint_nomeobr: TWideStringField;
    ctc_cd_m_locctc_sq_m_loc_meq: TDataSetField;
    ctc_cd_m_locid_fornecedor: TIntegerField;
    ctc_cd_m_locint_nomefor: TWideStringField;
    ctc_cd_m_locint_nomefan: TWideStringField;
    ctc_cd_m_locint_numtel: TWideStringField;
    ctc_cd_m_loc_meq: TClientDataSet;
    ctc_cd_m_loc_meqid_loc: TIntegerField;
    ctc_cd_m_loc_meqvlr_unitario: TFMTBCDField;
    ctc_cd_m_loc_meqqtde: TFloatField;
    ctc_cd_m_loc_meqtotal: TFMTBCDField;
    ctc_cd_m_loc_meqdta_inicial: TDateField;
    ctc_cd_m_loc_meqdta_final: TDateField;
    ctc_cd_m_loc_meqentrega: TDateField;
    ctc_cd_m_loc_meqdevolucao: TDateField;
    ctc_cd_m_loc_meqid_veiculo: TIntegerField;
    ctc_cd_m_loc_meqint_nomevei: TWideStringField;
    ctc_cd_m_ofi: TClientDataSet;
    ctc_cd_m_ofiid_ofi: TIntegerField;
    ctc_cd_m_ofidata: TDateField;
    ctc_cd_m_ofiid_veiculo: TIntegerField;
    ctc_cd_m_ofiid_fornecedor: TIntegerField;
    ctc_cd_m_ofiproblema: TWideStringField;
    ctc_cd_m_ofiobservacao: TWideStringField;
    ctc_cd_m_ofiid_solicitante: TIntegerField;
    ctc_cd_m_ofikm_veiculo: TIntegerField;
    ctc_cd_m_ofistatus: TIntegerField;
    ctc_cd_m_ofivlr_total: TFMTBCDField;
    ctc_cd_m_ofiint_nomefor: TWideStringField;
    ctc_cd_m_ofiint_nomesol: TWideStringField;
    ctc_cd_m_ofiint_nomevei: TWideStringField;
    ctc_cd_m_ofictc_sq_m_ofi_ite: TDataSetField;
    ctc_cd_m_ofi_ite: TClientDataSet;
    ctc_cd_m_ofi_iteid_ofi: TIntegerField;
    ctc_cd_m_ofi_itesequencia: TIntegerField;
    ctc_cd_m_ofi_itedescricao: TWideStringField;
    ctc_cd_m_ofi_iteqtde: TFloatField;
    ctc_cd_m_ofi_itevlr_unitario: TFMTBCDField;
    ctc_cd_m_ofi_itevlr_total: TFMTBCDField;
    ctc_cd_c_ser: TClientDataSet;
    ctc_cd_c_serid: TIntegerField;
    ctc_cd_c_serdescricao: TWideStringField;
    ctc_cd_c_serid_unidade: TWideStringField;
    ctc_cd_c_serctc_sq_c_ser_com: TDataSetField;
    ctc_cd_c_ser_com: TClientDataSet;
    ctc_cd_c_ser_comid_ser: TIntegerField;
    ctc_cd_c_ser_comid_item: TIntegerField;
    ctc_cd_c_ser_comid_tpr: TIntegerField;
    ctc_cd_c_ser_comqtde: TFloatField;
    ctc_cd_c_ser_comvlr_unitario: TFMTBCDField;
    ctc_cd_c_ser_comint_nomeite: TWideStringField;
    ctc_cd_c_ser_comint_nometpr: TWideStringField;
    ctc_cd_c_eoc: TClientDataSet;
    ctc_cd_c_eocid_estrutura: TIntegerField;
    ctc_cd_c_eocdescricao: TWideStringField;
    ctc_cd_c_eocctc_sq_c_eoc_gru: TDataSetField;
    ctc_cd_c_eoc_gru: TClientDataSet;
    ctc_cd_c_eoc_gruid_estrutura: TIntegerField;
    ctc_cd_c_eoc_grugrupo: TWideStringField;
    ctc_cd_c_eoc_grudescricao: TWideStringField;
    ctc_cd_c_eoc_gruund: TWideStringField;
    ctc_cd_c_eoc_gruclasse: TWideStringField;
    ctc_cd_c_eoc_grucod_prpoprio: TWideStringField;
    bus_cd_c_eoc: TClientDataSet;
    bus_cd_c_eocdescricao: TWideStringField;
    bus_cd_c_eocid_estrutura: TIntegerField;
    bus_cd_c_eocctc_sq_c_eoc_gru: TDataSetField;
    bus_cd_c_eoc_gru: TClientDataSet;
    bus_cd_c_eoc_gruid_estrutura: TIntegerField;
    bus_cd_c_eoc_grugrupo: TWideStringField;
    bus_cd_c_eoc_grudescricao: TWideStringField;
    bus_cd_c_eoc_gruund: TWideStringField;
    bus_cd_c_eoc_gruclasse: TWideStringField;
    bus_cd_c_eoc_grucod_prpoprio: TWideStringField;
    ctc_cd_m_slm: TClientDataSet;
    ctc_cd_m_slmid_controle: TIntegerField;
    ctc_cd_m_slmdata: TDateField;
    ctc_cd_m_slmid_responsavel: TIntegerField;
    ctc_cd_m_slmid_obra: TIntegerField;
    ctc_cd_m_slmobservacao: TWideStringField;
    ctc_cd_m_slmint_nomeresp: TWideStringField;
    ctc_cd_m_slmCTC_SQ_M_SLM_ITE: TDataSetField;
    ctc_cd_m_slm_ite: TClientDataSet;
    ctc_cd_m_slm_iteid_controle: TIntegerField;
    ctc_cd_m_slm_iteid_item: TIntegerField;
    ctc_cd_m_slm_iteqtde: TFloatField;
    ctc_cd_m_slm_iteobservacao: TWideStringField;
    ctc_cd_m_slm_iteint_nomeite: TWideStringField;
    ctc_cd_m_slmid_empresa: TIntegerField;
    ctc_cd_c_obrint_nomeuf: TWideStringField;
    bus_cd_c_obrint_nomeuf: TWideStringField;
    ctc_cd_c_tprid_tpr: TIntegerField;
    ctc_cd_c_tprdescricao: TWideStringField;
    ctc_cd_c_tprctc_sq_c_tpr_ite: TDataSetField;
    ctc_cd_c_tpr_iteid_tpr: TIntegerField;
    ctc_cd_c_tpr_iteid_item: TWideStringField;
    ctc_cd_c_tpr_itedescricao: TWideStringField;
    ctc_cd_c_tpr_iteclasse: TIntegerField;
    ctc_cd_c_tpr_iteunidade: TWideStringField;
    ctc_cd_c_tpr_itepreco_unitario: TFMTBCDField;
    ctc_cd_c_tpr_itedata_base: TDateField;
    ctc_cd_c_tpr_iteid_item_interno: TIntegerField;
    ctc_cd_c_tpr_iteint_nomeite: TWideStringField;
    ctc_cd_c_tpr_itectc_sq_c_tpr_ite_com: TDataSetField;
    ctc_cd_c_tpr_ite_comid_tpr: TIntegerField;
    ctc_cd_c_tpr_ite_comid_item: TWideStringField;
    ctc_cd_c_tpr_ite_comid_item_comp: TWideStringField;
    ctc_cd_c_tpr_ite_comqtde: TFloatField;
    bus_cd_c_tpr_iteint_nomeite: TWideStringField;
    bus_cd_c_tpr_itectc_sq_c_tpr_ite_com: TDataSetField;
    bus_cd_m_ctc_tprid_tpr: TIntegerField;
    bus_cd_m_ctc_tprid_item: TWideStringField;
    bus_cd_m_ctc_tprid_item_comp: TWideStringField;
    bus_cd_m_ctc_tprqtde: TFloatField;
    ctc_cd_m_bde: TClientDataSet;
    ctc_cd_m_bdeid_bde: TIntegerField;
    ctc_cd_m_bdeid_cliente: TIntegerField;
    ctc_cd_m_bdeid_obra: TIntegerField;
    ctc_cd_m_bdeid_meq: TIntegerField;
    ctc_cd_m_bdedta_bde: TDateField;
    ctc_cd_m_bdeid_operador: TIntegerField;
    ctc_cd_m_bdevlr_desconto: TFMTBCDField;
    ctc_cd_m_bdevlr_acrescimo: TFMTBCDField;
    ctc_cd_m_bdevlr_servicos: TFMTBCDField;
    ctc_cd_m_bdevlr_comissao: TFMTBCDField;
    ctc_cd_m_bdehori_inicial: TFloatField;
    ctc_cd_m_bdehori_final: TFloatField;
    ctc_cd_m_bdeint_nomecli: TWideStringField;
    ctc_cd_m_bdeint_nomemeq: TWideStringField;
    ctc_cd_m_bdeint_nomeobr: TWideStringField;
    ctc_cd_m_bdeint_nomeope: TWideStringField;
    ctc_cd_m_bdevlr_combustivel: TFMTBCDField;
    ctc_cd_m_bdehori_total: TFloatField;
    ctc_cd_m_bdevlr_bruto: TFMTBCDField;
    ctc_cd_m_bdenro_bde: TIntegerField;
    ctc_cd_m_bdeint_vlrhora: TFMTBCDField;
    ctc_cd_m_bdeint_vlrcomissao: TFMTBCDField;
    ctc_cd_m_bdectc_sq_m_bde_oco: TDataSetField;
    ctc_cd_m_bde_oco: TClientDataSet;
    ctc_cd_m_bde_ocoid_bde: TIntegerField;
    ctc_cd_m_bde_ocoid_ocorrencia: TIntegerField;
    ctc_cd_m_bde_ocoqtde: TFloatField;
    ctc_cd_m_bde_ocoint_nomeoco: TWideStringField;
    bus_cd_m_bde: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateField1: TDateField;
    IntegerField5: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    FMTBCDField6: TFMTBCDField;
    FloatField3: TFloatField;
    FMTBCDField7: TFMTBCDField;
    IntegerField6: TIntegerField;
    FMTBCDField8: TFMTBCDField;
    FMTBCDField9: TFMTBCDField;
    DataSetField1: TDataSetField;
    ctc_cd_c_oco: TClientDataSet;
    ctc_cd_c_ocoid_ocorrencia: TIntegerField;
    ctc_cd_c_ocodescricao: TWideStringField;
    bus_cd_c_oco: TClientDataSet;
    bus_cd_c_ocodescricao: TWideStringField;
    bus_cd_c_ocoid_ocorrencia: TIntegerField;
    ctc_cd_m_avf_nfe: TClientDataSet;
    ctc_cd_m_avf_nfedta_documento: TDateField;
    ctc_cd_m_avf_nfenumero: TIntegerField;
    ctc_cd_m_avf: TClientDataSet;
    ctc_cd_m_avfid_avf: TIntegerField;
    ctc_cd_m_avfdta_avf: TDateField;
    ctc_cd_m_avfid_responsavel: TIntegerField;
    ctc_cd_m_avfid_fornecedor: TIntegerField;
    ctc_cd_m_avfnom_fornecedor: TWideStringField;
    ctc_cd_m_avfdoc_cnpj: TWideStringField;
    ctc_cd_m_avfperg_01: TBooleanField;
    ctc_cd_m_avfperg_02: TBooleanField;
    ctc_cd_m_avfperg_03: TBooleanField;
    ctc_cd_m_avfperg_04: TBooleanField;
    ctc_cd_m_avfcriterio_01: TFloatField;
    ctc_cd_m_avfcriterio_02: TFloatField;
    ctc_cd_m_avfcriterio_03: TFloatField;
    ctc_cd_m_avfcriterio_04: TFloatField;
    ctc_cd_m_avfcriterio_05: TFloatField;
    ctc_cd_m_avfcriterio_06: TFloatField;
    ctc_cd_m_avfcriterio_07: TFloatField;
    ctc_cd_m_avfpeso_01: TFloatField;
    ctc_cd_m_avfpeso_02: TFloatField;
    ctc_cd_m_avfpeso_03: TFloatField;
    ctc_cd_m_avfpeso_04: TFloatField;
    ctc_cd_m_avfpeso_05: TFloatField;
    ctc_cd_m_avfpeso_06: TFloatField;
    ctc_cd_m_avfpeso_07: TFloatField;
    ctc_cd_m_avfobs: TWideStringField;
    ctc_cd_m_avfmedia: TFloatField;
    ctc_cd_m_avffor_aprovado: TBooleanField;
    ctc_cd_m_avfcod_lme: TWideStringField;
    ctc_cd_m_avfrev_lme: TWideStringField;
    ctc_cd_m_avfint_nomeres: TWideStringField;
    ctc_cd_m_bdeqtde_combustivel: TFloatField;
    ctc_cd_c_obr_eqp: TClientDataSet;
    ctc_cd_c_obr_crg: TClientDataSet;
    ctc_cd_c_obrctc_sq_c_obr_crg: TDataSetField;
    ctc_cd_c_obrctc_sq_c_obr_eqp: TDataSetField;
    ctc_cd_c_obr_eqpid_obra: TIntegerField;
    ctc_cd_c_obr_eqpid_obra_seq: TIntegerField;
    ctc_cd_c_obr_eqpid_meq: TIntegerField;
    ctc_cd_c_obr_eqpvalor: TFMTBCDField;
    ctc_cd_c_obr_eqpint_nome_eqp: TWideStringField;
    ctc_cd_c_obr_crgid_obra: TIntegerField;
    ctc_cd_c_obr_crgid_cargo: TIntegerField;
    ctc_cd_c_obr_crgqtde_func: TIntegerField;
    ctc_cd_c_obr_crgvalor: TFMTBCDField;
    ctc_cd_c_obr_crgint_nome_crg: TWideStringField;
    ctc_cd_m_cep_epidta_entrega: TDateField;
    ctc_cd_m_cep_epiqtde: TIntegerField;
    ctc_cd_c_obr_ite: TClientDataSet;
    ctc_cd_c_obrctc_sq_c_obr_ite: TDataSetField;
    ctc_cd_c_obr_eqpdta_ini_contrato: TDateField;
    ctc_cd_c_obr_eqpdta_fim_contrato: TDateField;
    ctc_cd_c_obr_eqpobs: TWideStringField;
    ctc_cd_c_obr_crgdta_ini_contrato: TDateField;
    ctc_cd_c_obr_crgdta_fim_contrato: TDateField;
    ctc_cd_c_obr_crgobs: TWideStringField;
    ctc_cd_c_obr_crgid_obra_crg: TIntegerField;
    ctc_cd_c_obr_iteid_obra: TIntegerField;
    ctc_cd_c_obr_iteid_obra_ite: TIntegerField;
    ctc_cd_c_obr_iteid_item: TIntegerField;
    ctc_cd_c_obr_itedta_ini_contrato: TDateField;
    ctc_cd_c_obr_itedta_fim_contrato: TDateField;
    ctc_cd_c_obr_iteobs: TWideStringField;
    ctc_cd_c_obr_itevalor: TFMTBCDField;
    ctc_cd_c_obr_iteint_nomeite: TWideStringField;
    ctc_cd_c_obr_iteint_undvenda: TWideStringField;
    ctc_cd_m_bde_vrf: TClientDataSet;
    ctc_cd_m_bdectc_sq_m_bde_vrf: TDataSetField;
    ctc_cd_m_bde_vrfid_bde: TIntegerField;
    ctc_cd_m_bde_vrfid_verificacao: TIntegerField;
    ctc_cd_m_bde_vrfpad_buz_funciona: TWideStringField;
    ctc_cd_m_bde_vrfpad_extintor_incendio: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_cinto_seguranca: TWideStringField;
    ctc_cd_m_bde_vrfpad_veic_possui_mac: TWideStringField;
    ctc_cd_m_bde_vrfpad_veic_possui_chv_roda: TWideStringField;
    ctc_cd_m_bde_vrfpad_veic_possui_mao_forca: TWideStringField;
    ctc_cd_m_bde_vrfpad_veic_possui_triangulo: TWideStringField;
    ctc_cd_m_bde_vrfpad_veic_possui_martelo_mad: TWideStringField;
    ctc_cd_m_bde_vrfpad_sis_freio_funciona: TWideStringField;
    ctc_cd_m_bde_vrfpad_ind_pres_oleo_funciona: TWideStringField;
    ctc_cd_m_bde_vrfpad_drenagem_tanq_filtro: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_pres_calib_pneus: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_folga_rol_rosca_fim: TWideStringField;
    ctc_cd_m_bde_vrfpad_feita_dren_baloes_ar: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_estado_correias: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_estado_maq_geral: TWideStringField;
    ctc_cd_m_bde_vrfpad_feita_lubrif_ger_equip: TWideStringField;
    ctc_cd_m_bde_vrfpad_equip_ise_vaz_hidraulico: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_nivel_agua_radiador: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_nivel_oleo_mot_hid_freio: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_conserv_polos_baterias: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_filtro_ar_cabine: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_instalacao_instrum_eletr: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_estado_vidragem_ger: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_doc_equip: TWideStringField;
    ctc_cd_m_bde_vrfpad_verif_estado_mat_rodante: TWideStringField;
    ctc_cd_m_bde_vrfpad_ha_vazamento_oleo_combust: TWideStringField;
    ctc_cd_m_bde_vrfpad_maq_kit_mitigacao: TWideStringField;
    ctc_cd_m_bde_vrfpad_maq_ruid_excess: TWideStringField;
    ctc_cd_m_bde_vrfpneu_isento_picotamento: TWideStringField;
    ctc_cd_m_bde_vrfpneu_livre_corte_lateral: TWideStringField;
    ctc_cd_m_bde_vrfpneu_banda_rol_isenta_solt: TWideStringField;
    ctc_cd_m_bde_vrfimple_p_lubrif_cruz_eixo_conjunto: TWideStringField;
    ctc_cd_m_bde_vrfimple_p_bord_tom_isenta_vazam: TWideStringField;
    ctc_cd_m_bde_vrfimple_p_verif_niv_oleo_cxa_mult: TWideStringField;
    ctc_cd_m_bde_vrfimple_p_verif_corr_gax_bomba: TWideStringField;
    ctc_cd_m_bde_vrfimple_p_algum_vaz_tanq_trans_ag: TWideStringField;
    ctc_cd_m_bde_vrfimple_b_verif_niv_oleo_hid_basc: TWideStringField;
    ctc_cd_m_bde_vrfimple_b_sis_hid_isento_vaz: TWideStringField;
    ctc_cd_m_bde_vrfimple_b_lub_pin_cilin_cruz_tom: TWideStringField;
    ctc_cd_m_bde_vrfimple_m_verif_niv_oleo_mot_comp: TWideStringField;
    ctc_cd_m_bde_vrfimple_m_drenag_reserv_ar_comp: TWideStringField;
    ctc_cd_m_bde_vrfimple_m_prop_j_v_c_tub_isento_vaz: TWideStringField;
    ctc_cd_m_bde_vrfimple_m_lub_ger_grax: TWideStringField;
    ctc_cd_m_bde_vrfimple_m_verif_corr_acopl_sis: TWideStringField;
    ctc_cd_m_slmint_desc_obr: TWideStringField;
    ctc_cd_m_bdeobs: TWideStringField;
    procedure ctc_cd_m_cfeBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_cfeNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_cfeReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ctc_cd_m_cfe_ferBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_cfe_ferNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_avfAfterOpen(DataSet: TDataSet);
    procedure ctc_cd_m_avfBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_avfNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_facAfterOpen(DataSet: TDataSet);
    procedure ctc_cd_m_facBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_facNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_obrAfterOpen(DataSet: TDataSet);
    procedure ctc_cd_c_obrBeforePost(DataSet: TDataSet);
    procedure ctc_cd_c_obrNewRecord(DataSet: TDataSet);
    procedure BusObra(index:integer; filtro:String);
    procedure BusOco(index:integer; filtro:String);
    procedure BusEpi(index: integer; filtro: String);
    procedure ctc_cd_c_tprBeforeOpen(DataSet: TDataSet);
    procedure ctc_cd_c_tprBeforePost(DataSet: TDataSet);
    procedure ctc_cd_c_tprNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_tpr_iteNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_tpr_ite_comNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_orcBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_orcNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_orc_iteBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_orc_iteNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_orc_ite_comNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_orc_ite_medBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_orc_ite_medNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_epiBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_cepBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_cepNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_cep_epiBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_cep_epiNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_locBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_locNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_loc_meqBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_loc_meqNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_ofiBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_ofiNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_ofi_iteBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_ofi_iteNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_bdeBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_bdeNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_eocBeforePost(DataSet: TDataSet);
    procedure ctc_cd_c_eocNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_eoc_gruBeforePost(DataSet: TDataSet);
    procedure ctc_cd_c_eoc_gruNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_cepReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ctc_cd_m_cep_epiReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ctc_cd_m_loc_meqBeforeOpen(DataSet: TDataSet);
    procedure ctc_cd_m_locBeforeOpen(DataSet: TDataSet);
    procedure ctc_cd_m_slmReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ctc_cd_m_slmBeforePost(DataSet: TDataSet);
    procedure ctc_cd_m_slmNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_slm_iteNewRecord(DataSet: TDataSet);
    procedure ctc_cd_m_slm_iteBeforePost(DataSet: TDataSet);
    procedure ctc_cd_c_tprReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ctc_cd_c_tpr_iteReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ctc_cd_c_tpr_ite_comReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ctc_cd_m_bdeBeforeOpen(DataSet: TDataSet);
    procedure ctc_cd_m_bdeReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ctc_cd_c_ocoNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_ocoBeforePost(DataSet: TDataSet);
    procedure ctc_cd_c_obr_eqpBeforePost(DataSet: TDataSet);
    procedure ctc_cd_c_obr_crgBeforePost(DataSet: TDataSet);
    procedure ctc_cd_c_obr_eqpBeforeOpen(DataSet: TDataSet);
    procedure ctc_cd_c_obr_crgBeforeOpen(DataSet: TDataSet);
    procedure ctc_cd_c_obr_eqpNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_obr_crgNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_obr_iteNewRecord(DataSet: TDataSet);
    procedure ctc_cd_c_obr_iteBeforeOpen(DataSet: TDataSet);
    procedure ctc_cd_c_obr_iteBeforePost(DataSet: TDataSet);

  private
    procedure VerificarErrosAcoes(DataSet: TCustomClientDataSet;E:EReconcileError;
                       UpdateKind: TUpdateKind;var Action:TReconcileAction);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCtc: TdmCtc;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmGeral,
     CTC_RN_M_CFE, CTC_RN_M_AVF, CTC_RN_M_FAC, CTC_RN_C_OBR,
     CTC_RN_C_TPR, CTC_RN_M_CEP, CAD_RN_C_ITE, CTC_RN_C_EOC,
     CTC_RN_M_MED, CTC_RN_M_ORC, CTC_RN_C_OFI, CTC_RN_M_BDE,
     CTC_RN_M_LOC, uValidacoes, CTC_RN_M_SLM, uProxy, CTC_RN_C_OCO;


{$R *.dfm}

procedure TdmCtc.ctc_cd_c_eocBeforePost(DataSet: TDataSet);
begin
  CtcValidaEoc;
end;

procedure TdmCtc.ctc_cd_c_eocNewRecord(DataSet: TDataSet);
begin
  CtcNovoEoc;
end;

procedure TdmCtc.ctc_cd_c_eoc_gruBeforePost(DataSet: TDataSet);
begin
  CtcValidaEocGru;
end;

procedure TdmCtc.ctc_cd_c_eoc_gruNewRecord(DataSet: TDataSet);
begin
  CtcNovoEocGru;
end;

procedure TdmCtc.ctc_cd_c_epiBeforePost(DataSet: TDataSet);
begin
  ValidaCTC_CD_C_EPI(DataSet);
end;

procedure TdmCtc.ctc_cd_c_obrAfterOpen(DataSet: TDataSet);
begin
  CtcMascaraObr(DataSet);
end;

procedure TdmCtc.ctc_cd_c_obrBeforePost(DataSet: TDataSet);
begin
  CtcValidaObr(DataSet);
end;

procedure TdmCtc.ctc_cd_c_obrNewRecord(DataSet: TDataSet);
begin
  CtcNovoObr(DataSet);
end;

procedure TdmCtc.ctc_cd_c_obr_crgBeforeOpen(DataSet: TDataSet);
begin
  CTC_RN_C_OBR.CtcMascaraObrCrg;
end;

procedure TdmCtc.ctc_cd_c_obr_crgBeforePost(DataSet: TDataSet);
begin
  ctc_rn_c_obr.CtcValidaObrCrg;
end;

procedure TdmCtc.ctc_cd_c_obr_crgNewRecord(DataSet: TDataSet);
begin
    CTC_RN_C_OBR.CtcNovoObrCrg;
end;

procedure TdmCtc.ctc_cd_c_obr_eqpBeforeOpen(DataSet: TDataSet);
begin
  CTC_RN_C_OBR.CtcMascaraObrEqp;
end;

procedure TdmCtc.ctc_cd_c_obr_eqpBeforePost(DataSet: TDataSet);
begin
  ctc_rn_c_obr.CtcValidaObrEqp;
end;

procedure TdmCtc.ctc_cd_c_obr_eqpNewRecord(DataSet: TDataSet);
begin
  CTC_RN_C_OBR.CtcNovoObrEqp;
end;

procedure TdmCtc.ctc_cd_c_obr_iteBeforeOpen(DataSet: TDataSet);
begin
  CTC_RN_C_OBR.CtcMascaraObrIte;
end;

procedure TdmCtc.ctc_cd_c_obr_iteBeforePost(DataSet: TDataSet);
begin
 CTC_RN_C_OBR.CtcValidaObrIte;
end;

procedure TdmCtc.ctc_cd_c_obr_iteNewRecord(DataSet: TDataSet);
begin
    CTC_RN_C_OBR.CtcNovoObrIte;
end;

procedure TdmCtc.ctc_cd_c_ocoBeforePost(DataSet: TDataSet);
begin
  ValidaCTC_CD_C_OCO(DataSet);
end;

procedure TdmCtc.ctc_cd_c_ocoNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    ctc_cd_c_oco.FieldByName('id_ocorrencia').AsInteger :=
         SMPrincipal.enValorChave('ctc_tb_c_oco');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'CTC_FM_C_OCO',xCodLme,xRevLme,ctc_cd_c_oco);
end;

procedure TdmCtc.ctc_cd_c_tprBeforeOpen(DataSet: TDataSet);
begin
  CtcMascaraTpr;
end;

procedure TdmCtc.ctc_cd_c_tprBeforePost(DataSet: TDataSet);
begin
  ValidaCtcTpr;
end;

procedure TdmCtc.ctc_cd_c_tprNewRecord(DataSet: TDataSet);
begin
  CtcNovoTpr;
end;

procedure TdmCtc.ctc_cd_c_tprReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TdmCtc.ctc_cd_c_tpr_iteNewRecord(DataSet: TDataSet);
begin
  CtcNovoTprIte;
end;

procedure TdmCtc.ctc_cd_c_tpr_iteReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TdmCtc.ctc_cd_c_tpr_ite_comNewRecord(DataSet: TDataSet);
begin
  CtcNovoTprIteCom;
end;

procedure TdmCtc.ctc_cd_c_tpr_ite_comReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TdmCtc.ctc_cd_m_avfAfterOpen(DataSet: TDataSet);
begin
  CtcMascaraAvf(DataSet);
end;

procedure TdmCtc.ctc_cd_m_avfBeforePost(DataSet: TDataSet);
begin
  CtcValidaAvf(DataSet);
end;

procedure TdmCtc.ctc_cd_m_avfNewRecord(DataSet: TDataSet);
begin
  CtcNovoAvf(DataSet);
end;

procedure TdmCtc.ctc_cd_m_bdeBeforeOpen(DataSet: TDataSet);
begin
  CTC_RN_M_BDE.CtcMascaraBde(DataSet);
end;

procedure TdmCtc.ctc_cd_m_bdeBeforePost(DataSet: TDataSet);
begin
  CtcValidaBde(DataSet);
end;

procedure TdmCtc.ctc_cd_m_bdeNewRecord(DataSet: TDataSet);
begin
  CtcNovoBde(DataSet);
end;

procedure TdmCtc.ctc_cd_m_bdeReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TdmCtc.ctc_cd_m_cepBeforePost(DataSet: TDataSet);
begin
  CtcValidaCep(DataSet);
end;

procedure TdmCtc.ctc_cd_m_cepNewRecord(DataSet: TDataSet);
begin
  CtcNovoCep(DataSet);
end;

procedure TdmCtc.ctc_cd_m_cepReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if pos('exclusão', E.Message) > 0 then
     MessageDlg('Registro com referência em outras tabelas.'+#13+#10+'Não poderá ser excluído.', mtError, [mbOK], 0)
   else
     Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TdmCtc.ctc_cd_m_cep_epiBeforePost(DataSet: TDataSet);
begin
CtcValidaCepEpi(DataSet);
end;

procedure TdmCtc.ctc_cd_m_cep_epiNewRecord(DataSet: TDataSet);
begin
  CtcNovoCepEpi(DataSet);
end;

procedure TdmCtc.ctc_cd_m_cep_epiReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if pos('exclusão', E.Message) > 0 then
     MessageDlg('Registro com referência em outras tabelas.'+#13+#10+'Não poderá ser excluído.', mtError, [mbOK], 0)
   else
     Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TdmCtc.ctc_cd_m_cfeBeforePost(DataSet: TDataSet);
begin
  CtcValidaCfe(DataSet);
end;

procedure TdmCtc.ctc_cd_m_cfeNewRecord(DataSet: TDataSet);
begin
  CtcNovoCfe(DataSet);
end;

procedure TdmCtc.ctc_cd_m_cfeReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
{
  if pos('exclusão', E.Message) > 0 then
     MessageDlg('Registro com referência em outras tabelas.'+#13+#10+'Não poderá ser excluído.'+#13+#10+E.Message, mtError, [mbOK], 0)
  else
     Action := HandleReconcileError(DataSet, UpdateKind, E);
}
end;

procedure TdmCtc.ctc_cd_m_cfe_ferBeforePost(DataSet: TDataSet);
begin
CtcValidaCfeFer(DataSet);
end;

procedure TdmCtc.ctc_cd_m_cfe_ferNewRecord(DataSet: TDataSet);
begin
CtcNovoCfeFer(DataSet);
end;

procedure TdmCtc.ctc_cd_m_facAfterOpen(DataSet: TDataSet);
begin
  CtcMascaraFac(DataSet);
end;

procedure TdmCtc.ctc_cd_m_facBeforePost(DataSet: TDataSet);
begin
  CtcValidaFac(DataSet);
end;

procedure TdmCtc.ctc_cd_m_facNewRecord(DataSet: TDataSet);
begin
  CtcNovoFac(DataSet);
end;

procedure TdmCtc.ctc_cd_m_locBeforeOpen(DataSet: TDataSet);
begin
  CtcMascaraLoc(DataSet);
end;

procedure TdmCtc.ctc_cd_m_locBeforePost(DataSet: TDataSet);
begin
  ctcValidaLoc(DataSet);
end;

procedure TdmCtc.ctc_cd_m_locNewRecord(DataSet: TDataSet);
begin
  CtcNovoLoc(DataSet);
end;

procedure TdmCtc.ctc_cd_m_loc_meqBeforeOpen(DataSet: TDataSet);
begin
  CtcMascaraLocMeq(DataSet);
end;

procedure TdmCtc.ctc_cd_m_loc_meqBeforePost(DataSet: TDataSet);
begin
CtcValidaLocMeq(DataSet);
end;

procedure TdmCtc.ctc_cd_m_loc_meqNewRecord(DataSet: TDataSet);
begin
CtcNovoLocMeq(DataSet);
end;

procedure TdmCtc.ctc_cd_m_ofiBeforePost(DataSet: TDataSet);
begin
  CtcValidaOfi(DataSet);
end;

procedure TdmCtc.ctc_cd_m_ofiNewRecord(DataSet: TDataSet);
begin
  CtcNovoOfi(DataSet);
end;

procedure TdmCtc.ctc_cd_m_ofi_iteBeforePost(DataSet: TDataSet);
begin
CtcValidaOfiIte(DataSet);
end;

procedure TdmCtc.ctc_cd_m_ofi_iteNewRecord(DataSet: TDataSet);
begin
  CtcNovoOfiIte(DataSet);
end;

procedure TdmCtc.ctc_cd_m_orcBeforePost(DataSet: TDataSet);
begin
  CtcValidaOrc;
end;

procedure TdmCtc.ctc_cd_m_orcNewRecord(DataSet: TDataSet);
begin
  CtcNovoOrc;
end;

procedure TdmCtc.ctc_cd_m_orc_iteBeforePost(DataSet: TDataSet);
begin
  CtcValidaOrcIte;
end;

procedure TdmCtc.ctc_cd_m_orc_iteNewRecord(DataSet: TDataSet);
begin
  CtcNovoOrcIte;
end;

procedure TdmCtc.ctc_cd_m_orc_ite_comNewRecord(DataSet: TDataSet);
begin
  //CtcNovoOrcIteCom(Dataset);
end;

procedure TdmCtc.ctc_cd_m_orc_ite_medBeforePost(DataSet: TDataSet);
begin
  CtcValidaMed;
end;

procedure TdmCtc.ctc_cd_m_orc_ite_medNewRecord(DataSet: TDataSet);
begin
  CtcNovoMed;
end;

procedure TdmCtc.ctc_cd_m_slmBeforePost(DataSet: TDataSet);
begin
  CtcValidaSlm(DataSet);
end;

procedure TdmCtc.ctc_cd_m_slmNewRecord(DataSet: TDataSet);
begin
  CtcNovoSlm(DataSet);
end;

procedure TdmCtc.ctc_cd_m_slmReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TdmCtc.ctc_cd_m_slm_iteBeforePost(DataSet: TDataSet);
begin
  CtcValidaLocSlmIte(DataSet);
end;

procedure TdmCtc.ctc_cd_m_slm_iteNewRecord(DataSet: TDataSet);
begin
  CtcNovoSlmIte(DataSet);
end;

procedure TdmCtc.VerificarErrosAcoes(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if pos('exclusão', E.Message) > 0 then
     MessageDlg('Registro com referência em outras tabelas.'+#13+#10+'Não poderá ser excluído.', mtError, [mbOK], 0)
  else
     Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TdmCtc.BusObra(index: integer; filtro: String);
begin
  BUS_CD_C_OBR.Close;
  BUS_CD_C_OBR.Data :=
  BUS_CD_C_OBR.DataRequest(VarArrayOf([index, filtro,'True']));
end;

procedure TdmCtc.BusOco(index: integer; filtro: String);
begin
  BUS_CD_C_OCO.Close;
  BUS_CD_C_OCO.Data :=
  BUS_CD_C_OCO.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmCtc.BusEpi(index: integer; filtro: String);
begin
  BUS_CD_C_EPI.Close;
  BUS_CD_C_EPI.Data :=
  BUS_CD_C_EPI.DataRequest(VarArrayOf([index, filtro]));
end;


end.
