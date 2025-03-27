object SM: TSM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 726
  Width = 1082
  object ConexaoNW: TSQLConnection
    DriverName = 'DevartPostgreSQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DbxDevartPostgreSQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver180.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartPostgreSQLMetaDataCommandFactory' +
        ',DbxDevartPostgreSQLDriver180.bpl'
      'ProductName=DevartPostgreSQL'
      'GetDriverFunc=getSQLDriverPostgreSQL'
      'LibraryName=dbexppgsql40.dll'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'MaxBlobSize=-1'
      'FetchAll=True'
      'UseQuoteChar=False'
      'UseUnicode=True'
      'VendorLib=dbexppgsql40.dll'
      'BlobSize=-1'
      'HostName=localhost'
      'SchemaName=public'
      'Database=enSoftTeresina161117'
      'User_Name=postgres'
      'Password=ssq#0609'
      'EnableBCD=True')
    Left = 63
    Top = 23
  end
  object CAD_SQ_C_PEC: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_PEC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 136
    object CAD_SQ_C_PECid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
    end
    object CAD_SQ_C_PECdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object CAD_SQ_C_PECper_correcao: TFloatField
      FieldName = 'per_correcao'
    end
    object CAD_SQ_C_PECoperacao: TIntegerField
      FieldName = 'operacao'
    end
    object CAD_SQ_C_PECcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object CAD_SQ_C_PECrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object CAD_SQ_C_PECper_correcao_aprazo: TFloatField
      FieldName = 'per_correcao_aprazo'
    end
    object CAD_SQ_C_PECper_correcao_financeiro: TFloatField
      FieldName = 'per_correcao_financeiro'
    end
  end
  object CAD_DP_C_PEC: TDataSetProvider
    DataSet = CAD_SQ_C_PEC
    Left = 208
    Top = 136
  end
  object IdEncoderMIME1: TIdEncoderMIME
    FillChar = '='
    Left = 320
    Top = 8
  end
  object IdDecoderMIME1: TIdDecoderMIME
    FillChar = '='
    Left = 416
    Top = 8
  end
  object CAD_SQ_C_FUN: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_FUN'#13#10'WHERE 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 192
  end
  object CAD_DP_C_FUN: TDataSetProvider
    DataSet = CAD_SQ_C_FUN
    Left = 208
    Top = 192
  end
  object CAD_SQ_C_CID: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_CID'#13#10'WHERE 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 248
    object CAD_SQ_C_CIDid_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object CAD_SQ_C_CIDnome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object CAD_SQ_C_CIDuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object CAD_SQ_C_CIDcep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object CAD_SQ_C_CIDcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object CAD_SQ_C_CIDrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object CAD_SQ_C_CIDcod_pais: TWideStringField
      FieldName = 'cod_pais'
      Size = 5
    end
  end
  object CAD_DP_C_CID: TDataSetProvider
    DataSet = CAD_SQ_C_CID
    Left = 208
    Top = 248
  end
  object PCP_SQ_C_ROT: TSQLDataSet
    CommandText = 'SELECT * FROM PCP_TB_C_ROT'#13#10'WHERE 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 304
  end
  object PCP_DP_C_ROT: TDataSetProvider
    DataSet = PCP_SQ_C_ROT
    Left = 208
    Top = 304
  end
  object CAD_SQ_C_CLI: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_CLI '#13#10'WHERE  1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 360
    object CAD_SQ_C_CLIid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_SQ_C_CLIpessoa: TIntegerField
      FieldName = 'pessoa'
    end
    object CAD_SQ_C_CLInome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object CAD_SQ_C_CLIendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object CAD_SQ_C_CLIend_complemento: TWideStringField
      FieldName = 'end_complemento'
      Size = 30
    end
    object CAD_SQ_C_CLIcep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object CAD_SQ_C_CLInumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object CAD_SQ_C_CLItel_fixo: TWideStringField
      FieldName = 'tel_fixo'
      Size = 14
    end
    object CAD_SQ_C_CLItel_movel: TWideStringField
      FieldName = 'tel_movel'
      Size = 14
    end
    object CAD_SQ_C_CLIfax: TWideStringField
      FieldName = 'fax'
      Size = 14
    end
    object CAD_SQ_C_CLIdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      Size = 14
    end
    object CAD_SQ_C_CLIdoc_ie_identidade: TWideStringField
      FieldName = 'doc_ie_identidade'
    end
    object CAD_SQ_C_CLIdoc_ip: TWideStringField
      FieldName = 'doc_ip'
    end
    object CAD_SQ_C_CLIdoc_im: TWideStringField
      FieldName = 'doc_im'
    end
    object CAD_SQ_C_CLIbairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object CAD_SQ_C_CLIid_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object CAD_SQ_C_CLIativo: TBooleanField
      FieldName = 'ativo'
    end
    object CAD_SQ_C_CLIemail: TWideStringField
      FieldName = 'email'
      Size = 60
    end
    object CAD_SQ_C_CLIlim_valor: TFMTBCDField
      FieldName = 'lim_valor'
      Precision = 18
      Size = 4
    end
    object CAD_SQ_C_CLIlim_saldo: TFMTBCDField
      FieldName = 'lim_saldo'
      Precision = 18
      Size = 4
    end
    object CAD_SQ_C_CLIsexo: TIntegerField
      FieldName = 'sexo'
    end
    object CAD_SQ_C_CLIsituacao: TIntegerField
      FieldName = 'situacao'
    end
    object CAD_SQ_C_CLIdta_nascimento: TDateField
      FieldName = 'dta_nascimento'
    end
    object CAD_SQ_C_CLIdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object CAD_SQ_C_CLItipo_cliente: TIntegerField
      FieldName = 'tipo_cliente'
    end
    object CAD_SQ_C_CLIcob_endereco: TWideStringField
      FieldName = 'cob_endereco'
      Size = 50
    end
    object CAD_SQ_C_CLIcob_bairro: TWideStringField
      FieldName = 'cob_bairro'
      Size = 40
    end
    object CAD_SQ_C_CLIcob_cidade: TWideStringField
      FieldName = 'cob_cidade'
      Size = 40
    end
    object CAD_SQ_C_CLIcob_estado: TWideStringField
      FieldName = 'cob_estado'
      Size = 2
    end
    object CAD_SQ_C_CLIcob_cep: TWideStringField
      FieldName = 'cob_cep'
      Size = 9
    end
    object CAD_SQ_C_CLIdta_ult_compra: TDateField
      FieldName = 'dta_ult_compra'
    end
    object CAD_SQ_C_CLIdta_pri_compra: TDateField
      FieldName = 'dta_pri_compra'
    end
    object CAD_SQ_C_CLIfiliacao: TWideStringField
      FieldName = 'filiacao'
      Size = 100
    end
    object CAD_SQ_C_CLIcod_sufrana: TWideStringField
      FieldName = 'cod_sufrana'
    end
    object CAD_SQ_C_CLIcod_pais: TWideStringField
      FieldName = 'cod_pais'
      Size = 5
    end
    object CAD_SQ_C_CLIid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
    end
    object CAD_SQ_C_CLIid_rota: TIntegerField
      FieldName = 'id_rota'
    end
    object CAD_SQ_C_CLIdoc_rg_orgao: TWideStringField
      FieldName = 'doc_rg_orgao'
      Size = 10
    end
    object CAD_SQ_C_CLIapelido: TWideStringField
      FieldName = 'apelido'
      Size = 40
    end
    object CAD_SQ_C_CLIlim_validade: TDateField
      FieldName = 'lim_validade'
    end
    object CAD_SQ_C_CLIcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object CAD_SQ_C_CLIrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object CAD_SQ_C_CLIid_regiao: TIntegerField
      FieldName = 'id_regiao'
    end
    object CAD_SQ_C_CLIcontribuinte: TIntegerField
      FieldName = 'contribuinte'
    end
    object CAD_SQ_C_CLIid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object CAD_SQ_C_CLIdias_prazo_financeiro: TIntegerField
      FieldName = 'dias_prazo_financeiro'
    end
    object CAD_SQ_C_CLIprofissao: TWideStringField
      FieldName = 'profissao'
      Size = 50
    end
    object CAD_SQ_C_CLIrenda: TFMTBCDField
      FieldName = 'renda'
      Precision = 18
      Size = 4
    end
    object CAD_SQ_C_CLIid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object CAD_SQ_C_CLIid_controle_fpg_hrq: TIntegerField
      FieldName = 'id_controle_fpg_hrq'
    end
    object CAD_SQ_C_CLIpermitir_alterar_dias_tit_ped: TBooleanField
      FieldName = 'permitir_alterar_dias_tit_ped'
    end
    object CAD_SQ_C_CLIstatus_vis_mobile: TBooleanField
      FieldName = 'status_vis_mobile'
    end
    object CAD_SQ_C_CLIid_cli_temp_mobile: TWideStringField
      FieldName = 'id_cli_temp_mobile'
      Size = 30
    end
    object CAD_SQ_C_CLIgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object CAD_SQ_C_CLIgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
  end
  object CAD_DP_C_CLI: TDataSetProvider
    DataSet = CAD_SQ_C_CLI
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 208
    Top = 360
  end
  object CAD_SQ_C_SEQ: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_SEQ'#13#10'where 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 80
  end
  object CAD_DP_C_SEQ: TDataSetProvider
    DataSet = CAD_SQ_C_SEQ
    Left = 208
    Top = 80
  end
  object CAD_SQ_C_VIT: TSQLDataSet
    CommandText = 'SELECT 0 as int_id_visita_mob, * FROM CAD_TB_C_VIT '#13#10'WHERE 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 744
    Top = 80
    object CAD_SQ_C_VITint_id_visita_mob: TIntegerField
      FieldName = 'int_id_visita_mob'
      ProviderFlags = []
    end
    object CAD_SQ_C_VITid_visita: TIntegerField
      FieldName = 'id_visita'
    end
    object CAD_SQ_C_VITid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object CAD_SQ_C_VITdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      Size = 14
    end
    object CAD_SQ_C_VITid_veiculo: TIntegerField
      FieldName = 'id_veiculo'
    end
    object CAD_SQ_C_VITdta_visita: TDateField
      FieldName = 'dta_visita'
    end
    object CAD_SQ_C_VITobs: TWideStringField
      FieldName = 'obs'
      Size = 500
    end
    object CAD_SQ_C_VITrecomendacoes: TWideStringField
      FieldName = 'recomendacoes'
      Size = 500
    end
    object CAD_SQ_C_VITid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CAD_SQ_C_VITgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object CAD_SQ_C_VITgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object CAD_SQ_C_VIThor_ini: TTimeField
      FieldName = 'hor_ini'
    end
    object CAD_SQ_C_VIThor_fim: TTimeField
      FieldName = 'hor_fim'
    end
    object CAD_SQ_C_VITsemana: TIntegerField
      FieldName = 'semana'
    end
    object CAD_SQ_C_VITplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object CAD_SQ_C_VITid_pedido_mobile: TIntegerField
      FieldName = 'id_pedido_mobile'
    end
    object CAD_SQ_C_VITtipo_mobile: TIntegerField
      FieldName = 'tipo_mobile'
    end
    object CAD_SQ_C_VITremarcar_vis: TBooleanField
      FieldName = 'remarcar_vis'
    end
    object CAD_SQ_C_VITdta_prox_vis: TDateField
      FieldName = 'dta_prox_vis'
    end
    object CAD_SQ_C_VITsemana_prox_vis: TIntegerField
      FieldName = 'semana_prox_vis'
    end
    object CAD_SQ_C_VITid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_SQ_C_VITsemana_visitada: TIntegerField
      FieldName = 'semana_visitada'
    end
  end
  object CAD_DP_C_VIT: TDataSetProvider
    DataSet = CAD_SQ_C_VIT
    Left = 872
    Top = 80
  end
  object CAD_SQ_C_CLI_PRO: TSQLDataSet
    CommandText = 
      'SELECT cli.doc_cnpj_cpf, cpr.* FROM cad_tb_c_cli_pro cpr '#13#10'    l' +
      'eft outer join cad_tb_c_cli cli on (cli.id_cliente = cpr.id_clie' +
      'nte) '#13#10'WHERE  cpr.id_cliente=:id_cliente'
    DataSource = CAD_DS_C_CLI
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cliente'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 416
    object CAD_SQ_C_CLI_PROdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      ProviderFlags = []
      Size = 14
    end
    object CAD_SQ_C_CLI_PROid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_SQ_C_CLI_PROid_propriedade: TIntegerField
      FieldName = 'id_propriedade'
    end
    object CAD_SQ_C_CLI_PROtipo: TIntegerField
      FieldName = 'tipo'
    end
    object CAD_SQ_C_CLI_PROnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object CAD_SQ_C_CLI_PRObairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object CAD_SQ_C_CLI_PROid_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object CAD_SQ_C_CLI_PROdoc_ip: TWideStringField
      FieldName = 'doc_ip'
    end
    object CAD_SQ_C_CLI_PROdoc_incra: TWideStringField
      FieldName = 'doc_incra'
    end
    object CAD_SQ_C_CLI_PROdoc_cnpj: TWideStringField
      FieldName = 'doc_cnpj'
      Size = 14
    end
    object CAD_SQ_C_CLI_PROdoc_ie: TWideStringField
      FieldName = 'doc_ie'
    end
    object CAD_SQ_C_CLI_PROadministrador: TWideStringField
      FieldName = 'administrador'
      Size = 50
    end
    object CAD_SQ_C_CLI_PROendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object CAD_SQ_C_CLI_PROcep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object CAD_SQ_C_CLI_PROnumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object CAD_SQ_C_CLI_PROid_pro_mob_temp: TIntegerField
      FieldName = 'id_pro_mob_temp'
    end
  end
  object CAD_SQ_C_CLI_PRO_CUL: TSQLDataSet
    CommandText = 
      'SELECT * FROM CAD_TB_C_CLI_PRO_CUL  CPR'#13#10'left outer join cad_tb_' +
      'c_cli cli on (cli.id_cliente = cpr.id_cliente) '#13#10'WHERE  cpr.id_c' +
      'liente=:id_cliente'#13#10'and cpr.id_propriedade=:id_propriedade'
    DataSource = CAD_DS_C_CLI_PRO
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_propriedade'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 473
    object CAD_SQ_C_CLI_PRO_CULid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_SQ_C_CLI_PRO_CULid_propriedade: TIntegerField
      FieldName = 'id_propriedade'
    end
    object CAD_SQ_C_CLI_PRO_CULlote: TWideStringField
      FieldName = 'lote'
    end
    object CAD_SQ_C_CLI_PRO_CULid_cultura: TIntegerField
      FieldName = 'id_cultura'
    end
    object CAD_SQ_C_CLI_PRO_CULidade: TSmallintField
      FieldName = 'idade'
    end
    object CAD_SQ_C_CLI_PRO_CULarea: TFloatField
      FieldName = 'area'
    end
    object CAD_SQ_C_CLI_PRO_CULprodutividade: TFloatField
      FieldName = 'produtividade'
    end
    object CAD_SQ_C_CLI_PRO_CULobs: TWideStringField
      FieldName = 'obs'
      Size = 800
    end
    object CAD_SQ_C_CLI_PRO_CULvariedade: TWideStringField
      FieldName = 'variedade'
      Size = 30
    end
    object CAD_SQ_C_CLI_PRO_CULproducao_estimada: TFloatField
      FieldName = 'producao_estimada'
    end
  end
  object CAD_SQ_C_CUL: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_CUL'#13#10'WHERE  1 =2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 80
  end
  object CAD_DP_C_CUL: TDataSetProvider
    DataSet = CAD_SQ_C_CUL
    Left = 632
    Top = 80
  end
  object CAD_SQ_C_GRU: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_GRU'#13#10'WHERE  1 =2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 136
  end
  object CAD_DP_C_GRU: TDataSetProvider
    DataSet = CAD_SQ_C_GRU
    Left = 632
    Top = 136
  end
  object CAD_SQ_C_ITE: TSQLDataSet
    CommandText = 
      'SELECT ITE.*,GRU.TIPO_ITEM AS INT_TIPOITEM FROM CAD_TB_C_ITE ITE' +
      #13#10'LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_GRUPO ' +
      #13#10#13#10'WHERE  1 =2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 192
  end
  object CAD_DP_C_ITE: TDataSetProvider
    DataSet = CAD_SQ_C_ITE
    OnDataRequest = CAD_DP_C_ITEDataRequest
    Left = 632
    Top = 192
  end
  object CAD_SQ_C_ITE_CUL: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_ITE_CUL'#13#10'WHERE  1 =2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 248
  end
  object CAD_DP_C_ITE_CUL: TDataSetProvider
    DataSet = CAD_SQ_C_ITE_CUL
    Left = 632
    Top = 248
  end
  object CAD_SQ_C_ITE_PRC: TSQLDataSet
    CommandText = 
      'SELECT prc.* FROM CAD_TB_C_ITE_PRC prc '#13#10'       left outer join ' +
      'cad_tb_c_ite ite on ite.id_item = prc.id_item '#13#10'                ' +
      'where ite.ativo = true '#13#10'and 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 304
  end
  object CAD_DP_C_ITE_PRC: TDataSetProvider
    DataSet = CAD_SQ_C_ITE_PRC
    Left = 632
    Top = 304
  end
  object CAD_SQ_C_FPG: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_FPG'#13#10'WHERE  1 =2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 360
  end
  object CAD_DP_C_FPG: TDataSetProvider
    DataSet = CAD_SQ_C_FPG
    Left = 632
    Top = 360
  end
  object CAD_SQ_C_VEI: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_VEI'#13#10'WHERE  1 =2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 416
  end
  object CAD_DP_C_VEI: TDataSetProvider
    DataSet = CAD_SQ_C_VEI
    Left = 632
    Top = 416
  end
  object FIN_CD_M_REC: TSQLDataSet
    CommandText = 'select * from fin_tb_m_rec rec where  1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 473
  end
  object FIN_DP_M_REC: TDataSetProvider
    DataSet = FIN_CD_M_REC
    Left = 632
    Top = 473
  end
  object CAD_SQ_C_VIT_FOT: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_VIT_FOT'#13#10'WHERE  ID_VISITA=:ID_VISITA'
    DataSource = CAD_DS_C_VIT
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_VISITA'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 744
    Top = 136
  end
  object CAD_SQ_C_VIT_KMT: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_VIT_KMT'#13#10'WHERE  ID_VISITA=:ID_VISITA'
    DataSource = CAD_DS_C_VIT
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_VISITA'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 744
    Top = 192
  end
  object FAT_SQ_M_PED: TSQLDataSet
    CommandText = 'select * from fat_tb_m_ped'#13#10'where 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 744
    Top = 248
    object FAT_SQ_M_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object FAT_SQ_M_PEDid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object FAT_SQ_M_PEDdta_pedido: TDateField
      FieldName = 'dta_pedido'
    end
    object FAT_SQ_M_PEDid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
    end
    object FAT_SQ_M_PEDid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object FAT_SQ_M_PEDobs: TWideStringField
      FieldName = 'obs'
      Size = 100
    end
    object FAT_SQ_M_PEDvlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object FAT_SQ_M_PEDvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_SQ_M_PEDper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object FAT_SQ_M_PEDvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_SQ_M_PEDhor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
    end
    object FAT_SQ_M_PEDid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
    end
    object FAT_SQ_M_PEDpcp_obs: TWideStringField
      FieldName = 'pcp_obs'
      Size = 100
    end
    object FAT_SQ_M_PEDpcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
    end
    object FAT_SQ_M_PEDsituacao: TIntegerField
      FieldName = 'situacao'
    end
    object FAT_SQ_M_PEDsituacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
    end
    object FAT_SQ_M_PEDid_atendente: TIntegerField
      FieldName = 'id_atendente'
    end
    object FAT_SQ_M_PEDid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object FAT_SQ_M_PEDid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object FAT_SQ_M_PEDtipo_restricao: TWideStringField
      FieldName = 'tipo_restricao'
      Size = 100
    end
    object FAT_SQ_M_PEDid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
    end
    object FAT_SQ_M_PEDjustificativa: TWideStringField
      FieldName = 'justificativa'
      Size = 100
    end
    object FAT_SQ_M_PEDid_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
    end
    object FAT_SQ_M_PEDcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object FAT_SQ_M_PEDrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object FAT_SQ_M_PEDorigem: TIntegerField
      FieldName = 'origem'
    end
    object FAT_SQ_M_PEDdispositivo: TWideStringField
      FieldName = 'dispositivo'
      Size = 50
    end
    object FAT_SQ_M_PEDgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object FAT_SQ_M_PEDgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object FAT_SQ_M_PEDcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object FAT_SQ_M_PEDid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
    end
    object FAT_SQ_M_PEDenvia_carga: TBooleanField
      FieldName = 'envia_carga'
    end
    object FAT_SQ_M_PEDdta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
    end
    object FAT_SQ_M_PEDid_abertura: TIntegerField
      FieldName = 'id_abertura'
    end
    object FAT_SQ_M_PEDdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
    end
    object FAT_SQ_M_PEDoffline: TBooleanField
      FieldName = 'offline'
    end
    object FAT_SQ_M_PEDconferido: TBooleanField
      FieldName = 'conferido'
    end
    object FAT_SQ_M_PEDid_conf: TIntegerField
      FieldName = 'id_conf'
    end
    object FAT_SQ_M_PEDdta_conf: TDateField
      FieldName = 'dta_conf'
    end
    object FAT_SQ_M_PEDhor_conf: TTimeField
      FieldName = 'hor_conf'
    end
    object FAT_SQ_M_PEDresultado_conf: TIntegerField
      FieldName = 'resultado_conf'
    end
    object FAT_SQ_M_PEDid_resp_conf: TIntegerField
      FieldName = 'id_resp_conf'
    end
    object FAT_SQ_M_PEDid_propriedade: TIntegerField
      FieldName = 'id_propriedade'
    end
    object FAT_SQ_M_PEDid_mkt: TIntegerField
      FieldName = 'id_mkt'
    end
    object FAT_SQ_M_PEDvlr_frete: TFMTBCDField
      FieldName = 'vlr_frete'
      Precision = 18
      Size = 4
    end
    object FAT_SQ_M_PEDmod_frete: TIntegerField
      FieldName = 'mod_frete'
    end
    object FAT_SQ_M_PEDcan_usuario: TIntegerField
      FieldName = 'can_usuario'
    end
    object FAT_SQ_M_PEDcan_data: TDateField
      FieldName = 'can_data'
    end
    object FAT_SQ_M_PEDcan_motivo: TWideStringField
      FieldName = 'can_motivo'
      Size = 100
    end
    object FAT_SQ_M_PEDcan_hora: TTimeField
      FieldName = 'can_hora'
    end
    object FAT_SQ_M_PEDid_pedido_temp_mob: TIntegerField
      FieldName = 'id_pedido_temp_mob'
    end
    object FAT_SQ_M_PEDsemana: TIntegerField
      FieldName = 'semana'
    end
    object FAT_SQ_M_PEDid_pedido_mob: TIntegerField
      FieldName = 'id_pedido_mob'
    end
  end
  object FAT_DP_M_PED: TDataSetProvider
    DataSet = FAT_SQ_M_PED
    Left = 872
    Top = 248
  end
  object FAT_SQ_M_PED_ITE: TSQLDataSet
    CommandText = 'SELECT * FROM FAT_TB_M_PED_ITE'#13#10'WHERE  ID_PEDIDO=:ID_PEDIDO'
    DataSource = FAT_DS_M_PED
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 744
    Top = 304
  end
  object FAT_SQ_M_PED_TIT: TSQLDataSet
    CommandText = 'SELECT * FROM FAT_TB_M_PED_TIT'#13#10'WHERE  ID_PEDIDO=:ID_PEDIDO'
    DataSource = FAT_DS_M_PED
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 744
    Top = 360
    object FAT_SQ_M_PED_TITid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object FAT_SQ_M_PED_TITid_titulo: TIntegerField
      FieldName = 'id_titulo'
    end
    object FAT_SQ_M_PED_TITdias: TIntegerField
      FieldName = 'dias'
    end
    object FAT_SQ_M_PED_TITdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
    end
    object FAT_SQ_M_PED_TITvlr_titulo: TFMTBCDField
      FieldName = 'vlr_titulo'
      Precision = 18
      Size = 4
    end
    object FAT_SQ_M_PED_TITche_banco: TWideStringField
      FieldName = 'che_banco'
      Size = 10
    end
    object FAT_SQ_M_PED_TITche_agencia: TWideStringField
      FieldName = 'che_agencia'
      Size = 10
    end
    object FAT_SQ_M_PED_TITche_conta: TIntegerField
      FieldName = 'che_conta'
    end
    object FAT_SQ_M_PED_TITche_numero: TIntegerField
      FieldName = 'che_numero'
    end
    object FAT_SQ_M_PED_TITche_emitente: TWideStringField
      FieldName = 'che_emitente'
      Size = 50
    end
    object FAT_SQ_M_PED_TITid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
    end
    object FAT_SQ_M_PED_TITbol_nosso_numero: TIntegerField
      FieldName = 'bol_nosso_numero'
    end
    object FAT_SQ_M_PED_TITid_maquineta: TIntegerField
      FieldName = 'id_maquineta'
    end
  end
  object CAD_SQ_C_PAR_CTR: TSQLDataSet
    CommandText = 'select * from cad_tb_c_par_ctr'#13#10'WHERE  1 =2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 744
    Top = 416
  end
  object CAD_DP_C_PAR_CTR: TDataSetProvider
    DataSet = CAD_SQ_C_PAR_CTR
    Left = 872
    Top = 416
  end
  object CAD_CD_C_CLI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CLI'
    OnReconcileError = CAD_CD_C_CLIReconcileError
    Left = 336
    Top = 360
    object CAD_CD_C_CLIid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_CD_C_CLIpessoa: TIntegerField
      FieldName = 'pessoa'
    end
    object CAD_CD_C_CLInome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object CAD_CD_C_CLIendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object CAD_CD_C_CLIend_complemento: TWideStringField
      FieldName = 'end_complemento'
      Size = 30
    end
    object CAD_CD_C_CLIcep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object CAD_CD_C_CLInumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object CAD_CD_C_CLItel_fixo: TWideStringField
      FieldName = 'tel_fixo'
      Size = 14
    end
    object CAD_CD_C_CLItel_movel: TWideStringField
      FieldName = 'tel_movel'
      Size = 14
    end
    object CAD_CD_C_CLIfax: TWideStringField
      FieldName = 'fax'
      Size = 14
    end
    object CAD_CD_C_CLIdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      Size = 14
    end
    object CAD_CD_C_CLIdoc_ie_identidade: TWideStringField
      FieldName = 'doc_ie_identidade'
    end
    object CAD_CD_C_CLIdoc_ip: TWideStringField
      FieldName = 'doc_ip'
    end
    object CAD_CD_C_CLIdoc_im: TWideStringField
      FieldName = 'doc_im'
    end
    object CAD_CD_C_CLIbairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object CAD_CD_C_CLIid_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object CAD_CD_C_CLIativo: TBooleanField
      FieldName = 'ativo'
    end
    object CAD_CD_C_CLIemail: TWideStringField
      FieldName = 'email'
      Size = 60
    end
    object CAD_CD_C_CLIlim_valor: TFMTBCDField
      FieldName = 'lim_valor'
      Precision = 18
      Size = 4
    end
    object CAD_CD_C_CLIlim_saldo: TFMTBCDField
      FieldName = 'lim_saldo'
      Precision = 18
      Size = 4
    end
    object CAD_CD_C_CLIsexo: TIntegerField
      FieldName = 'sexo'
    end
    object CAD_CD_C_CLIsituacao: TIntegerField
      FieldName = 'situacao'
    end
    object CAD_CD_C_CLIdta_nascimento: TDateField
      FieldName = 'dta_nascimento'
    end
    object CAD_CD_C_CLIdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object CAD_CD_C_CLItipo_cliente: TIntegerField
      FieldName = 'tipo_cliente'
    end
    object CAD_CD_C_CLIcob_endereco: TWideStringField
      FieldName = 'cob_endereco'
      Size = 50
    end
    object CAD_CD_C_CLIcob_bairro: TWideStringField
      FieldName = 'cob_bairro'
      Size = 40
    end
    object CAD_CD_C_CLIcob_cidade: TWideStringField
      FieldName = 'cob_cidade'
      Size = 40
    end
    object CAD_CD_C_CLIcob_estado: TWideStringField
      FieldName = 'cob_estado'
      Size = 2
    end
    object CAD_CD_C_CLIcob_cep: TWideStringField
      FieldName = 'cob_cep'
      Size = 9
    end
    object CAD_CD_C_CLIdta_ult_compra: TDateField
      FieldName = 'dta_ult_compra'
    end
    object CAD_CD_C_CLIdta_pri_compra: TDateField
      FieldName = 'dta_pri_compra'
    end
    object CAD_CD_C_CLIfiliacao: TWideStringField
      FieldName = 'filiacao'
      Size = 100
    end
    object CAD_CD_C_CLIcod_sufrana: TWideStringField
      FieldName = 'cod_sufrana'
    end
    object CAD_CD_C_CLIcod_pais: TWideStringField
      FieldName = 'cod_pais'
      Size = 5
    end
    object CAD_CD_C_CLIid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
    end
    object CAD_CD_C_CLIid_rota: TIntegerField
      FieldName = 'id_rota'
    end
    object CAD_CD_C_CLIdoc_rg_orgao: TWideStringField
      FieldName = 'doc_rg_orgao'
      Size = 10
    end
    object CAD_CD_C_CLIapelido: TWideStringField
      FieldName = 'apelido'
      Size = 40
    end
    object CAD_CD_C_CLIlim_validade: TDateField
      FieldName = 'lim_validade'
    end
    object CAD_CD_C_CLIcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object CAD_CD_C_CLIrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object CAD_CD_C_CLIid_regiao: TIntegerField
      FieldName = 'id_regiao'
    end
    object CAD_CD_C_CLIcontribuinte: TIntegerField
      FieldName = 'contribuinte'
    end
    object CAD_CD_C_CLIid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object CAD_CD_C_CLIdias_prazo_financeiro: TIntegerField
      FieldName = 'dias_prazo_financeiro'
    end
    object CAD_CD_C_CLIprofissao: TWideStringField
      FieldName = 'profissao'
      Size = 50
    end
    object CAD_CD_C_CLIrenda: TFMTBCDField
      FieldName = 'renda'
      Precision = 18
      Size = 4
    end
    object CAD_CD_C_CLIid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object CAD_CD_C_CLIid_controle_fpg_hrq: TIntegerField
      FieldName = 'id_controle_fpg_hrq'
    end
    object CAD_CD_C_CLIpermitir_alterar_dias_tit_ped: TBooleanField
      FieldName = 'permitir_alterar_dias_tit_ped'
    end
    object CAD_CD_C_CLIstatus_vis_mobile: TBooleanField
      FieldName = 'status_vis_mobile'
    end
    object CAD_CD_C_CLIid_cli_temp_mobile: TWideStringField
      FieldName = 'id_cli_temp_mobile'
      Size = 30
    end
    object CAD_CD_C_CLICAD_SQ_C_CLI_PRO: TDataSetField
      FieldName = 'CAD_SQ_C_CLI_PRO'
    end
    object CAD_CD_C_CLICAD_SQ_C_CLI_RVD: TDataSetField
      FieldName = 'CAD_SQ_C_CLI_RVD'
    end
    object CAD_CD_C_CLIgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object CAD_CD_C_CLIgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
  end
  object CAD_CD_C_CLI_PRO: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_CLICAD_SQ_C_CLI_PRO
    Params = <>
    Left = 336
    Top = 416
    object CAD_CD_C_CLI_PROdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      ProviderFlags = []
      Size = 14
    end
    object CAD_CD_C_CLI_PROid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_CD_C_CLI_PROid_propriedade: TIntegerField
      FieldName = 'id_propriedade'
    end
    object CAD_CD_C_CLI_PROtipo: TIntegerField
      FieldName = 'tipo'
    end
    object CAD_CD_C_CLI_PROnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object CAD_CD_C_CLI_PRObairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object CAD_CD_C_CLI_PROid_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object CAD_CD_C_CLI_PROdoc_ip: TWideStringField
      FieldName = 'doc_ip'
    end
    object CAD_CD_C_CLI_PROdoc_incra: TWideStringField
      FieldName = 'doc_incra'
    end
    object CAD_CD_C_CLI_PROdoc_cnpj: TWideStringField
      FieldName = 'doc_cnpj'
      Size = 14
    end
    object CAD_CD_C_CLI_PROdoc_ie: TWideStringField
      FieldName = 'doc_ie'
    end
    object CAD_CD_C_CLI_PROadministrador: TWideStringField
      FieldName = 'administrador'
      Size = 50
    end
    object CAD_CD_C_CLI_PROendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object CAD_CD_C_CLI_PROcep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object CAD_CD_C_CLI_PROnumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object CAD_CD_C_CLI_PROid_pro_mob_temp: TIntegerField
      FieldName = 'id_pro_mob_temp'
    end
    object CAD_CD_C_CLI_PROCAD_SQ_C_CLI_PRO_CUL: TDataSetField
      FieldName = 'CAD_SQ_C_CLI_PRO_CUL'
    end
  end
  object CAD_CD_C_CLI_PRO_CUL: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_CLI_PROCAD_SQ_C_CLI_PRO_CUL
    Params = <>
    Left = 336
    Top = 473
    object CAD_CD_C_CLI_PRO_CULid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_CD_C_CLI_PRO_CULid_propriedade: TIntegerField
      FieldName = 'id_propriedade'
    end
    object CAD_CD_C_CLI_PRO_CULlote: TWideStringField
      FieldName = 'lote'
    end
    object CAD_CD_C_CLI_PRO_CULid_cultura: TIntegerField
      FieldName = 'id_cultura'
    end
    object CAD_CD_C_CLI_PRO_CULidade: TSmallintField
      FieldName = 'idade'
    end
    object CAD_CD_C_CLI_PRO_CULarea: TFloatField
      FieldName = 'area'
    end
    object CAD_CD_C_CLI_PRO_CULprodutividade: TFloatField
      FieldName = 'produtividade'
    end
    object CAD_CD_C_CLI_PRO_CULobs: TWideStringField
      FieldName = 'obs'
      Size = 800
    end
    object CAD_CD_C_CLI_PRO_CULvariedade: TWideStringField
      FieldName = 'variedade'
      Size = 30
    end
    object CAD_CD_C_CLI_PRO_CULproducao_estimada: TFloatField
      FieldName = 'producao_estimada'
    end
  end
  object CAD_DS_C_CLI: TDataSource
    DataSet = CAD_SQ_C_CLI
    Left = 208
    Top = 416
  end
  object CAD_DS_C_CLI_PRO: TDataSource
    DataSet = CAD_SQ_C_CLI_PRO
    Left = 208
    Top = 473
  end
  object CAD_CD_C_CLI_RVD: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_CLICAD_SQ_C_CLI_RVD
    Params = <>
    Left = 336
    Top = 528
    object CAD_CD_C_CLI_RVDid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_CD_C_CLI_RVDid_rvd: TIntegerField
      FieldName = 'id_rvd'
    end
  end
  object CAD_SQ_C_CLI_RVD: TSQLDataSet
    CommandText = 
      'SELECT * FROM CAD_TB_C_CLI_RVD RVD'#13#10'WHERE RVD.ID_CLIENTE=:ID_CLI' +
      'ENTE'
    DataSource = CAD_DS_C_CLI
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 528
    object CAD_SQ_C_CLI_RVDid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_SQ_C_CLI_RVDid_rvd: TIntegerField
      FieldName = 'id_rvd'
    end
  end
  object CAD_CD_C_VIT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_VIT'
    OnReconcileError = CAD_CD_C_VITReconcileError
    Left = 984
    Top = 80
    object CAD_CD_C_VITint_id_visita_mob: TIntegerField
      FieldName = 'int_id_visita_mob'
      ProviderFlags = []
    end
    object CAD_CD_C_VITid_visita: TIntegerField
      FieldName = 'id_visita'
    end
    object CAD_CD_C_VITid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object CAD_CD_C_VITdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      Size = 14
    end
    object CAD_CD_C_VITid_veiculo: TIntegerField
      FieldName = 'id_veiculo'
    end
    object CAD_CD_C_VITdta_visita: TDateField
      FieldName = 'dta_visita'
    end
    object CAD_CD_C_VITobs: TWideStringField
      FieldName = 'obs'
      Size = 500
    end
    object CAD_CD_C_VITrecomendacoes: TWideStringField
      FieldName = 'recomendacoes'
      Size = 500
    end
    object CAD_CD_C_VITid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CAD_CD_C_VITgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object CAD_CD_C_VITgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object CAD_CD_C_VIThor_ini: TTimeField
      FieldName = 'hor_ini'
    end
    object CAD_CD_C_VIThor_fim: TTimeField
      FieldName = 'hor_fim'
    end
    object CAD_CD_C_VITsemana: TIntegerField
      FieldName = 'semana'
    end
    object CAD_CD_C_VITplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object CAD_CD_C_VITid_pedido_mobile: TIntegerField
      FieldName = 'id_pedido_mobile'
    end
    object CAD_CD_C_VITtipo_mobile: TIntegerField
      FieldName = 'tipo_mobile'
    end
    object CAD_CD_C_VITremarcar_vis: TBooleanField
      FieldName = 'remarcar_vis'
    end
    object CAD_CD_C_VITdta_prox_vis: TDateField
      FieldName = 'dta_prox_vis'
    end
    object CAD_CD_C_VITsemana_prox_vis: TIntegerField
      FieldName = 'semana_prox_vis'
    end
    object CAD_CD_C_VITid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object CAD_CD_C_VITCAD_SQ_C_VIT_KMT: TDataSetField
      FieldName = 'CAD_SQ_C_VIT_KMT'
    end
    object CAD_CD_C_VITCAD_SQ_C_VIT_FOT: TDataSetField
      FieldName = 'CAD_SQ_C_VIT_FOT'
    end
    object CAD_CD_C_VITsemana_visitada: TIntegerField
      FieldName = 'semana_visitada'
    end
  end
  object CAD_DS_C_VIT: TDataSource
    DataSet = CAD_SQ_C_VIT
    Left = 872
    Top = 136
  end
  object CAD_CD_C_VIT_FOT: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_VITCAD_SQ_C_VIT_FOT
    Params = <>
    Left = 984
    Top = 136
    object CAD_CD_C_VIT_FOTid_visita: TIntegerField
      FieldName = 'id_visita'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_CD_C_VIT_FOTid_vit_fot: TIntegerField
      FieldName = 'id_vit_fot'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_CD_C_VIT_FOTcaminho_foto: TWideStringField
      FieldName = 'caminho_foto'
      Size = 255
    end
    object CAD_CD_C_VIT_FOTobs: TWideStringField
      FieldName = 'obs'
      Size = 255
    end
  end
  object CAD_CD_C_VIT_KMT: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_VITCAD_SQ_C_VIT_KMT
    Params = <>
    Left = 984
    Top = 192
    object CAD_CD_C_VIT_KMTid_visita: TIntegerField
      FieldName = 'id_visita'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_CD_C_VIT_KMTid_km: TIntegerField
      FieldName = 'id_km'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_CD_C_VIT_KMTid_veiculo: TIntegerField
      FieldName = 'id_veiculo'
    end
    object CAD_CD_C_VIT_KMTkm_inicial: TFloatField
      FieldName = 'km_inicial'
    end
    object CAD_CD_C_VIT_KMTkm_final: TFloatField
      FieldName = 'km_final'
    end
    object CAD_CD_C_VIT_KMTkm_inicial_orig: TFloatField
      FieldName = 'km_inicial_orig'
    end
    object CAD_CD_C_VIT_KMTkm_final_orig: TFloatField
      FieldName = 'km_final_orig'
    end
  end
  object PRO_DP_M_VIS: TDataSetProvider
    DataSet = PRO_SQ_M_VIS
    Left = 632
    Top = 536
  end
  object PRO_CD_M_VIS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRO_DP_M_VIS'
    OnReconcileError = PRO_CD_M_VISReconcileError
    Left = 744
    Top = 536
    object PRO_CD_M_VISid_vis: TIntegerField
      FieldName = 'id_vis'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PRO_CD_M_VISsemana: TIntegerField
      FieldName = 'semana'
    end
    object PRO_CD_M_VISid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object PRO_CD_M_VISfechada: TBooleanField
      FieldName = 'fechada'
    end
    object PRO_CD_M_VISid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object PRO_CD_M_VISano: TIntegerField
      FieldName = 'ano'
    end
    object PRO_CD_M_VISdta_criacao: TDateField
      FieldName = 'dta_criacao'
    end
    object PRO_CD_M_VISPRO_SQ_M_VIS_CLI: TDataSetField
      FieldName = 'PRO_SQ_M_VIS_CLI'
    end
  end
  object PRO_SQ_M_VIS: TSQLDataSet
    CommandText = 'select * from pro_tb_m_vis vis'#13#10'where 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 536
    object PRO_SQ_M_VISid_vis: TIntegerField
      FieldName = 'id_vis'
    end
    object PRO_SQ_M_VISsemana: TIntegerField
      FieldName = 'semana'
    end
    object PRO_SQ_M_VISid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object PRO_SQ_M_VISfechada: TBooleanField
      FieldName = 'fechada'
    end
    object PRO_SQ_M_VISid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object PRO_SQ_M_VISano: TIntegerField
      FieldName = 'ano'
    end
    object PRO_SQ_M_VISdta_criacao: TDateField
      FieldName = 'dta_criacao'
    end
  end
  object PRO_DS_M_VIS: TDataSource
    DataSet = PRO_SQ_M_VIS
    Left = 632
    Top = 600
  end
  object PRO_SQ_M_VIS_CLI: TSQLDataSet
    CommandText = 'select * from pro_tb_m_vis_cli vcl'#13#10'where vcl.id_vis=:id_vis'
    DataSource = PRO_DS_M_VIS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_vis'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 528
    Top = 600
    object PRO_SQ_M_VIS_CLIid_vis: TIntegerField
      FieldName = 'id_vis'
    end
    object PRO_SQ_M_VIS_CLIid_vis_cli: TIntegerField
      FieldName = 'id_vis_cli'
    end
    object PRO_SQ_M_VIS_CLIdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      Size = 14
    end
    object PRO_SQ_M_VIS_CLIdta_visita: TDateField
      FieldName = 'dta_visita'
    end
    object PRO_SQ_M_VIS_CLIid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
  end
  object PRO_CD_M_VIS_CLI: TClientDataSet
    Aggregates = <>
    DataSetField = PRO_CD_M_VISPRO_SQ_M_VIS_CLI
    Params = <>
    Left = 744
    Top = 600
    object PRO_CD_M_VIS_CLIid_vis: TIntegerField
      FieldName = 'id_vis'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PRO_CD_M_VIS_CLIid_vis_cli: TIntegerField
      FieldName = 'id_vis_cli'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PRO_CD_M_VIS_CLIdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      Size = 14
    end
    object PRO_CD_M_VIS_CLIdta_visita: TDateField
      FieldName = 'dta_visita'
    end
    object PRO_CD_M_VIS_CLIid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
  end
  object FAT_DS_M_PED: TDataSource
    DataSet = FAT_SQ_M_PED
    Left = 872
    Top = 304
  end
  object FAT_CD_M_PED: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_PED'
    OnReconcileError = FAT_CD_M_PEDReconcileError
    Left = 984
    Top = 248
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
    object FAT_CD_M_PEDid_abertura: TIntegerField
      FieldName = 'id_abertura'
    end
    object FAT_CD_M_PEDdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
    end
    object FAT_CD_M_PEDoffline: TBooleanField
      FieldName = 'offline'
    end
    object FAT_CD_M_PEDconferido: TBooleanField
      FieldName = 'conferido'
    end
    object FAT_CD_M_PEDid_conf: TIntegerField
      FieldName = 'id_conf'
    end
    object FAT_CD_M_PEDdta_conf: TDateField
      FieldName = 'dta_conf'
    end
    object FAT_CD_M_PEDhor_conf: TTimeField
      FieldName = 'hor_conf'
    end
    object FAT_CD_M_PEDresultado_conf: TIntegerField
      FieldName = 'resultado_conf'
    end
    object FAT_CD_M_PEDid_resp_conf: TIntegerField
      FieldName = 'id_resp_conf'
    end
    object FAT_CD_M_PEDid_propriedade: TIntegerField
      FieldName = 'id_propriedade'
    end
    object FAT_CD_M_PEDid_mkt: TIntegerField
      FieldName = 'id_mkt'
    end
    object FAT_CD_M_PEDvlr_frete: TFMTBCDField
      FieldName = 'vlr_frete'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDmod_frete: TIntegerField
      FieldName = 'mod_frete'
    end
    object FAT_CD_M_PEDcan_usuario: TIntegerField
      FieldName = 'can_usuario'
    end
    object FAT_CD_M_PEDcan_data: TDateField
      FieldName = 'can_data'
    end
    object FAT_CD_M_PEDcan_motivo: TWideStringField
      FieldName = 'can_motivo'
      Size = 100
    end
    object FAT_CD_M_PEDcan_hora: TTimeField
      FieldName = 'can_hora'
    end
    object FAT_CD_M_PEDid_pedido_temp_mob: TIntegerField
      FieldName = 'id_pedido_temp_mob'
    end
    object FAT_CD_M_PEDsemana: TIntegerField
      FieldName = 'semana'
    end
    object FAT_CD_M_PEDid_pedido_mob: TIntegerField
      FieldName = 'id_pedido_mob'
    end
    object FAT_CD_M_PEDFAT_SQ_M_PED_TIT: TDataSetField
      FieldName = 'FAT_SQ_M_PED_TIT'
    end
    object FAT_CD_M_PEDFAT_SQ_M_PED_ITE: TDataSetField
      FieldName = 'FAT_SQ_M_PED_ITE'
    end
  end
  object FAT_CD_M_PED_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_M_PEDFAT_SQ_M_PED_ITE
    Params = <>
    Left = 984
    Top = 304
  end
  object FAT_CD_M_PED_TIT: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_M_PEDFAT_SQ_M_PED_TIT
    Params = <>
    Left = 984
    Top = 360
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
    object FAT_CD_M_PED_TITid_maquineta: TIntegerField
      FieldName = 'id_maquineta'
    end
  end
  object PRO_SQ_M_PMB: TSQLDataSet
    CommandText = 'select * from pro_tb_m_pmb'#13#10'where 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 600
  end
  object PRO_CD_M_PMB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRO_DP_M_PMB'
    Left = 336
    Top = 600
  end
  object PRO_DP_M_PMB: TDataSetProvider
    DataSet = PRO_SQ_M_PMB
    Left = 208
    Top = 600
  end
end
