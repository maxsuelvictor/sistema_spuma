unit uDmApoio;

interface

uses
  System.SysUtils, System.Classes, DbxDevartPostgreSQL, Data.DB, Data.SqlExpr,
  System.Variants,Vcl.Dialogs,System.Math,System.IniFiles,   Vcl.Forms,
  Datasnap.DBClient,Datasnap.Provider,enSM,Data.DBXCommon,uServer;


type
  TDmApoio = class(TDataModule)
    ConexaoNW: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function enBusValorChave(NomeSeq: String): Integer;
  end;

var
  DmApoio: TDmApoio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmApoio }

procedure TDmApoio.DataModuleCreate(Sender: TObject);
var
  Rede:TInifile;
  Id: String;
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
  ConexaoNW.Params.Add('SchemaName=public');
  ConexaoNW.Params.Add('Database='+Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO',''));
  ConexaoNW.Params.Add('User_Name=postgres');
  ConexaoNW.Params.Add('Password=ssq#0609');
  ConexaoNW.Params.Add('EnableBCD=True');
  ConexaoNW.Open;

end;

function TDmApoio.enBusValorChave(NomeSeq: String): Integer;
var
  qry:TSqlQuery;
  qryNova:TSqlQuery;
  xSeq:Integer;
begin
  qry:=TSqlQuery.Create(self);
  qry.SQLConnection:=ConexaoNW;

  qryNova:=TSqlQuery.Create(self);
  qryNova.SQLConnection:=ConexaoNW;

  xSeq:=0;
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('Select SEQUENCIA from CAD_TB_C_SEQ where ID_TABELA='''+NomeSeq+''' ');
  qry.Open;

  if not qry.IsEmpty then
     begin
       xSeq:=qry.FieldByName('Sequencia').AsInteger;
       xSeq:=xSeq+1;
       qry.Close;
       qry.SQL.Clear;
       qry.SQL.Add('update CAD_TB_C_SEQ set SEQUENCIA='''+inttostr(xSeq)+''' ');
       qry.SQL.Add('where ID_TABELA='''+NomeSeq+''' ');
       qry.ExecSQL;
     end
   else
     begin
       qryNova.Close;
       qryNova.SQL.Clear;
       qryNova.SQL.Add('INSERT INTO CAD_TB_C_SEQ (ID_TABELA, SEQUENCIA) VALUES ('''+NomeSeq+''', 1) ');
       qryNova.ExecSQL;
       xSeq:=1;
     end;
  qry.Destroy();
  qryNova.Destroy();
  Result := xSeq;
end;

end.
