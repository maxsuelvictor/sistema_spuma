object dmGeralSer: TdmGeralSer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 659
  Width = 830
  object BUS_CD_C_FUN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FUN'
    RemoteServer = pcConexao
    Left = 168
    Top = 409
    object BUS_CD_C_FUNid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
    end
    object BUS_CD_C_FUNativo: TBooleanField
      FieldName = 'ativo'
    end
    object BUS_CD_C_FUNnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object BUS_CD_C_FUNendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object BUS_CD_C_FUNcep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object BUS_CD_C_FUNnumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object BUS_CD_C_FUNtel_fixo: TWideStringField
      FieldName = 'tel_fixo'
      Size = 14
    end
    object BUS_CD_C_FUNtel_movel: TWideStringField
      FieldName = 'tel_movel'
      Size = 14
    end
    object BUS_CD_C_FUNdoc_cpf: TWideStringField
      FieldName = 'doc_cpf'
      Size = 11
    end
    object BUS_CD_C_FUNdoc_identidade: TWideStringField
      FieldName = 'doc_identidade'
      Size = 11
    end
    object BUS_CD_C_FUNbairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object BUS_CD_C_FUNid_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object BUS_CD_C_FUNestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object BUS_CD_C_FUNemail: TWideStringField
      FieldName = 'email'
      Size = 60
    end
    object BUS_CD_C_FUNsexo: TIntegerField
      FieldName = 'sexo'
    end
    object BUS_CD_C_FUNdta_nascimento: TDateField
      FieldName = 'dta_nascimento'
    end
    object BUS_CD_C_FUNdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object BUS_CD_C_FUNlogin: TWideStringField
      FieldName = 'login'
      Size = 30
    end
    object BUS_CD_C_FUNsenha: TWideStringField
      FieldName = 'senha'
      Size = 100
    end
    object BUS_CD_C_FUNdta_senha_expira: TDateField
      FieldName = 'dta_senha_expira'
    end
    object BUS_CD_C_FUNid_perfil_seg: TIntegerField
      FieldName = 'id_perfil_seg'
    end
    object BUS_CD_C_FUNseg_alt_lim_cli: TBooleanField
      FieldName = 'seg_alt_lim_cli'
    end
    object BUS_CD_C_FUNseg_alt_sit_cli: TBooleanField
      FieldName = 'seg_alt_sit_cli'
    end
    object BUS_CD_C_FUNseg_alt_pre_pro: TBooleanField
      FieldName = 'seg_alt_pre_pro'
    end
    object BUS_CD_C_FUNseg_hab_bot_exc: TBooleanField
      FieldName = 'seg_hab_bot_exc'
    end
    object BUS_CD_C_FUNint_nomecid: TWideStringField
      FieldName = 'int_nomecid'
      Size = 60
    end
    object BUS_CD_C_FUNcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_FUNrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_C_FUNseg_vis_ult_cmp_ite: TBooleanField
      FieldName = 'seg_vis_ult_cmp_ite'
    end
    object BUS_CD_C_FUNseg_vis_msg_sol_cmp: TBooleanField
      FieldName = 'seg_vis_msg_sol_cmp'
    end
    object BUS_CD_C_FUNseg_apr_rep_cmp_ped: TBooleanField
      FieldName = 'seg_apr_rep_cmp_ped'
    end
    object BUS_CD_C_FUNseg_per_canc_orv: TBooleanField
      FieldName = 'seg_per_canc_orv'
    end
    object BUS_CD_C_FUNseg_habilitar_seg: TBooleanField
      FieldName = 'seg_habilitar_seg'
    end
    object BUS_CD_C_FUNseg_redef_senha: TBooleanField
      FieldName = 'seg_redef_senha'
    end
    object BUS_CD_C_FUNseg_hab_bot_alt_fun: TBooleanField
      FieldName = 'seg_hab_bot_alt_fun'
    end
    object BUS_CD_C_FUNseq_vis_msg_ped_exp_fat: TBooleanField
      FieldName = 'seq_vis_msg_ped_exp_fat'
    end
    object BUS_CD_C_FUNseg_ctc_apg: TBooleanField
      FieldName = 'seg_ctc_apg'
    end
    object BUS_CD_C_FUNseg_alt_vend_ped: TBooleanField
      FieldName = 'seg_alt_vend_ped'
    end
    object BUS_CD_C_FUNCAD_SQ_C_FUN_CRG: TDataSetField
      FieldName = 'CAD_SQ_C_FUN_CRG'
    end
  end
  object pcConexao: TDSProviderConnection
    ServerClassName = 'TSM'
    SQLConnection = Conexao
    Left = 136
    Top = 8
  end
  object Conexao: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}'
      'DSAuthenticationUser=admin')
    Left = 48
    Top = 8
  end
  object BUS_CD_C_PAR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_PAR'
    RemoteServer = pcConexao
    Left = 48
    Top = 72
    object BUS_CD_C_PARid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_C_PARemp_cnpj: TWideStringField
      FieldName = 'emp_cnpj'
      Size = 14
    end
    object BUS_CD_C_PARemp_razao: TWideStringField
      FieldName = 'emp_razao'
      Size = 50
    end
    object BUS_CD_C_PARemp_fantasia: TWideStringField
      FieldName = 'emp_fantasia'
      Size = 50
    end
    object BUS_CD_C_PARCAD_SQ_C_PAR_CPG: TDataSetField
      FieldName = 'CAD_SQ_C_PAR_CPG'
    end
    object BUS_CD_C_PARCAD_SQ_C_PAR_MOD: TDataSetField
      FieldName = 'CAD_SQ_C_PAR_MOD'
    end
    object BUS_CD_C_PARCAD_SQ_C_PAR_CTR: TDataSetField
      FieldName = 'CAD_SQ_C_PAR_CTR'
    end
    object BUS_CD_C_PARid_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object BUS_CD_C_PARemp_endereco: TWideStringField
      FieldName = 'emp_endereco'
      Size = 50
    end
    object BUS_CD_C_PARemp_numero: TWideStringField
      FieldName = 'emp_numero'
      Size = 10
    end
    object BUS_CD_C_PARemp_bairro: TWideStringField
      FieldName = 'emp_bairro'
      Size = 40
    end
    object BUS_CD_C_PARemp_cep: TWideStringField
      FieldName = 'emp_cep'
      Size = 9
    end
    object BUS_CD_C_PARemp_telefone: TWideStringField
      FieldName = 'emp_telefone'
      Size = 14
    end
    object BUS_CD_C_PARemp_fax: TWideStringField
      FieldName = 'emp_fax'
      Size = 14
    end
    object BUS_CD_C_PARCAD_SQ_C_PAR_RST: TDataSetField
      FieldName = 'CAD_SQ_C_PAR_RST'
    end
  end
  object BUS_CD_C_FPG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FPG'
    RemoteServer = pcConexao
    Left = 48
    Top = 352
  end
  object BUS_CD_C_CPG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CPG'
    RemoteServer = pcConexao
    Left = 48
    Top = 400
  end
  object BUS_CD_C_CID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CID'
    RemoteServer = pcConexao
    Left = 48
    Top = 451
  end
  object BUS_CD_C_TME: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TME'
    RemoteServer = pcConexao
    Left = 48
    Top = 507
  end
  object BUS_CD_C_GRU: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_GRU'
    RemoteServer = pcConexao
    Left = 168
    Top = 72
  end
  object BUS_CD_C_PEC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_PEC'
    RemoteServer = pcConexao
    Left = 168
    Top = 128
  end
  object BUS_CD_C_PCT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_PCT'
    RemoteServer = pcConexao
    Left = 168
    Top = 184
  end
  object BUS_CD_C_FOR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FOR'
    RemoteServer = pcConexao
    Left = 168
    Top = 241
  end
  object BUS_CD_C_UND: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_UND'
    RemoteServer = pcConexao
    Left = 168
    Top = 297
  end
  object BUS_CD_C_FAM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FAM'
    RemoteServer = pcConexao
    Left = 168
    Top = 353
  end
  object BUS_CD_C_ITE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_ITE'
    RemoteServer = pcConexao
    Left = 48
    Top = 563
    object BUS_CD_C_ITEid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_C_ITEativo: TBooleanField
      FieldName = 'ativo'
    end
    object BUS_CD_C_ITEcardapio: TBooleanField
      FieldName = 'cardapio'
    end
    object BUS_CD_C_ITEdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object BUS_CD_C_ITEreferencia: TWideStringField
      FieldName = 'referencia'
      Size = 100
    end
    object BUS_CD_C_ITEaplicacao: TWideStringField
      FieldName = 'aplicacao'
      Size = 100
    end
    object BUS_CD_C_ITEid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
    end
    object BUS_CD_C_ITEid_grupo: TWideStringField
      FieldName = 'id_grupo'
      Size = 11
    end
    object BUS_CD_C_ITEid_und_compra: TWideStringField
      FieldName = 'id_und_compra'
      Size = 3
    end
    object BUS_CD_C_ITEid_und_venda: TWideStringField
      FieldName = 'id_und_venda'
      Size = 3
    end
    object BUS_CD_C_ITEemb_compra: TFloatField
      FieldName = 'emb_compra'
    end
    object BUS_CD_C_ITEemb_venda: TFloatField
      FieldName = 'emb_venda'
    end
    object BUS_CD_C_ITEcod_barra: TWideStringField
      FieldName = 'cod_barra'
      Size = 50
    end
    object BUS_CD_C_ITEcod_fabrica: TWideStringField
      FieldName = 'cod_fabrica'
      Size = 30
    end
    object BUS_CD_C_ITEpes_liquido: TFloatField
      FieldName = 'pes_liquido'
    end
    object BUS_CD_C_ITEpes_bruto: TFloatField
      FieldName = 'pes_bruto'
    end
    object BUS_CD_C_ITEest_minimo: TFloatField
      FieldName = 'est_minimo'
    end
    object BUS_CD_C_ITEloca_rua: TWideStringField
      FieldName = 'loca_rua'
      Size = 4
    end
    object BUS_CD_C_ITEloca_prateleira: TWideStringField
      FieldName = 'loca_prateleira'
      Size = 4
    end
    object BUS_CD_C_ITEloca_escaninho: TWideStringField
      FieldName = 'loca_escaninho'
      Size = 4
    end
    object BUS_CD_C_ITEtam_largura: TFloatField
      FieldName = 'tam_largura'
    end
    object BUS_CD_C_ITEtam_comprimento: TFloatField
      FieldName = 'tam_comprimento'
    end
    object BUS_CD_C_ITEtam_espessura: TFloatField
      FieldName = 'tam_espessura'
    end
    object BUS_CD_C_ITEdensidade: TIntegerField
      FieldName = 'densidade'
    end
    object BUS_CD_C_ITEdensidade_2: TIntegerField
      FieldName = 'densidade_2'
    end
    object BUS_CD_C_ITEdensidade_3: TIntegerField
      FieldName = 'densidade_3'
    end
    object BUS_CD_C_ITEtipo: TIntegerField
      FieldName = 'tipo'
    end
    object BUS_CD_C_ITEgeracao_lote_interno: TIntegerField
      FieldName = 'geracao_lote_interno'
    end
    object BUS_CD_C_ITEdestino_reclamado: TIntegerField
      FieldName = 'destino_reclamado'
    end
    object BUS_CD_C_ITEetiq_classificacao_pro: TIntegerField
      FieldName = 'etiq_classificacao_pro'
    end
    object BUS_CD_C_ITEetiq_medidas: TWideStringField
      FieldName = 'etiq_medidas'
      Size = 60
    end
    object BUS_CD_C_ITEetiq_madeira: TWideStringField
      FieldName = 'etiq_madeira'
      Size = 60
    end
    object BUS_CD_C_ITEetiq_espuma1: TWideStringField
      FieldName = 'etiq_espuma1'
      Size = 70
    end
    object BUS_CD_C_ITEetiq_espuma2: TWideStringField
      FieldName = 'etiq_espuma2'
      Size = 70
    end
    object BUS_CD_C_ITEetiq_espuma3: TWideStringField
      FieldName = 'etiq_espuma3'
      Size = 70
    end
    object BUS_CD_C_ITEetiq_revestimento1: TWideStringField
      FieldName = 'etiq_revestimento1'
      Size = 70
    end
    object BUS_CD_C_ITEetiq_revestimento2: TWideStringField
      FieldName = 'etiq_revestimento2'
      Size = 70
    end
    object BUS_CD_C_ITEetiq_revestimento3: TWideStringField
      FieldName = 'etiq_revestimento3'
      Size = 70
    end
    object BUS_CD_C_ITEetiq_recomendacoes_1: TWideStringField
      FieldName = 'etiq_recomendacoes_1'
      Size = 80
    end
    object BUS_CD_C_ITEetiq_recomendacoes_2: TWideStringField
      FieldName = 'etiq_recomendacoes_2'
      Size = 80
    end
    object BUS_CD_C_ITElote_fabric_obrigatorio: TIntegerField
      FieldName = 'lote_fabric_obrigatorio'
    end
    object BUS_CD_C_ITEid_ncm: TWideStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object BUS_CD_C_ITEPRECO_AVISTA: TFMTBCDField
      FieldName = 'PRECO_AVISTA'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEPRECO_APRAZO: TFMTBCDField
      FieldName = 'PRECO_APRAZO'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEint_nomencm: TWideStringField
      FieldName = 'int_nomencm'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_desc_grupo: TWideStringField
      FieldName = 'int_desc_grupo'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_C_ITEint_tipo_item: TWideStringField
      FieldName = 'int_tipo_item'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_origem: TWideStringField
      FieldName = 'int_origem'
      ProviderFlags = []
      Size = 1
    end
    object BUS_CD_C_ITEint_tributo: TIntegerField
      FieldName = 'int_tributo'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_nomefor: TWideStringField
      FieldName = 'int_nomefor'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_C_ITEdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object BUS_CD_C_ITEetiq_modelo: TWideStringField
      FieldName = 'etiq_modelo'
      Size = 70
    end
    object BUS_CD_C_ITEfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 30
    end
    object BUS_CD_C_ITEcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_ITErev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_C_ITEint_mva: TFloatField
      FieldName = 'int_mva'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_fteetq: TIntegerField
      FieldName = 'int_fteetq'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEid_familia: TIntegerField
      FieldName = 'id_familia'
    end
    object BUS_CD_C_ITEdes_completa: TWideStringField
      FieldName = 'des_completa'
      Size = 250
    end
    object BUS_CD_C_ITEint_impselo: TBooleanField
      FieldName = 'int_impselo'
      ProviderFlags = []
    end
    object BUS_CD_C_ITErt_pricipio_ativo: TWideStringField
      FieldName = 'rt_pricipio_ativo'
      Size = 400
    end
    object BUS_CD_C_ITErt_composicao: TWideStringField
      FieldName = 'rt_composicao'
      Size = 400
    end
    object BUS_CD_C_ITEcod_onu: TWideStringField
      FieldName = 'cod_onu'
    end
    object BUS_CD_C_ITEret_emb_nao_lavavel: TIntegerField
      FieldName = 'ret_emb_nao_lavavel'
    end
    object BUS_CD_C_ITEret_emb_lavaveis: TIntegerField
      FieldName = 'ret_emb_lavaveis'
    end
    object BUS_CD_C_ITEtam_observacoes: TWideStringField
      FieldName = 'tam_observacoes'
      Size = 150
    end
    object BUS_CD_C_ITEint_perimpostoncm: TFloatField
      FieldName = 'int_perimpostoncm'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEret_emb_capacidade: TWideStringField
      FieldName = 'ret_emb_capacidade'
    end
    object BUS_CD_C_ITEint_pis_entrada: TWideStringField
      FieldName = 'int_pis_entrada'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_pis_saida: TWideStringField
      FieldName = 'int_pis_saida'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_cof_entrada: TWideStringField
      FieldName = 'int_cof_entrada'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_cof_saida: TWideStringField
      FieldName = 'int_cof_saida'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEsgq_critica_laudo_fab: TBooleanField
      FieldName = 'sgq_critica_laudo_fab'
    end
    object BUS_CD_C_ITEint_ipi_entrada: TWideStringField
      FieldName = 'int_ipi_entrada'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_ipi_saida: TWideStringField
      FieldName = 'int_ipi_saida'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_serterceiro: TBooleanField
      FieldName = 'int_serterceiro'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEetiq_id_cue: TIntegerField
      FieldName = 'etiq_id_cue'
    end
    object BUS_CD_C_ITEint_msg_etq1: TWideStringField
      FieldName = 'int_msg_etq1'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq2: TWideStringField
      FieldName = 'int_msg_etq2'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq3: TWideStringField
      FieldName = 'int_msg_etq3'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq4: TWideStringField
      FieldName = 'int_msg_etq4'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq5: TWideStringField
      FieldName = 'int_msg_etq5'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_impmsgetq: TBooleanField
      FieldName = 'int_impmsgetq'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_msg_etq6: TWideStringField
      FieldName = 'int_msg_etq6'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq7: TWideStringField
      FieldName = 'int_msg_etq7'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEcubagem: TFMTBCDField
      FieldName = 'cubagem'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEpreco_avista_ant_reajuste: TFMTBCDField
      FieldName = 'preco_avista_ant_reajuste'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEpreco_aprazo_ant_reajuste: TFMTBCDField
      FieldName = 'preco_aprazo_ant_reajuste'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEdta_ult_reajuste: TDateField
      FieldName = 'dta_ult_reajuste'
    end
    object BUS_CD_C_ITEint_ctcepi: TBooleanField
      FieldName = 'int_ctcepi'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_dre_perc_ircs: TFloatField
      FieldName = 'int_dre_perc_ircs'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_dre_perc_out_ded_ven: TFloatField
      FieldName = 'int_dre_perc_out_ded_ven'
      ProviderFlags = []
    end
    object BUS_CD_C_ITErt_registro: TWideStringField
      FieldName = 'rt_registro'
      Size = 25
    end
    object BUS_CD_C_ITEint_ctr_lot_entr: TBooleanField
      FieldName = 'int_ctr_lot_entr'
      ProviderFlags = []
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_PRC: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_PRC'
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_XML: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_XML'
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_APL: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_APL'
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_TPR: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_TPR'
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_ESP: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_ESP'
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_COM: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_COM'
    end
  end
  object BUS_CD_C_ITE_PRC: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_C_ITECAD_SQ_C_ITE_PRC
    Params = <>
    Left = 48
    Top = 611
    object BUS_CD_C_ITE_PRCid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_C_ITE_PRCid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
    end
    object BUS_CD_C_ITE_PRCpreco_avista: TFMTBCDField
      FieldName = 'preco_avista'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITE_PRCpreco1: TFMTBCDField
      FieldName = 'preco1'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITE_PRCpreco2: TFMTBCDField
      FieldName = 'preco2'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITE_PRCpreco3: TFMTBCDField
      FieldName = 'preco3'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITE_PRCpreco4: TFMTBCDField
      FieldName = 'preco4'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITE_PRCint_desc_perfil: TWideStringField
      FieldName = 'int_desc_perfil'
      ProviderFlags = []
      Size = 50
    end
  end
  object BUS_CD_M_FES: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EST_DP_M_FES'
    RemoteServer = pcConexao
    Left = 504
    Top = 64
  end
  object BUS_CD_M_FES_ALM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EST_DP_M_FES_ALM'
    RemoteServer = pcConexao
    Left = 504
    Top = 120
  end
  object BUS_CD_C_CLI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CLI'
    RemoteServer = pcConexao
    Left = 168
    Top = 465
  end
  object BUS_CD_C_ALM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_ALM'
    RemoteServer = pcConexao
    Left = 168
    Top = 513
  end
  object BUS_CD_C_COR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_COR'
    RemoteServer = pcConexao
    Left = 272
    Top = 72
  end
  object BUS_CD_C_TAM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TAM'
    RemoteServer = pcConexao
    Left = 272
    Top = 128
  end
  object BUS_CD_C_PAR_CTR: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_C_PARCAD_SQ_C_PAR_CTR
    Params = <>
    Left = 48
    Top = 128
    object BUS_CD_C_PAR_CTRid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_C_PAR_CTRativa_producao: TBooleanField
      FieldName = 'ativa_producao'
    end
    object BUS_CD_C_PAR_CTRped_ativa_titulos: TBooleanField
      FieldName = 'ped_ativa_titulos'
    end
    object BUS_CD_C_PAR_CTRped_aceita_est_negativo: TBooleanField
      FieldName = 'ped_aceita_est_negativo'
    end
    object BUS_CD_C_PAR_CTRutiliza_almoxarifado: TBooleanField
      FieldName = 'utiliza_almoxarifado'
    end
    object BUS_CD_C_PAR_CTRutiliza_lote_na_entrada: TBooleanField
      FieldName = 'utiliza_lote_na_entrada'
    end
    object BUS_CD_C_PAR_CTRativa_cor: TBooleanField
      FieldName = 'ativa_cor'
    end
    object BUS_CD_C_PAR_CTRativa_tamanho: TBooleanField
      FieldName = 'ativa_tamanho'
    end
    object BUS_CD_C_PAR_CTRrcr_inf_pag_credito: TBooleanField
      FieldName = 'rcr_inf_pag_credito'
    end
    object BUS_CD_C_PAR_CTRnfe_separa_prod_serv: TBooleanField
      FieldName = 'nfe_separa_prod_serv'
    end
    object BUS_CD_C_PAR_CTRped_ver_limite: TBooleanField
      FieldName = 'ped_ver_limite'
    end
    object BUS_CD_C_PAR_CTRfaz_corr_preco_perfil: TBooleanField
      FieldName = 'faz_corr_preco_perfil'
    end
    object BUS_CD_C_PAR_CTRtax_juros_mensal: TFloatField
      FieldName = 'tax_juros_mensal'
    end
    object BUS_CD_C_PAR_CTRper_margem_lucro: TFloatField
      FieldName = 'per_margem_lucro'
    end
    object BUS_CD_C_PAR_CTRper_desp_fixa: TFloatField
      FieldName = 'per_desp_fixa'
    end
    object BUS_CD_C_PAR_CTRdia_protesto: TIntegerField
      FieldName = 'dia_protesto'
    end
    object BUS_CD_C_PAR_CTRper_ir: TFloatField
      FieldName = 'per_ir'
    end
    object BUS_CD_C_PAR_CTRper_cssl: TFloatField
      FieldName = 'per_cssl'
    end
    object BUS_CD_C_PAR_CTRper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object BUS_CD_C_PAR_CTRvlr_lim_maximo: TFMTBCDField
      FieldName = 'vlr_lim_maximo'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_PAR_CTRper_iss: TFloatField
      FieldName = 'per_iss'
    end
    object BUS_CD_C_PAR_CTRped_cliente_consumidor: TIntegerField
      FieldName = 'ped_cliente_consumidor'
    end
    object BUS_CD_C_PAR_CTRpde_id_forma_pag: TIntegerField
      FieldName = 'pde_id_forma_pag'
    end
    object BUS_CD_C_PAR_CTRpde_id_ccusto: TIntegerField
      FieldName = 'pde_id_ccusto'
    end
    object BUS_CD_C_PAR_CTRpde_id_local_titulo: TIntegerField
      FieldName = 'pde_id_local_titulo'
    end
    object BUS_CD_C_PAR_CTRpde_id_tipo_financeiro: TIntegerField
      FieldName = 'pde_id_tipo_financeiro'
    end
    object BUS_CD_C_PAR_CTRpde_id_fornecedor: TIntegerField
      FieldName = 'pde_id_fornecedor'
    end
    object BUS_CD_C_PAR_CTRint_pdefornecedor: TWideStringField
      FieldName = 'int_pdefornecedor'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_C_PAR_CTReff_finalidade: TWideStringField
      FieldName = 'eff_finalidade'
      Size = 1
    end
    object BUS_CD_C_PAR_CTReff_perfil: TWideStringField
      FieldName = 'eff_perfil'
      Size = 1
    end
    object BUS_CD_C_PAR_CTReff_atividade: TWideStringField
      FieldName = 'eff_atividade'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRefc_layout: TWideStringField
      FieldName = 'efc_layout'
      Size = 3
    end
    object BUS_CD_C_PAR_CTRefc_tipo_escrituracao: TWideStringField
      FieldName = 'efc_tipo_escrituracao'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRefc_ind_reg_cum: TWideStringField
      FieldName = 'efc_ind_reg_cum'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRefc_situa_especial: TWideStringField
      FieldName = 'efc_situa_especial'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRefc_ind_nat_pj: TWideStringField
      FieldName = 'efc_ind_nat_pj'
      Size = 2
    end
    object BUS_CD_C_PAR_CTRefc_ind_ativ: TWideStringField
      FieldName = 'efc_ind_ativ'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRefc_ind_apro_cred: TWideStringField
      FieldName = 'efc_ind_apro_cred'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRefc_cod_tipo_cont: TWideStringField
      FieldName = 'efc_cod_tipo_cont'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRefc_cod_inc_trib: TWideStringField
      FieldName = 'efc_cod_inc_trib'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_layout: TWideStringField
      FieldName = 'sef_layout'
      Size = 4
    end
    object BUS_CD_C_PAR_CTRsef_cod_fin: TWideStringField
      FieldName = 'sef_cod_fin'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_cod_ctd: TWideStringField
      FieldName = 'sef_cod_ctd'
      Size = 2
    end
    object BUS_CD_C_PAR_CTRsef_ind_ed: TWideStringField
      FieldName = 'sef_ind_ed'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_ind_arq: TWideStringField
      FieldName = 'sef_ind_arq'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_prf_iss: TWideStringField
      FieldName = 'sef_prf_iss'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_prf_icms: TWideStringField
      FieldName = 'sef_prf_icms'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_prf_ridf: TWideStringField
      FieldName = 'sef_prf_ridf'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_prf_rudf: TWideStringField
      FieldName = 'sef_prf_rudf'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_prf_lmc: TWideStringField
      FieldName = 'sef_prf_lmc'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_prf_rv: TWideStringField
      FieldName = 'sef_prf_rv'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_prf_ri: TWideStringField
      FieldName = 'sef_prf_ri'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_ind_ec: TWideStringField
      FieldName = 'sef_ind_ec'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_ind_iss: TWideStringField
      FieldName = 'sef_ind_iss'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_ind_rt: TWideStringField
      FieldName = 'sef_ind_rt'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_ind_icms: TWideStringField
      FieldName = 'sef_ind_icms'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_ind_st: TWideStringField
      FieldName = 'sef_ind_st'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_ind_at: TWideStringField
      FieldName = 'sef_ind_at'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_ind_ipi: TWideStringField
      FieldName = 'sef_ind_ipi'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRsef_ind_ri: TWideStringField
      FieldName = 'sef_ind_ri'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRaliq_interna_icms: TIntegerField
      FieldName = 'aliq_interna_icms'
    end
    object BUS_CD_C_PAR_CTRdta_saldo_inicial: TDateField
      FieldName = 'dta_saldo_inicial'
    end
    object BUS_CD_C_PAR_CTRano_corrente: TIntegerField
      FieldName = 'ano_corrente'
    end
    object BUS_CD_C_PAR_CTRmes_corrente: TIntegerField
      FieldName = 'mes_corrente'
    end
    object BUS_CD_C_PAR_CTRid_lme: TIntegerField
      FieldName = 'id_lme'
    end
    object BUS_CD_C_PAR_CTRtipo_desconto_cmp_ped: TIntegerField
      FieldName = 'tipo_desconto_cmp_ped'
    end
    object BUS_CD_C_PAR_CTRid_alm_padrao: TIntegerField
      FieldName = 'id_alm_padrao'
    end
    object BUS_CD_C_PAR_CTRdoc_layout: TWideStringField
      FieldName = 'doc_layout'
      Size = 4
    end
    object BUS_CD_C_PAR_CTRdoc_cod_fin: TWideStringField
      FieldName = 'doc_cod_fin'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_cod_ctd: TWideStringField
      FieldName = 'doc_cod_ctd'
      Size = 2
    end
    object BUS_CD_C_PAR_CTRdoc_ind_ed: TWideStringField
      FieldName = 'doc_ind_ed'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_ind_arq: TWideStringField
      FieldName = 'doc_ind_arq'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_prf_iss: TWideStringField
      FieldName = 'doc_prf_iss'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_prf_icms: TWideStringField
      FieldName = 'doc_prf_icms'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_prf_ridf: TWideStringField
      FieldName = 'doc_prf_ridf'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_prf_rudf: TWideStringField
      FieldName = 'doc_prf_rudf'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_prf_lmc: TWideStringField
      FieldName = 'doc_prf_lmc'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_prf_rv: TWideStringField
      FieldName = 'doc_prf_rv'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_prf_ri: TWideStringField
      FieldName = 'doc_prf_ri'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_ind_ec: TWideStringField
      FieldName = 'doc_ind_ec'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_ind_iss: TWideStringField
      FieldName = 'doc_ind_iss'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_ind_rt: TWideStringField
      FieldName = 'doc_ind_rt'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_ind_icms: TWideStringField
      FieldName = 'doc_ind_icms'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_ind_st: TWideStringField
      FieldName = 'doc_ind_st'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_ind_at: TWideStringField
      FieldName = 'doc_ind_at'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_ind_ipi: TWideStringField
      FieldName = 'doc_ind_ipi'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRdoc_ind_ri: TWideStringField
      FieldName = 'doc_ind_ri'
      Size = 1
    end
    object BUS_CD_C_PAR_CTRper_corr_preco_prazo: TFloatField
      FieldName = 'per_corr_preco_prazo'
    end
    object BUS_CD_C_PAR_CTRcte_tipo_estoque_ent: TIntegerField
      FieldName = 'cte_tipo_estoque_ent'
    end
    object BUS_CD_C_PAR_CTRcte_tipo_estoque_sai: TIntegerField
      FieldName = 'cte_tipo_estoque_sai'
    end
    object BUS_CD_C_PAR_CTRdec_forma_pag_credito: TIntegerField
      FieldName = 'dec_forma_pag_credito'
    end
    object BUS_CD_C_PAR_CTRpcp_id_item_sob_medida: TIntegerField
      FieldName = 'pcp_id_item_sob_medida'
    end
    object BUS_CD_C_PAR_CTRpcp_cod_int_fte_etq: TWideStringField
      FieldName = 'pcp_cod_int_fte_etq'
      Size = 5
    end
    object BUS_CD_C_PAR_CTRped_cliente: TIntegerField
      FieldName = 'ped_cliente'
    end
    object BUS_CD_C_PAR_CTRped_altera_preco: TBooleanField
      FieldName = 'ped_altera_preco'
    end
    object BUS_CD_C_PAR_CTRint_nomeitesobmed: TWideStringField
      FieldName = 'int_nomeitesobmed'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_PAR_CTRper_desp_var: TFloatField
      FieldName = 'per_desp_var'
    end
    object BUS_CD_C_PAR_CTRorv_id_tipo_mov_estoque: TIntegerField
      FieldName = 'orv_id_tipo_mov_estoque'
    end
    object BUS_CD_C_PAR_CTRserie_nf: TWideStringField
      FieldName = 'serie_nf'
      Size = 3
    end
    object BUS_CD_C_PAR_CTRrcr_id_tif_deb: TIntegerField
      FieldName = 'rcr_id_tif_deb'
    end
    object BUS_CD_C_PAR_CTRrcr_id_tif_cre: TIntegerField
      FieldName = 'rcr_id_tif_cre'
    end
    object BUS_CD_C_PAR_CTRrcr_id_plano_sef: TWideStringField
      FieldName = 'rcr_id_plano_sef'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRcxa_id_plano_suprim: TWideStringField
      FieldName = 'cxa_id_plano_suprim'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRcxa_id_tif_suprim: TIntegerField
      FieldName = 'cxa_id_tif_suprim'
    end
    object BUS_CD_C_PAR_CTRcxa_id_plano_sangria: TWideStringField
      FieldName = 'cxa_id_plano_sangria'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRcxa_id_tif_sangria: TIntegerField
      FieldName = 'cxa_id_tif_sangria'
    end
    object BUS_CD_C_PAR_CTRcxa_exp_id_tif_sangria: TIntegerField
      FieldName = 'cxa_exp_id_tif_sangria'
    end
    object BUS_CD_C_PAR_CTRcxa_exp_id_plano_sangria: TWideStringField
      FieldName = 'cxa_exp_id_plano_sangria'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRrcr_id_condicao_pag: TIntegerField
      FieldName = 'rcr_id_condicao_pag'
    end
    object BUS_CD_C_PAR_CTRrcr_id_forma_pag: TIntegerField
      FieldName = 'rcr_id_forma_pag'
    end
    object BUS_CD_C_PAR_CTRdev_for_id_condicao_pag: TIntegerField
      FieldName = 'dev_for_id_condicao_pag'
    end
    object BUS_CD_C_PAR_CTRcxa_critica_chq: TBooleanField
      FieldName = 'cxa_critica_chq'
    end
    object BUS_CD_C_PAR_CTRnfe_ecf_id_condicao_pag: TIntegerField
      FieldName = 'nfe_ecf_id_condicao_pag'
    end
    object BUS_CD_C_PAR_CTRnfe_ecf_tipo_estoque: TIntegerField
      FieldName = 'nfe_ecf_tipo_estoque'
    end
    object BUS_CD_C_PAR_CTRcxa_imprime_etq: TBooleanField
      FieldName = 'cxa_imprime_etq'
    end
    object BUS_CD_C_PAR_CTRcxa_f11_pedido: TBooleanField
      FieldName = 'cxa_f11_pedido'
    end
    object BUS_CD_C_PAR_CTRper_cofins_l_real: TFloatField
      FieldName = 'per_cofins_l_real'
    end
    object BUS_CD_C_PAR_CTRper_pis_l_real: TFloatField
      FieldName = 'per_pis_l_real'
    end
    object BUS_CD_C_PAR_CTRfat_seq_termo: TIntegerField
      FieldName = 'fat_seq_termo'
    end
    object BUS_CD_C_PAR_CTRper_cofins_l_presumido: TFloatField
      FieldName = 'per_cofins_l_presumido'
    end
    object BUS_CD_C_PAR_CTRper_pis_l_presumido: TFloatField
      FieldName = 'per_pis_l_presumido'
    end
    object BUS_CD_C_PAR_CTRcxa_inf_lote_car_fech: TBooleanField
      FieldName = 'cxa_inf_lote_car_fech'
    end
    object BUS_CD_C_PAR_CTRconc_alt_txa_fixa_car: TBooleanField
      FieldName = 'conc_alt_txa_fixa_car'
    end
    object BUS_CD_C_PAR_CTRmch_id_tif_dep: TIntegerField
      FieldName = 'mch_id_tif_dep'
    end
    object BUS_CD_C_PAR_CTRmch_id_tif_dev: TIntegerField
      FieldName = 'mch_id_tif_dev'
    end
    object BUS_CD_C_PAR_CTRmch_id_plano_dep: TWideStringField
      FieldName = 'mch_id_plano_dep'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRmch_id_plano_dev: TWideStringField
      FieldName = 'mch_id_plano_dev'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRmch_id_plano_ppr: TWideStringField
      FieldName = 'mch_id_plano_ppr'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRmch_id_tif_ppr: TIntegerField
      FieldName = 'mch_id_tif_ppr'
    end
    object BUS_CD_C_PAR_CTRmch_id_forma_pag: TIntegerField
      FieldName = 'mch_id_forma_pag'
    end
    object BUS_CD_C_PAR_CTRorv_id_cargo_mec: TIntegerField
      FieldName = 'orv_id_cargo_mec'
    end
    object BUS_CD_C_PAR_CTRorv_critica_ite_aber: TBooleanField
      FieldName = 'orv_critica_ite_aber'
    end
    object BUS_CD_C_PAR_CTRorv_critica_ocv_aber: TBooleanField
      FieldName = 'orv_critica_ocv_aber'
    end
    object BUS_CD_C_PAR_CTReff_motivo_inv: TWideStringField
      FieldName = 'eff_motivo_inv'
      Size = 2
    end
    object BUS_CD_C_PAR_CTRfin_id_maquineta_pad: TIntegerField
      FieldName = 'fin_id_maquineta_pad'
    end
    object BUS_CD_C_PAR_CTRorv_id_forma_pag_rcr: TIntegerField
      FieldName = 'orv_id_forma_pag_rcr'
    end
    object BUS_CD_C_PAR_CTRfin_perm_n_maquinetas: TBooleanField
      FieldName = 'fin_perm_n_maquinetas'
    end
    object BUS_CD_C_PAR_CTRped_envia_carga: TBooleanField
      FieldName = 'ped_envia_carga'
    end
    object BUS_CD_C_PAR_CTRnfe_per_partilha_dest: TFloatField
      FieldName = 'nfe_per_partilha_dest'
    end
    object BUS_CD_C_PAR_CTRnfe_per_partilha_orig: TFloatField
      FieldName = 'nfe_per_partilha_orig'
    end
    object BUS_CD_C_PAR_CTRnfe_per_icms_saida: TFloatField
      FieldName = 'nfe_per_icms_saida'
    end
    object BUS_CD_C_PAR_CTRsgq_ped_gera_nfs: TBooleanField
      FieldName = 'sgq_ped_gera_nfs'
    end
    object BUS_CD_C_PAR_CTRcbx_id_plano_desc_ope: TWideStringField
      FieldName = 'cbx_id_plano_desc_ope'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRcbx_id_plano_desc_antec: TWideStringField
      FieldName = 'cbx_id_plano_desc_antec'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRcbx_id_tipo_financeiro: TIntegerField
      FieldName = 'cbx_id_tipo_financeiro'
    end
    object BUS_CD_C_PAR_CTRcbx_id_tipo_financeiro_desc: TIntegerField
      FieldName = 'cbx_id_tipo_financeiro_desc'
    end
    object BUS_CD_C_PAR_CTRrbx_ret_id_plano: TWideStringField
      FieldName = 'rbx_ret_id_plano'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRrbx_ret_id_tipo_financeiro: TIntegerField
      FieldName = 'rbx_ret_id_tipo_financeiro'
    end
    object BUS_CD_C_PAR_CTRrbx_ret_id_ccu: TIntegerField
      FieldName = 'rbx_ret_id_ccu'
    end
    object BUS_CD_C_PAR_CTRrbx_ret_id_forma_pag: TIntegerField
      FieldName = 'rbx_ret_id_forma_pag'
    end
    object BUS_CD_C_PAR_CTRcbx_id_plano: TWideStringField
      FieldName = 'cbx_id_plano'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRsgq_dias_prev_cid_dentro: TIntegerField
      FieldName = 'sgq_dias_prev_cid_dentro'
    end
    object BUS_CD_C_PAR_CTRsgq_dias_prev_cid_fora: TIntegerField
      FieldName = 'sgq_dias_prev_cid_fora'
    end
    object BUS_CD_C_PAR_CTRdes_ind_ed: TIntegerField
      FieldName = 'des_ind_ed'
    end
    object BUS_CD_C_PAR_CTRdes_cod_fin: TIntegerField
      FieldName = 'des_cod_fin'
    end
    object BUS_CD_C_PAR_CTRdes_ind_arq: TIntegerField
      FieldName = 'des_ind_arq'
    end
    object BUS_CD_C_PAR_CTRdes_ind_iss: TIntegerField
      FieldName = 'des_ind_iss'
    end
    object BUS_CD_C_PAR_CTRdes_ind_ec: TIntegerField
      FieldName = 'des_ind_ec'
    end
    object BUS_CD_C_PAR_CTRdes_ind_rt: TIntegerField
      FieldName = 'des_ind_rt'
    end
    object BUS_CD_C_PAR_CTRdes_ind_icms: TIntegerField
      FieldName = 'des_ind_icms'
    end
    object BUS_CD_C_PAR_CTRdes_ind_st: TIntegerField
      FieldName = 'des_ind_st'
    end
    object BUS_CD_C_PAR_CTRdes_ind_at: TIntegerField
      FieldName = 'des_ind_at'
    end
    object BUS_CD_C_PAR_CTRdes_ind_ipi: TIntegerField
      FieldName = 'des_ind_ipi'
    end
    object BUS_CD_C_PAR_CTRdes_ind_pi: TIntegerField
      FieldName = 'des_ind_pi'
    end
    object BUS_CD_C_PAR_CTRdes_ind_gef: TIntegerField
      FieldName = 'des_ind_gef'
    end
    object BUS_CD_C_PAR_CTRdes_prf_icms: TIntegerField
      FieldName = 'des_prf_icms'
    end
    object BUS_CD_C_PAR_CTRdes_prf_iss: TIntegerField
      FieldName = 'des_prf_iss'
    end
    object BUS_CD_C_PAR_CTRdes_prf_ridf: TIntegerField
      FieldName = 'des_prf_ridf'
    end
    object BUS_CD_C_PAR_CTRdes_prf_rudf: TIntegerField
      FieldName = 'des_prf_rudf'
    end
    object BUS_CD_C_PAR_CTRdes_prf_lcm: TIntegerField
      FieldName = 'des_prf_lcm'
    end
    object BUS_CD_C_PAR_CTRdes_prf_rv: TIntegerField
      FieldName = 'des_prf_rv'
    end
    object BUS_CD_C_PAR_CTRdes_prf_ri: TIntegerField
      FieldName = 'des_prf_ri'
    end
    object BUS_CD_C_PAR_CTRecf_id_tipo_mov_estoque: TIntegerField
      FieldName = 'ecf_id_tipo_mov_estoque'
    end
    object BUS_CD_C_PAR_CTRecf_id_condicao_pag: TIntegerField
      FieldName = 'ecf_id_condicao_pag'
    end
    object BUS_CD_C_PAR_CTRmvb_id_fornecedor: TIntegerField
      FieldName = 'mvb_id_fornecedor'
    end
    object BUS_CD_C_PAR_CTRped_cupom_imp: TIntegerField
      FieldName = 'ped_cupom_imp'
    end
    object BUS_CD_C_PAR_CTRrcr_id_tipo_financeiro: TIntegerField
      FieldName = 'rcr_id_tipo_financeiro'
    end
    object BUS_CD_C_PAR_CTRrcr_id_plano: TWideStringField
      FieldName = 'rcr_id_plano'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRperm_bxa_pag_n_emp: TBooleanField
      FieldName = 'perm_bxa_pag_n_emp'
    end
    object BUS_CD_C_PAR_CTRrcr_cri_forma_pag: TBooleanField
      FieldName = 'rcr_cri_forma_pag'
    end
    object BUS_CD_C_PAR_CTRfp_per_cust_ven_mens: TFloatField
      FieldName = 'fp_per_cust_ven_mens'
    end
    object BUS_CD_C_PAR_CTRfp_per_icms_ven: TFloatField
      FieldName = 'fp_per_icms_ven'
    end
    object BUS_CD_C_PAR_CTRfp_per_simples: TFloatField
      FieldName = 'fp_per_simples'
    end
    object BUS_CD_C_PAR_CTRfp_per_comissao: TFloatField
      FieldName = 'fp_per_comissao'
    end
    object BUS_CD_C_PAR_CTRfp_per_frete_ven: TFloatField
      FieldName = 'fp_per_frete_ven'
    end
    object BUS_CD_C_PAR_CTRfp_per_cust_fin_ven: TFloatField
      FieldName = 'fp_per_cust_fin_ven'
    end
    object BUS_CD_C_PAR_CTRfp_per_prc_prz_ven_prat: TFloatField
      FieldName = 'fp_per_prc_prz_ven_prat'
    end
    object BUS_CD_C_PAR_CTRassociado_acavasf: TBooleanField
      FieldName = 'associado_acavasf'
    end
    object BUS_CD_C_PAR_CTRtipo_impressao: TIntegerField
      FieldName = 'tipo_impressao'
    end
    object BUS_CD_C_PAR_CTRped_corr_preco_prazo: TBooleanField
      FieldName = 'ped_corr_preco_prazo'
    end
    object BUS_CD_C_PAR_CTRemite_duplicata_aceite: TBooleanField
      FieldName = 'emite_duplicata_aceite'
    end
    object BUS_CD_C_PAR_CTRped_cli_cns_vnd_max: TFMTBCDField
      FieldName = 'ped_cli_cns_vnd_max'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_PAR_CTRcxa_id_tipo_fin_canc_ant: TIntegerField
      FieldName = 'cxa_id_tipo_fin_canc_ant'
    end
    object BUS_CD_C_PAR_CTRcxa_id_plano_canc_ant: TWideStringField
      FieldName = 'cxa_id_plano_canc_ant'
      Size = 11
    end
    object BUS_CD_C_PAR_CTRprc_ite_manual: TBooleanField
      FieldName = 'prc_ite_manual'
    end
    object BUS_CD_C_PAR_CTRsgq_opr_id_setor: TIntegerField
      FieldName = 'sgq_opr_id_setor'
    end
  end
  object BUS_CD_C_PAR_MOD: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_C_PARCAD_SQ_C_PAR_MOD
    Params = <>
    Left = 48
    Top = 184
    object BUS_CD_C_PAR_MODid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_C_PAR_MODcad: TBooleanField
      FieldName = 'cad'
    end
    object BUS_CD_C_PAR_MODtab: TBooleanField
      FieldName = 'tab'
    end
    object BUS_CD_C_PAR_MODcsu: TBooleanField
      FieldName = 'csu'
    end
    object BUS_CD_C_PAR_MODcmp: TBooleanField
      FieldName = 'cmp'
    end
    object BUS_CD_C_PAR_MODest: TBooleanField
      FieldName = 'est'
    end
    object BUS_CD_C_PAR_MODfat: TBooleanField
      FieldName = 'fat'
    end
    object BUS_CD_C_PAR_MODome: TBooleanField
      FieldName = 'ome'
    end
    object BUS_CD_C_PAR_MODota: TBooleanField
      FieldName = 'ota'
    end
    object BUS_CD_C_PAR_MODseg: TBooleanField
      FieldName = 'seg'
    end
    object BUS_CD_C_PAR_MODchave: TWideStringField
      FieldName = 'chave'
      Size = 100
    end
    object BUS_CD_C_PAR_MODsgq: TBooleanField
      FieldName = 'sgq'
    end
    object BUS_CD_C_PAR_MODctc: TBooleanField
      FieldName = 'ctc'
    end
    object BUS_CD_C_PAR_MODfin: TBooleanField
      FieldName = 'fin'
    end
    object BUS_CD_C_PAR_MODrev: TBooleanField
      FieldName = 'rev'
    end
    object BUS_CD_C_PAR_MODsnf: TBooleanField
      FieldName = 'snf'
    end
    object BUS_CD_C_PAR_MODcar: TBooleanField
      FieldName = 'car'
    end
  end
  object BUS_CD_C_PAR_CPG: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_C_PARCAD_SQ_C_PAR_CPG
    Params = <>
    Left = 48
    Top = 240
    object BUS_CD_C_PAR_CPGid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_C_PAR_CPGid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
    end
    object BUS_CD_C_PAR_CPGper_reajuste: TFloatField
      FieldName = 'per_reajuste'
    end
    object BUS_CD_C_PAR_CPGsequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object BUS_CD_C_PAR_CPGint_nomecpg: TWideStringField
      FieldName = 'int_nomecpg'
      ProviderFlags = []
      Size = 30
    end
  end
  object BUS_CD_C_TRI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TRI'
    RemoteServer = pcConexao
    Left = 272
    Top = 184
    object BUS_CD_C_TRIid_tributo: TIntegerField
      FieldName = 'id_tributo'
    end
    object BUS_CD_C_TRIdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 40
    end
    object BUS_CD_C_TRIcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_TRIrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_C_TRICAD_SQ_C_TRI_REG: TDataSetField
      FieldName = 'CAD_SQ_C_TRI_REG'
    end
  end
  object BUS_CD_C_TRI_REG: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_C_TRICAD_SQ_C_TRI_REG
    Params = <>
    Left = 272
    Top = 240
    object BUS_CD_C_TRI_REGid_tributo: TIntegerField
      FieldName = 'id_tributo'
    end
    object BUS_CD_C_TRI_REGid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
    end
    object BUS_CD_C_TRI_REGuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object BUS_CD_C_TRI_REGcnt_id_st_icm: TWideStringField
      FieldName = 'cnt_id_st_icm'
      Size = 3
    end
    object BUS_CD_C_TRI_REGcnt_reducao: TFloatField
      FieldName = 'cnt_reducao'
    end
    object BUS_CD_C_TRI_REGcnt_aliquota: TFloatField
      FieldName = 'cnt_aliquota'
    end
    object BUS_CD_C_TRI_REGnct_id_st_icm: TWideStringField
      FieldName = 'nct_id_st_icm'
      Size = 3
    end
    object BUS_CD_C_TRI_REGnct_reducao: TFloatField
      FieldName = 'nct_reducao'
    end
    object BUS_CD_C_TRI_REGnct_aliquota: TFloatField
      FieldName = 'nct_aliquota'
    end
    object BUS_CD_C_TRI_REGid_inf: TIntegerField
      FieldName = 'id_inf'
    end
    object BUS_CD_C_TRI_REGid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_C_TRI_REGint_nometme: TWideStringField
      FieldName = 'int_nometme'
      Size = 30
    end
    object BUS_CD_C_TRI_REGint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      Size = 50
    end
    object BUS_CD_C_TRI_REGint_nomeinf: TWideStringField
      FieldName = 'int_nomeinf'
      Size = 800
    end
    object BUS_CD_C_TRI_REGcnt_csosn: TWideStringField
      FieldName = 'cnt_csosn'
      Size = 3
    end
    object BUS_CD_C_TRI_REGnct_csosn: TWideStringField
      FieldName = 'nct_csosn'
      Size = 3
    end
    object BUS_CD_C_TRI_REGnct_aliquota_ecf: TWideStringField
      FieldName = 'nct_aliquota_ecf'
    end
    object BUS_CD_C_TRI_REGpart_per_aliq_dest: TFloatField
      FieldName = 'part_per_aliq_dest'
    end
    object BUS_CD_C_TRI_REGpart_per_ope_int_isen: TBooleanField
      FieldName = 'part_per_ope_int_isen'
    end
    object BUS_CD_C_TRI_REGpart_per_ope_ext_isen: TBooleanField
      FieldName = 'part_per_ope_ext_isen'
    end
    object BUS_CD_C_TRI_REGpart_per_red_dest: TFloatField
      FieldName = 'part_per_red_dest'
    end
  end
  object BUS_CD_C_REG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_C_REG'
    RemoteServer = pcConexao
    Left = 272
    Top = 296
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
    object BUS_CD_C_REGdesc_perc: TFloatField
      FieldName = 'desc_perc'
    end
  end
  object BUS_CD_M_REC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FIN_DP_M_REC'
    RemoteServer = pcConexao
    Left = 504
    Top = 184
  end
  object FAT_CD_M_PED: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_PED'
    RemoteServer = pcConexao
    Left = 672
    Top = 64
    object FAT_CD_M_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object FAT_CD_M_PEDid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object FAT_CD_M_PEDdta_pedido: TDateField
      FieldName = 'dta_pedido'
    end
    object FAT_CD_M_PEDid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
    end
    object FAT_CD_M_PEDid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object FAT_CD_M_PEDobs: TWideStringField
      FieldName = 'obs'
      Size = 100
    end
    object FAT_CD_M_PEDvlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object FAT_CD_M_PEDvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDhor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
    end
    object FAT_CD_M_PEDid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
    end
    object FAT_CD_M_PEDpcp_obs: TWideStringField
      FieldName = 'pcp_obs'
      Size = 100
    end
    object FAT_CD_M_PEDpcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
    end
    object FAT_CD_M_PEDsituacao: TIntegerField
      FieldName = 'situacao'
    end
    object FAT_CD_M_PEDsituacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
    end
    object FAT_CD_M_PEDid_atendente: TIntegerField
      FieldName = 'id_atendente'
    end
    object FAT_CD_M_PEDid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object FAT_CD_M_PEDid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object FAT_CD_M_PEDtipo_restricao: TWideStringField
      FieldName = 'tipo_restricao'
      Size = 100
    end
    object FAT_CD_M_PEDid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
    end
    object FAT_CD_M_PEDjustificativa: TWideStringField
      FieldName = 'justificativa'
      Size = 100
    end
    object FAT_CD_M_PEDid_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
    end
    object FAT_CD_M_PEDcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object FAT_CD_M_PEDrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object FAT_CD_M_PEDorigem: TIntegerField
      FieldName = 'origem'
    end
    object FAT_CD_M_PEDdispositivo: TWideStringField
      FieldName = 'dispositivo'
      Size = 50
    end
    object FAT_CD_M_PEDgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object FAT_CD_M_PEDgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object FAT_CD_M_PEDcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object FAT_CD_M_PEDid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
    end
    object FAT_CD_M_PEDenvia_carga: TBooleanField
      FieldName = 'envia_carga'
    end
    object FAT_CD_M_PEDdta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
    end
    object FAT_CD_M_PEDint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object FAT_CD_M_PEDint_nometme: TWideStringField
      FieldName = 'int_nometme'
      ProviderFlags = []
      Size = 30
    end
    object FAT_CD_M_PEDint_nomefun: TWideStringField
      FieldName = 'int_nomefun'
      ProviderFlags = []
      Size = 50
    end
    object FAT_CD_M_PEDint_nomecpg: TWideStringField
      FieldName = 'int_nomecpg'
      ProviderFlags = []
      Size = 30
    end
    object FAT_CD_M_PEDint_nomeate: TWideStringField
      FieldName = 'int_nomeate'
      ProviderFlags = []
      Size = 50
    end
    object FAT_CD_M_PEDint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
    object FAT_CD_M_PEDint_nomecid: TWideStringField
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Size = 60
    end
    object FAT_CD_M_PEDint_nomeest: TWideStringField
      FieldName = 'int_nomeest'
      ProviderFlags = []
      Size = 2
    end
    object FAT_CD_M_PEDint_cpfcnpj: TWideStringField
      FieldName = 'int_cpfcnpj'
      ProviderFlags = []
      Size = 14
    end
    object FAT_CD_M_PEDint_pessoacli: TIntegerField
      FieldName = 'int_pessoacli'
      ProviderFlags = []
    end
    object FAT_CD_M_PEDint_id_perfil: TIntegerField
      FieldName = 'int_id_perfil'
      ProviderFlags = []
    end
    object FAT_CD_M_PEDid_ors: TIntegerField
      FieldName = 'id_ors'
      ProviderFlags = []
    end
    object FAT_CD_M_PEDint_sitaprov: TWideStringField
      FieldName = 'int_sitaprov'
      ProviderFlags = []
    end
    object FAT_CD_M_PEDint_sitped: TWideStringField
      FieldName = 'int_sitped'
      ProviderFlags = []
    end
    object FAT_CD_M_PEDid_abertura: TIntegerField
      FieldName = 'id_abertura'
    end
    object FAT_CD_M_PEDint_ie_rg_cli: TWideStringField
      FieldName = 'int_ie_rg_cli'
      ProviderFlags = []
    end
    object FAT_CD_M_PEDint_selecao: TBooleanField
      FieldName = 'int_selecao'
      ProviderFlags = []
    end
    object FAT_CD_M_PEDdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
    end
    object FAT_CD_M_PEDint_nomereg: TWideStringField
      FieldName = 'int_nomereg'
      ProviderFlags = []
      Size = 50
    end
    object FAT_CD_M_PEDFAT_SQ_M_PED_TIT: TDataSetField
      FieldName = 'FAT_SQ_M_PED_TIT'
    end
    object FAT_CD_M_PEDFAT_SQ_M_PED_ITE: TDataSetField
      FieldName = 'FAT_SQ_M_PED_ITE'
    end
    object FAT_CD_M_PEDoffline: TBooleanField
      FieldName = 'offline'
    end
    object FAT_CD_M_PEDconferido: TBooleanField
      FieldName = 'conferido'
    end
  end
  object FAT_CD_M_PED_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_M_PEDFAT_SQ_M_PED_ITE
    Params = <>
    Left = 672
    Top = 120
    object FAT_CD_M_PED_ITEid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object FAT_CD_M_PED_ITEid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
    end
    object FAT_CD_M_PED_ITEid_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_M_PED_ITEqtde: TFloatField
      FieldName = 'qtde'
    end
    object FAT_CD_M_PED_ITEvlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PED_ITEvlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PED_ITEper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object FAT_CD_M_PED_ITEvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PED_ITEvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PED_ITEid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object FAT_CD_M_PED_ITEid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
    end
    object FAT_CD_M_PED_ITEid_busca_item: TWideStringField
      FieldName = 'id_busca_item'
      Size = 30
    end
    object FAT_CD_M_PED_ITEint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object FAT_CD_M_PED_ITEint_nomecor: TWideStringField
      FieldName = 'int_nomecor'
      ProviderFlags = []
      Size = 40
    end
    object FAT_CD_M_PED_ITEint_id_und_venda: TWideStringField
      FieldName = 'int_id_und_venda'
      ProviderFlags = []
      Size = 3
    end
    object FAT_CD_M_PED_ITEint_nometam: TWideStringField
      FieldName = 'int_nometam'
      ProviderFlags = []
      Size = 40
    end
    object FAT_CD_M_PED_ITEvlr_unitario_orig: TFMTBCDField
      FieldName = 'vlr_unitario_orig'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PED_ITEint_tipo_item: TWideStringField
      FieldName = 'int_tipo_item'
      ProviderFlags = []
      Size = 2
    end
    object FAT_CD_M_PED_ITEint_seqitem: TIntegerField
      FieldName = 'int_seqitem'
      ProviderFlags = []
    end
    object FAT_CD_M_PED_ITEint_rua: TWideStringField
      FieldName = 'int_rua'
      ProviderFlags = []
      Size = 4
    end
    object FAT_CD_M_PED_ITEint_prateleira: TWideStringField
      FieldName = 'int_prateleira'
      ProviderFlags = []
      Size = 4
    end
    object FAT_CD_M_PED_ITEint_escaninho: TWideStringField
      FieldName = 'int_escaninho'
      ProviderFlags = []
      Size = 4
    end
    object FAT_CD_M_PED_ITEper_desc_max: TFloatField
      FieldName = 'per_desc_max'
    end
    object FAT_CD_M_PED_ITEqtde_conferida: TFloatField
      FieldName = 'qtde_conferida'
    end
  end
  object FAT_CD_M_PED_TIT: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_M_PEDFAT_SQ_M_PED_TIT
    Params = <>
    Left = 672
    Top = 184
    object FAT_CD_M_PED_TITid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object FAT_CD_M_PED_TITid_titulo: TIntegerField
      FieldName = 'id_titulo'
    end
    object FAT_CD_M_PED_TITdias: TIntegerField
      FieldName = 'dias'
    end
    object FAT_CD_M_PED_TITdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
    end
    object FAT_CD_M_PED_TITvlr_titulo: TFMTBCDField
      FieldName = 'vlr_titulo'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PED_TITche_banco: TWideStringField
      FieldName = 'che_banco'
      Size = 10
    end
    object FAT_CD_M_PED_TITche_agencia: TWideStringField
      FieldName = 'che_agencia'
      Size = 10
    end
    object FAT_CD_M_PED_TITche_conta: TIntegerField
      FieldName = 'che_conta'
    end
    object FAT_CD_M_PED_TITche_numero: TIntegerField
      FieldName = 'che_numero'
    end
    object FAT_CD_M_PED_TITche_emitente: TWideStringField
      FieldName = 'che_emitente'
      Size = 50
    end
    object FAT_CD_M_PED_TITid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
    end
    object FAT_CD_M_PED_TITbol_nosso_numero: TIntegerField
      FieldName = 'bol_nosso_numero'
    end
    object FAT_CD_M_PED_TITint_nomefpg: TWideStringField
      FieldName = 'int_nomefpg'
      ProviderFlags = []
      Size = 30
    end
    object FAT_CD_M_PED_TITid_maquineta: TIntegerField
      FieldName = 'id_maquineta'
    end
    object FAT_CD_M_PED_TITint_docimpresso: TIntegerField
      FieldName = 'int_docimpresso'
      ProviderFlags = []
    end
  end
  object FAT_CD_M_PEX: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_PEX'
    RemoteServer = pcConexao
    Left = 672
    Top = 264
    object FAT_CD_M_PEXid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object FAT_CD_M_PEXid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object FAT_CD_M_PEXdta_pedido: TDateField
      FieldName = 'dta_pedido'
    end
    object FAT_CD_M_PEXid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
    end
    object FAT_CD_M_PEXid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object FAT_CD_M_PEXobs: TWideStringField
      FieldName = 'obs'
      Size = 100
    end
    object FAT_CD_M_PEXvlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEXvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEXper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object FAT_CD_M_PEXvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEXhor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
    end
    object FAT_CD_M_PEXid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
    end
    object FAT_CD_M_PEXpcp_obs: TWideStringField
      FieldName = 'pcp_obs'
      Size = 100
    end
    object FAT_CD_M_PEXpcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
    end
    object FAT_CD_M_PEXsituacao: TIntegerField
      FieldName = 'situacao'
    end
    object FAT_CD_M_PEXsituacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
    end
    object FAT_CD_M_PEXid_atendente: TIntegerField
      FieldName = 'id_atendente'
    end
    object FAT_CD_M_PEXid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object FAT_CD_M_PEXid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object FAT_CD_M_PEXtipo_restricao: TWideStringField
      FieldName = 'tipo_restricao'
      Size = 100
    end
    object FAT_CD_M_PEXid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
    end
    object FAT_CD_M_PEXjustificativa: TWideStringField
      FieldName = 'justificativa'
      Size = 100
    end
    object FAT_CD_M_PEXid_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
    end
    object FAT_CD_M_PEXcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object FAT_CD_M_PEXrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object FAT_CD_M_PEXorigem: TIntegerField
      FieldName = 'origem'
    end
    object FAT_CD_M_PEXdispositivo: TWideStringField
      FieldName = 'dispositivo'
      Size = 50
    end
    object FAT_CD_M_PEXgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object FAT_CD_M_PEXgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object FAT_CD_M_PEXcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object FAT_CD_M_PEXid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
    end
    object FAT_CD_M_PEXenvia_carga: TBooleanField
      FieldName = 'envia_carga'
    end
    object FAT_CD_M_PEXdta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
    end
    object FAT_CD_M_PEXid_abertura: TIntegerField
      FieldName = 'id_abertura'
    end
    object FAT_CD_M_PEXdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
    end
    object FAT_CD_M_PEXoffline: TBooleanField
      FieldName = 'offline'
    end
  end
  object BUS_CD_C_PAR_RST: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_C_PARCAD_SQ_C_PAR_RST
    Params = <>
    Left = 48
    Top = 296
    object BUS_CD_C_PAR_RSTid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_C_PAR_RSTletra_restricao: TWideStringField
      FieldName = 'letra_restricao'
      Size = 2
    end
    object BUS_CD_C_PAR_RSTtipo_restricao: TIntegerField
      FieldName = 'tipo_restricao'
    end
  end
end
