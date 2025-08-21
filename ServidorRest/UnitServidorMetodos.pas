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
    CAD_SQ_C_GRU: TSQLDataSet;
    CAD_DP_C_GRU: TDataSetProvider;
    CAD_SQ_C_GRU_COR: TSQLDataSet;
    CAD_DP_C_GRU_COR: TDataSetProvider;
    CAD_SQ_C_CID: TSQLDataSet;
    CAD_DP_C_CID: TDataSetProvider;
    CAD_SQ_C_CLI: TSQLDataSet;
    CAD_DP_C_CLI: TDataSetProvider;
    CAD_DP_C_ITE: TDataSetProvider;
    CAD_SQ_C_ITE: TSQLDataSet;
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

    function BuscarGrupoEstoque: TStream;

    function BuscarGrupoEstoqueCor: TStream;

    function BuscarCidades: TStream;

    function BuscarClientesPorVendedor: TStream;

    function BuscarItens: TStream;
    // casa
    //http://177.71.92.68:214/datasnap/rest/TServidorMetodos/BuscarRegioes

    // Fábrica
    //http://170.78.21.225:214/datasnap/rest/TServidorMetodos/BuscarRegioes

  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils, UnitFormPrincipal;


function TServidorMetodos.BuscarCidades: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_CID: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_CID - Cidades
    Criado por: Maxsuel Victor
    Data: 21/08/2025
  }
  try
    CAD_CD_C_CID := TClientDataSet.Create(nil);
    CAD_CD_C_CID.SetProvider(CAD_DP_C_CID);

    CAD_SQ_C_CID.close;
    CAD_SQ_C_CID.CommandText := '';
    CAD_SQ_C_CID.CommandText := ' SELECT * FROM CAD_TB_C_CID ';
    CAD_CD_C_CID.Open;

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cidades iniciada!');

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_CID.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id_cidade',CAD_CD_C_CID.FieldByName('id_cidade').AsString));
          jso.AddPair(TJsonPair.Create('nome',CAD_CD_C_CID.FieldByName('nome').AsString));
          jso.AddPair(TJsonPair.Create('uf',CAD_CD_C_CID.FieldByName('uf').AsString));
          jso.AddPair(TJsonPair.Create('cep',CAD_CD_C_CID.FieldByName('cep').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_CID.Next;
          //unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cores inicio sincronizada pegando dados!');
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cidades finalizada!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_CID.close;
    FreeAndNil(CAD_CD_C_CID);
  end;
end;

function TServidorMetodos.BuscarClientesPorVendedor: TStream;
var
  jsobj, jso: TJsonObject;
  jsa: TJsonArray;
  jsp: TJsonPair;
  texto: String;
  id_vendedor: string;
  CAD_CD_C_CLI: TClientDataSet;
  Lista: TJsonArray;
  erroJson: TJSONObject;
begin

  //http://170.78.21.225:214/datasnap/rest/TServidorMetodos/BuscarClientes?id_vendedor=

  { Get da Tabela: CAD_TB_C_CLI - Clientes
    Criado por: Maxsuel Victor
    Data: 21/08/2025
  }


  Result := nil;
  Lista := nil;
  CAD_CD_C_CLI := nil;

  try
    // Verifica se o parâmetro existe
    if GetInvocationMetadata().QueryParams.IndexOfName('id_vendedor') = -1 then
      id_vendedor := ''
    else
      id_vendedor := Trim(GetInvocationMetadata().QueryParams.Values['id_vendedor']);

    // Validação do parâmetro
    if id_vendedor = '' then
    begin
      GetInvocationMetadata().ResponseCode := 400;
      GetInvocationMetadata().ResponseContentType := 'application/json; charset=utf-8';

      erroJson := TJSONObject.Create;
      try
        erroJson.AddPair('erro', 'Parâmetro id_vendedor está vazio ou não informado');
        Result := TStringStream.Create(UTF8Encode(erroJson.ToString));
      finally
        erroJson.Free;
      end;

      Exit;
    end;

    // Inicializa componentes
    CAD_CD_C_CLI := TClientDataSet.Create(nil);
    CAD_CD_C_CLI.SetProvider(CAD_DP_C_CID);

    CAD_SQ_C_CID.Close;
    CAD_SQ_C_CID.CommandText := Format(
      'SELECT id_cliente, nome, id_vendedor, doc_cnpj_cpf, doc_ie_identidade, ativo, sexo, endereco, end_complemento, ' +
      'cep, numero, tel_fixo, tel_movel, doc_ip, bairro, id_cidade, dta_cadastro, dta_nascimento, id_regiao, apelido, ' +
      'contribuinte, tipo_cliente, doc_rg_orgao FROM CAD_TB_C_CLI WHERE id_vendedor = %s',
      [QuotedStr(id_vendedor)]
    );
    CAD_CD_C_CLI.Open;

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get das clientes iniciada!');

    Lista := TJsonArray.Create;

    while not CAD_CD_C_CLI.Eof do
    begin
      jso := TJsonObject.Create;
      jso.AddPair('id_cliente', CAD_CD_C_CLI.FieldByName('id_cliente').AsString);
      jso.AddPair('nome', CAD_CD_C_CLI.FieldByName('nome').AsString);
      jso.AddPair('apelido', CAD_CD_C_CLI.FieldByName('apelido').AsString);
      jso.AddPair('id_vendedor', CAD_CD_C_CLI.FieldByName('id_vendedor').AsString);
      jso.AddPair('doc_cnpj_cpf', CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString);
      jso.AddPair('doc_ie_identidade', CAD_CD_C_CLI.FieldByName('doc_ie_identidade').AsString);
      jso.AddPair('ativo', CAD_CD_C_CLI.FieldByName('ativo').AsString);
      jso.AddPair('sexo', CAD_CD_C_CLI.FieldByName('sexo').AsString);
      jso.AddPair('endereco', CAD_CD_C_CLI.FieldByName('endereco').AsString);
      jso.AddPair('end_complemento', CAD_CD_C_CLI.FieldByName('end_complemento').AsString);
      jso.AddPair('cep', CAD_CD_C_CLI.FieldByName('cep').AsString);
      jso.AddPair('numero', CAD_CD_C_CLI.FieldByName('numero').AsString);
      jso.AddPair('tel_fixo', CAD_CD_C_CLI.FieldByName('tel_fixo').AsString);
      jso.AddPair('tel_movel', CAD_CD_C_CLI.FieldByName('tel_movel').AsString);
      jso.AddPair('doc_ip', CAD_CD_C_CLI.FieldByName('doc_ip').AsString);
      jso.AddPair('bairro', CAD_CD_C_CLI.FieldByName('bairro').AsString);
      jso.AddPair('id_cidade', CAD_CD_C_CLI.FieldByName('id_cidade').AsString);
      jso.AddPair('dta_cadastro', CAD_CD_C_CLI.FieldByName('dta_cadastro').AsString);
      jso.AddPair('dta_nascimento', CAD_CD_C_CLI.FieldByName('dta_nascimento').AsString);
      jso.AddPair('id_regiao', CAD_CD_C_CLI.FieldByName('id_regiao').AsString);
      jso.AddPair('contribuinte', CAD_CD_C_CLI.FieldByName('contribuinte').AsString);
      jso.AddPair('tipo_cliente', CAD_CD_C_CLI.FieldByName('tipo_cliente').AsString);
      jso.AddPair('doc_rg_orgao', CAD_CD_C_CLI.FieldByName('doc_rg_orgao').AsString);

      Lista.AddElement(jso);
      CAD_CD_C_CLI.Next;
    end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType := 'application/json; charset=utf-8';
    Result := TStringStream.Create(UTF8Encode(Lista.ToString));

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get das clientes finalizada!');
  except
    on E: Exception do
    begin
      GetInvocationMetadata().ResponseCode := 500;
      GetInvocationMetadata().ResponseContentType := 'application/json; charset=utf-8';

      erroJson := TJSONObject.Create;
      try
        erroJson.AddPair('erro', 'Erro interno: ' + E.Message);
        Result := TStringStream.Create(UTF8Encode(erroJson.ToString));
      finally
        erroJson.Free;
      end;
    end;
  end;

  // Liberação de recursos
  FreeAndNil(Lista);
  if Assigned(CAD_CD_C_CLI) then
  begin
    CAD_CD_C_CLI.Close;
    FreeAndNil(CAD_CD_C_CLI);
  end;
end;


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
    Data: 20/08/2025
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


function TServidorMetodos.BuscarGrupoEstoque: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_GRU: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_GRU - Grupos
    Criado por: Maxsuel Victor
    Data: 20/08/2017
  }
  try
    CAD_CD_C_GRU := TClientDataSet.Create(nil);
    CAD_CD_C_GRU.SetProvider(CAD_DP_C_GRU);

    CAD_SQ_C_GRU.close;
    CAD_SQ_C_GRU.CommandText := '';
    CAD_SQ_C_GRU.CommandText := ' SELECT * FROM CAD_TB_C_GRU ';
    CAD_CD_C_GRU.Open;

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get dos Grupos iniciado!');

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_GRU.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id_grupo',CAD_CD_C_GRU.FieldByName('id_grupo').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_GRU.FieldByName('descricao').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_GRU.Next;
          //unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cores inicio sincronizada pegando dados!');
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get dos Grupos finalizada!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_GRU.close;
    FreeAndNil(CAD_CD_C_GRU);
  end;
end;




function TServidorMetodos.BuscarGrupoEstoqueCor: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_GRU_COR: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_GRU - Grupos
    Criado por: Maxsuel Victor
    Data: 20/08/2017
  }
  try
    CAD_CD_C_GRU_COR := TClientDataSet.Create(nil);
    CAD_CD_C_GRU_COR.SetProvider(CAD_DP_C_GRU_COR);

    CAD_SQ_C_GRU_COR.close;
    CAD_SQ_C_GRU_COR.CommandText := '';
    CAD_SQ_C_GRU_COR.CommandText := ' SELECT * FROM CAD_TB_C_GRU_COR ';
    CAD_CD_C_GRU_COR.Open;

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get dos Cores dos Grupos iniciado!');

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_GRU_COR.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id_grupo',CAD_CD_C_GRU_COR.FieldByName('id_grupo').AsString));
          jso.AddPair(TJsonPair.Create('id_cor',CAD_CD_C_GRU_COR.FieldByName('id_cor').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_GRU_COR.Next;
          //unitformPrincipal.Form1.mmTexto.Lines.Add('Get das cores inicio sincronizada pegando dados!');
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get dos Cores dos Grupos finalizada!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_GRU_COR.close;
    FreeAndNil(CAD_CD_C_GRU_COR);
  end;
end;

function TServidorMetodos.BuscarItens: TStream;
var
  jsobj, jso: TJsonObject;
  jsa: TJsonArray;
  jsp: TJsonPair;
  texto: String;
  CAD_CD_C_ITE: TClientDataSet;
  Lista: TJsonArray;
  erroJson: TJSONObject;
begin

  { Get da Tabela: CAD_TB_C_ITE - Itens
    Criado por: Maxsuel Victor
    Data: 21/08/2025
  }

  try
    // Inicializa componentes
    CAD_CD_C_ITE := TClientDataSet.Create(nil);
    CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);

    CAD_SQ_C_ITE.Close;
    CAD_SQ_C_ITE.CommandText := 'select ' +
           ' id_item ,  descricao , fantasia,  id_grupo ,  ativo ,  preco_avista ,  preco_aprazo ,  id_ncm ,  sgq_personalizado ,  tipo_produto , ' +
           ' id_und_venda  ' +
           ' from cad_tb_c_ite where ativo = true ';
    CAD_CD_C_ITE.Open;

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get dos Itens iniciada!');

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create;

    while not CAD_CD_C_ITE.Eof do
    begin
      jso := TJsonObject.Create;
      jso.AddPair('id_item', CAD_CD_C_ITE.FieldByName('id_item').AsString);
      jso.AddPair('descricao', CAD_CD_C_ITE.FieldByName('descricao').AsString);
      jso.AddPair('fantasia', CAD_CD_C_ITE.FieldByName('fantasia').AsString);
      jso.AddPair('ativo', CAD_CD_C_ITE.FieldByName('ativo').AsString);
      jso.AddPair('preco_avista', CAD_CD_C_ITE.FieldByName('preco_avista').AsString);
      jso.AddPair('preco_aprazo', CAD_CD_C_ITE.FieldByName('preco_aprazo').AsString);
      jso.AddPair('id_ncm', CAD_CD_C_ITE.FieldByName('id_ncm').AsString);
      jso.AddPair('sgq_personalizado', CAD_CD_C_ITE.FieldByName('sgq_personalizado').AsString);
      jso.AddPair('tipo_produto', CAD_CD_C_ITE.FieldByName('tipo_produto').AsString);
      jso.AddPair('id_und_venda', CAD_CD_C_ITE.FieldByName('id_und_venda').AsString);

      Lista.AddElement(jso);
      CAD_CD_C_ITE.Next;
    end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType := 'application/json; charset=utf-8';
    Result := TStringStream.Create(UTF8Encode(Lista.ToString));

    unitformPrincipal.Form1.mmTexto.Lines.Add('Get dos Itens finalizada!');
  except
    on E: Exception do
    begin
      GetInvocationMetadata().ResponseCode := 500;
      GetInvocationMetadata().ResponseContentType := 'application/json; charset=utf-8';

      erroJson := TJSONObject.Create;
      try
        erroJson.AddPair('erro', 'Erro interno: ' + E.Message);
        Result := TStringStream.Create(UTF8Encode(erroJson.ToString));
      finally
        erroJson.Free;
      end;
    end;
  end;

  // Liberação de recursos
  if Assigned(CAD_CD_C_ITE) then
  begin
    FreeAndNil(Lista);
    CAD_CD_C_ITE.Close;
    FreeAndNil(CAD_CD_C_ITE);
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

