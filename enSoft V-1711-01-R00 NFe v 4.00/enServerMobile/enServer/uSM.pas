unit uSM;

interface

uses
  System.SysUtils, System.Classes,System.Json,System.IniFiles,System.Math,System.Variants,Vcl.Forms,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,Vcl.Graphics,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,Data.DBXPlatform,Datasnap.DBClient, Datasnap.Provider, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.PG, FireDAC.Phys.PGDef,Data.DBXCommon,IdCoderMIME,IdGlobal;

type
 {$METHODINFO ON}
  TSM = class(TDataModule)
    conexaoNW: TFDConnection;
    CAD_FD_C_GRU: TFDQuery;
    CAD_DP_C_GRU: TDataSetProvider;
    CAD_FD_C_CLI: TFDQuery;
    CAD_DP_C_CLI: TDataSetProvider;
    CAD_FD_C_CPG: TFDQuery;
    CAD_DP_C_CPG: TDataSetProvider;
    CAD_FD_C_ITE: TFDQuery;
    CAD_DP_C_ITE: TDataSetProvider;
    CAD_FD_C_ITE_PRC: TFDQuery;
    CAD_FD_C_FUN: TFDQuery;
    CAD_DP_C_FUN: TDataSetProvider;
    CAD_FD_C_VEI: TFDQuery;
    CAD_DP_C_VEI: TDataSetProvider;
    CAD_FD_C_PAR: TFDQuery;
    CAD_DP_C_PAR: TDataSetProvider;
    CAD_DP_C_ITE_PRC: TDataSetProvider;
    CAD_FD_C_SEQ: TFDQuery;
    CAD_DP_C_SEQ: TDataSetProvider;
    CAD_FD_C_SEQid_tabela: TWideStringField;
    CAD_FD_C_SEQsequencia: TIntegerField;
    OFI_FD_M_OCV: TFDQuery;
    OFI_FD_M_OCV_ITE: TFDQuery;
    OFI_DP_M_OCV: TDataSetProvider;
    OFI_DS_M_OCV: TDataSource;
    OFI_FD_M_OCVid_orcamento: TIntegerField;
    OFI_FD_M_OCVid_empresa: TIntegerField;
    OFI_FD_M_OCVplaca: TWideStringField;
    OFI_FD_M_OCVkm_atual: TIntegerField;
    OFI_FD_M_OCVdta_orcamento: TDateField;
    OFI_FD_M_OCVdta_validade: TDateField;
    OFI_FD_M_OCVid_cliente: TIntegerField;
    OFI_FD_M_OCVnome_cliente: TWideStringField;
    OFI_FD_M_OCVid_funcionario: TIntegerField;
    OFI_FD_M_OCVid_analista: TIntegerField;
    OFI_FD_M_OCVid_condicao_pag: TIntegerField;
    OFI_FD_M_OCVvlr_servicos: TBCDField;
    OFI_FD_M_OCVvlr_produtos: TBCDField;
    OFI_FD_M_OCVvlr_terceiro: TBCDField;
    OFI_FD_M_OCVdes_servicos: TBCDField;
    OFI_FD_M_OCVdes_produtos: TBCDField;
    OFI_FD_M_OCVvlr_total: TBCDField;
    OFI_FD_M_OCVstatus: TIntegerField;
    OFI_FD_M_OCVobs: TWideStringField;
    OFI_FD_M_OCVdoc_cnpj_cpf: TWideStringField;
    OFI_FD_M_OCVhor_orcamento: TTimeField;
    OFI_FD_M_OCVcan_motivo: TWideStringField;
    OFI_FD_M_OCVcan_data: TDateField;
    OFI_FD_M_OCVcan_hora: TTimeField;
    OFI_FD_M_OCVcan_usuario: TIntegerField;
    OFI_FD_M_OCVtipo_orcamento: TIntegerField;
    OFI_FD_M_OCVchassi: TWideStringField;
    OFI_FD_M_OCV_ITEid_orcamento: TIntegerField;
    OFI_FD_M_OCV_ITEid_sequencia: TIntegerField;
    OFI_FD_M_OCV_ITEid_item: TIntegerField;
    OFI_FD_M_OCV_ITEid_busca_item: TWideStringField;
    OFI_FD_M_OCV_ITEqtde: TFloatField;
    OFI_FD_M_OCV_ITEvlr_unitario: TBCDField;
    OFI_FD_M_OCV_ITEvlr_bruto: TBCDField;
    OFI_FD_M_OCV_ITEper_desconto: TFloatField;
    OFI_FD_M_OCV_ITEvlr_desconto: TBCDField;
    OFI_FD_M_OCV_ITEvlr_liquido: TBCDField;
    OFI_FD_M_OCV_ITEid_terceiro: TIntegerField;
    OFI_FD_M_OCV_ITEvlr_unitario_orig: TBCDField;
    OFI_FD_M_OCV_ITEnome_ite: TWideStringField;
    OFI_FD_M_OCV_FOT: TFDQuery;
    OFI_FD_M_OCV_FOTid_orcamento: TIntegerField;
    OFI_FD_M_OCV_FOTid_sequencia: TIntegerField;
    OFI_FD_M_OCV_FOTcaminho_foto: TWideStringField;
    OFI_FD_M_ORV: TFDQuery;
    OFI_DP_M_ORV: TDataSetProvider;
    OFI_FD_M_ORV_ITE: TFDQuery;
    OFI_DS_M_ORV: TDataSource;
    OFI_FD_M_ORV_FOT: TFDQuery;
    EST_FD_M_FEA: TFDQuery;
    EST_DP_M_FEA: TDataSetProvider;
    EST_FD_M_FES: TFDQuery;
    EST_DP_M_FES: TDataSetProvider;
    CAD_FD_C_PAR_CTR: TFDQuery;
    CAD_DP_C_PAR_CTR: TDataSetProvider;
    OFI_FD_M_OCVid_orcamento_mob: TIntegerField;
    OFI_FD_M_ORVid_ordem: TIntegerField;
    OFI_FD_M_ORVid_empresa: TIntegerField;
    OFI_FD_M_ORVdta_emissao: TDateField;
    OFI_FD_M_ORVdta_entrega: TDateField;
    OFI_FD_M_ORVid_cliente: TIntegerField;
    OFI_FD_M_ORVid_veiculo: TIntegerField;
    OFI_FD_M_ORVkm_atual: TIntegerField;
    OFI_FD_M_ORVtanque_combus: TIntegerField;
    OFI_FD_M_ORVid_forma_pag: TIntegerField;
    OFI_FD_M_ORVid_condicao_pag: TIntegerField;
    OFI_FD_M_ORVid_analista: TIntegerField;
    OFI_FD_M_ORVid_orcamento: TIntegerField;
    OFI_FD_M_ORVobs_reclamacao: TWideStringField;
    OFI_FD_M_ORVobs_problema: TWideStringField;
    OFI_FD_M_ORVstatus: TIntegerField;
    OFI_FD_M_ORVvlr_produtos: TBCDField;
    OFI_FD_M_ORVvlr_desc_produtos: TBCDField;
    OFI_FD_M_ORVper_desc_produtos: TFloatField;
    OFI_FD_M_ORVvlr_prod_liquido: TBCDField;
    OFI_FD_M_ORVvlr_serv_bruto: TBCDField;
    OFI_FD_M_ORVvlr_desc_servicos: TBCDField;
    OFI_FD_M_ORVper_desc_servicos: TFloatField;
    OFI_FD_M_ORVvlr_ser_liquido: TBCDField;
    OFI_FD_M_ORVvlr_terceiro: TBCDField;
    OFI_FD_M_ORVvlr_desc_terceiro: TBCDField;
    OFI_FD_M_ORVper_desc_terceiro: TFloatField;
    OFI_FD_M_ORVvlr_terc_liquido: TBCDField;
    OFI_FD_M_ORVvlr_despesas: TBCDField;
    OFI_FD_M_ORVvlr_credito: TBCDField;
    OFI_FD_M_ORVvlr_total: TBCDField;
    OFI_FD_M_ORVid_tipo_os: TIntegerField;
    OFI_FD_M_ORVid_responsavel: TIntegerField;
    OFI_FD_M_ORVcan_usuario: TIntegerField;
    OFI_FD_M_ORVcan_data: TDateField;
    OFI_FD_M_ORVcan_motivo: TWideStringField;
    OFI_FD_M_ORVcan_hora: TTimeField;
    OFI_FD_M_ORVrea_usuario: TIntegerField;
    OFI_FD_M_ORVrea_data: TDateField;
    OFI_FD_M_ORVrea_hora: TTimeField;
    OFI_FD_M_ORVrea_motivo: TWideStringField;
    OFI_FD_M_ORVdta_fechamento: TDateField;
    OFI_FD_M_ORVid_almoxarifado: TIntegerField;
    OFI_FD_M_ORVvlr_cred_produtos: TBCDField;
    OFI_FD_M_ORVvlr_cred_servicos: TBCDField;
    OFI_FD_M_ORVobservacoes: TWideStringField;
    OFI_FD_M_ORVstatus_painel: TIntegerField;
    OFI_FD_M_ORVhor_emissao: TTimeField;
    OFI_FD_M_ORVhor_fechamento: TTimeField;
    OFI_FD_M_ORVsepara_prod_serv: TBooleanField;
    OFI_FD_M_ORVid_equipamento: TIntegerField;
    OFI_FD_M_ORVconvertido: TBooleanField;
    OFI_FD_M_ORVconversao: TBooleanField;
    OFI_FD_M_ORVtipo_ordem: TIntegerField;
    OFI_FD_M_ORVchassi: TWideStringField;
    OFI_FD_M_ORVid_ordem_orig_gar: TIntegerField;
    OFI_FD_M_ORVid_fiscal_ref_entrada: TIntegerField;
    OFI_FD_M_ORVid_ordem_mob: TIntegerField;
    OFI_FD_M_ORV_ITEid_ordem: TIntegerField;
    OFI_FD_M_ORV_ITEid_sequencia: TIntegerField;
    OFI_FD_M_ORV_ITEid_item: TIntegerField;
    OFI_FD_M_ORV_ITEid_busca_item: TWideStringField;
    OFI_FD_M_ORV_ITEqtde: TFloatField;
    OFI_FD_M_ORV_ITEvlr_unitario: TBCDField;
    OFI_FD_M_ORV_ITEvlr_bruto: TBCDField;
    OFI_FD_M_ORV_ITEper_desconto: TFloatField;
    OFI_FD_M_ORV_ITEvlr_desconto: TBCDField;
    OFI_FD_M_ORV_ITEvlr_liquido: TBCDField;
    OFI_FD_M_ORV_ITEid_mecanico: TIntegerField;
    OFI_FD_M_ORV_ITEid_terceiro: TIntegerField;
    OFI_FD_M_ORV_ITEid_responsavel: TIntegerField;
    OFI_FD_M_ORV_ITEcancelada: TBooleanField;
    OFI_FD_M_ORV_ITEvlr_unitario_orig: TBCDField;
    OFI_FD_M_ORV_ITEid_sequencia_ite_ocv: TIntegerField;
    OFI_FD_M_ORV_ITEid_requisicao: TIntegerField;
    OFI_FD_M_ORV_ITEcan_usuario: TIntegerField;
    OFI_FD_M_ORV_ITEcan_data: TDateField;
    OFI_FD_M_ORV_ITEcan_hora: TTimeField;
    OFI_FD_M_ORV_ITEcan_motivo: TWideStringField;
    OFI_FD_M_ORV_ITEdta_requisicao: TDateField;
    OFI_FD_M_ORV_ITEid_cor: TIntegerField;
    OFI_FD_M_ORV_ITEid_tamanho: TIntegerField;
    OFI_FD_M_ORV_ITEid_ordem_subst: TIntegerField;
    OFI_FD_M_ORV_FOTid_ordem: TIntegerField;
    OFI_FD_M_ORV_FOTid_sequencia: TIntegerField;
    OFI_FD_M_ORV_FOTcaminho_foto: TWideStringField;
    PCP_DP_C_MTA: TDataSetProvider;
    PCP_FD_C_MTA: TFDQuery;
    FAT_DP_M_PED: TDataSetProvider;
    FAT_FD_M_PED: TFDQuery;
    FAT_FD_M_PED_ITE: TFDQuery;
    FAT_DP_M_PCA: TDataSetProvider;
    FAT_FD_M_PCA: TFDQuery;
    CAD_DP_C_FPG: TDataSetProvider;
    CAD_FD_C_FPG: TFDQuery;
    OFI_FD_M_ORV_ITEint_tipo_item: TWideStringField;
    OFI_FD_M_ORVordem_substituicao: TBooleanField;
    FAT_FD_M_PCA_PED: TFDQuery;
    FAT_DS_M_PCA: TDataSource;
    FAT_FD_M_PCAid_carregamento: TIntegerField;
    FAT_FD_M_PCAid_responsavel: TIntegerField;
    FAT_FD_M_PCAdta_carregamento: TDateField;
    FAT_FD_M_PCAstatus: TIntegerField;
    FAT_FD_M_PCAid_motorista: TIntegerField;
    FAT_FD_M_PCAplaca: TWideStringField;
    FAT_FD_M_PCA_PEDid_carregamento: TIntegerField;
    FAT_FD_M_PCA_PEDid_pedido: TIntegerField;
    FAT_DS_M_PCA_PED: TDataSource;
    FAT_FD_M_PPD: TFDQuery;
    FAT_DS_M_PPD: TDataSource;
    FAT_FD_M_PPD_ITE: TFDQuery;
    FAT_FD_M_PPDid_pedido: TIntegerField;
    FAT_FD_M_PPDid_empresa: TIntegerField;
    FAT_FD_M_PPDdta_pedido: TDateField;
    FAT_FD_M_PPDid_tipo_mov_estoque: TIntegerField;
    FAT_FD_M_PPDid_vendedor: TIntegerField;
    FAT_FD_M_PPDobs: TWideStringField;
    FAT_FD_M_PPDvlr_bruto: TBCDField;
    FAT_FD_M_PPDvlr_desconto: TBCDField;
    FAT_FD_M_PPDper_desconto: TFloatField;
    FAT_FD_M_PPDvlr_liquido: TBCDField;
    FAT_FD_M_PPDhor_pedido: TSQLTimeStampField;
    FAT_FD_M_PPDid_condicao_pag: TIntegerField;
    FAT_FD_M_PPDpcp_obs: TWideStringField;
    FAT_FD_M_PPDpcp_id_opr: TIntegerField;
    FAT_FD_M_PPDsituacao: TIntegerField;
    FAT_FD_M_PPDsituacao_aprovacao: TIntegerField;
    FAT_FD_M_PPDid_atendente: TIntegerField;
    FAT_FD_M_PPDid_responsavel: TIntegerField;
    FAT_FD_M_PPDid_cliente: TIntegerField;
    FAT_FD_M_PPDtipo_restricao: TWideStringField;
    FAT_FD_M_PPDid_almoxarifado: TIntegerField;
    FAT_FD_M_PPDjustificativa: TWideStringField;
    FAT_FD_M_PPDid_usuario_lib: TIntegerField;
    FAT_FD_M_PPDcod_lme: TWideStringField;
    FAT_FD_M_PPDrev_lme: TWideStringField;
    FAT_FD_M_PPDorigem: TIntegerField;
    FAT_FD_M_PPDdispositivo: TWideStringField;
    FAT_FD_M_PPDgps_latitude: TFloatField;
    FAT_FD_M_PPDgps_longitude: TFloatField;
    FAT_FD_M_PPDcubagem: TFloatField;
    FAT_FD_M_PPDid_orcamento: TIntegerField;
    FAT_FD_M_PPDenvia_carga: TBooleanField;
    FAT_FD_M_PPDdta_prev_entrega: TDateField;
    FAT_FD_M_PPDid_abertura: TIntegerField;
    FAT_FD_M_PPDdias_cpg_prazo: TIntegerField;
    FAT_FD_M_PPDoffline: TBooleanField;
    FAT_FD_M_PPDconferido: TBooleanField;
    FAT_FD_M_PPDid_conf: TIntegerField;
    FAT_FD_M_PPDdta_conf: TDateField;
    FAT_FD_M_PPDhor_conf: TTimeField;
    FAT_FD_M_PPDresultado_conf: TIntegerField;
    FAT_FD_M_PPDid_resp_conf: TIntegerField;
    FAT_FD_M_PPDid_propriedade: TIntegerField;
    FAT_FD_M_PPDid_mkt: TIntegerField;
    FAT_FD_M_PPDvlr_frete: TBCDField;
    FAT_FD_M_PPDmod_frete: TIntegerField;
    FAT_FD_M_PPDcan_usuario: TIntegerField;
    FAT_FD_M_PPDcan_data: TDateField;
    FAT_FD_M_PPDcan_motivo: TWideStringField;
    FAT_FD_M_PPDcan_hora: TTimeField;
    FAT_FD_M_PPDid_pedido_temp_mob: TIntegerField;
    FAT_FD_M_PPDsemana: TIntegerField;
    FAT_FD_M_PPDid_pedido_mob: TIntegerField;
    FAT_FD_M_PPDid_motorista: TIntegerField;
    FAT_FD_M_PPDid_placa: TWideStringField;
    FAT_FD_M_PPDvlr_credito: TBCDField;
    FAT_FD_M_PPDvlr_desc_especial: TBCDField;
    FAT_FD_M_PPDvlr_desc_basico: TBCDField;
    FAT_FD_M_PPDsgq_per_comissao: TFloatField;
    FAT_FD_M_PPD_ITEid_pedido: TIntegerField;
    FAT_FD_M_PPD_ITEid_sequencia: TIntegerField;
    FAT_FD_M_PPD_ITEid_item: TIntegerField;
    FAT_FD_M_PPD_ITEqtde: TFloatField;
    FAT_FD_M_PPD_ITEvlr_unitario: TBCDField;
    FAT_FD_M_PPD_ITEvlr_bruto: TBCDField;
    FAT_FD_M_PPD_ITEper_desconto: TFloatField;
    FAT_FD_M_PPD_ITEvlr_desconto: TBCDField;
    FAT_FD_M_PPD_ITEvlr_liquido: TBCDField;
    FAT_FD_M_PPD_ITEid_cor: TIntegerField;
    FAT_FD_M_PPD_ITEid_tamanho: TIntegerField;
    FAT_FD_M_PPD_ITEid_busca_item: TWideStringField;
    FAT_FD_M_PPD_ITEvlr_unitario_orig: TBCDField;
    FAT_FD_M_PPD_ITEper_desc_max: TFloatField;
    FAT_FD_M_PPD_ITEpcp_obs_item: TWideStringField;
    FAT_FD_M_PPD_ITEqtde_conferida: TFloatField;
    FAT_FD_M_PPD_ITEid_cultura: TIntegerField;
    FAT_FD_M_PPD_ITEvlr_frete: TBCDField;
    FAT_FD_M_PPD_ITEitem_desc: TWideStringField;
    FAT_FD_M_PPDnome_cliente: TWideStringField;
    FAT_FD_M_PPDend_cliente: TWideStringField;
    FAT_FD_M_PPDcep_cliente: TWideStringField;
    FAT_FD_M_PPDnro_cliente: TWideStringField;
    FAT_FD_M_PPDcid_desc_cliente: TWideMemoField;
    FAT_FD_M_PPDnome_vendedor: TWideStringField;
    CAD_DP_C_CTC: TDataSetProvider;
    CAD_FD_C_CTC: TFDQuery;
    CAD_DP_C_PCT: TDataSetProvider;
    CAD_FD_C_PCT: TFDQuery;
    FIN_DP_M_PAG: TDataSetProvider;
    FIN_FD_M_PAG: TFDQuery;
    FIN_DP_M_LDM: TDataSetProvider;
    FIN_FD_M_LDM: TFDQuery;
    FAT_DP_M_ETG: TDataSetProvider;
    FAT_FD_M_ETG: TFDQuery;
    FAT_DS_M_ETG: TDataSource;
    FAT_FD_M_ETG_DEV: TFDQuery;
    FAT_FD_M_ETG_FOT: TFDQuery;
    FAT_FD_M_PCAint_nome_resp: TWideStringField;
    FAT_FD_M_PPDbairro_cliente: TWideStringField;
    FAT_DS_M_PED: TDataSource;
    FAT_FD_M_PED_TIT: TFDQuery;
    BUS_DP_M_PED_ITE: TDataSetProvider;
    BUS_FD_M_PED_ITE: TFDQuery;



    procedure DataModuleCreate(Sender: TObject);
    function CorrigirCaractereInvalid(texto:String;default:String=''):String;
    function CorrigirDecimal(texto:String):String;
    procedure GerarSqlTxt(texto: String);
    function percorreArquivoTexto ( nomeDoArquivo: String ):String;
    function CarregarImagem(tabela:String;nome:String):TStream;

   // function CarregarImagem2(tabela:String;nome: String):TStream;
    function PCP_DP_C_MTADataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_ITEDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
  private
    { Private declarations }
    var
      diretorioImagens:String;

  public
    { Public declarations }
    function tbEmpresa: TStream;
    function tbClientes(const filtro:String;const texto:String): TStream;
    function tbVeiculos: TStream;
    function tbItensOficina: TStream;
    function tbItensPrcOficina: TStream;
    function tbItens(const with_photo:String;const max_registros:String;const offset:String;const filtro:String;const texto:String): TStream;
    function tbItensPrc(const id_empresa:String): TStream;
    function tbFuncionarios(const filtro:String): TStream;
    function tbGrupos(const filtro:String): TStream;
    function tbContaCorrente: TStream;
    function tbPlanoContas: TStream;
    function tbCondicaoPgto: TStream;
    function tbFormaPgto: TStream;
    function tbMotorista: TStream;
    function tbPedidoVenda(const filtro:String;const campo1:String;const campo2:String;const campo3:String;const campo4:String): TStream;

    function tbContaNovo: TStream;
    // function tbPedidoVenda: TStream;
   // function tbPedidoVendaIte: TStream;
    function tbPedCarregamento(const id_motorista:String): TStream;


    function tbLoginFuncionario(const login:String;const senha:String): TStream;


    function tbGravarOrcamento: TJsonArray;
    function updatetbGravarOrcamento(dados: TJSONArray): TStream;

    function tbGravarOrdem: TJsonArray;
    function updatetbGravarOrdem(dados: TJSONArray): TStream;


    function tbGravarDespesaMotorista: TJsonArray;
    function updatetbGravarDespesaMotorista(dados: TJSONArray): TStream;

    function tbGravarEntrega: TJsonArray;
    function updatetbGravarEntrega(dados: TJSONArray): TStream;

    function tbGravarPedVenda: TJsonArray;
    function updatetbGravarPedVenda(dados: TJSONArray): TStream;

    //function testePedVenda: TStream;

    function tbGravarCliente: TJsonArray;
    function updatetbGravarCliente(dados: TJSONArray): TStream;


    function getImagem(tabela:String;nome: String): TStream;



  end;
 {$METHODINFO OFF}


implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

uses uPrincipal, enConstantes;





procedure TSM.DataModuleCreate(Sender: TObject);
var
  Rede:TInifile;
  Id: String;
  HostName,Banco: String;
begin
  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');
  ConexaoNW.Close;
 // ConexaoNW.CloseDataSets;
  ConexaoNW.Params.Clear;

  //POstgresql 9
  ConexaoNW.Params.Add('DriverID=PG');
  ConexaoNW.Params.Add('Server='+Rede.ReadString('DEFINICAO_DE_DATABASE','HOST',''));
  HostName := Rede.ReadString('DEFINICAO_DE_DATABASE','HOST','');
  ConexaoNW.Params.Add('MetaDefSchema=public');
  ConexaoNW.Params.Add('Database='+Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO',''));
  Banco    :=  Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO','');
  ConexaoNW.Params.Add('User_Name=postgres');
  ConexaoNW.Params.Add('Password=ssq#0609');

  diretorioImagens :=  Rede.ReadString('DEFINICAO_DE_DATABASE','DIRETORIO_IMAGEM','');

  if copy( diretorioImagens,Length( diretorioImagens),1)<>'\' then
      diretorioImagens :=  diretorioImagens+'\';


  //showmessage(Rede.ReadString('DEFINICAO_DE_DATABASE','HOST','') + ' - ' + Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO','') );

  ConexaoNW.Open;

  uPrincipal.Form1.mmTexto.Lines.Clear;
  if ConexaoNW.Connected then
     uPrincipal.Form1.mmTexto.Lines.Add('Conexão ativa!');
  uPrincipal.Form1.mmTexto.Lines.Add('HosName: ' + HostName);
  uPrincipal.Form1.mmTexto.Lines.Add('Banco: '   + Banco);
  uPrincipal.Form1.mmTexto.Lines.Add('Data: ' + datetostr(date));
  uPrincipal.Form1.mmTexto.Lines.Add('Hora: '   + timetostr(time));
  uPrincipal.Form1.mmTexto.Lines.Add('----------------');
end;


function TSM.CorrigirDecimal(texto:String):String;
begin
  Result :=  stringreplace(texto, ',', '.',
                          [rfReplaceAll, rfIgnoreCase]);
  if Result = '' then
    Result := '0';
end;



function TSM.CorrigirCaractereInvalid(texto:String;default:String=''):String;
begin
  Result := stringreplace(texto, '/', '',
                          [rfReplaceAll, rfIgnoreCase]);

  Result := stringreplace(Result, '\', '',
                          [rfReplaceAll, rfIgnoreCase]);


  Result := stringreplace(Result, '"', '',
                          [rfReplaceAll, rfIgnoreCase]);


  if (Result = '') then
    Result := default;

end;


function TSM.percorreArquivoTexto(nomeDoArquivo: String ):String;
 var arq: TextFile;
 linha,texto: String;
begin
 texto:='';
 AssignFile ( arq, nomeDoArquivo );
 Reset ( arq );
 ReadLn ( arq, linha );
 texto := linha;
 while not Eof ( arq ) do
  begin
{ Processe a linha lida aqui. }
{ Para particionar a linha lida em pedaços, use a função Copy. }
  ReadLn ( arq, linha );
  texto := texto+linha;
  end;
 Result := texto;
 CloseFile ( arq );
end;


procedure TSM.GerarSqlTxt(texto: String);
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

function TSM.PCP_DP_C_MTADataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
function enSqlMta: String;
  begin
    Result :=
        ' select MTA.MOB_ID_EMPRESA FROM PCP_TB_C_MTA MTA ';
  end;
begin
    PCP_FD_C_MTA.SQL.Clear;
   if Input[0] = 0 then
      begin
           PCP_FD_C_MTA.SQL.Add(enSqlMta +
             ' WHERE MTA.ID_MOTORISTA= ''' + VarToStr(Input[1]) +''' ');
      end;
   Result := PCP_DP_C_MTA.Data;
   PCP_FD_C_MTA.Close;
end;



function TSM.tbGravarCliente: TJsonArray;
begin

end;

function TSM.updatetbGravarCliente(dados: TJSONArray): TStream;
begin

end;



function TSM.tbGravarOrcamento: TJsonArray;
begin

end;


function TSM.updatetbGravarOrcamento(dados: TJSONArray): TStream;
var
  txt,texto,pathFoto,NomeFoto, FotoStr,sData: String;
  base64Stream : TIdReadFileExclusiveStream;
  pngStream : TIdFileCreateStream;
  MIMEDecoder : TidDecoderMIME;
  Arquivo: TextFile;
  VJSONArray,JsonRegistros,JsonRegistrosItens: TJSONArray;
  JSONTabela,JSONCampo,JSONCampoIte:TJSONPair;
  JsonRaiz,JsonRegistro,JsonRegistroItem: TJSONValue;
  retorno:Integer;
  CAD_CD_C_SEQ,OFI_CD_M_OCV,OFI_CD_M_OCV_ITE,OFI_CD_M_OCV_FOT: TClientDataSet;
  dataFormat: TFormatSettings;
begin

  try
     txt := dados.ToString;
     //GerarSqlTxt(txt);
     VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;
     dataFormat.DateSeparator := '-';
     dataFormat.ShortDateFormat := 'yyyy-mm-dd';


     CAD_FD_C_SEQ.close;
     CAD_FD_C_SEQ.SQL.CLEAR;
     CAD_FD_C_SEQ.SQL.Add(' SELECT * FROM CAD_TB_C_SEQ where id_tabela in (''OFI_TB_M_OCV'',''OFI_TB_M_OCV_ITE'',''OFI_TB_M_OCV_FOT'') ');
     CAD_FD_C_SEQ.Open;


     CAD_CD_C_SEQ := TClientDataSet.Create(nil);
     CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);
     CAD_CD_C_SEQ.Close;
     CAD_CD_C_SEQ.Open;


     OFI_FD_M_OCV.close;
     OFI_FD_M_OCV.SQL.CLEAR;
     OFI_FD_M_OCV.SQL.Add(' SELECT * FROM OFI_TB_M_OCV WHERE 1=2 ');
     OFI_FD_M_OCV.Open;

     OFI_CD_M_OCV := TClientDataSet.Create(nil);
     OFI_CD_M_OCV.SetProvider(OFI_DP_M_OCV);
     OFI_CD_M_OCV.Close;
     OFI_CD_M_OCV.Open;

     OFI_CD_M_OCV_ITE := TClientDataSet.Create(nil);
     OFI_CD_M_OCV_ITE.DataSetField := TDataSetField(OFI_CD_M_OCV.FieldByName('OFI_FD_M_OCV_ITE'));

     OFI_CD_M_OCV_FOT := TClientDataSet.Create(nil);
     OFI_CD_M_OCV_FOT.DataSetField := TDataSetField(OFI_CD_M_OCV.FieldByName('OFI_FD_M_OCV_FOT'));



      for JsonRaiz in VJsonArray do
         begin
           for JSONTabela in TJSONObject(JsonRaiz) do
             begin
                if JSONTabela.JsonString.Value = 'OFI_TB_M_OCV' then
                   begin
                      JsonRegistros :=  TJSONObject.ParseJSONValue(
                             TEncoding.ASCII.GetBytes(JSONTabela.JsonValue.ToJSON),0) as TJSONArray;


                      for JsonRegistro in  JsonRegistros do
                        begin
                          OFI_CD_M_OCV.Insert;

                          IF CAD_CD_C_SEQ.Locate('ID_TABELA',JSONTabela.JsonString.Value,[]) THEN
                             BEGIN

                              CAD_CD_C_SEQ.Edit;
                              CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;

                             END
                           ELSE
                             BEGIN
                               CAD_CD_C_SEQ.Insert;
                               CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'OFI_TB_M_OCV';
                               CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                             END;
                           OFI_CD_M_OCV.FieldByName('ID_ORCAMENTO').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                           CAD_CD_C_SEQ.Post;

                           OFI_CD_M_OCV.FieldByName('STATUS').AsInteger := 0;
                           OFI_CD_M_OCV.FieldByName('TIPO_ORCAMENTO').AsInteger := 1;
                           OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency := 0;
                           OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency := 0;

                          for JsonCampo in TJSONObject(JsonRegistro) do
                            begin

                               if JsonCampo.JsonString.Value = 'id' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('id_orcamento_mob').AsString := JsonCampo.JsonValue.Value;
                                 end;

                               if JsonCampo.JsonString.Value = 'data' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('dta_orcamento').AsDateTime := strtodatetime(JsonCampo.JsonValue.Value,dataFormat);
                                 end;

                               if JsonCampo.JsonString.Value = 'id_cliente' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('id_cliente').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'nomecliente' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('nome_cliente').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'cpf_cnpj' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('doc_cnpj_cpf').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'id_condpag' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('id_condicao_pag').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'placa' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('placa').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'id_funcionario' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('id_funcionario').AsString := JsonCampo.JsonValue.Value;
                                   OFI_CD_M_OCV.FieldByName('id_analista').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'km_atual' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('km_atual').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'id_empresa' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('id_empresa').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'reclamacao' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('obs').AsString := JsonCampo.JsonValue.Value;
                                 end;

                               if JsonCampo.JsonString.Value = 'vlr_produto' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('vlr_produtos').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'vlr_terceiro' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('vlr_terceiro').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'vlr_servico' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('vlr_servicos').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'vlr_liquido' then
                                 begin
                                   OFI_CD_M_OCV.FieldByName('vlr_total').AsString := JsonCampo.JsonValue.Value;
                                 end;



                               if JsonCampo.JsonString.Value = 'OFI_TB_M_OCV_ITE' then
                                 begin
                                   JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                                      TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

                                   for JsonRegistroItem in JsonRegistrosItens do
                                     begin
                                       OFI_CD_M_OCV_ITE.Insert;

                                       IF CAD_CD_C_SEQ.Locate('ID_TABELA',JsonCampo.JsonString.Value,[]) THEN
                                         BEGIN

                                          CAD_CD_C_SEQ.Edit;
                                          CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                                         END
                                       ELSE
                                         BEGIN
                                           CAD_CD_C_SEQ.Insert;
                                           CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'OFI_TB_M_OCV_ITE';
                                           CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                                         END;
                                       OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                                       CAD_CD_C_SEQ.Post;



                                       OFI_CD_M_OCV_ITE.FieldByName('ID_ORCAMENTO').AsInteger :=  OFI_CD_M_OCV.FieldByName('ID_ORCAMENTO').AsInteger;


                                       OFI_CD_M_OCV_ITE.FieldByName('per_desconto').AsString := '0';
                                       OFI_CD_M_OCV_ITE.FieldByName('vlr_desconto').AsString := '0';
                                       for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                                         begin
                                            if JsonCampoIte.JsonString.Value = 'id_item' then
                                             begin
                                               OFI_CD_M_OCV_ITE.FieldByName('id_item').AsString := JsonCampoIte.JsonValue.Value;
                                               OFI_CD_M_OCV_ITE.FieldByName('id_busca_item').AsString := JsonCampoIte.JsonValue.Value;
                                             end;
                                            
                                            if JsonCampoIte.JsonString.Value = 'desc_item' then
                                             begin
                                               OFI_CD_M_OCV_ITE.FieldByName('nome_ite').AsString := JsonCampoIte.JsonValue.Value;
                                             end;
                                            if JsonCampoIte.JsonString.Value = 'qtde' then
                                             begin
                                               OFI_CD_M_OCV_ITE.FieldByName('qtde').AsString := JsonCampoIte.JsonValue.Value;
                                             end;
                                            if JsonCampoIte.JsonString.Value = 'vlr_unitario' then
                                             begin
                                               OFI_CD_M_OCV_ITE.FieldByName('vlr_unitario').AsString := JsonCampoIte.JsonValue.Value;
                                             end;
                                            if JsonCampoIte.JsonString.Value = 'vlr_liquido' then
                                             begin
                                               OFI_CD_M_OCV_ITE.FieldByName('vlr_bruto').AsString := JsonCampoIte.JsonValue.Value;
                                               OFI_CD_M_OCV_ITE.FieldByName('vlr_liquido').AsString := JsonCampoIte.JsonValue.Value;
                                             end;
                                         end;
                                         OFI_CD_M_OCV_ITE.Post;
                                     end;

                                 end;
                                if JsonCampo.JsonString.Value = 'OFI_TB_M_OCV_FOT' then
                                 begin
                                     JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                                      TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

                                   for JsonRegistroItem in JsonRegistrosItens do
                                     begin
                                       OFI_CD_M_OCV_FOT.Insert;

                                       IF CAD_CD_C_SEQ.Locate('ID_TABELA',JsonCampo.JsonString.Value,[]) THEN
                                         BEGIN

                                          CAD_CD_C_SEQ.Edit;
                                          CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                                         END
                                       ELSE
                                         BEGIN
                                           CAD_CD_C_SEQ.Insert;
                                           CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'OFI_TB_M_OCV_FOT';
                                           CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                                         END;
                                       OFI_CD_M_OCV_FOT.FieldByName('ID_SEQUENCIA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                                       CAD_CD_C_SEQ.Post;

                                       OFI_CD_M_OCV_FOT.FieldByName('ID_ORCAMENTO').AsInteger :=  OFI_CD_M_OCV.FieldByName('ID_ORCAMENTO').AsInteger;

                                        pathFoto := DiretorioImagens+'emp'+OFI_CD_M_OCV.FieldByName('id_empresa').AsString;
                                           //pathFoto := 'emp'+CAD_CD_C_VIT.FieldByName('id_empresa').AsString;
                                           if not (DirectoryExists(pathFoto)) then
                                              begin
                                                ForceDirectories(pathFoto);
                                              end;

                                       for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                                         begin
                                            if JsonCampoIte.JsonString.Value = 'imagem' then
                                             begin
                                                FotoStr := JsonCampoIte.JsonValue.Value;

                                                NomeFoto := 'FotoOcv'+OFI_CD_M_OCV.FieldByName('id_empresa').AsString + '-'+
                                                         OFI_CD_M_OCV_FOT.FieldByName('id_orcamento').AsString+'-'+
                                                         OFI_CD_M_OCV_FOT.FieldByName('id_sequencia').AsString;

                                                OFI_CD_M_OCV_FOT.FieldByName('caminho_foto').AsString :=
                                                        NomeFoto+'.jpg';

                                                AssignFile(Arquivo,pathFoto+'\FotoTemp.txt');
                                                Rewrite(Arquivo); //abre o arquivo para escrita

                                                Writeln(Arquivo,FotoStr);
                                                Closefile(Arquivo); //fecha o handle de arquivo

                                                base64Stream := TIdReadFileExclusiveStream.Create(pathFoto+'\FotoTemp.txt');
                                                try
                                                  pngStream := TIdFileCreateStream.Create(pathFoto+'\'+NomeFoto+'.jpg');
                                                  try
                                                    try
                                                      MIMEDecoder := TIdDecoderMIME.Create(nil);
                                                      try
                                                        MIMEDecoder.DecodeBegin(pngStream);
                                                        try
                                                          while (ReadLnFromStream(base64Stream, sData)=true) do
                                                            MIMEDecoder.Decode(sData);
                                                        finally
                                                          MIMEDecoder.DecodeEnd;
                                                        end;
                                                      finally
                                                        MIMEDecoder.Free
                                                      end;
                                                    finally
                                                      pngStream.Free;
                                                    end;
                                                  except
                                                    DeleteFile(pathFoto+'\FotoTemp.txt');
                                                    raise;
                                                  end;
                                                finally
                                                  base64Stream.Free;
                                                end;


                                             end;
                                         end;
                                         OFI_CD_M_OCV_FOT.Post;
                                     end;
                                 end;

                            end;
                            OFI_CD_M_OCV.Post;
                        end;
                   end;







             end;
         end;





       ConexaoNW.StartTransaction;
       try
        if CAD_CD_C_SEQ <> nil then
          if (CAD_CD_C_SEQ.ChangeCount > 0) then
            retorno := CAD_CD_C_SEQ.ApplyUpdates(0);


        if OFI_CD_M_OCV <> nil then
           if (OFI_CD_M_OCV.ChangeCount > 0) then
             retorno := OFI_CD_M_OCV.ApplyUpdates(0);


       ConexaoNW.Commit;

        except
          on e: exception do
            begin
              GerarSqlTxt('tbOrcamento erro:' + e.Message);
              ConexaoNW.Rollback;
            end;
        end;

        if retorno = 0 then
           begin
             GetInvocationMetadata().ResponseCode := 201;
             uPrincipal.Form1.mmTexto.Lines.Add('Post do orçamento foi sincronizado!');
           end
        else
           GetInvocationMetadata().ResponseCode := 404;


  finally

  end;

end;

function TSM.tbGravarDespesaMotorista: TJsonArray;
begin

end;


function TSM.updatetbGravarDespesaMotorista(dados: TJSONArray): TStream;
var
  txt,texto,pathFoto,NomeFoto, FotoStr,sData: String;
  base64Stream : TIdReadFileExclusiveStream;
  pngStream : TIdFileCreateStream;
  MIMEDecoder : TidDecoderMIME;
  Arquivo: TextFile;
  VJSONArray,JsonRegistros,JsonRegistrosItens: TJSONArray;
  JSONTabela,JSONCampo,JSONCampoIte:TJSONPair;
  JsonRaiz,JsonRegistro,JsonRegistroItem: TJSONValue;
  retorno:Integer;
  CAD_CD_C_SEQ,FIN_CD_M_LDM,PCP_CD_C_MTA: TClientDataSet;
  dataFormat: TFormatSettings;
  i:integer;
  numParcela,codEmpresa,numTitulo,IdMotorista,IdFormaPag,IdPlano,IdConta,natureza,historico,comprovante:String;
  qtdeParcela:Integer;
  dtaEmissao,dtaVencimento:TDate;
  vlrTitulo,vlrParcela,vlrRestante:Currency;
  latitude,longitude:Extended;


begin
   try


     txt := dados.ToString;
   //  GerarSqlTxt(txt);

    // txt :=  percorreArquivoTexto (ExtractFilePath(Application.ExeName)+'jsonTeste.txt');
     VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

     CAD_FD_C_SEQ.close;
     CAD_FD_C_SEQ.SQL.CLEAR;
     CAD_FD_C_SEQ.SQL.Add(' SELECT * FROM CAD_TB_C_SEQ where id_tabela in (''FIN_TB_M_LDM'') ');
     CAD_FD_C_SEQ.Open;


     CAD_CD_C_SEQ := TClientDataSet.Create(nil);
     CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);
     CAD_CD_C_SEQ.Close;
     CAD_CD_C_SEQ.Open;


     FIN_FD_M_LDM.close;
     FIN_FD_M_LDM.SQL.CLEAR;
     FIN_FD_M_LDM.SQL.Add(' SELECT * FROM FIN_TB_M_LDM WHERE 1=2 ');
     FIN_FD_M_LDM.Open;

     FIN_CD_M_LDM := TClientDataSet.Create(nil);
     FIN_CD_M_LDM.SetProvider(FIN_DP_M_LDM);
     FIN_CD_M_LDM.Close;
     FIN_CD_M_LDM.Open;


     for JsonRaiz in VJsonArray do
         begin


           for JSONTabela in TJSONObject(JsonRaiz) do
             begin
                if JSONTabela.JsonString.Value = 'numero_titulo' then
                   begin
                     numTitulo := JSONTabela.JsonValue.Value;
                   end;
                if JSONTabela.JsonString.Value = 'user_id' then
                   begin
                      IdMotorista := JSONTabela.JsonValue.Value;
                   end;
                if JSONTabela.JsonString.Value = 'empresa_id' then
                   begin
                      codEmpresa := JSONTabela.JsonValue.Value;
                   end;


                if JSONTabela.JsonString.Value = 'formapagamento' then
                   begin
                      IdFormaPag := JSONTabela.JsonValue.Value;
                   end;
                if JSONTabela.JsonString.Value = 'planoconta' then
                   begin
                      IdPlano := JSONTabela.JsonValue.Value;
                   end;
                if JSONTabela.JsonString.Value = 'contacorrente' then
                   begin
                      IdConta := JSONTabela.JsonValue.Value;
                   end;
                if JSONTabela.JsonString.Value = 'dta_emissao' then
                   begin
                      dtaEmissao := StrToDateTime(JSONTabela.JsonValue.Value);
                   end;
                if JSONTabela.JsonString.Value = 'nro_parc' then
                   begin
                      qtdeParcela := StrToInt(JSONTabela.JsonValue.Value);
                   end;
                if JSONTabela.JsonString.Value = 'dta_vencimento' then
                   begin
                      dtaVencimento := StrToDateTime(JSONTabela.JsonValue.Value);
                   end;
                if JSONTabela.JsonString.Value = 'plc_descricao' then
                   begin

                   end;
                if JSONTabela.JsonString.Value = 'historico' then
                   begin
                     historico := JSONTabela.JsonValue.Value;
                   end;
                if JSONTabela.JsonString.Value = 'vlr_titulo' then
                   begin
                      vlrTitulo := StrToCurr(JSONTabela.JsonValue.Value);
                   end;
                if JSONTabela.JsonString.Value = 'latitude' then
                   begin
                      latitude := StrToFloat(JSONTabela.JsonValue.Value);
                   end;
                if JSONTabela.JsonString.Value = 'longitude' then
                   begin
                      longitude := StrToFloat(JSONTabela.JsonValue.Value);
                   end;
                if JSONTabela.JsonString.Value = 'natureza' then
                   begin
                     natureza := JSONTabela.JsonValue.Value;
                   end;
                 if JSONTabela.JsonString.Value = 'comprovante' then
                   begin
                     comprovante := JSONTabela.JsonValue.Value;
                   end;

             end;


           if qtdeParcela=0 then
             qtdeParcela:=1;

           i:=1;
           numParcela:='';
           pathFoto := diretorioImagens +'FIN_TB_M_LDM\'+'emp'+codEmpresa;

           vlrParcela := RoundTo(vlrTitulo/qtdeParcela,-2);
           vlrRestante := vlrTitulo - vlrParcela*(qtdeParcela-1);

           while (i<=qtdeParcela) do
             begin
                FIN_CD_M_LDM.Insert;

                IF CAD_CD_C_SEQ.Locate('ID_TABELA','FIN_TB_M_LDM',[]) THEN
                   BEGIN

                    CAD_CD_C_SEQ.Edit;
                    CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;

                   END
                 ELSE
                   BEGIN
                     CAD_CD_C_SEQ.Insert;
                     CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FIN_TB_M_LDM';
                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                   END;
                 FIN_CD_M_LDM.FieldByName('ID_LDM').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                 if I=1 then
                   numParcela :=  FIN_CD_M_LDM.FieldByName('ID_LDM').AsString;

                 CAD_CD_C_SEQ.Post;

                FIN_CD_M_LDM.FieldByName('mob_id_ldm').AsString := numTitulo;
                FIN_CD_M_LDM.FieldByName('id_empresa').AsString := codEmpresa;

                if idConta <>'null' then
                  FIN_CD_M_LDM.FieldByName('ID_CONTA').AsString := IdConta;
                FIN_CD_M_LDM.FieldByName('NATUREZA').AsString := natureza;
                FIN_CD_M_LDM.FieldByName('id_motorista').AsString := idMotorista;
                FIN_CD_M_LDM.FieldByName('id_forma_pag').AsString := IdFormaPag;
                FIN_CD_M_LDM.FieldByName('id_plano').AsString := idPlano;
                FIN_CD_M_LDM.FieldByName('dta_emissao').AsDateTime := dtaEmissao;
                FIN_CD_M_LDM.FieldByName('historico').AsString := historico;
                if i<qtdeParcela then
                  FIN_CD_M_LDM.FieldByName('vlr_titulo').AsCurrency := vlrParcela
                else
                  FIN_CD_M_LDM.FieldByName('vlr_titulo').AsCurrency := vlrRestante;
                FIN_CD_M_LDM.FieldByName('latitude').AsFloat := latitude;
                FIN_CD_M_LDM.FieldByName('longitude').AsFloat := longitude;
                FIN_CD_M_LDM.FieldByName('NUM_PARCELA').AsString :=  numParcela+'-'+IntToStr(i)+'/'+IntToStr(qtdeParcela);
                FIN_CD_M_LDM.FieldByName('DTA_VENCIMENTO').AsDateTime := dtaVencimento+((i-1)*30);

                NomeFoto := 'LDM'+numParcela;
                FIN_CD_M_LDM.FieldByName('CAMINHO_FOTO').AsString := NomeFoto+'.jpg';

                FIN_CD_M_LDM.Post;
                inc(i);
             end;


            AssignFile(Arquivo,pathFoto+'\FotoTemp.txt');
            Rewrite(Arquivo); //abre o arquivo para escrita

            Writeln(Arquivo,comprovante);
            Closefile(Arquivo); //fecha o handle de arquivo

            base64Stream := TIdReadFileExclusiveStream.Create(pathFoto+'\FotoTemp.txt');
            try
              pngStream := TIdFileCreateStream.Create(pathFoto+'\'+NomeFoto+'.jpg');
              try
                try
                  MIMEDecoder := TIdDecoderMIME.Create(nil);
                  try
                    MIMEDecoder.DecodeBegin(pngStream);
                    try
                      while (ReadLnFromStream(base64Stream, sData)=true) do
                        MIMEDecoder.Decode(sData);
                    finally
                      MIMEDecoder.DecodeEnd;
                    end;
                  finally
                    MIMEDecoder.Free
                  end;
                finally
                  pngStream.Free;
                end;
              except
                DeleteFile(pathFoto+'\FotoTemp.txt');
                raise;
              end;
            finally
              base64Stream.Free;
            end;


       end;


       ConexaoNW.StartTransaction;
       try
        if CAD_CD_C_SEQ <> nil then
          if (CAD_CD_C_SEQ.ChangeCount > 0) then
            retorno := CAD_CD_C_SEQ.ApplyUpdates(0);


        if FIN_CD_M_LDM <> nil then
           if (FIN_CD_M_LDM.ChangeCount > 0) then
             retorno := FIN_CD_M_LDM.ApplyUpdates(0);


       ConexaoNW.Commit;

        except
          on e: exception do
            begin
              GerarSqlTxt('tbContasPagar erro:' + e.Message);
              ConexaoNW.Rollback;
            end;
        end;

        if retorno = 0 then
           begin
             GetInvocationMetadata().ResponseCode := 201;
             uPrincipal.Form1.mmTexto.Lines.Add('Post do contas a pagar foi sincronizado!');
           end
        else
           GetInvocationMetadata().ResponseCode := 404;


   finally

   end;
end;




function TSM.tbGravarEntrega: TJsonArray;
begin

end;

function TSM.updatetbGravarEntrega(dados: TJSONArray): TStream;
var
  txt,texto,pathFoto,NomeFoto, FotoStr,sData: String;
  base64Stream : TIdReadFileExclusiveStream;
  pngStream : TIdFileCreateStream;
  MIMEDecoder : TidDecoderMIME;
  Arquivo: TextFile;
  VJSONArray,JsonRegistros,JsonRegistrosItens: TJSONArray;
  JSONTabela,JSONCampo,JSONCampoIte:TJSONPair;
  JsonRaiz,JsonRegistro,JsonRegistroItem: TJSONValue;
  retorno:Integer;
  CAD_CD_C_SEQ,FAT_CD_M_ETG,FAT_CD_M_ETG_DEV,FAT_CD_M_ETG_FOT: TClientDataSet;
  dataFormat: TFormatSettings;
begin

  try


     txt := dados.ToString;


    // txt := percorreArquivoTexto(ExtractFilePath(Application.ExeName)+'jsonTesteErro.txt');

     GerarSqlTxt(txt);
     VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;
     dataFormat.DateSeparator := '-';
     dataFormat.ShortDateFormat := 'yyyy-mm-dd';


     CAD_FD_C_SEQ.close;
     CAD_FD_C_SEQ.SQL.CLEAR;
     CAD_FD_C_SEQ.SQL.Add(' SELECT * FROM CAD_TB_C_SEQ where id_tabela in (''FAT_TB_M_ETG'',''FAT_TB_M_ETG_DEV'',''FAT_TB_M_ETG_FOT'') ');
     CAD_FD_C_SEQ.Open;


     CAD_CD_C_SEQ := TClientDataSet.Create(nil);
     CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);
     CAD_CD_C_SEQ.Close;
     CAD_CD_C_SEQ.Open;


     FAT_FD_M_ETG.close;
     FAT_FD_M_ETG.SQL.CLEAR;
     FAT_FD_M_ETG.SQL.Add(' SELECT * FROM FAT_TB_M_ETG WHERE 1=2 ');
     FAT_FD_M_ETG.Open;

     FAT_CD_M_ETG := TClientDataSet.Create(nil);
     FAT_CD_M_ETG.SetProvider(FAT_DP_M_ETG);
     FAT_CD_M_ETG.Close;
     FAT_CD_M_ETG.Open;

     FAT_CD_M_ETG_DEV := TClientDataSet.Create(nil);
     FAT_CD_M_ETG_DEV.DataSetField := TDataSetField(FAT_CD_M_ETG.FieldByName('FAT_FD_M_ETG_DEV'));

     FAT_CD_M_ETG_FOT := TClientDataSet.Create(nil);
     FAT_CD_M_ETG_FOT.DataSetField := TDataSetField(FAT_CD_M_ETG.FieldByName('FAT_FD_M_ETG_FOT'));



      for JsonRegistro in VJsonArray do
         begin

            FAT_CD_M_ETG.Insert;

            IF CAD_CD_C_SEQ.Locate('ID_TABELA','FAT_TB_M_ETG',[]) THEN
               BEGIN

                CAD_CD_C_SEQ.Edit;
                CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;

               END
             ELSE
               BEGIN
                 CAD_CD_C_SEQ.Insert;
                 CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FAT_TB_M_ETG';
                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
               END;
             FAT_CD_M_ETG.FieldByName('ID_ENTREGA').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
             CAD_CD_C_SEQ.Post;

                           

            for JsonCampo in TJSONObject(JsonRegistro) do
              begin

                 if JsonCampo.JsonString.Value = 'entrega_id' then
                   begin
                     FAT_CD_M_ETG.FieldByName('mob_id_entrega').AsString := JsonCampo.JsonValue.Value;
                   end;

                  if JsonCampo.JsonString.Value = 'motorista_id' then
                   begin
                     FAT_CD_M_ETG.FieldByName('id_motorista').AsString := JsonCampo.JsonValue.Value;
                   end;

                 if JsonCampo.JsonString.Value = 'pedido_id' then
                   begin
                     FAT_CD_M_ETG.FieldByName('id_pedido').AsString := JsonCampo.JsonValue.Value;
                   end;

                 if JsonCampo.JsonString.Value = 'empresa_id' then
                   begin
                     FAT_CD_M_ETG.FieldByName('id_empresa').AsString := JsonCampo.JsonValue.Value;
                   end;

                 if JsonCampo.JsonString.Value = 'formpag' then
                   begin
                     FAT_CD_M_ETG.FieldByName('id_forma_pag').AsString := JsonCampo.JsonValue.Value;
                   end;
                 if JsonCampo.JsonString.Value = 'vlr_pagamento' then
                   begin
                     FAT_CD_M_ETG.FieldByName('vlr_pagamento').AsString := JsonCampo.JsonValue.Value;
                   end;
                 if JsonCampo.JsonString.Value = 'latitude' then
                   begin
                     FAT_CD_M_ETG.FieldByName('latitude').AsString := JsonCampo.JsonValue.Value;
                   end;
                 if JsonCampo.JsonString.Value = 'longitude' then
                   begin
                     FAT_CD_M_ETG.FieldByName('longitude').AsString := JsonCampo.JsonValue.Value;
                   end;



                 if JsonCampo.JsonString.Value = 'devolucoes' then
                   begin
                     JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                        TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

                     for JsonRegistroItem in JsonRegistrosItens do
                       begin
                         FAT_CD_M_ETG_DEV.Insert;

                         IF CAD_CD_C_SEQ.Locate('ID_TABELA','FAT_TB_M_ETG_DEV',[]) THEN
                           BEGIN

                            CAD_CD_C_SEQ.Edit;
                            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                           END
                         ELSE
                           BEGIN
                             CAD_CD_C_SEQ.Insert;
                             CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FAT_TB_M_ETG_DEV';
                             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                           END;
                         FAT_CD_M_ETG_DEV.FieldByName('ID_SEQUENCIA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                         CAD_CD_C_SEQ.Post;



                         FAT_CD_M_ETG_DEV.FieldByName('ID_ENTREGA').AsInteger :=  FAT_CD_M_ETG.FieldByName('ID_ENTREGA').AsInteger;



                         for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                           begin
                              if JsonCampoIte.JsonString.Value = 'sequencia_id' then
                               begin
                                 FAT_CD_M_ETG_DEV.FieldByName('id_sequencia').AsString := JsonCampoIte.JsonValue.Value;
                               end;

                              if JsonCampoIte.JsonString.Value = 'item_id' then
                               begin
                                 FAT_CD_M_ETG_DEV.FieldByName('id_item').AsString := JsonCampoIte.JsonValue.Value;
                               end;

                              if JsonCampoIte.JsonString.Value = 'qtde' then
                               begin
                                 FAT_CD_M_ETG_DEV.FieldByName('qtde').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'motivo' then
                               begin
                                 FAT_CD_M_ETG_DEV.FieldByName('motivo').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                           end;
                           FAT_CD_M_ETG_DEV.Post;
                       end;

                   end;
                  if JsonCampo.JsonString.Value = 'fotos' then
                   begin
                       JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                        TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

                     for JsonRegistroItem in JsonRegistrosItens do
                       begin
                         FAT_CD_M_ETG_FOT.Insert;

                         IF CAD_CD_C_SEQ.Locate('ID_TABELA','FAT_TB_M_ETG_FOT',[]) THEN
                           BEGIN

                            CAD_CD_C_SEQ.Edit;
                            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                           END
                         ELSE
                           BEGIN
                             CAD_CD_C_SEQ.Insert;
                             CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FAT_TB_M_ETG_FOT';
                             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                           END;
                         FAT_CD_M_ETG_FOT.FieldByName('ID_SEQUENCIA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                         CAD_CD_C_SEQ.Post;

                         FAT_CD_M_ETG_FOT.FieldByName('ID_ENTREGA').AsInteger :=  FAT_CD_M_ETG.FieldByName('ID_ENTREGA').AsInteger;

                          pathFoto := ExtractFilePath(Application.ExeName)+'emp'+FAT_CD_M_ETG.FieldByName('id_empresa').AsString+'\FotosTablets';
                             //pathFoto := 'emp'+CAD_CD_C_VIT.FieldByName('id_empresa').AsString;
                             if not (DirectoryExists(pathFoto)) then
                                begin
                                  ForceDirectories(pathFoto);
                                end;

                         for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                           begin
                              if JsonCampoIte.JsonString.Value = 'foto' then
                               begin
                                  FotoStr := JsonCampoIte.JsonValue.Value;

                                  NomeFoto := 'FotoEtg'+FAT_CD_M_ETG.FieldByName('id_empresa').AsString + '-'+
                                           FAT_CD_M_ETG_FOT.FieldByName('id_entrega').AsString+'-'+
                                           FAT_CD_M_ETG_FOT.FieldByName('id_sequencia').AsString;

                                  FAT_CD_M_ETG_FOT.FieldByName('caminho_foto').AsString :=
                                          pathFoto+'\'+NomeFoto+'.jpg';

                                  AssignFile(Arquivo,pathFoto+'\FotoTemp.txt');
                                  Rewrite(Arquivo); //abre o arquivo para escrita

                                  Writeln(Arquivo,FotoStr);
                                  Closefile(Arquivo); //fecha o handle de arquivo

                                  base64Stream := TIdReadFileExclusiveStream.Create(pathFoto+'\FotoTemp.txt');
                                  try
                                    pngStream := TIdFileCreateStream.Create(pathFoto+'\'+NomeFoto+'.jpg');
                                    try
                                      try
                                        MIMEDecoder := TIdDecoderMIME.Create(nil);
                                        try
                                          MIMEDecoder.DecodeBegin(pngStream);
                                          try
                                            while (ReadLnFromStream(base64Stream, sData)=true) do
                                              MIMEDecoder.Decode(sData);
                                          finally
                                            MIMEDecoder.DecodeEnd;
                                          end;
                                        finally
                                          MIMEDecoder.Free
                                        end;
                                      finally
                                        pngStream.Free;
                                      end;
                                    except
                                      DeleteFile(pathFoto+'\FotoTemp.txt');
                                      raise;
                                    end;
                                  finally
                                    base64Stream.Free;
                                  end;


                               end;
                           end;
                           FAT_CD_M_ETG_FOT.Post;
                       end;
                   end;

              end;
              FAT_CD_M_ETG.Post;
          end;







       ConexaoNW.StartTransaction;
       try
        if CAD_CD_C_SEQ <> nil then
          if (CAD_CD_C_SEQ.ChangeCount > 0) then
            retorno := CAD_CD_C_SEQ.ApplyUpdates(0);


        if FAT_CD_M_ETG <> nil then
           if (FAT_CD_M_ETG.ChangeCount > 0) then
             retorno := FAT_CD_M_ETG.ApplyUpdates(0);


       ConexaoNW.Commit;

        except
          on e: exception do
            begin
              GerarSqlTxt('tbEntrega erro:' + e.Message);
              ConexaoNW.Rollback;
            end;
        end;

        if retorno = 0 then
           begin
             GetInvocationMetadata().ResponseCode := 201;
             uPrincipal.Form1.mmTexto.Lines.Add('Post da entrega foi sincronizado!');
           end
        else
           GetInvocationMetadata().ResponseCode := 404;


  finally

  end;

end;


function TSM.tbGravarPedVenda: TJsonArray;
begin

end;


{function TSM.updatetbGravarPedVenda(dados: TJSONArray): TStream;
var
  txt,texto,pathFoto,NomeFoto, FotoStr,sData: String;
  base64Stream : TIdReadFileExclusiveStream;
  pngStream : TIdFileCreateStream;
  MIMEDecoder : TidDecoderMIME;
  Arquivo: TextFile;
  VJSONArray,JsonRegistros,JsonRegistrosItens: TJSONArray;
  JSONTabela,JSONCampo,JSONCampoIte:TJSONPair;
  JsonRaiz,JsonRegistro,JsonRegistroItem: TJSONValue;
  retorno:Integer;
  CAD_CD_C_SEQ,BUS_CD_C_PAR_CTR,EST_CD_M_FES,EST_CD_M_FEA,FAT_CD_M_PED,FAT_CD_M_PED_ITE,FAT_CD_M_PED_TIT: TClientDataSet;
  dataFormat: TFormatSettings;
  codEmpresa,codItens:String;
begin

  try
     //txt := dados.ToString;
     //GerarSqlTxt(txt);

     txt := percorreArquivoTexto ('C:\e-north\branches\branch\enServerMobile\enServer\Win32\Debug\jsonTeste.txt');


      JsonRegistro :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONObject;



      for JsonCampo in TJSONObject(JsonRegistro) do
              begin
                texto := JsonCampo.JsonString.Value;
                if JsonCampo.JsonString.Value = 'id_cliente' then
                   begin
                     FAT_CD_M_PED.FieldByName('id_cliente').AsString := JsonCampo.JsonValue.Value;
                   end;
              end;




     VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;






     dataFormat.DateSeparator := '-';
     dataFormat.ShortDateFormat := 'yyyy-mm-dd';




     CAD_FD_C_SEQ.close;
     CAD_FD_C_SEQ.SQL.CLEAR;
     CAD_FD_C_SEQ.SQL.Add(' SELECT * FROM CAD_TB_C_SEQ where id_tabela in (''EST_TB_M_FEA'',''FAT_TB_M_PED'',''FAT_TB_M_PED_ITE'',''FAT_TB_M_NFE_TIT'') ');
     CAD_FD_C_SEQ.Open;


     CAD_CD_C_SEQ := TClientDataSet.Create(nil);
     CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);
     CAD_CD_C_SEQ.Close;
     CAD_CD_C_SEQ.Open;


     CAD_FD_C_PAR_CTR.close;
     CAD_FD_C_PAR_CTR.SQL.CLEAR;
     CAD_FD_C_PAR_CTR.SQL.Add(' SELECT * FROM CAD_TB_C_PAR_CTR ');
     CAD_FD_C_PAR_CTR.Open;


     BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
     BUS_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);
     BUS_CD_C_PAR_CTR.Close;
     BUS_CD_C_PAR_CTR.Open;





     FAT_FD_M_PED.close;
     FAT_FD_M_PED.SQL.CLEAR;
     FAT_FD_M_PED.SQL.Add(' SELECT * FROM FAT_TB_M_PED WHERE 1=2 ');
     FAT_FD_M_PED.Open;

     FAT_CD_M_PED := TClientDataSet.Create(nil);
     FAT_CD_M_PED.SetProvider(FAT_DP_M_PED);
     FAT_CD_M_PED.Close;
     FAT_CD_M_PED.Open;

     FAT_CD_M_PED_ITE := TClientDataSet.Create(nil);
     FAT_CD_M_PED_ITE.DataSetField := TDataSetField(FAT_CD_M_PED.FieldByName('FAT_FD_M_PED_ITE'));

     FAT_CD_M_PED_TIT := TClientDataSet.Create(nil);
     FAT_CD_M_PED_TIT.DataSetField := TDataSetField(FAT_CD_M_PED.FieldByName('FAT_FD_M_PED_TIT'));



     EST_FD_M_FEA.close;
     EST_FD_M_FEA.SQL.CLEAR;
     EST_FD_M_FEA.SQL.Add(' SELECT * FROM EST_TB_M_FEA WHERE 1=2 ');
     EST_FD_M_FEA.Open;

     EST_CD_M_FEA := TClientDataSet.Create(nil);
     EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
     EST_CD_M_FEA.Close;
     EST_CD_M_FEA.Open;



     for JsonRegistro in VJsonArray do
         begin

            FAT_CD_M_PED.Insert;

            IF CAD_CD_C_SEQ.Locate('ID_TABELA','FAT_TB_M_PED',[]) THEN
               BEGIN

                CAD_CD_C_SEQ.Edit;
                CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;

               END
             ELSE
               BEGIN
                 CAD_CD_C_SEQ.Insert;
                 CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FAT_TB_M_PED';
                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
               END;
             FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
             CAD_CD_C_SEQ.Post;



            for JsonCampo in TJSONObject(JsonRegistro) do
              begin

                if JsonCampo.JsonString.Value = 'id_cliente' then
                   begin
                     FAT_CD_M_PED.FieldByName('id_cliente').AsString := JsonCampo.JsonValue.Value;
                   end;

                if JsonCampo.JsonString.Value = 'dta_pedido' then
                   begin
                     FAT_CD_M_PED.FieldByName('dta_pedido').AsString := JsonCampo.JsonValue.Value;
                   end;

                if JsonCampo.JsonString.Value = 'empresa_id' then
                   begin
                     FAT_CD_M_PED.FieldByName('id_empresa').AsString := JsonCampo.JsonValue.Value;
                   end;


                 if JsonCampo.JsonString.Value = 'id' then
                   begin
                     FAT_CD_M_PED.FieldByName('id_pedido_mob').AsString := JsonCampo.JsonValue.Value;
                   end;

                 if JsonCampo.JsonString.Value = 'condpag_id' then
                   begin
                     FAT_CD_M_PED.FieldByName('id_condicao_pag').AsString := JsonCampo.JsonValue.Value;
                   end;

                 if JsonCampo.JsonString.Value = 'vendedor_id' then
                   begin
                     FAT_CD_M_PED.FieldByName('id_funcionario').AsString := JsonCampo.JsonValue.Value;
                     FAT_CD_M_PED.FieldByName('id_atendente').AsString := JsonCampo.JsonValue.Value;
                     FAT_CD_M_PED.FieldByName('id_vendedor').AsString := JsonCampo.JsonValue.Value;
                   end;
                 if JsonCampo.JsonString.Value = '' then
                   begin
                     FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsString := JsonCampo.JsonValue.Value;
                   end;
                 if JsonCampo.JsonString.Value = '' then
                   begin
                     FAT_CD_M_PED.FieldByName('observacao').AsString := JsonCampo.JsonValue.Value;
                   end;
                 if JsonCampo.JsonString.Value = '' then
                   begin
                     FAT_CD_M_PED.FieldByName('gps_latitude').AsString := JsonCampo.JsonValue.Value;
                   end;
                 if JsonCampo.JsonString.Value = '' then
                   begin
                     FAT_CD_M_PED.FieldByName('gps_longitude').AsString := JsonCampo.JsonValue.Value;
                   end;
                  if JsonCampo.JsonString.Value = 'vlr_bruto' then
                   begin
                     FAT_CD_M_PED.FieldByName('vlr_bruto').AsString := JsonCampo.JsonValue.Value;
                   end;
                  if JsonCampo.JsonString.Value = 'vlr_desconto' then
                   begin
                     FAT_CD_M_PED.FieldByName('vlr_desconto').AsString := JsonCampo.JsonValue.Value;
                   end;
                 if JsonCampo.JsonString.Value = 'vlr_liquido' then
                   begin
                     FAT_CD_M_PED.FieldByName('vlr_liquido').AsString := JsonCampo.JsonValue.Value;
                   end;



                 if JsonCampo.JsonString.Value = 'itens' then
                   begin
                     JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                        TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

                     for JsonRegistroItem in JsonRegistrosItens do
                       begin
                         FAT_CD_M_PED_ITE.Insert;

                         IF CAD_CD_C_SEQ.Locate('ID_TABELA','FAT_TB_M_PED_ITE',[]) THEN
                           BEGIN

                            CAD_CD_C_SEQ.Edit;
                            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                           END
                         ELSE
                           BEGIN
                             CAD_CD_C_SEQ.Insert;
                             CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FAT_TB_M_PED_ITE';
                             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                           END;
                         FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                         CAD_CD_C_SEQ.Post;



                         FAT_CD_M_PED_ITE.FieldByName('ID_PEDIDO').AsInteger :=  FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;
                         FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger := 0;
                         FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger := 0;


                         for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                           begin
                              if JsonCampoIte.JsonString.Value = 'item_id' then
                               begin
                                 FAT_CD_M_PED_ITE.FieldByName('id_item').AsString := JsonCampoIte.JsonValue.Value;
                                 FAT_CD_M_PED_ITE.FieldByName('id_busca_item').AsString := JsonCampoIte.JsonValue.Value;
                               end;

                              if JsonCampoIte.JsonString.Value = 'qtde' then
                               begin
                                 FAT_CD_M_PED_ITE.FieldByName('qtde').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'vlr_unitario' then
                               begin
                                 FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsString := JsonCampoIte.JsonValue.Value;
                                 FAT_CD_M_PED_ITE.FieldByName('vlr_unitario_orig').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'vlr_desconto' then
                               begin
                                 FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'vlr_bruto' then
                               begin
                                 FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'vlr_liquido' then
                               begin
                                 FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsString := JsonCampoIte.JsonValue.Value;
                               end;

                           end;
                           FAT_CD_M_PED_ITE.Post;
                       end;
                   end;

                  if JsonCampo.JsonString.Value = 'titulos' then
                   begin
                       JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                        TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

                     for JsonRegistroItem in JsonRegistrosItens do
                       begin
                         FAT_CD_M_PED_TIT.Insert;

                         IF CAD_CD_C_SEQ.Locate('ID_TABELA','FAT_TB_M_PED_TIT',[]) THEN
                           BEGIN

                            CAD_CD_C_SEQ.Edit;
                            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                           END
                         ELSE
                           BEGIN
                             CAD_CD_C_SEQ.Insert;
                             CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FAT_TB_M_NFE_TIT';
                             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                           END;
                         FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                         CAD_CD_C_SEQ.Post;

                         FAT_CD_M_PED_TIT.FieldByName('ID_PEDIDO').AsInteger :=  FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;

                         for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                           begin
                              if JsonCampoIte.JsonString.Value = 'formpag_id' then
                               begin
                                  FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'dias_titulo' then
                               begin
                                  FAT_CD_M_PED_TIT.FieldByName('dias').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'dta_titulo' then
                               begin
                                  FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'vlr_titulo' then
                               begin
                                  FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'che_banco' then
                               begin
                                  FAT_CD_M_PED_TIT.FieldByName('che_banco').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'che_agencia' then
                               begin
                                  FAT_CD_M_PED_TIT.FieldByName('che_agencia').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'che_conta' then
                               begin
                                  FAT_CD_M_PED_TIT.FieldByName('che_conta').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'che_numero' then
                               begin
                                  FAT_CD_M_PED_TIT.FieldByName('che_numero').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                              if JsonCampoIte.JsonString.Value = 'che_emitente' then
                               begin
                                  FAT_CD_M_PED_TIT.FieldByName('che_emitente').AsString := JsonCampoIte.JsonValue.Value;
                               end;
                           end;
                           FAT_CD_M_PED_TIT.Post;
                       end;
                   end;

              end;
              FAT_CD_M_PED.FieldByName('per_desconto').AsCurrency := RoundTo(
                        (FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency/FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);

              FAT_CD_M_PED.FieldByName('situacao').AsInteger := 0;
              FAT_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger := 0;
              BUS_CD_C_PAR_CTR.Locate('ID_EMPRESA',FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,[]);

              FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsInteger :=
                BUS_CD_C_PAR_CTR.FieldBYName('mob_id_tipo_mov_est_vnd').AsInteger;

              FAT_CD_M_PED.Post;
          end;



       codItens := '';
       FAT_CD_M_PED.First;

       if FAT_CD_M_PED.RecordCount>0 then
         begin
           codItens := '';
           codEmpresa := FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString;
           while not FAT_CD_M_PED.Eof do
             begin

                FAT_CD_M_PED_ITE.First;
                while not FAT_CD_M_PED_ITE.Eof do
                   begin
                      if coditens = '' then
                        codItens := codItens +''''+FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString+''''
                      else
                        codItens := codItens+','+''''+FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
                      FAT_CD_M_PED_ITE.Next;
                   end;
                FAT_CD_M_PED.Next;
             end;
        end;

      EST_FD_M_FES.close;
      EST_FD_M_FES.SQL.CLEAR;
      if  (codItens <> '') then
        EST_FD_M_FES.SQL.Add(' SELECT * FROM EST_TB_M_FES WHERE id_empresa='+codEmpresa+' and id_item in ('+codItens+') ')
      else
        EST_FD_M_FES.SQL.Add(' SELECT * FROM EST_TB_M_FES WHERE 1=2 ');
      EST_FD_M_FES.Open;

      EST_CD_M_FES := TClientDataSet.Create(nil);
      EST_CD_M_FES.SetProvider(EST_DP_M_FES);
      EST_CD_M_FES.Close;
      EST_CD_M_FES.Open;

      FAT_CD_M_PED.First;

       while not FAT_CD_M_PED.eof do
         begin
           FAT_CD_M_PED_ITE.First;
           while not FAT_CD_M_PED_ITE.eof do
             begin
               if (FAT_CD_M_PED_ITE.FieldByName('INT_TIPO_ITEM').AsString <>'09') then
                 begin
                   EST_CD_M_FEA.Insert;

                   IF CAD_CD_C_SEQ.Locate('ID_TABELA','EST_TB_M_FEA',[]) THEN
                     BEGIN
                      CAD_CD_C_SEQ.Edit;
                      CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                     END
                   ELSE
                     BEGIN
                       CAD_CD_C_SEQ.Insert;
                       CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'EST_TB_M_FEA';
                       CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                     END;
                   EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;


                   CAD_CD_C_SEQ.Post;



                   EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;
                   EST_CD_M_FEA.FieldByName('QTDE').AsCurrency          := FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency;
                   EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger  := FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger     := FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_COR').text           := FAT_CD_M_PED_ITE.FieldByName('ID_COR').text;
                   EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text;
                   EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').Asfloat;


                   EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime;
                   EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsInteger;
                   EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger      := 6;


                   EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;


                   EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_ORS').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := 0;
                   EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger       := 0;
                   EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := '';
                   EST_CD_M_FEA.Post;



                   if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO', VarArrayOf([
                                                                          FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,
                                                                          FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString,
                                                                          '0','0']),[]) then

                     begin
                       EST_CD_M_FES.Edit;
                     end
                   else
                     begin
                       EST_CD_M_FES.Insert;
                       EST_CD_M_FES.FieldByName('ID_EMPRESA').AsInteger := FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger;
                       EST_CD_M_FES.FieldByName('ID_ITEM').AsInteger := FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
                       EST_CD_M_FES.FieldByName('ID_COR').AsInteger := 0;
                       EST_CD_M_FES.FieldByName('ID_TAMANHO').AsInteger := 0;
                       EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsInteger := 0;
                       EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsInteger := 0;
                     end;

                   EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency;

                   EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                 EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                      EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                   EST_CD_M_FES.Post;
                 end;
               FAT_CD_M_PED_ITE.Next;
             end;
           FAT_CD_M_PED.Next;
         end;




       ConexaoNW.StartTransaction;
       try
        if CAD_CD_C_SEQ <> nil then
          if (CAD_CD_C_SEQ.ChangeCount > 0) then
            retorno := CAD_CD_C_SEQ.ApplyUpdates(0);


        if FAT_CD_M_PED <> nil then
           if (FAT_CD_M_PED.ChangeCount > 0) then
             retorno := FAT_CD_M_PED.ApplyUpdates(0);

       if EST_CD_M_FEA <> nil then
           if (EST_CD_M_FEA.ChangeCount > 0) then
             retorno := EST_CD_M_FEA.ApplyUpdates(0);

       if EST_CD_M_FES <> nil then
           if (EST_CD_M_FES.ChangeCount > 0) then
             retorno := EST_CD_M_FES.ApplyUpdates(0);


       ConexaoNW.Commit;

        except
          on e: exception do
            begin
              GerarSqlTxt('tbPedVenda erro:' + e.Message);
              ConexaoNW.Rollback;
            end;
        end;
        retorno :=0;
        if retorno = 0 then
           begin
             GetInvocationMetadata().ResponseCode := 201;
             uPrincipal.Form1.mmTexto.Lines.Add('Post do pedido de venda foi sincronizado!');
           end
        else
           GetInvocationMetadata().ResponseCode := 404;


  finally

  end;
end; }






//function TSM.testePedVenda: TStream;
function TSM.updatetbGravarPedVenda(dados: TJSONArray): TStream;
var
  txt,texto,pathFoto,NomeFoto, FotoStr,sData: String;
  base64Stream : TIdReadFileExclusiveStream;
  pngStream : TIdFileCreateStream;
  MIMEDecoder : TidDecoderMIME;
  Arquivo: TextFile;
  VJSONArray,JsonRegistros,JsonRegistrosItens: TJSONArray;
  JSONTabela,JSONCampo,JSONCampoCli,JSONCampoIte:TJSONPair;
  JsonRaiz,JsonRegistro,JsonRegistroItem,JsonCliente: TJSONValue;
  retorno:Integer;
  BUS_CD_C_ITE,CAD_CD_C_SEQ,CAD_CD_C_CLI,BUS_CD_C_PAR_CTR,BUS_CD_M_PED_ITE,EST_CD_M_FES,EST_CD_M_FEA,FAT_CD_M_PED,FAT_CD_M_PED_ITE,FAT_CD_M_PED_TIT: TClientDataSet;
  dataFormat: TFormatSettings;
  codEmpresa,codItens:String;

  codPedido,codCliente,codFlag:Integer;
begin

  try
     txt := TRIM(dados.ToString);
     //GerarSqlTxt(txt);

     //txt := trim(percorreArquivoTexto ('C:\e-north\branches\branch\enServerMobile\enServer\Win32\Debug\jsonTeste.txt'));



     TXT := COPY(TXT,2,Length(txt)-2);
     txt := '{'+txt+'}';


     JsonRegistro :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONObject;
     codFlag := -1;
     codPedido := 0;
     codCliente := 0;
     for JsonCampo in TJSONObject(JsonRegistro) do
      begin
         texto := JsonCampo.JsonString.Value;
         if JsonCampo.JsonString.Value = 'cliente_id' then
           begin
             if JsonCampo.JsonValue.Value<>'null' then
              codCliente := StrToInt(JsonCampo.JsonValue.Value);
           end;
         if JsonCampo.JsonString.Value = 'id' then
           begin
             if JsonCampo.JsonValue.Value<>'null' then
              codPedido := StrToInt(JsonCampo.JsonValue.Value);
           end;
         if JsonCampo.JsonString.Value = 'empresa_id' then
           begin
              codEmpresa := JsonCampo.JsonValue.Value;
           end;
         if JsonCampo.JsonString.Value = 'flag' then
           begin
            if JsonCampo.JsonValue.Value<>'null' then
              codFlag := StrToInt(JsonCampo.JsonValue.Value);
           end;
      end;



     dataFormat.DateSeparator := '-';
     dataFormat.ShortDateFormat := 'yyyy-mm-dd';




     CAD_FD_C_SEQ.close;
     CAD_FD_C_SEQ.SQL.CLEAR;
     CAD_FD_C_SEQ.SQL.Add(' SELECT * FROM CAD_TB_C_SEQ where id_tabela in (''CAD_TB_C_CLI'',''EST_TB_M_FEA'',''FAT_TB_M_PED'',''FAT_TB_M_NFE_ITE'',''FAT_TB_M_NFE_TIT'') ');
     CAD_FD_C_SEQ.Open;


     CAD_CD_C_SEQ := TClientDataSet.Create(nil);
     CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);
     CAD_CD_C_SEQ.Close;
     CAD_CD_C_SEQ.Open;


     CAD_FD_C_PAR_CTR.close;
     CAD_FD_C_PAR_CTR.SQL.CLEAR;
     CAD_FD_C_PAR_CTR.SQL.Add(' SELECT * FROM CAD_TB_C_PAR_CTR where id_empresa='+codEmpresa);
     CAD_FD_C_PAR_CTR.Open;


      BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
      BUS_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);
      BUS_CD_C_PAR_CTR.Close;
      BUS_CD_C_PAR_CTR.Open;


      CAD_FD_C_CLI.close;
      CAD_FD_C_CLI.SQL.CLEAR;
      CAD_FD_C_CLI.SQL.Add(' SELECT * FROM CAD_TB_C_CLI where 1=2');
      CAD_FD_C_CLI.Open;


      CAD_CD_C_CLI := TClientDataSet.Create(nil);
      CAD_CD_C_CLI.SetProvider(CAD_DP_C_CLI);
      CAD_CD_C_CLI.Close;
      CAD_CD_C_CLI.Open;





     FAT_FD_M_PED.close;
     FAT_FD_M_PED.SQL.CLEAR;
     FAT_FD_M_PED.SQL.Add(' SELECT * FROM FAT_TB_M_PED WHERE id_pedido='+IntToStr(codPedido));
     FAT_FD_M_PED.Open;

     FAT_CD_M_PED := TClientDataSet.Create(nil);
     FAT_CD_M_PED.SetProvider(FAT_DP_M_PED);
     FAT_CD_M_PED.Close;
     FAT_CD_M_PED.Open;

     FAT_CD_M_PED_ITE := TClientDataSet.Create(nil);
     FAT_CD_M_PED_ITE.DataSetField := TDataSetField(FAT_CD_M_PED.FieldByName('FAT_FD_M_PED_ITE'));

     FAT_CD_M_PED_TIT := TClientDataSet.Create(nil);
     FAT_CD_M_PED_TIT.DataSetField := TDataSetField(FAT_CD_M_PED.FieldByName('FAT_FD_M_PED_TIT'));


     BUS_FD_M_PED_ITE.close;
     BUS_FD_M_PED_ITE.SQL.CLEAR;
     BUS_FD_M_PED_ITE.SQL.Add(' SELECT * FROM FAT_TB_M_PED_ITE WHERE id_pedido='+IntToStr(codPedido));
     BUS_FD_M_PED_ITE.Open;

     BUS_CD_M_PED_ITE := TClientDataSet.Create(nil);
     BUS_CD_M_PED_ITE.SetProvider(BUS_DP_M_PED_ITE);
     BUS_CD_M_PED_ITE.Close;
     BUS_CD_M_PED_ITE.Open;



     EST_FD_M_FEA.close;
     EST_FD_M_FEA.SQL.CLEAR;
     if codPedido>0 then
        EST_FD_M_FEA.SQL.Add(' SELECT * FROM EST_TB_M_FEA WHERE id_pedido='+IntToStr(codPedido))
     else
        EST_FD_M_FEA.SQL.Add(' SELECT * FROM EST_TB_M_FEA WHERE 1=2 ');
     EST_FD_M_FEA.Open;

     EST_CD_M_FEA := TClientDataSet.Create(nil);
     EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
     EST_CD_M_FEA.Close;
     EST_CD_M_FEA.Open;




    if codPedido=0 then
      begin
        FAT_CD_M_PED.Insert;

        IF CAD_CD_C_SEQ.Locate('ID_TABELA','FAT_TB_M_PED',[]) THEN
           BEGIN

            CAD_CD_C_SEQ.Edit;
            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;

           END
         ELSE
           BEGIN
             CAD_CD_C_SEQ.Insert;
             CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FAT_TB_M_PED';
             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
           END;
         FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
         CAD_CD_C_SEQ.Post;
      end
    else
      begin
        if codFlag=1 then
          begin
            FAT_CD_M_PED.Edit;
            while (FAT_CD_M_PED_ITE.RecordCount>0) do
               begin
                 FAT_CD_M_PED_ITE.Delete;
               end;
            while (FAT_CD_M_PED_TIT.RecordCount>0) do
               begin
                 FAT_CD_M_PED_TIT.Delete;
               end;
          end;
      end;


   if (codFlag<>0) then
     begin
    for JsonCampo in TJSONObject(JsonRegistro) do
      begin

         if JsonCampo.JsonString.Value = 'cliente' then
           begin
             if (codCliente=0) then
               begin
                 JsonCliente :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJson),0) as TJSONObject;

                 CAD_CD_C_CLI.Insert;
                 IF CAD_CD_C_SEQ.Locate('ID_TABELA','CAD_TB_C_CLI',[]) THEN
                   BEGIN

                    CAD_CD_C_SEQ.Edit;
                    CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;

                   END
                 ELSE
                   BEGIN
                     CAD_CD_C_SEQ.Insert;
                     CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'CAD_TB_C_CLI';
                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                   END;
                 CAD_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                 CAD_CD_C_SEQ.Post;



                 for JsonCampoCli in TJSONObject(JsonCliente) do
                   begin
                      if JsonCampoCli.JsonString.Value = 'nome' then
                        begin
                         CAD_CD_C_CLI.FieldBYname('nome').AsString := Trim(JsonCampoCli.JsonValue.Value);
                        end;

                      if JsonCampoCli.JsonString.Value = 'cpfcnpj' then
                        begin
                         CAD_CD_C_CLI.FieldBYname('doc_cnpj_cpf').AsString := Trim(JsonCampoCli.JsonValue.Value);
                        end;

                       if JsonCampoCli.JsonString.Value = 'rg' then
                        begin
                         CAD_CD_C_CLI.FieldBYname('doc_ie_identidade').AsString := Trim(JsonCampoCli.JsonValue.Value);
                        end;

                       if JsonCampoCli.JsonString.Value = 'email' then
                        begin
                         CAD_CD_C_CLI.FieldBYname('email').AsString := Trim(JsonCampoCli.JsonValue.Value);
                        end;

                       if JsonCampoCli.JsonString.Value = 'telefone' then
                        begin
                         CAD_CD_C_CLI.FieldBYname('tel_fixo').AsString := Trim(JsonCampoCli.JsonValue.Value);
                        end;

                       if JsonCampoCli.JsonString.Value = 'id_vendedor' then
                        begin
                          if ((JsonCampoCli.JsonValue.Value<>'null') and (StrToInt(JsonCampoCli.JsonValue.Value)>0)) then
                            CAD_CD_C_CLI.FieldBYname('id_vendedor').AsString := Trim(JsonCampoCli.JsonValue.Value);
                        end;

                   end;


                   if Length(CAD_CD_C_CLI.FieldBYname('doc_cnpj_cpf').AsString)=14 then
                      CAD_CD_C_CLI.FieldBYname('pessoa').AsInteger := 1
                   else
                      CAD_CD_C_CLI.FieldBYname('pessoa').AsInteger := 0;

                   CAD_CD_C_CLI.FieldBYname('dta_cadastro').AsDateTime := now;
                   CAD_CD_C_CLI.FieldBYname('tipo_cliente').AsInteger := 0;
                   CAD_CD_C_CLI.FieldBYname('situacao').AsInteger := 0;

                   CAD_CD_C_CLI.FieldBYname('endereco').AsString := ' ';
                   CAD_CD_C_CLI.FieldBYname('cep').AsString := ' ';
                   CAD_CD_C_CLI.FieldBYname('numero').AsString := ' ';
                   CAD_CD_C_CLI.FieldBYname('bairro').AsString := ' ';
                   CAD_CD_C_CLI.FieldBYname('ativo').AsBoolean := true;


                   CAD_CD_C_CLI.Post;
                   FAT_CD_M_PED.FieldByName('id_cliente').AsInteger :=
                                CAD_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;
               end;
           end;


        if JsonCampo.JsonString.Value = 'cliente_id' then
           begin
             if JsonCampo.JsonValue.Value<>'null' then
                FAT_CD_M_PED.FieldByName('id_cliente').AsString := JsonCampo.JsonValue.Value;
           end;

        if JsonCampo.JsonString.Value = 'dta_pedido' then
           begin
             FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime := StrToDateTime(JsonCampo.JsonValue.Value);
           end;

        if JsonCampo.JsonString.Value = 'empresa_id' then
           begin
             FAT_CD_M_PED.FieldByName('id_empresa').AsString := JsonCampo.JsonValue.Value;
           end;


         if JsonCampo.JsonString.Value = 'condpag_id' then
           begin
             FAT_CD_M_PED.FieldByName('id_condicao_pag').AsString := JsonCampo.JsonValue.Value;
           end;

         if JsonCampo.JsonString.Value = 'vendedor_id' then
           begin
             FAT_CD_M_PED.FieldByName('id_responsavel').AsString := JsonCampo.JsonValue.Value;
             FAT_CD_M_PED.FieldByName('id_atendente').AsString := JsonCampo.JsonValue.Value;
             FAT_CD_M_PED.FieldByName('id_vendedor').AsString := JsonCampo.JsonValue.Value;
           end;

         if JsonCampo.JsonString.Value = '' then
           begin
             FAT_CD_M_PED.FieldByName('observacao').AsString := JsonCampo.JsonValue.Value;
           end;
         if JsonCampo.JsonString.Value = '' then
           begin
             FAT_CD_M_PED.FieldByName('gps_latitude').AsString := JsonCampo.JsonValue.Value;
           end;
         if JsonCampo.JsonString.Value = '' then
           begin
             FAT_CD_M_PED.FieldByName('gps_longitude').AsString := JsonCampo.JsonValue.Value;
           end;
          if JsonCampo.JsonString.Value = 'vlr_bruto' then
           begin
             FAT_CD_M_PED.FieldByName('vlr_bruto').AsString := JsonCampo.JsonValue.Value;
           end;
          if JsonCampo.JsonString.Value = 'vlr_desconto' then
           begin
             FAT_CD_M_PED.FieldByName('vlr_desconto').AsString := JsonCampo.JsonValue.Value;
           end;
         if JsonCampo.JsonString.Value = 'vlr_liquido' then
           begin
             FAT_CD_M_PED.FieldByName('vlr_liquido').AsString := JsonCampo.JsonValue.Value;
           end;



         if JsonCampo.JsonString.Value = 'itens' then
           begin
             JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

             for JsonRegistroItem in JsonRegistrosItens do
               begin
                 FAT_CD_M_PED_ITE.Insert;

                 IF CAD_CD_C_SEQ.Locate('ID_TABELA','FAT_TB_M_NFE_ITE',[]) THEN
                   BEGIN

                    CAD_CD_C_SEQ.Edit;
                    CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                   END
                 ELSE
                   BEGIN
                     CAD_CD_C_SEQ.Insert;
                     CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FAT_TB_M_NFE_ITE';
                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                   END;
                 FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                 CAD_CD_C_SEQ.Post;



                 FAT_CD_M_PED_ITE.FieldByName('ID_PEDIDO').AsInteger :=  FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;
                 FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger := 0;
                 FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger := 0;


                 for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                   begin
                      if JsonCampoIte.JsonString.Value = 'item_id' then
                       begin
                         FAT_CD_M_PED_ITE.FieldByName('id_item').AsString := JsonCampoIte.JsonValue.Value;
                         FAT_CD_M_PED_ITE.FieldByName('id_busca_item').AsString := JsonCampoIte.JsonValue.Value;
                       end;

                      if JsonCampoIte.JsonString.Value = 'qtde' then
                       begin
                         FAT_CD_M_PED_ITE.FieldByName('qtde').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'vlr_unitario' then
                       begin
                         FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsString := JsonCampoIte.JsonValue.Value;
                         FAT_CD_M_PED_ITE.FieldByName('vlr_unitario_orig').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'vlr_desconto' then
                       begin
                         FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'vlr_bruto' then
                       begin
                         FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'vlr_liquido' then
                       begin
                         FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsString := JsonCampoIte.JsonValue.Value;
                       end;

                   end;
                   FAT_CD_M_PED_ITE.FieldByName('per_desconto').AsCurrency := RoundTo(
                      (FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency/FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);

                   FAT_CD_M_PED_ITE.Post;
               end;
           end;

          if JsonCampo.JsonString.Value = 'titulos' then
           begin
               JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

             for JsonRegistroItem in JsonRegistrosItens do
               begin
                 FAT_CD_M_PED_TIT.Insert;

                 IF CAD_CD_C_SEQ.Locate('ID_TABELA','FAT_TB_M_NFE_TIT',[]) THEN
                   BEGIN

                    CAD_CD_C_SEQ.Edit;
                    CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                   END
                 ELSE
                   BEGIN
                     CAD_CD_C_SEQ.Insert;
                     CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'FAT_TB_M_NFE_TIT';
                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                   END;
                 FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                 CAD_CD_C_SEQ.Post;

                 FAT_CD_M_PED_TIT.FieldByName('ID_PEDIDO').AsInteger :=  FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;

                 for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                   begin
                      if JsonCampoIte.JsonString.Value = 'formpag_id' then
                       begin
                          FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'dias_titulo' then
                       begin
                          FAT_CD_M_PED_TIT.FieldByName('dias').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'dta_titulo' then
                       begin
                          FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsDateTime := StrToDateTime(JsonCampoIte.JsonValue.Value);
                       end;
                      if JsonCampoIte.JsonString.Value = 'vlr_titulo' then
                       begin
                          FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'che_banco' then
                       begin
                          FAT_CD_M_PED_TIT.FieldByName('che_banco').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'che_agencia' then
                       begin
                          FAT_CD_M_PED_TIT.FieldByName('che_agencia').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'che_conta' then
                       begin
                          FAT_CD_M_PED_TIT.FieldByName('che_conta').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'che_numero' then
                       begin
                          FAT_CD_M_PED_TIT.FieldByName('che_numero').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                      if JsonCampoIte.JsonString.Value = 'che_emitente' then
                       begin
                          FAT_CD_M_PED_TIT.FieldByName('che_emitente').AsString := JsonCampoIte.JsonValue.Value;
                       end;
                   end;
                   FAT_CD_M_PED_TIT.Post;
               end;
           end;

      end;
      FAT_CD_M_PED.FieldByName('per_desconto').AsCurrency := RoundTo(
                (FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency/FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);

      FAT_CD_M_PED.FieldByName('situacao').AsInteger := 0;
      FAT_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger := 0;


      FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsInteger :=
        BUS_CD_C_PAR_CTR.FieldBYName('mob_id_tipo_mov_estoque').AsInteger;

      FAT_CD_M_PED.Post;
     end;


     codItens := '';
     codEmpresa := FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString;

      FAT_CD_M_PED_ITE.First;
      while not FAT_CD_M_PED_ITE.Eof do
         begin
            if coditens = '' then
              codItens := codItens +''''+FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString+''''
            else
              codItens := codItens+','+''''+FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
            FAT_CD_M_PED_ITE.Next;
         end;

      EST_FD_M_FES.close;
      EST_FD_M_FES.SQL.CLEAR;
      if  (codItens <> '') then
        EST_FD_M_FES.SQL.Add(' SELECT * FROM EST_TB_M_FES WHERE id_empresa='+codEmpresa+' and id_item in ('+codItens+') ')
      else
        EST_FD_M_FES.SQL.Add(' SELECT * FROM EST_TB_M_FES WHERE 1=2 ');
      EST_FD_M_FES.Open;

      EST_CD_M_FES := TClientDataSet.Create(nil);
      EST_CD_M_FES.SetProvider(EST_DP_M_FES);
      EST_CD_M_FES.Close;
      EST_CD_M_FES.Open;

      BUS_CD_M_PED_ITE.First;
      while not BUS_CD_M_PED_ITE.eof do
         begin
           if EST_CD_M_FEA.Locate('ID_EMPRESA;ID_PEDIDO;ID_SEQ_ITEM;ID_ITEM;ID_COR;ID_TAMANHO', VarArrayOf([
                                                                      FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,
                                                                      BUS_CD_M_PED_ITE.FieldByName('ID_PEDIDO').AsString,
                                                                      BUS_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsString,
                                                                      BUS_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString,
                                                                      '0','0']),[]) then
              begin
                EST_CD_M_FEA.Delete;
              end;

           if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO', VarArrayOf([
                                                                      FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,
                                                                      BUS_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString,
                                                                      '0','0']),[]) then
             begin
               EST_CD_M_FES.Edit;
               EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                         EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency -BUS_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency;

               EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                             EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                  EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;
               EST_CD_M_FES.Post;
             end;


            BUS_CD_M_PED_ITE.Next;
         end;

       if (codFlag=0) then
         begin
           FAT_CD_M_PED.Delete;
         end;


       if (codFlag<>0) then
         begin
           FAT_CD_M_PED_ITE.First;
           while not FAT_CD_M_PED_ITE.eof do
             begin
                BUS_CD_C_ITE := TClientDataSet.Create(nil);
                BUS_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
                BUS_CD_C_ITE.Close;
                BUS_CD_C_ITE.Data:=
                    BUS_CD_C_ITE.DataRequest(VarArrayOf([0,FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString]));


               if (BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString <>'09') then
                 begin
                   EST_CD_M_FEA.Insert;

                   IF CAD_CD_C_SEQ.Locate('ID_TABELA','EST_TB_M_FEA',[]) THEN
                     BEGIN
                      CAD_CD_C_SEQ.Edit;
                      CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                     END
                   ELSE
                     BEGIN
                       CAD_CD_C_SEQ.Insert;
                       CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'EST_TB_M_FEA';
                       CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                     END;
                   EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;


                   CAD_CD_C_SEQ.Post;



                   EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;
                   EST_CD_M_FEA.FieldByName('QTDE').AsCurrency          := FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency;
                   EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger  := FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger     := FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_COR').text           := FAT_CD_M_PED_ITE.FieldByName('ID_COR').text;
                   EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text;
                   EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').Asfloat;


                   EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime;
                   EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsInteger;
                   EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger      := 6;


                   EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;


                   EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_ORS').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := 0;
                   EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger       := 0;
                   EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := '';
                   EST_CD_M_FEA.Post;



                   if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO', VarArrayOf([
                                                                          FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,
                                                                          FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString,
                                                                          '0','0']),[]) then

                     begin
                       EST_CD_M_FES.Edit;
                     end
                   else
                     begin
                       EST_CD_M_FES.Insert;
                       EST_CD_M_FES.FieldByName('ID_EMPRESA').AsInteger := FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger;
                       EST_CD_M_FES.FieldByName('ID_ITEM').AsInteger := FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
                       EST_CD_M_FES.FieldByName('ID_COR').AsInteger := 0;
                       EST_CD_M_FES.FieldByName('ID_TAMANHO').AsInteger := 0;
                       EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsInteger := 0;
                       EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsInteger := 0;
                     end;

                   EST_CD_M_FES.FieldByName('DATA_ULT_MOVIMENTO').AsDateTime := now;


                   EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +FAT_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency;

                   EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                 EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                      EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                   EST_CD_M_FES.Post;
                 end;
               FAT_CD_M_PED_ITE.Next;
             end;
        end;




       ConexaoNW.StartTransaction;
       try
        if CAD_CD_C_SEQ <> nil then
          if (CAD_CD_C_SEQ.ChangeCount > 0) then
            retorno := CAD_CD_C_SEQ.ApplyUpdates(0);

        if CAD_CD_C_CLI <> nil then
          if (CAD_CD_C_CLI.ChangeCount > 0) then
            retorno := CAD_CD_C_CLI.ApplyUpdates(0);


        if FAT_CD_M_PED <> nil then
           if (FAT_CD_M_PED.ChangeCount > 0) then
             retorno := FAT_CD_M_PED.ApplyUpdates(0);

       if EST_CD_M_FEA <> nil then
           if (EST_CD_M_FEA.ChangeCount > 0) then
             retorno := EST_CD_M_FEA.ApplyUpdates(0);

       if EST_CD_M_FES <> nil then
           if (EST_CD_M_FES.ChangeCount > 0) then
             retorno := EST_CD_M_FES.ApplyUpdates(0);


       ConexaoNW.Commit;

        except
          on e: exception do
            begin
              GerarSqlTxt('tbPedVenda erro:' + e.Message);
              ConexaoNW.Rollback;
            end;
        end;
        retorno :=0;
        if retorno = 0 then
           begin
             GetInvocationMetadata().ResponseCode := 201;
             uPrincipal.Form1.mmTexto.Lines.Add('Post do pedido de venda foi sincronizado!');
           end
        else
           GetInvocationMetadata().ResponseCode := 404;


  finally
     FAT_CD_M_PED.Close;

  end;
end;





function TSM.tbGravarOrdem: TJsonArray;
begin

end;


function TSM.updatetbGravarOrdem(dados: TJSONArray): TStream;
var
  txt,texto,pathFoto,NomeFoto, FotoStr,sData: String;
  base64Stream : TIdReadFileExclusiveStream;
  pngStream : TIdFileCreateStream;
  MIMEDecoder : TidDecoderMIME;
  Arquivo: TextFile;
  VJSONArray,JsonRegistros,JsonRegistrosItens: TJSONArray;
  JSONTabela,JSONCampo,JSONCampoIte:TJSONPair;
  JsonRaiz,JsonRegistro,JsonRegistroItem: TJSONValue;
  retorno:Integer;
  CAD_CD_C_SEQ,BUS_CD_C_PAR_CTR,EST_CD_M_FES,EST_CD_M_FEA,OFI_CD_M_ORV,OFI_CD_M_ORV_ITE,OFI_CD_M_ORV_FOT: TClientDataSet;
  dataFormat: TFormatSettings;
  codEmpresa,codItens:String;
begin

  try
     txt := dados.ToString;
     //GerarSqlTxt(txt);
     VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

     dataFormat.DateSeparator := '-';
     dataFormat.ShortDateFormat := 'yyyy-mm-dd';




     CAD_FD_C_SEQ.close;
     CAD_FD_C_SEQ.SQL.CLEAR;
     CAD_FD_C_SEQ.SQL.Add(' SELECT * FROM CAD_TB_C_SEQ where id_tabela in (''EST_TB_M_FEA'',''OFI_TB_M_ORV'',''OFI_TB_M_ORV_ITE'',''OFI_TB_M_ORV_FOT'') ');
     CAD_FD_C_SEQ.Open;


     CAD_CD_C_SEQ := TClientDataSet.Create(nil);
     CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);
     CAD_CD_C_SEQ.Close;
     CAD_CD_C_SEQ.Open;





     OFI_FD_M_ORV.close;
     OFI_FD_M_ORV.SQL.CLEAR;
     OFI_FD_M_ORV.SQL.Add(' SELECT * FROM OFI_TB_M_ORV WHERE 1=2 ');
     OFI_FD_M_ORV.Open;

     OFI_CD_M_ORV := TClientDataSet.Create(nil);
     OFI_CD_M_ORV.SetProvider(OFI_DP_M_ORV);
     OFI_CD_M_ORV.Close;
     OFI_CD_M_ORV.Open;

     OFI_CD_M_ORV_ITE := TClientDataSet.Create(nil);
     OFI_CD_M_ORV_ITE.DataSetField := TDataSetField(OFI_CD_M_ORV.FieldByName('OFI_FD_M_ORV_ITE'));

     OFI_CD_M_ORV_FOT := TClientDataSet.Create(nil);
     OFI_CD_M_ORV_FOT.DataSetField := TDataSetField(OFI_CD_M_ORV.FieldByName('OFI_FD_M_ORV_FOT'));



     EST_FD_M_FEA.close;
     EST_FD_M_FEA.SQL.CLEAR;
     EST_FD_M_FEA.SQL.Add(' SELECT * FROM EST_TB_M_FEA WHERE 1=2 ');
     EST_FD_M_FEA.Open;

     EST_CD_M_FEA := TClientDataSet.Create(nil);
     EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
     EST_CD_M_FEA.Close;
     EST_CD_M_FEA.Open;




      for JsonRaiz in VJsonArray do
         begin
           for JSONTabela in TJSONObject(JsonRaiz) do
             begin
                if JSONTabela.JsonString.Value = 'OFI_TB_M_ORV' then
                   begin
                      JsonRegistros :=  TJSONObject.ParseJSONValue(
                             TEncoding.ASCII.GetBytes(JSONTabela.JsonValue.ToJSON),0) as TJSONArray;


                      for JsonRegistro in  JsonRegistros do
                        begin
                          OFI_CD_M_ORV.Insert;

                          IF CAD_CD_C_SEQ.Locate('ID_TABELA',JSONTabela.JsonString.Value,[]) THEN
                             BEGIN

                              CAD_CD_C_SEQ.Edit;
                              CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;

                             END
                           ELSE
                             BEGIN
                               CAD_CD_C_SEQ.Insert;
                               CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'OFI_TB_M_ORV';
                               CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                             END;
                           OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                           CAD_CD_C_SEQ.Post;



                          OFI_CD_M_ORV.FieldByName('status').AsString := '0';
                          OFI_CD_M_ORV.FieldByName('TIPO_ORDEM').AsInteger := 1;
                          OFI_CD_M_ORV.FieldByName('ORDEM_SUBSTITUICAO').AsBoolean := false;
                          OFI_CD_M_ORV.FieldByName('vlr_despesas').AsCurrency := 0;
                          OFI_CD_M_ORV.FieldByName('vlr_credito').AsCurrency := 0;
                          OFI_CD_M_ORV.FieldByName('vlr_desc_produtos').AsCurrency := 0;
                          OFI_CD_M_ORV.FieldByName('per_desc_produtos').AsCurrency := 0;
                          OFI_CD_M_ORV.FieldByName('vlr_desc_servicos').AsCurrency := 0;
                          OFI_CD_M_ORV.FieldByName('per_desc_servicos').AsCurrency := 0;
                          OFI_CD_M_ORV.FieldByName('vlr_desc_terceiro').AsCurrency := 0;
                          OFI_CD_M_ORV.FieldByName('per_desc_terceiro').AsCurrency := 0;

                          for JsonCampo in TJSONObject(JsonRegistro) do
                            begin


                               if JsonCampo.JsonString.Value = 'id' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('id_ordem_mob').AsString := JsonCampo.JsonValue.Value;
                                 end;

                               if JsonCampo.JsonString.Value = 'dta_emissao' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('dta_emissao').AsDateTime := strtodatetime(JsonCampo.JsonValue.Value,dataFormat);
                                 end;

                               if JsonCampo.JsonString.Value = 'dta_entrega' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('dta_entrega').AsDateTime := strtodatetime(JsonCampo.JsonValue.Value,dataFormat);
                                 end;
                                if JsonCampo.JsonString.Value = 'qtde_comb' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('tanque_combus').AsString := JsonCampo.JsonValue.Value;
                                 end;

                               if JsonCampo.JsonString.Value = 'id_cliente' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('id_cliente').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'id_orcamento' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('id_orcamento').AsString := JsonCampo.JsonValue.Value;
                                 end;

                               if JsonCampo.JsonString.Value = 'id_condpag' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('id_condicao_pag').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'id_veiculo' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('id_veiculo').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'id_analista' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('id_analista').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'id_responsavel' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('id_responsavel').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'km_atual' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('km_atual').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'id_empresa' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('id_empresa').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'reclamacao' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('obs_reclamacao').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'problema' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('obs_problema').AsString := JsonCampo.JsonValue.Value;
                                 end;

                               if JsonCampo.JsonString.Value = 'vlr_produtos' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('vlr_produtos').AsString := JsonCampo.JsonValue.Value;
                                   OFI_CD_M_ORV.FieldByName('vlr_prod_liquido').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'vlr_terceiro' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('vlr_terceiro').AsString := JsonCampo.JsonValue.Value;
                                   OFI_CD_M_ORV.FieldByName('vlr_terc_liquido').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'vlr_servicos' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('vlr_serv_bruto').AsString := JsonCampo.JsonValue.Value;
                                   OFI_CD_M_ORV.FieldByName('vlr_ser_liquido').AsString := JsonCampo.JsonValue.Value;
                                 end;
                               if JsonCampo.JsonString.Value = 'vlr_liquido' then
                                 begin
                                   OFI_CD_M_ORV.FieldByName('vlr_total').AsString := JsonCampo.JsonValue.Value;
                                 end;



                               if JsonCampo.JsonString.Value = 'OFI_TB_M_ORV_ITE' then
                                 begin
                                   JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                                      TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

                                   for JsonRegistroItem in JsonRegistrosItens do
                                     begin
                                       OFI_CD_M_ORV_ITE.Insert;


                                       IF CAD_CD_C_SEQ.Locate('ID_TABELA',JsonCampo.JsonString.Value,[]) THEN
                                         BEGIN

                                          CAD_CD_C_SEQ.Edit;
                                          CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                                         END
                                       ELSE
                                         BEGIN
                                           CAD_CD_C_SEQ.Insert;
                                           CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'OFI_TB_M_ORV_ITE';
                                           CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                                         END;
                                       OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;

                                       CAD_CD_C_SEQ.Post;



                                       OFI_CD_M_ORV_ITE.FieldByName('ID_ORDEM').AsInteger :=  OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsInteger;
                                       OFI_CD_M_ORV_ITE.FieldByName('id_cor').AsString := '0';
                                       OFI_CD_M_ORV_ITE.FieldByName('id_tamanho').AsString := '0';
                                       OFI_CD_M_ORV_ITE.FieldByName('per_desconto').AsCurrency := 0;
                                       OFI_CD_M_ORV_ITE.FieldByName('vlr_desconto').AsCurrency := 0;
                                       for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                                         begin
                                            if JsonCampoIte.JsonString.Value = 'id_item' then
                                             begin
                                               OFI_CD_M_ORV_ITE.FieldByName('id_item').AsString := JsonCampoIte.JsonValue.Value;
                                               OFI_CD_M_ORV_ITE.FieldByName('id_busca_item').AsString := JsonCampoIte.JsonValue.Value;
                                             end;


                                            if JsonCampoIte.JsonString.Value = 'qtde' then
                                             begin
                                               OFI_CD_M_ORV_ITE.FieldByName('qtde').AsString := JsonCampoIte.JsonValue.Value;
                                             end;
                                            if JsonCampoIte.JsonString.Value = 'tipo_item' then
                                             begin
                                               OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString := JsonCampoIte.JsonValue.Value;
                                             end;

                                            if JsonCampoIte.JsonString.Value = 'vlr_unitario' then
                                             begin
                                               OFI_CD_M_ORV_ITE.FieldByName('vlr_unitario').AsString := JsonCampoIte.JsonValue.Value;
                                             end;
                                            if JsonCampoIte.JsonString.Value = 'vlr_liquido' then
                                             begin
                                               OFI_CD_M_ORV_ITE.FieldByName('vlr_bruto').AsString := JsonCampoIte.JsonValue.Value;
                                               OFI_CD_M_ORV_ITE.FieldByName('vlr_liquido').AsString := JsonCampoIte.JsonValue.Value;
                                             end;
                                         end;
                                         OFI_CD_M_ORV_ITE.post;
                                     end;

                                 end;
                                if JsonCampo.JsonString.Value = 'OFI_TB_M_ORV_FOT' then
                                 begin
                                     JsonRegistrosItens :=  TJSONObject.ParseJSONValue(
                                      TEncoding.ASCII.GetBytes(JsonCampo.JsonValue.ToJSON),0) as TJSONArray;

                                   for JsonRegistroItem in JsonRegistrosItens do
                                     begin
                                       OFI_CD_M_ORV_FOT.Insert;

                                       IF CAD_CD_C_SEQ.Locate('ID_TABELA',JsonCampo.JsonString.Value,[]) THEN
                                         BEGIN

                                          CAD_CD_C_SEQ.Edit;
                                          CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                                         END
                                       ELSE
                                         BEGIN
                                           CAD_CD_C_SEQ.Insert;
                                           CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'OFI_TB_M_ORV_FOT';
                                           CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                                         END;
                                       OFI_CD_M_ORV_FOT.FieldByName('ID_SEQUENCIA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;

                                       CAD_CD_C_SEQ.Post;

                                       OFI_CD_M_ORV_FOT.FieldByName('ID_ORDEM').AsInteger :=  OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsInteger;

                                        pathFoto := DiretorioImagens+'emp'+OFI_CD_M_ORV.FieldByName('id_empresa').AsString;
                                           //pathFoto := 'emp'+CAD_CD_C_VIT.FieldByName('id_empresa').AsString;
                                           if not (DirectoryExists(pathFoto)) then
                                              begin
                                                ForceDirectories(pathFoto);
                                              end;

                                       for JsonCampoIte in TJSONObject(JsonRegistroItem) do
                                         begin
                                            if JsonCampoIte.JsonString.Value = 'imagem' then
                                             begin
                                                FotoStr := JsonCampoIte.JsonValue.Value;

                                                NomeFoto := 'FotoOrv'+OFI_CD_M_ORV.FieldByName('id_empresa').AsString + '-'+
                                                         OFI_CD_M_ORV_FOT.FieldByName('id_ordem').AsString+'-'+
                                                         OFI_CD_M_ORV_FOT.FieldByName('id_sequencia').AsString;

                                                OFI_CD_M_ORV_FOT.FieldByName('caminho_foto').AsString :=
                                                           NomeFoto+'.jpg';

                                                AssignFile(Arquivo,pathFoto+'\FotoTemp.txt');
                                                Rewrite(Arquivo); //abre o arquivo para escrita

                                                Writeln(Arquivo,FotoStr);
                                                Closefile(Arquivo); //fecha o handle de arquivo

                                                base64Stream := TIdReadFileExclusiveStream.Create(pathFoto+'\FotoTemp.txt');
                                                try
                                                  pngStream := TIdFileCreateStream.Create(pathFoto+'\'+NomeFoto+'.jpg');
                                                  try
                                                    try
                                                      MIMEDecoder := TIdDecoderMIME.Create(nil);
                                                      try
                                                        MIMEDecoder.DecodeBegin(pngStream);
                                                        try
                                                          while (ReadLnFromStream(base64Stream, sData)=true) do
                                                            MIMEDecoder.Decode(sData);
                                                        finally
                                                          MIMEDecoder.DecodeEnd;
                                                        end;
                                                      finally
                                                        MIMEDecoder.Free
                                                      end;
                                                    finally
                                                      pngStream.Free;
                                                    end;
                                                  except
                                                    DeleteFile(pathFoto+'\FotoTemp.txt');
                                                    raise;
                                                  end;
                                                finally
                                                  base64Stream.Free;
                                                end;


                                             end;
                                         end;
                                         OFI_CD_M_ORV_FOT.post;
                                     end;
                                 end;

                            end;
                        end;
                   end;


             end;
         end;


       codItens := '';
       OFI_CD_M_ORV.First;

       if OFI_CD_M_ORV.RecordCount>0 then
         begin
           CAD_FD_C_PAR_CTR.close;
           CAD_FD_C_PAR_CTR.SQL.CLEAR;
           CAD_FD_C_PAR_CTR.SQL.Add(' SELECT * FROM CAD_TB_C_PAR_CTR WHERE ID_EMPRESA='''+OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString+''' ');
           CAD_FD_C_PAR_CTR.Open;


           BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
           BUS_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);
           BUS_CD_C_PAR_CTR.Close;
           BUS_CD_C_PAR_CTR.Open;

           codItens := '';
           codEmpresa := OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString;
           while not OFI_CD_M_ORV.Eof do
             begin
                OFI_CD_M_ORV.Edit;
                OFI_CD_M_ORV.FieldByName('ID_TIPO_OS').AsInteger := BUS_CD_C_PAR_CTR.FieldByName('MOB_TIPO_ORDEM').AsInteger;
                OFI_CD_M_ORV_ITE.First;
                while not OFI_CD_M_ORV_ITE.Eof do
                   begin
                      if coditens = '' then
                        codItens := codItens +''''+OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsString+''''
                      else
                        codItens := codItens+','+''''+OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsString+'''';
                      OFI_CD_M_ORV_ITE.Next;
                   end;

                OFI_CD_M_ORV.Post;
                OFI_CD_M_ORV.Next;
             end;
        end;

      EST_FD_M_FES.close;
      EST_FD_M_FES.SQL.CLEAR;
      if  (codItens <> '') then
        EST_FD_M_FES.SQL.Add(' SELECT * FROM EST_TB_M_FES WHERE id_empresa='+codEmpresa+' and id_item in ('+codItens+') ')
      else
        EST_FD_M_FES.SQL.Add(' SELECT * FROM EST_TB_M_FES WHERE 1=2 ');
      EST_FD_M_FES.Open;

      EST_CD_M_FES := TClientDataSet.Create(nil);
      EST_CD_M_FES.SetProvider(EST_DP_M_FES);
      EST_CD_M_FES.Close;
      EST_CD_M_FES.Open;

       OFI_CD_M_ORV.First;

       while not OFI_CD_M_ORV.eof do
         begin
           OFI_CD_M_ORV_ITE.First;
           while not OFI_CD_M_ORV_ITE.eof do
             begin
               if (OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <>'09') then
                 begin
                   EST_CD_M_FEA.Insert;

                   IF CAD_CD_C_SEQ.Locate('ID_TABELA','EST_TB_M_FEA',[]) THEN
                     BEGIN
                      CAD_CD_C_SEQ.Edit;
                      CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger +1;
                     END
                   ELSE
                     BEGIN
                       CAD_CD_C_SEQ.Insert;
                       CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString  := 'EST_TB_M_FEA';
                       CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := 1;
                     END;
                   EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger :=   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;


                   CAD_CD_C_SEQ.Post;



                   EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;
                   EST_CD_M_FEA.FieldByName('QTDE').AsCurrency          := OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsCurrency;
                   EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger  := OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger     := OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_COR').text           := OFI_CD_M_ORV_ITE.FieldByName('ID_COR').text;
                   EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := OFI_CD_M_ORV_ITE.FieldByName('ID_TAMANHO').text;
                   EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').Asfloat;


                   EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := OFI_CD_M_ORV_ITE.FieldByName('DTA_REQUISICAO').AsDateTime;
                   EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := BUS_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsInteger;
                   EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger      := 9;

                   if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([
                                                                          OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString,
                                                                          OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsString,
                                                                          '0','0']),[]) then
                     begin
                     if  (EST_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsCurrency>0) then
                       begin
                           EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := roundTo(EST_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsCurrency,-2);
                           EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := roundTo(OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat * EST_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsCurrency,-2);
                           EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                       end;
                     end;

                   EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := 0;
                   EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := 0;
                   EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := 0;
                   EST_CD_M_FEA.FieldByName('ID_ORS').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := 0;
                   EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger       := OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsInteger;
                   EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := '';
                   EST_CD_M_FEA.Post;



                   if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO', VarArrayOf([
                                                                          OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsString,
                                                                          OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsString,
                                                                          '0','0']),[]) then

                     begin
                       EST_CD_M_FES.Edit;
                     end
                   else
                     begin
                       EST_CD_M_FES.Insert;
                       EST_CD_M_FES.FieldByName('ID_EMPRESA').AsInteger := OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsInteger;
                       EST_CD_M_FES.FieldByName('ID_ITEM').AsInteger := OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger;
                       EST_CD_M_FES.FieldByName('ID_COR').AsInteger := 0;
                       EST_CD_M_FES.FieldByName('ID_TAMANHO').AsInteger := 0;
                       EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsInteger := 0;
                       EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsInteger := 0;
                     end;

                   EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsCurrency;

                   EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                 EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                      EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                   EST_CD_M_FES.Post;
                 end;
               OFI_CD_M_ORV_ITE.Next;
             end;
           OFI_CD_M_ORV.Next;
         end;




       ConexaoNW.StartTransaction;
       try
        if CAD_CD_C_SEQ <> nil then
          if (CAD_CD_C_SEQ.ChangeCount > 0) then
            retorno := CAD_CD_C_SEQ.ApplyUpdates(0);


        if OFI_CD_M_ORV <> nil then
           if (OFI_CD_M_ORV.ChangeCount > 0) then
             retorno := OFI_CD_M_ORV.ApplyUpdates(0);

       if EST_CD_M_FEA <> nil then
           if (EST_CD_M_FEA.ChangeCount > 0) then
             retorno := EST_CD_M_FEA.ApplyUpdates(0);

       if EST_CD_M_FES <> nil then
           if (EST_CD_M_FES.ChangeCount > 0) then
             retorno := EST_CD_M_FES.ApplyUpdates(0);


       ConexaoNW.Commit;

        except
          on e: exception do
            begin
              GerarSqlTxt('tbOrdem erro:' + e.Message);
              ConexaoNW.Rollback;
            end;
        end;

        if retorno = 0 then
           begin
             GetInvocationMetadata().ResponseCode := 201;
             uPrincipal.Form1.mmTexto.Lines.Add('Post da ordem de serviço foi sincronizado!');
           end
        else
           GetInvocationMetadata().ResponseCode := 404;


  finally

  end;

end;


function TSM.tbClientes(const filtro:String;const texto:String): TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
        JTrue:TJSONTrue;
  sql: String;

  CAD_CD_C_CLI: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da
    Tabela: CAD_TB_C_CLI - Clientes
    Criado por: Luan
    Data: 24/07/2017
  }
  try
    sql := ' SELECT CLI.*,CID.NOME AS INT_NOMECID,CID.UF AS INT_UF FROM CAD_TB_C_CLI CLI '+
           ' LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=CLI.ID_CIDADE '+
           ' where ativo=true ';
    if filtro='1' then
       SQL := SQL +
           Format(' AND upper(CLI.NOME) LIKE ''%s%%'' ', [uppercase(TEXTO)]);
    if filtro='2' then
      SQL := SQL +
        ' AND CLI.doc_cnpj_cpf='''+TEXTO+'''';


    CAD_CD_C_CLI := TClientDataSet.Create(nil);
    CAD_CD_C_CLI.SetProvider(CAD_DP_C_CLI);

    CAD_FD_C_CLI.close;
    CAD_FD_C_CLI.SQL.CLEAR;
    CAD_FD_C_CLI.SQL.Add(sql);   //18,1,4     5926
    CAD_CD_C_CLI.Open;

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_CLI.Eof  do
       begin
              jso := TJsonObject.Create();

               jso.AddPair(TJsonPair.Create('id',CAD_CD_C_CLI.FieldByName('id_cliente').AsString));
                jso.AddPair(TJsonPair.Create('nome',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('nome').AsString)));
                jso.AddPair(TJsonPair.Create('pessoa',CAD_CD_C_CLI.FieldByName('pessoa').AsString));
                jso.AddPair(TJsonPair.Create('perfil',CAD_CD_C_CLI.FieldByName('id_perfil_cli').AsString));
                jso.AddPair(TJsonPair.Create('ativo',CAD_CD_C_CLI.FieldByName('ativo').AsString));
                jso.AddPair(TJsonPair.Create('rota',CorrigirDecimal(CAD_CD_C_CLI.FieldByName('id_rota').AsString)));
                jso.AddPair(TJsonPair.Create('id_vendedor',CorrigirDecimal(CAD_CD_C_CLI.FieldByName('id_vendedor').AsString)));
                jso.AddPair(TJsonPair.Create('cod_cidade',CAD_CD_C_CLI.FieldByName('id_cidade').AsString));
                jso.AddPair(TJsonPair.Create('cidade',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('int_nomecid').AsString)));
                jso.AddPair(TJsonPair.Create('uf',CAD_CD_C_CLI.FieldByName('int_uf').AsString));
                jso.AddPair(TJsonPair.Create('cep',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('cep').AsString)));
                jso.AddPair(TJsonPair.Create('endereco',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('endereco').AsString)));
                jso.AddPair(TJsonPair.Create('numero',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('numero').AsString)));
                jso.AddPair(TJsonPair.Create('bairro',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('bairro').AsString)));
                jso.AddPair(TJsonPair.Create('telefone',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('tel_fixo').AsString)));
                jso.AddPair(TJsonPair.Create('celular',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('tel_movel').AsString)));
                jso.AddPair(TJsonPair.Create('email',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('email').AsString)));
                jso.AddPair(TJsonPair.Create('sexo',CAD_CD_C_CLI.FieldByName('sexo').AsString));
                jso.AddPair(TJsonPair.Create('dtanasc',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('dta_nascimento').AsString)));
                jso.AddPair(TJsonPair.Create('filiacao',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('filiacao').AsString)));
                jso.AddPair(TJsonPair.Create('cpfcnpj',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString)));
                jso.AddPair(TJsonPair.Create('ip',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('doc_ip').AsString)));
                jso.AddPair(TJsonPair.Create('rg',CorrigirCaractereInvalid(CAD_CD_C_CLI.FieldByName('doc_ie_identidade').AsString)));
          Lista.AddElement(jso);
         CAD_CD_C_CLI.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do cliente sincronizado!');

  finally
    FreeAndNil(Lista);
    CAD_FD_C_CLI.close;
    CAD_CD_C_CLI.close;
    FreeAndNil(CAD_CD_C_CLI);
  end;

end;



function TSM.getImagem(tabela:String;nome: String): TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;

  sql:String;
  CAD_CD_C_ITE: TClientDataSet;

  Lista:  TJsonArray;
  fStream: TFileStream;
begin

  { Get da
    Tabela: CAD_TB_C_ITE - Itens
    Criado por: Luan
    Data: 24/07/2017
  }
  try
     GetInvocationMetadata().ResponseCode := 200;

     if (trim(nome)='') or (trim(tabela)='')  then
      begin
       GetInvocationMetadata().ResponseCode := 400;
      end;

     If not FileExists(diretorioImagens+tabela+'\'+nome) then
      begin
         GetInvocationMetadata().ResponseCode := 404;
      end;

     if pos('.png',nome)>0 then
       GetInvocationMetadata().ResponseContentType :=  'image/png';
     if pos('.jpg',nome)>0 then
       GetInvocationMetadata().ResponseContentType :=  'image/jpeg';


      Result := CarregarImagem(tabela,nome);

       uPrincipal.Form1.mmTexto.Lines.Add('Get imagem sincronizado!');

  finally
    // FreeAndNil(fStream);
  end;
end;



function TSM.tbItens(const with_photo:String;const max_registros:String;const offset:String;const filtro:String;const texto:String): TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;

  sql:String;
  CAD_CD_C_ITE: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da
    Tabela: CAD_TB_C_ITE - Itens
    Criado por: Luan
    Data: 24/07/2017
  }
  try
    sql := ' SELECT * FROM CAD_TB_C_ITE ITE '+
           ' where ativo=true ';
    if filtro='1' then
       SQL := SQL +
            ' AND ITE.ID_ITEM='''+TEXTO+'''';
    if filtro='2' then
       SQL := SQL +
           Format(' AND upper(ITE.DESCRICAO) LIKE ''%s%%'' ', [uppercase(TEXTO)]);

    sql := sql + ' order by ite.id_item ';

    if (max_registros<>'') and (StrToInt(max_registros)>0) then
      sql := sql + ' limit '+max_registros;

     if (offset<>'') and (StrToInt(offset)>0) then
      sql := sql + ' offset '+offset;


    CAD_CD_C_ITE := TClientDataSet.Create(nil);
    CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);

    CAD_FD_C_ITE.close;
    CAD_FD_C_ITE.SQL.CLEAR;
    CAD_FD_C_ITE.SQL.Add(SQL);
    CAD_CD_C_ITE.Open;

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_ITE.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('coditem',CAD_CD_C_ITE.FieldByName('id_item').AsString));
          jso.AddPair(TJsonPair.Create('cod_barra',CAD_CD_C_ITE.FieldByName('cod_barra').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_ITE.FieldByName('descricao').AsString));
          jso.AddPair(TJsonPair.Create('referencia',CAD_CD_C_ITE.FieldByName('referencia').AsString));
          jso.AddPair(TJsonPair.Create('grupo',CAD_CD_C_ITE.FieldByName('id_grupo').AsString));
          jso.AddPair(TJsonPair.Create('undvenda',CAD_CD_C_ITE.FieldByName('id_und_venda').AsString));
          jso.AddPair(TJsonPair.Create('embvenda',CAD_CD_C_ITE.FieldByName('emb_venda').AsString));
          jso.AddPair(TJsonPair.Create('precoavista',CorrigirDecimal(CAD_CD_C_ITE.FieldByName('preco_avista').AsString)));
          jso.AddPair(TJsonPair.Create('precoaprazo',CorrigirDecimal(CAD_CD_C_ITE.FieldByName('preco_aprazo').AsString)));
          jso.AddPair(TJsonPair.Create('nome_foto',CAD_CD_C_ITE.FieldByName('mob_nome_foto').AsString));
          {if with_photo='1' then
            jso.AddPair(TJsonPair.Create('foto',CarregarImagem('CAD_TB_C_ITE',CAD_CD_C_ITE.FieldByName('mob_nome_foto').AsString)));}

          Lista.AddElement(jso);
         CAD_CD_C_ITE.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do item sincronizado!');

  finally
    FreeAndNil(Lista);
    CAD_FD_C_ITE.close;
    CAD_CD_C_ITE.close;
    FreeAndNil(CAD_CD_C_ITE);
  end;
end;


function TSM.CAD_DP_C_ITEDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlIte: String;
  begin
    Result :=
       ' select ite.*, '+
       ' GRU.TIPO_ITEM AS int_tipo_item '+
       ' from cad_tb_c_ite ite '+
       ' LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_GRUPO ';
  end;
begin
   CAD_FD_C_ITE.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_ITE.SQL.Add(enSqlIte + ' WHERE 1=2 ')
        else
           CAD_FD_C_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.ID_ITEM= ''' + VarToStr(Input[1]) +''' ');
      end;

   Result := CAD_DP_C_ITE.Data;
   CAD_FD_C_ITE.Close;
end;

function TSM.CarregarImagem(tabela:String;nome: String):TStream;
var
  vStream : TMemoryStream;
  Encoder: TIdEncoderMIME;
  imagem:TBitmap;
begin
  //Result := '';

  if nome='' then
   begin
     exit;
   end;

  If not FileExists(diretorioImagens+'ImagensMob\'+tabela+'\'+nome) then
   begin
      exit;
   end;

 try
  vStream := TMemoryStream.Create;
  Encoder := TIdEncoderMIME.Create;
  imagem := TBitmap.Create;
  imagem.LoadFromFile(diretorioImagens+'ImagensMob\'+tabela+'\'+nome);
  imagem.SaveToStream(vStream);
  vStream.Position := 0;
  Result := vStream;
 finally
 //  FreeAndNil(Encoder);
  // FreeAndNil(vStream);
  imagem.FreeImage;
 end;


end;


{function TSM.CarregarImagem(tabela:String;nome: String):String;
var
  vStream : TMemoryStream;
  Encoder: TIdEncoderMIME;
  imagem:TBitmap;
begin
  Result := '';

  if nome='' then
   begin
     exit;
   end;

  If not FileExists(diretorioImagens+'ImagensMob\'+tabela+'\'+nome) then
   begin
      exit;
   end;

 try
  vStream := TMemoryStream.Create;
  Encoder := TIdEncoderMIME.Create;
  imagem := TBitmap.Create;
  imagem.LoadFromFile(diretorioImagens+'ImagensMob\'+tabela+'\'+nome);
  imagem.SaveToStream(vStream);
  vStream.Position := 0;
  Result := Encoder.Encode(vStream);
 finally
   FreeAndNil(Encoder);
   FreeAndNil(vStream);
 end;


end;}






function TSM.tbItensOficina: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_ITE: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da
    Tabela: CAD_TB_C_ITE - Itens
    Criado por: Luan
    Data: 24/07/2017
  }
  try




    CAD_CD_C_ITE := TClientDataSet.Create(nil);
    CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);

    CAD_FD_C_ITE.close;
    CAD_FD_C_ITE.SQL.CLEAR;
    CAD_FD_C_ITE.SQL.Add(' SELECT * FROM CAD_TB_C_ITE ITE '+
                         ' where ativo=true order by id_item ');
    CAD_CD_C_ITE.Open;

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_ITE.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('coditem',CAD_CD_C_ITE.FieldByName('id_item').AsString));

          jso.AddPair(TJsonPair.Create('descricao',CorrigirCaractereInvalid(CAD_CD_C_ITE.FieldByName('descricao').AsString)));
          jso.AddPair(TJsonPair.Create('referencia',CorrigirCaractereInvalid(CAD_CD_C_ITE.FieldByName('referencia').AsString)));
          jso.AddPair(TJsonPair.Create('grupo',CAD_CD_C_ITE.FieldByName('id_grupo').AsString));
          jso.AddPair(TJsonPair.Create('undvenda',CAD_CD_C_ITE.FieldByName('id_und_venda').AsString));
          jso.AddPair(TJsonPair.Create('embvenda',CAD_CD_C_ITE.FieldByName('emb_venda').AsString));
          jso.AddPair(TJsonPair.Create('precoavista',CAD_CD_C_ITE.FieldByName('preco_avista').AsString));
          jso.AddPair(TJsonPair.Create('precoaprazo',CAD_CD_C_ITE.FieldByName('preco_aprazo').AsString));

          Lista.AddElement(jso);
         CAD_CD_C_ITE.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do item sincronizado!');

  finally
    FreeAndNil(Lista);
    CAD_FD_C_ITE.close;
    CAD_CD_C_ITE.close;
    FreeAndNil(CAD_CD_C_ITE);
  end;
end;



function TSM.tbItensPrcOficina: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto,sql: String;

  CAD_CD_C_ITE_PRC,BUS_CD_C_PAR_CTR: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da
    Tabela: CAD_TB_C_ITE_PRC - Preço dos Itens
    Criado por: Luan
    Data: 24/07/2017
  }
  try
     sql :=  ' SELECT prc.* FROM CAD_TB_C_ITE_PRC prc ' +
             '   left outer join cad_tb_c_ite ite on ite.id_item = prc.id_item ' +
             ' where ite.ativo = true ';
     {if id_empresa<>'' then
       begin
           CAD_FD_C_PAR_CTR.close;
           CAD_FD_C_PAR_CTR.SQL.CLEAR;
           CAD_FD_C_PAR_CTR.SQL.Add(' SELECT * FROM CAD_TB_C_PAR_CTR WHERE ID_EMPRESA='''+id_empresa+''' ');
           CAD_FD_C_PAR_CTR.Open;


           BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
           BUS_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);
           BUS_CD_C_PAR_CTR.Close;
           BUS_CD_C_PAR_CTR.Open;

           if BUS_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean then
             sql :=
               ' SELECT prc.* FROM CAD_TB_C_ITE_PRC prc ' +
               '   left outer join cad_tb_c_ite ite on ite.id_item = prc.id_item ' +
               ' where ite.ativo = true and prc.id_empresa='''+id_empresa+''' '
           else
             sql :=
               ' SELECT prc.* FROM CAD_TB_C_ITE_PRC prc ' +
               '   left outer join cad_tb_c_ite ite on ite.id_item = prc.id_item ' +
               ' where ite.ativo = true and prc.id_empresa=''0'' ';
       end;}



    CAD_CD_C_ITE_PRC := TClientDataSet.Create(nil);
    CAD_CD_C_ITE_PRC.SetProvider(CAD_DP_C_ITE_PRC);

    CAD_FD_C_ITE_PRC.close;
    CAD_FD_C_ITE_PRC.SQL.CLEAR;
    CAD_FD_C_ITE_PRC.SQL.Add(sql);
    CAD_CD_C_ITE_PRC.Open;

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_ITE_PRC.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('coditem',CAD_CD_C_ITE_PRC.FieldByName('id_item').AsString));
          jso.AddPair(TJsonPair.Create('perfil',CAD_CD_C_ITE_PRC.FieldByName('id_perfil_cli').AsString));
          jso.AddPair(TJsonPair.Create('precoavista',CAD_CD_C_ITE_PRC.FieldByName('preco_avista').AsString));
          jso.AddPair(TJsonPair.Create('preco1',CAD_CD_C_ITE_PRC.FieldByName('preco1').AsString));
          jso.AddPair(TJsonPair.Create('preco2',CAD_CD_C_ITE_PRC.FieldByName('preco2').AsString));
          jso.AddPair(TJsonPair.Create('preco3',CAD_CD_C_ITE_PRC.FieldByName('preco3').AsString));
          jso.AddPair(TJsonPair.Create('preco4',CAD_CD_C_ITE_PRC.FieldByName('preco4').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_ITE_PRC.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do preço do item sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_ITE_PRC.close;
    CAD_CD_C_ITE_PRC.close;
    FreeAndNil(CAD_CD_C_ITE_PRC);
  end;
end;



{function TSM.tbItens: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_ITE: TClientDataSet;

  Lista:  TJsonArray;
begin


  try

    CAD_CD_C_ITE := TClientDataSet.Create(nil);
    CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);

    CAD_FD_C_ITE.close;
    CAD_FD_C_ITE.SQL.CLEAR;
    CAD_FD_C_ITE.SQL.Add(' SELECT * FROM CAD_TB_C_ITE ITE '+
                         ' where ativo=true order by id_item ');
    CAD_CD_C_ITE.Open;

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_ITE.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('coditem',CAD_CD_C_ITE.FieldByName('id_item').AsString));

          jso.AddPair(TJsonPair.Create('descricao',CorrigirCaractereInvalid(CAD_CD_C_ITE.FieldByName('descricao').AsString)));
          jso.AddPair(TJsonPair.Create('referencia',CorrigirCaractereInvalid(CAD_CD_C_ITE.FieldByName('referencia').AsString)));
          jso.AddPair(TJsonPair.Create('grupo',CAD_CD_C_ITE.FieldByName('id_grupo').AsString));
          jso.AddPair(TJsonPair.Create('undvenda',CAD_CD_C_ITE.FieldByName('id_und_venda').AsString));
          jso.AddPair(TJsonPair.Create('embvenda',CAD_CD_C_ITE.FieldByName('emb_venda').AsString));
          jso.AddPair(TJsonPair.Create('precoavista',stringreplace(CAD_CD_C_ITE.FieldByName('preco_avista').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase])));
          jso.AddPair(TJsonPair.Create('precoaprazo',stringreplace(CAD_CD_C_ITE.FieldByName('preco_aprazo').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase])));

          Lista.AddElement(jso);
         CAD_CD_C_ITE.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do item sincronizado!');

  finally
    FreeAndNil(Lista);
    CAD_FD_C_ITE.close;
    CAD_CD_C_ITE.close;
    FreeAndNil(CAD_CD_C_ITE);
  end;
end;}




function TSM.tbItensPrc(const id_empresa:String): TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto,sql: String;

  CAD_CD_C_ITE_PRC,BUS_CD_C_PAR_CTR: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da
    Tabela: CAD_TB_C_ITE_PRC - Preço dos Itens
    Criado por: Luan
    Data: 24/07/2017
  }
  try
     sql :=  ' SELECT prc.* FROM CAD_TB_C_ITE_PRC prc ' +
             '   left outer join cad_tb_c_ite ite on ite.id_item = prc.id_item ' +
             ' where ite.ativo = true ';
     if id_empresa<>'' then
       begin
           CAD_FD_C_PAR_CTR.close;
           CAD_FD_C_PAR_CTR.SQL.CLEAR;
           CAD_FD_C_PAR_CTR.SQL.Add(' SELECT * FROM CAD_TB_C_PAR_CTR WHERE ID_EMPRESA='''+id_empresa+''' ');
           CAD_FD_C_PAR_CTR.Open;


           BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
           BUS_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);
           BUS_CD_C_PAR_CTR.Close;
           BUS_CD_C_PAR_CTR.Open;

           if BUS_CD_C_PAR_CTR.FieldByName('preco_por_filial').AsBoolean then
             sql :=
               ' SELECT prc.* FROM CAD_TB_C_ITE_PRC prc ' +
               '   left outer join cad_tb_c_ite ite on ite.id_item = prc.id_item ' +
               ' where ite.ativo = true and prc.id_empresa='''+id_empresa+''' '
           else
             sql :=
               ' SELECT prc.* FROM CAD_TB_C_ITE_PRC prc ' +
               '   left outer join cad_tb_c_ite ite on ite.id_item = prc.id_item ' +
               ' where ite.ativo = true and prc.id_empresa=''0'' ';
       end;



    CAD_CD_C_ITE_PRC := TClientDataSet.Create(nil);
    CAD_CD_C_ITE_PRC.SetProvider(CAD_DP_C_ITE_PRC);

    CAD_FD_C_ITE_PRC.close;
    CAD_FD_C_ITE_PRC.SQL.CLEAR;
    CAD_FD_C_ITE_PRC.SQL.Add(sql);
    CAD_CD_C_ITE_PRC.Open;

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_ITE_PRC.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('coditem',CAD_CD_C_ITE_PRC.FieldByName('id_item').AsString));
          jso.AddPair(TJsonPair.Create('perfil',CAD_CD_C_ITE_PRC.FieldByName('id_perfil_cli').AsString));
          jso.AddPair(TJsonPair.Create('precoavista',CAD_CD_C_ITE_PRC.FieldByName('preco_avista').AsString));
          jso.AddPair(TJsonPair.Create('preco1',CorrigirDecimal(CAD_CD_C_ITE_PRC.FieldByName('preco1').AsString)));
          jso.AddPair(TJsonPair.Create('preco2',CorrigirDecimal(CAD_CD_C_ITE_PRC.FieldByName('preco2').AsString)));
          jso.AddPair(TJsonPair.Create('preco3',CorrigirDecimal(CAD_CD_C_ITE_PRC.FieldByName('preco3').AsString)));
          jso.AddPair(TJsonPair.Create('preco4',CorrigirDecimal(CAD_CD_C_ITE_PRC.FieldByName('preco4').AsString)));
          Lista.AddElement(jso);
          CAD_CD_C_ITE_PRC.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do preço do item sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_ITE_PRC.close;
    CAD_CD_C_ITE_PRC.close;
    FreeAndNil(CAD_CD_C_ITE_PRC);
  end;
end;




{function TSM.tbItensPrc: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_ITE_PRC: TClientDataSet;

  Lista:  TJsonArray;
begin


  try



    CAD_CD_C_ITE_PRC := TClientDataSet.Create(nil);
    CAD_CD_C_ITE_PRC.SetProvider(CAD_DP_C_ITE_PRC);

    CAD_FD_C_ITE_PRC.close;
    CAD_FD_C_ITE_PRC.SQL.CLEAR;
    CAD_FD_C_ITE_PRC.SQL.Add( ' SELECT prc.* FROM CAD_TB_C_ITE_PRC prc ' +
                                    '   left outer join cad_tb_c_ite ite on ite.id_item = prc.id_item ' +
                                    ' where ite.ativo = true ');
    CAD_CD_C_ITE_PRC.Open;

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_ITE_PRC.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('coditem',CAD_CD_C_ITE_PRC.FieldByName('id_item').AsString));
          jso.AddPair(TJsonPair.Create('perfil',CAD_CD_C_ITE_PRC.FieldByName('id_perfil_cli').AsString));
          jso.AddPair(TJsonPair.Create('precoavista',CAD_CD_C_ITE_PRC.FieldByName('preco_avista').AsString));
          jso.AddPair(TJsonPair.Create('preco1',stringreplace(CAD_CD_C_ITE_PRC.FieldByName('preco1').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase])));
          jso.AddPair(TJsonPair.Create('preco2',stringreplace(CAD_CD_C_ITE_PRC.FieldByName('preco2').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase])));
          jso.AddPair(TJsonPair.Create('preco3',stringreplace(CAD_CD_C_ITE_PRC.FieldByName('preco3').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase])));
          jso.AddPair(TJsonPair.Create('preco4',stringreplace(CAD_CD_C_ITE_PRC.FieldByName('preco4').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase])));
          Lista.AddElement(jso);
          CAD_CD_C_ITE_PRC.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do preço do item sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_ITE_PRC.close;
    CAD_CD_C_ITE_PRC.close;
    FreeAndNil(CAD_CD_C_ITE_PRC);
  end;
end;}


function TSM.tbVeiculos: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_VEI: TClientDataSet;

  Lista:  TJsonArray;

begin

  { Get da Tabela: CAD_TB_C_VEI - Veiculo
    Criado por: Luan
    Data: 24/07/2017
  }
  try
    CAD_CD_C_VEI := TClientDataSet.Create(nil);
    CAD_CD_C_VEI.SetProvider(CAD_DP_C_VEI);

    CAD_FD_C_VEI.close;
    CAD_FD_C_VEI.SQL.CLEAR;
    CAD_FD_C_VEI.SQL.Add(' SELECT * FROM CAD_TB_C_VEI ');
    CAD_CD_C_VEI.Open;


    jsObj := TJsonObject.Create();
    lista := TJsonArray.Create();

    while not CAD_CD_C_VEI.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_VEI.FieldByName('id_veiculo').AsString));
          jso.AddPair(TJsonPair.Create('placa',CAD_CD_C_VEI.FieldByName('id_placa').AsString));
          lista.AddElement(jso);
         CAD_CD_C_VEI.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do veículo sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_VEI.close;
    CAD_CD_C_VEI.close;
    FreeAndNil(CAD_CD_C_VEI);
  end;
end;


function TSM.tbEmpresa: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;


  CAD_CD_C_PAR: TClientDataSet;

  Lista:  TJsonArray;
 

begin

  { Get da Tabela: CAD_TB_C_PAR - Empresa
    Criado por: Luan
    Data: 24/07/2017
  }
  try



    CAD_CD_C_PAR := TClientDataSet.Create(nil);
    CAD_CD_C_PAR.SetProvider(CAD_DP_C_PAR);

    CAD_FD_C_PAR.Close;
    CAD_FD_C_PAR.SQL.CLEAR;
    CAD_FD_C_PAR.SQL.Add(' SELECT * FROM CAD_TB_C_PAR ');
    CAD_CD_C_PAR.Open;


    jsObj := TJsonObject.Create();
    lista := TJsonArray.Create();

    while not CAD_CD_C_PAR.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_PAR.FieldByName('id_empresa').AsString));
          jso.AddPair(TJsonPair.Create('emp_razao',CAD_CD_C_PAR.FieldByName('emp_razao').AsString));
          jso.AddPair(TJsonPair.Create('emp_fantasia',CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString));
          lista.AddElement(jso);
          CAD_CD_C_PAR.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da Empresa sincronizada!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_PAR.Close;
    CAD_CD_C_PAR.close;
    FreeAndNil(CAD_CD_C_PAR);
  end;
end;


function TSM.tbFuncionarios(const filtro:String): TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto,sql: String;

  CAD_CD_C_FUN: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_FUN - Funcionarios (Vendedores)
    Criado por: Luan
    Data: 24/07/2017
  }
  try
    sql := ' SELECT * FROM CAD_TB_C_FUN where ativo=true';
    if filtro='1' then
      sql :=
             ' select FUN.*    ' +
             ' from cad_tb_c_fun_crg crg             ' +
             '    left outer join cad_tb_c_fun fun on  ' +
             '       (fun.id_funcionario = crg.id_funcionario) ' +
             '    left outer join pcp_tb_c_crg pcg on ' +
             '       (crg.id_cargo = pcg.id_cargo) '+
             '   where FUN.ativo=true AND pcg.tipo in (''0'',''1'')  ';

    CAD_CD_C_FUN := TClientDataSet.Create(nil);
    CAD_CD_C_FUN.SetProvider(CAD_DP_C_FUN);

    CAD_FD_C_FUN.close;
    CAD_FD_C_FUN.SQL.CLEAR;
    CAD_FD_C_FUN.SQL.Add(sql);
    CAD_CD_C_FUN.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_FUN.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_FUN.FieldByName('id_funcionario').AsString));
          jso.AddPair(TJsonPair.Create('nome',CAD_CD_C_FUN.FieldByName('nome').AsString));
          jso.AddPair(TJsonPair.Create('login',CAD_CD_C_FUN.FieldByName('login').AsString));
          jso.AddPair(TJsonPair.Create('senha',CAD_CD_C_FUN.FieldByName('senha').AsString));
          jso.AddPair(TJsonPair.Create('empresa',CAD_CD_C_FUN.FieldByName('id_empresa_mob').AsString));
          Lista.AddElement(jso);
         CAD_CD_C_FUN.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do funcionário sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_FUN.close;
    CAD_CD_C_FUN.close;
    FreeAndNil(CAD_CD_C_FUN);
  end;
end;


function TSM.tbCondicaoPgto: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_CPG:TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_CPG - Condição de Pagto
    Criado por: Luan
    Data: 24/07/2017
  }
  try


    CAD_CD_C_CPG := TClientDataSet.Create(nil);
    CAD_CD_C_CPG.SetProvider(CAD_DP_C_CPG);

    CAD_FD_C_CPG.close;
    CAD_FD_C_CPG.SQL.CLEAR;
    CAD_FD_C_CPG.SQL.Add(' SELECT * FROM CAD_TB_C_CPG ');
    CAD_CD_C_CPG.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_CPG.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_CPG.FieldByName('id_condicao_pag').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_CPG.FieldByName('descricao').AsString));
          jso.AddPair(TJsonPair.Create('tipo_pagamento',CAD_CD_C_CPG.FieldByName('tipo_pagamento').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_CPG.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da condição de pagamento sincronizada!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_CPG.Close;
    CAD_CD_C_CPG.close;
    FreeAndNil(CAD_CD_C_CPG);
  end;
end;



function TSM.tbFormaPgto: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_FPG:TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_FPG - Forma de Pagto
    Criado por: Luan
    Data: 24/07/2017
  }
  try


    CAD_CD_C_FPG := TClientDataSet.Create(nil);
    CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);

    CAD_FD_C_FPG.close;
    CAD_FD_C_FPG.SQL.CLEAR;
    CAD_FD_C_FPG.SQL.Add(' SELECT * FROM CAD_TB_C_FPG ');
    CAD_CD_C_FPG.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_FPG.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_FPG.FieldByName('id_forma_pag').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_FPG.FieldByName('descricao').AsString));
          jso.AddPair(TJsonPair.Create('tipo_pagamento',CAD_CD_C_FPG.FieldByName('tipo_pagamento').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_FPG.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da forma de pagamento sincronizada!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_FPG.Close;
    CAD_CD_C_FPG.close;
    FreeAndNil(CAD_CD_C_FPG);
  end;
end;



function TSM.tbContaNovo: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_CTC:TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_FPG - Forma de Pagto
    Criado por: Luan
    Data: 24/07/2017
  }
  try


    CAD_CD_C_CTC := TClientDataSet.Create(nil);
    CAD_CD_C_CTC.SetProvider(CAD_DP_C_CTC);

    CAD_FD_C_CTC.close;
    CAD_FD_C_CTC.SQL.CLEAR;
    CAD_FD_C_CTC.SQL.Add(' SELECT * FROM CAD_TB_C_CTC ');
    CAD_CD_C_CTC.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_CTC.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_CTC.FieldByName('id_conta').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_CTC.FieldByName('descricao').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_CTC.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da conta corrente sincronizada!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_CTC.Close;
    CAD_CD_C_CTC.close;
    FreeAndNil(CAD_CD_C_CTC);
  end;
end;



function TSM.tbContaCorrente: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_CTC: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_CTC - Conta
    Criado por: Luan
    Data: 24/07/2017
  }
  try
    CAD_CD_C_CTC := TClientDataSet.Create(nil);
    CAD_CD_C_CTC.SetProvider(CAD_DP_C_CTC);

    CAD_FD_C_CTC.close;
    CAD_FD_C_CTC.SQL.CLEAR;
    CAD_FD_C_CTC.SQL.Add(' SELECT * FROM CAD_TB_C_CTC ');
    CAD_CD_C_CTC.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_CTC.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_CTC.FieldByName('id_conta').AsString));
          jso.AddPair(TJsonPair.Create('descricao',trim(CAD_CD_C_CTC.FieldByName('descricao').AsString)));

          Lista.AddElement(jso);
         CAD_CD_C_CTC.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do conta corrente sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_CTC.close;
    CAD_FD_C_CTC.Close;
    FreeAndNil(CAD_CD_C_CTC);
  end;
end;


function TSM.tbPlanoContas: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_PCT: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_CTC - Conta
    Criado por: Luan
    Data: 24/07/2017
  }
  try
    CAD_CD_C_PCT := TClientDataSet.Create(nil);
    CAD_CD_C_PCT.SetProvider(CAD_DP_C_PCT);

    CAD_FD_C_PCT.close;
    CAD_FD_C_PCT.SQL.CLEAR;
    CAD_FD_C_PCT.SQL.Add(' SELECT * FROM CAD_TB_C_PCT where tipo_desp=0');
    CAD_CD_C_PCT.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_PCT.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('cod',CAD_CD_C_PCT.FieldByName('id_plano').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_PCT.FieldByName('descricao').AsString));
          jso.AddPair(TJsonPair.Create('tipo',CAD_CD_C_PCT.FieldByName('tipo').AsString));
          jso.AddPair(TJsonPair.Create('natureza',CAD_CD_C_PCT.FieldByName('tipo_desp').AsString));
          Lista.AddElement(jso);
         CAD_CD_C_PCT.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do Plano de Contas sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_PCT.close;
    CAD_FD_C_PCT.Close;
    FreeAndNil(CAD_CD_C_PCT);
  end;
end;



function TSM.tbGrupos(const filtro:String): TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto,sql: String;

  CAD_CD_C_GRU: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_GRU - Grupo
    Criado por: Luan
    Data: 24/07/2017
  }
  try
    if filtro='' then
      sql := ' SELECT * FROM CAD_TB_C_GRU where tipo=0 ';
    if filtro='1' then
      sql := ' SELECT * FROM CAD_TB_C_GRU where '+
             '  (substring(id_grupo from ''.......$'')<>''.00.000'' and '+
             '   substring(id_grupo from ''....$'')=''.000'') '+
             '   or substring(id_grupo from ''....$'')<>''.000'' ';



    CAD_CD_C_GRU := TClientDataSet.Create(nil);
    CAD_CD_C_GRU.SetProvider(CAD_DP_C_GRU);

    CAD_FD_C_GRU.close;
    CAD_FD_C_GRU.SQL.CLEAR;

    CAD_FD_C_GRU.SQL.Add(sql);
    CAD_CD_C_GRU.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_GRU.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('codgrupo',CAD_CD_C_GRU.FieldByName('id_grupo').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_GRU.FieldByName('descricao').AsString));
          jso.AddPair(TJsonPair.Create('tipoitem',CAD_CD_C_GRU.FieldByName('tipo_item').AsString));
          jso.AddPair(TJsonPair.Create('terceiro',UpperCase(CAD_CD_C_GRU.FieldByName('ser_terceiro').AsString)));
          jso.AddPair(TJsonPair.Create('foto',CAD_CD_C_GRU.FieldByName('mob_nome_foto').AsString));
          Lista.AddElement(jso);
         CAD_CD_C_GRU.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do grupo sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_GRU.close;
    CAD_FD_C_GRU.Close;
    FreeAndNil(CAD_CD_C_GRU);
  end;
end;



function TSM.tbMotorista: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  PCP_CD_C_MTA: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_M_MOT_MOB- Pedidos
    Criado por: Luan
    Data: 04/10/2017
  }
  try
    PCP_CD_C_MTA := TClientDataSet.Create(nil);
    PCP_CD_C_MTA.SetProvider(PCP_DP_C_MTA);

    PCP_FD_C_MTA.close;
    PCP_FD_C_MTA.SQL.CLEAR;
    PCP_FD_C_MTA.SQL.Add(' SELECT * FROM PCP_TB_C_MTA ');
    PCP_CD_C_MTA.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not PCP_CD_C_MTA.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',PCP_CD_C_MTA.FieldByName('id_motorista').AsString));
          jso.AddPair(TJsonPair.Create('nome',PCP_CD_C_MTA.FieldByName('nome').AsString));
          jso.AddPair(TJsonPair.Create('empresa',CorrigirDecimal(PCP_CD_C_MTA.FieldByName('mob_id_empresa').AsString)));

          jso.AddPair(TJsonPair.Create('login',PCP_CD_C_MTA.FieldByName('mob_login').AsString));
          jso.AddPair(TJsonPair.Create('senha',PCP_CD_C_MTA.FieldByName('mob_senha').AsString));

          Lista.AddElement(jso);
         PCP_CD_C_MTA.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do motorista sincronizado!');
  finally
    FreeAndNil(Lista);
    PCP_CD_C_MTA.close;
    PCP_FD_C_MTA.close;
    FreeAndNil(PCP_CD_C_MTA);
  end;
end;




{function TSM.tbPedidoVenda: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  FAT_CD_M_PED: TClientDataSet;

  Lista:  TJsonArray;
begin


  try
    FAT_CD_M_PED := TClientDataSet.Create(nil);
    FAT_CD_M_PED.SetProvider(FAT_DP_M_PED);

    FAT_CD_M_PED.close;
    FAT_FD_M_PED.SQL.CLEAR;
    FAT_FD_M_PED.SQL.Add(' SELECT PED.*,PPC.ID_CARREGAMENTO,CLI.NOME AS NOME_CLIENTE, '+
                         ' CLI.ENDERECO AS END_CLIENTE, '+
                         ' CLI.CEP AS CEP_CLIENTE, '+
                         ' CLI.NUMERO AS NRO_CLIENTE, '+
                         ' CID.NOME ||''-''||CID.UF AS cid_desc_cliente,  ' +
                         ' FUN.NOME AS NOME_VENDEDOR '+
                         '  FROM FAT_TB_M_PED PED '+
                         ' LEFT OUTER JOIN FAT_TB_M_PCA_PED PPC ON PPC.ID_PEDIDO=PED.ID_PEDIDO  '+
                         ' LEFT OUTER JOIN CAD_TB_C_CLI CLI ON CLI.ID_CLIENTE=PED.ID_CLIENTE  '+
                         ' LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=CLI.ID_CIDADE  '+
                         ' LEFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN.ID_FUNCIONARIO=PED.ID_VENDEDOR  ' );
    FAT_CD_M_PED.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not FAT_CD_M_PED.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id_pedido',FAT_CD_M_PED.FieldByName('id_pedido').AsString));
          jso.AddPair(TJsonPair.Create('dta_pedido',FAT_CD_M_PED.FieldByName('dta_pedido').AsString));
          jso.AddPair(TJsonPair.Create('id_vendedor',FAT_CD_M_PED.FieldByName('id_vendedor').AsString));
          jso.AddPair(TJsonPair.Create('nome_vendedor',FAT_CD_M_PED.FieldByName('nome_vendedor').AsString));
          jso.AddPair(TJsonPair.Create('id_condicao_pag',FAT_CD_M_PED.FieldByName('id_condicao_pag').AsString));

          jso.AddPair(TJsonPair.Create('dias_prazo',FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsString));
          jso.AddPair(TJsonPair.Create('id_cliente',FAT_CD_M_PED.FieldByName('id_cliente').AsString));
          jso.AddPair(TJsonPair.Create('nome_cliente',FAT_CD_M_PED.FieldByName('nome_cliente').AsString));
          jso.AddPair(TJsonPair.Create('end_cliente',FAT_CD_M_PED.FieldByName('end_cliente').AsString));
          jso.AddPair(TJsonPair.Create('cep_cliente',FAT_CD_M_PED.FieldByName('cep_cliente').AsString));
          jso.AddPair(TJsonPair.Create('nro_cliente',FAT_CD_M_PED.FieldByName('nro_cliente').AsString));
          jso.AddPair(TJsonPair.Create('cid_desc_cliente',FAT_CD_M_PED.FieldByName('cid_desc_cliente').AsString));
          jso.AddPair(TJsonPair.Create('vlr_liquido',stringreplace(FAT_CD_M_PED.FieldByName('vlr_liquido').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase])));
          jso.AddPair(TJsonPair.Create('id_carregamento',FAT_CD_M_PED.FieldByName('id_carregamento').AsString));
          Lista.AddElement(jso);
         FAT_CD_M_PED.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do pedido de venda sincronizado!');
  finally
    FreeAndNil(Lista);
    FAT_CD_M_PED.close;
    FAT_FD_M_PED.close;
    FreeAndNil(FAT_CD_M_PED);
  end;
end; }



{function TSM.tbPedidoVendaIte: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  FAT_CD_M_PED_ITE: TClientDataSet;

  Lista:  TJsonArray;
begin


  try
    FAT_CD_M_PED_ITE := TClientDataSet.Create(nil);
    FAT_CD_M_PED_ITE.SetProvider(FAT_DP_M_PED_ITE);

    FAT_CD_M_PED_ITE.close;
    FAT_FD_M_PED_ITE.SQL.CLEAR;
    FAT_FD_M_PED_ITE.SQL.Add(' SELECT PIT.*,ITE.DESCRICAO AS ITEM_DESC '+
                             '  FROM FAT_TB_M_PED_ITE PIT '+
                             ' LEFT OUTER JOIN CAD_TB_C_ITE ITE ON ITE.ID_ITEM=PIT.ID_ITEM  ');
    FAT_CD_M_PED_ITE.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not FAT_CD_M_PED_ITE.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id_pedido',FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsString));
          jso.AddPair(TJsonPair.Create('id_item',FAT_CD_M_PED_ITE.FieldByName('id_item').AsString));
          jso.AddPair(TJsonPair.Create('qtde',FAT_CD_M_PED_ITE.FieldByName('qtde').AsString));
          jso.AddPair(TJsonPair.Create('item_desc',FAT_CD_M_PED_ITE.FieldByName('item_desc').AsString));
          jso.AddPair(TJsonPair.Create('vlr_liquido',stringreplace(FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase])));
          jso.AddPair(TJsonPair.Create('vlr_unitario',stringreplace(FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase])));

          Lista.AddElement(jso);
         FAT_CD_M_PED_ITE.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do pedido de venda itens sincronizado!');
  finally
    FreeAndNil(Lista);
    FAT_CD_M_PED_ITE.close;
    FAT_FD_M_PED_ITE.close;
    FreeAndNil(FAT_CD_M_PED_ITE);
  end;
end;   }







function TSM.tbPedCarregamento(const id_motorista:String): TStream;
var
  jsobj, jso,jsoFilho,jsoNeto : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  FAT_CD_M_PCA,FAT_CD_M_PCA_PED,FAT_CD_M_PED,FAT_CD_M_PED_ITE: TClientDataSet;

  Lista,ListaFilho,ListaNeto:  TJsonArray;
begin

  { Get da Tabela: FAT_TB_M_PCA - Carregamento
    Criado por: Luan
    Data: 04/10/2017
  }
  try
    FAT_CD_M_PCA := TClientDataSet.Create(nil);
    FAT_CD_M_PCA.SetProvider(FAT_DP_M_PCA);



    FAT_CD_M_PCA.close;
    FAT_FD_M_PCA.SQL.CLEAR;
    FAT_FD_M_PCA.SQL.Add(' SELECT PCA.*,fun.nome as int_nome_resp '+
                             '  FROM FAT_TB_M_PCA PCA '+
                             '  left outer join cad_tb_c_fun fun on fun.id_funcionario=pca.id_responsavel '+
                             '  where id_motorista='+id_motorista);
    FAT_CD_M_PCA.Open;

    FAT_CD_M_PCA_PED := TClientDataSet.Create(nil);
    FAT_CD_M_PCA_PED.DataSetField := TDataSetField(FAT_CD_M_PCA.FieldByName('FAT_FD_M_PCA_PED'));

    FAT_CD_M_PED := TClientDataSet.Create(nil);
    FAT_CD_M_PED.DataSetField := TDataSetField(FAT_CD_M_PCA_PED.FieldByName('FAT_FD_M_PPD'));

    FAT_CD_M_PED_ITE := TClientDataSet.Create(nil);
    FAT_CD_M_PED_ITE.DataSetField := TDataSetField(FAT_CD_M_PED.FieldByName('FAT_FD_M_PPD_ITE'));





    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not FAT_CD_M_PCA.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id_carregamento',FAT_CD_M_PCA.FieldByName('id_carregamento').AsString));
          jso.AddPair(TJsonPair.Create('id_responsavel',FAT_CD_M_PCA.FieldByName('id_responsavel').AsString));
          jso.AddPair(TJsonPair.Create('nome_responsavel',FAT_CD_M_PCA.FieldByName('int_nome_resp').AsString));
          jso.AddPair(TJsonPair.Create('dta_carregamento',FAT_CD_M_PCA.FieldByName('dta_carregamento').AsString));
          jso.AddPair(TJsonPair.Create('status',FAT_CD_M_PCA.FieldByName('status').AsString));
          jso.AddPair(TJsonPair.Create('id_motorista',FAT_CD_M_PCA.FieldByName('id_motorista').AsString));
          jso.AddPair(TJsonPair.Create('placa',FAT_CD_M_PCA.FieldByName('placa').AsString));

          ListaFilho := TJsonArray.Create();
          FAT_CD_M_PCA_PED.First;
          while not FAT_CD_M_PCA_PED.Eof do
            begin
              jsoFilho := TJsonObject.Create();
              jsoFilho.AddPair(TJsonPair.Create('id_pedido',FAT_CD_M_PED.FieldByName('id_pedido').AsString));
              jsoFilho.AddPair(TJsonPair.Create('dta_pedido',FAT_CD_M_PED.FieldByName('dta_pedido').AsString));
              jsoFilho.AddPair(TJsonPair.Create('id_vendedor',FAT_CD_M_PED.FieldByName('id_vendedor').AsString));
              jsoFilho.AddPair(TJsonPair.Create('nome_vendedor',FAT_CD_M_PED.FieldByName('nome_vendedor').AsString));
              jsoFilho.AddPair(TJsonPair.Create('id_condicao_pag',FAT_CD_M_PED.FieldByName('id_condicao_pag').AsString));

              jsoFilho.AddPair(TJsonPair.Create('dias_prazo',CorrigirCaractereInvalid(FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsString,'0')));
              jsoFilho.AddPair(TJsonPair.Create('id_cliente',FAT_CD_M_PED.FieldByName('id_cliente').AsString));
              jsoFilho.AddPair(TJsonPair.Create('nome_cliente',FAT_CD_M_PED.FieldByName('nome_cliente').AsString));
              jsoFilho.AddPair(TJsonPair.Create('end_cliente',FAT_CD_M_PED.FieldByName('end_cliente').AsString+', '+
                                                                FAT_CD_M_PED.FieldByName('nro_cliente').AsString));
              jsoFilho.AddPair(TJsonPair.Create('bairro_cliente',FAT_CD_M_PED.FieldByName('bairro_cliente').AsString));
              jsoFilho.AddPair(TJsonPair.Create('cep_cliente',FAT_CD_M_PED.FieldByName('cep_cliente').AsString));
              //jsoFilho.AddPair(TJsonPair.Create('nro_cliente',FAT_CD_M_PED.FieldByName('nro_cliente').AsString));
              jsoFilho.AddPair(TJsonPair.Create('cid_desc_cliente',FAT_CD_M_PED.FieldByName('cid_desc_cliente').AsString));
              jsoFilho.AddPair(TJsonPair.Create('vlr_liquido',CorrigirCaractereInvalid(stringreplace(FAT_CD_M_PED.FieldByName('vlr_liquido').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase]),'0')));
             // jsoFilho.AddPair(TJsonPair.Create('id_carregamento',FAT_CD_M_PED.FieldByName('id_carregamento').AsString));

              ListaNeto := TJsonArray.Create();
              FAT_CD_M_PED_ITE.First;
              while not FAT_CD_M_PED_ITE.eof do
                begin
                   jsoNeto := TJsonObject.Create();

                   //jsoNeto.AddPair(TJsonPair.Create('id_pedido',FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsString));
                   jsoNeto.AddPair(TJsonPair.Create('id_sequencia',FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsString));
                   jsoNeto.AddPair(TJsonPair.Create('id_item',FAT_CD_M_PED_ITE.FieldByName('id_item').AsString));
                   jsoNeto.AddPair(TJsonPair.Create('qtde',FAT_CD_M_PED_ITE.FieldByName('qtde').AsString));
                   jsoNeto.AddPair(TJsonPair.Create('item_desc',FAT_CD_M_PED_ITE.FieldByName('item_desc').AsString));
                   jsoNeto.AddPair(TJsonPair.Create('vlr_liquido',CorrigirCaractereInvalid(stringreplace(FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsString, ',', '.',
                                                              [rfReplaceAll, rfIgnoreCase]),'0')));
                   jsoNeto.AddPair(TJsonPair.Create('vlr_unitario',CorrigirCaractereInvalid(stringreplace(FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsString, ',', '.',
                                                                 [rfReplaceAll, rfIgnoreCase]),'0')));

                   ListaNeto.AddElement(jsoNeto);
                   FAT_CD_M_PED_ITE.Next;
                end;
              jsoFilho.AddPair(TJsonPair.Create('itens',ListaNeto));

              ListaFilho.AddElement(jsoFilho);
              FAT_CD_M_PCA_PED.Next;
            end;
          jso.AddPair(TJsonPair.Create('pedidos',ListaFilho));


          Lista.AddElement(jso);
         FAT_CD_M_PCA.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do carregamento sincronizado!');
  finally
    FreeAndNil(Lista);

    FAT_CD_M_PCA.close;
    FAT_FD_M_PCA.close;
    FreeAndNil(FAT_CD_M_PCA);
    FreeAndNil(FAT_CD_M_PCA_PED);
    FreeAndNil(FAT_CD_M_PED);
    FreeAndNil(FAT_CD_M_PED_ITE);
  end;
end;


function TSM.tbLoginFuncionario(const login:String;const senha:String): TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_FUN: TClientDataSet;
  Lista:  TJsonArray;

  loginVal,senhaVal:String;
begin
{ Get da Tabela: CAD_TB_C_FUN - Funcionarios (Vendedores)
    Criado por: Luan
    Data: 24/07/2017
  }
  try

    loginVal := 'false';
    if (trim(login)<>'') then
      begin
       CAD_CD_C_FUN := TClientDataSet.Create(nil);
       CAD_CD_C_FUN.SetProvider(CAD_DP_C_FUN);

       CAD_FD_C_FUN.close;
       CAD_FD_C_FUN.SQL.CLEAR;
       CAD_FD_C_FUN.SQL.Add(' SELECT * FROM CAD_TB_C_FUN where login='''+trim(login)+'''');
       CAD_CD_C_FUN.Open;
       if not CAD_CD_C_FUN.IsEmpty then
         loginVal := 'true';
     end;

    senhaVal := 'false';
    if (trim(senha)<>'') then
      begin
       CAD_CD_C_FUN := TClientDataSet.Create(nil);
       CAD_CD_C_FUN.SetProvider(CAD_DP_C_FUN);

       CAD_FD_C_FUN.close;
       CAD_FD_C_FUN.SQL.CLEAR;
       CAD_FD_C_FUN.SQL.Add(' SELECT * FROM CAD_TB_C_FUN where senha='''+trim(senha)+'''');
       CAD_CD_C_FUN.Open;
       if not CAD_CD_C_FUN.IsEmpty then
         senhaVal := 'true';
     end;

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();
    jso := TJsonObject.Create();

    if (loginVal='true') and (senhaVal='true') then
      begin
         CAD_CD_C_FUN := TClientDataSet.Create(nil);
         CAD_CD_C_FUN.SetProvider(CAD_DP_C_FUN);

         CAD_FD_C_FUN.close;
         CAD_FD_C_FUN.SQL.CLEAR;
         CAD_FD_C_FUN.SQL.Add(' SELECT * FROM CAD_TB_C_FUN where login='''+trim(login)+''' and senha='''+trim(senha)+'''');
         CAD_CD_C_FUN.Open;



         if not CAD_CD_C_FUN.IsEmpty then
           begin
             jso.AddPair(TJsonPair.Create('id',CAD_CD_C_FUN.FieldByName('id_funcionario').AsString));
             jso.AddPair(TJsonPair.Create('nome',CAD_CD_C_FUN.FieldByName('nome').AsString));
             jso.AddPair(TJsonPair.Create('login_valido',loginVal));
             jso.AddPair(TJsonPair.Create('senha_valido',senhaVal));
             jso.AddPair(TJsonPair.Create('id_empresa',CAD_CD_C_FUN.FieldByName('id_empresa_mob').AsString));
           end
         else
           begin
             jso.AddPair(TJsonPair.Create('id','null'));
             jso.AddPair(TJsonPair.Create('nome',''));
             jso.AddPair(TJsonPair.Create('login_valido','false'));
             jso.AddPair(TJsonPair.Create('senha_valido','false'));
             jso.AddPair(TJsonPair.Create('id_empresa','null'));
           end;
      end
    else
      begin
         jso.AddPair(TJsonPair.Create('id','null'));
         jso.AddPair(TJsonPair.Create('nome',''));
         jso.AddPair(TJsonPair.Create('login_valido',loginVal));
         jso.AddPair(TJsonPair.Create('senha_valido',senhaVal));
         jso.AddPair(TJsonPair.Create('id_empresa','null'));
      end;


   // Lista.AddElement(jso);

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(jso.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do funcionário sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_FD_C_FUN.close;
    CAD_CD_C_FUN.close;
    FreeAndNil(CAD_CD_C_FUN);
  end;

end;



function TSM.tbPedidoVenda(const filtro:String;const campo1:String;const campo2:String;const campo3:String;const campo4:String): TStream;
var
  jsobj, jso,jsoFilho,jsoNeto : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto,SQL: String;
  dataFormat: TFormatSettings;
  FAT_CD_M_PED,FAT_CD_M_PED_ITE,FAT_CD_M_PED_TIT: TClientDataSet;

  Lista,ListaItens,ListaTit:  TJsonArray;

begin

  { Get da Tabela: FAT_TB_M_PED - PEDIDO DE VENDA
    Criado por: Luan
    Data: 21/11/2017
  }
  try
    SQL :=
        '  SELECT  PED.*, CLI.NOME AS INT_NOMECLI, TME.DESCRICAO AS INT_NOMETME, '+
        '       FUN.NOME AS INT_NOMEFUN, CPG.DESCRICAO AS INT_NOMECPG, '+
        '       ATE.NOME AS INT_NOMEATE, RES.NOME AS INT_NOMERES,FNC.NOME AS INT_NOME_RCN, '+
        '       CID.NOME AS INT_NOMECID, '+
        '       CID.UF AS INT_NOMEEST, CLI.doc_cnpj_cpf AS INT_CPFCNPJ, CLI.pessoa as int_pessoacli, '+
        '       CLI.ID_PERFIL_CLI AS INT_ID_PERFIL, '+
        ' cast( case ped.situacao_aprovacao ' +
        '   when 0 then ''Em espera'' '+
        '   when 1 then ''Aprovado'' ' +
        '   when 2 then ''Reprovado'' ' +
        ' end as varchar(20) ) as int_sitaprov, ' +
        ' cast( case ped.situacao     ' +
        '   when 0 then ''Em aberto'' ' +
        '   when 1 then ''Reprovado'' ' +
        '   when 2 then ''Em produção'' ' +
        '   when 3 then ''Faturado''  ' +
        '   when 4 then ''Cancelado'' ' +
        ' end as varchar(20) ) as int_sitped, ' +
        ' cast( case      ' + #13#10 +
        '           when (ped.situacao = 0) and (ped.situacao_aprovacao = 0) then ''Digitado''' + #13#10 +
        '           when (ped.situacao = 0) and (ped.situacao_aprovacao = 1) then ''Aprovado''' + #13#10 +
        '           when (ped.situacao = 1) then ''Reprovado''' + #13#10 +
        '           when (ped.situacao = 2) then ''Em produção''' + #13#10 +
        '           when (ped.situacao = 3) then ''Faturado''' + #13#10 +
        '           when (ped.situacao = 4) then ''Cancelado''' + #13#10 +
        '         end as varchar(20) ) as int_sitped2, ' +
        ' cli.doc_ie_identidade as int_ie_rg_cli, reg.descricao as int_nomereg, ' +
        ' mta.nome as int_nomemta  '+
        'FROM FAT_TB_M_PED PED '+
        'LEFT OUTER JOIN CAD_TB_C_CLI CLI ON CLI.ID_CLIENTE = PED.ID_CLIENTE '+
        'LEFT OUTER JOIN CAD_TB_C_TME TME ON TME.ID_TIPO_MOV_ESTOQUE = PED.ID_TIPO_MOV_ESTOQUE '+
        'LEFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN.ID_FUNCIONARIO=PED.ID_VENDEDOR '+
        'LEFT OUTER JOIN CAD_TB_C_CPG CPG ON CPG.ID_CONDICAO_PAG=PED.ID_CONDICAO_PAG '+
        'LEFT OUTER JOIN CAD_TB_C_FUN ATE ON ATE.ID_FUNCIONARIO=PED.ID_ATENDENTE '+
        'LEFT OUTER JOIN CAD_TB_C_FUN RES ON RES.ID_FUNCIONARIO=PED.ID_RESPONSAVEL '+
        'LEFT OUTER JOIN CAD_TB_C_FUN FNC ON FNC.ID_FUNCIONARIO=PED.ID_RESP_CONF '+
        'LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=CLI.ID_CIDADE '+
        'LEFT OUTER JOIN PCP_TB_C_REG REG ON REG.ID_REGIAO = CLI.ID_REGIAO ' +
        'LEFT OUTER JOIN PCP_TB_C_MTA MTA ON  MTA.ID_MOTORISTA = PED.ID_MOTORISTA ';


    if filtro<>'' then
      begin
        if filtro='0' then
          sql := sql + ' WHERE PED.ID_EMPRESA =   ''' + CAMPO1 + ''' AND PED.ID_PEDIDO = ''' + CAMPO2 +''' ';

        if filtro='1' then
          sql := sql +
             ' WHERE PED.ID_EMPRESA = ''' + CAMPO1 + ''' AND ' +
                 Format('upper(CLI.NOME) LIKE ''%s%%'' ', [uppercase(CAMPO2)]);

        if filtro='2' then
          sql := sql +
             ' WHERE PED.ID_EMPRESA = ''' + CAMPO1 + ''' AND ' +
                Format(' upper(FUN.NOME) LIKE ''%s%%'' ', [uppercase(CAMPO2)]);


        if filtro='7' then
          begin
           dataFormat.DateSeparator := '-';
           dataFormat.ShortDateFormat := 'yyyy-mm-dd';
           sql := sql +
             ' WHERE PED.ID_EMPRESA = ''' + CAMPO1 + ''' AND  PED.DTA_PEDIDO >= ''' + FormatDateTime(CFormatoData, StrToDate(CAMPO2,dataFormat)) +''' AND ' +
             ' PED.DTA_PEDIDO <= '''+FormatDateTime(CFormatoData, StrToDate(CAMPO3,dataFormat))+''' ';
          end;

        if filtro='8' then
          begin
           dataFormat.DateSeparator := '-';
           dataFormat.ShortDateFormat := 'yyyy-mm-dd';
           sql := sql +
             ' WHERE PED.ID_EMPRESA = ''' + CAMPO1 + ''' AND PED.ID_VENDEDOR = '''+CAMPO2 + ''' AND PED.DTA_PEDIDO >= ''' + FormatDateTime(CFormatoData, StrToDate(CAMPO3,dataFormat)) +''' AND ' +
             ' PED.DTA_PEDIDO <= '''+FormatDateTime(CFormatoData, StrToDate(CAMPO4,dataFormat))+''' ';
          end;

      end;



    FAT_CD_M_PED := TClientDataSet.Create(nil);
    FAT_CD_M_PED.SetProvider(FAT_DP_M_PED);



    FAT_FD_M_PED.SQL.CLEAR;
    FAT_FD_M_PED.SQL.Add(SQL);
    FAT_CD_M_PED.Open;

    FAT_CD_M_PED_ITE := TClientDataSet.Create(nil);
    FAT_CD_M_PED_ITE.DataSetField := TDataSetField(FAT_CD_M_PED.FieldByName('FAT_FD_M_PED_ITE'));

    FAT_CD_M_PED_TIT := TClientDataSet.Create(nil);
    FAT_CD_M_PED_TIT.DataSetField := TDataSetField(FAT_CD_M_PED.FieldByName('FAT_FD_M_PED_TIT'));



    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not FAT_CD_M_PED.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',FAT_CD_M_PED.FieldByName('id_pedido').AsString));
          jso.AddPair(TJsonPair.Create('empresa_id',FAT_CD_M_PED.FieldByName('id_empresa').AsString));
          jso.AddPair(TJsonPair.Create('dta_pedido',FAT_CD_M_PED.FieldByName('dta_pedido').AsString));
          jso.AddPair(TJsonPair.Create('id_tipo_mov_estoque',FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsString));
          jso.AddPair(TJsonPair.Create('desc_tipo_mov_est',FAT_CD_M_PED.FieldByName('int_nometme').AsString));
          jso.AddPair(TJsonPair.Create('condpag_id',FAT_CD_M_PED.FieldByName('id_condicao_pag').AsString));
          jso.AddPair(TJsonPair.Create('desc_cond_pag',FAT_CD_M_PED.FieldByName('int_nomecpg').AsString));
          jso.AddPair(TJsonPair.Create('cod_sit',FAT_CD_M_PED.FieldByName('situacao').AsString));
          jso.AddPair(TJsonPair.Create('situacao',FAT_CD_M_PED.FieldByName('int_sitped2').AsString));
          jso.AddPair(TJsonPair.Create('vendedor_id',FAT_CD_M_PED.FieldByName('id_vendedor').AsString));
          jso.AddPair(TJsonPair.Create('nome_vend',FAT_CD_M_PED.FieldByName('int_nomefun').AsString));
          jso.AddPair(TJsonPair.Create('cliente_id',FAT_CD_M_PED.FieldByName('id_cliente').AsString));
          jso.AddPair(TJsonPair.Create('nome',FAT_CD_M_PED.FieldByName('int_nomecli').AsString));
          jso.AddPair(TJsonPair.Create('cidade',FAT_CD_M_PED.FieldByName('int_nomecid').AsString));
          jso.AddPair(TJsonPair.Create('uf',FAT_CD_M_PED.FieldByName('int_nomeest').AsString));
          jso.AddPair(TJsonPair.Create('id_motorista',CorrigirDecimal(FAT_CD_M_PED.FieldByName('id_motorista').AsString)));
          jso.AddPair(TJsonPair.Create('nome_motorista',FAT_CD_M_PED.FieldByName('int_nomemta').AsString));
          jso.AddPair(TJsonPair.Create('placa',FAT_CD_M_PED.FieldByName('id_placa').AsString));
          jso.AddPair(TJsonPair.Create('id_responsavel',FAT_CD_M_PED.FieldByName('id_responsavel').AsString));
          jso.AddPair(TJsonPair.Create('nome_resp',FAT_CD_M_PED.FieldByName('int_nomeres').AsString));
          jso.AddPair(TJsonPair.Create('id_atendente',FAT_CD_M_PED.FieldByName('id_atendente').AsString));
          jso.AddPair(TJsonPair.Create('nome_atend',FAT_CD_M_PED.FieldByName('int_nomeate').AsString));
          jso.AddPair(TJsonPair.Create('obs',FAT_CD_M_PED.FieldByName('obs').AsString));
          jso.AddPair(TJsonPair.Create('vlr_bruto',CorrigirDecimal(FAT_CD_M_PED.FieldByName('vlr_bruto').AsString)));
          jso.AddPair(TJsonPair.Create('vlr_desconto',CorrigirDecimal(FAT_CD_M_PED.FieldByName('vlr_desconto').AsString)));
          jso.AddPair(TJsonPair.Create('vlr_liquido',CorrigirDecimal(FAT_CD_M_PED.FieldByName('vlr_liquido').AsString)));


          ListaItens := TJsonArray.Create();
          FAT_CD_M_PED_ITE.First;
          while not FAT_CD_M_PED_ITE.Eof do
            begin
              jsoFilho := TJsonObject.Create();
              jsoFilho.AddPair(TJsonPair.Create('id_pedido',FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsString));
              jsoFilho.AddPair(TJsonPair.Create('id_seq',FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsString));
              jsoFilho.AddPair(TJsonPair.Create('item_id',FAT_CD_M_PED_ITE.FieldByName('id_item').AsString));
              jsoFilho.AddPair(TJsonPair.Create('item',FAT_CD_M_PED_ITE.FieldByName('int_desc_item').AsString));
              jsoFilho.AddPair(TJsonPair.Create('und',FAT_CD_M_PED_ITE.FieldByName('int_und_vnd').AsString));
              jsoFilho.AddPair(TJsonPair.Create('qtde',CorrigirDecimal(FAT_CD_M_PED_ITE.FieldByName('qtde').AsString)));
              jsoFilho.AddPair(TJsonPair.Create('vlr_unitario',CorrigirDecimal(FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsString)));
              jsoFilho.AddPair(TJsonPair.Create('vlr_bruto',CorrigirDecimal(FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsString)));
              jsoFilho.AddPair(TJsonPair.Create('vlr_desconto',CorrigirDecimal(FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsString)));
              jsoFilho.AddPair(TJsonPair.Create('per_desconto',CorrigirDecimal(FAT_CD_M_PED_ITE.FieldByName('per_desconto').AsString)));
              jsoFilho.AddPair(TJsonPair.Create('vlr_liquido',CorrigirDecimal(FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsString)));

              ListaItens.Add(jsoFilho);
              FAT_CD_M_PED_ITE.Next;
            end;
          jso.AddPair(TJsonPair.Create('itens',ListaItens));



          ListaTit := TJsonArray.Create();
          FAT_CD_M_PED_TIT.First;
          while not FAT_CD_M_PED_TIT.Eof do
            begin
              jsoFilho := TJsonObject.Create();
              jsoFilho.AddPair(TJsonPair.Create('id_pedido',FAT_CD_M_PED_TIT.FieldByName('id_pedido').AsString));
              jsoFilho.AddPair(TJsonPair.Create('titulo_id',FAT_CD_M_PED_TIT.FieldByName('id_titulo').AsString));
              jsoFilho.AddPair(TJsonPair.Create('formpag_id',FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsString));
              jsoFilho.AddPair(TJsonPair.Create('formapag',FAT_CD_M_PED_TIT.FieldByName('int_forma_pag').AsString));
              jsoFilho.AddPair(TJsonPair.Create('dias_titulo',FAT_CD_M_PED_TIT.FieldByName('dias').AsString));
              jsoFilho.AddPair(TJsonPair.Create('dta_titulo',FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString));
              jsoFilho.AddPair(TJsonPair.Create('vlr_titulo',CorrigirDecimal(FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsString)));
              jsoFilho.AddPair(TJsonPair.Create('che_banco',FAT_CD_M_PED_TIT.FieldByName('che_banco').AsString));
              jsoFilho.AddPair(TJsonPair.Create('che_agencia',FAT_CD_M_PED_TIT.FieldByName('che_agencia').AsString));
              jsoFilho.AddPair(TJsonPair.Create('che_conta',CorrigirDecimal(FAT_CD_M_PED_TIT.FieldByName('che_conta').AsString)));
              jsoFilho.AddPair(TJsonPair.Create('che_numero',CorrigirDecimal(FAT_CD_M_PED_TIT.FieldByName('che_numero').AsString)));
              jsoFilho.AddPair(TJsonPair.Create('che_emitente',FAT_CD_M_PED_TIT.FieldByName('che_emitente').AsString));

              ListaTit.Add(jsoFilho);
              FAT_CD_M_PED_TIT.Next;
            end;
          jso.AddPair(TJsonPair.Create('titulos',ListaTit));

          Lista.AddElement(jso);
         FAT_CD_M_PED.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do pedido de venda sincronizado!');
  finally
    FreeAndNil(Lista);

    FAT_CD_M_PED.close;
    FAT_FD_M_PED.close;
    FreeAndNil(FAT_CD_M_PED);
    FreeAndNil(FAT_CD_M_PED_ITE);
    FreeAndNil(FAT_CD_M_PED_ITE);
  end;
end;






end.
