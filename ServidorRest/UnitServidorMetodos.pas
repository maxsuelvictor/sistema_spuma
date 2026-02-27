unit UnitServidorMetodos;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
    System.IniFiles,Datasnap.DBClient, DbxDevartPostgreSQL, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Forms, Data.DBXPlatform,
  Data.DBXCommon,Vcl.Dialogs;

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
    FAT_DP_M_PED: TDataSetProvider;
    FAT_SQ_M_PED: TSQLDataSet;
    FAT_DS_M_PED: TDataSource;
    FAT_SQ_M_PED_TIT: TSQLDataSet;
    FAT_SQ_M_PED_ITE: TSQLDataSet;
    CAD_SQ_C_SEQ: TSQLDataSet;
    CAD_DP_C_SEQ: TDataSetProvider;
    FAT_CD_M_PED: TClientDataSet;
    FAT_CD_M_PEDid_pedido: TIntegerField;
    FAT_CD_M_PEDid_empresa: TIntegerField;
    FAT_CD_M_PEDdta_pedido: TDateField;
    FAT_CD_M_PEDid_tipo_mov_estoque: TIntegerField;
    FAT_CD_M_PEDid_vendedor: TIntegerField;
    FAT_CD_M_PEDobs: TWideStringField;
    FAT_CD_M_PEDvlr_bruto: TFMTBCDField;
    FAT_CD_M_PEDvlr_desconto: TFMTBCDField;
    FAT_CD_M_PEDper_desconto: TFloatField;
    FAT_CD_M_PEDvlr_liquido: TFMTBCDField;
    FAT_CD_M_PEDhor_pedido: TSQLTimeStampField;
    FAT_CD_M_PEDid_condicao_pag: TIntegerField;
    FAT_CD_M_PEDpcp_obs: TWideStringField;
    FAT_CD_M_PEDpcp_id_opr: TIntegerField;
    FAT_CD_M_PEDsituacao: TIntegerField;
    FAT_CD_M_PEDsituacao_aprovacao: TIntegerField;
    FAT_CD_M_PEDid_atendente: TIntegerField;
    FAT_CD_M_PEDid_responsavel: TIntegerField;
    FAT_CD_M_PEDid_cliente: TIntegerField;
    FAT_CD_M_PEDtipo_restricao: TWideStringField;
    FAT_CD_M_PEDid_almoxarifado: TIntegerField;
    FAT_CD_M_PEDjustificativa: TWideStringField;
    FAT_CD_M_PEDid_usuario_lib: TIntegerField;
    FAT_CD_M_PEDcod_lme: TWideStringField;
    FAT_CD_M_PEDrev_lme: TWideStringField;
    FAT_CD_M_PEDorigem: TIntegerField;
    FAT_CD_M_PEDdispositivo: TWideStringField;
    FAT_CD_M_PEDgps_latitude: TFloatField;
    FAT_CD_M_PEDgps_longitude: TFloatField;
    FAT_CD_M_PEDcubagem: TFloatField;
    FAT_CD_M_PEDid_orcamento: TIntegerField;
    FAT_CD_M_PEDenvia_carga: TBooleanField;
    FAT_CD_M_PEDdta_prev_entrega: TDateField;
    FAT_CD_M_PEDid_abertura: TIntegerField;
    FAT_CD_M_PEDdias_cpg_prazo: TIntegerField;
    FAT_CD_M_PEDoffline: TBooleanField;
    FAT_CD_M_PEDconferido: TBooleanField;
    FAT_CD_M_PEDid_conf: TIntegerField;
    FAT_CD_M_PEDdta_conf: TDateField;
    FAT_CD_M_PEDhor_conf: TTimeField;
    FAT_CD_M_PEDresultado_conf: TIntegerField;
    FAT_CD_M_PEDid_resp_conf: TIntegerField;
    FAT_CD_M_PEDid_propriedade: TIntegerField;
    FAT_CD_M_PEDid_mkt: TIntegerField;
    FAT_CD_M_PEDvlr_frete: TFMTBCDField;
    FAT_CD_M_PEDmod_frete: TIntegerField;
    FAT_CD_M_PEDcan_usuario: TIntegerField;
    FAT_CD_M_PEDcan_data: TDateField;
    FAT_CD_M_PEDcan_motivo: TWideStringField;
    FAT_CD_M_PEDcan_hora: TTimeField;
    FAT_CD_M_PEDsemana: TIntegerField;
    FAT_CD_M_PEDid_pedido_mob: TIntegerField;
    FAT_CD_M_PEDid_motorista: TIntegerField;
    FAT_CD_M_PEDid_placa: TWideStringField;
    FAT_CD_M_PEDvlr_credito: TFMTBCDField;
    FAT_CD_M_PEDid_pedido_temp_mob: TIntegerField;
    FAT_CD_M_PEDvlr_desc_especial: TFMTBCDField;
    FAT_CD_M_PEDvlr_desc_basico: TFMTBCDField;
    FAT_CD_M_PEDsgq_per_comissao: TFloatField;
    FAT_CD_M_PEDqtde_volume: TFloatField;
    FAT_CD_M_PEDvlr_icm_desn: TFMTBCDField;
    FAT_CD_M_PEDvlr_desc_produtos: TFMTBCDField;
    FAT_CD_M_PEDper_desc_produtos: TFloatField;
    FAT_CD_M_PEDvlr_produtos: TFMTBCDField;
    FAT_CD_M_PEDvlr_serv_bruto: TFMTBCDField;
    FAT_CD_M_PEDvlr_desc_servicos: TFMTBCDField;
    FAT_CD_M_PEDper_desc_servicos: TFloatField;
    FAT_CD_M_PEDvlr_ser_liquido: TFMTBCDField;
    FAT_CD_M_PEDvlr_terceiro: TFMTBCDField;
    FAT_CD_M_PEDvlr_desc_terceiro: TFMTBCDField;
    FAT_CD_M_PEDper_desc_terceiro: TFloatField;
    FAT_CD_M_PEDvlr_terc_liquido: TFMTBCDField;
    FAT_CD_M_PEDped_gera_fin_separado: TBooleanField;
    FAT_CD_M_PEDvlr_prod_liquido: TFMTBCDField;
    FAT_CD_M_PEDsepara_prod_serv: TBooleanField;
    FAT_CD_M_PEDvlr_cred_produtos: TFMTBCDField;
    FAT_CD_M_PEDvlr_cred_servicos: TFMTBCDField;
    FAT_CD_M_PEDid_pedido_orig: TIntegerField;
    FAT_CD_M_PEDid_mecanico: TIntegerField;
    FAT_CD_M_PEDvlr_desc_pos_fat: TFMTBCDField;
    FAT_CD_M_PEDsgq_texto_cond_pgto: TWideStringField;
    FAT_CD_M_PEDper_desc_basico: TFloatField;
    FAT_CD_M_PEDper_desc_especial: TFloatField;
    FAT_CD_M_PEDdta_liberacao: TDateField;
    FAT_CD_M_PEDpedido_automatico: TBooleanField;
    FAT_CD_M_PEDpedido_origem_aut: TIntegerField;
    FAT_CD_M_PEDgerar_pedido_diferenca: TBooleanField;
    FAT_CD_M_PEDid_pedido_gerado: TIntegerField;
    FAT_CD_M_PEDper_desconto_fat: TFloatField;
    FAT_CD_M_PEDtexto_diversos_temp: TWideStringField;
    FAT_CD_M_PEDid_func_pri_impressao: TIntegerField;
    FAT_CD_M_PEDdta_pri_impressao: TDateField;
    FAT_CD_M_PEDhor_pri_impressao: TTimeField;
    FAT_CD_M_PEDid_func_seg_impressao: TIntegerField;
    FAT_CD_M_PEDdta_seg_impressao: TDateField;
    FAT_CD_M_PEDhor_seg_impressao: TTimeField;
    FAT_CD_M_PEDid_func_ter_impressao: TIntegerField;
    FAT_CD_M_PEDdta_ter_impressao: TDateField;
    FAT_CD_M_PEDhor_ter_impressao: TTimeField;
    FAT_CD_M_PEDmotivo_seg_impressao: TWideStringField;
    FAT_CD_M_PEDmotivo_ter_impressao: TWideStringField;
    FAT_CD_M_PEDFAT_SQ_M_PED_ITE: TDataSetField;
    FAT_CD_M_PEDFAT_SQ_M_PED_TIT: TDataSetField;
    FAT_CD_M_PED_ITE: TClientDataSet;
    FAT_CD_M_PED_TIT: TClientDataSet;
    FAT_SQ_R_PED: TSQLDataSet;
    FAT_DP_R_PED: TDataSetProvider;
    FAT_CD_R_PED: TClientDataSet;
    FAT_SQ_R_PED_ITE: TSQLDataSet;
    FAT_DS_R_PED: TDataSource;
    FAT_SQ_R_PED_TIT: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    function updateEnviarFrutas(const Dados: TJSONArray): TJSONObject;
    function ConexaoAberta: string;
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    var
       xMsg: String;

    procedure GerarSqlTxt(texto: String);

    procedure enReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

    function ConexaoOK: string;

    function BuscarCores: TStream;

    function BuscarRegioes: TStream;

    function BuscarGrupoEstoque: TStream;

    function BuscarGrupoEstoqueCor: TStream;

    function BuscarCidades: TStream;

    function BuscarClientesPorVendedor: TStream;

    function BuscarItens: TStream;

    function BuscarPedidosRelatorio(const AJSON: TJSONValue): string;

    // Posts
    function updateEnviarCores(const Dados: TJSONArray): TJSONObject;
    function updateEnviarRegioes(const Dados: TJSONArray): TJSONObject;
    //function updateReceberPedidos(const AJSON: string): string;
    function updateReceberPedidos(const AJSON: TJSONValue): string;

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


function TServidorMetodos.ConexaoAberta: string;
begin

end;

function TServidorMetodos.ConexaoOK: string;
begin

  result := 'false';
  if ConexaoNW.Connected = true then
     result := 'true';

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
          jso.AddPair(TJsonPair.Create('tipo_item',CAD_CD_C_GRU.FieldByName('tipo_item').AsString));
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
      jso.AddPair('id_grupo', CAD_CD_C_ITE.FieldByName('id_grupo').AsString);
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

function TServidorMetodos.BuscarPedidosRelatorio(
  const AJSON: TJSONValue): string;
begin
  {       PED.id_pedido,
       ped.dta_pedido,
       ped.vlr_bruto,
       ped.vlr_desconto,
       ped.vlr_liquido,
       INT_NOMECLI,
       INT_NOMETME,
       INT_NOMEFUN,
       int_desc_cond_pag,
       INT_NOMEATE,
       INT_NOMERES,
       INT_NOMECID,
       INT_NOMEEST,
       INT_CPFCNPJ,
       int_pessoacli,
       INT_ID_PERFIL,
       int_sitaprov,
       int_sitped,
       int_sitped2,
       int_ie_rg_cli,
       INT_EMPFANTASIA,
       DTA_EMISSAO_NFE,
       ORDEM_FAT }
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

procedure TServidorMetodos.enReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  xMsg := '';

  GerarSqlTxt(' Erro no ' + DataSet.Name + ', ' + #13 +
              ' msg: ' + e.Message);

  xMsg := ' Erro no ' + DataSet.Name + ', ' + #13 +
          ' msg: ' + e.Message;

end;


procedure TServidorMetodos.GerarSqlTxt(texto: String);
var
  Arquivo: TextFile;
  txt,tempo,data: String;
begin

   { TODO -oMaxsuel -cCriação :
     Criado por Maxsuel Victor - Em 17/03/2017
     Para gerar o txt do select de SQLDataSet }

 // Quando for utilizar o código abaixo basta descomentar
 // por Maxsuel Victor, 21/03/2017

   tempo := FormatDateTime('HH:MM:SS',time);
   tempo := StringReplace(tempo,':','-',[rfReplaceAll]);

   data := FormatDateTime('DD/MM/YYYY',date);
   data := StringReplace(data,'/','_',[rfReplaceAll]);


   if not (DirectoryExists(ExtractFilePath(Application.ExeName)+'logsServerMobile')) then
      ForceDirectories(ExtractFilePath(Application.ExeName)+'logsServerMobile');

   txt := ExtractFilePath(Application.ExeName)+'logsServerMobile\ServerMobile_'+data+'.txt';

   AssignFile(Arquivo,txt);

   if not (FileExists(txt)) then
      Rewrite(Arquivo) //abre o arquivo para escrita
   else
      append(Arquivo);
   Writeln(Arquivo,texto);
   Closefile(Arquivo); //fecha o handle de arquivo
end;


//function TServidorMetodos.updateReceberPedidos(const AJSON: string): string;
function TServidorMetodos.updateReceberPedidos(const AJSON: TJSONValue): string;
var
  JSONArray, ItensArray, TitulosArray, RetornoArray: TJSONArray;
  PedidoObj, ItemObj, TituloObj,erroJson, RetornoObj, RetornoFinal : TJSONObject;
  i, j: Integer;

  CAD_CD_C_SEQ: TClientDataSet;
  Vtran: TDBXTransaction;
  Val: TJSONValue;
begin


  JSONArray := nil;
  try
    // Parse do JSON recebido
    {JSONArray := TJSONObject.ParseJSONValue(AJSON) as TJSONArray;
    if JSONArray = nil then
      Exit('400 - JSON inválido');}
    if not (AJSON is TJSONArray) then
       Exit('400 - JSON inválido: esperado um array');

        JSONArray := TJSONArray(AJSON);
        RetornoArray := TJSONArray.Create;
        RetornoObj := TJSONObject.Create;

        CAD_CD_C_SEQ := TClientDataSet.Create(nil);
        CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);

        CAD_SQ_C_SEQ.close;
        CAD_SQ_C_SEQ.CommandText := '';
        CAD_SQ_C_SEQ.CommandText := ' SELECT * FROM CAD_TB_C_SEQ ' +
                                    ' WHERE ID_TABELA in (''FAT_TB_M_PED'',''FAT_TB_M_NFE_ITE'',''FAT_TB_M_NFE_TIT'')';
        CAD_CD_C_SEQ.Open;

        if not (cad_cd_c_seq.locate('id_tabela','FAT_TB_M_PED',[])) then
          begin
             CAD_CD_C_SEQ.Insert;
             CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'FAT_TB_M_PED';
             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
             CAD_CD_C_SEQ.Post;
          end;
       if not (cad_cd_c_seq.locate('id_tabela','FAT_TB_M_NFE_ITE',[])) then
          begin
             CAD_CD_C_SEQ.Insert;
             CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'FAT_TB_M_NFE_ITE';
             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
             CAD_CD_C_SEQ.Post;
          end;
       if not (cad_cd_c_seq.locate('id_tabela','FAT_TB_M_NFE_TIT',[])) then
          begin
             CAD_CD_C_SEQ.Insert;
             CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'FAT_TB_M_NFE_TIT';
             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
             CAD_CD_C_SEQ.Post;
          end;


        // Abre os datasets
        FAT_CD_M_PED.Close;
        FAT_CD_M_PED_ITE.Close;
        FAT_CD_M_PED_TIT.Close;

        FAT_CD_M_PED.Open;
        FAT_CD_M_PED_ITE.Open;
        FAT_CD_M_PED_TIT.Open;

        // Loop pelos pedidos
        for i := 0 to JSONArray.Count - 1 do
        begin
          PedidoObj := JSONArray.Items[i] as TJSONObject;

          FAT_CD_M_PED.Append;
          FAT_CD_M_PED.FieldByName('id_empresa').AsInteger := PedidoObj.GetValue<Integer>('id_empresa');

          cad_cd_c_seq.locate('id_tabela','FAT_TB_M_PED',[]);

          CAD_CD_C_SEQ.edit;
          CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
              CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
          CAD_CD_C_SEQ.Post;

          FAT_CD_M_PED.FieldByName('id_pedido').AsString :=
                CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString;

          FAT_CD_M_PED.FieldByName('id_pedido_mob').AsInteger := PedidoObj.GetValue<Integer>('id_pedido');
          FAT_CD_M_PED.FieldByName('dta_pedido').AsString  := PedidoObj.GetValue<string>('dta_pedido');
          FAT_CD_M_PED.FieldByName('hor_pedido').AsString  := PedidoObj.GetValue<string>('hora_pedido');
          FAT_CD_M_PED.FieldByName('id_cliente').AsInteger := PedidoObj.GetValue<Integer>('id_cliente');
          FAT_CD_M_PED.FieldByName('vlr_liquido').AsFloat  := PedidoObj.GetValue<Double>('vlr_liquido');

          FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsString := PedidoObj.GetValue<string>('id_tipo_mov_estoque');
          FAT_CD_M_PED.FieldByName('dta_prev_entrega').AsDateTime  := FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime + 30;
          FAT_CD_M_PED.FieldByName('sgq_per_comissao').AsString    := PedidoObj.GetValue<string>('sgq_per_comissao');


          FAT_CD_M_PED.FieldByName('id_condicao_pag').AsInteger    := 1; // À vista //PedidoObj.GetValue<Integer>('id_cnd_pagto');
          FAT_CD_M_PED.FieldByName('sgq_texto_cond_pgto').AsString := PedidoObj.GetValue<string>('dta_pedido');
          FAT_CD_M_PED.FieldByName('obs').AsString                 := PedidoObj.GetValue<string>('obs_geral');
          FAT_CD_M_PED.FieldByName('pcp_obs').AsString             := PedidoObj.GetValue<string>('obs_producao');
          FAT_CD_M_PED.FieldByName('vlr_desconto').AsString        := PedidoObj.GetValue<string>('vlr_desconto');
          FAT_CD_M_PED.FieldByName('vlr_desc_especial').AsString   := PedidoObj.GetValue<string>('vlr_desc_especial');
          FAT_CD_M_PED.FieldByName('vlr_bruto').AsString           := PedidoObj.GetValue<string>('vlr_bruto');
          FAT_CD_M_PED.FieldByName('vlr_liquido').AsString         := PedidoObj.GetValue<string>('vlr_liquido');
          FAT_CD_M_PED.FieldByName('id_vendedor').AsString         := PedidoObj.GetValue<string>('id_funcionario');
          FAT_CD_M_PED.FieldByName('id_atendente').AsString        := PedidoObj.GetValue<string>('id_funcionario');
          FAT_CD_M_PED.FieldByName('id_responsavel').AsString      := PedidoObj.GetValue<string>('id_funcionario');
          FAT_CD_M_PED.FieldByName('per_desc_basico').AsString     := PedidoObj.GetValue<string>('per_desc_basico');
          FAT_CD_M_PED.FieldByName('per_desc_especial').AsString   := PedidoObj.GetValue<string>('per_desc_especial');
          FAT_CD_M_PED.FieldByName('per_desconto').AsString        := PedidoObj.GetValue<string>('per_desconto');
          FAT_CD_M_PED.FieldByName('vlr_desc_basico').AsString     := PedidoObj.GetValue<string>('vlr_desc_basico');

          // Deve calcular a cubagem
          FAT_CD_M_PED.FieldByName('cubagem').AsString := '0';

          // verificar no enSoftSpuma como é alimentado esse campo id_almoxarifado
          FAT_CD_M_PED.FieldByName('id_almoxarifado').AsString := '1';

          // 1 - Dispositivo móvel
          FAT_CD_M_PED.FieldByName('origem').AsString := '1';

          FAT_CD_M_PED.FieldByName('situacao').AsString               := '0';
          FAT_CD_M_PED.FieldByName('situacao_aprovacao').AsString     := '0';

          FAT_CD_M_PED.FieldByName('pedido_automatico').AsString      := 'false';
          FAT_CD_M_PED.FieldByName('gerar_pedido_diferenca').AsString := 'false';
          FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsString         := '0';
          FAT_CD_M_PED.FieldByName('conferido').AsString              := 'false';
          FAT_CD_M_PED.FieldByName('vlr_frete').AsString              := '0';
          FAT_CD_M_PED.FieldByName('mod_frete').AsString              := '0';
          FAT_CD_M_PED.FieldByName('vlr_icm_desn').AsString           := '0';
          FAT_CD_M_PED.FieldByName('vlr_desc_produtos').AsString      := '0';
          FAT_CD_M_PED.FieldByName('per_desc_produtos').AsString      := '0';
          FAT_CD_M_PED.FieldByName('vlr_produtos').AsString           := '0';
          FAT_CD_M_PED.FieldByName('vlr_serv_bruto').AsString         := '0';
          FAT_CD_M_PED.FieldByName('vlr_desc_servicos').AsString      := '0';
          FAT_CD_M_PED.FieldByName('per_desc_servicos').AsString      := '0';
          FAT_CD_M_PED.FieldByName('vlr_ser_liquido').AsString        := '0';
          FAT_CD_M_PED.FieldByName('vlr_terceiro').AsString           := '0';
          FAT_CD_M_PED.FieldByName('vlr_desc_terceiro').AsString      := '0';
          FAT_CD_M_PED.FieldByName('per_desc_terceiro').AsString      := '0';
          FAT_CD_M_PED.FieldByName('vlr_terc_liquido').AsString       := '0';
          FAT_CD_M_PED.FieldByName('ped_gera_fin_separado').AsString  := 'false';
          FAT_CD_M_PED.FieldByName('vlr_prod_liquido').AsString       := '0';
          FAT_CD_M_PED.FieldByName('separa_prod_serv').AsString       := 'false';
          FAT_CD_M_PED.FieldByName('vlr_cred_produtos').AsString      := '0';
          FAT_CD_M_PED.FieldByName('vlr_cred_servicos').AsString      := '0';

          // Monta o objeto de retorno
          RetornoObj.AddPair('id_pedido', FAT_CD_M_PED.FieldByName('id_pedido_mob').AsString);
          RetornoObj.AddPair('id_pedido_servidor', FAT_CD_M_PED.FieldByName('id_pedido').AsString);
          //RetornoArray.AddElement(RetornoObj);

          FAT_CD_M_PED.Post;

          // Itens
          ItensArray := PedidoObj.GetValue<TJSONArray>('itens');
          for j := 0 to ItensArray.Count - 1 do
          begin
            ItemObj := ItensArray.Items[j] as TJSONObject;
            FAT_CD_M_PED_ITE.Append;
            FAT_CD_M_PED_ITE.FieldByName('id_item').AsInteger := ItemObj.GetValue<Integer>('id_item');
            FAT_CD_M_PED_ITE.FieldByName('id_busca_item').AsString := FAT_CD_M_PED_ITE.FieldByName('id_item').AsString;
            FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsInteger := FAT_CD_M_PED.FieldByName('id_pedido').AsInteger;

            cad_cd_c_seq.locate('id_tabela','FAT_TB_M_NFE_ITE',[]);

            CAD_CD_C_SEQ.edit;
            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
            CAD_CD_C_SEQ.Post;

            FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsString :=
                  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString;


            FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency       := ItemObj.GetValue<Double>('vlr_liquido');
            FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency         := ItemObj.GetValue<Double>('vlr_bruto');
            FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency              := ItemObj.GetValue<Double>('qtde');
            FAT_CD_M_PED_ITE.FieldByName('id_cor').AsInteger             := ItemObj.GetValue<Integer>('id_cor');
            FAT_CD_M_PED_ITE.FieldByName('id_tamanho').AsInteger         := 0;
            FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency       := ItemObj.GetValue<Double>('vlr_liquido');
            FAT_CD_M_PED_ITE.FieldByName('per_desconto').AsCurrency      := ItemObj.GetValue<Double>('per_desconto');
            FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency      := ItemObj.GetValue<Double>('vlr_desconto');
            FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsCurrency      := ItemObj.GetValue<Double>('vlr_unitario');
            FAT_CD_M_PED_ITE.FieldByName('per_desc_basico').AsCurrency     := ItemObj.GetValue<Double>('per_desc_basico');
            FAT_CD_M_PED_ITE.FieldByName('vlr_desc_basico').AsCurrency     := ItemObj.GetValue<Double>('vlr_desc_basico');
            FAT_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency   := ItemObj.GetValue<Double>('vlr_desc_especial');
            FAT_CD_M_PED_ITE.FieldByName('per_desc_especial').AsCurrency   := ItemObj.GetValue<Double>('per_desc_especial');
            FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString          := ItemObj.GetValue<string>('desc_personalizado');

            // Maxsuel Victor , 04/11/2025
            // Esse if é devido o app de vendas, deixar o vlr liquido do pedido sem a soma do vlr_desc_especial,
               // pois no pedido do enSoftSpuma isso já é somado.
            if FAT_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency > 0 then
               begin
                 FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency       := FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency +
                                                                                 FAT_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency;
               end;
            FAT_CD_M_PED_ITE.Post;
          end;

          // Títulos
          TitulosArray := PedidoObj.GetValue<TJSONArray>('titulos');
          for j := 0 to TitulosArray.Count - 1 do
          begin
            TituloObj := TitulosArray.Items[j] as TJSONObject;
            FAT_CD_M_PED_TIT.Append;
            FAT_CD_M_PED_TIT.FieldByName('id_pedido').AsInteger := FAT_CD_M_PED.FieldByName('id_pedido').AsInteger;

            cad_cd_c_seq.locate('id_tabela','FAT_TB_M_NFE_TIT',[]);
            CAD_CD_C_SEQ.edit;
            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
            CAD_CD_C_SEQ.Post;

            FAT_CD_M_PED_TIT.FieldByName('id_titulo').AsString     := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString;
            FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString := TituloObj.GetValue<string>('dta_vencimento');
            FAT_CD_M_PED_TIT.FieldByName('dias').AsString           := TituloObj.GetValue<string>('dias');

            // 23/08/25 - No appVendas
            { Condição de Pagamento (id_cnd_pagto):
               opções “A vista”=0, “Cheque”=1, “Boleto”=2 }
            // Para o sistema enSoftSpuma será assim:
            // 0 -> 16 A vista D
            // 1 -> 12 Cheque D
            // 2 -> 3 Boleto

            // esse código depois tem que ser alterado para forma correta de programação;
            case TituloObj.GetValue<integer>('id_forma_pag') of
              0: FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsInteger := 16;
              1: FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsInteger := 12;
              2: FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsInteger := 3;
            end;

            FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsFloat := TituloObj.GetValue<Double>('vlr_titulo');

            FAT_CD_M_PED_TIT.Post;
          end;
        end;
    try
       try
          Vtran := ConexaoNW.BeginTransaction;

          // Aplica atualizações

          CAD_CD_C_SEQ.OnReconcileError := enReconcileError;
          if CAD_CD_C_SEQ <> nil then
             if (CAD_CD_C_SEQ.ChangeCount > 0) then
                 CAD_CD_C_SEQ.ApplyUpdates(0);

          FAT_CD_M_PED.OnReconcileError := enReconcileError;
          if FAT_CD_M_PED <> nil then
             if (FAT_CD_M_PED.ChangeCount > 0) then
                 FAT_CD_M_PED.ApplyUpdates(0);

          //FAT_CD_M_PED_ITE.ApplyUpdates(0);
          //FAT_CD_M_PED_TIT.ApplyUpdates(0);

          // Commit da transação
          ConexaoNW.CommitFreeAndNil(Vtran);
          unitformPrincipal.Form1.mmTexto.Lines.Add('Post do pedido de venda foi sincronizado!');

       finally
          ConexaoNW.RollbackIncompleteFreeAndNil(Vtran);
       end;
      GetInvocationMetadata().ResponseCode := 200;
      GetInvocationMetadata().ResponseContentType := 'application/json; charset=utf-8';
      //Result := 'Retorno 200';

      // Retorna o JSON como string

          // Agora você monta o JSON final corretamente
         { RetornoFinal := TJSONObject.Create;
          RetornoFinal.AddPair('result', RetornoArray);

          Result := RetornoFinal.ToJSON;}

      Result := RetornoObj.ToString;


     // Result := RetornoArray.ToJSON; // Resposta com os id_pedido criado no servidor
    except
    on E: Exception do
    begin
      GetInvocationMetadata().ResponseCode := 500;
      GetInvocationMetadata().ResponseContentType := 'application/json; charset=utf-8';

      erroJson := TJSONObject.Create;
      try
        erroJson.AddPair('erro', 'Erro interno: ' + E.Message);
        Result := 'Erro 500 - Intero';
      finally
        erroJson.Free;
      end;
    end;
  end;

  finally
    if CAD_CD_C_SEQ <> nil then
       FreeAndNil(CAD_CD_C_SEQ);
    RetornoArray.Free;
    //JSONArray.Free;
  end;
end;




function TServidorMetodos.updateEnviarRegioes(
  const Dados: TJSONArray): TJSONObject;
begin

end;

end.

