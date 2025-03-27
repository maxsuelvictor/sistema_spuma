object dmSgq: TdmSgq
  OldCreateOrder = False
  Height = 1321
  Width = 945
  object PCP_CD_C_CDR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CDR'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_CDRBeforePost
    OnNewRecord = PCP_CD_C_CDRNewRecord
    Left = 35
    Top = 64
    object PCP_CD_C_CDRid_cdr: TIntegerField
      FieldName = 'id_cdr'
    end
    object PCP_CD_C_CDRid_grupo: TWideStringField
      FieldName = 'id_grupo'
      Size = 11
    end
    object PCP_CD_C_CDRid_cor_grupo: TIntegerField
      FieldName = 'id_cor_grupo'
    end
    object PCP_CD_C_CDRtipo_cadarco: TIntegerField
      FieldName = 'tipo_cadarco'
    end
    object PCP_CD_C_CDRid_cor_cadarco: TIntegerField
      FieldName = 'id_cor_cadarco'
    end
    object PCP_CD_C_CDRint_nomegru: TWideStringField
      FieldName = 'int_nomegru'
      ProviderFlags = []
      Size = 30
    end
    object PCP_CD_C_CDRint_nomecoc: TWideStringField
      FieldName = 'int_nomecoc'
      ProviderFlags = []
      Size = 40
    end
    object PCP_CD_C_CDRint_nomecog: TWideStringField
      FieldName = 'int_nomecog'
      ProviderFlags = []
      Size = 40
    end
    object PCP_CD_C_CDRcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_CDRrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_CNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CNF'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_CNFBeforePost
    OnNewRecord = PCP_CD_C_CNFNewRecord
    Left = 35
    Top = 208
    object PCP_CD_C_CNFid_conformidade: TIntegerField
      FieldName = 'id_conformidade'
    end
    object PCP_CD_C_CNFdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object PCP_CD_C_CNFcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_CNFrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_DIS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_DIS'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_DISBeforePost
    OnNewRecord = PCP_CD_C_DISNewRecord
    Left = 35
    Top = 160
    object PCP_CD_C_DISid_dis: TIntegerField
      FieldName = 'id_dis'
    end
    object PCP_CD_C_DISdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 80
    end
    object PCP_CD_C_DIScod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_DISrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_ESP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_ESP'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_ESPBeforePost
    OnNewRecord = PCP_CD_C_ESPNewRecord
    Left = 35
    Top = 256
    object PCP_CD_C_ESPid_especificacao: TIntegerField
      FieldName = 'id_especificacao'
    end
    object PCP_CD_C_ESPdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object PCP_CD_C_ESPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_ESPrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_LME: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'PCP_DP_C_LME'
    RemoteServer = dmGeral.pcConecao
    OnNewRecord = PCP_CD_C_LMENewRecord
    Left = 35
    Top = 304
    object PCP_CD_C_LMEid_lme: TIntegerField
      FieldName = 'id_lme'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LMEdata: TDateField
      FieldName = 'data'
    end
    object PCP_CD_C_LMEid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object PCP_CD_C_LMEobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object PCP_CD_C_LMEPCP_SQ_C_LME_DOC: TDataSetField
      FieldName = 'PCP_SQ_C_LME_DOC'
    end
    object PCP_CD_C_LMEcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_LMErev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
    object PCP_CD_C_LMEint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
  end
  object PCP_CD_C_LME_DOC: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_C_LMEPCP_SQ_C_LME_DOC
    IndexFieldNames = 'codigo'
    Params = <>
    OnNewRecord = PCP_CD_C_LME_DOCNewRecord
    Left = 424
    Top = 255
    object PCP_CD_C_LME_DOCid_lme: TIntegerField
      FieldName = 'id_lme'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DOCid_lme_d: TIntegerField
      FieldName = 'id_lme_d'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DOCid_tlm: TIntegerField
      FieldName = 'id_tlm'
    end
    object PCP_CD_C_LME_DOCorigem: TIntegerField
      FieldName = 'origem'
    end
    object PCP_CD_C_LME_DOCdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object PCP_CD_C_LME_DOCcodigo: TWideStringField
      FieldName = 'codigo'
      OnChange = PCP_CD_C_LME_DOCcodigoChange
    end
    object PCP_CD_C_LME_DOCrevisao: TWideStringField
      FieldName = 'revisao'
      Size = 5
    end
    object PCP_CD_C_LME_DOCdata_aprovacao: TDateField
      FieldName = 'data_aprovacao'
    end
    object PCP_CD_C_LME_DOCdistribuicao_tipo: TIntegerField
      FieldName = 'distribuicao_tipo'
    end
    object PCP_CD_C_LME_DOCobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 100
    end
    object PCP_CD_C_LME_DOCPCP_SQ_C_LME_DPG: TDataSetField
      FieldName = 'PCP_SQ_C_LME_DPG'
    end
    object PCP_CD_C_LME_DOCPCP_SQ_C_LME_DRV: TDataSetField
      FieldName = 'PCP_SQ_C_LME_DRV'
    end
    object PCP_CD_C_LME_DOCPCP_SQ_C_LME_DRP: TDataSetField
      FieldName = 'PCP_SQ_C_LME_DRP'
    end
    object PCP_CD_C_LME_DOCid_setor: TIntegerField
      FieldName = 'id_setor'
    end
  end
  object PCP_CD_C_LME_DRV: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_C_LME_DOCPCP_SQ_C_LME_DRV
    Params = <>
    OnNewRecord = PCP_CD_C_LME_DRVNewRecord
    Left = 424
    Top = 160
    object PCP_CD_C_LME_DRVid_lme: TIntegerField
      FieldName = 'id_lme'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DRVid_lme_d: TIntegerField
      FieldName = 'id_lme_d'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DRVid_lme_dv: TIntegerField
      FieldName = 'id_lme_dv'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DRVdata_revisao: TDateField
      FieldName = 'data_revisao'
    end
    object PCP_CD_C_LME_DRVrevisao: TIntegerField
      FieldName = 'revisao'
    end
    object PCP_CD_C_LME_DRVhistorico_alteracao: TWideStringField
      FieldName = 'historico_alteracao'
      Size = 200
    end
  end
  object PCP_CD_C_LME_DRP: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_C_LME_DOCPCP_SQ_C_LME_DRP
    Params = <>
    OnNewRecord = PCP_CD_C_LME_DRPNewRecord
    Left = 424
    Top = 304
    object PCP_CD_C_LME_DRPid_lme: TIntegerField
      FieldName = 'id_lme'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DRPid_lme_d: TIntegerField
      FieldName = 'id_lme_d'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DRPid_lme_dr: TIntegerField
      FieldName = 'id_lme_dr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DRPdata: TDateField
      FieldName = 'data'
    end
    object PCP_CD_C_LME_DRPsituacao: TWideStringField
      FieldName = 'situacao'
      Size = 200
    end
  end
  object PCP_CD_C_LME_DPG: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_C_LME_DOCPCP_SQ_C_LME_DPG
    Params = <>
    RemoteServer = dmGeral.pcConecao
    OnNewRecord = PCP_CD_C_LME_DPGNewRecord
    Left = 424
    Top = 208
    object PCP_CD_C_LME_DPGid_lme: TIntegerField
      FieldName = 'id_lme'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DPGid_lme_d: TIntegerField
      FieldName = 'id_lme_d'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DPGid_lme_dp: TIntegerField
      FieldName = 'id_lme_dp'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_LME_DPGdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object PCP_CD_C_LME_DPGnome_formulario: TWideStringField
      FieldName = 'nome_formulario'
      Size = 40
    end
    object PCP_CD_C_LME_DPGint_nomeprg: TWideStringField
      FieldName = 'int_nomeprg'
      ProviderFlags = []
      Size = 100
    end
  end
  object BUS_DP_C_ESP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_ESP'
    RemoteServer = dmGeral.pcConecao
    Left = 288
    Top = 255
    object BUS_DP_C_ESPid_especificacao: TIntegerField
      FieldName = 'id_especificacao'
    end
    object BUS_DP_C_ESPdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object BUS_DP_C_ESPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_DP_C_ESPrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_PRQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_PRQ'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_PRQBeforePost
    OnNewRecord = PCP_CD_C_PRQNewRecord
    Left = 35
    Top = 352
    object PCP_CD_C_PRQid_prq: TIntegerField
      FieldName = 'id_prq'
    end
    object PCP_CD_C_PRQid_grupo: TWideStringField
      FieldName = 'id_grupo'
      Size = 11
    end
    object PCP_CD_C_PRQid_item: TIntegerField
      FieldName = 'id_item'
    end
    object PCP_CD_C_PRQid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object PCP_CD_C_PRQdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object PCP_CD_C_PRQPCP_SQ_C_PRQ_ESP: TDataSetField
      FieldName = 'PCP_SQ_C_PRQ_ESP'
    end
    object PCP_CD_C_PRQint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object PCP_CD_C_PRQint_nomegru: TWideStringField
      FieldName = 'int_nomegru'
      ProviderFlags = []
      Size = 30
    end
    object PCP_CD_C_PRQint_nomefun: TWideStringField
      FieldName = 'int_nomefun'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_PRQcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_PRQrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_PRQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_PRQ'
    RemoteServer = dmGeral.pcConecao
    Left = 291
    Top = 352
    object BUS_CD_C_PRQid_prq: TIntegerField
      FieldName = 'id_prq'
    end
    object BUS_CD_C_PRQid_grupo: TWideStringField
      FieldName = 'id_grupo'
      Size = 11
    end
    object BUS_CD_C_PRQid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_C_PRQid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object BUS_CD_C_PRQdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object BUS_CD_C_PRQPCP_SQ_C_PRQ_ESP: TDataSetField
      FieldName = 'PCP_SQ_C_PRQ_ESP'
    end
    object BUS_CD_C_PRQint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      Size = 100
    end
    object BUS_CD_C_PRQint_nomegru: TWideStringField
      FieldName = 'int_nomegru'
      Size = 30
    end
    object BUS_CD_C_PRQint_nomefun: TWideStringField
      FieldName = 'int_nomefun'
      Size = 50
    end
    object BUS_CD_C_PRQcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_PRQrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_PRQ_ESP: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_C_PRQPCP_SQ_C_PRQ_ESP
    Params = <>
    OnNewRecord = PCP_CD_C_PRQ_ESPNewRecord
    Left = 163
    Top = 352
    object PCP_CD_C_PRQ_ESPid_prq: TIntegerField
      FieldName = 'id_prq'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_PRQ_ESPid_prq_esp: TIntegerField
      FieldName = 'id_prq_esp'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_PRQ_ESPverif_texto: TWideStringField
      FieldName = 'verif_texto'
      Size = 80
    end
    object PCP_CD_C_PRQ_ESPverif_minimo: TWideStringField
      FieldName = 'verif_minimo'
      Size = 15
    end
    object PCP_CD_C_PRQ_ESPvefif_maximo: TWideStringField
      FieldName = 'vefif_maximo'
      Size = 15
    end
    object PCP_CD_C_PRQ_ESPverif_metodo: TWideStringField
      FieldName = 'verif_metodo'
      Size = 80
    end
    object PCP_CD_C_PRQ_ESPamostragem: TWideStringField
      FieldName = 'amostragem'
      Size = 80
    end
    object PCP_CD_C_PRQ_ESPmanuseio_transp: TWideStringField
      FieldName = 'manuseio_transp'
      Size = 80
    end
    object PCP_CD_C_PRQ_ESParmazenamento: TWideStringField
      FieldName = 'armazenamento'
      Size = 80
    end
    object PCP_CD_C_PRQ_ESPpreservacao: TWideStringField
      FieldName = 'preservacao'
      Size = 80
    end
    object PCP_CD_C_PRQ_ESPid_especificacao: TIntegerField
      FieldName = 'id_especificacao'
    end
    object PCP_CD_C_PRQ_ESPint_nomeesp: TWideStringField
      FieldName = 'int_nomeesp'
      ProviderFlags = []
      Size = 50
    end
  end
  object PCP_CD_C_CDP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CDP'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = PCP_CD_C_CDPBeforeOpen
    BeforePost = PCP_CD_C_CDPBeforePost
    OnNewRecord = PCP_CD_C_CDPNewRecord
    Left = 35
    Top = 400
    object PCP_CD_C_CDPid_item: TIntegerField
      FieldName = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_CDPdta_lancamento: TDateField
      FieldName = 'dta_lancamento'
    end
    object PCP_CD_C_CDPmed_comp_01: TFloatField
      FieldName = 'med_comp_01'
    end
    object PCP_CD_C_CDPmed_comp_02: TFloatField
      FieldName = 'med_comp_02'
    end
    object PCP_CD_C_CDPmed_comp_03: TFloatField
      FieldName = 'med_comp_03'
    end
    object PCP_CD_C_CDPmed_comp_media: TFloatField
      FieldName = 'med_comp_media'
    end
    object PCP_CD_C_CDPmed_largura_01: TFloatField
      FieldName = 'med_largura_01'
    end
    object PCP_CD_C_CDPmed_largura_02: TFloatField
      FieldName = 'med_largura_02'
    end
    object PCP_CD_C_CDPmed_largura_03: TFloatField
      FieldName = 'med_largura_03'
    end
    object PCP_CD_C_CDPmed_largura_media: TFloatField
      FieldName = 'med_largura_media'
    end
    object PCP_CD_C_CDPmed_altura_01: TFloatField
      FieldName = 'med_altura_01'
    end
    object PCP_CD_C_CDPmed_altura_02: TFloatField
      FieldName = 'med_altura_02'
    end
    object PCP_CD_C_CDPmed_altura_03: TFloatField
      FieldName = 'med_altura_03'
    end
    object PCP_CD_C_CDPmed_altura_media: TFloatField
      FieldName = 'med_altura_media'
    end
    object PCP_CD_C_CDPsituacao: TBooleanField
      FieldName = 'situacao'
    end
    object PCP_CD_C_CDPint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object PCP_CD_C_CDPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_CDPrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_CDP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CDP'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 400
    object BUS_CD_C_CDPid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_C_CDPdta_lancamento: TDateField
      FieldName = 'dta_lancamento'
    end
    object BUS_CD_C_CDPmed_comp_01: TFloatField
      FieldName = 'med_comp_01'
    end
    object BUS_CD_C_CDPmed_comp_02: TFloatField
      FieldName = 'med_comp_02'
    end
    object BUS_CD_C_CDPmed_comp_03: TFloatField
      FieldName = 'med_comp_03'
    end
    object BUS_CD_C_CDPmed_comp_media: TFloatField
      FieldName = 'med_comp_media'
    end
    object BUS_CD_C_CDPmed_largura_01: TFloatField
      FieldName = 'med_largura_01'
    end
    object BUS_CD_C_CDPmed_largura_02: TFloatField
      FieldName = 'med_largura_02'
    end
    object BUS_CD_C_CDPmed_largura_03: TFloatField
      FieldName = 'med_largura_03'
    end
    object BUS_CD_C_CDPmed_largura_media: TFloatField
      FieldName = 'med_largura_media'
    end
    object BUS_CD_C_CDPmed_altura_01: TFloatField
      FieldName = 'med_altura_01'
    end
    object BUS_CD_C_CDPmed_altura_02: TFloatField
      FieldName = 'med_altura_02'
    end
    object BUS_CD_C_CDPmed_altura_03: TFloatField
      FieldName = 'med_altura_03'
    end
    object BUS_CD_C_CDPmed_altura_media: TFloatField
      FieldName = 'med_altura_media'
    end
    object BUS_CD_C_CDPsituacao: TBooleanField
      FieldName = 'situacao'
    end
    object BUS_CD_C_CDPint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_CDPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_CDPrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_MDE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_MDE'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_MDEBeforePost
    OnNewRecord = PCP_CD_C_MDENewRecord
    Left = 35
    Top = 445
    object PCP_CD_C_MDEid_mde: TIntegerField
      FieldName = 'id_mde'
    end
    object PCP_CD_C_MDEdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object PCP_CD_C_MDEcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_MDErev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_MEQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_MEQ'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = PCP_CD_C_MEQBeforeOpen
    BeforePost = PCP_CD_C_MEQBeforePost
    OnNewRecord = PCP_CD_C_MEQNewRecord
    Left = 35
    Top = 493
    object PCP_CD_C_MEQid_meq: TIntegerField
      FieldName = 'id_meq'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_MEQid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object PCP_CD_C_MEQcod_equipamento: TWideStringField
      FieldName = 'cod_equipamento'
      Size = 15
    end
    object PCP_CD_C_MEQdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object PCP_CD_C_MEQid_mde: TIntegerField
      FieldName = 'id_mde'
    end
    object PCP_CD_C_MEQid_fabricante: TIntegerField
      FieldName = 'id_fabricante'
    end
    object PCP_CD_C_MEQnro_serie: TWideStringField
      FieldName = 'nro_serie'
    end
    object PCP_CD_C_MEQdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object PCP_CD_C_MEQdta_compra: TDateField
      FieldName = 'dta_compra'
    end
    object PCP_CD_C_MEQnumero_nf: TIntegerField
      FieldName = 'numero_nf'
    end
    object PCP_CD_C_MEQgara_validade: TDateField
      FieldName = 'gara_validade'
    end
    object PCP_CD_C_MEQgara_existe: TBooleanField
      FieldName = 'gara_existe'
    end
    object PCP_CD_C_MEQid_resp_lancto: TIntegerField
      FieldName = 'id_resp_lancto'
    end
    object PCP_CD_C_MEQtipo_mei: TIntegerField
      FieldName = 'tipo_mei'
    end
    object PCP_CD_C_MEQcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_MEQrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
    object PCP_CD_C_MEQid_setor: TIntegerField
      FieldName = 'id_setor'
    end
    object PCP_CD_C_MEQint_nomemde: TWideStringField
      FieldName = 'int_nomemde'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_MEQint_nomefab: TWideStringField
      FieldName = 'int_nomefab'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_MEQint_nomefuc: TWideStringField
      FieldName = 'int_nomefuc'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_MEQint_nomeset: TWideStringField
      FieldName = 'int_nomeset'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_MEQvlr_aquisicao: TFMTBCDField
      FieldName = 'vlr_aquisicao'
      Precision = 18
      Size = 4
    end
    object PCP_CD_C_MEQnome_fabricante: TWideStringField
      FieldName = 'nome_fabricante'
      Size = 60
    end
    object PCP_CD_C_MEQvlr_hora: TFMTBCDField
      FieldName = 'vlr_hora'
      Precision = 18
      Size = 2
    end
    object PCP_CD_C_MEQvlr_comissao: TFMTBCDField
      FieldName = 'vlr_comissao'
      Precision = 18
      Size = 2
    end
    object PCP_CD_C_MEQid_placa: TWideStringField
      FieldName = 'id_placa'
      Size = 8
    end
    object PCP_CD_C_MEQkm_aquisicao: TFloatField
      FieldName = 'km_aquisicao'
    end
    object PCP_CD_C_MEQdta_aquisicao: TDateField
      FieldName = 'dta_aquisicao'
    end
    object PCP_CD_C_MEQkm_atual: TFloatField
      FieldName = 'km_atual'
    end
    object PCP_CD_C_MEQchassi: TWideStringField
      FieldName = 'chassi'
    end
    object PCP_CD_C_MEQano_modelo: TWideStringField
      FieldName = 'ano_modelo'
      Size = 4
    end
    object PCP_CD_C_MEQano_fabricacao: TWideStringField
      FieldName = 'ano_fabricacao'
      Size = 4
    end
    object PCP_CD_C_MEQrenavam: TWideStringField
      FieldName = 'renavam'
    end
    object PCP_CD_C_MEQalimentacao: TIntegerField
      FieldName = 'alimentacao'
    end
    object PCP_CD_C_MEQcombustivel: TIntegerField
      FieldName = 'combustivel'
    end
    object PCP_CD_C_MEQmotor: TWideStringField
      FieldName = 'motor'
      Size = 11
    end
    object PCP_CD_C_MEQmotor_num: TWideStringField
      FieldName = 'motor_num'
    end
    object PCP_CD_C_MEQrastreado: TBooleanField
      FieldName = 'rastreado'
    end
    object PCP_CD_C_MEQtipo: TIntegerField
      FieldName = 'tipo'
    end
    object PCP_CD_C_MEQstatus: TIntegerField
      FieldName = 'status'
    end
    object PCP_CD_C_MEQid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object PCP_CD_C_MEQmedia_consumo: TFloatField
      FieldName = 'media_consumo'
    end
    object PCP_CD_C_MEQeqp_terceiro: TBooleanField
      FieldName = 'eqp_terceiro'
    end
    object PCP_CD_C_MEQtipo_rodado: TSmallintField
      FieldName = 'tipo_rodado'
    end
    object PCP_CD_C_MEQtipo_carroceria: TSmallintField
      FieldName = 'tipo_carroceria'
    end
    object PCP_CD_C_MEQcap_veiculo: TFloatField
      FieldName = 'cap_veiculo'
    end
    object PCP_CD_C_MEQtara: TFloatField
      FieldName = 'tara'
    end
    object PCP_CD_C_MEQuf_licenciado: TWideStringField
      FieldName = 'uf_licenciado'
      Size = 2
    end
  end
  object PCP_CD_C_PRP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_PRP'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_PRPBeforePost
    OnNewRecord = PCP_CD_C_PRPNewRecord
    Left = 35
    Top = 925
    object PCP_CD_C_PRPid_prp: TIntegerField
      FieldName = 'id_prp'
    end
    object PCP_CD_C_PRPid_grupo: TWideStringField
      FieldName = 'id_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 11
    end
    object PCP_CD_C_PRPid_item: TIntegerField
      FieldName = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_PRPcaract_inspecionada: TWideStringField
      FieldName = 'caract_inspecionada'
      Size = 300
    end
    object PCP_CD_C_PRPcriterio_aceitacao: TWideStringField
      FieldName = 'criterio_aceitacao'
      Size = 500
    end
    object PCP_CD_C_PRPmetodo_verificacao: TWideStringField
      FieldName = 'metodo_verificacao'
      Size = 500
    end
    object PCP_CD_C_PRPamostragem: TWideStringField
      FieldName = 'amostragem'
      Size = 500
    end
    object PCP_CD_C_PRPmanuseio_transporte: TWideStringField
      FieldName = 'manuseio_transporte'
      Size = 500
    end
    object PCP_CD_C_PRParmazenamento: TWideStringField
      FieldName = 'armazenamento'
      Size = 500
    end
    object PCP_CD_C_PRPpreservacao: TWideStringField
      FieldName = 'preservacao'
      Size = 500
    end
    object PCP_CD_C_PRPint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object PCP_CD_C_PRPint_nomegru: TWideStringField
      FieldName = 'int_nomegru'
      ProviderFlags = []
      Size = 30
    end
    object PCP_CD_C_PRPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_PRPrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_PRP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_PRP'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 925
    object BUS_CD_C_PRPid_grupo: TWideStringField
      FieldName = 'id_grupo'
      Size = 11
    end
    object BUS_CD_C_PRPid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_C_PRPcaract_inspecionada: TWideStringField
      FieldName = 'caract_inspecionada'
      Size = 300
    end
    object BUS_CD_C_PRPcriterio_aceitacao: TWideStringField
      FieldName = 'criterio_aceitacao'
      Size = 500
    end
    object BUS_CD_C_PRPmetodo_verificacao: TWideStringField
      FieldName = 'metodo_verificacao'
      Size = 500
    end
    object BUS_CD_C_PRPamostragem: TWideStringField
      FieldName = 'amostragem'
      Size = 500
    end
    object BUS_CD_C_PRPmanuseio_transporte: TWideStringField
      FieldName = 'manuseio_transporte'
      Size = 500
    end
    object BUS_CD_C_PRParmazenamento: TWideStringField
      FieldName = 'armazenamento'
      Size = 500
    end
    object BUS_CD_C_PRPpreservacao: TWideStringField
      FieldName = 'preservacao'
      Size = 500
    end
    object BUS_CD_C_PRPint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_PRPint_nomegru: TWideStringField
      FieldName = 'int_nomegru'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_C_PRPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_PRPrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_C_PRPid_prp: TIntegerField
      FieldName = 'id_prp'
    end
  end
  object BUS_CD_C_ESP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_ESP'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 256
    object BUS_CD_C_ESPid_especificacao: TIntegerField
      FieldName = 'id_especificacao'
    end
    object BUS_CD_C_ESPdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object BUS_CD_C_ESPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_ESPrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_DIS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_DIS'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 160
    object BUS_CD_C_DISid_dis: TIntegerField
      FieldName = 'id_dis'
    end
    object BUS_CD_C_DISdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 80
    end
    object BUS_CD_C_DIScod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_DISrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_ORI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_ORI'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_ORIBeforePost
    OnNewRecord = PCP_CD_C_ORINewRecord
    Left = 35
    Top = 16
    object PCP_CD_C_ORIid_ori: TIntegerField
      FieldName = 'id_ori'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_ORIdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object PCP_CD_C_ORIcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_ORIrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_ORI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_ORI'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 16
    object BUS_CD_C_ORIid_ori: TIntegerField
      FieldName = 'id_ori'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BUS_CD_C_ORIdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object BUS_CD_C_ORIcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_ORIrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_CDR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CRG'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 64
    object BUS_CD_C_CDRid_cargo: TIntegerField
      FieldName = 'id_cargo'
    end
    object BUS_CD_C_CDRid_setor: TIntegerField
      FieldName = 'id_setor'
    end
    object BUS_CD_C_CDRdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object BUS_CD_C_CDRobjetivo_cargo: TWideStringField
      FieldName = 'objetivo_cargo'
      Size = 200
    end
    object BUS_CD_C_CDRatribuicoes: TWideStringField
      FieldName = 'atribuicoes'
      Size = 300
    end
    object BUS_CD_C_CDRrequisitos: TWideStringField
      FieldName = 'requisitos'
      Size = 500
    end
    object BUS_CD_C_CDRdata_aprovacao: TDateField
      FieldName = 'data_aprovacao'
    end
    object BUS_CD_C_CDRint_nomeset: TWideStringField
      FieldName = 'int_nomeset'
      Size = 50
    end
    object BUS_CD_C_CDRaprovador: TWideStringField
      FieldName = 'aprovador'
      Size = 50
    end
    object BUS_CD_C_CDRtipo: TIntegerField
      FieldName = 'tipo'
    end
    object BUS_CD_C_CDRcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_CDRrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_CNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CNF'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 208
    object BUS_CD_C_CNFid_conformidade: TIntegerField
      FieldName = 'id_conformidade'
    end
    object BUS_CD_C_CNFdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object BUS_CD_C_CNFcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_CNFrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_CIN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CIN'
    RemoteServer = dmGeral.pcConecao
    OnNewRecord = PCP_CD_C_CINNewRecord
    Left = 35
    Top = 685
    object PCP_CD_C_CINid_cin: TIntegerField
      FieldName = 'id_cin'
    end
    object PCP_CD_C_CINid_ins: TIntegerField
      FieldName = 'id_ins'
    end
    object PCP_CD_C_CINrequer_calibracao: TIntegerField
      FieldName = 'requer_calibracao'
    end
    object PCP_CD_C_CINsituacao_instrumento: TIntegerField
      FieldName = 'situacao_instrumento'
    end
    object PCP_CD_C_CINcert_erro_admissivel: TWideStringField
      FieldName = 'cert_erro_admissivel'
    end
    object PCP_CD_C_CINcert_num: TWideStringField
      FieldName = 'cert_num'
    end
    object PCP_CD_C_CINcert_id_fornecedor: TIntegerField
      FieldName = 'cert_id_fornecedor'
    end
    object PCP_CD_C_CINcert_id_resp_inspecao: TIntegerField
      FieldName = 'cert_id_resp_inspecao'
    end
    object PCP_CD_C_CINcert_dta_verificacao: TDateField
      FieldName = 'cert_dta_verificacao'
    end
    object PCP_CD_C_CINnum_seq: TIntegerField
      FieldName = 'num_seq'
    end
    object PCP_CD_C_CINtr_sit_encosto: TIntegerField
      FieldName = 'tr_sit_encosto'
    end
    object PCP_CD_C_CINtr_sit_funcionamento: TIntegerField
      FieldName = 'tr_sit_funcionamento'
    end
    object PCP_CD_C_CINtr_sit_escala: TIntegerField
      FieldName = 'tr_sit_escala'
    end
    object PCP_CD_C_CINtr_sit_aspecto_geral: TIntegerField
      FieldName = 'tr_sit_aspecto_geral'
    end
    object PCP_CD_C_CINtr_sit_escala_padrao: TIntegerField
      FieldName = 'tr_sit_escala_padrao'
    end
    object PCP_CD_C_CINtr_resultado: TIntegerField
      FieldName = 'tr_resultado'
    end
    object PCP_CD_C_CINtr_sit_inspecao: TIntegerField
      FieldName = 'tr_sit_inspecao'
    end
    object PCP_CD_C_CINtr_id_resp_inspecao: TIntegerField
      FieldName = 'tr_id_resp_inspecao'
    end
    object PCP_CD_C_CINtr_dta_verificacao: TDateField
      FieldName = 'tr_dta_verificacao'
    end
    object PCP_CD_C_CINtr_reg_acao_tomada: TWideStringField
      FieldName = 'tr_reg_acao_tomada'
      Size = 200
    end
    object PCP_CD_C_CINcal_efet_frequencia: TWideStringField
      FieldName = 'cal_efet_frequencia'
      Size = 10
    end
    object PCP_CD_C_CINnumero_nfe: TIntegerField
      FieldName = 'numero_nfe'
    end
    object PCP_CD_C_CINhistorico_instrumento: TWideStringField
      FieldName = 'historico_instrumento'
      Size = 100
    end
    object PCP_CD_C_CINint_marca: TWideStringField
      FieldName = 'int_marca'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_CINint_serie: TWideStringField
      FieldName = 'int_serie'
      ProviderFlags = []
    end
    object PCP_CD_C_CINint_resolucao: TWideStringField
      FieldName = 'int_resolucao'
      ProviderFlags = []
      Size = 15
    end
    object PCP_CD_C_CINint_scala: TWideStringField
      FieldName = 'int_scala'
      ProviderFlags = []
    end
    object PCP_CD_C_CINint_denominacao: TWideStringField
      FieldName = 'int_denominacao'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_CINint_sigla: TWideStringField
      FieldName = 'int_sigla'
      ProviderFlags = []
    end
    object PCP_CD_C_CINint_modelo: TWideStringField
      FieldName = 'int_modelo'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_CINcal_efet_proxima: TDateField
      FieldName = 'cal_efet_proxima'
    end
    object PCP_CD_C_CINPCP_SQ_C_CIN_LNS: TDataSetField
      FieldName = 'PCP_SQ_C_CIN_LNS'
    end
    object PCP_CD_C_CINcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_CINrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_CIN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CIN'
    RemoteServer = dmGeral.pcConecao
    Left = 283
    Top = 685
    object BUS_CD_C_CINid_cin: TIntegerField
      FieldName = 'id_cin'
    end
    object BUS_CD_C_CINid_ins: TIntegerField
      FieldName = 'id_ins'
    end
    object BUS_CD_C_CINrequer_calibracao: TIntegerField
      FieldName = 'requer_calibracao'
    end
    object BUS_CD_C_CINsituacao_instrumento: TIntegerField
      FieldName = 'situacao_instrumento'
    end
    object BUS_CD_C_CINcert_erro_admissivel: TWideStringField
      FieldName = 'cert_erro_admissivel'
    end
    object BUS_CD_C_CINcert_num: TWideStringField
      FieldName = 'cert_num'
    end
    object BUS_CD_C_CINcert_id_fornecedor: TIntegerField
      FieldName = 'cert_id_fornecedor'
    end
    object BUS_CD_C_CINcert_id_resp_inspecao: TIntegerField
      FieldName = 'cert_id_resp_inspecao'
    end
    object BUS_CD_C_CINcert_dta_verificacao: TDateField
      FieldName = 'cert_dta_verificacao'
    end
    object BUS_CD_C_CINnum_seq: TIntegerField
      FieldName = 'num_seq'
    end
    object BUS_CD_C_CINtr_sit_encosto: TIntegerField
      FieldName = 'tr_sit_encosto'
    end
    object BUS_CD_C_CINtr_sit_funcionamento: TIntegerField
      FieldName = 'tr_sit_funcionamento'
    end
    object BUS_CD_C_CINtr_sit_escala: TIntegerField
      FieldName = 'tr_sit_escala'
    end
    object BUS_CD_C_CINtr_sit_aspecto_geral: TIntegerField
      FieldName = 'tr_sit_aspecto_geral'
    end
    object BUS_CD_C_CINtr_sit_escala_padrao: TIntegerField
      FieldName = 'tr_sit_escala_padrao'
    end
    object BUS_CD_C_CINtr_resultado: TIntegerField
      FieldName = 'tr_resultado'
    end
    object BUS_CD_C_CINtr_sit_inspecao: TIntegerField
      FieldName = 'tr_sit_inspecao'
    end
    object BUS_CD_C_CINtr_id_resp_inspecao: TIntegerField
      FieldName = 'tr_id_resp_inspecao'
    end
    object BUS_CD_C_CINtr_dta_verificacao: TDateField
      FieldName = 'tr_dta_verificacao'
    end
    object BUS_CD_C_CINtr_reg_acao_tomada: TWideStringField
      FieldName = 'tr_reg_acao_tomada'
      Size = 200
    end
    object BUS_CD_C_CINcal_efet_frequencia: TWideStringField
      FieldName = 'cal_efet_frequencia'
      Size = 10
    end
    object BUS_CD_C_CINnumero_nfe: TIntegerField
      FieldName = 'numero_nfe'
    end
    object BUS_CD_C_CINhistorico_instrumento: TWideStringField
      FieldName = 'historico_instrumento'
      Size = 100
    end
    object BUS_CD_C_CINint_marca: TWideStringField
      FieldName = 'int_marca'
      Size = 50
    end
    object BUS_CD_C_CINint_serie: TWideStringField
      FieldName = 'int_serie'
    end
    object BUS_CD_C_CINint_resolucao: TWideStringField
      FieldName = 'int_resolucao'
      Size = 15
    end
    object BUS_CD_C_CINint_scala: TWideStringField
      FieldName = 'int_scala'
    end
    object BUS_CD_C_CINint_denominacao: TWideStringField
      FieldName = 'int_denominacao'
      Size = 50
    end
    object BUS_CD_C_CINint_sigla: TWideStringField
      FieldName = 'int_sigla'
    end
    object BUS_CD_C_CINint_modelo: TWideStringField
      FieldName = 'int_modelo'
      Size = 50
    end
    object BUS_CD_C_CINcal_efet_proxima: TDateField
      FieldName = 'cal_efet_proxima'
    end
    object BUS_CD_C_CINcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_CINrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_C_CINPCP_SQ_C_CIN_LNS: TDataSetField
      FieldName = 'PCP_SQ_C_CIN_LNS'
    end
  end
  object BUS_CD_C_CIN_LNS: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = dmGeral.pcConecao
    Left = 403
    Top = 685
  end
  object PCP_CD_C_CIN_LNS: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_C_CINPCP_SQ_C_CIN_LNS
    Params = <>
    OnNewRecord = PCP_CD_C_CIN_LNSNewRecord
    Left = 163
    Top = 685
    object PCP_CD_C_CIN_LNSid_cin: TIntegerField
      FieldName = 'id_cin'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_CIN_LNSid_cin_lns: TIntegerField
      FieldName = 'id_cin_lns'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_CIN_LNSdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object PCP_CD_C_CIN_LNSid_setor: TIntegerField
      FieldName = 'id_setor'
    end
    object PCP_CD_C_CIN_LNStolerancia_processo: TWideStringField
      FieldName = 'tolerancia_processo'
      Size = 30
    end
    object PCP_CD_C_CIN_LNSfrequencia: TWideStringField
      FieldName = 'frequencia'
      Size = 15
    end
    object PCP_CD_C_CIN_LNSid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object PCP_CD_C_CIN_LNSint_nomeset: TWideStringField
      FieldName = 'int_nomeset'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_CIN_LNSint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
  end
  object PCP_CD_C_INS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_INS'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_INSBeforePost
    OnNewRecord = PCP_CD_C_INSNewRecord
    Left = 35
    Top = 589
    object PCP_CD_C_INSid_ins: TIntegerField
      FieldName = 'id_ins'
    end
    object PCP_CD_C_INSsigla: TWideStringField
      FieldName = 'sigla'
    end
    object PCP_CD_C_INSid_mde: TIntegerField
      FieldName = 'id_mde'
    end
    object PCP_CD_C_INSid_fabricante: TIntegerField
      FieldName = 'id_fabricante'
    end
    object PCP_CD_C_INSnro_serie: TWideStringField
      FieldName = 'nro_serie'
    end
    object PCP_CD_C_INSdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object PCP_CD_C_INSresolucao_menor_divisao: TWideStringField
      FieldName = 'resolucao_menor_divisao'
      Size = 15
    end
    object PCP_CD_C_INSid_tin: TIntegerField
      FieldName = 'id_tin'
    end
    object PCP_CD_C_INSscala: TWideStringField
      FieldName = 'scala'
    end
    object PCP_CD_C_INSgarantia: TBooleanField
      FieldName = 'garantia'
    end
    object PCP_CD_C_INSint_nomefab: TWideStringField
      FieldName = 'int_nomefab'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_INSint_nomemde: TWideStringField
      FieldName = 'int_nomemde'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_INSint_nometin: TWideStringField
      FieldName = 'int_nometin'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_INScod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_INSrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_TIN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_TIN'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_TINBeforePost
    OnNewRecord = PCP_CD_C_TINNewRecord
    Left = 35
    Top = 637
    object PCP_CD_C_TINid_tin: TIntegerField
      FieldName = 'id_tin'
    end
    object PCP_CD_C_TINdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object PCP_CD_C_TINcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_TINrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_TIN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_TIN'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 637
    object BUS_CD_C_TINid_tin: TIntegerField
      FieldName = 'id_tin'
    end
    object BUS_CD_C_TINdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object BUS_CD_C_TINcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_TINrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_ROT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_ROT'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_ROTBeforePost
    OnNewRecord = PCP_CD_C_ROTNewRecord
    Left = 35
    Top = 973
    object PCP_CD_C_ROTid_rota: TIntegerField
      FieldName = 'id_rota'
    end
    object PCP_CD_C_ROTdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object PCP_CD_C_ROTdis_inicial: TFloatField
      FieldName = 'dis_inicial'
    end
    object PCP_CD_C_ROTdis_final: TFloatField
      FieldName = 'dis_final'
    end
    object PCP_CD_C_ROTcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_ROTrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_TLM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_TLM'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_TLMBeforePost
    OnNewRecord = PCP_CD_C_TLMNewRecord
    Left = 35
    Top = 781
    object PCP_CD_C_TLMid_tlm: TIntegerField
      FieldName = 'id_tlm'
    end
    object PCP_CD_C_TLMdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 80
    end
    object PCP_CD_C_TLMcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_TLMrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_TLM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_TLM'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 781
    object BUS_CD_C_TLMid_tlm: TIntegerField
      FieldName = 'id_tlm'
    end
    object BUS_CD_C_TLMdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 80
    end
    object BUS_CD_C_TLMcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_TLMrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_MTA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_MTA'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_MTABeforePost
    OnNewRecord = PCP_CD_C_MTANewRecord
    Left = 35
    Top = 733
    object PCP_CD_C_MTAid_motorista: TIntegerField
      FieldName = 'id_motorista'
    end
    object PCP_CD_C_MTAnome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object PCP_CD_C_MTAplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object PCP_CD_C_MTAend_endereco: TWideStringField
      FieldName = 'end_endereco'
      Size = 50
    end
    object PCP_CD_C_MTAend_numero: TWideStringField
      FieldName = 'end_numero'
      Size = 10
    end
    object PCP_CD_C_MTAend_cidade: TWideStringField
      FieldName = 'end_cidade'
      Size = 30
    end
    object PCP_CD_C_MTAend_bairro: TWideStringField
      FieldName = 'end_bairro'
      Size = 30
    end
    object PCP_CD_C_MTAend_cep: TWideStringField
      FieldName = 'end_cep'
      Size = 9
    end
    object PCP_CD_C_MTAend_estado: TWideStringField
      FieldName = 'end_estado'
      Size = 2
    end
    object PCP_CD_C_MTAfone: TWideStringField
      FieldName = 'fone'
      Size = 14
    end
    object PCP_CD_C_MTAcelular: TWideStringField
      FieldName = 'celular'
      Size = 14
    end
    object PCP_CD_C_MTAemail: TWideStringField
      FieldName = 'email'
      Size = 80
    end
    object PCP_CD_C_MTAobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 100
    end
    object PCP_CD_C_MTAcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_MTArev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
    object PCP_CD_C_MTAdoc_cpf: TWideStringField
      FieldName = 'doc_cpf'
      Size = 11
    end
    object PCP_CD_C_MTAmob_id_empresa: TIntegerField
      FieldName = 'mob_id_empresa'
    end
    object PCP_CD_C_MTAmob_senha: TWideStringField
      FieldName = 'mob_senha'
      Size = 100
    end
    object PCP_CD_C_MTAmob_login: TWideStringField
      FieldName = 'mob_login'
      Size = 30
    end
    object PCP_CD_C_MTAfiliacao: TWideStringField
      FieldName = 'filiacao'
      Size = 100
    end
    object PCP_CD_C_MTAnome_contato_1: TWideStringField
      FieldName = 'nome_contato_1'
      Size = 50
    end
    object PCP_CD_C_MTAfone_contato_1: TWideStringField
      FieldName = 'fone_contato_1'
      Size = 14
    end
    object PCP_CD_C_MTAtipo_cnh: TWideStringField
      FieldName = 'tipo_cnh'
      Size = 10
    end
  end
  object BUS_CD_C_MTA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_MTA'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 733
    object IntegerField22: TIntegerField
      FieldName = 'id_motorista'
    end
    object WideStringField80: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object WideStringField81: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object WideStringField82: TWideStringField
      FieldName = 'end_endereco'
      Size = 50
    end
    object WideStringField83: TWideStringField
      FieldName = 'end_numero'
      Size = 10
    end
    object WideStringField84: TWideStringField
      FieldName = 'end_cidade'
      Size = 30
    end
    object WideStringField85: TWideStringField
      FieldName = 'end_bairro'
      Size = 30
    end
    object WideStringField86: TWideStringField
      FieldName = 'end_cep'
      Size = 9
    end
    object WideStringField87: TWideStringField
      FieldName = 'end_estado'
      Size = 2
    end
    object WideStringField88: TWideStringField
      FieldName = 'fone'
      Size = 14
    end
    object WideStringField89: TWideStringField
      FieldName = 'celular'
      Size = 14
    end
    object WideStringField90: TWideStringField
      FieldName = 'email'
      Size = 80
    end
    object WideStringField91: TWideStringField
      FieldName = 'observacao'
      Size = 100
    end
    object WideStringField92: TWideStringField
      FieldName = 'cod_lme'
    end
    object WideStringField93: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_C_MTAdoc_cpf: TWideStringField
      FieldName = 'doc_cpf'
      Size = 11
    end
    object BUS_CD_C_MTAfiliacao: TWideStringField
      FieldName = 'filiacao'
      Size = 100
    end
    object BUS_CD_C_MTAnome_contato_1: TWideStringField
      FieldName = 'nome_contato_1'
      Size = 50
    end
    object BUS_CD_C_MTAfone_contato_1: TWideStringField
      FieldName = 'fone_contato_1'
      Size = 14
    end
    object BUS_CD_C_MTAtipo_cnh: TWideStringField
      FieldName = 'tipo_cnh'
      Size = 10
    end
  end
  object BUS_CD_C_REG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_REG'
    RemoteServer = dmGeral.pcConecao
    Left = 411
    Top = 829
    object BUS_CD_C_REGid_regiao: TIntegerField
      FieldName = 'id_regiao'
    end
    object BUS_CD_C_REGdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object BUS_CD_C_REGid_rota: TIntegerField
      FieldName = 'id_rota'
    end
    object BUS_CD_C_REGint_nomerot: TWideStringField
      FieldName = 'int_nomerot'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_C_REGcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_REGrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_C_REGdesc_perc: TFloatField
      FieldName = 'desc_perc'
    end
    object BUS_CD_C_REGPCP_SQ_C_REG_ITE: TDataSetField
      FieldName = 'PCP_SQ_C_REG_ITE'
    end
    object BUS_CD_C_REGunifica_desc_reg: TBooleanField
      FieldName = 'unifica_desc_reg'
    end
  end
  object PCP_CD_C_REG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_REG'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_REGBeforePost
    OnNewRecord = PCP_CD_C_REGNewRecord
    Left = 283
    Top = 829
    object PCP_CD_C_REGid_regiao: TIntegerField
      FieldName = 'id_regiao'
    end
    object PCP_CD_C_REGdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object PCP_CD_C_REGid_rota: TIntegerField
      FieldName = 'id_rota'
    end
    object PCP_CD_C_REGint_nomerot: TWideStringField
      FieldName = 'int_nomerot'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_C_REGcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_REGrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
    object PCP_CD_C_REGdesc_perc: TFloatField
      FieldName = 'desc_perc'
    end
    object PCP_CD_C_REGPCP_SQ_C_REG_ITE: TDataSetField
      FieldName = 'PCP_SQ_C_REG_ITE'
    end
    object PCP_CD_C_REGunifica_desc_reg: TBooleanField
      FieldName = 'unifica_desc_reg'
    end
  end
  object PCP_CD_C_CUE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CUE'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_CUEBeforePost
    OnNewRecord = PCP_CD_C_CUENewRecord
    Left = 35
    Top = 541
    object PCP_CD_C_CUEid_cue: TIntegerField
      FieldName = 'id_cue'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_CUEdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 40
    end
  end
  object BUS_CD_C_CUE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CUE'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 541
    object BUS_CD_C_CUEid_cue: TIntegerField
      FieldName = 'id_cue'
    end
    object BUS_CD_C_CUEdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 40
    end
  end
  object PCP_CD_C_CLE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CLE'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_CLEBeforePost
    OnNewRecord = PCP_CD_C_CLENewRecord
    Left = 35
    Top = 877
    object PCP_CD_C_CLEid_cle: TIntegerField
      FieldName = 'id_cle'
    end
    object PCP_CD_C_CLEdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object BUS_CD_C_CLE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_CLE'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 877
    object BUS_CD_C_CLEid_cle: TIntegerField
      FieldName = 'id_cle'
    end
    object BUS_CD_C_CLEdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object PCP_CD_C_RPT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_RPT'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_RPTBeforePost
    OnNewRecord = PCP_CD_C_RPTNewRecord
    Left = 35
    Top = 1024
    object PCP_CD_C_RPTid_rpt: TIntegerField
      FieldName = 'id_rpt'
    end
    object PCP_CD_C_RPTdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object PCP_CD_C_RPTcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_RPTrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_RPT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_RPT'
    RemoteServer = dmGeral.pcConecao
    Left = 163
    Top = 1024
    object BUS_CD_C_RPTid_rpt: TIntegerField
      FieldName = 'id_rpt'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BUS_CD_C_RPTdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object BUS_CD_C_RPTcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_RPTrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_TPP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_TPP'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_TPPBeforePost
    OnNewRecord = PCP_CD_C_TPPNewRecord
    Left = 33
    Top = 1072
    object PCP_CD_C_TPPid_tpp: TIntegerField
      FieldName = 'id_tpp'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_TPPdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object PCP_CD_C_TPPPCP_SQ_C_TPP_SET: TDataSetField
      FieldName = 'PCP_SQ_C_TPP_SET'
    end
    object PCP_CD_C_TPPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_TPPrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object BUS_CD_C_TPP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_TPP'
    RemoteServer = dmGeral.pcConecao
    Left = 289
    Top = 1072
    object BUS_CD_C_TPPid_tpp: TIntegerField
      FieldName = 'id_tpp'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BUS_CD_C_TPPdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object BUS_CD_C_TPPPCP_SQ_C_TPP_SET: TDataSetField
      FieldName = 'PCP_SQ_C_TPP_SET'
    end
    object BUS_CD_C_TPPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_TPPrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
  end
  object PCP_CD_C_TPP_SET: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_C_TPPPCP_SQ_C_TPP_SET
    Params = <>
    OnNewRecord = PCP_CD_C_TPP_SETNewRecord
    Left = 161
    Top = 1072
    object PCP_CD_C_TPP_SETid_tpp: TIntegerField
      FieldName = 'id_tpp'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_TPP_SETid_setor: TIntegerField
      FieldName = 'id_setor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCP_CD_C_TPP_SETgera_estoque: TBooleanField
      FieldName = 'gera_estoque'
    end
    object PCP_CD_C_TPP_SETgrava_nro_lote: TBooleanField
      FieldName = 'grava_nro_lote'
    end
    object PCP_CD_C_TPP_SETgera_nro_lote: TBooleanField
      FieldName = 'gera_nro_lote'
    end
    object PCP_CD_C_TPP_SETexecuta_servico: TBooleanField
      FieldName = 'executa_servico'
    end
    object PCP_CD_C_TPP_SETint_nomeset: TWideStringField
      FieldName = 'int_nomeset'
      ProviderFlags = []
      Size = 50
    end
  end
  object PCP_CD_C_FTE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_FTE'
    RemoteServer = dmGeral.pcConecao
    BeforePost = PCP_CD_C_FTEBeforePost
    OnNewRecord = PCP_CD_C_FTENewRecord
    Left = 33
    Top = 1121
    object PCP_CD_C_FTEid_fte: TIntegerField
      FieldName = 'id_fte'
    end
    object PCP_CD_C_FTEcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_C_FTErev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
    object PCP_CD_C_FTErequisitos: TWideStringField
      FieldName = 'requisitos'
      Size = 300
    end
    object PCP_CD_C_FTEinf_contato: TWideStringField
      FieldName = 'inf_contato'
      Size = 80
    end
    object PCP_CD_C_FTEinf_remocao: TWideStringField
      FieldName = 'inf_remocao'
      Size = 80
    end
    object PCP_CD_C_FTEPCP_SQ_C_FTE_ETQ: TDataSetField
      FieldName = 'PCP_SQ_C_FTE_ETQ'
    end
    object PCP_CD_C_FTEinf_sac: TWideStringField
      FieldName = 'inf_sac'
      Size = 80
    end
  end
  object PCP_CD_C_FTE_ETQ: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_C_FTEPCP_SQ_C_FTE_ETQ
    Params = <>
    BeforePost = PCP_CD_C_FTE_ETQBeforePost
    OnNewRecord = PCP_CD_C_FTE_ETQNewRecord
    Left = 161
    Top = 1121
    object PCP_CD_C_FTE_ETQid_fte: TIntegerField
      FieldName = 'id_fte'
    end
    object PCP_CD_C_FTE_ETQid_fte_etq: TIntegerField
      FieldName = 'id_fte_etq'
    end
    object PCP_CD_C_FTE_ETQcod_int_etq: TWideStringField
      FieldName = 'cod_int_etq'
      Size = 10
    end
    object PCP_CD_C_FTE_ETQcod_int_etq_rev: TWideStringField
      FieldName = 'cod_int_etq_rev'
      Size = 5
    end
    object PCP_CD_C_FTE_ETQdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 60
    end
    object PCP_CD_C_FTE_ETQespecificacoes: TWideStringField
      FieldName = 'especificacoes'
      Size = 200
    end
    object PCP_CD_C_FTE_ETQimg_modelo: TBlobField
      FieldName = 'img_modelo'
    end
    object PCP_CD_C_FTE_ETQtexto_livre1: TWideStringField
      FieldName = 'texto_livre1'
      Size = 100
    end
    object PCP_CD_C_FTE_ETQtexto_livre2: TWideStringField
      FieldName = 'texto_livre2'
      Size = 100
    end
    object PCP_CD_C_FTE_ETQmodelo_etq: TIntegerField
      FieldName = 'modelo_etq'
    end
    object PCP_CD_C_FTE_ETQetq_tecnica: TBooleanField
      FieldName = 'etq_tecnica'
    end
  end
  object BUS_CD_M_FTE_ETQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_FTE_ETQ'
    RemoteServer = dmGeral.pcConecao
    Left = 289
    Top = 1121
    object BUS_CD_M_FTE_ETQcod_int_etq: TWideStringField
      FieldName = 'cod_int_etq'
      Size = 10
    end
    object BUS_CD_M_FTE_ETQcod_int_etq_rev: TWideStringField
      FieldName = 'cod_int_etq_rev'
      Size = 5
    end
    object BUS_CD_M_FTE_ETQdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 60
    end
    object BUS_CD_M_FTE_ETQespecificacoes: TWideStringField
      FieldName = 'especificacoes'
      Size = 200
    end
    object BUS_CD_M_FTE_ETQtexto_livre1: TWideStringField
      FieldName = 'texto_livre1'
      Size = 100
    end
    object BUS_CD_M_FTE_ETQtexto_livre2: TWideStringField
      FieldName = 'texto_livre2'
      Size = 100
    end
    object BUS_CD_M_FTE_ETQid_fte_etq: TIntegerField
      FieldName = 'id_fte_etq'
    end
    object BUS_CD_M_FTE_ETQid_fte: TIntegerField
      FieldName = 'id_fte'
    end
    object BUS_CD_M_FTE_ETQcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_M_FTE_ETQrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_M_FTE_ETQrequisitos: TWideStringField
      FieldName = 'requisitos'
      Size = 300
    end
    object BUS_CD_M_FTE_ETQinf_contato: TWideStringField
      FieldName = 'inf_contato'
      Size = 80
    end
    object BUS_CD_M_FTE_ETQinf_remocao: TWideStringField
      FieldName = 'inf_remocao'
      Size = 80
    end
    object BUS_CD_M_FTE_ETQinf_sac: TWideStringField
      FieldName = 'inf_sac'
      Size = 80
    end
    object BUS_CD_M_FTE_ETQetq_tecnica: TBooleanField
      FieldName = 'etq_tecnica'
    end
    object BUS_CD_M_FTE_ETQmodelo_etq: TIntegerField
      FieldName = 'modelo_etq'
    end
  end
  object BUS_DP_M_OPR_OPP_SOP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_OPR_OPP_SOP'
    RemoteServer = dmGeral.pcConecao
    Left = 784
    Top = 160
  end
  object PCP_CD_M_OPR_REQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_M_OPR_REQ'
    RemoteServer = dmGeral.pcConecao
    BeforeEdit = PCP_CD_M_OPR_REQBeforeEdit
    BeforePost = PCP_CD_M_OPR_REQBeforePost
    OnNewRecord = PCP_CD_M_OPR_REQNewRecord
    OnReconcileError = PCP_CD_M_OPR_REQReconcileError
    Left = 424
    Top = 360
    object PCP_CD_M_OPR_REQid_opr: TIntegerField
      FieldName = 'id_opr'
    end
    object PCP_CD_M_OPR_REQid_opr_req: TIntegerField
      FieldName = 'id_opr_req'
    end
    object PCP_CD_M_OPR_REQdta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object PCP_CD_M_OPR_REQid_funcionario_canc: TIntegerField
      FieldName = 'id_funcionario_canc'
    end
    object PCP_CD_M_OPR_REQdta_canc: TDateField
      FieldName = 'dta_canc'
    end
    object PCP_CD_M_OPR_REQhor_canc: TTimeField
      FieldName = 'hor_canc'
    end
    object PCP_CD_M_OPR_REQint_nomefuncanc: TWideStringField
      FieldName = 'int_nomefuncanc'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_M_OPR_REQid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object PCP_CD_M_OPR_REQPCP_SQ_M_OPR_REQ_ITE: TDataSetField
      FieldName = 'PCP_SQ_M_OPR_REQ_ITE'
    end
    object PCP_CD_M_OPR_REQcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_M_OPR_REQrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object PCP_CD_M_OPR_REQint_nomeresp: TWideStringField
      FieldName = 'int_nomeresp'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_M_OPR_REQcancelado: TBooleanField
      FieldName = 'cancelado'
    end
  end
  object PCP_CD_M_OPR_REQ_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_M_OPR_REQPCP_SQ_M_OPR_REQ_ITE
    Params = <>
    BeforePost = PCP_CD_M_OPR_REQ_ITEBeforePost
    OnNewRecord = PCP_CD_M_OPR_REQ_ITENewRecord
    OnReconcileError = PCP_CD_M_OPR_REQ_ITEReconcileError
    Left = 424
    Top = 408
    object PCP_CD_M_OPR_REQ_ITEid_opr: TIntegerField
      FieldName = 'id_opr'
    end
    object PCP_CD_M_OPR_REQ_ITEid_opr_req: TIntegerField
      FieldName = 'id_opr_req'
    end
    object PCP_CD_M_OPR_REQ_ITEid_opr_req_ite: TIntegerField
      FieldName = 'id_opr_req_ite'
    end
    object PCP_CD_M_OPR_REQ_ITEid_item: TIntegerField
      FieldName = 'id_item'
    end
    object PCP_CD_M_OPR_REQ_ITEid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object PCP_CD_M_OPR_REQ_ITEid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
    end
    object PCP_CD_M_OPR_REQ_ITEqtde: TFloatField
      FieldName = 'qtde'
    end
    object PCP_CD_M_OPR_REQ_ITEqtde_atendida: TFloatField
      FieldName = 'qtde_atendida'
    end
    object PCP_CD_M_OPR_REQ_ITEdta_canc: TDateField
      FieldName = 'dta_canc'
    end
    object PCP_CD_M_OPR_REQ_ITEhor_canc: TTimeField
      FieldName = 'hor_canc'
    end
    object PCP_CD_M_OPR_REQ_ITEid_funcionario_canc: TIntegerField
      FieldName = 'id_funcionario_canc'
    end
    object PCP_CD_M_OPR_REQ_ITEsituacao: TIntegerField
      FieldName = 'situacao'
    end
    object PCP_CD_M_OPR_REQ_ITEid_setor: TIntegerField
      FieldName = 'id_setor'
    end
    object PCP_CD_M_OPR_REQ_ITEint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object PCP_CD_M_OPR_REQ_ITEint_nomecor: TWideStringField
      FieldName = 'int_nomecor'
      ProviderFlags = []
      Size = 40
    end
    object PCP_CD_M_OPR_REQ_ITEint_nometam: TWideStringField
      FieldName = 'int_nometam'
      ProviderFlags = []
      Size = 40
    end
    object PCP_CD_M_OPR_REQ_ITEint_nomefuncanc: TWideStringField
      FieldName = 'int_nomefuncanc'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_M_OPR_REQ_ITEid_busca_item: TWideStringField
      FieldName = 'id_busca_item'
      Size = 30
    end
    object PCP_CD_M_OPR_REQ_ITEint_undvenda: TWideStringField
      FieldName = 'int_undvenda'
      ProviderFlags = []
      Size = 3
    end
    object PCP_CD_M_OPR_REQ_ITEnum_lote: TWideStringField
      FieldName = 'num_lote'
      Size = 15
    end
    object PCP_CD_M_OPR_REQ_ITEgerado_automatico: TBooleanField
      FieldName = 'gerado_automatico'
    end
    object PCP_CD_M_OPR_REQ_ITEint_nomestr: TWideStringField
      FieldName = 'int_nomestr'
      Size = 50
    end
    object PCP_CD_M_OPR_REQ_ITEcancelado: TBooleanField
      FieldName = 'cancelado'
    end
  end
  object BUS_CD_M_OPR_REQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_M_OPR_REQ'
    RemoteServer = dmGeral.pcConecao
    BeforeEdit = PCP_CD_M_OPR_REQBeforeEdit
    BeforePost = PCP_CD_M_OPR_REQBeforePost
    OnNewRecord = PCP_CD_M_OPR_REQNewRecord
    OnReconcileError = PCP_CD_M_OPR_REQReconcileError
    Left = 561
    Top = 360
    object BUS_CD_M_OPR_REQid_opr: TIntegerField
      FieldName = 'id_opr'
    end
    object BUS_CD_M_OPR_REQid_opr_req: TIntegerField
      FieldName = 'id_opr_req'
    end
    object BUS_CD_M_OPR_REQdta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object BUS_CD_M_OPR_REQid_funcionario_canc: TIntegerField
      FieldName = 'id_funcionario_canc'
    end
    object BUS_CD_M_OPR_REQdta_canc: TDateField
      FieldName = 'dta_canc'
    end
    object BUS_CD_M_OPR_REQhor_canc: TTimeField
      FieldName = 'hor_canc'
    end
    object BUS_CD_M_OPR_REQint_nomefuncanc: TWideStringField
      FieldName = 'int_nomefuncanc'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_OPR_REQid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object BUS_CD_M_OPR_REQint_nomeresp: TWideStringField
      FieldName = 'int_nomeresp'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_OPR_REQcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_M_OPR_REQrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_M_OPR_REQcancelado: TBooleanField
      FieldName = 'cancelado'
    end
    object BUS_CD_M_OPR_REQPCP_SQ_M_OPR_REQ_ITE: TDataSetField
      FieldName = 'PCP_SQ_M_OPR_REQ_ITE'
    end
  end
  object BUS_CD_M_OPR_REQ_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_M_OPR_REQPCP_SQ_M_OPR_REQ_ITE
    Params = <>
    BeforePost = PCP_CD_M_OPR_REQ_ITEBeforePost
    OnNewRecord = PCP_CD_M_OPR_REQ_ITENewRecord
    OnReconcileError = PCP_CD_M_OPR_REQ_ITEReconcileError
    Left = 561
    Top = 408
    object BUS_CD_M_OPR_REQ_ITEid_opr: TIntegerField
      FieldName = 'id_opr'
    end
    object BUS_CD_M_OPR_REQ_ITEid_opr_req: TIntegerField
      FieldName = 'id_opr_req'
    end
    object BUS_CD_M_OPR_REQ_ITEid_opr_req_ite: TIntegerField
      FieldName = 'id_opr_req_ite'
    end
    object BUS_CD_M_OPR_REQ_ITEid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_M_OPR_REQ_ITEid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object BUS_CD_M_OPR_REQ_ITEid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
    end
    object BUS_CD_M_OPR_REQ_ITEqtde: TFloatField
      FieldName = 'qtde'
    end
    object BUS_CD_M_OPR_REQ_ITEqtde_atendida: TFloatField
      FieldName = 'qtde_atendida'
    end
    object BUS_CD_M_OPR_REQ_ITEdta_canc: TDateField
      FieldName = 'dta_canc'
    end
    object BUS_CD_M_OPR_REQ_ITEhor_canc: TTimeField
      FieldName = 'hor_canc'
    end
    object BUS_CD_M_OPR_REQ_ITEid_funcionario_canc: TIntegerField
      FieldName = 'id_funcionario_canc'
    end
    object BUS_CD_M_OPR_REQ_ITEsituacao: TIntegerField
      FieldName = 'situacao'
    end
    object BUS_CD_M_OPR_REQ_ITEid_setor: TIntegerField
      FieldName = 'id_setor'
    end
    object BUS_CD_M_OPR_REQ_ITEint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_M_OPR_REQ_ITEint_nomecor: TWideStringField
      FieldName = 'int_nomecor'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_OPR_REQ_ITEint_nometam: TWideStringField
      FieldName = 'int_nometam'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_OPR_REQ_ITEint_nomefuncanc: TWideStringField
      FieldName = 'int_nomefuncanc'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_OPR_REQ_ITEid_busca_item: TWideStringField
      FieldName = 'id_busca_item'
      Size = 30
    end
    object BUS_CD_M_OPR_REQ_ITEint_undvenda: TWideStringField
      FieldName = 'int_undvenda'
      ProviderFlags = []
      Size = 3
    end
    object BUS_CD_M_OPR_REQ_ITEnum_lote: TWideStringField
      FieldName = 'num_lote'
      Size = 15
    end
    object BUS_CD_M_OPR_REQ_ITEgerado_automatico: TBooleanField
      FieldName = 'gerado_automatico'
    end
    object BUS_CD_M_OPR_REQ_ITEint_nomestr: TWideStringField
      FieldName = 'int_nomestr'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_OPR_REQ_ITEcancelado: TBooleanField
      FieldName = 'cancelado'
    end
  end
  object PCP_CD_M_OPR_ETQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_M_ETQ'
    RemoteServer = dmGeral.pcConecao
    Left = 424
    Top = 488
  end
  object PCP_CD_C_REG_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_C_REGPCP_SQ_C_REG_ITE
    Params = <>
    BeforePost = PCP_CD_C_REG_ITEBeforePost
    OnNewRecord = PCP_CD_C_REG_ITENewRecord
    Left = 284
    Top = 877
    object PCP_CD_C_REG_ITEid_regiao: TIntegerField
      FieldName = 'id_regiao'
    end
    object PCP_CD_C_REG_ITEtipo: TIntegerField
      FieldName = 'tipo'
    end
    object PCP_CD_C_REG_ITEid_grupo: TWideStringField
      FieldName = 'id_grupo'
      Size = 11
    end
    object PCP_CD_C_REG_ITEid_item: TIntegerField
      FieldName = 'id_item'
    end
    object PCP_CD_C_REG_ITEper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object PCP_CD_C_REG_ITEint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object PCP_CD_C_REG_ITEint_undvenda: TWideStringField
      FieldName = 'int_undvenda'
      ProviderFlags = []
      Size = 3
    end
    object PCP_CD_C_REG_ITEint_nomegru: TWideStringField
      FieldName = 'int_nomegru'
      ProviderFlags = []
      Size = 30
    end
  end
  object BUS_CD_C_REG_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_C_REGPCP_SQ_C_REG_ITE
    Params = <>
    Left = 413
    Top = 877
    object BUS_CD_C_REG_ITEid_regiao: TIntegerField
      FieldName = 'id_regiao'
    end
    object BUS_CD_C_REG_ITEtipo: TIntegerField
      FieldName = 'tipo'
    end
    object BUS_CD_C_REG_ITEid_grupo: TWideStringField
      FieldName = 'id_grupo'
      Size = 11
    end
    object BUS_CD_C_REG_ITEid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_C_REG_ITEper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object BUS_CD_C_REG_ITEint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      Size = 100
    end
    object BUS_CD_C_REG_ITEint_undvenda: TWideStringField
      FieldName = 'int_undvenda'
      Size = 3
    end
    object BUS_CD_C_REG_ITEint_nomegru: TWideStringField
      FieldName = 'int_nomegru'
      Size = 30
    end
  end
  object BUS_CD_C_MEQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_MEQ'
    RemoteServer = dmGeral.pcConecao
    Left = 160
    Top = 496
  end
end
