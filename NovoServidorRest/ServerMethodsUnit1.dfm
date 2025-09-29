object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 446
  Width = 498
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
end
