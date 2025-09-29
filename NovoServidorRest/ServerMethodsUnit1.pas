unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
    System.IniFiles,Datasnap.DBClient,Vcl.Forms, Data.DBXPlatform,
  DbxDevartPostgreSQL, Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
{$METHODINFO ON}
  TServerMethods1 = class(TDataModule)
    ConexaoNW: TSQLConnection;
    CAD_SQ_C_COR: TSQLDataSet;
    CAD_DP_C_COR: TDataSetProvider;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    function BuscarFrutas: TStream;
  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils, unitFormPrincipal;

function TServerMethods1.BuscarFrutas: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_COR: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_CUL - Cultura
    Criado por: Maxsuel Victor
    Data: 13/01/2017
  }
  try
    CAD_CD_C_COR := TClientDataSet.Create(nil);
    CAD_CD_C_COR.SetProvider(CAD_DP_C_COR);

    CAD_SQ_C_COR.close;
    CAD_SQ_C_COR.CommandText := '';
    CAD_SQ_C_COR.CommandText := ' SELECT * FROM CAD_TB_C_COR ';
    CAD_CD_C_COR.Open;

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cores inicio sincronizada!');

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_COR.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id_cor',CAD_CD_C_COR.FieldByName('id_cor').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_COR.FieldByName('descricao').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_COR.Next;
          unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cores inicio sincronizada pegando dados!');
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cores sincronizada!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_COR.close;
    FreeAndNil(CAD_CD_C_COR);
  end;
end;

procedure TServerMethods1.DataModuleCreate(Sender: TObject);
var
  Rede:TInifile;
  Id: String;
  HostName,Banco: String;
begin
  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');
  ConexaoNW.Close;
  ConexaoNW.CloseDataSets;
  ConexaoNW.Params.Clear;

  //POstgresql 9
  ConexaoNW.Params.Add('DriverUnit=DbxDevartPostgreSQL');
  ConexaoNW.Params.Add('DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver180.bpl');
  ConexaoNW.Params.Add('MetaDataPackageLoader=TDBXDevartPostgreSQLMetaDataCommandFactory,DbxDevartPostgreSQLDriver180.bpl');
  ConexaoNW.Params.Add('ProductName=DevartPostgreSQL');
  ConexaoNW.Params.Add('GetDriverFunc=getSQLDriverPostgreSQL');
  ConexaoNW.Params.Add('LibraryName=dbexppgsql40.dll');
  ConexaoNW.Params.Add('LocaleCode=0000');
  ConexaoNW.Params.Add('IsolationLevel=ReadCommitted');
  ConexaoNW.Params.Add('MaxBlobSize=-1');
  ConexaoNW.Params.Add('FetchAll=True');
  ConexaoNW.Params.Add('UseQuoteChar=False');
  ConexaoNW.Params.Add('UseUnicode=True');
  ConexaoNW.Params.Add('VendorLib=dbexppgsql40.dll');
  ConexaoNW.Params.Add('BlobSize=-1');
  ConexaoNW.Params.Add('HostName='+Rede.ReadString('DEFINICAO_DE_DATABASE','HOST',''));
  HostName := Rede.ReadString('DEFINICAO_DE_DATABASE','HOST','');
  ConexaoNW.Params.Add('SchemaName=public');
  ConexaoNW.Params.Add('Database='+Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO',''));
  Banco    :=  Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO','');
  ConexaoNW.Params.Add('User_Name=postgres');
  ConexaoNW.Params.Add('Password=ssq#0609');
  ConexaoNW.Params.Add('EnableBCD=True');

  //showmessage(Rede.ReadString('DEFINICAO_DE_DATABASE','HOST','') + ' - ' + Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO','') );

  ConexaoNW.Open;

  unitFormPrincipal.Form1.mmTexto.Lines.Clear;
  if ConexaoNW.Connected then
     unitFormPrincipal.Form1.mmTexto.Lines.Add('Conexão ativa!');
  unitFormPrincipal.Form1.mmTexto.Lines.Add('HosName: ' + HostName);
  unitFormPrincipal.Form1.mmTexto.Lines.Add('Banco: '   + Banco);
  unitFormPrincipal.Form1.mmTexto.Lines.Add('Data: ' + datetostr(date));
  unitFormPrincipal.Form1.mmTexto.Lines.Add('Hora: '   + timetostr(time));
  unitFormPrincipal.Form1.mmTexto.Lines.Add('----------------');

end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

