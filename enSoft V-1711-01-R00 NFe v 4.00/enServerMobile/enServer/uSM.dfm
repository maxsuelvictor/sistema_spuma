object SM: TSM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 956
  Width = 905
  object conexaoNW: TFDConnection
    Params.Strings = (
      'Database=enSoftTeresina021017'
      'User_Name=postgres'
      'Password=ssq#0609'
      'DriverID=PG')
    LoginPrompt = False
    Left = 56
    Top = 8
  end
  object CAD_FD_C_GRU: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'select GRU.* from cad_tb_c_gru gru'
      'where 1=2'
      ''
      '')
    Left = 56
    Top = 160
  end
  object CAD_DP_C_GRU: TDataSetProvider
    DataSet = CAD_FD_C_GRU
    Left = 168
    Top = 160
  end
  object CAD_FD_C_CLI: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'select cli.* from cad_tb_c_cli cli'
      'where 1=2;')
    Left = 432
    Top = 64
  end
  object CAD_DP_C_CLI: TDataSetProvider
    DataSet = CAD_FD_C_CLI
    Left = 536
    Top = 64
  end
  object CAD_FD_C_CPG: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT CPG.* FROM CAD_TB_C_CPG CPG'
      'WHERE 1=2')
    Left = 56
    Top = 208
  end
  object CAD_DP_C_CPG: TDataSetProvider
    DataSet = CAD_FD_C_CPG
    Left = 168
    Top = 208
  end
  object CAD_FD_C_ITE: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      
        'SELECT ITE.*,GRU.TIPO_ITEM AS INT_TIPO_ITEM FROM CAD_TB_C_ITE IT' +
        'E'
      'LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_GRUPO'
      'WHERE 1=2')
    Left = 56
    Top = 250
  end
  object CAD_DP_C_ITE: TDataSetProvider
    DataSet = CAD_FD_C_ITE
    OnDataRequest = CAD_DP_C_ITEDataRequest
    Left = 168
    Top = 250
  end
  object CAD_FD_C_ITE_PRC: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT PRC.* FROM CAD_TB_C_ITE_PRC PRC'
      'WHERE 1=2')
    Left = 56
    Top = 304
  end
  object CAD_FD_C_FUN: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT FUN.* FROM CAD_TB_C_FUN FUN'
      'WHERE 1=2')
    Left = 56
    Top = 368
  end
  object CAD_DP_C_FUN: TDataSetProvider
    DataSet = CAD_FD_C_FUN
    Left = 168
    Top = 368
  end
  object CAD_FD_C_VEI: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT VEI.* FROM CAD_TB_C_VEI VEI'
      'WHERE 1=2;')
    Left = 56
    Top = 432
  end
  object CAD_DP_C_VEI: TDataSetProvider
    DataSet = CAD_FD_C_VEI
    Left = 168
    Top = 432
  end
  object CAD_FD_C_PAR: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT PAR.* FROM CAD_TB_C_PAR PAR')
    Left = 56
    Top = 56
  end
  object CAD_DP_C_PAR: TDataSetProvider
    DataSet = CAD_FD_C_PAR
    Left = 168
    Top = 56
  end
  object CAD_DP_C_ITE_PRC: TDataSetProvider
    DataSet = CAD_FD_C_ITE_PRC
    Left = 168
    Top = 304
  end
  object CAD_FD_C_SEQ: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM CAD_TB_C_SEQ'
      'WHERE 1=2')
    Left = 56
    Top = 496
    object CAD_FD_C_SEQid_tabela: TWideStringField
      FieldName = 'id_tabela'
      Origin = 'id_tabela'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object CAD_FD_C_SEQsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = 'sequencia'
    end
  end
  object CAD_DP_C_SEQ: TDataSetProvider
    DataSet = CAD_FD_C_SEQ
    Left = 168
    Top = 496
  end
  object OFI_FD_M_OCV: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM OFI_TB_M_OCV WHERE 1=2')
    Left = 432
    Top = 176
    object OFI_FD_M_OCVid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
      Origin = 'id_orcamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_OCVid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
    end
    object OFI_FD_M_OCVplaca: TWideStringField
      FieldName = 'placa'
      Origin = 'placa'
      FixedChar = True
      Size = 8
    end
    object OFI_FD_M_OCVkm_atual: TIntegerField
      FieldName = 'km_atual'
      Origin = 'km_atual'
    end
    object OFI_FD_M_OCVdta_orcamento: TDateField
      FieldName = 'dta_orcamento'
      Origin = 'dta_orcamento'
    end
    object OFI_FD_M_OCVdta_validade: TDateField
      FieldName = 'dta_validade'
      Origin = 'dta_validade'
    end
    object OFI_FD_M_OCVid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object OFI_FD_M_OCVnome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 50
    end
    object OFI_FD_M_OCVid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
    end
    object OFI_FD_M_OCVid_analista: TIntegerField
      FieldName = 'id_analista'
      Origin = 'id_analista'
    end
    object OFI_FD_M_OCVid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
    end
    object OFI_FD_M_OCVvlr_servicos: TBCDField
      FieldName = 'vlr_servicos'
      Origin = 'vlr_servicos'
      Precision = 18
    end
    object OFI_FD_M_OCVvlr_produtos: TBCDField
      FieldName = 'vlr_produtos'
      Origin = 'vlr_produtos'
      Precision = 18
    end
    object OFI_FD_M_OCVvlr_terceiro: TBCDField
      FieldName = 'vlr_terceiro'
      Origin = 'vlr_terceiro'
      Precision = 18
    end
    object OFI_FD_M_OCVdes_servicos: TBCDField
      FieldName = 'des_servicos'
      Origin = 'des_servicos'
      Precision = 18
    end
    object OFI_FD_M_OCVdes_produtos: TBCDField
      FieldName = 'des_produtos'
      Origin = 'des_produtos'
      Precision = 18
    end
    object OFI_FD_M_OCVvlr_total: TBCDField
      FieldName = 'vlr_total'
      Origin = 'vlr_total'
      Precision = 18
    end
    object OFI_FD_M_OCVstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object OFI_FD_M_OCVobs: TWideStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object OFI_FD_M_OCVdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      Origin = 'doc_cnpj_cpf'
      Size = 14
    end
    object OFI_FD_M_OCVhor_orcamento: TTimeField
      FieldName = 'hor_orcamento'
      Origin = 'hor_orcamento'
    end
    object OFI_FD_M_OCVcan_motivo: TWideStringField
      FieldName = 'can_motivo'
      Origin = 'can_motivo'
      Size = 100
    end
    object OFI_FD_M_OCVcan_data: TDateField
      FieldName = 'can_data'
      Origin = 'can_data'
    end
    object OFI_FD_M_OCVcan_hora: TTimeField
      FieldName = 'can_hora'
      Origin = 'can_hora'
    end
    object OFI_FD_M_OCVcan_usuario: TIntegerField
      FieldName = 'can_usuario'
      Origin = 'can_usuario'
    end
    object OFI_FD_M_OCVtipo_orcamento: TIntegerField
      FieldName = 'tipo_orcamento'
      Origin = 'tipo_orcamento'
    end
    object OFI_FD_M_OCVchassi: TWideStringField
      FieldName = 'chassi'
      Origin = 'chassi'
    end
    object OFI_FD_M_OCVid_orcamento_mob: TIntegerField
      FieldName = 'id_orcamento_mob'
      Origin = 'id_orcamento_mob'
    end
  end
  object OFI_FD_M_OCV_ITE: TFDQuery
    MasterSource = OFI_DS_M_OCV
    MasterFields = 'id_orcamento'
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM OFI_TB_M_OCV_ITE OCT'
      'WHERE OCT.ID_ORCAMENTO=:ID_ORCAMENTO')
    Left = 432
    Top = 248
    ParamData = <
      item
        Name = 'ID_ORCAMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object OFI_FD_M_OCV_ITEid_orcamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_orcamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_OCV_ITEid_sequencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_OCV_ITEid_item: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_item'
    end
    object OFI_FD_M_OCV_ITEid_busca_item: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'id_busca_item'
      Size = 30
    end
    object OFI_FD_M_OCV_ITEqtde: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtde'
    end
    object OFI_FD_M_OCV_ITEvlr_unitario: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlr_unitario'
      Precision = 18
    end
    object OFI_FD_M_OCV_ITEvlr_bruto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlr_bruto'
      Precision = 18
    end
    object OFI_FD_M_OCV_ITEper_desconto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'per_desconto'
    end
    object OFI_FD_M_OCV_ITEvlr_desconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlr_desconto'
      Precision = 18
    end
    object OFI_FD_M_OCV_ITEvlr_liquido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlr_liquido'
      Precision = 18
    end
    object OFI_FD_M_OCV_ITEid_terceiro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_terceiro'
    end
    object OFI_FD_M_OCV_ITEvlr_unitario_orig: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlr_unitario_orig'
      Precision = 18
    end
    object OFI_FD_M_OCV_ITEnome_ite: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_ite'
      Size = 100
    end
  end
  object OFI_DP_M_OCV: TDataSetProvider
    DataSet = OFI_FD_M_OCV
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 552
    Top = 176
  end
  object OFI_DS_M_OCV: TDataSource
    DataSet = OFI_FD_M_OCV
    Left = 552
    Top = 248
  end
  object OFI_FD_M_OCV_FOT: TFDQuery
    MasterSource = OFI_DS_M_OCV
    MasterFields = 'id_orcamento'
    Connection = conexaoNW
    SQL.Strings = (
      'select * from ofi_tb_m_ocv_fot oft'
      'where oft.id_orcamento=:id_orcamento')
    Left = 432
    Top = 312
    ParamData = <
      item
        Name = 'ID_ORCAMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object OFI_FD_M_OCV_FOTid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
      Origin = 'id_orcamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_OCV_FOTid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_OCV_FOTcaminho_foto: TWideStringField
      FieldName = 'caminho_foto'
      Origin = 'caminho_foto'
      Size = 255
    end
  end
  object OFI_FD_M_ORV: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM OFI_TB_M_ORV'
      'WHERE 1=2')
    Left = 432
    Top = 392
    object OFI_FD_M_ORVid_ordem: TIntegerField
      FieldName = 'id_ordem'
      Origin = 'id_ordem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_ORVid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
    end
    object OFI_FD_M_ORVdta_emissao: TDateField
      FieldName = 'dta_emissao'
      Origin = 'dta_emissao'
    end
    object OFI_FD_M_ORVdta_entrega: TDateField
      FieldName = 'dta_entrega'
      Origin = 'dta_entrega'
    end
    object OFI_FD_M_ORVid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object OFI_FD_M_ORVid_veiculo: TIntegerField
      FieldName = 'id_veiculo'
      Origin = 'id_veiculo'
    end
    object OFI_FD_M_ORVkm_atual: TIntegerField
      FieldName = 'km_atual'
      Origin = 'km_atual'
    end
    object OFI_FD_M_ORVtanque_combus: TIntegerField
      FieldName = 'tanque_combus'
      Origin = 'tanque_combus'
    end
    object OFI_FD_M_ORVid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
    end
    object OFI_FD_M_ORVid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
    end
    object OFI_FD_M_ORVid_analista: TIntegerField
      FieldName = 'id_analista'
      Origin = 'id_analista'
    end
    object OFI_FD_M_ORVid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
      Origin = 'id_orcamento'
    end
    object OFI_FD_M_ORVobs_reclamacao: TWideStringField
      FieldName = 'obs_reclamacao'
      Origin = 'obs_reclamacao'
      Size = 800
    end
    object OFI_FD_M_ORVobs_problema: TWideStringField
      FieldName = 'obs_problema'
      Origin = 'obs_problema'
      Size = 800
    end
    object OFI_FD_M_ORVstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object OFI_FD_M_ORVvlr_produtos: TBCDField
      FieldName = 'vlr_produtos'
      Origin = 'vlr_produtos'
      Precision = 18
    end
    object OFI_FD_M_ORVvlr_desc_produtos: TBCDField
      FieldName = 'vlr_desc_produtos'
      Origin = 'vlr_desc_produtos'
      Precision = 18
    end
    object OFI_FD_M_ORVper_desc_produtos: TFloatField
      FieldName = 'per_desc_produtos'
      Origin = 'per_desc_produtos'
    end
    object OFI_FD_M_ORVvlr_prod_liquido: TBCDField
      FieldName = 'vlr_prod_liquido'
      Origin = 'vlr_prod_liquido'
      Precision = 18
    end
    object OFI_FD_M_ORVvlr_serv_bruto: TBCDField
      FieldName = 'vlr_serv_bruto'
      Origin = 'vlr_serv_bruto'
      Precision = 18
    end
    object OFI_FD_M_ORVvlr_desc_servicos: TBCDField
      FieldName = 'vlr_desc_servicos'
      Origin = 'vlr_desc_servicos'
      Precision = 18
    end
    object OFI_FD_M_ORVper_desc_servicos: TFloatField
      FieldName = 'per_desc_servicos'
      Origin = 'per_desc_servicos'
    end
    object OFI_FD_M_ORVvlr_ser_liquido: TBCDField
      FieldName = 'vlr_ser_liquido'
      Origin = 'vlr_ser_liquido'
      Precision = 18
    end
    object OFI_FD_M_ORVvlr_terceiro: TBCDField
      FieldName = 'vlr_terceiro'
      Origin = 'vlr_terceiro'
      Precision = 18
    end
    object OFI_FD_M_ORVvlr_desc_terceiro: TBCDField
      FieldName = 'vlr_desc_terceiro'
      Origin = 'vlr_desc_terceiro'
      Precision = 18
    end
    object OFI_FD_M_ORVper_desc_terceiro: TFloatField
      FieldName = 'per_desc_terceiro'
      Origin = 'per_desc_terceiro'
    end
    object OFI_FD_M_ORVvlr_terc_liquido: TBCDField
      FieldName = 'vlr_terc_liquido'
      Origin = 'vlr_terc_liquido'
      Precision = 18
    end
    object OFI_FD_M_ORVvlr_despesas: TBCDField
      FieldName = 'vlr_despesas'
      Origin = 'vlr_despesas'
      Precision = 18
    end
    object OFI_FD_M_ORVvlr_credito: TBCDField
      FieldName = 'vlr_credito'
      Origin = 'vlr_credito'
      Precision = 18
    end
    object OFI_FD_M_ORVvlr_total: TBCDField
      FieldName = 'vlr_total'
      Origin = 'vlr_total'
      Precision = 18
    end
    object OFI_FD_M_ORVid_tipo_os: TIntegerField
      FieldName = 'id_tipo_os'
      Origin = 'id_tipo_os'
    end
    object OFI_FD_M_ORVid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
      Origin = 'id_responsavel'
    end
    object OFI_FD_M_ORVcan_usuario: TIntegerField
      FieldName = 'can_usuario'
      Origin = 'can_usuario'
    end
    object OFI_FD_M_ORVcan_data: TDateField
      FieldName = 'can_data'
      Origin = 'can_data'
    end
    object OFI_FD_M_ORVcan_motivo: TWideStringField
      FieldName = 'can_motivo'
      Origin = 'can_motivo'
      Size = 100
    end
    object OFI_FD_M_ORVcan_hora: TTimeField
      FieldName = 'can_hora'
      Origin = 'can_hora'
    end
    object OFI_FD_M_ORVrea_usuario: TIntegerField
      FieldName = 'rea_usuario'
      Origin = 'rea_usuario'
    end
    object OFI_FD_M_ORVrea_data: TDateField
      FieldName = 'rea_data'
      Origin = 'rea_data'
    end
    object OFI_FD_M_ORVrea_hora: TTimeField
      FieldName = 'rea_hora'
      Origin = 'rea_hora'
    end
    object OFI_FD_M_ORVrea_motivo: TWideStringField
      FieldName = 'rea_motivo'
      Origin = 'rea_motivo'
      Size = 100
    end
    object OFI_FD_M_ORVdta_fechamento: TDateField
      FieldName = 'dta_fechamento'
      Origin = 'dta_fechamento'
    end
    object OFI_FD_M_ORVid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
      Origin = 'id_almoxarifado'
    end
    object OFI_FD_M_ORVvlr_cred_produtos: TBCDField
      FieldName = 'vlr_cred_produtos'
      Origin = 'vlr_cred_produtos'
      Precision = 18
    end
    object OFI_FD_M_ORVvlr_cred_servicos: TBCDField
      FieldName = 'vlr_cred_servicos'
      Origin = 'vlr_cred_servicos'
      Precision = 18
    end
    object OFI_FD_M_ORVobservacoes: TWideStringField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Size = 400
    end
    object OFI_FD_M_ORVstatus_painel: TIntegerField
      FieldName = 'status_painel'
      Origin = 'status_painel'
    end
    object OFI_FD_M_ORVhor_emissao: TTimeField
      FieldName = 'hor_emissao'
      Origin = 'hor_emissao'
    end
    object OFI_FD_M_ORVhor_fechamento: TTimeField
      FieldName = 'hor_fechamento'
      Origin = 'hor_fechamento'
    end
    object OFI_FD_M_ORVsepara_prod_serv: TBooleanField
      FieldName = 'separa_prod_serv'
      Origin = 'separa_prod_serv'
    end
    object OFI_FD_M_ORVid_equipamento: TIntegerField
      FieldName = 'id_equipamento'
      Origin = 'id_equipamento'
    end
    object OFI_FD_M_ORVconvertido: TBooleanField
      FieldName = 'convertido'
      Origin = 'convertido'
    end
    object OFI_FD_M_ORVconversao: TBooleanField
      FieldName = 'conversao'
      Origin = 'conversao'
    end
    object OFI_FD_M_ORVtipo_ordem: TIntegerField
      FieldName = 'tipo_ordem'
      Origin = 'tipo_ordem'
    end
    object OFI_FD_M_ORVchassi: TWideStringField
      FieldName = 'chassi'
      Origin = 'chassi'
    end
    object OFI_FD_M_ORVid_ordem_orig_gar: TIntegerField
      FieldName = 'id_ordem_orig_gar'
      Origin = 'id_ordem_orig_gar'
    end
    object OFI_FD_M_ORVid_fiscal_ref_entrada: TIntegerField
      FieldName = 'id_fiscal_ref_entrada'
      Origin = 'id_fiscal_ref_entrada'
    end
    object OFI_FD_M_ORVid_ordem_mob: TIntegerField
      FieldName = 'id_ordem_mob'
      Origin = 'id_ordem_mob'
    end
    object OFI_FD_M_ORVordem_substituicao: TBooleanField
      FieldName = 'ordem_substituicao'
      Origin = 'ordem_substituicao'
    end
  end
  object OFI_DP_M_ORV: TDataSetProvider
    DataSet = OFI_FD_M_ORV
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 552
    Top = 392
  end
  object OFI_FD_M_ORV_ITE: TFDQuery
    MasterSource = OFI_DS_M_ORV
    MasterFields = 'id_ordem'
    Connection = conexaoNW
    SQL.Strings = (
      
        'SELECT ORI.*,GRU.TIPO_ITEM AS INT_TIPO_ITEM FROM OFI_TB_M_ORV_IT' +
        'E ORI'
      'LEFT OUTER JOIN CAD_TB_C_ITE ITE ON ITE.ID_ITEM=ORI.ID_ITEM'
      'LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_GRUPO'
      'WHERE ORI.ID_ORDEM=:ID_ORDEM')
    Left = 432
    Top = 456
    ParamData = <
      item
        Name = 'ID_ORDEM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object OFI_FD_M_ORV_ITEid_ordem: TIntegerField
      FieldName = 'id_ordem'
      Origin = 'id_ordem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_ORV_ITEid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_ORV_ITEid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
    end
    object OFI_FD_M_ORV_ITEid_busca_item: TWideStringField
      FieldName = 'id_busca_item'
      Origin = 'id_busca_item'
      Size = 30
    end
    object OFI_FD_M_ORV_ITEqtde: TFloatField
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object OFI_FD_M_ORV_ITEvlr_unitario: TBCDField
      FieldName = 'vlr_unitario'
      Origin = 'vlr_unitario'
      Precision = 18
    end
    object OFI_FD_M_ORV_ITEvlr_bruto: TBCDField
      FieldName = 'vlr_bruto'
      Origin = 'vlr_bruto'
      Precision = 18
    end
    object OFI_FD_M_ORV_ITEper_desconto: TFloatField
      FieldName = 'per_desconto'
      Origin = 'per_desconto'
    end
    object OFI_FD_M_ORV_ITEvlr_desconto: TBCDField
      FieldName = 'vlr_desconto'
      Origin = 'vlr_desconto'
      Precision = 18
    end
    object OFI_FD_M_ORV_ITEvlr_liquido: TBCDField
      FieldName = 'vlr_liquido'
      Origin = 'vlr_liquido'
      Precision = 18
    end
    object OFI_FD_M_ORV_ITEid_mecanico: TIntegerField
      FieldName = 'id_mecanico'
      Origin = 'id_mecanico'
    end
    object OFI_FD_M_ORV_ITEid_terceiro: TIntegerField
      FieldName = 'id_terceiro'
      Origin = 'id_terceiro'
    end
    object OFI_FD_M_ORV_ITEid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
      Origin = 'id_responsavel'
    end
    object OFI_FD_M_ORV_ITEcancelada: TBooleanField
      FieldName = 'cancelada'
      Origin = 'cancelada'
    end
    object OFI_FD_M_ORV_ITEvlr_unitario_orig: TBCDField
      FieldName = 'vlr_unitario_orig'
      Origin = 'vlr_unitario_orig'
      Precision = 18
    end
    object OFI_FD_M_ORV_ITEid_sequencia_ite_ocv: TIntegerField
      FieldName = 'id_sequencia_ite_ocv'
      Origin = 'id_sequencia_ite_ocv'
    end
    object OFI_FD_M_ORV_ITEid_requisicao: TIntegerField
      FieldName = 'id_requisicao'
      Origin = 'id_requisicao'
    end
    object OFI_FD_M_ORV_ITEcan_usuario: TIntegerField
      FieldName = 'can_usuario'
      Origin = 'can_usuario'
    end
    object OFI_FD_M_ORV_ITEcan_data: TDateField
      FieldName = 'can_data'
      Origin = 'can_data'
    end
    object OFI_FD_M_ORV_ITEcan_hora: TTimeField
      FieldName = 'can_hora'
      Origin = 'can_hora'
    end
    object OFI_FD_M_ORV_ITEcan_motivo: TWideStringField
      FieldName = 'can_motivo'
      Origin = 'can_motivo'
      Size = 100
    end
    object OFI_FD_M_ORV_ITEdta_requisicao: TDateField
      FieldName = 'dta_requisicao'
      Origin = 'dta_requisicao'
    end
    object OFI_FD_M_ORV_ITEid_cor: TIntegerField
      FieldName = 'id_cor'
      Origin = 'id_cor'
    end
    object OFI_FD_M_ORV_ITEid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Origin = 'id_tamanho'
    end
    object OFI_FD_M_ORV_ITEid_ordem_subst: TIntegerField
      FieldName = 'id_ordem_subst'
      Origin = 'id_ordem_subst'
    end
    object OFI_FD_M_ORV_ITEint_tipo_item: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_tipo_item'
      Origin = 'int_tipo_item'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
  end
  object OFI_DS_M_ORV: TDataSource
    DataSet = OFI_FD_M_ORV
    Left = 552
    Top = 456
  end
  object OFI_FD_M_ORV_FOT: TFDQuery
    MasterSource = OFI_DS_M_ORV
    MasterFields = 'id_ordem'
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM OFI_TB_M_ORV_FOT ORF'
      'WHERE ORF.ID_ORDEM=:ID_ORDEM')
    Left = 432
    Top = 520
    ParamData = <
      item
        Name = 'ID_ORDEM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object OFI_FD_M_ORV_FOTid_ordem: TIntegerField
      FieldName = 'id_ordem'
      Origin = 'id_ordem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_ORV_FOTid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OFI_FD_M_ORV_FOTcaminho_foto: TWideStringField
      FieldName = 'caminho_foto'
      Origin = 'caminho_foto'
      Size = 255
    end
  end
  object EST_FD_M_FEA: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM EST_TB_M_FEA'
      'WHERE 1=2')
    Left = 688
    Top = 64
  end
  object EST_DP_M_FEA: TDataSetProvider
    DataSet = EST_FD_M_FEA
    Left = 784
    Top = 64
  end
  object EST_FD_M_FES: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM EST_TB_M_FES '
      'WHERE 1=2')
    Left = 688
    Top = 128
  end
  object EST_DP_M_FES: TDataSetProvider
    DataSet = EST_FD_M_FES
    Left = 784
    Top = 128
  end
  object CAD_FD_C_PAR_CTR: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM CAD_TB_C_PAR_CTR'
      'WHERE 1=2')
    Left = 56
    Top = 112
  end
  object CAD_DP_C_PAR_CTR: TDataSetProvider
    DataSet = CAD_FD_C_PAR_CTR
    Left = 168
    Top = 112
  end
  object PCP_DP_C_MTA: TDataSetProvider
    DataSet = PCP_FD_C_MTA
    OnDataRequest = PCP_DP_C_MTADataRequest
    Left = 792
    Top = 200
  end
  object PCP_FD_C_MTA: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM PCP_TB_C_MTA'
      'WHERE 1=2')
    Left = 688
    Top = 200
  end
  object FAT_DP_M_PED: TDataSetProvider
    DataSet = FAT_FD_M_PED
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 792
    Top = 272
  end
  object FAT_FD_M_PED: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM FAT_TB_M_PED '
      'WHERE 1=2')
    Left = 696
    Top = 272
  end
  object FAT_FD_M_PED_ITE: TFDQuery
    MasterSource = FAT_DS_M_PED
    Connection = conexaoNW
    SQL.Strings = (
      
        'SELECT PIT.*,ITE.DESCRICAO AS INT_DESC_ITEM,ITE.ID_UND_VENDA AS ' +
        'INT_UND_VND,GRU.TIPO_ITEM AS INT_TIPO_ITEM FROM FAT_TB_M_PED_ITE' +
        ' PIT'
      'LEFT OUTER JOIN CAD_TB_C_ITE ITE ON ITE.ID_ITEM=PIT.ID_ITEM'
      'LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_GRUPO'
      'WHERE PIT.ID_PEDIDO=:ID_PEDIDO')
    Left = 696
    Top = 328
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FAT_DP_M_PCA: TDataSetProvider
    DataSet = FAT_FD_M_PCA
    Left = 816
    Top = 440
  end
  object FAT_FD_M_PCA: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT PCA.*,fun.nome as int_nome_resp'
      '                              FROM FAT_TB_M_PCA PCA '
      
        '                              left outer join cad_tb_c_fun fun o' +
        'n fun.id_funcionario=pca.id_responsavel '
      'where 1=2')
    Left = 704
    Top = 440
    object FAT_FD_M_PCAid_carregamento: TIntegerField
      FieldName = 'id_carregamento'
      Origin = 'id_carregamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FAT_FD_M_PCAid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
      Origin = 'id_responsavel'
    end
    object FAT_FD_M_PCAdta_carregamento: TDateField
      FieldName = 'dta_carregamento'
      Origin = 'dta_carregamento'
    end
    object FAT_FD_M_PCAstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object FAT_FD_M_PCAid_motorista: TIntegerField
      FieldName = 'id_motorista'
      Origin = 'id_motorista'
    end
    object FAT_FD_M_PCAplaca: TWideStringField
      FieldName = 'placa'
      Origin = 'placa'
      FixedChar = True
      Size = 8
    end
    object FAT_FD_M_PCAint_nome_resp: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'int_nome_resp'
      Origin = 'int_nome_resp'
      ProviderFlags = []
      Size = 50
    end
  end
  object CAD_DP_C_FPG: TDataSetProvider
    DataSet = CAD_FD_C_FPG
    Left = 168
    Top = 560
  end
  object CAD_FD_C_FPG: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM CAD_TB_C_FPG'
      'WHERE 1=2')
    Left = 56
    Top = 560
  end
  object FAT_FD_M_PCA_PED: TFDQuery
    MasterSource = FAT_DS_M_PCA
    MasterFields = 'id_carregamento'
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM FAT_TB_M_PCA_PED CPD'
      'WHERE CPD.ID_CARREGAMENTO=:ID_CARREGAMENTO')
    Left = 704
    Top = 496
    ParamData = <
      item
        Name = 'ID_CARREGAMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FAT_FD_M_PCA_PEDid_carregamento: TIntegerField
      FieldName = 'id_carregamento'
      Origin = 'id_carregamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FAT_FD_M_PCA_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object FAT_DS_M_PCA: TDataSource
    DataSet = FAT_FD_M_PCA
    Left = 816
    Top = 496
  end
  object FAT_DS_M_PCA_PED: TDataSource
    DataSet = FAT_FD_M_PCA_PED
    Left = 816
    Top = 544
  end
  object FAT_FD_M_PPD: TFDQuery
    MasterSource = FAT_DS_M_PCA_PED
    MasterFields = 'id_pedido'
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT PED.*,CLI.NOME AS NOME_CLIENTE, '
      '                         CLI.ENDERECO AS END_CLIENTE, '
      '                          CLI.BAIRRO  AS BAIRRO_CLIENTE,'
      '                          CLI.CEP AS CEP_CLIENTE, '
      '                          CLI.NUMERO AS NRO_CLIENTE, '
      
        '                          CID.NOME ||'#39'-'#39'||CID.UF AS cid_desc_cli' +
        'ente,  '
      '                          FUN.NOME AS NOME_VENDEDOR '
      '                          FROM FAT_TB_M_PED PED '
      
        '                          LEFT OUTER JOIN CAD_TB_C_CLI CLI ON CL' +
        'I.ID_CLIENTE=PED.ID_CLIENTE  '
      
        '                          LEFT OUTER JOIN CAD_TB_C_CID CID ON CI' +
        'D.ID_CIDADE=CLI.ID_CIDADE  '
      
        '                         LEFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN' +
        '.ID_FUNCIONARIO=PED.ID_VENDEDOR '
      ''
      'WHERE PED.ID_PEDIDO=:ID_PEDIDO')
    Left = 704
    Top = 544
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FAT_FD_M_PPDid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FAT_FD_M_PPDid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
    end
    object FAT_FD_M_PPDdta_pedido: TDateField
      FieldName = 'dta_pedido'
      Origin = 'dta_pedido'
    end
    object FAT_FD_M_PPDid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Origin = 'id_tipo_mov_estoque'
    end
    object FAT_FD_M_PPDid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
      Origin = 'id_vendedor'
    end
    object FAT_FD_M_PPDobs: TWideStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object FAT_FD_M_PPDvlr_bruto: TBCDField
      FieldName = 'vlr_bruto'
      Origin = 'vlr_bruto'
      Precision = 18
    end
    object FAT_FD_M_PPDvlr_desconto: TBCDField
      FieldName = 'vlr_desconto'
      Origin = 'vlr_desconto'
      Precision = 18
    end
    object FAT_FD_M_PPDper_desconto: TFloatField
      FieldName = 'per_desconto'
      Origin = 'per_desconto'
    end
    object FAT_FD_M_PPDvlr_liquido: TBCDField
      FieldName = 'vlr_liquido'
      Origin = 'vlr_liquido'
      Precision = 18
    end
    object FAT_FD_M_PPDhor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
      Origin = 'hor_pedido'
    end
    object FAT_FD_M_PPDid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
      Origin = 'id_condicao_pag'
    end
    object FAT_FD_M_PPDpcp_obs: TWideStringField
      FieldName = 'pcp_obs'
      Origin = 'pcp_obs'
      Size = 100
    end
    object FAT_FD_M_PPDpcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
      Origin = 'pcp_id_opr'
    end
    object FAT_FD_M_PPDsituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object FAT_FD_M_PPDsituacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
      Origin = 'situacao_aprovacao'
    end
    object FAT_FD_M_PPDid_atendente: TIntegerField
      FieldName = 'id_atendente'
      Origin = 'id_atendente'
    end
    object FAT_FD_M_PPDid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
      Origin = 'id_responsavel'
    end
    object FAT_FD_M_PPDid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object FAT_FD_M_PPDtipo_restricao: TWideStringField
      FieldName = 'tipo_restricao'
      Origin = 'tipo_restricao'
      Size = 100
    end
    object FAT_FD_M_PPDid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
      Origin = 'id_almoxarifado'
    end
    object FAT_FD_M_PPDjustificativa: TWideStringField
      FieldName = 'justificativa'
      Origin = 'justificativa'
      Size = 100
    end
    object FAT_FD_M_PPDid_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
      Origin = 'id_usuario_lib'
    end
    object FAT_FD_M_PPDcod_lme: TWideStringField
      FieldName = 'cod_lme'
      Origin = 'cod_lme'
    end
    object FAT_FD_M_PPDrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Origin = 'rev_lme'
      Size = 5
    end
    object FAT_FD_M_PPDorigem: TIntegerField
      FieldName = 'origem'
      Origin = 'origem'
    end
    object FAT_FD_M_PPDdispositivo: TWideStringField
      FieldName = 'dispositivo'
      Origin = 'dispositivo'
      Size = 50
    end
    object FAT_FD_M_PPDgps_latitude: TFloatField
      FieldName = 'gps_latitude'
      Origin = 'gps_latitude'
    end
    object FAT_FD_M_PPDgps_longitude: TFloatField
      FieldName = 'gps_longitude'
      Origin = 'gps_longitude'
    end
    object FAT_FD_M_PPDcubagem: TFloatField
      FieldName = 'cubagem'
      Origin = 'cubagem'
    end
    object FAT_FD_M_PPDid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
      Origin = 'id_orcamento'
    end
    object FAT_FD_M_PPDenvia_carga: TBooleanField
      FieldName = 'envia_carga'
      Origin = 'envia_carga'
    end
    object FAT_FD_M_PPDdta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
      Origin = 'dta_prev_entrega'
    end
    object FAT_FD_M_PPDid_abertura: TIntegerField
      FieldName = 'id_abertura'
      Origin = 'id_abertura'
    end
    object FAT_FD_M_PPDdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
      Origin = 'dias_cpg_prazo'
    end
    object FAT_FD_M_PPDoffline: TBooleanField
      FieldName = 'offline'
      Origin = 'offline'
    end
    object FAT_FD_M_PPDconferido: TBooleanField
      FieldName = 'conferido'
      Origin = 'conferido'
    end
    object FAT_FD_M_PPDid_conf: TIntegerField
      FieldName = 'id_conf'
      Origin = 'id_conf'
    end
    object FAT_FD_M_PPDdta_conf: TDateField
      FieldName = 'dta_conf'
      Origin = 'dta_conf'
    end
    object FAT_FD_M_PPDhor_conf: TTimeField
      FieldName = 'hor_conf'
      Origin = 'hor_conf'
    end
    object FAT_FD_M_PPDresultado_conf: TIntegerField
      FieldName = 'resultado_conf'
      Origin = 'resultado_conf'
    end
    object FAT_FD_M_PPDid_resp_conf: TIntegerField
      FieldName = 'id_resp_conf'
      Origin = 'id_resp_conf'
    end
    object FAT_FD_M_PPDid_propriedade: TIntegerField
      FieldName = 'id_propriedade'
      Origin = 'id_propriedade'
    end
    object FAT_FD_M_PPDid_mkt: TIntegerField
      FieldName = 'id_mkt'
      Origin = 'id_mkt'
    end
    object FAT_FD_M_PPDvlr_frete: TBCDField
      FieldName = 'vlr_frete'
      Origin = 'vlr_frete'
      Precision = 18
    end
    object FAT_FD_M_PPDmod_frete: TIntegerField
      FieldName = 'mod_frete'
      Origin = 'mod_frete'
    end
    object FAT_FD_M_PPDcan_usuario: TIntegerField
      FieldName = 'can_usuario'
      Origin = 'can_usuario'
    end
    object FAT_FD_M_PPDcan_data: TDateField
      FieldName = 'can_data'
      Origin = 'can_data'
    end
    object FAT_FD_M_PPDcan_motivo: TWideStringField
      FieldName = 'can_motivo'
      Origin = 'can_motivo'
      Size = 100
    end
    object FAT_FD_M_PPDcan_hora: TTimeField
      FieldName = 'can_hora'
      Origin = 'can_hora'
    end
    object FAT_FD_M_PPDid_pedido_temp_mob: TIntegerField
      FieldName = 'id_pedido_temp_mob'
      Origin = 'id_pedido_temp_mob'
    end
    object FAT_FD_M_PPDsemana: TIntegerField
      FieldName = 'semana'
      Origin = 'semana'
    end
    object FAT_FD_M_PPDid_pedido_mob: TIntegerField
      FieldName = 'id_pedido_mob'
      Origin = 'id_pedido_mob'
    end
    object FAT_FD_M_PPDid_motorista: TIntegerField
      FieldName = 'id_motorista'
      Origin = 'id_motorista'
    end
    object FAT_FD_M_PPDid_placa: TWideStringField
      FieldName = 'id_placa'
      Origin = 'id_placa'
      FixedChar = True
      Size = 8
    end
    object FAT_FD_M_PPDvlr_credito: TBCDField
      FieldName = 'vlr_credito'
      Origin = 'vlr_credito'
      Precision = 18
    end
    object FAT_FD_M_PPDvlr_desc_especial: TBCDField
      FieldName = 'vlr_desc_especial'
      Origin = 'vlr_desc_especial'
      Precision = 18
    end
    object FAT_FD_M_PPDvlr_desc_basico: TBCDField
      FieldName = 'vlr_desc_basico'
      Origin = 'vlr_desc_basico'
      Precision = 18
    end
    object FAT_FD_M_PPDsgq_per_comissao: TFloatField
      FieldName = 'sgq_per_comissao'
      Origin = 'sgq_per_comissao'
    end
    object FAT_FD_M_PPDnome_cliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      ProviderFlags = []
      Size = 50
    end
    object FAT_FD_M_PPDend_cliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'end_cliente'
      Origin = 'end_cliente'
      ProviderFlags = []
      Size = 60
    end
    object FAT_FD_M_PPDcep_cliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep_cliente'
      Origin = 'cep_cliente'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object FAT_FD_M_PPDnro_cliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nro_cliente'
      Origin = 'nro_cliente'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object FAT_FD_M_PPDcid_desc_cliente: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'cid_desc_cliente'
      Origin = 'cid_desc_cliente'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object FAT_FD_M_PPDnome_vendedor: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_vendedor'
      Origin = 'nome_vendedor'
      ProviderFlags = []
      Size = 50
    end
    object FAT_FD_M_PPDbairro_cliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro_cliente'
      Origin = 'bairro_cliente'
      ProviderFlags = []
      Size = 40
    end
  end
  object FAT_DS_M_PPD: TDataSource
    DataSet = FAT_FD_M_PPD
    Left = 816
    Top = 600
  end
  object FAT_FD_M_PPD_ITE: TFDQuery
    MasterSource = FAT_DS_M_PPD
    MasterFields = 'id_pedido'
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT PIT.*,ITE.DESCRICAO AS ITEM_DESC'
      'FROM FAT_TB_M_PED_ITE PIT '
      'LEFT OUTER JOIN CAD_TB_C_ITE ITE ON ITE.ID_ITEM=PIT.ID_ITEM'
      'WHERE PIT.ID_PEDIDO=:ID_PEDIDO')
    Left = 704
    Top = 600
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FAT_FD_M_PPD_ITEid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FAT_FD_M_PPD_ITEid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FAT_FD_M_PPD_ITEid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
    end
    object FAT_FD_M_PPD_ITEqtde: TFloatField
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object FAT_FD_M_PPD_ITEvlr_unitario: TBCDField
      FieldName = 'vlr_unitario'
      Origin = 'vlr_unitario'
      Precision = 18
    end
    object FAT_FD_M_PPD_ITEvlr_bruto: TBCDField
      FieldName = 'vlr_bruto'
      Origin = 'vlr_bruto'
      Precision = 18
    end
    object FAT_FD_M_PPD_ITEper_desconto: TFloatField
      FieldName = 'per_desconto'
      Origin = 'per_desconto'
    end
    object FAT_FD_M_PPD_ITEvlr_desconto: TBCDField
      FieldName = 'vlr_desconto'
      Origin = 'vlr_desconto'
      Precision = 18
    end
    object FAT_FD_M_PPD_ITEvlr_liquido: TBCDField
      FieldName = 'vlr_liquido'
      Origin = 'vlr_liquido'
      Precision = 18
    end
    object FAT_FD_M_PPD_ITEid_cor: TIntegerField
      FieldName = 'id_cor'
      Origin = 'id_cor'
    end
    object FAT_FD_M_PPD_ITEid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Origin = 'id_tamanho'
    end
    object FAT_FD_M_PPD_ITEid_busca_item: TWideStringField
      FieldName = 'id_busca_item'
      Origin = 'id_busca_item'
      Size = 30
    end
    object FAT_FD_M_PPD_ITEvlr_unitario_orig: TBCDField
      FieldName = 'vlr_unitario_orig'
      Origin = 'vlr_unitario_orig'
      Precision = 18
    end
    object FAT_FD_M_PPD_ITEper_desc_max: TFloatField
      FieldName = 'per_desc_max'
      Origin = 'per_desc_max'
    end
    object FAT_FD_M_PPD_ITEpcp_obs_item: TWideStringField
      FieldName = 'pcp_obs_item'
      Origin = 'pcp_obs_item'
      Size = 150
    end
    object FAT_FD_M_PPD_ITEqtde_conferida: TFloatField
      FieldName = 'qtde_conferida'
      Origin = 'qtde_conferida'
    end
    object FAT_FD_M_PPD_ITEid_cultura: TIntegerField
      FieldName = 'id_cultura'
      Origin = 'id_cultura'
    end
    object FAT_FD_M_PPD_ITEvlr_frete: TBCDField
      FieldName = 'vlr_frete'
      Origin = 'vlr_frete'
      Precision = 18
    end
    object FAT_FD_M_PPD_ITEitem_desc: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'item_desc'
      Origin = 'item_desc'
      ProviderFlags = []
      Size = 100
    end
  end
  object CAD_DP_C_CTC: TDataSetProvider
    DataSet = CAD_FD_C_CTC
    Left = 168
    Top = 616
  end
  object CAD_FD_C_CTC: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM CAD_TB_C_CTC '
      'WHERE 1=2')
    Left = 56
    Top = 616
  end
  object CAD_DP_C_PCT: TDataSetProvider
    DataSet = CAD_FD_C_PCT
    Left = 168
    Top = 672
  end
  object CAD_FD_C_PCT: TFDQuery
    Connection = conexaoNW
    Left = 56
    Top = 672
  end
  object FIN_DP_M_PAG: TDataSetProvider
    DataSet = FIN_FD_M_PAG
    Left = 816
    Top = 664
  end
  object FIN_FD_M_PAG: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM FIN_TB_M_PAG'
      'WHERE 1=2')
    Left = 704
    Top = 664
  end
  object FIN_DP_M_LDM: TDataSetProvider
    DataSet = FIN_FD_M_LDM
    Left = 816
    Top = 720
  end
  object FIN_FD_M_LDM: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM FIN_TB_M_LDM '
      'WHERE 1=2')
    Left = 704
    Top = 720
  end
  object FAT_DP_M_ETG: TDataSetProvider
    DataSet = FAT_FD_M_ETG
    Left = 816
    Top = 776
  end
  object FAT_FD_M_ETG: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM FAT_TB_M_ETG'
      'WHERE 1=2')
    Left = 704
    Top = 776
  end
  object FAT_DS_M_ETG: TDataSource
    DataSet = FAT_FD_M_ETG
    Left = 816
    Top = 840
  end
  object FAT_FD_M_ETG_DEV: TFDQuery
    MasterSource = FAT_DS_M_ETG
    MasterFields = 'id_entrega'
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM FAT_TB_M_ETG_DEV EDV'
      'WHERE EDV.ID_ENTREGA=:ID_ENTREGA')
    Left = 704
    Top = 840
    ParamData = <
      item
        Name = 'ID_ENTREGA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FAT_FD_M_ETG_FOT: TFDQuery
    MasterSource = FAT_DS_M_ETG
    MasterFields = 'id_entrega'
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM FAT_TB_M_ETG_FOT FOT'
      'WHERE FOT.ID_ENTREGA=:ID_ENTREGA')
    Left = 712
    Top = 896
    ParamData = <
      item
        Name = 'ID_ENTREGA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FAT_DS_M_PED: TDataSource
    DataSet = FAT_FD_M_PED
    Left = 792
    Top = 328
  end
  object FAT_FD_M_PED_TIT: TFDQuery
    MasterSource = FAT_DS_M_PED
    Connection = conexaoNW
    SQL.Strings = (
      
        'SELECT PTT.*,FPG.DESCRICAO AS INT_FORMA_PAG FROM FAT_TB_M_PED_TI' +
        'T PTT'
      
        'LEFT OUTER JOIN CAD_TB_C_FPG FPG ON FPG.ID_FORMA_PAG=PTT.ID_FORM' +
        'A_PAG'
      'WHERE PTT.ID_PEDIDO=:ID_PEDIDO')
    Left = 696
    Top = 384
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object BUS_DP_M_PED_ITE: TDataSetProvider
    DataSet = BUS_FD_M_PED_ITE
    Left = 792
    Top = 16
  end
  object BUS_FD_M_PED_ITE: TFDQuery
    Connection = conexaoNW
    SQL.Strings = (
      'SELECT * FROM FAT_TB_M_PED_ITE '
      'WHERE 1=2')
    Left = 688
    Top = 16
  end
end
