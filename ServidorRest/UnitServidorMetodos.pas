unit UnitServidorMetodos;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
    System.IniFiles,Datasnap.DBClient, DbxDevartPostgreSQL, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Forms, Data.DBXPlatform;

type
{$METHODINFO ON}
  TServidorMetodos = class(TDataModule)
    ConexaoNW: TSQLConnection;
    CAD_SQ_C_COR: TSQLDataSet;
    CAD_DP_C_COR: TDataSetProvider;
    PCP_SQ_C_REG_E_ITE: TSQLDataSet;
    PCP_DP_C_REG_E_ITE: TDataSetProvider;
    procedure DataModuleCreate(Sender: TObject);
  private
    function updateEnviarFrutas(const Dados: TJSONArray): TJSONObject;
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    function updateEnviarCores(const Dados: TJSONArray): TJSONObject;
    function BuscarCores: TStream;


    function updateEnviarRegioes(const Dados: TJSONArray): TJSONObject;
    function BuscarRegioes: TStream;



  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils, UnitFormPrincipal;

{function TServidorMetodos.BuscarFrutas: TJSONObject;
var
  Resultado: TJSONObject;
  ListaFrutas: TJSONArray;
  Fruta1, Fruta2: TJSONObject;
begin
  Resultado := TJSONObject.Create;
  ListaFrutas := TJSONArray.Create;

  // Fruta 1
  Fruta1 := TJSONObject.Create;
  Fruta1.AddPair('nome', 'Maçã');
  Fruta1.AddPair('cor', 'Vermelha');
  Fruta1.AddPair('quantidade', TJSONNumber.Create(10));
  Fruta1.AddPair('preco', TJSONNumber.Create(2.5));
  ListaFrutas.AddElement(Fruta1);

  // Fruta 2
  Fruta2 := TJSONObject.Create;
  Fruta2.AddPair('nome', 'Banana');
  Fruta2.AddPair('cor', 'Amarela');
  Fruta2.AddPair('quantidade', TJSONNumber.Create(6));
  Fruta2.AddPair('preco', TJSONNumber.Create(1.8));
  ListaFrutas.AddElement(Fruta2);

  // Adiciona a lista ao resultado final
  Resultado.AddPair('frutas', ListaFrutas);
  Result := Resultado;
end;                                                }

function TServidorMetodos.BuscarCores: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_COR: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_COR - Cores
    Criado por: Maxsuel Victor
    Data: 20/08/2017
  }
  try
    CAD_CD_C_COR := TClientDataSet.Create(nil);
    CAD_CD_C_COR.SetProvider(CAD_DP_C_COR);

    CAD_SQ_C_COR.close;
    CAD_SQ_C_COR.CommandText := '';
    CAD_SQ_C_COR.CommandText := ' SELECT * FROM CAD_TB_C_COR ';
    CAD_CD_C_COR.Open;

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cores iniciada!');

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_COR.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id_cor',CAD_CD_C_COR.FieldByName('id_cor').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_COR.FieldByName('descricao').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_COR.Next;
          //unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cores inicio sincronizada pegando dados!');
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cores finalizada!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_COR.close;
    FreeAndNil(CAD_CD_C_COR);
  end;
end;


function TServidorMetodos.BuscarRegioes: TStream;
var
  cds: TClientDataSet;
  ListaRegioes, ListaFilhos: TJsonArray;
  ObjRegiao, ObjFilho: TJsonObject;
  id_regiao_atual, id_regiao_anterior: string;
begin
  try
    cds := TClientDataSet.Create(nil);
    cds.SetProvider(PCP_DP_C_REG_E_ITE);

    // Consulta com JOIN
    PCP_SQ_C_REG_E_ITE.Close;
    PCP_SQ_C_REG_E_ITE.CommandText :=
      'SELECT R.id_regiao, R.descricao, R.id_rota, R.desc_perc, R.unifica_desc_reg, ' +
      'I.tipo, I.id_grupo, I.id_item, I.per_desconto ' +
      'FROM PCP_TB_C_REG R ' +
      'LEFT JOIN PCP_TB_C_REG_ITE I ON R.id_regiao = I.id_regiao ' +
      'ORDER BY R.id_regiao';
    cds.Open;

    ListaRegioes := TJsonArray.Create;
    id_regiao_anterior := '';

    while not cds.Eof do
    begin
      id_regiao_atual := cds.FieldByName('id_regiao').AsString;

      // Se mudou de região, cria novo objeto pai
      if id_regiao_atual <> id_regiao_anterior then
      begin
        if Assigned(ObjRegiao) then
        begin
          ObjRegiao.AddPair('itens', ListaFilhos);
          ListaRegioes.AddElement(ObjRegiao);
        end;

        ObjRegiao := TJsonObject.Create;
        ListaFilhos := TJsonArray.Create;

        ObjRegiao.AddPair('id_regiao', id_regiao_atual);
        ObjRegiao.AddPair('descricao', cds.FieldByName('descricao').AsString);
        ObjRegiao.AddPair('id_rota', cds.FieldByName('id_rota').AsString);
        ObjRegiao.AddPair('desc_perc', cds.FieldByName('desc_perc').AsString);
        ObjRegiao.AddPair('unifica_desc_reg', cds.FieldByName('unifica_desc_reg').AsString);

        id_regiao_anterior := id_regiao_atual;
      end;

      // Adiciona filho se existir
      if not cds.FieldByName('id_item').IsNull then
      begin
        ObjFilho := TJsonObject.Create;
        ObjFilho.AddPair('tipo', cds.FieldByName('tipo').AsString);
        ObjFilho.AddPair('id_grupo', cds.FieldByName('id_grupo').AsString);
        ObjFilho.AddPair('id_item', cds.FieldByName('id_item').AsString);
        ObjFilho.AddPair('per_desconto', cds.FieldByName('per_desconto').AsString);
        ListaFilhos.AddElement(ObjFilho);
      end;

      cds.Next;
    end;

    // Adiciona o último grupo
    if Assigned(ObjRegiao) then
    begin
      ObjRegiao.AddPair('itens', ListaFilhos);
      ListaRegioes.AddElement(ObjRegiao);
    end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType := 'application/json; charset=utf-8';
    Result := TStringStream.Create(UTF8Encode(ListaRegioes.ToString));

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get das regiões com JOIN finalizada!');
  finally
    FreeAndNil(ListaRegioes);
    cds.Close;
    FreeAndNil(cds);
  end;
end;









procedure TServidorMetodos.DataModuleCreate(Sender: TObject);
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

function TServidorMetodos.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServidorMetodos.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServidorMetodos.updateEnviarCores(
  const Dados: TJSONArray): TJSONObject;
begin

end;

function TServidorMetodos.updateEnviarFrutas(const Dados: TJSONArray): TJSONObject;
var
  i: Integer;
  Obj, FrutaRetorno: TJSONObject;
  ListaResultado: TJSONArray;
  Nome, Cor: string;
  Quantidade: Integer;
  Preco: Double;
begin
  Result := TJSONObject.Create;
  ListaResultado := TJSONArray.Create;

  for i := 0 to Dados.Count - 1 do
  begin
    if not (Dados.Items[i] is TJSONObject) then
      Continue;

    Obj := Dados.Items[i] as TJSONObject;

    // Captura os campos
    Nome := Obj.GetValue<string>('nome');
    Cor := Obj.GetValue<string>('cor');
    Quantidade := Obj.GetValue<Integer>('quantidade');
    Preco := Obj.GetValue<Double>('preco');

    // Cria objeto de resposta para essa fruta
    FrutaRetorno := TJSONObject.Create;
    FrutaRetorno.AddPair('nome', Nome);
    FrutaRetorno.AddPair('status', 'Recebida com sucesso');

    ListaResultado.AddElement(FrutaRetorno);
  end;

  Result.AddPair('resultado', ListaResultado);
end;

function TServidorMetodos.updateEnviarRegioes(
  const Dados: TJSONArray): TJSONObject;
begin

end;

end.

