object ServidorMetodos: TServidorMetodos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 680
  Width = 504
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
      'HostName=192.168.254.10'
      'SchemaName=public'
      'Database=enSoftData'
      'User_Name=postgres'
      'Password=ssq#0609'
      'EnableBCD=True')
    Left = 63
    Top = 23
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
end
