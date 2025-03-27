object dmGeral: TdmGeral
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 1623
  Width = 2175
  object FAT_CD_M_PED: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_PED'
    BeforeOpen = FAT_CD_M_PEDBeforeOpen
    BeforeEdit = FAT_CD_M_PEDBeforeEdit
    OnNewRecord = FAT_CD_M_PEDNewRecord
    Left = 1840
    Top = 72
    object FAT_CD_M_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_CD_M_PEDid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      Required = True
    end
    object FAT_CD_M_PEDdta_pedido: TDateField
      FieldName = 'dta_pedido'
      Origin = 'dta_pedido'
      Required = True
    end
    object FAT_CD_M_PEDid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Origin = 'id_tipo_mov_estoque'
      Required = True
    end
    object FAT_CD_M_PEDid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
      Origin = 'id_vendedor'
      Required = True
    end
    object FAT_CD_M_PEDobs: TStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object FAT_CD_M_PEDvlr_bruto: TFloatField
      FieldName = 'vlr_bruto'
      Origin = 'vlr_bruto'
      Required = True
    end
    object FAT_CD_M_PEDvlr_desconto: TFloatField
      FieldName = 'vlr_desconto'
      Origin = 'vlr_desconto'
      Required = True
    end
    object FAT_CD_M_PEDper_desconto: TFloatField
      FieldName = 'per_desconto'
      Origin = 'per_desconto'
      Required = True
    end
    object FAT_CD_M_PEDvlr_liquido: TFloatField
      FieldName = 'vlr_liquido'
      Origin = 'vlr_liquido'
      Required = True
    end
    object FAT_CD_M_PEDhor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
      Origin = 'hor_pedido'
    end
    object FAT_CD_M_PEDid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
      Required = True
    end
    object FAT_CD_M_PEDpcp_obs: TStringField
      FieldName = 'pcp_obs'
      Origin = 'pcp_obs'
      Size = 100
    end
    object FAT_CD_M_PEDpcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
      Origin = 'pcp_id_opr'
    end
    object FAT_CD_M_PEDsituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
    end
    object FAT_CD_M_PEDsituacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
      Origin = 'situacao_aprovacao'
      Required = True
    end
    object FAT_CD_M_PEDid_atendente: TIntegerField
      FieldName = 'id_atendente'
      Origin = 'id_atendente'
    end
    object FAT_CD_M_PEDid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
      Origin = 'id_responsavel'
    end
    object FAT_CD_M_PEDid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object FAT_CD_M_PEDtipo_restricao: TStringField
      FieldName = 'tipo_restricao'
      Origin = 'tipo_restricao'
      Size = 100
    end
    object FAT_CD_M_PEDid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
      Origin = 'id_almoxarifado'
    end
    object FAT_CD_M_PEDjustificativa: TStringField
      FieldName = 'justificativa'
      Origin = 'justificativa'
      Size = 100
    end
    object FAT_CD_M_PEDid_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
      Origin = 'id_usuario_lib'
    end
    object FAT_CD_M_PEDcod_lme: TStringField
      FieldName = 'cod_lme'
      Origin = 'cod_lme'
    end
    object FAT_CD_M_PEDrev_lme: TStringField
      FieldName = 'rev_lme'
      Origin = 'rev_lme'
      Size = 5
    end
    object FAT_CD_M_PEDorigem: TIntegerField
      FieldName = 'origem'
      Origin = 'origem'
    end
    object FAT_CD_M_PEDdispositivo: TStringField
      FieldName = 'dispositivo'
      Origin = 'dispositivo'
      Size = 50
    end
    object FAT_CD_M_PEDgps_latitude: TFloatField
      FieldName = 'gps_latitude'
      Origin = 'gps_latitude'
    end
    object FAT_CD_M_PEDgps_longitude: TFloatField
      FieldName = 'gps_longitude'
      Origin = 'gps_longitude'
    end
    object FAT_CD_M_PEDcubagem: TFloatField
      FieldName = 'cubagem'
      Origin = 'cubagem'
    end
    object FAT_CD_M_PEDid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
      Origin = 'id_orcamento'
    end
    object FAT_CD_M_PEDenvia_carga: TBooleanField
      FieldName = 'envia_carga'
      Origin = 'envia_carga'
    end
    object FAT_CD_M_PEDdta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
      Origin = 'dta_prev_entrega'
    end
    object FAT_CD_M_PEDid_abertura: TIntegerField
      FieldName = 'id_abertura'
      Origin = 'id_abertura'
    end
    object FAT_CD_M_PEDdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
      Origin = 'dias_cpg_prazo'
    end
    object FAT_CD_M_PEDoffline: TBooleanField
      FieldName = 'offline'
      Origin = 'offline'
    end
    object FAT_CD_M_PEDconferido: TBooleanField
      FieldName = 'conferido'
      Origin = 'conferido'
    end
    object FAT_CD_M_PEDid_conf: TIntegerField
      FieldName = 'id_conf'
      Origin = 'id_conf'
    end
    object FAT_CD_M_PEDdta_conf: TDateField
      FieldName = 'dta_conf'
      Origin = 'dta_conf'
    end
    object FAT_CD_M_PEDhor_conf: TTimeField
      FieldName = 'hor_conf'
      Origin = 'hor_conf'
    end
    object FAT_CD_M_PEDresultado_conf: TIntegerField
      FieldName = 'resultado_conf'
      Origin = 'resultado_conf'
    end
    object FAT_CD_M_PEDFAT_FD_M_PED_TIT: TDataSetField
      FieldName = 'FAT_FD_M_PED_TIT'
    end
    object FAT_CD_M_PEDFAT_FD_M_PED_ITE: TDataSetField
      FieldName = 'FAT_FD_M_PED_ITE'
    end
    object FAT_CD_M_PEDINT_NOMECLI: TStringField
      FieldName = 'INT_NOMECLI'
      Origin = 'nome'
      ProviderFlags = []
      Size = 50
    end
    object FAT_CD_M_PEDINT_NOMECID: TStringField
      FieldName = 'INT_NOMECID'
      Origin = 'nome'
      ProviderFlags = []
      Size = 60
    end
    object FAT_CD_M_PEDINT_NOMEEST: TStringField
      FieldName = 'INT_NOMEEST'
      Origin = 'uf'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object FAT_CD_M_PEDINT_CPFCNPJ: TStringField
      FieldName = 'INT_CPFCNPJ'
      Origin = 'doc_cnpj_cpf'
      ProviderFlags = []
      Size = 14
    end
    object FAT_CD_M_PEDint_pessoacli: TIntegerField
      FieldName = 'int_pessoacli'
      Origin = 'pessoa'
      ProviderFlags = []
    end
    object FAT_CD_M_PEDINT_ID_PERFIL: TIntegerField
      FieldName = 'INT_ID_PERFIL'
      Origin = 'id_perfil_cli'
      ProviderFlags = []
    end
    object FAT_CD_M_PEDINT_NOMETME: TStringField
      FieldName = 'INT_NOMETME'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FAT_CD_M_PEDINT_NOMEFUN: TStringField
      FieldName = 'INT_NOMEFUN'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FAT_CD_M_PEDINT_NOMECPG: TStringField
      FieldName = 'INT_NOMECPG'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FAT_CD_M_PEDINT_NOMEATE: TStringField
      FieldName = 'INT_NOMEATE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FAT_CD_M_PEDINT_NOMERES: TStringField
      FieldName = 'INT_NOMERES'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FAT_CD_M_PEDint_ie_rg_cli: TStringField
      FieldName = 'int_ie_rg_cli'
      ProviderFlags = []
      ReadOnly = True
    end
    object FAT_CD_M_PEDped_excluido: TBooleanField
      FieldName = 'ped_excluido'
    end
  end
  object FAT_DP_M_PED: TDataSetProvider
    DataSet = FAT_FD_M_PED
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    OnDataRequest = FAT_DP_M_PEDDataRequest
    Left = 1728
    Top = 72
  end
  object FAT_CD_M_PED_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_M_PEDFAT_FD_M_PED_ITE
    Params = <>
    BeforeOpen = FAT_CD_M_PED_ITEBeforeOpen
    BeforePost = FAT_CD_M_PED_ITEBeforePost
    AfterPost = FAT_CD_M_PED_ITEAfterPost
    AfterDelete = FAT_CD_M_PED_ITEAfterDelete
    OnNewRecord = FAT_CD_M_PED_ITENewRecord
    Left = 1840
    Top = 128
    object FAT_CD_M_PED_ITEid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_CD_M_PED_ITEid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_CD_M_PED_ITEid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      Required = True
      OnChange = FAT_CD_M_PED_ITEid_itemChange
    end
    object FAT_CD_M_PED_ITEqtde: TFloatField
      FieldName = 'qtde'
      Origin = 'qtde'
      Required = True
      OnChange = FAT_CD_M_PED_ITEqtdeChange
    end
    object FAT_CD_M_PED_ITEvlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = 'vlr_unitario'
      Required = True
      OnChange = FAT_CD_M_PED_ITEvlr_unitarioChange
    end
    object FAT_CD_M_PED_ITEvlr_bruto: TFloatField
      FieldName = 'vlr_bruto'
      Origin = 'vlr_bruto'
      Required = True
    end
    object FAT_CD_M_PED_ITEper_desconto: TFloatField
      FieldName = 'per_desconto'
      Origin = 'per_desconto'
      Required = True
      OnChange = FAT_CD_M_PED_ITEper_descontoChange
    end
    object FAT_CD_M_PED_ITEvlr_liquido: TFloatField
      FieldName = 'vlr_liquido'
      Origin = 'vlr_liquido'
      Required = True
    end
    object FAT_CD_M_PED_ITEid_cor: TIntegerField
      FieldName = 'id_cor'
      Origin = 'id_cor'
    end
    object FAT_CD_M_PED_ITEid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Origin = 'id_tamanho'
    end
    object FAT_CD_M_PED_ITEid_busca_item: TStringField
      FieldName = 'id_busca_item'
      Origin = 'id_busca_item'
      Size = 30
    end
    object FAT_CD_M_PED_ITEvlr_unitario_orig: TFloatField
      FieldName = 'vlr_unitario_orig'
      Origin = 'vlr_unitario_orig'
    end
    object FAT_CD_M_PED_ITEper_desc_max: TFloatField
      FieldName = 'per_desc_max'
      Origin = 'per_desc_max'
    end
    object FAT_CD_M_PED_ITEqtde_conferida: TFloatField
      FieldName = 'qtde_conferida'
      Origin = 'qtde_conferida'
    end
    object FAT_CD_M_PED_ITEint_nomeite: TStringField
      FieldName = 'int_nomeite'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 100
    end
    object FAT_CD_M_PED_ITEint_nomecor: TStringField
      FieldName = 'int_nomecor'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 40
    end
    object FAT_CD_M_PED_ITEint_id_und_venda: TStringField
      FieldName = 'int_id_und_venda'
      Origin = 'id_und_venda'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object FAT_CD_M_PED_ITEint_tipo_item: TStringField
      FieldName = 'int_tipo_item'
      Origin = 'tipo_item'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object FAT_CD_M_PED_ITEint_nometam: TStringField
      FieldName = 'int_nometam'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 40
    end
    object FAT_CD_M_PED_ITEvlr_desconto: TFloatField
      FieldName = 'vlr_desconto'
      Origin = 'vlr_desconto'
      Required = True
      OnChange = FAT_CD_M_PED_ITEvlr_descontoChange
    end
  end
  object FAT_CD_M_PED_TIT: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_M_PEDFAT_FD_M_PED_TIT
    Params = <>
    BeforeOpen = FAT_CD_M_PED_TITBeforeOpen
    OnNewRecord = FAT_CD_M_PED_TITNewRecord
    Left = 1840
    Top = 184
    object FAT_CD_M_PED_TITid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_CD_M_PED_TITid_titulo: TIntegerField
      FieldName = 'id_titulo'
      Origin = 'id_titulo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_CD_M_PED_TITdias: TIntegerField
      FieldName = 'dias'
      Origin = 'dias'
      Required = True
    end
    object FAT_CD_M_PED_TITdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
      Origin = 'dta_vencimento'
      Required = True
    end
    object FAT_CD_M_PED_TITvlr_titulo: TFloatField
      FieldName = 'vlr_titulo'
      Origin = 'vlr_titulo'
      Required = True
    end
    object FAT_CD_M_PED_TITche_banco: TStringField
      FieldName = 'che_banco'
      Origin = 'che_banco'
      FixedChar = True
      Size = 10
    end
    object FAT_CD_M_PED_TITche_agencia: TStringField
      FieldName = 'che_agencia'
      Origin = 'che_agencia'
      FixedChar = True
      Size = 10
    end
    object FAT_CD_M_PED_TITche_conta: TIntegerField
      FieldName = 'che_conta'
      Origin = 'che_conta'
    end
    object FAT_CD_M_PED_TITche_numero: TIntegerField
      FieldName = 'che_numero'
      Origin = 'che_numero'
    end
    object FAT_CD_M_PED_TITche_emitente: TStringField
      FieldName = 'che_emitente'
      Origin = 'che_emitente'
      Size = 50
    end
    object FAT_CD_M_PED_TITid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
    end
    object FAT_CD_M_PED_TITbol_nosso_numero: TIntegerField
      FieldName = 'bol_nosso_numero'
      Origin = 'bol_nosso_numero'
    end
    object FAT_CD_M_PED_TITid_maquineta: TIntegerField
      FieldName = 'id_maquineta'
      Origin = 'id_maquineta'
    end
    object FAT_CD_M_PED_TITINT_NOMEFPG: TStringField
      FieldName = 'INT_NOMEFPG'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 30
    end
    object FAT_CD_M_PED_TITINT_DOCIMPRESSO: TIntegerField
      FieldName = 'INT_DOCIMPRESSO'
      Origin = 'doc_impresso'
      ProviderFlags = []
    end
  end
  object CAD_CD_C_PAR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_PAR'
    Left = 272
    Top = 72
    object CAD_CD_C_PARid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_CD_C_PARemp_cnpj: TStringField
      FieldName = 'emp_cnpj'
      Origin = 'emp_cnpj'
      Size = 14
    end
    object CAD_CD_C_PARid_ramo: TIntegerField
      FieldName = 'id_ramo'
      Origin = 'id_ramo'
    end
    object CAD_CD_C_PARemp_razao: TStringField
      FieldName = 'emp_razao'
      Origin = 'emp_razao'
      Size = 50
    end
    object CAD_CD_C_PARemp_endereco: TStringField
      FieldName = 'emp_endereco'
      Origin = 'emp_endereco'
      Size = 50
    end
    object CAD_CD_C_PARemp_numero: TStringField
      FieldName = 'emp_numero'
      Origin = 'emp_numero'
      Size = 10
    end
    object CAD_CD_C_PARemp_complemento: TStringField
      FieldName = 'emp_complemento'
      Origin = 'emp_complemento'
      Size = 30
    end
    object CAD_CD_C_PARemp_bairro: TStringField
      FieldName = 'emp_bairro'
      Origin = 'emp_bairro'
      Size = 40
    end
    object CAD_CD_C_PARid_cidade: TStringField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      FixedChar = True
      Size = 10
    end
    object CAD_CD_C_PARemp_cep: TStringField
      FieldName = 'emp_cep'
      Origin = 'emp_cep'
      Size = 9
    end
    object CAD_CD_C_PARemp_telefone: TStringField
      FieldName = 'emp_telefone'
      Origin = 'emp_telefone'
      Size = 14
    end
    object CAD_CD_C_PARemp_fax: TStringField
      FieldName = 'emp_fax'
      Origin = 'emp_fax'
      Size = 14
    end
    object CAD_CD_C_PARemp_email: TStringField
      FieldName = 'emp_email'
      Origin = 'emp_email'
      Size = 60
    end
    object CAD_CD_C_PARemp_site: TStringField
      FieldName = 'emp_site'
      Origin = 'emp_site'
      Size = 60
    end
    object CAD_CD_C_PARemp_fantasia: TStringField
      FieldName = 'emp_fantasia'
      Origin = 'emp_fantasia'
      Size = 50
    end
    object CAD_CD_C_PARemp_im: TStringField
      FieldName = 'emp_im'
      Origin = 'emp_im'
    end
    object CAD_CD_C_PARemp_ie: TStringField
      FieldName = 'emp_ie'
      Origin = 'emp_ie'
    end
    object CAD_CD_C_PARemp_suframa: TStringField
      FieldName = 'emp_suframa'
      Origin = 'emp_suframa'
    end
    object CAD_CD_C_PARemp_numero_junta: TStringField
      FieldName = 'emp_numero_junta'
      Origin = 'emp_numero_junta'
    end
    object CAD_CD_C_PARres_nome: TStringField
      FieldName = 'res_nome'
      Origin = 'res_nome'
      Size = 50
    end
    object CAD_CD_C_PARres_qualificacao: TStringField
      FieldName = 'res_qualificacao'
      Origin = 'res_qualificacao'
      Size = 10
    end
    object CAD_CD_C_PARres_cpf: TStringField
      FieldName = 'res_cpf'
      Origin = 'res_cpf'
      Size = 11
    end
    object CAD_CD_C_PARres_cep: TStringField
      FieldName = 'res_cep'
      Origin = 'res_cep'
      Size = 9
    end
    object CAD_CD_C_PARres_endereco: TStringField
      FieldName = 'res_endereco'
      Origin = 'res_endereco'
      Size = 50
    end
    object CAD_CD_C_PARres_numero: TStringField
      FieldName = 'res_numero'
      Origin = 'res_numero'
      Size = 10
    end
    object CAD_CD_C_PARres_complemento: TStringField
      FieldName = 'res_complemento'
      Origin = 'res_complemento'
      Size = 30
    end
    object CAD_CD_C_PARres_bairro: TStringField
      FieldName = 'res_bairro'
      Origin = 'res_bairro'
      Size = 40
    end
    object CAD_CD_C_PARres_cp: TStringField
      FieldName = 'res_cp'
      Origin = 'res_cp'
      Size = 14
    end
    object CAD_CD_C_PARres_telefone: TStringField
      FieldName = 'res_telefone'
      Origin = 'res_telefone'
      Size = 14
    end
    object CAD_CD_C_PARres_fax: TStringField
      FieldName = 'res_fax'
      Origin = 'res_fax'
      Size = 14
    end
    object CAD_CD_C_PARres_email: TStringField
      FieldName = 'res_email'
      Origin = 'res_email'
      Size = 60
    end
    object CAD_CD_C_PARcnt_nome: TStringField
      FieldName = 'cnt_nome'
      Origin = 'cnt_nome'
      Size = 50
    end
    object CAD_CD_C_PARcnt_cpf: TStringField
      FieldName = 'cnt_cpf'
      Origin = 'cnt_cpf'
      Size = 11
    end
    object CAD_CD_C_PARcnt_crc: TStringField
      FieldName = 'cnt_crc'
      Origin = 'cnt_crc'
      Size = 10
    end
    object CAD_CD_C_PARcnt_cnpj: TStringField
      FieldName = 'cnt_cnpj'
      Origin = 'cnt_cnpj'
      Size = 14
    end
    object CAD_CD_C_PARcnt_cep: TStringField
      FieldName = 'cnt_cep'
      Origin = 'cnt_cep'
      Size = 9
    end
    object CAD_CD_C_PARcnt_endereco: TStringField
      FieldName = 'cnt_endereco'
      Origin = 'cnt_endereco'
      Size = 50
    end
    object CAD_CD_C_PARcnt_numero: TStringField
      FieldName = 'cnt_numero'
      Origin = 'cnt_numero'
      Size = 10
    end
    object CAD_CD_C_PARcnt_complemento: TStringField
      FieldName = 'cnt_complemento'
      Origin = 'cnt_complemento'
      Size = 30
    end
    object CAD_CD_C_PARcnt_bairro: TStringField
      FieldName = 'cnt_bairro'
      Origin = 'cnt_bairro'
      Size = 40
    end
    object CAD_CD_C_PARcnt_telefone: TStringField
      FieldName = 'cnt_telefone'
      Origin = 'cnt_telefone'
      Size = 14
    end
    object CAD_CD_C_PARcnt_fax: TStringField
      FieldName = 'cnt_fax'
      Origin = 'cnt_fax'
      Size = 14
    end
    object CAD_CD_C_PARcnt_email: TStringField
      FieldName = 'cnt_email'
      Origin = 'cnt_email'
      Size = 60
    end
    object CAD_CD_C_PARcnt_id_cidade: TStringField
      FieldName = 'cnt_id_cidade'
      Origin = 'cnt_id_cidade'
      Size = 10
    end
    object CAD_CD_C_PARcnt_qualificacao: TStringField
      FieldName = 'cnt_qualificacao'
      Origin = 'cnt_qualificacao'
      Size = 10
    end
    object CAD_CD_C_PARcnt_cp: TStringField
      FieldName = 'cnt_cp'
      Origin = 'cnt_cp'
      Size = 14
    end
    object CAD_CD_C_PARres_cidade: TStringField
      FieldName = 'res_cidade'
      Origin = 'res_cidade'
      Size = 30
    end
    object CAD_CD_C_PARcod_lme: TStringField
      FieldName = 'cod_lme'
      Origin = 'cod_lme'
    end
    object CAD_CD_C_PARres_id_cidade: TStringField
      FieldName = 'res_id_cidade'
      Origin = 'res_id_cidade'
      FixedChar = True
      Size = 10
    end
    object CAD_CD_C_PARCAD_FD_C_PAR_MOD: TDataSetField
      FieldName = 'CAD_FD_C_PAR_MOD'
    end
    object CAD_CD_C_PARCAD_FD_C_PAR_CTR: TDataSetField
      FieldName = 'CAD_FD_C_PAR_CTR'
    end
    object CAD_CD_C_PARCAD_FD_C_PAR_CPG: TDataSetField
      FieldName = 'CAD_FD_C_PAR_CPG'
    end
    object CAD_CD_C_PARrev_lme: TStringField
      FieldName = 'rev_lme'
      Origin = 'rev_lme'
      Size = 5
    end
    object CAD_CD_C_PARint_uf: TStringField
      FieldName = 'int_uf'
      Origin = 'uf'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object CAD_CD_C_PARint_nomecid: TStringField
      FieldName = 'int_nomecid'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object CAD_CD_C_PARCAD_FD_C_PAR_RST: TDataSetField
      FieldName = 'CAD_FD_C_PAR_RST'
    end
  end
  object BUS_CD_C_FU2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FUN'
    Left = 472
    Top = 685
  end
  object CAD_DP_C_FUN: TDataSetProvider
    DataSet = CAD_FD_C_FUN
    OnDataRequest = CAD_DP_C_FUNDataRequest
    Left = 168
    Top = 693
  end
  object CAD_DP_C_PAR: TDataSetProvider
    DataSet = CAD_FD_C_PAR
    OnDataRequest = CAD_DP_C_PARDataRequest
    Left = 168
    Top = 72
  end
  object conexao: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      'Database=C:\sqlite\enSoftData.db')
    LoginPrompt = False
    Left = 56
    Top = 8
  end
  object CAD_FD_C_PAR: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select PAR.*, CID.UF AS int_uf, CID.NOME AS int_nomecid from cad' +
        '_tb_c_par par'
      
        ' LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=PAR.ID_CIDADE' +
        ' '
      'where 1=2'
      ''
      '')
    Left = 56
    Top = 72
    object CAD_FD_C_PARid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_PARemp_cnpj: TStringField
      FieldName = 'emp_cnpj'
      Origin = 'emp_cnpj'
      Size = 14
    end
    object CAD_FD_C_PARid_ramo: TIntegerField
      FieldName = 'id_ramo'
      Origin = 'id_ramo'
    end
    object CAD_FD_C_PARemp_razao: TStringField
      FieldName = 'emp_razao'
      Origin = 'emp_razao'
      Size = 50
    end
    object CAD_FD_C_PARemp_endereco: TStringField
      FieldName = 'emp_endereco'
      Origin = 'emp_endereco'
      Size = 50
    end
    object CAD_FD_C_PARemp_numero: TStringField
      FieldName = 'emp_numero'
      Origin = 'emp_numero'
      Size = 10
    end
    object CAD_FD_C_PARemp_complemento: TStringField
      FieldName = 'emp_complemento'
      Origin = 'emp_complemento'
      Size = 30
    end
    object CAD_FD_C_PARemp_bairro: TStringField
      FieldName = 'emp_bairro'
      Origin = 'emp_bairro'
      Size = 40
    end
    object CAD_FD_C_PARid_cidade: TStringField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      FixedChar = True
      Size = 10
    end
    object CAD_FD_C_PARemp_cep: TStringField
      FieldName = 'emp_cep'
      Origin = 'emp_cep'
      Size = 9
    end
    object CAD_FD_C_PARemp_telefone: TStringField
      FieldName = 'emp_telefone'
      Origin = 'emp_telefone'
      Size = 14
    end
    object CAD_FD_C_PARemp_fax: TStringField
      FieldName = 'emp_fax'
      Origin = 'emp_fax'
      Size = 14
    end
    object CAD_FD_C_PARemp_email: TStringField
      FieldName = 'emp_email'
      Origin = 'emp_email'
      Size = 60
    end
    object CAD_FD_C_PARemp_site: TStringField
      FieldName = 'emp_site'
      Origin = 'emp_site'
      Size = 60
    end
    object CAD_FD_C_PARemp_fantasia: TStringField
      FieldName = 'emp_fantasia'
      Origin = 'emp_fantasia'
      Size = 50
    end
    object CAD_FD_C_PARemp_im: TStringField
      FieldName = 'emp_im'
      Origin = 'emp_im'
    end
    object CAD_FD_C_PARemp_ie: TStringField
      FieldName = 'emp_ie'
      Origin = 'emp_ie'
    end
    object CAD_FD_C_PARemp_suframa: TStringField
      FieldName = 'emp_suframa'
      Origin = 'emp_suframa'
    end
    object CAD_FD_C_PARemp_numero_junta: TStringField
      FieldName = 'emp_numero_junta'
      Origin = 'emp_numero_junta'
    end
    object CAD_FD_C_PARres_nome: TStringField
      FieldName = 'res_nome'
      Origin = 'res_nome'
      Size = 50
    end
    object CAD_FD_C_PARres_qualificacao: TStringField
      FieldName = 'res_qualificacao'
      Origin = 'res_qualificacao'
      Size = 10
    end
    object CAD_FD_C_PARres_cpf: TStringField
      FieldName = 'res_cpf'
      Origin = 'res_cpf'
      Size = 11
    end
    object CAD_FD_C_PARres_cep: TStringField
      FieldName = 'res_cep'
      Origin = 'res_cep'
      Size = 9
    end
    object CAD_FD_C_PARres_endereco: TStringField
      FieldName = 'res_endereco'
      Origin = 'res_endereco'
      Size = 50
    end
    object CAD_FD_C_PARres_numero: TStringField
      FieldName = 'res_numero'
      Origin = 'res_numero'
      Size = 10
    end
    object CAD_FD_C_PARres_complemento: TStringField
      FieldName = 'res_complemento'
      Origin = 'res_complemento'
      Size = 30
    end
    object CAD_FD_C_PARres_bairro: TStringField
      FieldName = 'res_bairro'
      Origin = 'res_bairro'
      Size = 40
    end
    object CAD_FD_C_PARres_cp: TStringField
      FieldName = 'res_cp'
      Origin = 'res_cp'
      Size = 14
    end
    object CAD_FD_C_PARres_telefone: TStringField
      FieldName = 'res_telefone'
      Origin = 'res_telefone'
      Size = 14
    end
    object CAD_FD_C_PARres_fax: TStringField
      FieldName = 'res_fax'
      Origin = 'res_fax'
      Size = 14
    end
    object CAD_FD_C_PARres_email: TStringField
      FieldName = 'res_email'
      Origin = 'res_email'
      Size = 60
    end
    object CAD_FD_C_PARcnt_nome: TStringField
      FieldName = 'cnt_nome'
      Origin = 'cnt_nome'
      Size = 50
    end
    object CAD_FD_C_PARcnt_cpf: TStringField
      FieldName = 'cnt_cpf'
      Origin = 'cnt_cpf'
      Size = 11
    end
    object CAD_FD_C_PARcnt_crc: TStringField
      FieldName = 'cnt_crc'
      Origin = 'cnt_crc'
      Size = 10
    end
    object CAD_FD_C_PARcnt_cnpj: TStringField
      FieldName = 'cnt_cnpj'
      Origin = 'cnt_cnpj'
      Size = 14
    end
    object CAD_FD_C_PARcnt_cep: TStringField
      FieldName = 'cnt_cep'
      Origin = 'cnt_cep'
      Size = 9
    end
    object CAD_FD_C_PARcnt_endereco: TStringField
      FieldName = 'cnt_endereco'
      Origin = 'cnt_endereco'
      Size = 50
    end
    object CAD_FD_C_PARcnt_numero: TStringField
      FieldName = 'cnt_numero'
      Origin = 'cnt_numero'
      Size = 10
    end
    object CAD_FD_C_PARcnt_complemento: TStringField
      FieldName = 'cnt_complemento'
      Origin = 'cnt_complemento'
      Size = 30
    end
    object CAD_FD_C_PARcnt_bairro: TStringField
      FieldName = 'cnt_bairro'
      Origin = 'cnt_bairro'
      Size = 40
    end
    object CAD_FD_C_PARcnt_telefone: TStringField
      FieldName = 'cnt_telefone'
      Origin = 'cnt_telefone'
      Size = 14
    end
    object CAD_FD_C_PARcnt_fax: TStringField
      FieldName = 'cnt_fax'
      Origin = 'cnt_fax'
      Size = 14
    end
    object CAD_FD_C_PARcnt_email: TStringField
      FieldName = 'cnt_email'
      Origin = 'cnt_email'
      Size = 60
    end
    object CAD_FD_C_PARcnt_id_cidade: TStringField
      FieldName = 'cnt_id_cidade'
      Origin = 'cnt_id_cidade'
      Size = 10
    end
    object CAD_FD_C_PARcnt_qualificacao: TStringField
      FieldName = 'cnt_qualificacao'
      Origin = 'cnt_qualificacao'
      Size = 10
    end
    object CAD_FD_C_PARcnt_cp: TStringField
      FieldName = 'cnt_cp'
      Origin = 'cnt_cp'
      Size = 14
    end
    object CAD_FD_C_PARres_cidade: TStringField
      FieldName = 'res_cidade'
      Origin = 'res_cidade'
      Size = 30
    end
    object CAD_FD_C_PARcod_lme: TStringField
      FieldName = 'cod_lme'
      Origin = 'cod_lme'
    end
    object CAD_FD_C_PARrev_lme: TStringField
      FieldName = 'rev_lme'
      Origin = 'rev_lme'
      Size = 5
    end
    object CAD_FD_C_PARres_id_cidade: TStringField
      FieldName = 'res_id_cidade'
      Origin = 'res_id_cidade'
      FixedChar = True
      Size = 10
    end
    object CAD_FD_C_PARint_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_uf'
      Origin = 'uf'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object CAD_FD_C_PARint_nomecid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_nomecid'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 152
    Top = 8
  end
  object CAD_FD_C_FUN: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cad_tb_c_fun'
      ' WHERE 1=2')
    Left = 56
    Top = 693
    object CAD_FD_C_FUNid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_FUNnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object CAD_FD_C_FUNdoc_cpf: TStringField
      FieldName = 'doc_cpf'
      Origin = 'doc_cpf'
      Size = 11
    end
    object CAD_FD_C_FUNlogin: TStringField
      FieldName = 'login'
      Origin = 'login'
      Size = 30
    end
    object CAD_FD_C_FUNsenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 100
    end
    object CAD_FD_C_FUNseg_alt_vend_ped: TBooleanField
      FieldName = 'seg_alt_vend_ped'
      Origin = 'seg_alt_vend_ped'
    end
    object CAD_FD_C_FUNseg_habilitar_seg: TBooleanField
      FieldName = 'seg_habilitar_seg'
      Origin = 'seg_habilitar_seg'
    end
    object CAD_FD_C_FUNseg_hab_bot_exc: TBooleanField
      FieldName = 'seg_hab_bot_exc'
      Origin = 'seg_hab_bot_exc'
    end
    object CAD_FD_C_FUNseg_vis_ult_cmp_ite: TBooleanField
      FieldName = 'seg_vis_ult_cmp_ite'
      Origin = 'seg_vis_ult_cmp_ite'
    end
    object CAD_FD_C_FUNseg_hab_bot_alt_fun: TBooleanField
      FieldName = 'seg_hab_bot_alt_fun'
      Origin = 'seg_hab_bot_alt_fun'
    end
    object CAD_FD_C_FUNseg_alt_pre_pro: TBooleanField
      FieldName = 'seg_alt_pre_pro'
      Origin = 'seg_alt_pre_pro'
      Required = True
    end
  end
  object CAD_FD_C_CPG: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select cpg.* from cad_tb_c_cpg cpg'
      'where 1=2')
    Left = 56
    Top = 752
    object CAD_FD_C_CPGid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_CPGativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
      Required = True
    end
    object CAD_FD_C_CPGdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
    object CAD_FD_C_CPGtipo_pagamento: TIntegerField
      FieldName = 'tipo_pagamento'
      Origin = 'tipo_pagamento'
      Required = True
    end
    object CAD_FD_C_CPGnum_parcelas: TIntegerField
      FieldName = 'num_parcelas'
      Origin = 'num_parcelas'
      Required = True
    end
    object CAD_FD_C_CPGper_desc: TFloatField
      FieldName = 'per_desc'
      Origin = 'per_desc'
    end
  end
  object CAD_DP_C_CPG: TDataSetProvider
    DataSet = CAD_FD_C_CPG
    OnDataRequest = CAD_DP_C_CPGDataRequest
    Left = 168
    Top = 752
  end
  object BUS_CD_C_CPG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CPG'
    Left = 368
    Top = 752
    object BUS_CD_C_CPGid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_CD_C_CPGdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
    object BUS_CD_C_CPGtipo_pagamento: TIntegerField
      FieldName = 'tipo_pagamento'
      Origin = 'tipo_pagamento'
      Required = True
    end
    object BUS_CD_C_CPGnum_parcelas: TIntegerField
      FieldName = 'num_parcelas'
      Origin = 'num_parcelas'
      Required = True
    end
    object BUS_CD_C_CPGper_desc: TFloatField
      FieldName = 'per_desc'
      Origin = 'per_desc'
    end
    object BUS_CD_C_CPGativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
      Required = True
    end
  end
  object CAD_FD_C_FPG: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select fpg.* from cad_tb_c_fpg fpg'
      'where 1=2')
    Left = 56
    Top = 816
    object CAD_FD_C_FPGid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_FPGdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
    object CAD_FD_C_FPGdoc_impresso: TIntegerField
      FieldName = 'doc_impresso'
      Origin = 'doc_impresso'
      Required = True
    end
    object CAD_FD_C_FPGtipo_pagamento: TIntegerField
      FieldName = 'tipo_pagamento'
      Origin = 'tipo_pagamento'
      Required = True
    end
    object CAD_FD_C_FPGcri_debi_cliente: TBooleanField
      FieldName = 'cri_debi_cliente'
      Origin = 'cri_debi_cliente'
    end
  end
  object CAD_DP_C_FPG: TDataSetProvider
    DataSet = CAD_FD_C_FPG
    OnDataRequest = CAD_DP_C_FPGDataRequest
    Left = 168
    Top = 816
  end
  object BUS_CD_C_FPG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FPG'
    Left = 368
    Top = 816
  end
  object CAD_FD_C_ITE: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select ite.*,'
      'GRU.TIPO_ITEM AS int_tipo_item '
      'from cad_tb_c_ite ite'
      'LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_GRUPO '
      'where 1=2')
    Left = 56
    Top = 466
    object CAD_FD_C_ITEid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_ITEdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object CAD_FD_C_ITEfantasia: TStringField
      FieldName = 'fantasia'
      Origin = 'fantasia'
      Size = 30
    end
    object CAD_FD_C_ITEid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
    end
    object CAD_FD_C_ITEid_grupo: TStringField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      FixedChar = True
      Size = 11
    end
    object CAD_FD_C_ITEid_und_compra: TStringField
      FieldName = 'id_und_compra'
      Origin = 'id_und_compra'
      FixedChar = True
      Size = 3
    end
    object CAD_FD_C_ITEid_und_venda: TStringField
      FieldName = 'id_und_venda'
      Origin = 'id_und_venda'
      FixedChar = True
      Size = 3
    end
    object CAD_FD_C_ITEcod_barra: TStringField
      FieldName = 'cod_barra'
      Origin = 'cod_barra'
      Size = 50
    end
    object CAD_FD_C_ITEcod_fabrica: TStringField
      FieldName = 'cod_fabrica'
      Origin = 'cod_fabrica'
      Size = 30
    end
    object CAD_FD_C_ITEpreco_avista: TFloatField
      FieldName = 'preco_avista'
      Origin = 'preco_avista'
    end
    object CAD_FD_C_ITEpreco_aprazo: TFloatField
      FieldName = 'preco_aprazo'
      Origin = 'preco_aprazo'
    end
    object CAD_FD_C_ITEid_familia: TIntegerField
      FieldName = 'id_familia'
      Origin = 'id_familia'
    end
    object CAD_FD_C_ITEativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
    object CAD_FD_C_ITEint_tipo_item: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_tipo_item'
      Origin = 'tipo_item'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object CAD_FD_C_ITEcubagem: TFloatField
      FieldName = 'cubagem'
      Origin = 'cubagem'
    end
    object CAD_FD_C_ITEid_ncm: TStringField
      FieldName = 'id_ncm'
      Origin = 'id_ncm'
      Size = 10
    end
    object CAD_FD_C_ITEloca_rua: TStringField
      FieldName = 'loca_rua'
      Origin = 'loca_rua'
      Size = 4
    end
    object CAD_FD_C_ITEreferencia: TStringField
      FieldName = 'referencia'
      Origin = 'referencia'
      Size = 100
    end
    object CAD_FD_C_ITEdestino_reclamado: TIntegerField
      FieldName = 'destino_reclamado'
      Origin = 'destino_reclamado'
    end
  end
  object CAD_DP_C_ITE: TDataSetProvider
    DataSet = CAD_FD_C_ITE
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    OnDataRequest = CAD_DP_C_ITEDataRequest
    Left = 168
    Top = 466
  end
  object BUS_CD_C_ITE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_ITE'
    Left = 368
    Top = 464
    object BUS_CD_C_ITEid_item: TIntegerField
      FieldName = 'id_item'
      Required = True
    end
    object BUS_CD_C_ITEdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object BUS_CD_C_ITEfantasia: TStringField
      FieldName = 'fantasia'
      Size = 30
    end
    object BUS_CD_C_ITEid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
    end
    object BUS_CD_C_ITEid_grupo: TStringField
      FieldName = 'id_grupo'
      FixedChar = True
      Size = 11
    end
    object BUS_CD_C_ITEid_und_compra: TStringField
      FieldName = 'id_und_compra'
      FixedChar = True
      Size = 3
    end
    object BUS_CD_C_ITEid_und_venda: TStringField
      FieldName = 'id_und_venda'
      FixedChar = True
      Size = 3
    end
    object BUS_CD_C_ITEcod_barra: TStringField
      FieldName = 'cod_barra'
      Size = 50
    end
    object BUS_CD_C_ITEcod_fabrica: TStringField
      FieldName = 'cod_fabrica'
      Size = 30
    end
    object BUS_CD_C_ITEpreco_avista: TFloatField
      FieldName = 'preco_avista'
    end
    object BUS_CD_C_ITEpreco_aprazo: TFloatField
      FieldName = 'preco_aprazo'
    end
    object BUS_CD_C_ITEid_familia: TIntegerField
      FieldName = 'id_familia'
    end
    object BUS_CD_C_ITEativo: TBooleanField
      FieldName = 'ativo'
    end
    object BUS_CD_C_ITEint_tipo_item: TStringField
      FieldName = 'int_tipo_item'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object BUS_CD_C_ITEcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object BUS_CD_C_ITEid_ncm: TStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object BUS_CD_C_ITEloca_rua: TStringField
      FieldName = 'loca_rua'
      Size = 4
    end
    object BUS_CD_C_ITEreferencia: TStringField
      FieldName = 'referencia'
      Size = 100
    end
    object BUS_CD_C_ITEdestino_reclamado: TIntegerField
      FieldName = 'destino_reclamado'
    end
  end
  object CAD_FD_C_CLI: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT CLI.*, CID.UF AS int_uf,  CID.NOME AS int_nomecid,'
      '     REG.DESC_PERC AS INT_REG_DESC_PERC'
      'FROM CAD_TB_C_CLI CLI'
      'LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=CLI.ID_CIDADE'
      
        'LEFT OUTER JOIN PCP_TB_C_REG REG ON (REG.ID_REGIAO = CLI.ID_REGI' +
        'AO) '
      'where 1 = 2')
    Left = 56
    Top = 880
    object CAD_FD_C_CLIid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_CLIpessoa: TIntegerField
      FieldName = 'pessoa'
      Origin = 'pessoa'
      Required = True
    end
    object CAD_FD_C_CLInome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object CAD_FD_C_CLIendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 60
    end
    object CAD_FD_C_CLIend_complemento: TStringField
      FieldName = 'end_complemento'
      Origin = 'end_complemento'
      Size = 30
    end
    object CAD_FD_C_CLIcep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      FixedChar = True
      Size = 9
    end
    object CAD_FD_C_CLInumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      FixedChar = True
      Size = 10
    end
    object CAD_FD_C_CLItel_fixo: TStringField
      FieldName = 'tel_fixo'
      Origin = 'tel_fixo'
      Size = 14
    end
    object CAD_FD_C_CLItel_movel: TStringField
      FieldName = 'tel_movel'
      Origin = 'tel_movel'
      Size = 14
    end
    object CAD_FD_C_CLIfax: TStringField
      FieldName = 'fax'
      Origin = 'fax'
      Size = 14
    end
    object CAD_FD_C_CLIdoc_cnpj_cpf: TStringField
      FieldName = 'doc_cnpj_cpf'
      Origin = 'doc_cnpj_cpf'
      Required = True
      Size = 14
    end
    object CAD_FD_C_CLIdoc_ie_identidade: TStringField
      FieldName = 'doc_ie_identidade'
      Origin = 'doc_ie_identidade'
    end
    object CAD_FD_C_CLIbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object CAD_FD_C_CLIid_cidade: TStringField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      FixedChar = True
      Size = 10
    end
    object CAD_FD_C_CLIativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
      Required = True
    end
    object CAD_FD_C_CLIemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object CAD_FD_C_CLIlim_valor: TFloatField
      FieldName = 'lim_valor'
      Origin = 'lim_valor'
    end
    object CAD_FD_C_CLIlim_saldo: TFloatField
      FieldName = 'lim_saldo'
      Origin = 'lim_saldo'
    end
    object CAD_FD_C_CLIsexo: TIntegerField
      FieldName = 'sexo'
      Origin = 'sexo'
    end
    object CAD_FD_C_CLIsituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
    end
    object CAD_FD_C_CLItipo_cliente: TIntegerField
      FieldName = 'tipo_cliente'
      Origin = 'tipo_cliente'
      Required = True
    end
    object CAD_FD_C_CLIcod_pais: TStringField
      FieldName = 'cod_pais'
      Origin = 'cod_pais'
      FixedChar = True
      Size = 5
    end
    object CAD_FD_C_CLIid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Origin = 'id_perfil_cli'
      Required = True
    end
    object CAD_FD_C_CLIdoc_rg_orgao: TStringField
      FieldName = 'doc_rg_orgao'
      Origin = 'doc_rg_orgao'
      Size = 10
    end
    object CAD_FD_C_CLIid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
      Origin = 'id_vendedor'
    end
    object CAD_FD_C_CLIdias_prazo_financeiro: TIntegerField
      FieldName = 'dias_prazo_financeiro'
      Origin = 'dias_prazo_financeiro'
    end
    object CAD_FD_C_CLIint_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_uf'
      Origin = 'uf'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object CAD_FD_C_CLIint_nomecid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_nomecid'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object CAD_FD_C_CLIapelido: TStringField
      FieldName = 'apelido'
      Origin = 'apelido'
      Size = 40
    end
    object CAD_FD_C_CLIid_regiao: TIntegerField
      FieldName = 'id_regiao'
      Origin = 'id_regiao'
    end
    object CAD_FD_C_CLIINT_REG_DESC_PERC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'INT_REG_DESC_PERC'
      Origin = 'desc_perc'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object CAD_DP_C_CLI: TDataSetProvider
    DataSet = CAD_FD_C_CLI
    OnDataRequest = CAD_DP_C_CLIDataRequest
    Left = 168
    Top = 880
  end
  object BUS_CD_C_CLI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CLI'
    Left = 368
    Top = 880
    object BUS_CD_C_CLIid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_CD_C_CLIpessoa: TIntegerField
      FieldName = 'pessoa'
      Origin = 'pessoa'
      Required = True
    end
    object BUS_CD_C_CLInome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object BUS_CD_C_CLIendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 60
    end
    object BUS_CD_C_CLIend_complemento: TStringField
      FieldName = 'end_complemento'
      Origin = 'end_complemento'
      Size = 30
    end
    object BUS_CD_C_CLIcep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      FixedChar = True
      Size = 9
    end
    object BUS_CD_C_CLInumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      FixedChar = True
      Size = 10
    end
    object BUS_CD_C_CLItel_fixo: TStringField
      FieldName = 'tel_fixo'
      Origin = 'tel_fixo'
      Size = 14
    end
    object BUS_CD_C_CLItel_movel: TStringField
      FieldName = 'tel_movel'
      Origin = 'tel_movel'
      Size = 14
    end
    object BUS_CD_C_CLIfax: TStringField
      FieldName = 'fax'
      Origin = 'fax'
      Size = 14
    end
    object BUS_CD_C_CLIdoc_cnpj_cpf: TStringField
      FieldName = 'doc_cnpj_cpf'
      Origin = 'doc_cnpj_cpf'
      Required = True
      Size = 14
    end
    object BUS_CD_C_CLIdoc_ie_identidade: TStringField
      FieldName = 'doc_ie_identidade'
      Origin = 'doc_ie_identidade'
    end
    object BUS_CD_C_CLIbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object BUS_CD_C_CLIid_cidade: TStringField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      FixedChar = True
      Size = 10
    end
    object BUS_CD_C_CLIativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
      Required = True
    end
    object BUS_CD_C_CLIemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object BUS_CD_C_CLIlim_valor: TFloatField
      FieldName = 'lim_valor'
      Origin = 'lim_valor'
    end
    object BUS_CD_C_CLIlim_saldo: TFloatField
      FieldName = 'lim_saldo'
      Origin = 'lim_saldo'
    end
    object BUS_CD_C_CLIsexo: TIntegerField
      FieldName = 'sexo'
      Origin = 'sexo'
    end
    object BUS_CD_C_CLIsituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
    end
    object BUS_CD_C_CLItipo_cliente: TIntegerField
      FieldName = 'tipo_cliente'
      Origin = 'tipo_cliente'
      Required = True
    end
    object BUS_CD_C_CLIcod_pais: TStringField
      FieldName = 'cod_pais'
      Origin = 'cod_pais'
      FixedChar = True
      Size = 5
    end
    object BUS_CD_C_CLIid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Origin = 'id_perfil_cli'
      Required = True
    end
    object BUS_CD_C_CLIdoc_rg_orgao: TStringField
      FieldName = 'doc_rg_orgao'
      Origin = 'doc_rg_orgao'
      Size = 10
    end
    object BUS_CD_C_CLIid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
      Origin = 'id_vendedor'
    end
    object BUS_CD_C_CLIdias_prazo_financeiro: TIntegerField
      FieldName = 'dias_prazo_financeiro'
      Origin = 'dias_prazo_financeiro'
    end
    object BUS_CD_C_CLIint_uf: TStringField
      FieldName = 'int_uf'
      Origin = 'uf'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object BUS_CD_C_CLIint_nomecid: TStringField
      FieldName = 'int_nomecid'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object BUS_CD_C_CLIapelido: TStringField
      FieldName = 'apelido'
      Size = 40
    end
    object BUS_CD_C_CLIid_regiao: TIntegerField
      FieldName = 'id_regiao'
    end
    object BUS_CD_C_CLIINT_REG_DESC_PERC: TFloatField
      FieldName = 'INT_REG_DESC_PERC'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object BUS_FD_CSU_ITE: TFDQuery
    Connection = conexao
    SQL.Strings = (
      ' SELECT ITE.*,'
      '        GRU.DESCRICAO INT_DESC_GRUPO,'
      '        GRU.TIPO_ITEM INT_TIPO_ITEM, '
      '        FON.DESCRICAO AS INT_NOMEFOR '
      '        FROM CAD_TB_C_ITE ITE '
      
        '        LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_' +
        'GRUPO '
      
        '        LEFT OUTER JOIN CAD_TB_C_FOR FON ON FON.ID_FORNECEDOR=IT' +
        'E.ID_FORNECEDOR '
      'WHERE 1=2 '
      '')
    Left = 600
    Top = 272
    object BUS_FD_CSU_ITEid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_FD_CSU_ITEdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object BUS_FD_CSU_ITEfantasia: TStringField
      FieldName = 'fantasia'
      Origin = 'fantasia'
      Size = 30
    end
    object BUS_FD_CSU_ITEid_familia: TIntegerField
      FieldName = 'id_familia'
      Origin = 'id_familia'
    end
    object BUS_FD_CSU_ITEid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
    end
    object BUS_FD_CSU_ITEid_grupo: TStringField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      FixedChar = True
      Size = 11
    end
    object BUS_FD_CSU_ITEid_und_compra: TStringField
      FieldName = 'id_und_compra'
      Origin = 'id_und_compra'
      FixedChar = True
      Size = 3
    end
    object BUS_FD_CSU_ITEid_und_venda: TStringField
      FieldName = 'id_und_venda'
      Origin = 'id_und_venda'
      FixedChar = True
      Size = 3
    end
    object BUS_FD_CSU_ITEcod_barra: TStringField
      FieldName = 'cod_barra'
      Origin = 'cod_barra'
      Size = 50
    end
    object BUS_FD_CSU_ITEcod_fabrica: TStringField
      FieldName = 'cod_fabrica'
      Origin = 'cod_fabrica'
      Size = 30
    end
    object BUS_FD_CSU_ITEpreco_avista: TFloatField
      FieldName = 'preco_avista'
      Origin = 'preco_avista'
    end
    object BUS_FD_CSU_ITEpreco_aprazo: TFloatField
      FieldName = 'preco_aprazo'
      Origin = 'preco_aprazo'
    end
    object BUS_FD_CSU_ITEativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
    object BUS_FD_CSU_ITEcubagem: TFloatField
      FieldName = 'cubagem'
      Origin = 'cubagem'
    end
    object BUS_FD_CSU_ITEINT_DESC_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_DESC_GRUPO'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object BUS_FD_CSU_ITEINT_NOMEFOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMEFOR'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object BUS_FD_CSU_ITEINT_TIPO_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_TIPO_ITEM'
      Origin = 'tipo_item'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object BUS_FD_CSU_ITEid_ncm: TStringField
      FieldName = 'id_ncm'
      Origin = 'id_ncm'
      Size = 10
    end
    object BUS_FD_CSU_ITEloca_rua: TStringField
      FieldName = 'loca_rua'
      Origin = 'loca_rua'
      Size = 4
    end
    object BUS_FD_CSU_ITEreferencia: TStringField
      FieldName = 'referencia'
      Origin = 'referencia'
      Size = 100
    end
    object BUS_FD_CSU_ITEdestino_reclamado: TIntegerField
      FieldName = 'destino_reclamado'
      Origin = 'destino_reclamado'
    end
  end
  object BUS_DP_CSU_ITE: TDataSetProvider
    DataSet = BUS_FD_CSU_ITE
    OnDataRequest = BUS_DP_CSU_ITEDataRequest
    Left = 728
    Top = 272
  end
  object BUS_CD_CSU_ITE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_CSU_ITE'
    Left = 864
    Top = 272
  end
  object EST_FD_M_FES: TFDQuery
    Connection = conexao
    SQL.Strings = (
      ' SELECT FES.* , '
      '       PAR.EMP_RAZAO AS INT_NOMEEMP, '
      '       PAR.EMP_FANTASIA AS INT_NOMEFAN, '
      '       COR.DESCRICAO AS INT_NOMECOR, '
      '       TAM.DESCRICAO AS INT_NOMETAM '
      '      FROM EST_TB_M_FES FES '
      
        '      LEFT OUTER JOIN CAD_TB_C_PAR PAR ON PAR.ID_EMPRESA=FES.ID_' +
        'EMPRESA '
      '      LEFT OUTER JOIN CAD_TB_C_COR COR ON COR.ID_COR=FES.ID_COR '
      
        '      LEFT OUTER JOIN CAD_TB_C_TAM TAM ON TAM.ID_TAMANHO=FES.ID_' +
        'TAMANHO ;')
    Left = 1080
    Top = 72
    object EST_FD_M_FESid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_FD_M_FESid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_FD_M_FESid_cor: TIntegerField
      FieldName = 'id_cor'
      Origin = 'id_cor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_FD_M_FESid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Origin = 'id_tamanho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_FD_M_FESdata_ult_movimento: TDateField
      FieldName = 'data_ult_movimento'
      Origin = 'data_ult_movimento'
    end
    object EST_FD_M_FESdata_ult_inventario: TDateField
      FieldName = 'data_ult_inventario'
      Origin = 'data_ult_inventario'
    end
    object EST_FD_M_FESqtde_entrada: TFloatField
      FieldName = 'qtde_entrada'
      Origin = 'qtde_entrada'
    end
    object EST_FD_M_FESqtde_saida: TFloatField
      FieldName = 'qtde_saida'
      Origin = 'qtde_saida'
    end
    object EST_FD_M_FESsaldo_fisico: TFloatField
      FieldName = 'saldo_fisico'
      Origin = 'saldo_fisico'
    end
    object EST_FD_M_FESqtde_ped_compra: TFloatField
      FieldName = 'qtde_ped_compra'
      Origin = 'qtde_ped_compra'
    end
    object EST_FD_M_FESqtde_ped_venda: TFloatField
      FieldName = 'qtde_ped_venda'
      Origin = 'qtde_ped_venda'
    end
    object EST_FD_M_FESvlr_custo_medio: TFloatField
      FieldName = 'vlr_custo_medio'
      Origin = 'vlr_custo_medio'
    end
    object EST_FD_M_FESvlr_custo_ult_compra: TFloatField
      FieldName = 'vlr_custo_ult_compra'
      Origin = 'vlr_custo_ult_compra'
    end
    object EST_FD_M_FESINT_NOMEEMP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMEEMP'
      Origin = 'emp_razao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object EST_FD_M_FESINT_NOMEFAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMEFAN'
      Origin = 'emp_fantasia'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object EST_FD_M_FESINT_NOMECOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMECOR'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object EST_FD_M_FESINT_NOMETAM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMETAM'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
  object EST_DP_M_FES: TDataSetProvider
    DataSet = EST_FD_M_FES
    OnDataRequest = EST_DP_M_FESDataRequest
    Left = 1184
    Top = 72
  end
  object BUS_CD_M_FES: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EST_DP_M_FES'
    Left = 1424
    Top = 72
  end
  object EST_FD_M_FES_ALM: TFDQuery
    Connection = conexao
    SQL.Strings = (
      ' select FAL.*, alm.descricao as int_nomealm, '
      '        PAR.EMP_RAZAO AS INT_NOMEEMP, '
      '        PAR.EMP_FANTASIA AS INT_NOMEFAN, '
      '        COR.DESCRICAO AS INT_NOMECOR, '
      '        TAM.DESCRICAO AS INT_NOMETAM '
      '      from EST_TB_M_FES_ALM FAL '
      
        '      left outer join cad_tb_c_alm alm on alm.id_almoxarifado=fa' +
        'l.id_almoxarifado '
      
        '      LEFT OUTER JOIN CAD_TB_C_PAR PAR ON PAR.ID_EMPRESA=fal.ID_' +
        'EMPRESA '
      '      LEFT OUTER JOIN CAD_TB_C_COR COR ON COR.ID_COR=FAL.ID_COR '
      
        '      LEFT OUTER JOIN CAD_TB_C_TAM TAM ON TAM.ID_TAMANHO=FAL.ID_' +
        'TAMANHO ')
    Left = 1080
    Top = 128
    object EST_FD_M_FES_ALMid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_FD_M_FES_ALMid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_FD_M_FES_ALMid_cor: TIntegerField
      FieldName = 'id_cor'
      Origin = 'id_cor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_FD_M_FES_ALMid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Origin = 'id_tamanho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_FD_M_FES_ALMid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
      Origin = 'id_almoxarifado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_FD_M_FES_ALMdata_ult_movimento: TDateField
      FieldName = 'data_ult_movimento'
      Origin = 'data_ult_movimento'
    end
    object EST_FD_M_FES_ALMdata_ult_inventario: TDateField
      FieldName = 'data_ult_inventario'
      Origin = 'data_ult_inventario'
    end
    object EST_FD_M_FES_ALMqtde_entrada: TFloatField
      FieldName = 'qtde_entrada'
      Origin = 'qtde_entrada'
    end
    object EST_FD_M_FES_ALMqtde_saida: TFloatField
      FieldName = 'qtde_saida'
      Origin = 'qtde_saida'
    end
    object EST_FD_M_FES_ALMsaldo_fisico: TFloatField
      FieldName = 'saldo_fisico'
      Origin = 'saldo_fisico'
    end
    object EST_FD_M_FES_ALMint_nomealm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_nomealm'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object EST_FD_M_FES_ALMINT_NOMEEMP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMEEMP'
      Origin = 'emp_razao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object EST_FD_M_FES_ALMINT_NOMEFAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMEFAN'
      Origin = 'emp_fantasia'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object EST_FD_M_FES_ALMINT_NOMECOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMECOR'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object EST_FD_M_FES_ALMINT_NOMETAM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMETAM'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
  object EST_DP_M_FES_ALM: TDataSetProvider
    DataSet = EST_FD_M_FES_ALM
    OnDataRequest = EST_DP_M_FES_ALMDataRequest
    Left = 1184
    Top = 128
  end
  object BUS_CD_M_FES_ALM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EST_DP_M_FES_ALM'
    Left = 1424
    Top = 128
  end
  object CAD_FD_C_PAR_MOD: TFDQuery
    MasterSource = CAD_DS_C_PAR
    MasterFields = 'id_empresa'
    DetailFields = 'id_empresa'
    Connection = conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT MOD.* FROM CAD_TB_C_PAR_MOD MOD'
      'WHERE MOD.ID_EMPRESA=:ID_EMPRESA')
    Left = 56
    Top = 128
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object CAD_FD_C_PAR_MODid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_PAR_MODsgq: TBooleanField
      FieldName = 'sgq'
      Origin = 'sgq'
    end
    object CAD_FD_C_PAR_MODctc: TBooleanField
      FieldName = 'ctc'
      Origin = 'ctc'
    end
    object CAD_FD_C_PAR_MODrev: TBooleanField
      FieldName = 'rev'
      Origin = 'rev'
    end
  end
  object CAD_DS_C_PAR: TDataSource
    DataSet = CAD_FD_C_PAR
    Left = 168
    Top = 128
  end
  object CAD_CD_C_PAR_MOD: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_PARCAD_FD_C_PAR_MOD
    Params = <>
    Left = 272
    Top = 128
    object CAD_CD_C_PAR_MODid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_CD_C_PAR_MODsgq: TBooleanField
      FieldName = 'sgq'
      Origin = 'sgq'
    end
    object CAD_CD_C_PAR_MODctc: TBooleanField
      FieldName = 'ctc'
      Origin = 'ctc'
    end
    object CAD_CD_C_PAR_MODrev: TBooleanField
      FieldName = 'rev'
      Origin = 'rev'
    end
  end
  object CAD_FD_C_PAR_CTR: TFDQuery
    MasterSource = CAD_DS_C_PAR
    MasterFields = 'id_empresa'
    DetailFields = 'id_empresa'
    Connection = conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT CTR.* FROM CAD_TB_C_PAR_CTR CTR'
      'WHERE CTR.ID_EMPRESA=:ID_EMPRESA')
    Left = 56
    Top = 184
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object CAD_FD_C_PAR_CTRid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_PAR_CTRutiliza_almoxarifado: TBooleanField
      FieldName = 'utiliza_almoxarifado'
      Origin = 'utiliza_almoxarifado'
    end
    object CAD_FD_C_PAR_CTRfaz_corr_preco_perfil: TBooleanField
      FieldName = 'faz_corr_preco_perfil'
      Origin = 'faz_corr_preco_perfil'
    end
    object CAD_FD_C_PAR_CTRprc_ite_manual: TBooleanField
      FieldName = 'prc_ite_manual'
      Origin = 'prc_ite_manual'
    end
    object CAD_FD_C_PAR_CTRped_corr_preco_prazo: TBooleanField
      FieldName = 'ped_corr_preco_prazo'
      Origin = 'ped_corr_preco_prazo'
    end
    object CAD_FD_C_PAR_CTRped_altera_preco: TBooleanField
      FieldName = 'ped_altera_preco'
      Origin = 'ped_altera_preco'
    end
    object CAD_FD_C_PAR_CTRped_ativa_titulos: TBooleanField
      FieldName = 'ped_ativa_titulos'
      Origin = 'ped_ativa_titulos'
    end
    object CAD_FD_C_PAR_CTRdia_protesto: TIntegerField
      FieldName = 'dia_protesto'
      Origin = 'dia_protesto'
    end
    object CAD_FD_C_PAR_CTRativa_cor: TBooleanField
      FieldName = 'ativa_cor'
      Origin = 'ativa_cor'
    end
    object CAD_FD_C_PAR_CTRativa_tamanho: TBooleanField
      FieldName = 'ativa_tamanho'
      Origin = 'ativa_tamanho'
    end
    object CAD_FD_C_PAR_CTRid_alm_padrao: TIntegerField
      FieldName = 'id_alm_padrao'
      Origin = 'id_alm_padrao'
    end
    object CAD_FD_C_PAR_CTRsgq_dias_prev_cid_fora: TIntegerField
      FieldName = 'sgq_dias_prev_cid_fora'
      Origin = 'sgq_dias_prev_cid_fora'
    end
    object CAD_FD_C_PAR_CTRsgq_dias_prev_cid_dentro: TIntegerField
      FieldName = 'sgq_dias_prev_cid_dentro'
      Origin = 'sgq_dias_prev_cid_dentro'
    end
    object CAD_FD_C_PAR_CTRped_cliente: TIntegerField
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object CAD_FD_C_PAR_CTRped_ver_limite: TBooleanField
      FieldName = 'ped_ver_limite'
      Origin = 'ped_ver_limite'
    end
    object CAD_FD_C_PAR_CTRnfe_separa_prod_serv: TBooleanField
      FieldName = 'nfe_separa_prod_serv'
      Origin = 'nfe_separa_prod_serv'
    end
    object CAD_FD_C_PAR_CTRped_aceita_est_negativo: TBooleanField
      FieldName = 'ped_aceita_est_negativo'
      Origin = 'ped_aceita_est_negativo'
    end
    object CAD_FD_C_PAR_CTRper_desconto: TFloatField
      FieldName = 'per_desconto'
      Origin = 'per_desconto'
    end
    object CAD_FD_C_PAR_CTRped_cli_cns_vnd_max: TFloatField
      FieldName = 'ped_cli_cns_vnd_max'
      Origin = 'ped_cli_cns_vnd_max'
    end
    object CAD_FD_C_PAR_CTRcxa_critica_chq: TBooleanField
      FieldName = 'cxa_critica_chq'
      Origin = 'cxa_critica_chq'
    end
  end
  object CAD_CD_C_PAR_CTR: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_PARCAD_FD_C_PAR_CTR
    Params = <>
    Left = 272
    Top = 184
    object CAD_CD_C_PAR_CTRid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_CD_C_PAR_CTRutiliza_almoxarifado: TBooleanField
      FieldName = 'utiliza_almoxarifado'
      Origin = 'utiliza_almoxarifado'
    end
    object CAD_CD_C_PAR_CTRfaz_corr_preco_perfil: TBooleanField
      FieldName = 'faz_corr_preco_perfil'
      Origin = 'faz_corr_preco_perfil'
    end
    object CAD_CD_C_PAR_CTRprc_ite_manual: TBooleanField
      FieldName = 'prc_ite_manual'
      Origin = 'prc_ite_manual'
    end
    object CAD_CD_C_PAR_CTRped_corr_preco_prazo: TBooleanField
      FieldName = 'ped_corr_preco_prazo'
      Origin = 'ped_corr_preco_prazo'
    end
    object CAD_CD_C_PAR_CTRped_altera_preco: TBooleanField
      FieldName = 'ped_altera_preco'
      Origin = 'ped_altera_preco'
    end
    object CAD_CD_C_PAR_CTRped_ativa_titulos: TBooleanField
      FieldName = 'ped_ativa_titulos'
      Origin = 'ped_ativa_titulos'
    end
    object CAD_CD_C_PAR_CTRdia_protesto: TIntegerField
      FieldName = 'dia_protesto'
      Origin = 'dia_protesto'
    end
    object CAD_CD_C_PAR_CTRativa_cor: TBooleanField
      FieldName = 'ativa_cor'
      Origin = 'ativa_cor'
    end
    object CAD_CD_C_PAR_CTRativa_tamanho: TBooleanField
      FieldName = 'ativa_tamanho'
      Origin = 'ativa_tamanho'
    end
    object CAD_CD_C_PAR_CTRid_alm_padrao: TIntegerField
      FieldName = 'id_alm_padrao'
      Origin = 'id_alm_padrao'
    end
    object CAD_CD_C_PAR_CTRsgq_dias_prev_cid_fora: TIntegerField
      FieldName = 'sgq_dias_prev_cid_fora'
      Origin = 'sgq_dias_prev_cid_fora'
    end
    object CAD_CD_C_PAR_CTRsgq_dias_prev_cid_dentro: TIntegerField
      FieldName = 'sgq_dias_prev_cid_dentro'
      Origin = 'sgq_dias_prev_cid_dentro'
    end
    object CAD_CD_C_PAR_CTRped_cliente: TIntegerField
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object CAD_CD_C_PAR_CTRped_ver_limite: TBooleanField
      FieldName = 'ped_ver_limite'
      Origin = 'ped_ver_limite'
    end
    object CAD_CD_C_PAR_CTRnfe_separa_prod_serv: TBooleanField
      FieldName = 'nfe_separa_prod_serv'
      Origin = 'nfe_separa_prod_serv'
    end
    object CAD_CD_C_PAR_CTRped_aceita_est_negativo: TBooleanField
      FieldName = 'ped_aceita_est_negativo'
      Origin = 'ped_aceita_est_negativo'
    end
    object CAD_CD_C_PAR_CTRper_desconto: TFloatField
      FieldName = 'per_desconto'
      Origin = 'per_desconto'
    end
    object CAD_CD_C_PAR_CTRped_cli_cns_vnd_max: TFloatField
      FieldName = 'ped_cli_cns_vnd_max'
      Origin = 'ped_cli_cns_vnd_max'
    end
    object CAD_CD_C_PAR_CTRcxa_critica_chq: TBooleanField
      FieldName = 'cxa_critica_chq'
      Origin = 'cxa_critica_chq'
    end
  end
  object BUS_CD_C_PAR_CPG_INF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_PAR_CPG_INF'
    Left = 864
    Top = 185
  end
  object CAD_CD_C_PAR_CPG: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_PARCAD_FD_C_PAR_CPG
    Params = <>
    Left = 272
    Top = 240
    object CAD_CD_C_PAR_CPGid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_CD_C_PAR_CPGper_reajuste: TFloatField
      FieldName = 'per_reajuste'
      Origin = 'per_reajuste'
    end
    object CAD_CD_C_PAR_CPGsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = 'sequencia'
    end
    object CAD_CD_C_PAR_CPGid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object CAD_FD_C_PAR_CPG: TFDQuery
    MasterSource = CAD_DS_C_PAR
    MasterFields = 'id_empresa'
    DetailFields = 'id_empresa'
    Connection = conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select cpg.* from cad_tb_c_par_cpg cpg'
      'where cpg.id_empresa=:id_empresa')
    Left = 56
    Top = 240
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object CAD_FD_C_PAR_CPGid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_PAR_CPGid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_PAR_CPGper_reajuste: TFloatField
      FieldName = 'per_reajuste'
      Origin = 'per_reajuste'
    end
    object CAD_FD_C_PAR_CPGsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = 'sequencia'
    end
  end
  object BUS_DP_C_PAR_CPG_INF: TDataSetProvider
    DataSet = BUS_FD_C_PAR_CPG_INF
    OnDataRequest = BUS_DP_C_PAR_CPG_INFDataRequest
    Left = 728
    Top = 185
  end
  object BUS_FD_C_PAR_CPG_INF: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select ppg.id_empresa, ppg.id_condicao_pag, cpg.descricao as int' +
        '_nomecpg, ppg.sequencia, ccc.per_reajuste '
      
        '               from cad_tb_c_par_cpg ppg                        ' +
        '                                '
      
        '                 left outer join cad_tb_c_cpg cpg on (cpg.id_con' +
        'dicao_pag = ppg.id_condicao_pag) '
      
        '                 left outer join cad_tb_c_par_cpg ccc on ( ppg.i' +
        'd_empresa = ccc.id_empresa and '
      
        '                                                          ppg.se' +
        'quencia >= ccc.sequencia) '
      'where 1=2')
    Left = 600
    Top = 185
    object BUS_FD_C_PAR_CPG_INFid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_FD_C_PAR_CPG_INFid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_FD_C_PAR_CPG_INFint_nomecpg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_nomecpg'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object BUS_FD_C_PAR_CPG_INFsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = 'sequencia'
    end
    object BUS_FD_C_PAR_CPG_INFper_reajuste: TFloatField
      FieldName = 'per_reajuste'
      Origin = 'per_reajuste'
    end
  end
  object CAD_FD_C_PEC: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select pec.* from cad_tb_c_pec pec'
      'where 1=2')
    Left = 56
    Top = 304
    object CAD_FD_C_PECid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Origin = 'id_perfil_cli'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_PECdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object CAD_FD_C_PECper_correcao: TFloatField
      FieldName = 'per_correcao'
      Origin = 'per_correcao'
    end
    object CAD_FD_C_PECoperacao: TIntegerField
      FieldName = 'operacao'
      Origin = 'operacao'
    end
    object CAD_FD_C_PECper_correcao_aprazo: TFloatField
      FieldName = 'per_correcao_aprazo'
      Origin = 'per_correcao_aprazo'
    end
    object CAD_FD_C_PECper_correcao_financeiro: TFloatField
      FieldName = 'per_correcao_financeiro'
      Origin = 'per_correcao_financeiro'
    end
  end
  object CAD_DP_C_PEC: TDataSetProvider
    DataSet = CAD_FD_C_PEC
    OnDataRequest = CAD_DP_C_PECDataRequest
    Left = 168
    Top = 304
  end
  object BUS_CD_C_PEC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_PEC'
    Left = 368
    Top = 304
    object BUS_CD_C_PECid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Required = True
    end
    object BUS_CD_C_PECdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object BUS_CD_C_PECper_correcao: TFloatField
      FieldName = 'per_correcao'
    end
    object BUS_CD_C_PECoperacao: TIntegerField
      FieldName = 'operacao'
    end
    object BUS_CD_C_PECper_correcao_aprazo: TFloatField
      FieldName = 'per_correcao_aprazo'
    end
    object BUS_CD_C_PECper_correcao_financeiro: TFloatField
      FieldName = 'per_correcao_financeiro'
    end
  end
  object CAD_FD_C_FAM: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select fam.* from cad_tb_c_fam fam'
      'where 1=2')
    Left = 56
    Top = 352
    object CAD_FD_C_FAMid_familia: TIntegerField
      FieldName = 'id_familia'
      Origin = 'id_familia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_FAMdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 30
    end
    object CAD_FD_C_FAMfaz_corr_preco_perfil: TBooleanField
      FieldName = 'faz_corr_preco_perfil'
      Origin = 'faz_corr_preco_perfil'
    end
  end
  object CAD_DP_C_FAM: TDataSetProvider
    DataSet = CAD_FD_C_FAM
    OnDataRequest = CAD_DP_C_FAMDataRequest
    Left = 168
    Top = 352
  end
  object BUS_CD_C_FAM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FAM'
    Left = 368
    Top = 352
    object BUS_CD_C_FAMid_familia: TIntegerField
      FieldName = 'id_familia'
      Required = True
    end
    object BUS_CD_C_FAMdescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
    object BUS_CD_C_FAMfaz_corr_preco_perfil: TBooleanField
      FieldName = 'faz_corr_preco_perfil'
    end
  end
  object BUS_FD_C_PAR_CPG: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        '  SELECT PPG.*, CPG.DESCRICAO AS INT_NOMECPG FROM CAD_TB_C_PAR_C' +
        'PG PPG '
      
        '          left outer join CAD_TB_C_CPG CPG ON (CPG.ID_CONDICAO_P' +
        'AG = PPG.ID_CONDICAO_PAG)'
      'where 1=2')
    Left = 600
    Top = 128
    object BUS_FD_C_PAR_CPGid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_FD_C_PAR_CPGid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_FD_C_PAR_CPGper_reajuste: TFloatField
      FieldName = 'per_reajuste'
      Origin = 'per_reajuste'
    end
    object BUS_FD_C_PAR_CPGsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = 'sequencia'
    end
    object BUS_FD_C_PAR_CPGINT_NOMECPG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMECPG'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object BUS_DP_C_PAR_CPG: TDataSetProvider
    DataSet = BUS_FD_C_PAR_CPG
    OnDataRequest = BUS_DP_C_PAR_CPGDataRequest
    Left = 728
    Top = 128
  end
  object BUS_CD_C_PAR_CPG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_PAR_CPG'
    Left = 864
    Top = 128
  end
  object BUS_FD_C_ITE_PRC: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'SELECT PRC.*,PEC.DESCRICAO AS INT_DESC_PEC FROM CAD_TB_C_ITE_PRC' +
        ' PRC '
      
        '       LEFT OUTER JOIN CAD_TB_C_PEC PEC ON PEC.ID_PERFIL_CLI=PRC' +
        '.ID_PERFIL_CLI '
      'WHERE 1=2')
    Left = 600
    Top = 329
    object BUS_FD_C_ITE_PRCid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_FD_C_ITE_PRCid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Origin = 'id_perfil_cli'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_FD_C_ITE_PRCpreco_avista: TFloatField
      FieldName = 'preco_avista'
      Origin = 'preco_avista'
    end
    object BUS_FD_C_ITE_PRCpreco1: TFloatField
      FieldName = 'preco1'
      Origin = 'preco1'
    end
    object BUS_FD_C_ITE_PRCpreco2: TFloatField
      FieldName = 'preco2'
      Origin = 'preco2'
    end
    object BUS_FD_C_ITE_PRCpreco3: TFloatField
      FieldName = 'preco3'
      Origin = 'preco3'
    end
    object BUS_FD_C_ITE_PRCpreco4: TFloatField
      FieldName = 'preco4'
      Origin = 'preco4'
    end
    object BUS_FD_C_ITE_PRCINT_DESC_PEC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_DESC_PEC'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object BUS_DP_C_ITE_PRC: TDataSetProvider
    DataSet = BUS_FD_C_ITE_PRC
    OnDataRequest = BUS_DP_C_ITE_PRCDataRequest
    Left = 728
    Top = 329
  end
  object BUS_CD_C_ITE_PRC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_ITE_PRC'
    Left = 864
    Top = 329
    object BUS_CD_C_ITE_PRCid_item: TIntegerField
      FieldName = 'id_item'
      Required = True
    end
    object BUS_CD_C_ITE_PRCid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Required = True
    end
    object BUS_CD_C_ITE_PRCpreco_avista: TFloatField
      FieldName = 'preco_avista'
    end
    object BUS_CD_C_ITE_PRCpreco1: TFloatField
      FieldName = 'preco1'
    end
    object BUS_CD_C_ITE_PRCpreco2: TFloatField
      FieldName = 'preco2'
    end
    object BUS_CD_C_ITE_PRCpreco3: TFloatField
      FieldName = 'preco3'
    end
    object BUS_CD_C_ITE_PRCpreco4: TFloatField
      FieldName = 'preco4'
    end
  end
  object BUS_CD_C_CPG_EXP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CPG'
    Left = 472
    Top = 753
    object BUS_CD_C_CPG_EXPid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_CD_C_CPG_EXPdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
    object BUS_CD_C_CPG_EXPtipo_pagamento: TIntegerField
      FieldName = 'tipo_pagamento'
      Origin = 'tipo_pagamento'
      Required = True
    end
    object BUS_CD_C_CPG_EXPnum_parcelas: TIntegerField
      FieldName = 'num_parcelas'
      Origin = 'num_parcelas'
      Required = True
    end
    object BUS_CD_C_CPG_EXPper_desc: TFloatField
      FieldName = 'per_desc'
      Origin = 'per_desc'
    end
    object BUS_CD_C_CPG_EXPativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
      Required = True
    end
  end
  object CAD_FD_C_GRU: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select gru.* from cad_tb_c_gru gru'
      'where 1=2')
    Left = 56
    Top = 408
    object CAD_FD_C_GRUid_grupo: TStringField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 11
    end
    object CAD_FD_C_GRUdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
    object CAD_FD_C_GRUtipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object CAD_FD_C_GRUnivel: TIntegerField
      FieldName = 'nivel'
      Origin = 'nivel'
    end
    object CAD_FD_C_GRUtipo_item: TStringField
      FieldName = 'tipo_item'
      Origin = 'tipo_item'
      FixedChar = True
      Size = 2
    end
    object CAD_FD_C_GRUid_tributo: TIntegerField
      FieldName = 'id_tributo'
      Origin = 'id_tributo'
    end
    object CAD_FD_C_GRUpromo_ativa: TBooleanField
      FieldName = 'promo_ativa'
      Origin = 'promo_ativa'
    end
    object CAD_FD_C_GRUpromo_perc: TFloatField
      FieldName = 'promo_perc'
      Origin = 'promo_perc'
    end
    object CAD_FD_C_GRUdesc_ativa: TBooleanField
      FieldName = 'desc_ativa'
      Origin = 'desc_ativa'
    end
    object CAD_FD_C_GRUdesc_perc: TFloatField
      FieldName = 'desc_perc'
      Origin = 'desc_perc'
    end
  end
  object CAD_DP_C_GRU: TDataSetProvider
    DataSet = CAD_FD_C_GRU
    OnDataRequest = CAD_DP_C_GRUDataRequest
    Left = 168
    Top = 408
  end
  object BUS_CD_C_GRU: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_GRU'
    Left = 368
    Top = 408
    object BUS_CD_C_GRUid_grupo: TStringField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 11
    end
    object BUS_CD_C_GRUdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
    object BUS_CD_C_GRUtipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object BUS_CD_C_GRUnivel: TIntegerField
      FieldName = 'nivel'
      Origin = 'nivel'
    end
    object BUS_CD_C_GRUtipo_item: TStringField
      FieldName = 'tipo_item'
      Origin = 'tipo_item'
      FixedChar = True
      Size = 2
    end
    object BUS_CD_C_GRUid_tributo: TIntegerField
      FieldName = 'id_tributo'
      Origin = 'id_tributo'
    end
    object BUS_CD_C_GRUpromo_ativa: TBooleanField
      FieldName = 'promo_ativa'
      Origin = 'promo_ativa'
    end
    object BUS_CD_C_GRUpromo_perc: TFloatField
      FieldName = 'promo_perc'
      Origin = 'promo_perc'
    end
    object BUS_CD_C_GRUdesc_ativa: TBooleanField
      FieldName = 'desc_ativa'
      Origin = 'desc_ativa'
    end
    object BUS_CD_C_GRUdesc_perc: TFloatField
      FieldName = 'desc_perc'
      Origin = 'desc_perc'
    end
  end
  object CAD_CD_C_FUN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FUN'
    Left = 272
    Top = 693
    object CAD_CD_C_FUNid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
      Required = True
    end
    object CAD_CD_C_FUNnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object CAD_CD_C_FUNdoc_cpf: TStringField
      FieldName = 'doc_cpf'
      Size = 11
    end
    object CAD_CD_C_FUNlogin: TStringField
      FieldName = 'login'
      Size = 30
    end
    object CAD_CD_C_FUNsenha: TStringField
      FieldName = 'senha'
      Size = 100
    end
    object CAD_CD_C_FUNseg_alt_vend_ped: TBooleanField
      FieldName = 'seg_alt_vend_ped'
    end
    object CAD_CD_C_FUNseg_habilitar_seg: TBooleanField
      FieldName = 'seg_habilitar_seg'
    end
    object CAD_CD_C_FUNseg_hab_bot_exc: TBooleanField
      FieldName = 'seg_hab_bot_exc'
    end
    object CAD_CD_C_FUNseg_vis_ult_cmp_ite: TBooleanField
      FieldName = 'seg_vis_ult_cmp_ite'
    end
    object CAD_CD_C_FUNseg_hab_bot_alt_fun: TBooleanField
      FieldName = 'seg_hab_bot_alt_fun'
    end
    object CAD_CD_C_FUNseg_alt_pre_pro: TBooleanField
      FieldName = 'seg_alt_pre_pro'
      Required = True
    end
  end
  object BUS_FD_M_ULT_NFE_ITE: TFDQuery
    Connection = conexao
    Left = 600
    Top = 392
  end
  object BUS_DP_M_ULT_NFE_ITE: TDataSetProvider
    DataSet = BUS_FD_M_ULT_NFE_ITE
    Left = 728
    Top = 392
  end
  object BUS_CD_M_ULT_NFE_ITE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_ULT_NFE_ITE'
    Left = 864
    Top = 392
  end
  object BUS_FD_C_CSU_ITE_PRF: TFDQuery
    Connection = conexao
    Left = 600
    Top = 448
  end
  object BUS_DP_C_CSU_ITE_PRF: TDataSetProvider
    DataSet = BUS_FD_C_CSU_ITE_PRF
    Left = 728
    Top = 448
  end
  object BUS_CD_C_CSU_ITE_PRF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_CSU_ITE_PRF'
    Left = 864
    Top = 448
  end
  object BUS_CD_X_TIP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 2104
    Top = 72
    object BUS_CD_X_TIPCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object BUS_CD_X_TIPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object BUS_CD_C_FUN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FUN'
    Left = 368
    Top = 693
  end
  object CAD_FD_C_TME: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select tme.* from cad_tb_c_tme tme '
      'where 1=2')
    Left = 56
    Top = 640
    object CAD_FD_C_TMEid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Origin = 'id_tipo_mov_estoque'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_TMEdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 30
    end
    object CAD_FD_C_TMEtipo_movimento: TIntegerField
      FieldName = 'tipo_movimento'
      Origin = 'tipo_movimento'
    end
    object CAD_FD_C_TMEativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
    object CAD_FD_C_TMEindicador: TIntegerField
      FieldName = 'indicador'
      Origin = 'indicador'
    end
    object CAD_FD_C_TMEesto_movimenta: TBooleanField
      FieldName = 'esto_movimenta'
      Origin = 'esto_movimenta'
    end
  end
  object CAD_DP_C_TME: TDataSetProvider
    DataSet = CAD_FD_C_TME
    OnDataRequest = CAD_DP_C_TMEDataRequest
    Left = 168
    Top = 640
  end
  object BUS_CD_C_TME: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TME'
    Left = 368
    Top = 632
    object BUS_CD_C_TMEid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Origin = 'id_tipo_mov_estoque'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_CD_C_TMEdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 30
    end
    object BUS_CD_C_TMEtipo_movimento: TIntegerField
      FieldName = 'tipo_movimento'
      Origin = 'tipo_movimento'
    end
    object BUS_CD_C_TMEativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
    object BUS_CD_C_TMEindicador: TIntegerField
      FieldName = 'indicador'
      Origin = 'indicador'
    end
    object BUS_CD_C_TMEesto_movimenta: TBooleanField
      FieldName = 'esto_movimenta'
    end
  end
  object CAD_FD_C_COR: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select cor.* from cad_tb_c_cor cor'
      'where 1=2')
    Left = 56
    Top = 936
    object CAD_FD_C_CORid_cor: TIntegerField
      FieldName = 'id_cor'
      Origin = 'id_cor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_CORdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
  end
  object CAD_DP_C_COR: TDataSetProvider
    DataSet = CAD_FD_C_COR
    OnDataRequest = CAD_DP_C_CORDataRequest
    Left = 168
    Top = 936
  end
  object BUS_CD_C_COR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_COR'
    Left = 368
    Top = 936
  end
  object CAD_FD_C_TAM: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select tam.* from cad_tb_c_tam tam'
      'where 1=2')
    Left = 56
    Top = 1000
    object CAD_FD_C_TAMid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Origin = 'id_tamanho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_TAMdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
  end
  object CAD_DP_C_TAM: TDataSetProvider
    DataSet = CAD_FD_C_TAM
    OnDataRequest = CAD_DP_C_TAMDataRequest
    Left = 168
    Top = 1000
  end
  object BUS_CD_C_TAM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TAM'
    Left = 368
    Top = 1000
  end
  object EST_CD_M_FES: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EST_DP_M_FES'
    Left = 1296
    Top = 72
    object EST_CD_M_FESid_item: TIntegerField
      FieldName = 'id_item'
      Required = True
    end
    object EST_CD_M_FESid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object EST_CD_M_FESid_cor: TIntegerField
      FieldName = 'id_cor'
      Required = True
    end
    object EST_CD_M_FESid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Required = True
    end
    object EST_CD_M_FESdata_ult_movimento: TDateField
      FieldName = 'data_ult_movimento'
    end
    object EST_CD_M_FESdata_ult_inventario: TDateField
      FieldName = 'data_ult_inventario'
    end
    object EST_CD_M_FESqtde_entrada: TFloatField
      FieldName = 'qtde_entrada'
    end
    object EST_CD_M_FESqtde_saida: TFloatField
      FieldName = 'qtde_saida'
    end
    object EST_CD_M_FESsaldo_fisico: TFloatField
      FieldName = 'saldo_fisico'
    end
    object EST_CD_M_FESqtde_ped_compra: TFloatField
      FieldName = 'qtde_ped_compra'
    end
    object EST_CD_M_FESqtde_ped_venda: TFloatField
      FieldName = 'qtde_ped_venda'
    end
    object EST_CD_M_FESvlr_custo_medio: TFloatField
      FieldName = 'vlr_custo_medio'
    end
    object EST_CD_M_FESvlr_custo_ult_compra: TFloatField
      FieldName = 'vlr_custo_ult_compra'
    end
    object EST_CD_M_FESINT_NOMEEMP: TStringField
      FieldName = 'INT_NOMEEMP'
      ReadOnly = True
      Size = 50
    end
    object EST_CD_M_FESINT_NOMEFAN: TStringField
      FieldName = 'INT_NOMEFAN'
      ReadOnly = True
      Size = 50
    end
    object EST_CD_M_FESINT_NOMECOR: TStringField
      FieldName = 'INT_NOMECOR'
      ReadOnly = True
      Size = 40
    end
    object EST_CD_M_FESINT_NOMETAM: TStringField
      FieldName = 'INT_NOMETAM'
      ReadOnly = True
      Size = 40
    end
  end
  object EST_CD_M_FES_ALM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EST_DP_M_FES_ALM'
    Left = 1304
    Top = 128
    object EST_CD_M_FES_ALMid_item: TIntegerField
      FieldName = 'id_item'
      Required = True
    end
    object EST_CD_M_FES_ALMid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object EST_CD_M_FES_ALMid_cor: TIntegerField
      FieldName = 'id_cor'
      Required = True
    end
    object EST_CD_M_FES_ALMid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Required = True
    end
    object EST_CD_M_FES_ALMid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
      Required = True
    end
    object EST_CD_M_FES_ALMdata_ult_movimento: TDateField
      FieldName = 'data_ult_movimento'
    end
    object EST_CD_M_FES_ALMdata_ult_inventario: TDateField
      FieldName = 'data_ult_inventario'
    end
    object EST_CD_M_FES_ALMqtde_entrada: TFloatField
      FieldName = 'qtde_entrada'
    end
    object EST_CD_M_FES_ALMqtde_saida: TFloatField
      FieldName = 'qtde_saida'
    end
    object EST_CD_M_FES_ALMsaldo_fisico: TFloatField
      FieldName = 'saldo_fisico'
    end
    object EST_CD_M_FES_ALMint_nomealm: TStringField
      FieldName = 'int_nomealm'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object EST_CD_M_FES_ALMINT_NOMEEMP: TStringField
      FieldName = 'INT_NOMEEMP'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object EST_CD_M_FES_ALMINT_NOMEFAN: TStringField
      FieldName = 'INT_NOMEFAN'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object EST_CD_M_FES_ALMINT_NOMECOR: TStringField
      FieldName = 'INT_NOMECOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object EST_CD_M_FES_ALMINT_NOMETAM: TStringField
      FieldName = 'INT_NOMETAM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
  object FAT_FD_M_PED: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'SELECT PED.*, CLI.NOME AS INT_NOMECLI, TME.DESCRICAO AS INT_NOME' +
        'TME, '
      
        '               FUN.NOME AS INT_NOMEFUN, CPG.DESCRICAO AS INT_NOM' +
        'ECPG, '
      
        '               ATE.NOME AS INT_NOMEATE, RES.NOME AS INT_NOMERES,' +
        ' '
      '               CID.NOME AS INT_NOMECID, '
      
        '               CID.UF AS INT_NOMEEST, CLI.doc_cnpj_cpf AS INT_CP' +
        'FCNPJ, CLI.pessoa as int_pessoacli, '
      '               CLI.ID_PERFIL_CLI AS INT_ID_PERFIL, '
      '              '
      '               cli.doc_ie_identidade as int_ie_rg_cli '
      ''
      '        FROM FAT_TB_M_PED PED '
      
        '        LEFT OUTER JOIN CAD_TB_C_CLI CLI ON CLI.ID_CLIENTE = PED' +
        '.ID_CLIENTE '
      
        '        LEFT OUTER JOIN CAD_TB_C_TME TME ON TME.ID_TIPO_MOV_ESTO' +
        'QUE = PED.ID_TIPO_MOV_ESTOQUE '
      
        '        LEFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN.ID_FUNCIONARIO=P' +
        'ED.ID_VENDEDOR '
      
        '        LEFT OUTER JOIN CAD_TB_C_CPG CPG ON CPG.ID_CONDICAO_PAG=' +
        'PED.ID_CONDICAO_PAG'
      
        '        LEFT OUTER JOIN CAD_TB_C_FUN ATE ON ATE.ID_FUNCIONARIO=P' +
        'ED.ID_ATENDENTE '
      
        '        LEFT OUTER JOIN CAD_TB_C_FUN RES ON RES.ID_FUNCIONARIO=P' +
        'ED.ID_RESPONSAVEL '
      
        '        LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=CLI.ID' +
        '_CIDADE '
      'where 1=2')
    Left = 1632
    Top = 72
    object FAT_FD_M_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_FD_M_PEDid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      Required = True
    end
    object FAT_FD_M_PEDdta_pedido: TDateField
      FieldName = 'dta_pedido'
      Origin = 'dta_pedido'
      Required = True
    end
    object FAT_FD_M_PEDid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Origin = 'id_tipo_mov_estoque'
      Required = True
    end
    object FAT_FD_M_PEDid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
      Origin = 'id_vendedor'
      Required = True
    end
    object FAT_FD_M_PEDobs: TStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object FAT_FD_M_PEDvlr_bruto: TFloatField
      FieldName = 'vlr_bruto'
      Origin = 'vlr_bruto'
      Required = True
    end
    object FAT_FD_M_PEDvlr_desconto: TFloatField
      FieldName = 'vlr_desconto'
      Origin = 'vlr_desconto'
      Required = True
    end
    object FAT_FD_M_PEDper_desconto: TFloatField
      FieldName = 'per_desconto'
      Origin = 'per_desconto'
      Required = True
    end
    object FAT_FD_M_PEDvlr_liquido: TFloatField
      FieldName = 'vlr_liquido'
      Origin = 'vlr_liquido'
      Required = True
    end
    object FAT_FD_M_PEDhor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
      Origin = 'hor_pedido'
    end
    object FAT_FD_M_PEDid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
      Required = True
    end
    object FAT_FD_M_PEDpcp_obs: TStringField
      FieldName = 'pcp_obs'
      Origin = 'pcp_obs'
      Size = 100
    end
    object FAT_FD_M_PEDpcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
      Origin = 'pcp_id_opr'
    end
    object FAT_FD_M_PEDsituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
    end
    object FAT_FD_M_PEDsituacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
      Origin = 'situacao_aprovacao'
      Required = True
    end
    object FAT_FD_M_PEDid_atendente: TIntegerField
      FieldName = 'id_atendente'
      Origin = 'id_atendente'
    end
    object FAT_FD_M_PEDid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
      Origin = 'id_responsavel'
    end
    object FAT_FD_M_PEDid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object FAT_FD_M_PEDtipo_restricao: TStringField
      FieldName = 'tipo_restricao'
      Origin = 'tipo_restricao'
      Size = 100
    end
    object FAT_FD_M_PEDid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
      Origin = 'id_almoxarifado'
    end
    object FAT_FD_M_PEDjustificativa: TStringField
      FieldName = 'justificativa'
      Origin = 'justificativa'
      Size = 100
    end
    object FAT_FD_M_PEDid_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
      Origin = 'id_usuario_lib'
    end
    object FAT_FD_M_PEDcod_lme: TStringField
      FieldName = 'cod_lme'
      Origin = 'cod_lme'
    end
    object FAT_FD_M_PEDrev_lme: TStringField
      FieldName = 'rev_lme'
      Origin = 'rev_lme'
      Size = 5
    end
    object FAT_FD_M_PEDorigem: TIntegerField
      FieldName = 'origem'
      Origin = 'origem'
    end
    object FAT_FD_M_PEDdispositivo: TStringField
      FieldName = 'dispositivo'
      Origin = 'dispositivo'
      Size = 50
    end
    object FAT_FD_M_PEDgps_latitude: TFloatField
      FieldName = 'gps_latitude'
      Origin = 'gps_latitude'
    end
    object FAT_FD_M_PEDgps_longitude: TFloatField
      FieldName = 'gps_longitude'
      Origin = 'gps_longitude'
    end
    object FAT_FD_M_PEDcubagem: TFloatField
      FieldName = 'cubagem'
      Origin = 'cubagem'
    end
    object FAT_FD_M_PEDid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
      Origin = 'id_orcamento'
    end
    object FAT_FD_M_PEDenvia_carga: TBooleanField
      FieldName = 'envia_carga'
      Origin = 'envia_carga'
    end
    object FAT_FD_M_PEDdta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
      Origin = 'dta_prev_entrega'
    end
    object FAT_FD_M_PEDid_abertura: TIntegerField
      FieldName = 'id_abertura'
      Origin = 'id_abertura'
    end
    object FAT_FD_M_PEDdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
      Origin = 'dias_cpg_prazo'
    end
    object FAT_FD_M_PEDoffline: TBooleanField
      FieldName = 'offline'
      Origin = 'offline'
    end
    object FAT_FD_M_PEDconferido: TBooleanField
      FieldName = 'conferido'
      Origin = 'conferido'
    end
    object FAT_FD_M_PEDid_conf: TIntegerField
      FieldName = 'id_conf'
      Origin = 'id_conf'
    end
    object FAT_FD_M_PEDdta_conf: TDateField
      FieldName = 'dta_conf'
      Origin = 'dta_conf'
    end
    object FAT_FD_M_PEDhor_conf: TTimeField
      FieldName = 'hor_conf'
      Origin = 'hor_conf'
    end
    object FAT_FD_M_PEDresultado_conf: TIntegerField
      FieldName = 'resultado_conf'
      Origin = 'resultado_conf'
    end
    object FAT_FD_M_PEDINT_NOMECLI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMECLI'
      Origin = 'nome'
      ProviderFlags = []
      Size = 50
    end
    object FAT_FD_M_PEDINT_NOMECID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMECID'
      Origin = 'nome'
      ProviderFlags = []
      Size = 60
    end
    object FAT_FD_M_PEDINT_NOMEEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMEEST'
      Origin = 'uf'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object FAT_FD_M_PEDINT_CPFCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_CPFCNPJ'
      Origin = 'doc_cnpj_cpf'
      ProviderFlags = []
      Size = 14
    end
    object FAT_FD_M_PEDint_pessoacli: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'int_pessoacli'
      Origin = 'pessoa'
      ProviderFlags = []
    end
    object FAT_FD_M_PEDINT_ID_PERFIL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INT_ID_PERFIL'
      Origin = 'id_perfil_cli'
      ProviderFlags = []
    end
    object FAT_FD_M_PEDINT_NOMETME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMETME'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FAT_FD_M_PEDINT_NOMEFUN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMEFUN'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FAT_FD_M_PEDINT_NOMECPG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMECPG'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FAT_FD_M_PEDINT_NOMEATE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMEATE'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FAT_FD_M_PEDINT_NOMERES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMERES'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FAT_FD_M_PEDint_ie_rg_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_ie_rg_cli'
      Origin = 'doc_ie_identidade'
      ProviderFlags = []
      ReadOnly = True
    end
    object FAT_FD_M_PEDped_excluido: TBooleanField
      FieldName = 'ped_excluido'
      Origin = 'ped_excluido'
    end
  end
  object FAT_FD_M_PED_ITE: TFDQuery
    MasterSource = FAT_SQ_M_PED
    MasterFields = 'id_pedido'
    DetailFields = 'id_pedido'
    Connection = conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select pte.*, '
      'ITE.DESCRICAO AS int_nomeite, COR.DESCRICAO AS int_nomecor, '
      '       ITE.id_und_venda AS int_id_und_venda ,'
      '       '
      'GRU.TIPO_ITEM  AS  int_tipo_item ,'
      '       TAM.DESCRICAO AS int_nometam'
      'from fat_tb_m_ped_ite pte'
      'LEFT OUTER JOIN CAD_TB_C_ITE ITE ON ITE.ID_ITEM = PTE.ID_ITEM'
      'left outer join CAD_TB_C_GRU GRU on GRU.ID_GRUPO = ITE.ID_GRUPO'
      'LEFT OUTER JOIN CAD_TB_C_COR COR ON COR.ID_COR = PTE.ID_COR'
      
        'LEFT OUTER JOIN CAD_TB_C_TAM TAM ON TAM.ID_TAMANHO = PTE.ID_TAMA' +
        'NHO'
      'where pte.id_pedido=:id_pedido'
      ''
      '')
    Left = 1632
    Top = 128
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object FAT_FD_M_PED_ITEid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_FD_M_PED_ITEid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_FD_M_PED_ITEid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      Required = True
    end
    object FAT_FD_M_PED_ITEqtde: TFloatField
      FieldName = 'qtde'
      Origin = 'qtde'
      Required = True
    end
    object FAT_FD_M_PED_ITEvlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = 'vlr_unitario'
      Required = True
    end
    object FAT_FD_M_PED_ITEvlr_bruto: TFloatField
      FieldName = 'vlr_bruto'
      Origin = 'vlr_bruto'
      Required = True
    end
    object FAT_FD_M_PED_ITEper_desconto: TFloatField
      FieldName = 'per_desconto'
      Origin = 'per_desconto'
      Required = True
    end
    object FAT_FD_M_PED_ITEvlr_desconto: TFloatField
      FieldName = 'vlr_desconto'
      Origin = 'vlr_desconto'
      Required = True
    end
    object FAT_FD_M_PED_ITEvlr_liquido: TFloatField
      FieldName = 'vlr_liquido'
      Origin = 'vlr_liquido'
      Required = True
    end
    object FAT_FD_M_PED_ITEid_cor: TIntegerField
      FieldName = 'id_cor'
      Origin = 'id_cor'
    end
    object FAT_FD_M_PED_ITEid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Origin = 'id_tamanho'
    end
    object FAT_FD_M_PED_ITEid_busca_item: TStringField
      FieldName = 'id_busca_item'
      Origin = 'id_busca_item'
      Size = 30
    end
    object FAT_FD_M_PED_ITEvlr_unitario_orig: TFloatField
      FieldName = 'vlr_unitario_orig'
      Origin = 'vlr_unitario_orig'
    end
    object FAT_FD_M_PED_ITEper_desc_max: TFloatField
      FieldName = 'per_desc_max'
      Origin = 'per_desc_max'
    end
    object FAT_FD_M_PED_ITEqtde_conferida: TFloatField
      FieldName = 'qtde_conferida'
      Origin = 'qtde_conferida'
    end
    object FAT_FD_M_PED_ITEint_nomeite: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_nomeite'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 100
    end
    object FAT_FD_M_PED_ITEint_nomecor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_nomecor'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 40
    end
    object FAT_FD_M_PED_ITEint_id_und_venda: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_id_und_venda'
      Origin = 'id_und_venda'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object FAT_FD_M_PED_ITEint_tipo_item: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_tipo_item'
      Origin = 'tipo_item'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object FAT_FD_M_PED_ITEint_nometam: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_nometam'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 40
    end
  end
  object FAT_FD_M_PED_TIT: TFDQuery
    MasterSource = FAT_SQ_M_PED
    MasterFields = 'id_pedido'
    DetailFields = 'id_pedido'
    Connection = conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select pti.*,FPG.DESCRICAO AS INT_NOMEFPG,FPG.DOC_IMPRESSO AS IN' +
        'T_DOCIMPRESSO '
      ''
      'from fat_tb_m_ped_tit pti'
      
        'LEFT OUTER JOIN CAD_TB_C_FPG FPG ON FPG.ID_FORMA_PAG=PTI.ID_FORM' +
        'A_PAG'
      'where pti.id_pedido=:id_pedido'
      ''
      ''
      '')
    Left = 1632
    Top = 184
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object FAT_FD_M_PED_TITid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_FD_M_PED_TITid_titulo: TIntegerField
      FieldName = 'id_titulo'
      Origin = 'id_titulo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FAT_FD_M_PED_TITdias: TIntegerField
      FieldName = 'dias'
      Origin = 'dias'
      Required = True
    end
    object FAT_FD_M_PED_TITdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
      Origin = 'dta_vencimento'
      Required = True
    end
    object FAT_FD_M_PED_TITvlr_titulo: TFloatField
      FieldName = 'vlr_titulo'
      Origin = 'vlr_titulo'
      Required = True
    end
    object FAT_FD_M_PED_TITche_banco: TStringField
      FieldName = 'che_banco'
      Origin = 'che_banco'
      FixedChar = True
      Size = 10
    end
    object FAT_FD_M_PED_TITche_agencia: TStringField
      FieldName = 'che_agencia'
      Origin = 'che_agencia'
      FixedChar = True
      Size = 10
    end
    object FAT_FD_M_PED_TITche_conta: TIntegerField
      FieldName = 'che_conta'
      Origin = 'che_conta'
    end
    object FAT_FD_M_PED_TITche_numero: TIntegerField
      FieldName = 'che_numero'
      Origin = 'che_numero'
    end
    object FAT_FD_M_PED_TITche_emitente: TStringField
      FieldName = 'che_emitente'
      Origin = 'che_emitente'
      Size = 50
    end
    object FAT_FD_M_PED_TITid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
    end
    object FAT_FD_M_PED_TITbol_nosso_numero: TIntegerField
      FieldName = 'bol_nosso_numero'
      Origin = 'bol_nosso_numero'
    end
    object FAT_FD_M_PED_TITid_maquineta: TIntegerField
      FieldName = 'id_maquineta'
      Origin = 'id_maquineta'
    end
    object FAT_FD_M_PED_TITINT_NOMEFPG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INT_NOMEFPG'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 30
    end
    object FAT_FD_M_PED_TITINT_DOCIMPRESSO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INT_DOCIMPRESSO'
      Origin = 'doc_impresso'
      ProviderFlags = []
    end
  end
  object FAT_SQ_M_PED: TDataSource
    DataSet = FAT_FD_M_PED
    Left = 1728
    Top = 128
  end
  object BUS_CD_C_FPG2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FPG'
    Left = 472
    Top = 816
  end
  object BUS_FD_C_TRI_REG: TFDQuery
    Connection = conexao
    SQL.Strings = (
      ' select * from CAD_TB_C_TRI_REG '
      'where 1=2')
    Left = 600
    Top = 72
    object BUS_FD_C_TRI_REGid_tributo: TIntegerField
      FieldName = 'id_tributo'
      Origin = 'id_tributo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_FD_C_TRI_REGid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Origin = 'id_tipo_mov_estoque'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BUS_FD_C_TRI_REGuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object BUS_FD_C_TRI_REGid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object BUS_DP_C_TRI_REG: TDataSetProvider
    DataSet = BUS_FD_C_TRI_REG
    OnDataRequest = BUS_DP_C_TRI_REGDataRequest
    Left = 728
    Top = 72
  end
  object BUS_CD_C_TRI_REG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_TRI_REG'
    Left = 864
    Top = 72
  end
  object BUS_CD_M_PED: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_PED'
    Left = 1960
    Top = 72
    object BUS_CD_M_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Required = True
    end
    object BUS_CD_M_PEDid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object BUS_CD_M_PEDdta_pedido: TDateField
      FieldName = 'dta_pedido'
      Required = True
    end
    object BUS_CD_M_PEDid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Required = True
    end
    object BUS_CD_M_PEDid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
      Required = True
    end
    object BUS_CD_M_PEDobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object BUS_CD_M_PEDvlr_bruto: TFloatField
      FieldName = 'vlr_bruto'
      Required = True
    end
    object BUS_CD_M_PEDvlr_desconto: TFloatField
      FieldName = 'vlr_desconto'
      Required = True
    end
    object BUS_CD_M_PEDper_desconto: TFloatField
      FieldName = 'per_desconto'
      Required = True
    end
    object BUS_CD_M_PEDvlr_liquido: TFloatField
      FieldName = 'vlr_liquido'
      Required = True
    end
    object BUS_CD_M_PEDhor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
    end
    object BUS_CD_M_PEDid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Required = True
    end
    object BUS_CD_M_PEDpcp_obs: TStringField
      FieldName = 'pcp_obs'
      Size = 100
    end
    object BUS_CD_M_PEDpcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
    end
    object BUS_CD_M_PEDsituacao: TIntegerField
      FieldName = 'situacao'
      Required = True
    end
    object BUS_CD_M_PEDsituacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
      Required = True
    end
    object BUS_CD_M_PEDid_atendente: TIntegerField
      FieldName = 'id_atendente'
    end
    object BUS_CD_M_PEDid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object BUS_CD_M_PEDid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object BUS_CD_M_PEDtipo_restricao: TStringField
      FieldName = 'tipo_restricao'
      Size = 100
    end
    object BUS_CD_M_PEDid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
    end
    object BUS_CD_M_PEDjustificativa: TStringField
      FieldName = 'justificativa'
      Size = 100
    end
    object BUS_CD_M_PEDid_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
    end
    object BUS_CD_M_PEDcod_lme: TStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_M_PEDrev_lme: TStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_M_PEDorigem: TIntegerField
      FieldName = 'origem'
    end
    object BUS_CD_M_PEDdispositivo: TStringField
      FieldName = 'dispositivo'
      Size = 50
    end
    object BUS_CD_M_PEDgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object BUS_CD_M_PEDgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object BUS_CD_M_PEDcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object BUS_CD_M_PEDid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
    end
    object BUS_CD_M_PEDenvia_carga: TBooleanField
      FieldName = 'envia_carga'
    end
    object BUS_CD_M_PEDdta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
    end
    object BUS_CD_M_PEDid_abertura: TIntegerField
      FieldName = 'id_abertura'
    end
    object BUS_CD_M_PEDdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
    end
    object BUS_CD_M_PEDoffline: TBooleanField
      FieldName = 'offline'
    end
    object BUS_CD_M_PEDconferido: TBooleanField
      FieldName = 'conferido'
    end
    object BUS_CD_M_PEDid_conf: TIntegerField
      FieldName = 'id_conf'
    end
    object BUS_CD_M_PEDdta_conf: TDateField
      FieldName = 'dta_conf'
    end
    object BUS_CD_M_PEDhor_conf: TTimeField
      FieldName = 'hor_conf'
    end
    object BUS_CD_M_PEDresultado_conf: TIntegerField
      FieldName = 'resultado_conf'
    end
    object BUS_CD_M_PEDINT_NOMECLI: TStringField
      FieldName = 'INT_NOMECLI'
      ReadOnly = True
      Size = 50
    end
    object BUS_CD_M_PEDINT_NOMECID: TStringField
      FieldName = 'INT_NOMECID'
      ReadOnly = True
      Size = 60
    end
    object BUS_CD_M_PEDINT_NOMEEST: TStringField
      FieldName = 'INT_NOMEEST'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object BUS_CD_M_PEDINT_CPFCNPJ: TStringField
      FieldName = 'INT_CPFCNPJ'
      ReadOnly = True
      Size = 14
    end
    object BUS_CD_M_PEDint_pessoacli: TIntegerField
      FieldName = 'int_pessoacli'
      ReadOnly = True
    end
    object BUS_CD_M_PEDINT_ID_PERFIL: TIntegerField
      FieldName = 'INT_ID_PERFIL'
      ReadOnly = True
    end
    object BUS_CD_M_PEDFAT_FD_M_PED_TIT: TDataSetField
      FieldName = 'FAT_FD_M_PED_TIT'
    end
    object BUS_CD_M_PEDFAT_FD_M_PED_ITE: TDataSetField
      FieldName = 'FAT_FD_M_PED_ITE'
    end
    object BUS_CD_M_PEDped_excluido: TBooleanField
      FieldName = 'ped_excluido'
    end
  end
  object CAD_CD_C_FPG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FPG'
    Left = 272
    Top = 816
    object CAD_CD_C_FPGid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Required = True
    end
    object CAD_CD_C_FPGdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object CAD_CD_C_FPGdoc_impresso: TIntegerField
      FieldName = 'doc_impresso'
      Required = True
    end
    object CAD_CD_C_FPGtipo_pagamento: TIntegerField
      FieldName = 'tipo_pagamento'
      Required = True
    end
    object CAD_CD_C_FPGcri_debi_cliente: TBooleanField
      FieldName = 'cri_debi_cliente'
    end
  end
  object CAD_CD_C_CPG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CPG'
    Left = 272
    Top = 752
  end
  object CAD_FD_C_CID: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select cid.* from cad_tb_c_cid cid'
      'where 1=2;')
    Left = 56
    Top = 1112
    object CAD_FD_C_CIDid_cidade: TStringField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 10
    end
    object CAD_FD_C_CIDnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object CAD_FD_C_CIDuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object CAD_DP_C_CID: TDataSetProvider
    DataSet = CAD_FD_C_CID
    OnDataRequest = CAD_DP_C_CIDDataRequest
    Left = 168
    Top = 1111
  end
  object CAD_CD_C_CID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CID'
    Left = 272
    Top = 1112
    object CAD_CD_C_CIDid_cidade: TStringField
      FieldName = 'id_cidade'
      Required = True
      FixedChar = True
      Size = 10
    end
    object CAD_CD_C_CIDnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object CAD_CD_C_CIDuf: TStringField
      FieldName = 'uf'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object CAD_CD_C_TME: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TME'
    Left = 272
    Top = 640
    object CAD_CD_C_TMEid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Required = True
    end
    object CAD_CD_C_TMEdescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
    object CAD_CD_C_TMEtipo_movimento: TIntegerField
      FieldName = 'tipo_movimento'
    end
    object CAD_CD_C_TMEativo: TBooleanField
      FieldName = 'ativo'
    end
    object CAD_CD_C_TMEindicador: TIntegerField
      FieldName = 'indicador'
    end
    object CAD_CD_C_TMEesto_movimenta: TBooleanField
      FieldName = 'esto_movimenta'
    end
  end
  object CAD_CD_C_GRU: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_GRU'
    Left = 272
    Top = 408
    object CAD_CD_C_GRUid_grupo: TStringField
      FieldName = 'id_grupo'
      Required = True
      FixedChar = True
      Size = 11
    end
    object CAD_CD_C_GRUdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object CAD_CD_C_GRUtipo: TIntegerField
      FieldName = 'tipo'
    end
    object CAD_CD_C_GRUnivel: TIntegerField
      FieldName = 'nivel'
    end
    object CAD_CD_C_GRUtipo_item: TStringField
      FieldName = 'tipo_item'
      FixedChar = True
      Size = 2
    end
    object CAD_CD_C_GRUid_tributo: TIntegerField
      FieldName = 'id_tributo'
    end
    object CAD_CD_C_GRUpromo_ativa: TBooleanField
      FieldName = 'promo_ativa'
    end
    object CAD_CD_C_GRUpromo_perc: TFloatField
      FieldName = 'promo_perc'
    end
    object CAD_CD_C_GRUdesc_ativa: TBooleanField
      FieldName = 'desc_ativa'
    end
    object CAD_CD_C_GRUdesc_perc: TFloatField
      FieldName = 'desc_perc'
    end
  end
  object CAD_CD_C_PEC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_PEC'
    Left = 272
    Top = 304
    object CAD_CD_C_PECid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Required = True
    end
    object CAD_CD_C_PECdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object CAD_CD_C_PECper_correcao: TFloatField
      FieldName = 'per_correcao'
    end
    object CAD_CD_C_PECoperacao: TIntegerField
      FieldName = 'operacao'
    end
    object CAD_CD_C_PECper_correcao_aprazo: TFloatField
      FieldName = 'per_correcao_aprazo'
    end
    object CAD_CD_C_PECper_correcao_financeiro: TFloatField
      FieldName = 'per_correcao_financeiro'
    end
  end
  object CAD_FD_C_FOR: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select for.* from cad_tb_c_for for'
      'where 1=2')
    Left = 56
    Top = 1168
    object CAD_FD_C_FORid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
      Required = True
    end
    object CAD_FD_C_FORdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 50
    end
    object CAD_FD_C_FORfantasia: TStringField
      FieldName = 'fantasia'
      Origin = 'fantasia'
      Size = 50
    end
  end
  object CAD_CD_C_FOR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FOR'
    Left = 272
    Top = 1168
    object CAD_CD_C_FORid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Required = True
    end
    object CAD_CD_C_FORdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object CAD_CD_C_FORfantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
  end
  object CAD_DP_C_FOR: TDataSetProvider
    DataSet = CAD_FD_C_FOR
    OnDataRequest = CAD_DP_C_FORDataRequest
    Left = 168
    Top = 1168
  end
  object CAD_FD_C_UND: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select und.* from cad_tb_c_und und'
      'where 1=2')
    Left = 56
    Top = 1224
    object CAD_FD_C_UNDid_unidade: TStringField
      FieldName = 'id_unidade'
      Origin = 'id_unidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CAD_FD_C_UNDdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
    object CAD_FD_C_UNDnum_decimais: TIntegerField
      FieldName = 'num_decimais'
      Origin = 'num_decimais'
    end
  end
  object CAD_DP_C_UND: TDataSetProvider
    DataSet = CAD_FD_C_UND
    OnDataRequest = CAD_DP_C_UNDDataRequest
    Left = 168
    Top = 1224
  end
  object CAD_CD_C_UND: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_UND'
    Left = 272
    Top = 1224
    object CAD_CD_C_UNDid_unidade: TStringField
      FieldName = 'id_unidade'
      Required = True
      Size = 3
    end
    object CAD_CD_C_UNDdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object CAD_CD_C_UNDnum_decimais: TIntegerField
      FieldName = 'num_decimais'
    end
  end
  object CAD_CD_C_FAM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FAM'
    Left = 272
    Top = 352
    object CAD_CD_C_FAMid_familia: TIntegerField
      FieldName = 'id_familia'
      Required = True
    end
    object CAD_CD_C_FAMdescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
    object CAD_CD_C_FAMfaz_corr_preco_perfil: TBooleanField
      FieldName = 'faz_corr_preco_perfil'
    end
  end
  object CAD_CD_C_ITE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_ITE'
    Left = 272
    Top = 464
    object CAD_CD_C_ITEid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_CD_C_ITEdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object CAD_CD_C_ITEfantasia: TStringField
      FieldName = 'fantasia'
      Origin = 'fantasia'
      Size = 30
    end
    object CAD_CD_C_ITEid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
    end
    object CAD_CD_C_ITEid_grupo: TStringField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      FixedChar = True
      Size = 11
    end
    object CAD_CD_C_ITEid_und_compra: TStringField
      FieldName = 'id_und_compra'
      Origin = 'id_und_compra'
      FixedChar = True
      Size = 3
    end
    object CAD_CD_C_ITEid_und_venda: TStringField
      FieldName = 'id_und_venda'
      Origin = 'id_und_venda'
      FixedChar = True
      Size = 3
    end
    object CAD_CD_C_ITEcod_barra: TStringField
      FieldName = 'cod_barra'
      Origin = 'cod_barra'
      Size = 50
    end
    object CAD_CD_C_ITEcod_fabrica: TStringField
      FieldName = 'cod_fabrica'
      Origin = 'cod_fabrica'
      Size = 30
    end
    object CAD_CD_C_ITEpreco_avista: TFloatField
      FieldName = 'preco_avista'
      Origin = 'preco_avista'
    end
    object CAD_CD_C_ITEpreco_aprazo: TFloatField
      FieldName = 'preco_aprazo'
      Origin = 'preco_aprazo'
    end
    object CAD_CD_C_ITEid_familia: TIntegerField
      FieldName = 'id_familia'
      Origin = 'id_familia'
    end
    object CAD_CD_C_ITECAD_FD_C_ITE_PRC: TDataSetField
      FieldName = 'CAD_FD_C_ITE_PRC'
    end
    object CAD_CD_C_ITEativo: TBooleanField
      FieldName = 'ativo'
    end
    object CAD_CD_C_ITEint_tipo_item: TStringField
      FieldName = 'int_tipo_item'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object CAD_CD_C_ITEcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object CAD_CD_C_ITEid_ncm: TStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object CAD_CD_C_ITEloca_rua: TStringField
      FieldName = 'loca_rua'
      Size = 4
    end
    object CAD_CD_C_ITEreferencia: TStringField
      FieldName = 'referencia'
      Size = 100
    end
    object CAD_CD_C_ITEdestino_reclamado: TIntegerField
      FieldName = 'destino_reclamado'
    end
  end
  object CAD_FD_C_ITE_PRC: TFDQuery
    MasterSource = CAD_DS_C_ITE
    MasterFields = 'id_item'
    DetailFields = 'id_item'
    Connection = conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT prc.* from cad_tb_c_ite_prc prc'
      'where prc.id_item=:id_item')
    Left = 56
    Top = 528
    ParamData = <
      item
        Name = 'ID_ITEM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object CAD_FD_C_ITE_PRCid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_ITE_PRCid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Origin = 'id_perfil_cli'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_ITE_PRCpreco_avista: TFloatField
      FieldName = 'preco_avista'
      Origin = 'preco_avista'
    end
    object CAD_FD_C_ITE_PRCpreco1: TFloatField
      FieldName = 'preco1'
      Origin = 'preco1'
    end
    object CAD_FD_C_ITE_PRCpreco2: TFloatField
      FieldName = 'preco2'
      Origin = 'preco2'
    end
    object CAD_FD_C_ITE_PRCpreco3: TFloatField
      FieldName = 'preco3'
      Origin = 'preco3'
    end
    object CAD_FD_C_ITE_PRCpreco4: TFloatField
      FieldName = 'preco4'
      Origin = 'preco4'
    end
  end
  object CAD_DS_C_ITE: TDataSource
    DataSet = CAD_FD_C_ITE
    Left = 168
    Top = 528
  end
  object CAD_CD_C_ITE_PRC: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_ITECAD_FD_C_ITE_PRC
    Params = <>
    Left = 272
    Top = 528
    object CAD_CD_C_ITE_PRCid_item: TIntegerField
      FieldName = 'id_item'
      Required = True
    end
    object CAD_CD_C_ITE_PRCid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Required = True
    end
    object CAD_CD_C_ITE_PRCpreco_avista: TFloatField
      FieldName = 'preco_avista'
    end
    object CAD_CD_C_ITE_PRCpreco1: TFloatField
      FieldName = 'preco1'
    end
    object CAD_CD_C_ITE_PRCpreco2: TFloatField
      FieldName = 'preco2'
    end
    object CAD_CD_C_ITE_PRCpreco3: TFloatField
      FieldName = 'preco3'
    end
    object CAD_CD_C_ITE_PRCpreco4: TFloatField
      FieldName = 'preco4'
    end
  end
  object CAD_CD_C_CLI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CLI'
    Left = 272
    Top = 880
    object CAD_CD_C_CLIid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object CAD_CD_C_CLIpessoa: TIntegerField
      FieldName = 'pessoa'
      Required = True
    end
    object CAD_CD_C_CLInome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object CAD_CD_C_CLIendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object CAD_CD_C_CLIend_complemento: TStringField
      FieldName = 'end_complemento'
      Size = 30
    end
    object CAD_CD_C_CLIcep: TStringField
      FieldName = 'cep'
      FixedChar = True
      Size = 9
    end
    object CAD_CD_C_CLInumero: TStringField
      FieldName = 'numero'
      FixedChar = True
      Size = 10
    end
    object CAD_CD_C_CLItel_fixo: TStringField
      FieldName = 'tel_fixo'
      Size = 14
    end
    object CAD_CD_C_CLItel_movel: TStringField
      FieldName = 'tel_movel'
      Size = 14
    end
    object CAD_CD_C_CLIfax: TStringField
      FieldName = 'fax'
      Size = 14
    end
    object CAD_CD_C_CLIdoc_cnpj_cpf: TStringField
      FieldName = 'doc_cnpj_cpf'
      Required = True
      Size = 14
    end
    object CAD_CD_C_CLIdoc_ie_identidade: TStringField
      FieldName = 'doc_ie_identidade'
    end
    object CAD_CD_C_CLIbairro: TStringField
      FieldName = 'bairro'
      Size = 40
    end
    object CAD_CD_C_CLIid_cidade: TStringField
      FieldName = 'id_cidade'
      FixedChar = True
      Size = 10
    end
    object CAD_CD_C_CLIativo: TBooleanField
      FieldName = 'ativo'
      Required = True
    end
    object CAD_CD_C_CLIemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object CAD_CD_C_CLIlim_valor: TFloatField
      FieldName = 'lim_valor'
    end
    object CAD_CD_C_CLIlim_saldo: TFloatField
      FieldName = 'lim_saldo'
    end
    object CAD_CD_C_CLIsexo: TIntegerField
      FieldName = 'sexo'
    end
    object CAD_CD_C_CLIsituacao: TIntegerField
      FieldName = 'situacao'
      Required = True
    end
    object CAD_CD_C_CLItipo_cliente: TIntegerField
      FieldName = 'tipo_cliente'
      Required = True
    end
    object CAD_CD_C_CLIcod_pais: TStringField
      FieldName = 'cod_pais'
      FixedChar = True
      Size = 5
    end
    object CAD_CD_C_CLIid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Required = True
    end
    object CAD_CD_C_CLIdoc_rg_orgao: TStringField
      FieldName = 'doc_rg_orgao'
      Size = 10
    end
    object CAD_CD_C_CLIid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object CAD_CD_C_CLIdias_prazo_financeiro: TIntegerField
      FieldName = 'dias_prazo_financeiro'
    end
    object CAD_CD_C_CLIint_uf: TStringField
      FieldName = 'int_uf'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object CAD_CD_C_CLIint_nomecid: TStringField
      FieldName = 'int_nomecid'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object CAD_CD_C_CLIapelido: TStringField
      FieldName = 'apelido'
      Size = 40
    end
    object CAD_CD_C_CLIid_regiao: TIntegerField
      FieldName = 'id_regiao'
    end
    object CAD_CD_C_CLIINT_REG_DESC_PERC: TFloatField
      FieldName = 'INT_REG_DESC_PERC'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object CAD_FD_C_ALM: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select alm.* from cad_tb_c_alm alm'
      'where 1=2')
    Left = 56
    Top = 584
    object CAD_FD_C_ALMid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
      Origin = 'id_almoxarifado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_ALMdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 50
    end
  end
  object CAD_DP_C_ALM: TDataSetProvider
    DataSet = CAD_FD_C_ALM
    OnDataRequest = CAD_DP_C_ALMDataRequest
    Left = 168
    Top = 584
  end
  object CAD_CD_C_ALM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_ALM'
    Left = 272
    Top = 584
    object CAD_CD_C_ALMid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
      Required = True
    end
    object CAD_CD_C_ALMdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
  end
  object CAD_CD_C_COR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_COR'
    Left = 272
    Top = 936
    object CAD_CD_C_CORid_cor: TIntegerField
      FieldName = 'id_cor'
      Required = True
    end
    object CAD_CD_C_CORdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
  end
  object CAD_CD_C_TAM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TAM'
    Left = 272
    Top = 1000
    object CAD_CD_C_TAMid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Required = True
    end
    object CAD_CD_C_TAMdescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
  end
  object CAD_FD_C_TRI: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select tri.* from cad_tb_c_tri tri'
      'where 1=2')
    Left = 56
    Top = 1336
    object CAD_FD_C_TRIid_tributo: TIntegerField
      FieldName = 'id_tributo'
      Origin = 'id_tributo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_TRIdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 40
    end
  end
  object CAD_DP_C_TRI: TDataSetProvider
    DataSet = CAD_FD_C_TRI
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    OnDataRequest = CAD_DP_C_TRIDataRequest
    Left = 168
    Top = 1336
  end
  object CAD_CD_C_TRI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TRI'
    Left = 280
    Top = 1336
    object CAD_CD_C_TRIid_tributo: TIntegerField
      FieldName = 'id_tributo'
      Origin = 'id_tributo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_CD_C_TRIdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 40
    end
    object CAD_CD_C_TRICAD_FD_C_TRI_REG: TDataSetField
      FieldName = 'CAD_FD_C_TRI_REG'
    end
  end
  object CAD_FD_C_TRI_REG: TFDQuery
    MasterSource = CAD_DS_C_TRI
    MasterFields = 'id_tributo'
    DetailFields = 'id_tributo'
    Connection = conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select trg.* from cad_tb_c_tri_reg trg'
      'where trg.id_tributo=:id_tributo')
    Left = 56
    Top = 1400
    ParamData = <
      item
        Name = 'ID_TRIBUTO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object CAD_FD_C_TRI_REGid_tributo: TIntegerField
      FieldName = 'id_tributo'
      Origin = 'id_tributo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_TRI_REGid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Origin = 'id_tipo_mov_estoque'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_TRI_REGuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CAD_FD_C_TRI_REGid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object CAD_DS_C_TRI: TDataSource
    DataSet = CAD_FD_C_TRI
    Left = 168
    Top = 1400
  end
  object CAD_CD_C_TRI_REG: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_TRICAD_FD_C_TRI_REG
    Params = <>
    Left = 280
    Top = 1400
    object CAD_CD_C_TRI_REGid_tributo: TIntegerField
      FieldName = 'id_tributo'
      Required = True
    end
    object CAD_CD_C_TRI_REGid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Required = True
    end
    object CAD_CD_C_TRI_REGuf: TStringField
      FieldName = 'uf'
      Required = True
      Size = 2
    end
    object CAD_CD_C_TRI_REGid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
  end
  object CAD_CD_C_SEQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_SEQ'
    Left = 280
    Top = 1528
    object CAD_CD_C_SEQid_tabela: TStringField
      FieldName = 'id_tabela'
      Required = True
      Size = 30
    end
    object CAD_CD_C_SEQsequencia: TIntegerField
      FieldName = 'sequencia'
      Required = True
    end
  end
  object CAD_DP_C_SEQ: TDataSetProvider
    DataSet = CAD_FD_C_SEQ
    OnDataRequest = CAD_DP_C_SEQDataRequest
    Left = 168
    Top = 1528
  end
  object CAD_FD_C_SEQ: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select seq.* from cad_tb_c_seq seq'
      'where 1=2')
    Left = 56
    Top = 1528
    object CAD_FD_C_SEQid_tabela: TStringField
      FieldName = 'id_tabela'
      Origin = 'id_tabela'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object CAD_FD_C_SEQsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = 'sequencia'
      Required = True
    end
  end
  object PCP_FD_C_REG: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select REG.*  '
      '      from PCP_TB_C_REG REG '
      'where 1=2')
    Left = 56
    Top = 1464
    object PCP_FD_C_REGid_regiao: TIntegerField
      FieldName = 'id_regiao'
      Origin = 'id_regiao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PCP_FD_C_REGdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 50
    end
    object PCP_FD_C_REGdesc_perc: TFloatField
      FieldName = 'desc_perc'
      Origin = 'desc_perc'
    end
  end
  object PCP_DP_C_REG: TDataSetProvider
    DataSet = PCP_FD_C_REG
    OnDataRequest = PCP_DP_C_REGDataRequest
    Left = 168
    Top = 1464
  end
  object PCP_CD_C_REG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_REG'
    Left = 280
    Top = 1464
    object PCP_CD_C_REGid_regiao: TIntegerField
      FieldName = 'id_regiao'
      Required = True
    end
    object PCP_CD_C_REGdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object PCP_CD_C_REGdesc_perc: TFloatField
      FieldName = 'desc_perc'
    end
  end
  object FIN_FD_M_REC: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT  REC.* FROM FIN_TB_M_REC  REC '
      'WHERE 1=2')
    Left = 640
    Top = 648
    object FIN_FD_M_RECid_titulo: TIntegerField
      FieldName = 'id_titulo'
      Origin = 'id_titulo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FIN_FD_M_RECid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      Required = True
    end
    object FIN_FD_M_RECid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      Required = True
    end
    object FIN_FD_M_RECdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
      Origin = 'dta_vencimento'
      Required = True
    end
    object FIN_FD_M_RECvlr_saldo: TFloatField
      FieldName = 'vlr_saldo'
      Origin = 'vlr_saldo'
      Required = True
    end
    object FIN_FD_M_RECid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
      Required = True
    end
  end
  object FIN_DP_M_REC: TDataSetProvider
    DataSet = FIN_FD_M_REC
    OnDataRequest = FIN_DP_M_RECDataRequest
    Left = 736
    Top = 648
  end
  object FIN_CD_M_REC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FIN_DP_M_REC'
    Left = 840
    Top = 648
    object FIN_CD_M_RECid_titulo: TIntegerField
      FieldName = 'id_titulo'
      Required = True
    end
    object FIN_CD_M_RECid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object FIN_CD_M_RECid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object FIN_CD_M_RECdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
      Required = True
    end
    object FIN_CD_M_RECvlr_saldo: TFloatField
      FieldName = 'vlr_saldo'
      Required = True
    end
    object FIN_CD_M_RECid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Required = True
    end
  end
  object BUS_CD_M_REC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FIN_DP_M_REC'
    Left = 928
    Top = 648
  end
  object CAD_FD_C_ITE_PRC_INT: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cad_tb_c_ite_prc'
      'where 1=2')
    Left = 56
    Top = 1280
    object CAD_FD_C_ITE_PRC_INTid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_ITE_PRC_INTid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      Origin = 'id_perfil_cli'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_FD_C_ITE_PRC_INTpreco_avista: TFloatField
      FieldName = 'preco_avista'
      Origin = 'preco_avista'
    end
    object CAD_FD_C_ITE_PRC_INTpreco1: TFloatField
      FieldName = 'preco1'
      Origin = 'preco1'
    end
    object CAD_FD_C_ITE_PRC_INTpreco2: TFloatField
      FieldName = 'preco2'
      Origin = 'preco2'
    end
    object CAD_FD_C_ITE_PRC_INTpreco3: TFloatField
      FieldName = 'preco3'
      Origin = 'preco3'
    end
    object CAD_FD_C_ITE_PRC_INTpreco4: TFloatField
      FieldName = 'preco4'
      Origin = 'preco4'
    end
  end
  object CAD_DP_C_ITE_PRC_INT: TDataSetProvider
    DataSet = CAD_FD_C_ITE_PRC_INT
    OnDataRequest = CAD_DP_C_ITE_PRC_INTDataRequest
    Left = 184
    Top = 1280
  end
  object CAD_CD_C_ITE_PRC_INT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_ITE_PRC_INT'
    Left = 312
    Top = 1280
  end
  object qryBusca: TFDQuery
    Connection = conexao
    Left = 344
    Top = 16
  end
  object CAD_FD_C_PAR_RST: TFDQuery
    MasterSource = CAD_DS_C_PAR
    MasterFields = 'id_empresa'
    DetailFields = 'id_empresa'
    Connection = conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT RST.* FROM CAD_TB_C_PAR_RST RST'
      'WHERE RST.ID_EMPRESA=:ID_EMPRESA')
    Left = 168
    Top = 184
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
  end
  object CAD_CD_C_PAR_RST: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_PARCAD_FD_C_PAR_RST
    Params = <>
    Left = 384
    Top = 184
    object CAD_CD_C_PAR_RSTid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CAD_CD_C_PAR_RSTletra_restricao: TWideStringField
      FieldName = 'letra_restricao'
      Origin = 'letra_restricao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CAD_CD_C_PAR_RSTtipo_restricao: TIntegerField
      FieldName = 'tipo_restricao'
      Origin = 'tipo_restricao'
    end
  end
end
