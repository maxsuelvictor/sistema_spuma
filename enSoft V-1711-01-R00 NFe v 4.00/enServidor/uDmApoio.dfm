object DmApoio: TDmApoio
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
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
      'HostName=192.168.254.130'
      'SchemaName=public'
      'Database=enSoftDataTeresina2309'
      'User_Name=postgres'
      'Password=ssq#0609'
      'EnableBCD=True')
    Left = 63
    Top = 23
  end
end
