object ServidorMetodos: TServidorMetodos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 411
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
    Left = 176
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
    Top = 160
  end
  object PCP_DP_C_REG_E_ITE: TDataSetProvider
    DataSet = PCP_SQ_C_REG_E_ITE
    Left = 176
    Top = 160
  end
end
