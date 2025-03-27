object dmCtc: TdmCtc
  OldCreateOrder = False
  Height = 832
  Width = 938
  object ctc_cd_m_cfe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_m_cfe'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_m_cfeBeforePost
    OnNewRecord = ctc_cd_m_cfeNewRecord
    OnReconcileError = ctc_cd_m_cfeReconcileError
    Left = 56
    Top = 129
    object ctc_cd_m_cfeid_cfe: TIntegerField
      FieldName = 'id_cfe'
    end
    object ctc_cd_m_cfedata: TDateField
      FieldName = 'data'
    end
    object ctc_cd_m_cfeid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
    end
    object ctc_cd_m_cfevlr_total: TFMTBCDField
      FieldName = 'vlr_total'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_cfestatus: TIntegerField
      FieldName = 'status'
    end
    object ctc_cd_m_cfeint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_cfectc_sq_m_cfe_fer: TDataSetField
      FieldName = 'ctc_sq_m_cfe_fer'
    end
    object ctc_cd_m_cfeint_doccpf: TWideStringField
      FieldName = 'int_doccpf'
      ProviderFlags = []
      Size = 11
    end
  end
  object ctc_cd_m_cfe_fer: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_cfectc_sq_m_cfe_fer
    Params = <>
    BeforePost = ctc_cd_m_cfe_ferBeforePost
    OnNewRecord = ctc_cd_m_cfe_ferNewRecord
    Left = 144
    Top = 129
    object ctc_cd_m_cfe_ferid_meq: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id_meq'
    end
    object ctc_cd_m_cfe_ferint_nomemeq: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 46
      FieldName = 'int_nomemeq'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_cfe_ferqtde: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 5
      FieldName = 'qtde'
    end
    object ctc_cd_m_cfe_fervlr_unitario: TFMTBCDField
      DisplayLabel = 'Vlr. Unit.'
      DisplayWidth = 10
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_cfe_fervlr_total: TFMTBCDField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 10
      FieldName = 'vlr_total'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_cfe_ferdta_devolucao: TDateField
      DisplayLabel = 'Devolu'#231#227'o'
      DisplayWidth = 10
      FieldName = 'dta_devolucao'
    end
    object ctc_cd_m_cfe_ferid_cfe: TIntegerField
      FieldName = 'id_cfe'
      Visible = False
    end
  end
  object ctc_cd_m_fac: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_m_fac'
    RemoteServer = dmGeral.pcConecao
    AfterOpen = ctc_cd_m_facAfterOpen
    BeforePost = ctc_cd_m_facBeforePost
    OnNewRecord = ctc_cd_m_facNewRecord
    Left = 58
    Top = 28
    object ctc_cd_m_facid_fac: TIntegerField
      FieldName = 'id_fac'
    end
    object ctc_cd_m_facdta_abertura: TDateField
      FieldName = 'dta_abertura'
    end
    object ctc_cd_m_facpro_acao: TIntegerField
      FieldName = 'pro_acao'
    end
    object ctc_cd_m_facpro_origem: TIntegerField
      FieldName = 'pro_origem'
    end
    object ctc_cd_m_facpro_id_responsavel: TIntegerField
      FieldName = 'pro_id_responsavel'
    end
    object ctc_cd_m_facpro_descricao: TWideStringField
      FieldName = 'pro_descricao'
      Size = 100
    end
    object ctc_cd_m_facpro_data: TDateField
      FieldName = 'pro_data'
    end
    object ctc_cd_m_facaci_descricao: TWideStringField
      FieldName = 'aci_descricao'
      Size = 100
    end
    object ctc_cd_m_facaci_id_responsavel: TIntegerField
      FieldName = 'aci_id_responsavel'
    end
    object ctc_cd_m_facaci_data: TDateField
      FieldName = 'aci_data'
    end
    object ctc_cd_m_facava_id_responsavel: TIntegerField
      FieldName = 'ava_id_responsavel'
    end
    object ctc_cd_m_facava_data: TDateField
      FieldName = 'ava_data'
    end
    object ctc_cd_m_faccap_descricao: TWideStringField
      FieldName = 'cap_descricao'
      Size = 100
    end
    object ctc_cd_m_faccap_id_responsavel: TIntegerField
      FieldName = 'cap_id_responsavel'
    end
    object ctc_cd_m_faccap_data: TDateField
      FieldName = 'cap_data'
    end
    object ctc_cd_m_facacp_descricao_01: TWideStringField
      FieldName = 'acp_descricao_01'
      Size = 100
    end
    object ctc_cd_m_facacp_descricao_02: TWideStringField
      FieldName = 'acp_descricao_02'
      Size = 100
    end
    object ctc_cd_m_facacp_descricao_03: TWideStringField
      FieldName = 'acp_descricao_03'
      Size = 100
    end
    object ctc_cd_m_facacp_descricao_04: TWideStringField
      FieldName = 'acp_descricao_04'
      Size = 100
    end
    object ctc_cd_m_facacp_id_resp_01: TIntegerField
      FieldName = 'acp_id_resp_01'
    end
    object ctc_cd_m_facacp_id_resp_02: TIntegerField
      FieldName = 'acp_id_resp_02'
    end
    object ctc_cd_m_facacp_id_resp_03: TIntegerField
      FieldName = 'acp_id_resp_03'
    end
    object ctc_cd_m_facacp_id_resp_04: TIntegerField
      FieldName = 'acp_id_resp_04'
    end
    object ctc_cd_m_facacp_data_01: TDateField
      FieldName = 'acp_data_01'
    end
    object ctc_cd_m_facacp_data_02: TDateField
      FieldName = 'acp_data_02'
    end
    object ctc_cd_m_facacp_data_03: TDateField
      FieldName = 'acp_data_03'
    end
    object ctc_cd_m_facacp_data_04: TDateField
      FieldName = 'acp_data_04'
    end
    object ctc_cd_m_facmae_descricao: TWideStringField
      FieldName = 'mae_descricao'
      Size = 100
    end
    object ctc_cd_m_facaco_perg_01: TBooleanField
      FieldName = 'aco_perg_01'
    end
    object ctc_cd_m_facaco_perg_02: TBooleanField
      FieldName = 'aco_perg_02'
    end
    object ctc_cd_m_facaco_perg_03: TBooleanField
      FieldName = 'aco_perg_03'
    end
    object ctc_cd_m_facaco_perg_04: TBooleanField
      FieldName = 'aco_perg_04'
    end
    object ctc_cd_m_facaco_perg_01_prazo: TIntegerField
      FieldName = 'aco_perg_01_prazo'
    end
    object ctc_cd_m_facaco_perg_02_prazo: TIntegerField
      FieldName = 'aco_perg_02_prazo'
    end
    object ctc_cd_m_facaco_perg_03_fac: TIntegerField
      FieldName = 'aco_perg_03_fac'
    end
    object ctc_cd_m_facaco_perg_04_fac: TIntegerField
      FieldName = 'aco_perg_04_fac'
    end
    object ctc_cd_m_facaca_descricao: TWideStringField
      FieldName = 'aca_descricao'
      Size = 100
    end
    object ctc_cd_m_facava_avaliacao: TIntegerField
      FieldName = 'ava_avaliacao'
    end
  end
  object bus_cd_c_epi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_epi'
    RemoteServer = dmGeral.pcConecao
    Left = 154
    Top = 332
    object IntegerField18: TIntegerField
      FieldName = 'id_epi'
    end
    object WideStringField75: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
    object WideStringField76: TWideStringField
      FieldName = 'id_unidade'
      Size = 3
    end
    object WideStringField77: TWideStringField
      FieldName = 'int_nomeund'
      ProviderFlags = []
      Size = 30
    end
  end
  object bus_cd_c_tpr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_tpr'
    RemoteServer = dmGeral.pcConecao
    Left = 370
    Top = 232
    object WideStringField98: TWideStringField
      DisplayWidth = 40
      FieldName = 'descricao'
      Size = 40
    end
    object IntegerField28: TIntegerField
      FieldName = 'id_tpr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object bus_cd_c_tprctc_sq_c_tpr_ite: TDataSetField
      FieldName = 'ctc_sq_c_tpr_ite'
    end
  end
  object bus_cd_c_ser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_ser'
    RemoteServer = dmGeral.pcConecao
    Left = 250
    Top = 477
    object IntegerField29: TIntegerField
      FieldName = 'id'
    end
    object WideStringField99: TWideStringField
      FieldName = 'descricao'
      Size = 600
    end
    object WideStringField100: TWideStringField
      FieldName = 'id_unidade'
      Size = 3
    end
    object DataSetField4: TDataSetField
      FieldName = 'ctc_sq_c_ser_com'
    end
  end
  object bus_cd_c_tpr_ite: TClientDataSet
    Aggregates = <>
    DataSetField = bus_cd_c_tprctc_sq_c_tpr_ite
    Params = <>
    Left = 474
    Top = 232
    object IntegerField30: TIntegerField
      FieldName = 'id_tpr'
    end
    object WideStringField101: TWideStringField
      Alignment = taRightJustify
      FieldName = 'id_item'
    end
    object WideStringField102: TWideStringField
      FieldName = 'descricao'
      Size = 800
    end
    object IntegerField31: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'classe'
    end
    object WideStringField103: TWideStringField
      FieldName = 'unidade'
      Size = 10
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'preco_unitario'
      Precision = 15
      Size = 6
    end
    object DateField11: TDateField
      Alignment = taRightJustify
      FieldName = 'data_base'
    end
    object IntegerField32: TIntegerField
      FieldName = 'id_item_interno'
    end
    object bus_cd_c_tpr_iteint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object bus_cd_c_tpr_itectc_sq_c_tpr_ite_com: TDataSetField
      FieldName = 'ctc_sq_c_tpr_ite_com'
    end
  end
  object bus_cd_m_ctc_tpr: TClientDataSet
    Aggregates = <>
    DataSetField = bus_cd_c_tpr_itectc_sq_c_tpr_ite_com
    Params = <>
    Left = 570
    Top = 232
    object bus_cd_m_ctc_tprid_tpr: TIntegerField
      FieldName = 'id_tpr'
    end
    object bus_cd_m_ctc_tprid_item: TWideStringField
      FieldName = 'id_item'
    end
    object bus_cd_m_ctc_tprid_item_comp: TWideStringField
      FieldName = 'id_item_comp'
    end
    object bus_cd_m_ctc_tprqtde: TFloatField
      FieldName = 'qtde'
    end
  end
  object bus_cd_c_obr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_obr'
    RemoteServer = dmGeral.pcConecao
    Left = 586
    Top = 32
    object WideStringField64: TWideStringField
      DisplayWidth = 50
      FieldName = 'descricao'
      Size = 50
    end
    object IntegerField8: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_obra'
    end
    object IntegerField12: TIntegerField
      FieldName = 'id_cliente'
      Visible = False
    end
    object BooleanField19: TBooleanField
      FieldName = 'ativo'
      Visible = False
    end
    object WideStringField65: TWideStringField
      FieldName = 'endereco'
      Visible = False
      Size = 50
    end
    object WideStringField66: TWideStringField
      FieldName = 'id_cidade'
      Visible = False
      Size = 10
    end
    object WideStringField67: TWideStringField
      FieldName = 'cep'
      Visible = False
      Size = 9
    end
    object WideStringField68: TWideStringField
      FieldName = 'tel_fixo'
      Visible = False
      Size = 14
    end
    object WideStringField69: TWideStringField
      FieldName = 'fax'
      Visible = False
      Size = 14
    end
    object WideStringField70: TWideStringField
      FieldName = 'obs'
      Visible = False
      Size = 800
    end
    object DateField10: TDateField
      FieldName = 'dta_entrega'
      Visible = False
    end
    object WideStringField71: TWideStringField
      FieldName = 'cod_lme'
      Visible = False
    end
    object WideStringField72: TWideStringField
      FieldName = 'rev_lme'
      Visible = False
      Size = 5
    end
    object WideStringField73: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object WideStringField74: TWideStringField
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Visible = False
      Size = 60
    end
    object bus_cd_c_obrid_tpr: TIntegerField
      FieldName = 'id_tpr'
      Visible = False
    end
    object bus_cd_c_obrint_nomeuf: TWideStringField
      FieldName = 'int_nomeuf'
      Size = 2
    end
  end
  object ctc_cd_c_obr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_obr'
    RemoteServer = dmGeral.pcConecao
    AfterOpen = ctc_cd_c_obrAfterOpen
    BeforePost = ctc_cd_c_obrBeforePost
    OnNewRecord = ctc_cd_c_obrNewRecord
    Left = 473
    Top = 32
    object ctc_cd_c_obrid_obra: TIntegerField
      FieldName = 'id_obra'
    end
    object ctc_cd_c_obrid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object ctc_cd_c_obrdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object ctc_cd_c_obrativo: TBooleanField
      FieldName = 'ativo'
    end
    object ctc_cd_c_obrendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object ctc_cd_c_obrid_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object ctc_cd_c_obrcep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object ctc_cd_c_obrtel_fixo: TWideStringField
      FieldName = 'tel_fixo'
      Size = 14
    end
    object ctc_cd_c_obrfax: TWideStringField
      FieldName = 'fax'
      Size = 14
    end
    object ctc_cd_c_obrobs: TWideStringField
      FieldName = 'obs'
      Size = 800
    end
    object ctc_cd_c_obrdta_entrega: TDateField
      FieldName = 'dta_entrega'
    end
    object ctc_cd_c_obrcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object ctc_cd_c_obrrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object ctc_cd_c_obrint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_c_obrint_nomecid: TWideStringField
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Size = 60
    end
    object ctc_cd_c_obrint_nomeuf: TWideStringField
      FieldName = 'int_nomeuf'
      ProviderFlags = []
      Size = 2
    end
    object ctc_cd_c_obrctc_sq_c_obr_crg: TDataSetField
      FieldName = 'ctc_sq_c_obr_crg'
    end
    object ctc_cd_c_obrctc_sq_c_obr_eqp: TDataSetField
      FieldName = 'ctc_sq_c_obr_eqp'
    end
    object ctc_cd_c_obrctc_sq_c_obr_ite: TDataSetField
      FieldName = 'ctc_sq_c_obr_ite'
    end
  end
  object ctc_cd_c_tpr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_tpr'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = ctc_cd_c_tprBeforeOpen
    BeforePost = ctc_cd_c_tprBeforePost
    OnNewRecord = ctc_cd_c_tprNewRecord
    OnReconcileError = ctc_cd_c_tprReconcileError
    Left = 58
    Top = 232
    object ctc_cd_c_tprid_tpr: TIntegerField
      FieldName = 'id_tpr'
    end
    object ctc_cd_c_tprdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 40
    end
    object ctc_cd_c_tprctc_sq_c_tpr_ite: TDataSetField
      FieldName = 'ctc_sq_c_tpr_ite'
    end
  end
  object ctc_cd_m_orc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_m_orc'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_m_orcBeforePost
    OnNewRecord = ctc_cd_m_orcNewRecord
    Left = 58
    Top = 280
    object ctc_cd_m_orcid_orc: TIntegerField
      FieldName = 'id_orc'
    end
    object ctc_cd_m_orcdta_orc: TDateField
      FieldName = 'dta_orc'
    end
    object ctc_cd_m_orcid_obra: TIntegerField
      FieldName = 'id_obra'
    end
    object ctc_cd_m_orcint_nomeobr: TWideStringField
      FieldName = 'int_nomeobr'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_orcobs: TWideStringField
      FieldName = 'obs'
      Size = 100
    end
    object ctc_cd_m_orcvlr_total: TFMTBCDField
      FieldName = 'vlr_total'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orcid_estrutura: TIntegerField
      FieldName = 'id_estrutura'
    end
    object ctc_cd_m_orcctc_sq_m_orc_ite: TDataSetField
      FieldName = 'ctc_sq_m_orc_ite'
    end
  end
  object ctc_cd_m_orc_ite: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_orcctc_sq_m_orc_ite
    Params = <>
    BeforePost = ctc_cd_m_orc_iteBeforePost
    OnNewRecord = ctc_cd_m_orc_iteNewRecord
    Left = 146
    Top = 280
    object ctc_cd_m_orc_itegrupo: TWideStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 10
      FieldName = 'grupo'
      EditMask = '9.999;1;_'
      Size = 5
    end
    object ctc_cd_m_orc_itecod_prpoprio: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 13
      FieldName = 'cod_prpoprio'
      Size = 15
    end
    object ctc_cd_m_orc_itedescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 41
      FieldName = 'descricao'
      Size = 600
    end
    object ctc_cd_m_orc_iteund: TWideStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 8
      FieldName = 'und'
      Size = 4
    end
    object ctc_cd_m_orc_iteclasse: TWideStringField
      DisplayLabel = 'Clase'
      DisplayWidth = 13
      FieldName = 'classe'
      Size = 6
    end
    object ctc_cd_m_orc_iteid_orc: TIntegerField
      FieldName = 'id_orc'
      Visible = False
    end
    object ctc_cd_m_orc_iteqtde: TFloatField
      FieldName = 'qtde'
      Visible = False
    end
    object ctc_cd_m_orc_itevlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Visible = False
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_itevlr_total: TFMTBCDField
      FieldName = 'vlr_total'
      Visible = False
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_iteqtde_saldo_medicao: TFloatField
      FieldName = 'qtde_saldo_medicao'
      Visible = False
    end
    object ctc_cd_m_orc_itevlr_mo: TFMTBCDField
      FieldName = 'vlr_mo'
      Visible = False
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_itevlr_mat: TFMTBCDField
      FieldName = 'vlr_mat'
      Visible = False
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_iteper_ls: TFloatField
      FieldName = 'per_ls'
      Visible = False
    end
    object ctc_cd_m_orc_itevlr_ls: TFMTBCDField
      FieldName = 'vlr_ls'
      Visible = False
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_iteper_bdi: TFloatField
      FieldName = 'per_bdi'
      Visible = False
    end
    object ctc_cd_m_orc_itevlr_bdi: TFMTBCDField
      FieldName = 'vlr_bdi'
      Visible = False
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_iteper_adm: TFloatField
      FieldName = 'per_adm'
      Visible = False
    end
    object ctc_cd_m_orc_itevlr_adm: TFMTBCDField
      FieldName = 'vlr_adm'
      Visible = False
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_itetotal_taxa: TFMTBCDField
      FieldName = 'total_taxa'
      Visible = False
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_itectc_sq_m_orc_ite_com: TDataSetField
      FieldName = 'ctc_sq_m_orc_ite_com'
      Visible = False
    end
    object ctc_cd_m_orc_itectc_sq_m_orc_ite_med: TDataSetField
      FieldName = 'ctc_sq_m_orc_ite_med'
      Visible = False
    end
  end
  object ctc_cd_c_epi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_epi'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_c_epiBeforePost
    Left = 58
    Top = 329
    object ctc_cd_c_epiid_epi: TIntegerField
      FieldName = 'id_epi'
    end
    object ctc_cd_c_epidescricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
    object ctc_cd_c_epiid_unidade: TWideStringField
      FieldName = 'id_unidade'
      Size = 3
    end
    object ctc_cd_c_epiint_nomeund: TWideStringField
      FieldName = 'int_nomeund'
      ProviderFlags = []
      Size = 30
    end
  end
  object ctc_cd_m_cep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_m_cep'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_m_cepBeforePost
    OnNewRecord = ctc_cd_m_cepNewRecord
    OnReconcileError = ctc_cd_m_cepReconcileError
    Left = 58
    Top = 377
    object ctc_cd_m_cepid_cep: TIntegerField
      FieldName = 'id_cep'
    end
    object ctc_cd_m_cepdata: TDateField
      FieldName = 'data'
    end
    object ctc_cd_m_cepid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object ctc_cd_m_cepresp_tecnico: TWideStringField
      FieldName = 'resp_tecnico'
      Size = 50
    end
    object ctc_cd_m_cepstatus: TIntegerField
      FieldName = 'status'
    end
    object ctc_cd_m_cepint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_cepctc_sq_m_cep_epi: TDataSetField
      FieldName = 'ctc_sq_m_cep_epi'
    end
  end
  object ctc_cd_m_cep_epi: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_cepctc_sq_m_cep_epi
    Params = <>
    BeforePost = ctc_cd_m_cep_epiBeforePost
    OnNewRecord = ctc_cd_m_cep_epiNewRecord
    OnReconcileError = ctc_cd_m_cep_epiReconcileError
    Left = 152
    Top = 377
    object ctc_cd_m_cep_epiid_epi: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id_epi'
    end
    object ctc_cd_m_cep_epiint_nomeepi: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 35
      FieldName = 'int_nomeepi'
      ProviderFlags = []
      Size = 30
    end
    object ctc_cd_m_cep_epiqtde: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'qtde'
    end
    object ctc_cd_m_cep_epidta_entrega: TDateField
      DisplayLabel = 'Entrega'
      DisplayWidth = 10
      FieldName = 'dta_entrega'
    end
    object ctc_cd_m_cep_epimarca: TWideStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 15
      FieldName = 'marca'
    end
    object ctc_cd_m_cep_epimodelo: TWideStringField
      DisplayLabel = 'Modelo'
      DisplayWidth = 15
      FieldName = 'modelo'
    end
    object ctc_cd_m_cep_epica: TWideStringField
      DisplayLabel = 'C.A'
      DisplayWidth = 12
      FieldName = 'ca'
    end
    object ctc_cd_m_cep_epiid_cep: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_cep'
      Visible = False
    end
    object ctc_cd_m_cep_episequencia: TIntegerField
      DisplayWidth = 10
      FieldName = 'sequencia'
      Visible = False
    end
    object ctc_cd_m_cep_epidta_devolucao: TDateField
      DisplayWidth = 10
      FieldName = 'dta_devolucao'
      Visible = False
    end
  end
  object ctc_cd_c_tpr_ite: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_c_tprctc_sq_c_tpr_ite
    Params = <>
    OnNewRecord = ctc_cd_c_tpr_iteNewRecord
    OnReconcileError = ctc_cd_c_tpr_iteReconcileError
    Left = 146
    Top = 232
    object ctc_cd_c_tpr_iteid_item: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id_item'
    end
    object ctc_cd_c_tpr_iteid_item_interno: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 10
      FieldName = 'id_item_interno'
    end
    object ctc_cd_c_tpr_itedescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 33
      FieldName = 'descricao'
      Size = 800
    end
    object ctc_cd_c_tpr_iteclasse: TIntegerField
      DisplayLabel = 'Classe'
      DisplayWidth = 13
      FieldName = 'classe'
    end
    object ctc_cd_c_tpr_iteunidade: TWideStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 10
      FieldName = 'unidade'
      Size = 10
    end
    object ctc_cd_c_tpr_itepreco_unitario: TFMTBCDField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      DisplayWidth = 16
      FieldName = 'preco_unitario'
      Precision = 15
      Size = 6
    end
    object ctc_cd_c_tpr_itedata_base: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'data_base'
    end
    object ctc_cd_c_tpr_iteid_tpr: TIntegerField
      FieldName = 'id_tpr'
      Visible = False
    end
    object ctc_cd_c_tpr_iteint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Visible = False
      Size = 100
    end
    object ctc_cd_c_tpr_itectc_sq_c_tpr_ite_com: TDataSetField
      FieldName = 'ctc_sq_c_tpr_ite_com'
      Visible = False
    end
  end
  object ctc_cd_m_orc_ite_med: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_orc_itectc_sq_m_orc_ite_med
    Params = <>
    BeforePost = ctc_cd_m_orc_ite_medBeforePost
    OnNewRecord = ctc_cd_m_orc_ite_medNewRecord
    Left = 370
    Top = 280
    object ctc_cd_m_orc_ite_medid_med: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id_med'
    end
    object ctc_cd_m_orc_ite_medid_responsavel: TIntegerField
      DisplayLabel = 'Resposavel'
      DisplayWidth = 39
      FieldName = 'id_responsavel'
    end
    object ctc_cd_m_orc_ite_medqtde: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'qtde'
    end
    object ctc_cd_m_orc_ite_meddta_medicao: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 15
      FieldName = 'dta_medicao'
    end
    object ctc_cd_m_orc_ite_medid_item: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 10
      FieldName = 'id_item'
      Visible = False
    end
    object ctc_cd_m_orc_ite_medgrupo: TWideStringField
      DisplayWidth = 10
      FieldName = 'grupo'
      Visible = False
      EditMask = '9.999;1;_'
      Size = 5
    end
    object ctc_cd_m_orc_ite_medid_orc: TIntegerField
      FieldName = 'id_orc'
      Visible = False
    end
  end
  object ctc_cd_c_tpr_ite_com: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_c_tpr_itectc_sq_c_tpr_ite_com
    Params = <>
    OnNewRecord = ctc_cd_c_tpr_ite_comNewRecord
    OnReconcileError = ctc_cd_c_tpr_ite_comReconcileError
    Left = 250
    Top = 232
    object ctc_cd_c_tpr_ite_comid_tpr: TIntegerField
      FieldName = 'id_tpr'
    end
    object ctc_cd_c_tpr_ite_comid_item: TWideStringField
      FieldName = 'id_item'
    end
    object ctc_cd_c_tpr_ite_comid_item_comp: TWideStringField
      FieldName = 'id_item_comp'
    end
    object ctc_cd_c_tpr_ite_comqtde: TFloatField
      FieldName = 'qtde'
    end
  end
  object ctc_cd_m_orc_ite_com: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_orc_itectc_sq_m_orc_ite_com
    Params = <>
    OnNewRecord = ctc_cd_m_orc_ite_comNewRecord
    Left = 250
    Top = 280
    object ctc_cd_m_orc_ite_comid_item: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 10
      FieldName = 'id_item'
    end
    object ctc_cd_m_orc_ite_comint_nomeitetpr: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 45
      FieldName = 'int_nomeitetpr'
      ProviderFlags = []
      Size = 800
    end
    object ctc_cd_m_orc_ite_comcoeficiente: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 8
      FieldName = 'coeficiente'
    end
    object ctc_cd_m_orc_ite_comvlr_unitario: TFMTBCDField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      DisplayWidth = 10
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_ite_comvlr_total: TFMTBCDField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 11
      FieldName = 'vlr_total'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_orc_ite_comint_classeitetpr: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_classeitetpr'
      ProviderFlags = []
    end
    object ctc_cd_m_orc_ite_comid_orc: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_orc'
      Visible = False
    end
    object ctc_cd_m_orc_ite_comgrupo: TWideStringField
      DisplayWidth = 5
      FieldName = 'grupo'
      Visible = False
      Size = 5
    end
    object ctc_cd_m_orc_ite_comid_com: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_com'
      Visible = False
    end
  end
  object ctc_cd_m_loc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_m_loc'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = ctc_cd_m_locBeforeOpen
    BeforePost = ctc_cd_m_locBeforePost
    OnNewRecord = ctc_cd_m_locNewRecord
    Left = 58
    Top = 525
    object ctc_cd_m_locid_loc: TIntegerField
      FieldName = 'id_loc'
    end
    object ctc_cd_m_locdta_locacao: TDateField
      FieldName = 'dta_locacao'
    end
    object ctc_cd_m_locid_obra: TIntegerField
      FieldName = 'id_obra'
    end
    object ctc_cd_m_locnum_contrato: TIntegerField
      FieldName = 'num_contrato'
    end
    object ctc_cd_m_locnum_documento: TIntegerField
      FieldName = 'num_documento'
    end
    object ctc_cd_m_locstatus: TIntegerField
      FieldName = 'status'
    end
    object ctc_cd_m_locvlr_frete: TFMTBCDField
      FieldName = 'vlr_frete'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_locvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_locvlr_total: TFMTBCDField
      FieldName = 'vlr_total'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_locint_nomeobr: TWideStringField
      FieldName = 'int_nomeobr'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_locctc_sq_m_loc_meq: TDataSetField
      FieldName = 'ctc_sq_m_loc_meq'
    end
    object ctc_cd_m_locid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
    end
    object ctc_cd_m_locint_nomefor: TWideStringField
      FieldName = 'int_nomefor'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_locint_nomefan: TWideStringField
      FieldName = 'int_nomefan'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_locint_numtel: TWideStringField
      FieldName = 'int_numtel'
      ProviderFlags = []
      Size = 14
    end
  end
  object ctc_cd_m_loc_meq: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_locctc_sq_m_loc_meq
    Params = <>
    BeforeOpen = ctc_cd_m_loc_meqBeforeOpen
    BeforePost = ctc_cd_m_loc_meqBeforePost
    OnNewRecord = ctc_cd_m_loc_meqNewRecord
    Left = 154
    Top = 525
    object ctc_cd_m_loc_meqid_veiculo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'id_veiculo'
    end
    object ctc_cd_m_loc_meqint_nomevei: TWideStringField
      DisplayLabel = 'Descricao'
      DisplayWidth = 41
      FieldName = 'int_nomevei'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_loc_meqqtde: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 5
      FieldName = 'qtde'
    end
    object ctc_cd_m_loc_meqvlr_unitario: TFMTBCDField
      DisplayLabel = 'Valor Unit'
      DisplayWidth = 10
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_loc_meqdta_inicial: TDateField
      DisplayLabel = 'Data Inicial'
      DisplayWidth = 10
      FieldName = 'dta_inicial'
    end
    object ctc_cd_m_loc_meqdta_final: TDateField
      DisplayLabel = 'Data Final'
      DisplayWidth = 10
      FieldName = 'dta_final'
    end
    object ctc_cd_m_loc_meqtotal: TFMTBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 11
      FieldName = 'total'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_loc_meqid_loc: TIntegerField
      FieldName = 'id_loc'
      Visible = False
    end
    object ctc_cd_m_loc_meqentrega: TDateField
      FieldName = 'entrega'
      Visible = False
    end
    object ctc_cd_m_loc_meqdevolucao: TDateField
      FieldName = 'devolucao'
      Visible = False
    end
  end
  object ctc_cd_m_ofi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_m_ofi'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_m_ofiBeforePost
    OnNewRecord = ctc_cd_m_ofiNewRecord
    Left = 58
    Top = 429
    object ctc_cd_m_ofiid_ofi: TIntegerField
      FieldName = 'id_ofi'
    end
    object ctc_cd_m_ofidata: TDateField
      FieldName = 'data'
    end
    object ctc_cd_m_ofiid_veiculo: TIntegerField
      FieldName = 'id_veiculo'
    end
    object ctc_cd_m_ofiid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
    end
    object ctc_cd_m_ofiproblema: TWideStringField
      FieldName = 'problema'
      Size = 200
    end
    object ctc_cd_m_ofiobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object ctc_cd_m_ofiid_solicitante: TIntegerField
      FieldName = 'id_solicitante'
    end
    object ctc_cd_m_ofikm_veiculo: TIntegerField
      FieldName = 'km_veiculo'
    end
    object ctc_cd_m_ofistatus: TIntegerField
      FieldName = 'status'
    end
    object ctc_cd_m_ofivlr_total: TFMTBCDField
      FieldName = 'vlr_total'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_ofiint_nomefor: TWideStringField
      FieldName = 'int_nomefor'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_ofiint_nomesol: TWideStringField
      FieldName = 'int_nomesol'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_ofiint_nomevei: TWideStringField
      FieldName = 'int_nomevei'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_ofictc_sq_m_ofi_ite: TDataSetField
      FieldName = 'ctc_sq_m_ofi_ite'
    end
  end
  object ctc_cd_m_ofi_ite: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_ofictc_sq_m_ofi_ite
    Params = <>
    BeforePost = ctc_cd_m_ofi_iteBeforePost
    OnNewRecord = ctc_cd_m_ofi_iteNewRecord
    Left = 154
    Top = 429
    object ctc_cd_m_ofi_iteid_ofi: TIntegerField
      FieldName = 'id_ofi'
    end
    object ctc_cd_m_ofi_itesequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object ctc_cd_m_ofi_itedescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object ctc_cd_m_ofi_iteqtde: TFloatField
      FieldName = 'qtde'
    end
    object ctc_cd_m_ofi_itevlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_ofi_itevlr_total: TFMTBCDField
      FieldName = 'vlr_total'
      Precision = 18
      Size = 4
    end
  end
  object ctc_cd_c_ser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_ser'
    RemoteServer = dmGeral.pcConecao
    Left = 58
    Top = 477
    object ctc_cd_c_serid: TIntegerField
      FieldName = 'id'
    end
    object ctc_cd_c_serdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 600
    end
    object ctc_cd_c_serid_unidade: TWideStringField
      FieldName = 'id_unidade'
      Size = 3
    end
    object ctc_cd_c_serctc_sq_c_ser_com: TDataSetField
      FieldName = 'ctc_sq_c_ser_com'
    end
  end
  object ctc_cd_c_ser_com: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_c_serctc_sq_c_ser_com
    Params = <>
    Left = 154
    Top = 477
    object ctc_cd_c_ser_comid_ser: TIntegerField
      FieldName = 'id_ser'
    end
    object ctc_cd_c_ser_comid_item: TIntegerField
      FieldName = 'id_item'
    end
    object ctc_cd_c_ser_comid_tpr: TIntegerField
      FieldName = 'id_tpr'
    end
    object ctc_cd_c_ser_comqtde: TFloatField
      FieldName = 'qtde'
    end
    object ctc_cd_c_ser_comvlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object ctc_cd_c_ser_comint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object ctc_cd_c_ser_comint_nometpr: TWideStringField
      FieldName = 'int_nometpr'
      ProviderFlags = []
      Size = 40
    end
  end
  object ctc_cd_c_eoc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_eoc'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_c_eocBeforePost
    OnNewRecord = ctc_cd_c_eocNewRecord
    Left = 58
    Top = 677
    object ctc_cd_c_eocid_estrutura: TIntegerField
      FieldName = 'id_estrutura'
    end
    object ctc_cd_c_eocdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object ctc_cd_c_eocctc_sq_c_eoc_gru: TDataSetField
      FieldName = 'ctc_sq_c_eoc_gru'
    end
  end
  object ctc_cd_c_eoc_gru: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_c_eocctc_sq_c_eoc_gru
    Params = <>
    BeforePost = ctc_cd_c_eoc_gruBeforePost
    OnNewRecord = ctc_cd_c_eoc_gruNewRecord
    Left = 154
    Top = 677
    object ctc_cd_c_eoc_gruid_estrutura: TIntegerField
      FieldName = 'id_estrutura'
    end
    object ctc_cd_c_eoc_grugrupo: TWideStringField
      FieldName = 'grupo'
      Size = 5
    end
    object ctc_cd_c_eoc_grudescricao: TWideStringField
      FieldName = 'descricao'
      Size = 600
    end
    object ctc_cd_c_eoc_gruund: TWideStringField
      FieldName = 'und'
      Size = 4
    end
    object ctc_cd_c_eoc_gruclasse: TWideStringField
      FieldName = 'classe'
      Size = 6
    end
    object ctc_cd_c_eoc_grucod_prpoprio: TWideStringField
      FieldName = 'cod_prpoprio'
      Size = 15
    end
  end
  object bus_cd_c_eoc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_eoc'
    RemoteServer = dmGeral.pcConecao
    Left = 258
    Top = 677
    object bus_cd_c_eocdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 35
      FieldName = 'descricao'
      Size = 50
    end
    object bus_cd_c_eocid_estrutura: TIntegerField
      FieldName = 'id_estrutura'
      Visible = False
    end
    object bus_cd_c_eocctc_sq_c_eoc_gru: TDataSetField
      FieldName = 'ctc_sq_c_eoc_gru'
      Visible = False
    end
  end
  object bus_cd_c_eoc_gru: TClientDataSet
    Aggregates = <>
    DataSetField = bus_cd_c_eocctc_sq_c_eoc_gru
    Params = <>
    Left = 362
    Top = 677
    object bus_cd_c_eoc_gruid_estrutura: TIntegerField
      FieldName = 'id_estrutura'
    end
    object bus_cd_c_eoc_grugrupo: TWideStringField
      FieldName = 'grupo'
      Size = 5
    end
    object bus_cd_c_eoc_grudescricao: TWideStringField
      FieldName = 'descricao'
      Size = 600
    end
    object bus_cd_c_eoc_gruund: TWideStringField
      FieldName = 'und'
      Size = 4
    end
    object bus_cd_c_eoc_gruclasse: TWideStringField
      FieldName = 'classe'
      Size = 6
    end
    object bus_cd_c_eoc_grucod_prpoprio: TWideStringField
      FieldName = 'cod_prpoprio'
      Size = 15
    end
  end
  object ctc_cd_m_slm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CTC_DP_M_SLM'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_m_slmBeforePost
    OnNewRecord = ctc_cd_m_slmNewRecord
    OnReconcileError = ctc_cd_m_slmReconcileError
    Left = 472
    Top = 328
    object ctc_cd_m_slmid_controle: TIntegerField
      FieldName = 'id_controle'
    end
    object ctc_cd_m_slmdata: TDateField
      FieldName = 'data'
    end
    object ctc_cd_m_slmid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object ctc_cd_m_slmid_obra: TIntegerField
      FieldName = 'id_obra'
    end
    object ctc_cd_m_slmobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 100
    end
    object ctc_cd_m_slmint_nomeresp: TWideStringField
      FieldName = 'int_nomeresp'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_slmCTC_SQ_M_SLM_ITE: TDataSetField
      FieldName = 'CTC_SQ_M_SLM_ITE'
    end
    object ctc_cd_m_slmid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object ctc_cd_m_slmint_desc_obr: TWideStringField
      FieldName = 'int_desc_obr'
      ProviderFlags = []
      Size = 50
    end
  end
  object ctc_cd_m_slm_ite: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_slmCTC_SQ_M_SLM_ITE
    Params = <>
    BeforePost = ctc_cd_m_slm_iteBeforePost
    OnNewRecord = ctc_cd_m_slm_iteNewRecord
    Left = 472
    Top = 376
    object ctc_cd_m_slm_iteid_item: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'id_item'
    end
    object ctc_cd_m_slm_iteint_nomeite: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object ctc_cd_m_slm_iteqtde: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 8
      FieldName = 'qtde'
    end
    object ctc_cd_m_slm_iteobservacao: TWideStringField
      DisplayLabel = 'Observa'#231#227'o'
      DisplayWidth = 40
      FieldName = 'observacao'
      Size = 100
    end
    object ctc_cd_m_slm_iteid_controle: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 10
      FieldName = 'id_controle'
      Visible = False
    end
  end
  object ctc_cd_m_bde: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_m_bde'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = ctc_cd_m_bdeBeforeOpen
    BeforePost = ctc_cd_m_bdeBeforePost
    OnNewRecord = ctc_cd_m_bdeNewRecord
    OnReconcileError = ctc_cd_m_bdeReconcileError
    Left = 58
    Top = 573
    object ctc_cd_m_bdeid_bde: TIntegerField
      FieldName = 'id_bde'
    end
    object ctc_cd_m_bdeid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object ctc_cd_m_bdeid_obra: TIntegerField
      FieldName = 'id_obra'
    end
    object ctc_cd_m_bdeid_meq: TIntegerField
      FieldName = 'id_meq'
    end
    object ctc_cd_m_bdedta_bde: TDateField
      FieldName = 'dta_bde'
    end
    object ctc_cd_m_bdeid_operador: TIntegerField
      FieldName = 'id_operador'
    end
    object ctc_cd_m_bdevlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_bdevlr_acrescimo: TFMTBCDField
      FieldName = 'vlr_acrescimo'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_bdevlr_servicos: TFMTBCDField
      FieldName = 'vlr_servicos'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_bdevlr_comissao: TFMTBCDField
      FieldName = 'vlr_comissao'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_bdehori_inicial: TFloatField
      FieldName = 'hori_inicial'
    end
    object ctc_cd_m_bdehori_final: TFloatField
      FieldName = 'hori_final'
    end
    object ctc_cd_m_bdeint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_bdeint_nomemeq: TWideStringField
      FieldName = 'int_nomemeq'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_bdeint_nomeobr: TWideStringField
      FieldName = 'int_nomeobr'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_bdeint_nomeope: TWideStringField
      FieldName = 'int_nomeope'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_m_bdevlr_combustivel: TFMTBCDField
      FieldName = 'vlr_combustivel'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_bdehori_total: TFloatField
      FieldName = 'hori_total'
    end
    object ctc_cd_m_bdevlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object ctc_cd_m_bdenro_bde: TIntegerField
      FieldName = 'nro_bde'
    end
    object ctc_cd_m_bdeint_vlrhora: TFMTBCDField
      FieldName = 'int_vlrhora'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ctc_cd_m_bdeint_vlrcomissao: TFMTBCDField
      FieldName = 'int_vlrcomissao'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object ctc_cd_m_bdectc_sq_m_bde_oco: TDataSetField
      FieldName = 'ctc_sq_m_bde_oco'
    end
    object ctc_cd_m_bdeqtde_combustivel: TFloatField
      FieldName = 'qtde_combustivel'
    end
    object ctc_cd_m_bdectc_sq_m_bde_vrf: TDataSetField
      FieldName = 'ctc_sq_m_bde_vrf'
    end
    object ctc_cd_m_bdeobs: TWideStringField
      FieldName = 'obs'
      Size = 255
    end
  end
  object ctc_cd_m_bde_oco: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_bdectc_sq_m_bde_oco
    Params = <>
    Left = 152
    Top = 576
    object ctc_cd_m_bde_ocoid_bde: TIntegerField
      FieldName = 'id_bde'
    end
    object ctc_cd_m_bde_ocoid_ocorrencia: TIntegerField
      FieldName = 'id_ocorrencia'
    end
    object ctc_cd_m_bde_ocoqtde: TFloatField
      FieldName = 'qtde'
    end
    object ctc_cd_m_bde_ocoint_nomeoco: TWideStringField
      FieldName = 'int_nomeoco'
      ProviderFlags = []
      Size = 100
    end
  end
  object bus_cd_m_bde: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_m_bde'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_m_bdeBeforePost
    OnNewRecord = ctc_cd_m_bdeNewRecord
    Left = 260
    Top = 577
    object IntegerField1: TIntegerField
      FieldName = 'id_bde'
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_cliente'
    end
    object IntegerField3: TIntegerField
      FieldName = 'id_obra'
    end
    object IntegerField4: TIntegerField
      FieldName = 'id_meq'
    end
    object DateField1: TDateField
      FieldName = 'dta_bde'
    end
    object IntegerField5: TIntegerField
      FieldName = 'id_operador'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'vlr_acrescimo'
      Precision = 18
      Size = 4
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'vlr_servicos'
      Precision = 18
      Size = 4
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'vlr_comissao'
      Precision = 18
      Size = 4
    end
    object FloatField1: TFloatField
      FieldName = 'hori_inicial'
    end
    object FloatField2: TFloatField
      FieldName = 'hori_final'
    end
    object WideStringField1: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'int_nomemeq'
      ProviderFlags = []
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'int_nomeobr'
      ProviderFlags = []
      Size = 50
    end
    object WideStringField4: TWideStringField
      FieldName = 'int_nomeope'
      ProviderFlags = []
      Size = 50
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'vlr_combustivel'
      Precision = 18
      Size = 4
    end
    object FloatField3: TFloatField
      FieldName = 'hori_total'
    end
    object FMTBCDField7: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object IntegerField6: TIntegerField
      FieldName = 'nro_bde'
    end
    object FMTBCDField8: TFMTBCDField
      FieldName = 'int_vlrhora'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object FMTBCDField9: TFMTBCDField
      FieldName = 'int_vlrcomissao'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object DataSetField1: TDataSetField
      FieldName = 'ctc_sq_m_bde_oco'
    end
  end
  object ctc_cd_c_oco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_oco'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_c_ocoBeforePost
    OnNewRecord = ctc_cd_c_ocoNewRecord
    Left = 474
    Top = 428
    object ctc_cd_c_ocoid_ocorrencia: TIntegerField
      FieldName = 'id_ocorrencia'
    end
    object ctc_cd_c_ocodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object bus_cd_c_oco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_c_oco'
    RemoteServer = dmGeral.pcConecao
    Left = 562
    Top = 428
    object bus_cd_c_ocodescricao: TWideStringField
      DisplayWidth = 50
      FieldName = 'descricao'
      Size = 100
    end
    object bus_cd_c_ocoid_ocorrencia: TIntegerField
      FieldName = 'id_ocorrencia'
      Visible = False
    end
  end
  object ctc_cd_m_avf_nfe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_NFE'
    RemoteServer = dmGeral.pcConecao
    Left = 146
    Top = 79
    object ctc_cd_m_avf_nfedta_documento: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'dta_documento'
    end
    object ctc_cd_m_avf_nfenumero: TIntegerField
      DisplayLabel = 'Numero da Nota'
      DisplayWidth = 10
      FieldName = 'numero'
    end
  end
  object ctc_cd_m_avf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ctc_dp_m_avf'
    RemoteServer = dmGeral.pcConecao
    BeforePost = ctc_cd_m_avfBeforePost
    OnNewRecord = ctc_cd_m_avfNewRecord
    Left = 56
    Top = 80
    object ctc_cd_m_avfid_avf: TIntegerField
      FieldName = 'id_avf'
    end
    object ctc_cd_m_avfdta_avf: TDateField
      FieldName = 'dta_avf'
    end
    object ctc_cd_m_avfid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object ctc_cd_m_avfid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
    end
    object ctc_cd_m_avfnom_fornecedor: TWideStringField
      FieldName = 'nom_fornecedor'
      Size = 50
    end
    object ctc_cd_m_avfdoc_cnpj: TWideStringField
      FieldName = 'doc_cnpj'
      Size = 14
    end
    object ctc_cd_m_avfperg_01: TBooleanField
      FieldName = 'perg_01'
    end
    object ctc_cd_m_avfperg_02: TBooleanField
      FieldName = 'perg_02'
    end
    object ctc_cd_m_avfperg_03: TBooleanField
      FieldName = 'perg_03'
    end
    object ctc_cd_m_avfperg_04: TBooleanField
      FieldName = 'perg_04'
    end
    object ctc_cd_m_avfcriterio_01: TFloatField
      FieldName = 'criterio_01'
    end
    object ctc_cd_m_avfcriterio_02: TFloatField
      FieldName = 'criterio_02'
    end
    object ctc_cd_m_avfcriterio_03: TFloatField
      FieldName = 'criterio_03'
    end
    object ctc_cd_m_avfcriterio_04: TFloatField
      FieldName = 'criterio_04'
    end
    object ctc_cd_m_avfcriterio_05: TFloatField
      FieldName = 'criterio_05'
    end
    object ctc_cd_m_avfcriterio_06: TFloatField
      FieldName = 'criterio_06'
    end
    object ctc_cd_m_avfcriterio_07: TFloatField
      FieldName = 'criterio_07'
    end
    object ctc_cd_m_avfpeso_01: TFloatField
      FieldName = 'peso_01'
    end
    object ctc_cd_m_avfpeso_02: TFloatField
      FieldName = 'peso_02'
    end
    object ctc_cd_m_avfpeso_03: TFloatField
      FieldName = 'peso_03'
    end
    object ctc_cd_m_avfpeso_04: TFloatField
      FieldName = 'peso_04'
    end
    object ctc_cd_m_avfpeso_05: TFloatField
      FieldName = 'peso_05'
    end
    object ctc_cd_m_avfpeso_06: TFloatField
      FieldName = 'peso_06'
    end
    object ctc_cd_m_avfpeso_07: TFloatField
      FieldName = 'peso_07'
    end
    object ctc_cd_m_avfobs: TWideStringField
      FieldName = 'obs'
      Size = 100
    end
    object ctc_cd_m_avfmedia: TFloatField
      FieldName = 'media'
    end
    object ctc_cd_m_avffor_aprovado: TBooleanField
      FieldName = 'for_aprovado'
    end
    object ctc_cd_m_avfcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object ctc_cd_m_avfrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object ctc_cd_m_avfint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
  end
  object ctc_cd_c_obr_eqp: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_c_obrctc_sq_c_obr_eqp
    Params = <>
    BeforeOpen = ctc_cd_c_obr_eqpBeforeOpen
    BeforePost = ctc_cd_c_obr_eqpBeforePost
    OnNewRecord = ctc_cd_c_obr_eqpNewRecord
    Left = 469
    Top = 95
    object ctc_cd_c_obr_eqpid_obra: TIntegerField
      FieldName = 'id_obra'
    end
    object ctc_cd_c_obr_eqpid_obra_seq: TIntegerField
      FieldName = 'id_obra_seq'
    end
    object ctc_cd_c_obr_eqpid_meq: TIntegerField
      FieldName = 'id_meq'
    end
    object ctc_cd_c_obr_eqpvalor: TFMTBCDField
      FieldName = 'valor'
      Precision = 18
      Size = 2
    end
    object ctc_cd_c_obr_eqpint_nome_eqp: TWideStringField
      FieldName = 'int_nome_eqp'
      ProviderFlags = []
      Size = 50
    end
    object ctc_cd_c_obr_eqpdta_ini_contrato: TDateField
      FieldName = 'dta_ini_contrato'
    end
    object ctc_cd_c_obr_eqpdta_fim_contrato: TDateField
      FieldName = 'dta_fim_contrato'
    end
    object ctc_cd_c_obr_eqpobs: TWideStringField
      FieldName = 'obs'
      Size = 80
    end
  end
  object ctc_cd_c_obr_crg: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_c_obrctc_sq_c_obr_crg
    Params = <>
    BeforeOpen = ctc_cd_c_obr_crgBeforeOpen
    BeforePost = ctc_cd_c_obr_crgBeforePost
    OnNewRecord = ctc_cd_c_obr_crgNewRecord
    Left = 469
    Top = 151
    object ctc_cd_c_obr_crgid_obra: TIntegerField
      FieldName = 'id_obra'
    end
    object ctc_cd_c_obr_crgid_cargo: TIntegerField
      FieldName = 'id_cargo'
    end
    object ctc_cd_c_obr_crgqtde_func: TIntegerField
      FieldName = 'qtde_func'
    end
    object ctc_cd_c_obr_crgvalor: TFMTBCDField
      FieldName = 'valor'
      Precision = 18
      Size = 2
    end
    object ctc_cd_c_obr_crgint_nome_crg: TWideStringField
      FieldName = 'int_nome_crg'
      ProviderFlags = []
      Size = 70
    end
    object ctc_cd_c_obr_crgdta_ini_contrato: TDateField
      FieldName = 'dta_ini_contrato'
    end
    object ctc_cd_c_obr_crgdta_fim_contrato: TDateField
      FieldName = 'dta_fim_contrato'
    end
    object ctc_cd_c_obr_crgobs: TWideStringField
      FieldName = 'obs'
      Size = 80
    end
    object ctc_cd_c_obr_crgid_obra_crg: TIntegerField
      FieldName = 'id_obra_crg'
    end
  end
  object ctc_cd_c_obr_ite: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_c_obrctc_sq_c_obr_ite
    Params = <>
    BeforeOpen = ctc_cd_c_obr_iteBeforeOpen
    BeforePost = ctc_cd_c_obr_iteBeforePost
    OnNewRecord = ctc_cd_c_obr_iteNewRecord
    Left = 576
    Top = 152
    object ctc_cd_c_obr_iteid_obra: TIntegerField
      FieldName = 'id_obra'
    end
    object ctc_cd_c_obr_iteid_obra_ite: TIntegerField
      FieldName = 'id_obra_ite'
    end
    object ctc_cd_c_obr_iteid_item: TIntegerField
      FieldName = 'id_item'
    end
    object ctc_cd_c_obr_itedta_ini_contrato: TDateField
      FieldName = 'dta_ini_contrato'
    end
    object ctc_cd_c_obr_itedta_fim_contrato: TDateField
      FieldName = 'dta_fim_contrato'
    end
    object ctc_cd_c_obr_iteobs: TWideStringField
      FieldName = 'obs'
      Size = 80
    end
    object ctc_cd_c_obr_itevalor: TFMTBCDField
      FieldName = 'valor'
      Precision = 18
      Size = 2
    end
    object ctc_cd_c_obr_iteint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object ctc_cd_c_obr_iteint_undvenda: TWideStringField
      FieldName = 'int_undvenda'
      ProviderFlags = []
      Size = 3
    end
  end
  object ctc_cd_m_bde_vrf: TClientDataSet
    Aggregates = <>
    DataSetField = ctc_cd_m_bdectc_sq_m_bde_vrf
    Params = <>
    Left = 56
    Top = 624
    object ctc_cd_m_bde_vrfid_bde: TIntegerField
      FieldName = 'id_bde'
    end
    object ctc_cd_m_bde_vrfid_verificacao: TIntegerField
      FieldName = 'id_verificacao'
    end
    object ctc_cd_m_bde_vrfpad_buz_funciona: TWideStringField
      FieldName = 'pad_buz_funciona'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_extintor_incendio: TWideStringField
      FieldName = 'pad_extintor_incendio'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_cinto_seguranca: TWideStringField
      FieldName = 'pad_verif_cinto_seguranca'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_veic_possui_mac: TWideStringField
      FieldName = 'pad_veic_possui_mac'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_veic_possui_chv_roda: TWideStringField
      FieldName = 'pad_veic_possui_chv_roda'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_veic_possui_mao_forca: TWideStringField
      FieldName = 'pad_veic_possui_mao_forca'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_veic_possui_triangulo: TWideStringField
      FieldName = 'pad_veic_possui_triangulo'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_veic_possui_martelo_mad: TWideStringField
      FieldName = 'pad_veic_possui_martelo_mad'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_sis_freio_funciona: TWideStringField
      FieldName = 'pad_sis_freio_funciona'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_ind_pres_oleo_funciona: TWideStringField
      FieldName = 'pad_ind_pres_oleo_funciona'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_drenagem_tanq_filtro: TWideStringField
      FieldName = 'pad_drenagem_tanq_filtro'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_pres_calib_pneus: TWideStringField
      FieldName = 'pad_verif_pres_calib_pneus'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_folga_rol_rosca_fim: TWideStringField
      FieldName = 'pad_verif_folga_rol_rosca_fim'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_feita_dren_baloes_ar: TWideStringField
      FieldName = 'pad_feita_dren_baloes_ar'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_estado_correias: TWideStringField
      FieldName = 'pad_verif_estado_correias'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_estado_maq_geral: TWideStringField
      FieldName = 'pad_verif_estado_maq_geral'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_feita_lubrif_ger_equip: TWideStringField
      FieldName = 'pad_feita_lubrif_ger_equip'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_equip_ise_vaz_hidraulico: TWideStringField
      FieldName = 'pad_equip_ise_vaz_hidraulico'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_nivel_agua_radiador: TWideStringField
      FieldName = 'pad_verif_nivel_agua_radiador'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_nivel_oleo_mot_hid_freio: TWideStringField
      FieldName = 'pad_verif_nivel_oleo_mot_hid_freio'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_conserv_polos_baterias: TWideStringField
      FieldName = 'pad_verif_conserv_polos_baterias'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_filtro_ar_cabine: TWideStringField
      FieldName = 'pad_verif_filtro_ar_cabine'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_instalacao_instrum_eletr: TWideStringField
      FieldName = 'pad_verif_instalacao_instrum_eletr'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_estado_vidragem_ger: TWideStringField
      FieldName = 'pad_verif_estado_vidragem_ger'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_doc_equip: TWideStringField
      FieldName = 'pad_verif_doc_equip'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_verif_estado_mat_rodante: TWideStringField
      FieldName = 'pad_verif_estado_mat_rodante'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_ha_vazamento_oleo_combust: TWideStringField
      FieldName = 'pad_ha_vazamento_oleo_combust'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_maq_kit_mitigacao: TWideStringField
      FieldName = 'pad_maq_kit_mitigacao'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpad_maq_ruid_excess: TWideStringField
      FieldName = 'pad_maq_ruid_excess'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpneu_isento_picotamento: TWideStringField
      FieldName = 'pneu_isento_picotamento'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpneu_livre_corte_lateral: TWideStringField
      FieldName = 'pneu_livre_corte_lateral'
      Size = 1
    end
    object ctc_cd_m_bde_vrfpneu_banda_rol_isenta_solt: TWideStringField
      FieldName = 'pneu_banda_rol_isenta_solt'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_p_lubrif_cruz_eixo_conjunto: TWideStringField
      FieldName = 'imple_p_lubrif_cruz_eixo_conjunto'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_p_bord_tom_isenta_vazam: TWideStringField
      FieldName = 'imple_p_bord_tom_isenta_vazam'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_p_verif_niv_oleo_cxa_mult: TWideStringField
      FieldName = 'imple_p_verif_niv_oleo_cxa_mult'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_p_verif_corr_gax_bomba: TWideStringField
      FieldName = 'imple_p_verif_corr_gax_bomba'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_p_algum_vaz_tanq_trans_ag: TWideStringField
      FieldName = 'imple_p_algum_vaz_tanq_trans_ag'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_b_verif_niv_oleo_hid_basc: TWideStringField
      FieldName = 'imple_b_verif_niv_oleo_hid_basc'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_b_sis_hid_isento_vaz: TWideStringField
      FieldName = 'imple_b_sis_hid_isento_vaz'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_b_lub_pin_cilin_cruz_tom: TWideStringField
      FieldName = 'imple_b_lub_pin_cilin_cruz_tom'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_m_verif_niv_oleo_mot_comp: TWideStringField
      FieldName = 'imple_m_verif_niv_oleo_mot_comp'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_m_drenag_reserv_ar_comp: TWideStringField
      FieldName = 'imple_m_drenag_reserv_ar_comp'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_m_prop_j_v_c_tub_isento_vaz: TWideStringField
      FieldName = 'imple_m_prop_j_v_c_tub_isento_vaz'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_m_lub_ger_grax: TWideStringField
      FieldName = 'imple_m_lub_ger_grax'
      Size = 1
    end
    object ctc_cd_m_bde_vrfimple_m_verif_corr_acopl_sis: TWideStringField
      FieldName = 'imple_m_verif_corr_acopl_sis'
      Size = 1
    end
  end
end
