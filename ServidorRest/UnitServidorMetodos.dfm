object ServidorMetodos: TServidorMetodos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 903
  Width = 665
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
      'Database=enSoftGloboP170226'
      'User_Name=postgres'
      'Password=ssq#0609'
      'EnableBCD=True')
    Left = 31
    Top = 7
  end
  object CAD_SQ_C_COR: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_COR'#13#10'WHERE  1 =2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 96
  end
  object CAD_DP_C_COR: TDataSetProvider
    DataSet = CAD_SQ_C_COR
    Left = 248
    Top = 96
  end
  object PCP_SQ_C_REG_E_ITE: TSQLDataSet
    CommandText = 
      'SELECT R.id_regiao, R.descricao, R.id_rota, R.desc_perc, R.unifi' +
      'ca_desc_reg, '#13#10'   I.tipo, I.id_grupo, I.id_item, I.per_desconto ' +
      #13#10'FROM PCP_TB_C_REG R '#13#10'      LEFT JOIN PCP_TB_C_REG_ITE I ON R.' +
      'id_regiao = I.id_regiao '#13#10'      ORDER BY R.id_regiao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 149
  end
  object PCP_DP_C_REG_E_ITE: TDataSetProvider
    DataSet = PCP_SQ_C_REG_E_ITE
    Left = 248
    Top = 149
  end
  object CAD_SQ_C_GRU: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_GRU'#13#10'WHERE  1= 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 197
  end
  object CAD_DP_C_GRU: TDataSetProvider
    DataSet = CAD_SQ_C_GRU
    Left = 248
    Top = 197
  end
  object CAD_SQ_C_GRU_COR: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_GRU_COR'#13#10'WHERE  1= 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 252
  end
  object CAD_DP_C_GRU_COR: TDataSetProvider
    DataSet = CAD_SQ_C_GRU_COR
    Left = 248
    Top = 252
  end
  object CAD_SQ_C_CID: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_CID'#13#10'WHERE  1= 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 305
  end
  object CAD_DP_C_CID: TDataSetProvider
    DataSet = CAD_SQ_C_CID
    Left = 248
    Top = 305
  end
  object CAD_SQ_C_CLI: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_CLI'#13#10'WHERE  1= 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 361
  end
  object CAD_DP_C_CLI: TDataSetProvider
    DataSet = CAD_SQ_C_CLI
    Left = 248
    Top = 361
  end
  object CAD_DP_C_ITE: TDataSetProvider
    DataSet = CAD_SQ_C_ITE
    Left = 248
    Top = 417
  end
  object CAD_SQ_C_ITE: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'id_item ,  descricao , fantasia,  id_grupo ,  ativo ,  ' +
      'preco_avista ,  preco_aprazo ,  id_ncm ,  sgq_personalizado ,  t' +
      'ipo_produto ,'#13#10'id_und_venda '#13#10' FROM CAD_TB_C_ITE'#13#10'WHERE  1= 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 417
  end
  object FAT_DP_M_PED: TDataSetProvider
    DataSet = FAT_SQ_M_PED
    Left = 248
    Top = 523
  end
  object FAT_SQ_M_PED: TSQLDataSet
    CommandText = 'select * from fat_tb_m_ped'#13#10'where 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 523
  end
  object FAT_DS_M_PED: TDataSource
    DataSet = FAT_SQ_M_PED
    Left = 248
    Top = 582
  end
  object FAT_SQ_M_PED_TIT: TSQLDataSet
    CommandText = 'select * from fat_tb_m_ped_tit'#13#10'where id_pedido=:id_pedido'
    DataSource = FAT_DS_M_PED
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_pedido'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 635
  end
  object FAT_SQ_M_PED_ITE: TSQLDataSet
    CommandText = 'select * from fat_tb_m_ped_ite '#13#10'where id_pedido=:id_pedido'
    DataSource = FAT_DS_M_PED
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_pedido'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 578
  end
  object CAD_SQ_C_SEQ: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_SEQ'#13#10'where 1 = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 470
  end
  object CAD_DP_C_SEQ: TDataSetProvider
    DataSet = CAD_SQ_C_SEQ
    Left = 248
    Top = 470
  end
  object FAT_CD_M_PED: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_PED'
    Left = 392
    Top = 528
    object FAT_CD_M_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      Size = 255
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
      Size = 200
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
    object FAT_CD_M_PEDsemana: TIntegerField
      FieldName = 'semana'
    end
    object FAT_CD_M_PEDid_pedido_mob: TIntegerField
      FieldName = 'id_pedido_mob'
    end
    object FAT_CD_M_PEDid_motorista: TIntegerField
      FieldName = 'id_motorista'
    end
    object FAT_CD_M_PEDid_placa: TWideStringField
      FieldName = 'id_placa'
      Size = 8
    end
    object FAT_CD_M_PEDvlr_credito: TFMTBCDField
      FieldName = 'vlr_credito'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDid_pedido_temp_mob: TIntegerField
      FieldName = 'id_pedido_temp_mob'
    end
    object FAT_CD_M_PEDvlr_desc_especial: TFMTBCDField
      FieldName = 'vlr_desc_especial'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDvlr_desc_basico: TFMTBCDField
      FieldName = 'vlr_desc_basico'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDsgq_per_comissao: TFloatField
      FieldName = 'sgq_per_comissao'
    end
    object FAT_CD_M_PEDqtde_volume: TFloatField
      FieldName = 'qtde_volume'
    end
    object FAT_CD_M_PEDvlr_icm_desn: TFMTBCDField
      FieldName = 'vlr_icm_desn'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDvlr_desc_produtos: TFMTBCDField
      FieldName = 'vlr_desc_produtos'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDper_desc_produtos: TFloatField
      FieldName = 'per_desc_produtos'
    end
    object FAT_CD_M_PEDvlr_produtos: TFMTBCDField
      FieldName = 'vlr_produtos'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDvlr_serv_bruto: TFMTBCDField
      FieldName = 'vlr_serv_bruto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDvlr_desc_servicos: TFMTBCDField
      FieldName = 'vlr_desc_servicos'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDper_desc_servicos: TFloatField
      FieldName = 'per_desc_servicos'
    end
    object FAT_CD_M_PEDvlr_ser_liquido: TFMTBCDField
      FieldName = 'vlr_ser_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDvlr_terceiro: TFMTBCDField
      FieldName = 'vlr_terceiro'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDvlr_desc_terceiro: TFMTBCDField
      FieldName = 'vlr_desc_terceiro'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDper_desc_terceiro: TFloatField
      FieldName = 'per_desc_terceiro'
    end
    object FAT_CD_M_PEDvlr_terc_liquido: TFMTBCDField
      FieldName = 'vlr_terc_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDped_gera_fin_separado: TBooleanField
      FieldName = 'ped_gera_fin_separado'
    end
    object FAT_CD_M_PEDvlr_prod_liquido: TFMTBCDField
      FieldName = 'vlr_prod_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDsepara_prod_serv: TBooleanField
      FieldName = 'separa_prod_serv'
    end
    object FAT_CD_M_PEDvlr_cred_produtos: TFMTBCDField
      FieldName = 'vlr_cred_produtos'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDvlr_cred_servicos: TFMTBCDField
      FieldName = 'vlr_cred_servicos'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDid_pedido_orig: TIntegerField
      FieldName = 'id_pedido_orig'
    end
    object FAT_CD_M_PEDid_mecanico: TIntegerField
      FieldName = 'id_mecanico'
    end
    object FAT_CD_M_PEDvlr_desc_pos_fat: TFMTBCDField
      FieldName = 'vlr_desc_pos_fat'
      Precision = 18
      Size = 4
    end
    object FAT_CD_M_PEDsgq_texto_cond_pgto: TWideStringField
      FieldName = 'sgq_texto_cond_pgto'
      Size = 80
    end
    object FAT_CD_M_PEDper_desc_basico: TFloatField
      FieldName = 'per_desc_basico'
    end
    object FAT_CD_M_PEDper_desc_especial: TFloatField
      FieldName = 'per_desc_especial'
    end
    object FAT_CD_M_PEDdta_liberacao: TDateField
      FieldName = 'dta_liberacao'
    end
    object FAT_CD_M_PEDpedido_automatico: TBooleanField
      FieldName = 'pedido_automatico'
    end
    object FAT_CD_M_PEDpedido_origem_aut: TIntegerField
      FieldName = 'pedido_origem_aut'
    end
    object FAT_CD_M_PEDgerar_pedido_diferenca: TBooleanField
      FieldName = 'gerar_pedido_diferenca'
    end
    object FAT_CD_M_PEDid_pedido_gerado: TIntegerField
      FieldName = 'id_pedido_gerado'
    end
    object FAT_CD_M_PEDper_desconto_fat: TFloatField
      FieldName = 'per_desconto_fat'
    end
    object FAT_CD_M_PEDtexto_diversos_temp: TWideStringField
      FieldName = 'texto_diversos_temp'
      Size = 255
    end
    object FAT_CD_M_PEDid_func_pri_impressao: TIntegerField
      FieldName = 'id_func_pri_impressao'
    end
    object FAT_CD_M_PEDdta_pri_impressao: TDateField
      FieldName = 'dta_pri_impressao'
    end
    object FAT_CD_M_PEDhor_pri_impressao: TTimeField
      FieldName = 'hor_pri_impressao'
    end
    object FAT_CD_M_PEDid_func_seg_impressao: TIntegerField
      FieldName = 'id_func_seg_impressao'
    end
    object FAT_CD_M_PEDdta_seg_impressao: TDateField
      FieldName = 'dta_seg_impressao'
    end
    object FAT_CD_M_PEDhor_seg_impressao: TTimeField
      FieldName = 'hor_seg_impressao'
    end
    object FAT_CD_M_PEDid_func_ter_impressao: TIntegerField
      FieldName = 'id_func_ter_impressao'
    end
    object FAT_CD_M_PEDdta_ter_impressao: TDateField
      FieldName = 'dta_ter_impressao'
    end
    object FAT_CD_M_PEDhor_ter_impressao: TTimeField
      FieldName = 'hor_ter_impressao'
    end
    object FAT_CD_M_PEDmotivo_seg_impressao: TWideStringField
      FieldName = 'motivo_seg_impressao'
      Size = 100
    end
    object FAT_CD_M_PEDmotivo_ter_impressao: TWideStringField
      FieldName = 'motivo_ter_impressao'
      Size = 100
    end
    object FAT_CD_M_PEDFAT_SQ_M_PED_ITE: TDataSetField
      FieldName = 'FAT_SQ_M_PED_ITE'
    end
    object FAT_CD_M_PEDFAT_SQ_M_PED_TIT: TDataSetField
      FieldName = 'FAT_SQ_M_PED_TIT'
    end
  end
  object FAT_CD_M_PED_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_M_PEDFAT_SQ_M_PED_ITE
    Params = <>
    Left = 392
    Top = 584
  end
  object FAT_CD_M_PED_TIT: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_M_PEDFAT_SQ_M_PED_TIT
    Params = <>
    Left = 392
    Top = 640
  end
  object FAT_SQ_R_PED: TSQLDataSet
    CommandText = 
      'SELECT PED.id_pedido, ped.dta_pedido, ped.vlr_bruto, ped.vlr_des' +
      'conto, ped.vlr_liquido,'#13#10'             CLI.NOME AS INT_NOMECLI,'#13#10 +
      '             TME.DESCRICAO AS INT_NOMETME,'#13#10'             FUN.NOM' +
      'E AS INT_NOMEFUN, '#13#10'            case '#13#10'               when sgq_t' +
      'exto_cond_pgto <> '#39#39' then sgq_texto_cond_pgto '#13#10'            else' +
      '  CPG.DESCRICAO end as int_desc_cond_pag, '#13#10'             ATE.NOM' +
      'E AS INT_NOMEATE,'#13#10'             RES.NOME AS INT_NOMERES,'#13#10'      ' +
      '       CID.NOME AS INT_NOMECID,'#13#10'             CID.UF AS INT_NOME' +
      'EST,'#13#10'             CLI.doc_cnpj_cpf AS INT_CPFCNPJ, '#13#10'          ' +
      '   CLI.pessoa as int_pessoacli,'#13#10'             CLI.ID_PERFIL_CLI ' +
      'AS INT_ID_PERFIL,'#13#10'         cast( case situacao_aprovacao'#13#10'     ' +
      '      when 0 then '#39'Em espera'#39#13#10'           when 1 then '#39'Aprovado'#39 +
      #13#10'           when 2 then '#39'Reprovado'#39#13#10'         end as varchar(20' +
      ') ) as int_sitaprov,'#13#10'         cast( case ped.situacao'#13#10'        ' +
      '   when 0 then '#39'Em aberto'#39#13#10'           when 1 then '#39'Reprovado'#39#13#10 +
      '           when 2 then '#39'Em produ'#231#227'o'#39#13#10'           when 3 then '#39'Fa' +
      'turado'#39#13#10'           when 4 then '#39'Cancelado'#39#13#10'         end as var' +
      'char(20) ) as int_sit_pedido_detalhado,'#13#10'         cast( case    ' +
      '  '#13#10'           when (ped.situacao = 0) and (ped.situacao_aprovac' +
      'ao = 0) then '#39'Digitado'#39#13#10'           when (ped.situacao = 0) and ' +
      '(ped.situacao_aprovacao = 1) then '#39'Aprovado'#39#13#10'           when (p' +
      'ed.situacao = 1) then '#39'Reprovado'#39#13#10'           when (ped.situacao' +
      ' = 2) then '#39'Em produ'#231#227'o'#39#13#10'           when (ped.situacao = 3) the' +
      'n '#39'Faturado'#39#13#10'           when (ped.situacao = 4) then '#39'Cancelado' +
      #39#13#10'         end as varchar(20) ) as int_sitped2,    '#13#10'         c' +
      'li.doc_ie_identidade as int_ie_rg_cli,'#13#10'         PAR.EMP_FANTASI' +
      'A AS INT_EMPFANTASIA,'#13#10'         NFE.DTA_EMISSAO AS DTA_EMISSAO_N' +
      'FE, '#13#10'         ORS.ID_ORS AS ORDEM_FAT'#13#10'         FROM FAT_TB_M_P' +
      'ED PED'#13#10'         LEFT OUTER JOIN CAD_TB_C_CLI CLI ON CLI.ID_CLIE' +
      'NTE = PED.ID_CLIENTE'#13#10'         LEFT OUTER JOIN CAD_TB_C_TME TME ' +
      'ON TME.ID_TIPO_MOV_ESTOQUE = PED.ID_TIPO_MOV_ESTOQUE'#13#10'         L' +
      'EFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN.ID_FUNCIONARIO=PED.ID_VEN' +
      'DEDOR'#13#10'         LEFT OUTER JOIN CAD_TB_C_CPG CPG ON CPG.ID_CONDI' +
      'CAO_PAG=PED.ID_CONDICAO_PAG'#13#10'         LEFT OUTER JOIN CAD_TB_C_F' +
      'UN ATE ON ATE.ID_FUNCIONARIO=PED.ID_ATENDENTE'#13#10'         LEFT OUT' +
      'ER JOIN CAD_TB_C_FUN RES ON RES.ID_FUNCIONARIO=PED.ID_RESPONSAVE' +
      'L'#13#10'         LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=CL' +
      'I.ID_CIDADE'#13#10'         LEFT OUTER JOIN CAD_TB_C_PAR PAR ON PAR.ID' +
      '_EMPRESA=PED.ID_EMPRESA'#13#10'         LEFT OUTER JOIN PCP_TB_M_ORS O' +
      'RS ON ORS.ID_PEDIDO=PED.ID_PEDIDO '#13#10'         LEFT OUTER JOIN FAT' +
      '_TB_M_NFE NFE ON NFE.ID_ORS=ORS.ID_ORS '#13#10#13#10'WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 65
    Top = 712
  end
  object FAT_DP_R_PED: TDataSetProvider
    DataSet = FAT_SQ_R_PED
    Left = 168
    Top = 712
  end
  object FAT_CD_R_PED: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_PED'
    Left = 272
    Top = 712
    object FAT_CD_R_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object FAT_CD_R_PEDdta_pedido: TDateField
      FieldName = 'dta_pedido'
    end
    object FAT_CD_R_PEDvlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_PEDvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_PEDvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_PEDint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      Size = 50
    end
    object FAT_CD_R_PEDint_nometme: TWideStringField
      FieldName = 'int_nometme'
      Size = 30
    end
    object FAT_CD_R_PEDint_nomefun: TWideStringField
      FieldName = 'int_nomefun'
      Size = 50
    end
    object FAT_CD_R_PEDint_desc_cond_pag: TWideMemoField
      FieldName = 'int_desc_cond_pag'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_PEDint_nomeate: TWideStringField
      FieldName = 'int_nomeate'
      Size = 50
    end
    object FAT_CD_R_PEDint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      Size = 50
    end
    object FAT_CD_R_PEDint_nomecid: TWideStringField
      FieldName = 'int_nomecid'
      Size = 60
    end
    object FAT_CD_R_PEDint_nomeest: TWideStringField
      FieldName = 'int_nomeest'
      Size = 2
    end
    object FAT_CD_R_PEDint_cpfcnpj: TWideStringField
      FieldName = 'int_cpfcnpj'
      Size = 14
    end
    object FAT_CD_R_PEDint_pessoacli: TIntegerField
      FieldName = 'int_pessoacli'
    end
    object FAT_CD_R_PEDint_id_perfil: TIntegerField
      FieldName = 'int_id_perfil'
    end
    object FAT_CD_R_PEDint_sitaprov: TWideStringField
      FieldName = 'int_sitaprov'
    end
    object FAT_CD_R_PEDint_sitped: TWideStringField
      FieldName = 'int_sitped'
    end
    object FAT_CD_R_PEDint_sitped2: TWideStringField
      FieldName = 'int_sitped2'
    end
    object FAT_CD_R_PEDint_ie_rg_cli: TWideStringField
      FieldName = 'int_ie_rg_cli'
    end
    object FAT_CD_R_PEDint_empfantasia: TWideStringField
      FieldName = 'int_empfantasia'
      Size = 50
    end
    object FAT_CD_R_PEDdta_emissao_nfe: TDateField
      FieldName = 'dta_emissao_nfe'
    end
    object FAT_CD_R_PEDordem_fat: TIntegerField
      FieldName = 'ordem_fat'
    end
    object FAT_CD_R_PEDFAT_SQ_R_PED_TIT: TDataSetField
      FieldName = 'FAT_SQ_R_PED_TIT'
    end
    object FAT_CD_R_PEDFAT_SQ_R_PED_ITE: TDataSetField
      FieldName = 'FAT_SQ_R_PED_ITE'
    end
  end
  object FAT_SQ_R_PED_ITE: TSQLDataSet
    CommandText = 
      'select pte.id_pedido, pte.id_item,  pte.id_cor, pte.id_tamanho,'#13 +
      #10'       pte.qtde,  pte.vlr_unitario, pte.vlr_desconto, pte.vlr_l' +
      'iquido,'#13#10'       ite.descricao as int_nomeite, cor.descricao as i' +
      'nt_nomecor,'#13#10'       ite.id_und_venda int_id_und_venda ,'#13#10'       ' +
      'gru.tipo_item  as  int_tipo_item ,'#13#10'       tam.descricao as int_' +
      'nometam'#13#10'from fat_tb_m_ped_ite pte'#13#10'left outer join cad_tb_c_ite' +
      ' ite on ite.id_item = pte.id_item'#13#10'left outer join cad_tb_c_gru ' +
      'gru on gru.id_grupo = ite.id_grupo'#13#10'left outer join cad_tb_c_cor' +
      ' cor on cor.id_cor = pte.id_cor'#13#10'left outer join cad_tb_c_tam ta' +
      'm on tam.id_tamanho = pte.id_tamanho'#13#10'where pte.id_pedido=:id_pe' +
      'dido'
    DataSource = FAT_DS_R_PED
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_pedido'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 766
  end
  object FAT_DS_R_PED: TDataSource
    DataSet = FAT_SQ_R_PED
    Left = 168
    Top = 766
  end
  object FAT_SQ_R_PED_TIT: TSQLDataSet
    CommandText = 
      'select pti.id_pedido,pti.id_titulo, pti.dta_vencimento, pti.che_' +
      'agencia, pti.che_banco,'#13#10'       pti.che_conta, pti.che_numero, p' +
      'ti.che_emitente, pti.vlr_titulo,'#13#10'       fpg.descricao as int_no' +
      'mefpg'#13#10'from fat_tb_m_ped_tit pti '#13#10'left outer join cad_tb_c_fpg ' +
      'fpg on fpg.id_forma_pag=pti.id_forma_pag'#13#10'where pti.id_pedido=:i' +
      'd_pedido'#13#10'order by pti.dta_vencimento'
    DataSource = FAT_DS_R_PED
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_pedido'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 64
    Top = 816
  end
  object FAT_CD_R_PED_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_R_PEDFAT_SQ_R_PED_ITE
    Params = <>
    Left = 272
    Top = 766
    object FAT_CD_R_PED_ITEid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object FAT_CD_R_PED_ITEid_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_PED_ITEid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object FAT_CD_R_PED_ITEid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
    end
    object FAT_CD_R_PED_ITEqtde: TFloatField
      FieldName = 'qtde'
    end
    object FAT_CD_R_PED_ITEvlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_PED_ITEvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_PED_ITEvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_PED_ITEint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      Size = 100
    end
    object FAT_CD_R_PED_ITEint_nomecor: TWideStringField
      FieldName = 'int_nomecor'
      Size = 40
    end
    object FAT_CD_R_PED_ITEint_id_und_venda: TWideStringField
      FieldName = 'int_id_und_venda'
      Size = 3
    end
    object FAT_CD_R_PED_ITEint_tipo_item: TWideStringField
      FieldName = 'int_tipo_item'
      Size = 2
    end
    object FAT_CD_R_PED_ITEint_nometam: TWideStringField
      FieldName = 'int_nometam'
      Size = 40
    end
  end
  object FAT_CD_R_PED_TIT: TClientDataSet
    Aggregates = <>
    DataSetField = FAT_CD_R_PEDFAT_SQ_R_PED_TIT
    Params = <>
    Left = 272
    Top = 816
    object FAT_CD_R_PED_TITid_titulo: TIntegerField
      FieldName = 'id_titulo'
    end
    object FAT_CD_R_PED_TITdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
    end
    object FAT_CD_R_PED_TITche_agencia: TWideStringField
      FieldName = 'che_agencia'
      Size = 10
    end
    object FAT_CD_R_PED_TITche_banco: TWideStringField
      FieldName = 'che_banco'
      Size = 10
    end
    object FAT_CD_R_PED_TITche_conta: TIntegerField
      FieldName = 'che_conta'
    end
    object FAT_CD_R_PED_TITche_numero: TIntegerField
      FieldName = 'che_numero'
    end
    object FAT_CD_R_PED_TITche_emitente: TWideStringField
      FieldName = 'che_emitente'
      Size = 50
    end
    object FAT_CD_R_PED_TITvlr_titulo: TFMTBCDField
      FieldName = 'vlr_titulo'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_PED_TITint_nomefpg: TWideStringField
      FieldName = 'int_nomefpg'
      Size = 30
    end
    object FAT_CD_R_PED_TITid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
  end
end
