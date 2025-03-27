unit uSM;

interface

uses System.SysUtils, System.Classes, System.Json,
     Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,REST.JSON,
     DbxDevartPostgreSQL, Data.DB, Data.SqlExpr,System.IniFiles,
     System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms, Data.FMTBcd,
     System.DateUtils,
     Datasnap.DBClient, Datasnap.Provider,Data.DBXPlatform, IdBaseComponent,
     IdCoder, IdCoder3to4, IdCoderMIME, Soap.EncdDecd, IdGlobal,Data.DBXCommon;

type
{$METHODINFO ON}
  TSM = class(TDataModule)
    ConexaoNW: TSQLConnection;
    CAD_SQ_C_PEC: TSQLDataSet;
    CAD_SQ_C_PECid_perfil_cli: TIntegerField;
    CAD_SQ_C_PECdescricao: TWideStringField;
    CAD_SQ_C_PECper_correcao: TFloatField;
    CAD_SQ_C_PECoperacao: TIntegerField;
    CAD_SQ_C_PECcod_lme: TWideStringField;
    CAD_SQ_C_PECrev_lme: TWideStringField;
    CAD_SQ_C_PECper_correcao_aprazo: TFloatField;
    CAD_SQ_C_PECper_correcao_financeiro: TFloatField;
    CAD_DP_C_PEC: TDataSetProvider;
    IdEncoderMIME1: TIdEncoderMIME;
    IdDecoderMIME1: TIdDecoderMIME;
    CAD_SQ_C_FUN: TSQLDataSet;
    CAD_DP_C_FUN: TDataSetProvider;
    CAD_SQ_C_CID: TSQLDataSet;
    CAD_DP_C_CID: TDataSetProvider;
    CAD_SQ_C_CIDid_cidade: TWideStringField;
    CAD_SQ_C_CIDnome: TWideStringField;
    CAD_SQ_C_CIDuf: TWideStringField;
    CAD_SQ_C_CIDcep: TWideStringField;
    CAD_SQ_C_CIDcod_lme: TWideStringField;
    CAD_SQ_C_CIDrev_lme: TWideStringField;
    CAD_SQ_C_CIDcod_pais: TWideStringField;
    PCP_SQ_C_ROT: TSQLDataSet;
    PCP_DP_C_ROT: TDataSetProvider;
    CAD_SQ_C_CLI: TSQLDataSet;
    CAD_DP_C_CLI: TDataSetProvider;
    CAD_SQ_C_SEQ: TSQLDataSet;
    CAD_DP_C_SEQ: TDataSetProvider;
    CAD_SQ_C_VIT: TSQLDataSet;
    CAD_DP_C_VIT: TDataSetProvider;
    CAD_SQ_C_CLI_PRO: TSQLDataSet;
    CAD_SQ_C_CLI_PRO_CUL: TSQLDataSet;
    CAD_SQ_C_CUL: TSQLDataSet;
    CAD_DP_C_CUL: TDataSetProvider;
    CAD_SQ_C_GRU: TSQLDataSet;
    CAD_DP_C_GRU: TDataSetProvider;
    CAD_SQ_C_ITE: TSQLDataSet;
    CAD_DP_C_ITE: TDataSetProvider;
    CAD_SQ_C_ITE_CUL: TSQLDataSet;
    CAD_DP_C_ITE_CUL: TDataSetProvider;
    CAD_SQ_C_ITE_PRC: TSQLDataSet;
    CAD_DP_C_ITE_PRC: TDataSetProvider;
    CAD_SQ_C_FPG: TSQLDataSet;
    CAD_DP_C_FPG: TDataSetProvider;
    CAD_SQ_C_VEI: TSQLDataSet;
    CAD_DP_C_VEI: TDataSetProvider;
    FIN_CD_M_REC: TSQLDataSet;
    FIN_DP_M_REC: TDataSetProvider;
    CAD_SQ_C_VIT_FOT: TSQLDataSet;
    CAD_SQ_C_VIT_KMT: TSQLDataSet;
    FAT_SQ_M_PED: TSQLDataSet;
    FAT_DP_M_PED: TDataSetProvider;
    FAT_SQ_M_PED_ITE: TSQLDataSet;
    FAT_SQ_M_PED_TIT: TSQLDataSet;
    CAD_SQ_C_CLI_PRO_CULid_cliente: TIntegerField;
    CAD_SQ_C_CLI_PRO_CULid_propriedade: TIntegerField;
    CAD_SQ_C_CLI_PRO_CULlote: TWideStringField;
    CAD_SQ_C_CLI_PRO_CULid_cultura: TIntegerField;
    CAD_SQ_C_CLI_PRO_CULidade: TSmallintField;
    CAD_SQ_C_CLI_PRO_CULarea: TFloatField;
    CAD_SQ_C_CLI_PRO_CULprodutividade: TFloatField;
    CAD_SQ_C_CLI_PRO_CULobs: TWideStringField;
    CAD_SQ_C_CLI_PRO_CULvariedade: TWideStringField;
    CAD_SQ_C_CLI_PRO_CULproducao_estimada: TFloatField;
    FAT_SQ_M_PEDid_pedido: TIntegerField;
    FAT_SQ_M_PEDid_empresa: TIntegerField;
    FAT_SQ_M_PEDdta_pedido: TDateField;
    FAT_SQ_M_PEDid_tipo_mov_estoque: TIntegerField;
    FAT_SQ_M_PEDid_vendedor: TIntegerField;
    FAT_SQ_M_PEDobs: TWideStringField;
    FAT_SQ_M_PEDvlr_bruto: TFMTBCDField;
    FAT_SQ_M_PEDvlr_desconto: TFMTBCDField;
    FAT_SQ_M_PEDper_desconto: TFloatField;
    FAT_SQ_M_PEDvlr_liquido: TFMTBCDField;
    FAT_SQ_M_PEDhor_pedido: TSQLTimeStampField;
    FAT_SQ_M_PEDid_condicao_pag: TIntegerField;
    FAT_SQ_M_PEDpcp_obs: TWideStringField;
    FAT_SQ_M_PEDpcp_id_opr: TIntegerField;
    FAT_SQ_M_PEDsituacao: TIntegerField;
    FAT_SQ_M_PEDsituacao_aprovacao: TIntegerField;
    FAT_SQ_M_PEDid_atendente: TIntegerField;
    FAT_SQ_M_PEDid_responsavel: TIntegerField;
    FAT_SQ_M_PEDid_cliente: TIntegerField;
    FAT_SQ_M_PEDtipo_restricao: TWideStringField;
    FAT_SQ_M_PEDid_almoxarifado: TIntegerField;
    FAT_SQ_M_PEDjustificativa: TWideStringField;
    FAT_SQ_M_PEDid_usuario_lib: TIntegerField;
    FAT_SQ_M_PEDcod_lme: TWideStringField;
    FAT_SQ_M_PEDrev_lme: TWideStringField;
    FAT_SQ_M_PEDorigem: TIntegerField;
    FAT_SQ_M_PEDdispositivo: TWideStringField;
    FAT_SQ_M_PEDgps_latitude: TFloatField;
    FAT_SQ_M_PEDgps_longitude: TFloatField;
    FAT_SQ_M_PEDcubagem: TFloatField;
    FAT_SQ_M_PEDid_orcamento: TIntegerField;
    FAT_SQ_M_PEDenvia_carga: TBooleanField;
    FAT_SQ_M_PEDdta_prev_entrega: TDateField;
    FAT_SQ_M_PEDid_abertura: TIntegerField;
    FAT_SQ_M_PEDdias_cpg_prazo: TIntegerField;
    FAT_SQ_M_PEDoffline: TBooleanField;
    FAT_SQ_M_PEDconferido: TBooleanField;
    FAT_SQ_M_PEDid_conf: TIntegerField;
    FAT_SQ_M_PEDdta_conf: TDateField;
    FAT_SQ_M_PEDhor_conf: TTimeField;
    FAT_SQ_M_PEDresultado_conf: TIntegerField;
    FAT_SQ_M_PEDid_resp_conf: TIntegerField;
    FAT_SQ_M_PEDid_propriedade: TIntegerField;
    FAT_SQ_M_PEDid_mkt: TIntegerField;
    FAT_SQ_M_PEDvlr_frete: TFMTBCDField;
    FAT_SQ_M_PEDmod_frete: TIntegerField;
    FAT_SQ_M_PEDcan_usuario: TIntegerField;
    FAT_SQ_M_PEDcan_data: TDateField;
    FAT_SQ_M_PEDcan_motivo: TWideStringField;
    FAT_SQ_M_PEDcan_hora: TTimeField;
    FAT_SQ_M_PEDid_pedido_temp_mob: TIntegerField;
    CAD_SQ_C_PAR_CTR: TSQLDataSet;
    CAD_DP_C_PAR_CTR: TDataSetProvider;
    FAT_SQ_M_PED_TITid_pedido: TIntegerField;
    FAT_SQ_M_PED_TITid_titulo: TIntegerField;
    FAT_SQ_M_PED_TITdias: TIntegerField;
    FAT_SQ_M_PED_TITdta_vencimento: TDateField;
    FAT_SQ_M_PED_TITvlr_titulo: TFMTBCDField;
    FAT_SQ_M_PED_TITche_banco: TWideStringField;
    FAT_SQ_M_PED_TITche_agencia: TWideStringField;
    FAT_SQ_M_PED_TITche_conta: TIntegerField;
    FAT_SQ_M_PED_TITche_numero: TIntegerField;
    FAT_SQ_M_PED_TITche_emitente: TWideStringField;
    FAT_SQ_M_PED_TITid_forma_pag: TIntegerField;
    FAT_SQ_M_PED_TITbol_nosso_numero: TIntegerField;
    FAT_SQ_M_PED_TITid_maquineta: TIntegerField;
    CAD_SQ_C_VITint_id_visita_mob: TIntegerField;
    CAD_SQ_C_VITid_visita: TIntegerField;
    CAD_SQ_C_VITid_vendedor: TIntegerField;
    CAD_SQ_C_VITdoc_cnpj_cpf: TWideStringField;
    CAD_SQ_C_VITid_veiculo: TIntegerField;
    CAD_SQ_C_VITdta_visita: TDateField;
    CAD_SQ_C_VITobs: TWideStringField;
    CAD_SQ_C_VITrecomendacoes: TWideStringField;
    CAD_SQ_C_VITid_empresa: TIntegerField;
    CAD_SQ_C_CLIid_cliente: TIntegerField;
    CAD_SQ_C_CLIpessoa: TIntegerField;
    CAD_SQ_C_CLInome: TWideStringField;
    CAD_SQ_C_CLIendereco: TWideStringField;
    CAD_SQ_C_CLIend_complemento: TWideStringField;
    CAD_SQ_C_CLIcep: TWideStringField;
    CAD_SQ_C_CLInumero: TWideStringField;
    CAD_SQ_C_CLItel_fixo: TWideStringField;
    CAD_SQ_C_CLItel_movel: TWideStringField;
    CAD_SQ_C_CLIfax: TWideStringField;
    CAD_SQ_C_CLIdoc_cnpj_cpf: TWideStringField;
    CAD_SQ_C_CLIdoc_ie_identidade: TWideStringField;
    CAD_SQ_C_CLIdoc_ip: TWideStringField;
    CAD_SQ_C_CLIdoc_im: TWideStringField;
    CAD_SQ_C_CLIbairro: TWideStringField;
    CAD_SQ_C_CLIid_cidade: TWideStringField;
    CAD_SQ_C_CLIativo: TBooleanField;
    CAD_SQ_C_CLIemail: TWideStringField;
    CAD_SQ_C_CLIlim_valor: TFMTBCDField;
    CAD_SQ_C_CLIlim_saldo: TFMTBCDField;
    CAD_SQ_C_CLIsexo: TIntegerField;
    CAD_SQ_C_CLIsituacao: TIntegerField;
    CAD_SQ_C_CLIdta_nascimento: TDateField;
    CAD_SQ_C_CLIdta_cadastro: TDateField;
    CAD_SQ_C_CLItipo_cliente: TIntegerField;
    CAD_SQ_C_CLIcob_endereco: TWideStringField;
    CAD_SQ_C_CLIcob_bairro: TWideStringField;
    CAD_SQ_C_CLIcob_cidade: TWideStringField;
    CAD_SQ_C_CLIcob_estado: TWideStringField;
    CAD_SQ_C_CLIcob_cep: TWideStringField;
    CAD_SQ_C_CLIdta_ult_compra: TDateField;
    CAD_SQ_C_CLIdta_pri_compra: TDateField;
    CAD_SQ_C_CLIfiliacao: TWideStringField;
    CAD_SQ_C_CLIcod_sufrana: TWideStringField;
    CAD_SQ_C_CLIcod_pais: TWideStringField;
    CAD_SQ_C_CLIid_perfil_cli: TIntegerField;
    CAD_SQ_C_CLIid_rota: TIntegerField;
    CAD_SQ_C_CLIdoc_rg_orgao: TWideStringField;
    CAD_SQ_C_CLIapelido: TWideStringField;
    CAD_SQ_C_CLIlim_validade: TDateField;
    CAD_SQ_C_CLIcod_lme: TWideStringField;
    CAD_SQ_C_CLIrev_lme: TWideStringField;
    CAD_SQ_C_CLIid_regiao: TIntegerField;
    CAD_SQ_C_CLIcontribuinte: TIntegerField;
    CAD_SQ_C_CLIid_vendedor: TIntegerField;
    CAD_SQ_C_CLIdias_prazo_financeiro: TIntegerField;
    CAD_SQ_C_CLIprofissao: TWideStringField;
    CAD_SQ_C_CLIrenda: TFMTBCDField;
    CAD_SQ_C_CLIid_responsavel: TIntegerField;
    CAD_SQ_C_CLIid_controle_fpg_hrq: TIntegerField;
    CAD_SQ_C_CLIpermitir_alterar_dias_tit_ped: TBooleanField;
    CAD_SQ_C_CLIstatus_vis_mobile: TBooleanField;
    CAD_SQ_C_CLI_PROdoc_cnpj_cpf: TWideStringField;
    CAD_SQ_C_CLI_PROid_cliente: TIntegerField;
    CAD_SQ_C_CLI_PROid_propriedade: TIntegerField;
    CAD_SQ_C_CLI_PROtipo: TIntegerField;
    CAD_SQ_C_CLI_PROnome: TWideStringField;
    CAD_SQ_C_CLI_PRObairro: TWideStringField;
    CAD_SQ_C_CLI_PROid_cidade: TWideStringField;
    CAD_SQ_C_CLI_PROdoc_ip: TWideStringField;
    CAD_SQ_C_CLI_PROdoc_incra: TWideStringField;
    CAD_SQ_C_CLI_PROdoc_cnpj: TWideStringField;
    CAD_SQ_C_CLI_PROdoc_ie: TWideStringField;
    CAD_SQ_C_CLI_PROadministrador: TWideStringField;
    CAD_SQ_C_CLI_PROendereco: TWideStringField;
    CAD_SQ_C_CLI_PROcep: TWideStringField;
    CAD_SQ_C_CLI_PROnumero: TWideStringField;
    CAD_SQ_C_CLI_PROid_pro_mob_temp: TIntegerField;
    FAT_SQ_M_PEDsemana: TIntegerField;
    FAT_SQ_M_PEDid_pedido_mob: TIntegerField;
    CAD_SQ_C_VITgps_latitude: TFloatField;
    CAD_SQ_C_VITgps_longitude: TFloatField;
    CAD_SQ_C_VIThor_ini: TTimeField;
    CAD_SQ_C_VIThor_fim: TTimeField;
    CAD_SQ_C_VITsemana: TIntegerField;
    CAD_SQ_C_VITplaca: TWideStringField;
    CAD_SQ_C_VITid_pedido_mobile: TIntegerField;
    CAD_SQ_C_VITtipo_mobile: TIntegerField;
    CAD_SQ_C_CLIid_cli_temp_mobile: TWideStringField;
    CAD_SQ_C_VITremarcar_vis: TBooleanField;
    CAD_SQ_C_VITdta_prox_vis: TDateField;
    CAD_SQ_C_VITsemana_prox_vis: TIntegerField;
    CAD_CD_C_CLI: TClientDataSet;
    CAD_SQ_C_VITid_cliente: TIntegerField;
    CAD_CD_C_CLI_PRO: TClientDataSet;
    CAD_CD_C_CLI_PRO_CUL: TClientDataSet;
    CAD_DS_C_CLI: TDataSource;
    CAD_CD_C_CLIid_cliente: TIntegerField;
    CAD_CD_C_CLIpessoa: TIntegerField;
    CAD_CD_C_CLInome: TWideStringField;
    CAD_CD_C_CLIendereco: TWideStringField;
    CAD_CD_C_CLIend_complemento: TWideStringField;
    CAD_CD_C_CLIcep: TWideStringField;
    CAD_CD_C_CLInumero: TWideStringField;
    CAD_CD_C_CLItel_fixo: TWideStringField;
    CAD_CD_C_CLItel_movel: TWideStringField;
    CAD_CD_C_CLIfax: TWideStringField;
    CAD_CD_C_CLIdoc_cnpj_cpf: TWideStringField;
    CAD_CD_C_CLIdoc_ie_identidade: TWideStringField;
    CAD_CD_C_CLIdoc_ip: TWideStringField;
    CAD_CD_C_CLIdoc_im: TWideStringField;
    CAD_CD_C_CLIbairro: TWideStringField;
    CAD_CD_C_CLIid_cidade: TWideStringField;
    CAD_CD_C_CLIativo: TBooleanField;
    CAD_CD_C_CLIemail: TWideStringField;
    CAD_CD_C_CLIlim_valor: TFMTBCDField;
    CAD_CD_C_CLIlim_saldo: TFMTBCDField;
    CAD_CD_C_CLIsexo: TIntegerField;
    CAD_CD_C_CLIsituacao: TIntegerField;
    CAD_CD_C_CLIdta_nascimento: TDateField;
    CAD_CD_C_CLIdta_cadastro: TDateField;
    CAD_CD_C_CLItipo_cliente: TIntegerField;
    CAD_CD_C_CLIcob_endereco: TWideStringField;
    CAD_CD_C_CLIcob_bairro: TWideStringField;
    CAD_CD_C_CLIcob_cidade: TWideStringField;
    CAD_CD_C_CLIcob_estado: TWideStringField;
    CAD_CD_C_CLIcob_cep: TWideStringField;
    CAD_CD_C_CLIdta_ult_compra: TDateField;
    CAD_CD_C_CLIdta_pri_compra: TDateField;
    CAD_CD_C_CLIfiliacao: TWideStringField;
    CAD_CD_C_CLIcod_sufrana: TWideStringField;
    CAD_CD_C_CLIcod_pais: TWideStringField;
    CAD_CD_C_CLIid_perfil_cli: TIntegerField;
    CAD_CD_C_CLIid_rota: TIntegerField;
    CAD_CD_C_CLIdoc_rg_orgao: TWideStringField;
    CAD_CD_C_CLIapelido: TWideStringField;
    CAD_CD_C_CLIlim_validade: TDateField;
    CAD_CD_C_CLIcod_lme: TWideStringField;
    CAD_CD_C_CLIrev_lme: TWideStringField;
    CAD_CD_C_CLIid_regiao: TIntegerField;
    CAD_CD_C_CLIcontribuinte: TIntegerField;
    CAD_CD_C_CLIid_vendedor: TIntegerField;
    CAD_CD_C_CLIdias_prazo_financeiro: TIntegerField;
    CAD_CD_C_CLIprofissao: TWideStringField;
    CAD_CD_C_CLIrenda: TFMTBCDField;
    CAD_CD_C_CLIid_responsavel: TIntegerField;
    CAD_CD_C_CLIid_controle_fpg_hrq: TIntegerField;
    CAD_CD_C_CLIpermitir_alterar_dias_tit_ped: TBooleanField;
    CAD_CD_C_CLIstatus_vis_mobile: TBooleanField;
    CAD_CD_C_CLIid_cli_temp_mobile: TWideStringField;
    CAD_CD_C_CLICAD_SQ_C_CLI_PRO: TDataSetField;
    CAD_CD_C_CLI_PROdoc_cnpj_cpf: TWideStringField;
    CAD_CD_C_CLI_PROid_cliente: TIntegerField;
    CAD_CD_C_CLI_PROid_propriedade: TIntegerField;
    CAD_CD_C_CLI_PROtipo: TIntegerField;
    CAD_CD_C_CLI_PROnome: TWideStringField;
    CAD_CD_C_CLI_PRObairro: TWideStringField;
    CAD_CD_C_CLI_PROid_cidade: TWideStringField;
    CAD_CD_C_CLI_PROdoc_ip: TWideStringField;
    CAD_CD_C_CLI_PROdoc_incra: TWideStringField;
    CAD_CD_C_CLI_PROdoc_cnpj: TWideStringField;
    CAD_CD_C_CLI_PROdoc_ie: TWideStringField;
    CAD_CD_C_CLI_PROadministrador: TWideStringField;
    CAD_CD_C_CLI_PROendereco: TWideStringField;
    CAD_CD_C_CLI_PROcep: TWideStringField;
    CAD_CD_C_CLI_PROnumero: TWideStringField;
    CAD_CD_C_CLI_PROid_pro_mob_temp: TIntegerField;
    CAD_CD_C_CLI_PRO_CULid_cliente: TIntegerField;
    CAD_CD_C_CLI_PRO_CULid_propriedade: TIntegerField;
    CAD_CD_C_CLI_PRO_CULlote: TWideStringField;
    CAD_CD_C_CLI_PRO_CULid_cultura: TIntegerField;
    CAD_CD_C_CLI_PRO_CULidade: TSmallintField;
    CAD_CD_C_CLI_PRO_CULarea: TFloatField;
    CAD_CD_C_CLI_PRO_CULprodutividade: TFloatField;
    CAD_CD_C_CLI_PRO_CULobs: TWideStringField;
    CAD_CD_C_CLI_PRO_CULvariedade: TWideStringField;
    CAD_CD_C_CLI_PRO_CULproducao_estimada: TFloatField;
    CAD_DS_C_CLI_PRO: TDataSource;
    CAD_CD_C_CLI_PROCAD_SQ_C_CLI_PRO_CUL: TDataSetField;
    CAD_CD_C_CLI_RVD: TClientDataSet;
    CAD_SQ_C_CLI_RVD: TSQLDataSet;
    CAD_SQ_C_CLI_RVDid_cliente: TIntegerField;
    CAD_SQ_C_CLI_RVDid_rvd: TIntegerField;
    CAD_CD_C_CLICAD_SQ_C_CLI_RVD: TDataSetField;
    CAD_CD_C_CLI_RVDid_cliente: TIntegerField;
    CAD_CD_C_CLI_RVDid_rvd: TIntegerField;
    CAD_CD_C_VIT: TClientDataSet;
    CAD_DS_C_VIT: TDataSource;
    CAD_CD_C_VIT_FOT: TClientDataSet;
    CAD_CD_C_VIT_KMT: TClientDataSet;
    CAD_CD_C_VITint_id_visita_mob: TIntegerField;
    CAD_CD_C_VITid_visita: TIntegerField;
    CAD_CD_C_VITid_vendedor: TIntegerField;
    CAD_CD_C_VITdoc_cnpj_cpf: TWideStringField;
    CAD_CD_C_VITid_veiculo: TIntegerField;
    CAD_CD_C_VITdta_visita: TDateField;
    CAD_CD_C_VITobs: TWideStringField;
    CAD_CD_C_VITrecomendacoes: TWideStringField;
    CAD_CD_C_VITid_empresa: TIntegerField;
    CAD_CD_C_VITgps_latitude: TFloatField;
    CAD_CD_C_VITgps_longitude: TFloatField;
    CAD_CD_C_VIThor_ini: TTimeField;
    CAD_CD_C_VIThor_fim: TTimeField;
    CAD_CD_C_VITsemana: TIntegerField;
    CAD_CD_C_VITplaca: TWideStringField;
    CAD_CD_C_VITid_pedido_mobile: TIntegerField;
    CAD_CD_C_VITtipo_mobile: TIntegerField;
    CAD_CD_C_VITremarcar_vis: TBooleanField;
    CAD_CD_C_VITdta_prox_vis: TDateField;
    CAD_CD_C_VITsemana_prox_vis: TIntegerField;
    CAD_CD_C_VITid_cliente: TIntegerField;
    CAD_CD_C_VITCAD_SQ_C_VIT_KMT: TDataSetField;
    CAD_CD_C_VITCAD_SQ_C_VIT_FOT: TDataSetField;
    CAD_CD_C_VIT_FOTid_visita: TIntegerField;
    CAD_CD_C_VIT_FOTid_vit_fot: TIntegerField;
    CAD_CD_C_VIT_FOTcaminho_foto: TWideStringField;
    CAD_CD_C_VIT_FOTobs: TWideStringField;
    CAD_CD_C_VIT_KMTid_visita: TIntegerField;
    CAD_CD_C_VIT_KMTid_km: TIntegerField;
    CAD_CD_C_VIT_KMTid_veiculo: TIntegerField;
    CAD_CD_C_VIT_KMTkm_inicial: TFloatField;
    CAD_CD_C_VIT_KMTkm_final: TFloatField;
    CAD_CD_C_VIT_KMTkm_inicial_orig: TFloatField;
    CAD_CD_C_VIT_KMTkm_final_orig: TFloatField;
    PRO_DP_M_VIS: TDataSetProvider;
    PRO_CD_M_VIS: TClientDataSet;
    PRO_SQ_M_VIS: TSQLDataSet;
    PRO_DS_M_VIS: TDataSource;
    PRO_SQ_M_VIS_CLI: TSQLDataSet;
    PRO_CD_M_VIS_CLI: TClientDataSet;
    PRO_CD_M_VISid_vis: TIntegerField;
    PRO_CD_M_VISsemana: TIntegerField;
    PRO_CD_M_VISid_vendedor: TIntegerField;
    PRO_CD_M_VISfechada: TBooleanField;
    PRO_CD_M_VISid_empresa: TIntegerField;
    PRO_CD_M_VISano: TIntegerField;
    PRO_CD_M_VISdta_criacao: TDateField;
    PRO_CD_M_VISPRO_SQ_M_VIS_CLI: TDataSetField;
    PRO_SQ_M_VISid_vis: TIntegerField;
    PRO_SQ_M_VISsemana: TIntegerField;
    PRO_SQ_M_VISid_vendedor: TIntegerField;
    PRO_SQ_M_VISfechada: TBooleanField;
    PRO_SQ_M_VISid_empresa: TIntegerField;
    PRO_SQ_M_VISano: TIntegerField;
    PRO_SQ_M_VISdta_criacao: TDateField;
    PRO_SQ_M_VIS_CLIid_vis: TIntegerField;
    PRO_SQ_M_VIS_CLIid_vis_cli: TIntegerField;
    PRO_SQ_M_VIS_CLIdoc_cnpj_cpf: TWideStringField;
    PRO_SQ_M_VIS_CLIdta_visita: TDateField;
    PRO_SQ_M_VIS_CLIid_cliente: TIntegerField;
    PRO_CD_M_VIS_CLIid_vis: TIntegerField;
    PRO_CD_M_VIS_CLIid_vis_cli: TIntegerField;
    PRO_CD_M_VIS_CLIdoc_cnpj_cpf: TWideStringField;
    PRO_CD_M_VIS_CLIdta_visita: TDateField;
    PRO_CD_M_VIS_CLIid_cliente: TIntegerField;
    FAT_DS_M_PED: TDataSource;
    FAT_CD_M_PED: TClientDataSet;
    FAT_CD_M_PED_ITE: TClientDataSet;
    FAT_CD_M_PED_TIT: TClientDataSet;
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
    FAT_CD_M_PEDid_pedido_temp_mob: TIntegerField;
    FAT_CD_M_PEDsemana: TIntegerField;
    FAT_CD_M_PEDid_pedido_mob: TIntegerField;
    FAT_CD_M_PEDFAT_SQ_M_PED_TIT: TDataSetField;
    FAT_CD_M_PEDFAT_SQ_M_PED_ITE: TDataSetField;
    FAT_CD_M_PED_TITid_pedido: TIntegerField;
    FAT_CD_M_PED_TITid_titulo: TIntegerField;
    FAT_CD_M_PED_TITdias: TIntegerField;
    FAT_CD_M_PED_TITdta_vencimento: TDateField;
    FAT_CD_M_PED_TITvlr_titulo: TFMTBCDField;
    FAT_CD_M_PED_TITche_banco: TWideStringField;
    FAT_CD_M_PED_TITche_agencia: TWideStringField;
    FAT_CD_M_PED_TITche_conta: TIntegerField;
    FAT_CD_M_PED_TITche_numero: TIntegerField;
    FAT_CD_M_PED_TITche_emitente: TWideStringField;
    FAT_CD_M_PED_TITid_forma_pag: TIntegerField;
    FAT_CD_M_PED_TITbol_nosso_numero: TIntegerField;
    FAT_CD_M_PED_TITid_maquineta: TIntegerField;
    CAD_SQ_C_CLIgps_latitude: TFloatField;
    CAD_SQ_C_CLIgps_longitude: TFloatField;
    CAD_CD_C_CLIgps_latitude: TFloatField;
    CAD_CD_C_CLIgps_longitude: TFloatField;
    PRO_SQ_M_PMB: TSQLDataSet;
    PRO_CD_M_PMB: TClientDataSet;
    PRO_DP_M_PMB: TDataSetProvider;
    CAD_SQ_C_VITsemana_visitada: TIntegerField;
    CAD_CD_C_VITsemana_visitada: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CAD_CD_C_CLIReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure PRO_CD_M_VISReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FAT_CD_M_PEDReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CAD_CD_C_VITReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    function CAD_DP_C_ITEDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
  private
    { Private declarations }
     function percorreArquivoTexto ( nomeDoArquivo: String ):String;
  public
    { Public declarations }
    var
       xMsg: String;

    procedure GerarSqlTxt(texto: String);
    procedure enReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

    function perfil: TJsonArray;
    function updateperfil(dados: TJSONArray): string;

    function imagem: TJsonArray;
    function updateimagem(dados: TJSONArray): string;

    // CAD_TB_C_PEC
    function tbPerfil: TStream;

    // CAD_TB_C_CID
    function tbCidades: TStream;

    // CAD_TB_C_FUN
    function tbFuncionarios: TStream;

    // PCP_TB_C_ROT
    function tbRotas: TStream;

    // CAD_TB_C_CUL
    function tbCulturas: TStream;

    // CAD_TB_C_GRU
    function tbGrupos: TStream;

    // CAD_TB_C_ITE
    function tbItens: TStream;

    // CAD_TB_C_ITE_CUL
    function tbItensCul: TStream;

    // CAD_TB_C_ITE_PRC
    function tbItensPrc: TStream;
    function updatetbItensPrc(dados: TJSONArray): TStream;

    // CAD_TB_C_FPG
    function tbFormasPgto: TStream;

    // CAD_TB_C_CPG
    function tbCondicaoPgto: TStream;

    // CAD_TB_C_PAR
    function tbEmpresa: TStream;

    // EST_TB_M_PAR_CTR: Busca dados do parâmetro controle
    function tbEmpresaCtr: TJsonArray;
    function updatetbEmpresaCtr(dados: TJSONArray): TStream;

    // CAD_TB_C_VEI
    function tbVeiculos: TStream;

    // EST_TB_M_FES: Busca Saldo do Estoque das empresas
    function tbSaldoEst: TJsonArray;
    function updatetbSaldoEst(dados: TJSONArray): TStream;

    // CAD_TB_C_CLI
    function tbClientes: TJsonArray;
    function updatetbClientes(dados: TJSONArray): TStream;

    // CAD_TB_C_CLI_PRO
    function tbClientesPro: TJsonArray;
    function updatetbClientesPro(dados: TJSONArray): TJsonArray;

    // CAD_TB_C_CLI_PRO_CUL
    function tbClientesProCul: TJsonArray;
    function updatetbClientesProCul(dados: TJSONArray): TJsonArray;

    // CAD_TB_C_RVD
    function tbRevendas: TStream;

    // CAD_TB_C_CLI_RVD
    function tbClientesRevenda: TJsonArray;
    function updatetbClientesRevenda(dados: TJSONArray): TJsonArray;

    // Histórico de compra do cliente
    function tbHistoricoClic: TJsonArray;
    function updatetbHistoricoCli(dados: TJSONArray): TStream;

    // Histórico das Ultimas 3 visitas
    function tbUltimasVisitas: TJsonArray;
    function updatetbUltimasVisitas(dados: TJSONArray): TJsonArray;

    // FIN_TB_M_REC
    function tbTitulosRec: TJsonArray;
    function updatetbTitulosRec(dados: TJSONArray): TJsonArray;

    // CAD_TB_C_VIT
    function tbAcompVisitas: TJsonArray;
    function updatetbAcompVisitas(dados: TJSONArray): TJsonArray;

    // FAT_TB_M_PED
    function tbPedidosCli: TJsonArray;
    function updatetbPedidosCli(dados: TJSONArray): TJsonArray;

    // Busca a versão do sistema
    function tbVersaoSis: TStream;
    function tbVerificacoes: TStream;

    // GravarDados
    function tbGravarDados: TJsonArray;
    function updatetbGravarDados(dados: TJSONArray): TStream;

    //function testeGravarDados: TStream;

    function updatetbPefil(dados: TJSONArray): string;

    function GerarEstoquePedido(CAD_CD_C_SEQ,cdsPai,cdsItens,EST_CD_M_FEA,EST_CD_M_FES:TClientDataSet):Boolean;

    // Ordem dos Gets

  {  "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbPerfil",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbCidades",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbClientes",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbClientesPro",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbCulturas",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbClientesProCul",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbGrupos",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbItens",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbItensCul",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbItensPrc",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbFormasPgto",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbVeiculos",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbTitulosRec",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbCondicaoPgto",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbEmpresa",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbRevendas",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbClientesRevenda",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbHistoricoCli",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbUltimasVisitas",
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbEmpresaCtr","
    "http://" + Config.getIpServer()+ ":" + Config.getPortServer() + "/datasnap/rest/TSM/tbSaldoEst"}



  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}

uses Cliente, uPrincipal;


// IP DO SERVIDOR DA VALE AGRO: 201.20.72.165

{ TServerMethods1 }

procedure TSM.CAD_CD_C_CLIReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  xMsg := '';

  GerarSqlTxt(' Erro no cliente: ' + #13 +
       DataSet.FieldByName('id_cliente').AsString + ' - ' +
       DataSet.FieldByName('nome').AsString + '; msg: ' + e.Message);
  uPrincipal.Form1.mmTexto.Lines.Add('Erro no cliente: ' + e.Message);

  xMsg := ' Erro no cliente: ' + #13 +
       DataSet.FieldByName('id_cliente').AsString + ' - ' +
       DataSet.FieldByName('nome').AsString + '; msg: ' + e.Message;
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

procedure TSM.CAD_CD_C_VITReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  xMsg := '';

  GerarSqlTxt(' Erro na visita: ' + #13 +
       DataSet.FieldByName('id_visita').AsString + '; msg: ' + e.Message);

  uPrincipal.Form1.mmTexto.Lines.Add('Erro na visita: ' + e.Message);

  xMsg := ' Erro na visita: ' + #13 +
       DataSet.FieldByName('id_visita').AsString + '; msg: ' + e.Message;
end;

function TSM.CAD_DP_C_ITEDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlIte: String;
  begin
    Result :=
        ' SELECT ITE.*,GRU.TIPO_ITEM AS INT_TIPOITEM FROM CAD_TB_C_ITE ITE '+
        ' LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_GRUPO ';
  end;
begin
   CAD_SQ_C_ITE.Close;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_SQ_C_ITE.CommandText := enSqlIte + ' WHERE 1=2 '
        else
           CAD_SQ_C_ITE.CommandText := enSqlIte +
             ' WHERE ITE.ID_ITEM= ''' + VarToStr(Input[1]) +''' ';
      end;

   Result := CAD_DP_C_ITE.Data;
   CAD_SQ_C_ITE.Close;
end;

procedure TSM.DataModuleCreate(Sender: TObject);
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

  uPrincipal.Form1.mmTexto.Lines.Clear;
  if ConexaoNW.Connected then
     uPrincipal.Form1.mmTexto.Lines.Add('Conexão ativa!');
  uPrincipal.Form1.mmTexto.Lines.Add('HosName: ' + HostName);
  uPrincipal.Form1.mmTexto.Lines.Add('Banco: '   + Banco);
  uPrincipal.Form1.mmTexto.Lines.Add('Data: ' + datetostr(date));
  uPrincipal.Form1.mmTexto.Lines.Add('Hora: '   + timetostr(time));
  uPrincipal.Form1.mmTexto.Lines.Add('----------------');

end;

procedure TSM.enReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  xMsg := '';

  GerarSqlTxt(' Erro no ' + DataSet.Name + ', ' + #13 +
              ' msg: ' + e.Message);

  xMsg := ' Erro no ' + DataSet.Name + ', ' + #13 +
          ' msg: ' + e.Message;

end;

procedure TSM.FAT_CD_M_PEDReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  xMsg := '';

  GerarSqlTxt(' Erro no pedido de venda: ' + #13 +
       DataSet.FieldByName('id_pedido').AsString + '; msg: ' + e.Message);

  uPrincipal.Form1.mmTexto.Lines.Add('Erro no pedido de venda: ' + e.Message);

  xMsg := ' Erro no pedido de venda: ' + #13 +
       DataSet.FieldByName('id_pedido').AsString + '; msg: ' + e.Message;
end;

function TSM.imagem: TJsonArray;
begin

end;

function TSM.perfil: TJsonArray;
var
 // VCliente: TCliente;
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;
begin


  try
    CAD_SQ_C_PEC.close;
    CAD_SQ_C_PEC.CommandText := '';
    CAD_SQ_C_PEC.CommandText := ' SELECT * FROM CAD_TB_C_PEC ';
   // CAD_CD_C_PEC.Open;


    jsObj := TJsonObject.Create();

    result := TJsonArray.Create();





   { while not CAD_CD_C_PEC.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_PEC.FieldByName('descricao').AsString));
          result.AddElement(jso);
         CAD_CD_C_PEC.Next;
       end;  }



    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContent := result.ToString;


   // CAD_CD_C_PEC.close;


  finally

  end;
end;

procedure TSM.PRO_CD_M_VISReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  xMsg := '';

  GerarSqlTxt(' Erro na programação da visita: ' + #13 +
       DataSet.FieldByName('id_vis').AsString + '; msg: ' + e.Message);

  uPrincipal.Form1.mmTexto.Lines.Add('Erro na programação da visita: ' + e.Message);

  xMsg := ' Erro na programação da visita: ' + #13 +
       DataSet.FieldByName('id_vis').AsString + '; msg: ' + e.Message;
end;

function TSM.tbAcompVisitas: TJsonArray;
begin

end;

function TSM.tbCidades: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_CID: TClientDataSet;
  utf8: String;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_CID - Cidades
    Criado por: Maxsuel Victor
    Data: 10/01/2017
  }
  try
    CAD_CD_C_CID := TClientDataSet.Create(nil);
    CAD_CD_C_CID.SetProvider(CAD_DP_C_CID);

    CAD_CD_C_CID.close;
    CAD_SQ_C_CID.CommandText := '';
    CAD_SQ_C_CID.CommandText := ' SELECT * FROM CAD_TB_C_CID ';
    CAD_CD_C_CID.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_CID.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('codibge',CAD_CD_C_CID.FieldByName('id_cidade').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_CID.FieldByName('nome').AsString));
          Lista.AddElement(jso);
         CAD_CD_C_CID.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    //    GetInvocationMetadata().ResponseContent :=  StreamToStr(TStringStream.Create( utf8encode(result.ToString)));
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da cidade sincronizada!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_CID.close;
    FreeAndNil(CAD_CD_C_CID);
  end;
end;


function TSM.tbClientes: TJsonArray;
begin
  { Get da Tabela: CAD_TB_C_CLI - Clientes
    Criado por: Maxsuel Victor
    Data: 10/01/2017
  }

  // Ficou no lado no método do Post (updatetbClientes);
end;

function TSM.tbClientesPro: TJsonArray;
begin

end;

function TSM.tbClientesProCul: TJsonArray;
begin

end;

function TSM.tbClientesRevenda: TJsonArray;
begin

end;

function TSM.tbCondicaoPgto: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_SQ_C_CPG: TSQLDataSet;
  CAD_DP_C_CPG: TDataSetProvider;
  CAD_CD_C_CPG: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_CPG - Condição de Pagto
    Criado por: Maxsuel Victor
    Data: 26/01/2017
  }
  try

    CAD_SQ_C_CPG := TSQLDataSet.Create(nil);
    CAD_SQ_C_CPG.SQLConnection := ConexaoNW;

    CAD_DP_C_CPG := TDataSetProvider.Create(nil);
    CAD_DP_C_CPG.DataSet := CAD_SQ_C_CPG;


    CAD_CD_C_CPG := TClientDataSet.Create(nil);
    CAD_CD_C_CPG.SetProvider(CAD_DP_C_CPG);

    CAD_SQ_C_CPG.close;
    CAD_SQ_C_CPG.CommandText := '';
    CAD_SQ_C_CPG.CommandText := ' SELECT * FROM CAD_TB_C_CPG ';
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
    CAD_SQ_C_CPG.Close;
    CAD_CD_C_CPG.close;
    FreeAndNil(CAD_CD_C_CPG);
    FreeAndNil(CAD_DP_C_CPG);
    FreeAndNil(CAD_SQ_C_CPG);
  end;
end;

function TSM.tbCulturas: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_CUL: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_CUL - Cultura
    Criado por: Maxsuel Victor
    Data: 13/01/2017
  }
  try
    CAD_CD_C_CUL := TClientDataSet.Create(nil);
    CAD_CD_C_CUL.SetProvider(CAD_DP_C_CUL);

    CAD_SQ_C_CUL.close;
    CAD_SQ_C_CUL.CommandText := '';
    CAD_SQ_C_CUL.CommandText := ' SELECT * FROM CAD_TB_C_CUL ';
    CAD_CD_C_CUL.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_CUL.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_CUL.FieldByName('id_cultura').AsString));
          jso.AddPair(TJsonPair.Create('nome',CAD_CD_C_CUL.FieldByName('descricao').AsString));
          jso.AddPair(TJsonPair.Create('ciclocurto',CAD_CD_C_CUL.FieldByName('ciclo_curto').AsString));
          Lista.AddElement(jso);
         CAD_CD_C_CUL.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da cultura sincronizada!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_CUL.close;
    FreeAndNil(CAD_CD_C_CUL);
  end;
end;

function TSM.tbEmpresa: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_SQ_C_PAR: TSQLDataSet;
  CAD_DP_C_PAR: TDataSetProvider;
  CAD_CD_C_PAR: TClientDataSet;

  Lista:  TJsonArray;

begin

  { Get da Tabela: CAD_TB_C_PAR - Empresa
    Criado por: Maxsuel Victor
    Data: 31/01/2017
  }
  try

    CAD_SQ_C_PAR := TSQLDataSet.Create(nil);
    CAD_SQ_C_PAR.SQLConnection := ConexaoNW;

    CAD_DP_C_PAR := TDataSetProvider.Create(nil);
    CAD_DP_C_PAR.DataSet := CAD_SQ_C_PAR;


    CAD_CD_C_PAR := TClientDataSet.Create(nil);
    CAD_CD_C_PAR.SetProvider(CAD_DP_C_PAR);

    CAD_SQ_C_PAR.close;
    CAD_SQ_C_PAR.CommandText := '';
    CAD_SQ_C_PAR.CommandText := ' SELECT * FROM CAD_TB_C_PAR ';
    CAD_CD_C_PAR.Open;


    jsObj := TJsonObject.Create();
    lista := TJsonArray.Create();

    while not CAD_CD_C_PAR.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id_empresa',CAD_CD_C_PAR.FieldByName('id_empresa').AsString));
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
    CAD_SQ_C_PAR.Close;
    CAD_CD_C_PAR.close;
    FreeAndNil(CAD_CD_C_PAR);
    FreeAndNil(CAD_DP_C_PAR);
    FreeAndNil(CAD_SQ_C_PAR);
  end;
end;

function TSM.tbEmpresaCtr: TJsonArray;
begin

end;

function TSM.updatetbEmpresaCtr(dados: TJSONArray): TStream;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  operacao, id_vendedor, id_empresa_vendedor: String;

  jsobj, jso: TJsonObject;

  CAD_CD_C_PAR_CTR,CAD_CD_C_FUN : TClientDataSet;

  qryCons1: TSQLQuery;
  Lista:  TJsonArray;
begin

  { Get da
    Tabela: CAD_TB_C_PAR_CTR:  Parâmetro de Controle
    Criado por: Maxsuel Victor
    Data: 19/09/2017
  }

  try
    txt := dados.ToString;

    VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

    for LJsonValue in VJsonArray do
        begin
           for LItem in TJSONArray(LJsonValue) do
              begin
                if TJSONPair(LItem).JsonString.Value = 'operacao' then
                   operacao := TJSONPair(LItem).JsonValue.Value;

                if TJSONPair(LItem).JsonString.Value = 'vendedor' then
                   id_vendedor  := TJSONPair(LItem).JsonValue.Value;
              end;
        end;

   // Cadastro de Funionário
   CAD_CD_C_FUN := TClientDataSet.Create(nil);
   CAD_CD_C_FUN.SetProvider(CAD_DP_C_FUN);

   CAD_SQ_C_FUN.close;
   CAD_SQ_C_FUN.CommandText := '';
   CAD_SQ_C_FUN.CommandText := ' SELECT id_empresa_mob FROM CAD_TB_C_FUN ' +
                               ' WHERE id_funcionario = ' + id_vendedor;
   CAD_CD_C_FUN.Open;

   id_empresa_vendedor := CAD_CD_C_FUN.FieldByName('id_empresa_mob').AsString;

   CAD_CD_C_FUN.close;

   // Cadastro de Parâmetros
   CAD_CD_C_PAR_CTR := TClientDataSet.Create(nil);
   CAD_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);

   CAD_SQ_C_PAR_CTR.close;
   CAD_SQ_C_PAR_CTR.CommandText := '';
   CAD_SQ_C_PAR_CTR.CommandText := ' SELECT mob_busca_sld_est, mob_tipo_preco_cli, ped_aceita_est_negativo FROM CAD_TB_C_PAR_CTR ' +
                                   ' WHERE id_empresa = ' + id_empresa_vendedor;
   CAD_CD_C_PAR_CTR.Open;

   jsObj := TJsonObject.Create();
   Lista := TJsonArray.Create();


   jso := TJsonObject.Create();
   jso.AddPair(TJsonPair.Create('mob_busca_sld_est',CAD_CD_C_PAR_CTR.FieldByName('mob_busca_sld_est').AsString));
   jso.AddPair(TJsonPair.Create('mob_tipo_preco_cli',CAD_CD_C_PAR_CTR.FieldByName('mob_tipo_preco_cli').AsString));
   jso.AddPair(TJsonPair.Create('ped_aceita_est_negativo',CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsString));
   Lista.AddElement(jso);


   CAD_CD_C_PAR_CTR.Close;

   GetInvocationMetadata().ResponseCode := 200;
   GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
   result :=  TStringStream.Create( utf8encode(Lista.ToString));

   uPrincipal.Form1.mmTexto.Lines.Add('Get dos Parâmetros de Controle sincronizado!');

   finally
     FreeAndNil(Lista);
     FreeAndNil(CAD_CD_C_FUN);
     FreeAndNil(CAD_CD_C_PAR_CTR);
     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);
   end;
end;

function TSM.tbFormasPgto: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_FPG: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_FPG - Formas de Pagto
    Criado por: Maxsuel Victor
    Data: 13/01/2017
  }
  try
    CAD_CD_C_FPG := TClientDataSet.Create(nil);
    CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);

    CAD_SQ_C_FPG.close;
    CAD_SQ_C_FPG.CommandText := '';
    CAD_SQ_C_FPG.CommandText := ' SELECT * FROM CAD_TB_C_FPG ';
    CAD_CD_C_FPG.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_FPG.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_FPG.FieldByName('id_forma_pag').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_FPG.FieldByName('descricao').AsString));
          jso.AddPair(TJsonPair.Create('doc_impresso',CAD_CD_C_FPG.FieldByName('doc_impresso').AsString));
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
    CAD_CD_C_FPG.close;
    FreeAndNil(CAD_CD_C_FPG);
  end;
end;

function TSM.tbFuncionarios: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_FUN: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_FUN - Funcionarios (Vendedores)
    Criado por: Maxsuel Victor
    Data: 10/01/2017
  }
  try
    CAD_CD_C_FUN := TClientDataSet.Create(nil);
    CAD_CD_C_FUN.SetProvider(CAD_DP_C_FUN);

    CAD_SQ_C_FUN.close;
    CAD_SQ_C_FUN.CommandText := '';
    CAD_SQ_C_FUN.CommandText := ' SELECT * FROM CAD_TB_C_FUN ';
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
          jso.AddPair(TJsonPair.Create('mob_alt_preco_ped',CAD_CD_C_FUN.FieldByName('mob_alt_preco_ped').AsString));
          Lista.AddElement(jso);
          CAD_CD_C_FUN.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do funcionário sincronizado!');
  finally
    FreeAndNil(Lista);
    CAD_CD_C_FUN.close;
    FreeAndNil(CAD_CD_C_FUN);
  end;
end;

function TSM.tbGravarDados: TJsonArray;
begin

end;

function TSM.tbGrupos: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_GRU: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_GRU - Grupo
    Criado por: Maxsuel Victor
    Data: 13/01/2017
  }
  try
    CAD_CD_C_GRU := TClientDataSet.Create(nil);
    CAD_CD_C_GRU.SetProvider(CAD_DP_C_GRU);

    CAD_SQ_C_GRU.close;
    CAD_SQ_C_GRU.CommandText := '';
    CAD_SQ_C_GRU.CommandText := ' SELECT * FROM CAD_TB_C_GRU ';
    CAD_CD_C_GRU.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_GRU.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_GRU.FieldByName('id_grupo').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_GRU.FieldByName('descricao').AsString));
          jso.AddPair(TJsonPair.Create('tipoitem',CAD_CD_C_GRU.FieldByName('tipo_item').AsString));
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
    FreeAndNil(CAD_CD_C_GRU);
  end;
end;

function TSM.tbHistoricoClic: TJsonArray;
begin

end;

function TSM.tbItens: TStream;
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
    Criado por: Maxsuel Victor
    Data: 10/01/2017
  }
  try

    CAD_CD_C_ITE := TClientDataSet.Create(nil);
    CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);


    CAD_SQ_C_ITE.close;
    CAD_SQ_C_ITE.CommandText := '';
    CAD_SQ_C_ITE.CommandText := ' SELECT * FROM CAD_TB_C_ITE where ativo = true ';
    CAD_CD_C_ITE.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_ITE.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_ITE.FieldByName('id_item').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_ITE.FieldByName('descricao').AsString));
          jso.AddPair(TJsonPair.Create('referencia',CAD_CD_C_ITE.FieldByName('referencia').AsString));
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
    CAD_CD_C_ITE.close;
    FreeAndNil(CAD_CD_C_ITE);
  end;
end;


function TSM.tbItensCul: TStream;
var

  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_ITE_CUL: TClientDataSet;

  Lista:  TJsonArray;
begin

  { Get da
    Tabela: CAD_TB_C_ITE_CUL - Culturas dos Itens
    Criado por: Maxsuel Victor
    Data: 10/01/2017
  }
  try

    CAD_CD_C_ITE_CUL := TClientDataSet.Create(nil);
    CAD_CD_C_ITE_CUL.SetProvider(CAD_DP_C_ITE_CUL);


    CAD_SQ_C_ITE_CUL.close;
    CAD_SQ_C_ITE_CUL.CommandText := '';
    CAD_SQ_C_ITE_CUL.CommandText := ' SELECT * FROM CAD_TB_C_ITE_CUL ';
    CAD_CD_C_ITE_CUL.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_ITE_CUL.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_ITE_CUL.FieldByName('id_item').AsString));
          jso.AddPair(TJsonPair.Create('cultura',CAD_CD_C_ITE_CUL.FieldByName('id_cultura').AsString));
          jso.AddPair(TJsonPair.Create('obs',CAD_CD_C_ITE_CUL.FieldByName('obs').AsString));
          Lista.AddElement(jso);
         CAD_CD_C_ITE_CUL.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da cultura do item sincronizado!');

  finally
    FreeAndNil(Lista);
    CAD_CD_C_ITE_CUL.close;
    FreeAndNil(CAD_CD_C_ITE_CUL);
  end;
end;

function TSM.tbItensPrc: TStream;
begin

end;

function TSM.updatetbItensPrc(dados: TJSONArray): TStream;
var
  VJSONArray: TJSONArray;
  jsobj, jso : TJsonObject;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  CAD_CD_C_PAR_CTR, CAD_CD_C_ITE_PRC,
  CAD_CD_C_PEC,CAD_CD_C_ITE, CAD_CD_C_GRU: TClientDataSet;

  CAD_DP_C_FAM:  TDataSetProvider;
  CAD_SQ_C_FAM:  TSQLDataSet;
  CAD_CD_C_FAM:  TClientDataSet;
  CAD_CD_C_FUN:  TClientDataSet;
  mob_tipo_preco_cli: integer;
  faz_corr_preco_perfil: Boolean;
  fazCorrPerfilFamilia: Boolean;

  Lista:  TJsonArray;

  per_desc_prom_gru, preco_avista,preco_aprazo: currency;

  operacao,id_vendedor, id_empresa_vendedor:String;
begin

  { Get da
    Tabela: CAD_TB_C_ITE_PRC - Preço dos Itens
    Criado por: Maxsuel Victor
    Data: 10/01/2017
  }
  try


    txt := dados.ToString;

    VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

    for LJsonValue in VJsonArray do
        begin
           for LItem in TJSONArray(LJsonValue) do
              begin
                if TJSONPair(LItem).JsonString.Value = 'operacao' then
                   operacao := TJSONPair(LItem).JsonValue.Value;

                if TJSONPair(LItem).JsonString.Value = 'vendedor' then
                   id_vendedor  := TJSONPair(LItem).JsonValue.Value;
              end;
        end;

   // Cadastro de Funionário
   CAD_CD_C_FUN := TClientDataSet.Create(nil);
   CAD_CD_C_FUN.SetProvider(CAD_DP_C_FUN);

   CAD_SQ_C_FUN.close;
   CAD_SQ_C_FUN.CommandText := '';
   CAD_SQ_C_FUN.CommandText := ' SELECT id_empresa_mob FROM CAD_TB_C_FUN ' +
                               ' WHERE id_funcionario = ' + id_vendedor;
   CAD_CD_C_FUN.Open;

   id_empresa_vendedor := CAD_CD_C_FUN.FieldByName('id_empresa_mob').AsString;

   CAD_CD_C_FUN.close;


   faz_corr_preco_perfil := false;

   // Cadastro de Parâmetros
   CAD_CD_C_PAR_CTR := TClientDataSet.Create(nil);
   CAD_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);

   CAD_SQ_C_PAR_CTR.close;
   CAD_SQ_C_PAR_CTR.CommandText := '';
   CAD_SQ_C_PAR_CTR.CommandText := ' SELECT  mob_tipo_preco_cli, FAZ_CORR_PRECO_PERFIL FROM CAD_TB_C_PAR_CTR ' +
                                   ' WHERE id_empresa = ' + id_empresa_vendedor;
   CAD_CD_C_PAR_CTR.Open;

   mob_tipo_preco_cli     := CAD_CD_C_PAR_CTR.FieldByName('mob_tipo_preco_cli').AsInteger;
   faz_corr_preco_perfil  := CAD_CD_C_PAR_CTR.FieldByName('faz_corr_preco_perfil').AsBoolean;


   // Campo dos parâmetros de controle:  mob_tipo_preco_cli
   //    0 - Cálculo usando a tabela CAD_TB_C_ITE_PRC
   //    1 - Cálculo usando Perfil de Cliente, Permissão de Correção por Perfil  + Permissão de correção por Família


    if mob_tipo_preco_cli = 0 then   //    0 - Cálculo usando a tabela CAD_TB_C_ITE_PRC
       begin
          CAD_CD_C_ITE_PRC := TClientDataSet.Create(nil);
          CAD_CD_C_ITE_PRC.SetProvider(CAD_DP_C_ITE_PRC);


          CAD_SQ_C_ITE_PRC.close;
          CAD_SQ_C_ITE_PRC.CommandText := '';
          CAD_SQ_C_ITE_PRC.CommandText := ' SELECT prc.* FROM CAD_TB_C_ITE_PRC prc ' +
                                          '   left outer join cad_tb_c_ite ite on ite.id_item = prc.id_item ' +
                                          ' where ite.ativo = true ';
          CAD_CD_C_ITE_PRC.Open;


          jsObj := TJsonObject.Create();
          Lista := TJsonArray.Create();

          while not CAD_CD_C_ITE_PRC.Eof  do
             begin
                jso := TJsonObject.Create();
                jso.AddPair(TJsonPair.Create('item',CAD_CD_C_ITE_PRC.FieldByName('id_item').AsString));
                jso.AddPair(TJsonPair.Create('perfil',CAD_CD_C_ITE_PRC.FieldByName('id_perfil_cli').AsString));
                jso.AddPair(TJsonPair.Create('precoavista',CAD_CD_C_ITE_PRC.FieldByName('preco_avista').AsString));
                jso.AddPair(TJsonPair.Create('preco1',CAD_CD_C_ITE_PRC.FieldByName('preco1').AsString));
                jso.AddPair(TJsonPair.Create('preco2',CAD_CD_C_ITE_PRC.FieldByName('preco2').AsString));
                jso.AddPair(TJsonPair.Create('preco3',CAD_CD_C_ITE_PRC.FieldByName('preco3').AsString));
                jso.AddPair(TJsonPair.Create('preco4',CAD_CD_C_ITE_PRC.FieldByName('preco4').AsString));
                jso.AddPair(TJsonPair.Create('per_desc_prom_gru','0'));
                Lista.AddElement(jso);
                CAD_CD_C_ITE_PRC.Next;
             end;
       end;

    if (mob_tipo_preco_cli = 1)  then   // 1 - Cálculo usando Perfil de Cliente, Permissão de Correção por Perfil  + Permissão de correção por Família
       begin
          // Lê a tabela de família
          CAD_SQ_C_FAM := TSQLDataSet.Create(nil);
          CAD_SQ_C_FAM.SQLConnection := ConexaoNW;
          CAD_SQ_C_FAM.CommandType   := ctQuery;
          CAD_SQ_C_FAM.CommandText   := 'SELECT * FROM CAD_TB_C_FAM ';

          CAD_DP_C_FAM := TDataSetProvider.Create(nil);
            CAD_DP_C_FAM .DataSet :=  CAD_SQ_C_FAM;


          CAD_CD_C_FAM := TClientDataSet.Create(nil);
          CAD_CD_C_FAM.SetProvider(CAD_DP_C_FAM);
          CAD_CD_C_FAM.Open;

          // Lê a tabela de perfil de preço
          CAD_CD_C_PEC := TClientDataSet.Create(nil);
          CAD_CD_C_PEC.SetProvider(CAD_DP_C_PEC);

          CAD_SQ_C_PEC.close;
          CAD_SQ_C_PEC.CommandText := '';
          CAD_SQ_C_PEC.CommandText := ' SELECT * FROM CAD_TB_C_PEC ';
          CAD_CD_C_PEC.Open;

          // Lê a tabela de desconto do grupo
          CAD_CD_C_GRU := TClientDataSet.Create(nil);
          CAD_CD_C_GRU.SetProvider(CAD_DP_C_GRU);

          CAD_SQ_C_GRU.close;
          CAD_SQ_C_GRU.CommandText := '';
          CAD_SQ_C_GRU.CommandText := ' SELECT * FROM CAD_TB_C_GRU ';
          CAD_CD_C_GRU.Open;


          CAD_CD_C_ITE := TClientDataSet.Create(nil);
          CAD_CD_C_ITE.SetProvider(CAD_DP_C_ITE);

          CAD_SQ_C_ITE.close;
          CAD_SQ_C_ITE.CommandText := '';
          CAD_SQ_C_ITE.CommandText := ' SELECT * from cad_tb_c_ite ite ' +
                                      ' where ite.ativo = true ' +
                                      ' order by ite.descricao ' ;
          CAD_CD_C_ITE.Open;

          jsObj := TJsonObject.Create();
          Lista := TJsonArray.Create();

          while not (CAD_CD_C_ITE.eof) do
             begin
               preco_avista :=  CAD_CD_C_ITE.FieldByName('preco_avista').AsCurrency;
               preco_aprazo :=  CAD_CD_C_ITE.FieldByName('preco_aprazo').AsCurrency;

               if CAD_CD_C_ITE.FieldByName('id_familia').AsString <> '' then
                  begin
                     if CAD_CD_C_FAM.Locate('id_familia',CAD_CD_C_ITE.FieldByName('id_familia').AsString,[]) then
                        begin
                          fazCorrPerfilFamilia := CAD_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;
                        end;
                  end;


               if CAD_CD_C_ITE.FieldByName('id_grupo').AsString <> '' then
                  begin
                    if CAD_CD_C_GRU.Locate('id_grupo',CAD_CD_C_ITE.FieldByName('id_grupo').AsString,[]) then
                       begin
                          if CAD_CD_C_GRU.FieldByName('promo_ativa').AsBoolean then
                             begin
                               per_desc_prom_gru := CAD_CD_C_GRU.FieldByName('promo_perc').AsCurrency;
                             end;
                       end;
                  end;

               if (faz_corr_preco_perfil) and (fazCorrPerfilFamilia) then
                  begin
                    CAD_CD_C_PEC.First;
                    while not (CAD_CD_C_PEC.eof) do
                        begin
                          preco_avista :=  CAD_CD_C_ITE.FieldByName('preco_avista').AsCurrency;
                          preco_aprazo :=  CAD_CD_C_ITE.FieldByName('preco_aprazo').AsCurrency;

                          if CAD_CD_C_PEC.FieldByName('PER_CORRECAO').AsFloat > 0 then
                             begin
                                 if CAD_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                    begin
                                      preco_avista :=
                                           roundTo( (preco_avista / CAD_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                                    end;

                                 if CAD_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                    begin
                                      preco_avista :=
                                          roundTo(
                                               (preco_avista / CAD_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                                    end;
                             end;

                          if CAD_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsFloat > 0 then
                             begin
                               if CAD_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                  begin
                                    preco_aprazo :=
                                         roundTo( {BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency +}
                                             (preco_aprazo/CAD_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                                  end;

                               if CAD_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                  begin
                                    preco_aprazo :=
                                        roundTo(  {BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency -}
                                             (preco_aprazo /  CAD_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                                  end;
                             end;

                          jso := TJsonObject.Create();
                          jso.AddPair(TJsonPair.Create('item',CAD_CD_C_ITE.FieldByName('id_item').AsString));
                          jso.AddPair(TJsonPair.Create('perfil',CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsString));
                          jso.AddPair(TJsonPair.Create('precoavista',CurrToStr(preco_avista)));
                          jso.AddPair(TJsonPair.Create('precoaprazo',CurrToStr(preco_aprazo)));
                          jso.AddPair(TJsonPair.Create('preco1','0'));
                          jso.AddPair(TJsonPair.Create('preco2','0'));
                          jso.AddPair(TJsonPair.Create('preco3','0'));
                          jso.AddPair(TJsonPair.Create('preco4','0'));
                          jso.AddPair(TJsonPair.Create('per_desc_prom_gru',CurrToStr(per_desc_prom_gru)));
                          Lista.AddElement(jso);

                          CAD_CD_C_PEC.Next;
                        end;
                  end
               else
                  begin
                    CAD_CD_C_PEC.First;
                    while not (CAD_CD_C_PEC.eof) do
                        begin
                           jso := TJsonObject.Create();
                           jso.AddPair(TJsonPair.Create('item',CAD_CD_C_ITE.FieldByName('id_item').AsString));
                           jso.AddPair(TJsonPair.Create('perfil',CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsString));
                           jso.AddPair(TJsonPair.Create('precoavista',CurrToStr(preco_avista)));
                           jso.AddPair(TJsonPair.Create('precoaprazo',CurrToStr(preco_aprazo)));
                           jso.AddPair(TJsonPair.Create('preco1','0'));
                           jso.AddPair(TJsonPair.Create('preco2','0'));
                           jso.AddPair(TJsonPair.Create('preco3','0'));
                           jso.AddPair(TJsonPair.Create('preco4','0'));
                           jso.AddPair(TJsonPair.Create('per_desc_prom_gru',CurrToStr(per_desc_prom_gru)));
                           Lista.AddElement(jso);
                           CAD_CD_C_PEC.Next;
                        end;
                  end;
               CAD_CD_C_ITE.Next;
             end;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do preço do item sincronizado!');
  finally
    FreeAndNil(Lista);
    FreeAndNil(CAD_CD_C_FUN);

    if CAD_CD_C_ITE_PRC <> nil then
       begin
         CAD_CD_C_ITE_PRC.close;
         FreeAndNil(CAD_CD_C_ITE_PRC);
       end;

    if CAD_CD_C_ITE <> nil then
       begin
         CAD_CD_C_ITE.close;
         FreeAndNil(CAD_CD_C_ITE);
       end;

    if CAD_CD_C_FAM <> nil then
       FreeAndNil(CAD_CD_C_FAM);

    if CAD_CD_C_GRU <> nil then
       FreeAndNil(CAD_CD_C_GRU);

    if CAD_CD_C_PAR_CTR <> nil then
       FreeAndNil(CAD_CD_C_PAR_CTR);

    if VJsonArray <> nil then
        FreeAndNil(VJsonArray);
  end;
end;

function TSM.tbPedidosCli: TJsonArray;
begin

end;

function TSM.tbPerfil: TStream;
var
 // VCliente: TCliente;
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_PEC: TClientDataSet;
  Lista: TJsonArray;
begin

  { Get da
    Tabela: CAD_TB_C_PEC - Perfil de Cliente
    Criado por: Maxsuel Victor
    Data: 10/01/2017
  }
  try

    CAD_CD_C_PEC := TClientDataSet.Create(nil);
    CAD_CD_C_PEC.SetProvider(CAD_DP_C_PEC);


    CAD_SQ_C_PEC.close;
    CAD_SQ_C_PEC.CommandText := '';
    CAD_SQ_C_PEC.CommandText := ' SELECT * FROM CAD_TB_C_PEC ';
    CAD_CD_C_PEC.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not CAD_CD_C_PEC.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('id',CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsString));
          jso.AddPair(TJsonPair.Create('descricao',CAD_CD_C_PEC.FieldByName('descricao').AsString));
          Lista.AddElement(jso);
         CAD_CD_C_PEC.Next;
       end;
    GetInvocationMetadata().ResponseCode := 200;
    //GetInvocationMetadata().ResponseContent := result.ToString;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do perfil sincronizado!');

  finally
    FreeAndNil(Lista);
    CAD_CD_C_PEC.close;
    FreeAndNil(CAD_CD_C_PEC);
  end;
end;

function TSM.tbRevendas: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  qryCons1: TSQLQuery;

  Lista:  TJsonArray;
begin

  { Get da Tabela: CAD_TB_C_RVD - Revendas
    Criado por: Maxsuel Victor
    Data: 20/02/2017
  }
  try

    qryCons1 := TSQLQuery.Create(nil);
    qryCons1.SQLConnection := ConexaoNW;

    qryCons1.Close;
    qryCons1.SQL.Clear;
    qryCons1.SQL.Add(' SELECT * FROM CAD_TB_C_RVD ');
    qryCons1.Open;


    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not qryCons1.Eof  do
       begin
          jso := TJsonObject.Create();

          jso.AddPair(TJsonPair.Create('id',qryCons1.FieldByName('id_rvd').AsString));
          jso.AddPair(TJsonPair.Create('descricao',qryCons1.FieldByName('descricao').AsString));
          Lista.AddElement(jso);
          qryCons1.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da forma de pagamento sincronizada!');
  finally

    if qryCons1 <> nil then
       FreeAndNil(qryCons1);

    FreeAndNil(Lista);
  end;
end;


function TSM.tbRotas: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;
  PCP_CD_C_ROT: TClientDataSet;

  Lista:  TJsonArray;

begin

  { Get da Tabela: PCP_TB_C_ROT - Rotas
    Criado por: Maxsuel Victor
    Data: 10/01/2017
  }

  try
    PCP_CD_C_ROT := TClientDataSet.Create(nil);
    PCP_CD_C_ROT.SetProvider(PCP_DP_C_ROT);

    PCP_SQ_C_ROT.close;
    PCP_SQ_C_ROT.CommandText := '';
    PCP_SQ_C_ROT.CommandText := ' SELECT * FROM PCP_TB_C_ROT ';
    PCP_CD_C_ROT.Open;

    jsObj  := TJsonObject.Create();
    Lista := TJsonArray.Create();

    while not PCP_CD_C_ROT.Eof  do
       begin
          jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('id',PCP_CD_C_ROT.FieldByName('id_rota').AsString));
          jso.AddPair(TJsonPair.Create('descricao',PCP_CD_C_ROT.FieldByName('descricao').AsString));

          Lista.AddElement(jso);

          PCP_CD_C_ROT.Next;
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da rota sincronizada!');
  finally
    FreeAndNil(Lista);
    PCP_CD_C_ROT.close;
    FreeAndNil(PCP_CD_C_ROT);
  end;
end;


function TSM.tbSaldoEst: TJsonArray;
begin

end;

function TSM.updatetbSaldoEst(dados: TJSONArray): TStream;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  jsobj, jso: TJsonObject;

  id_empresa: String;


  operacao, id_vendedor, mob_busca_sld_est: string;

  CAD_CD_C_PAR_CTR,CAD_CD_C_FUN : TClientDataSet;

  qryCons1: TSQLQuery;
  Lista:  TJsonArray;
begin

  { Get da
    Tabela: EST_TB_M_FES:  Saldo do Estoque
    Criado por: Maxsuel Victor
    Data: 14/09/2017
  }

  try

    mob_busca_sld_est := 'false';

    txt := dados.ToString;

    VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

    for LJsonValue in VJsonArray do
      begin
         for LItem in TJSONArray(LJsonValue) do
            begin
              if TJSONPair(LItem).JsonString.Value = 'operacao' then
                 operacao := TJSONPair(LItem).JsonValue.Value;

              if TJSONPair(LItem).JsonString.Value = 'vendedor' then
                 id_vendedor  := TJSONPair(LItem).JsonValue.Value;

              if TJSONPair(LItem).JsonString.Value = 'mob_busca_sld_est' then
                 begin
                   mob_busca_sld_est  := TJSONPair(LItem).JsonValue.Value;
                 end;
            end;
      end;

    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    if mob_busca_sld_est = 'true' then
       begin
         qryCons1 := TSQLQuery.Create(nil);
         qryCons1.SQLConnection := ConexaoNW;

         // Irá buscar os itens com saldo fisico > 0 e somente dos itens Ativos.
         qryCons1.Close;
         qryCons1.SQL.Clear;
         qryCons1.SQL.Add(' select fes.id_empresa, par.emp_razao as razao_social, par.emp_fantasia as fantasia, ' +
                          '        fes.id_item, ite.descricao, ite.id_und_venda, fes.saldo_fisico '   +
                          ' from est_tb_m_fes fes '  +
                          '    left outer join cad_tb_c_ite ite on ite.id_item    = fes.id_item '     +
                          '    left outer join cad_tb_c_par par on par.id_empresa = fes.id_empresa '  +
                          ' WHERE ite.ativo = true and coalesce(saldo_fisico,0) > 0' );
         qryCons1.Open;



         if not qryCons1.IsEmpty then
            begin
               while not qryCons1.Eof  do
                  begin
                     jso := TJsonObject.Create();
                     jso.AddPair(TJsonPair.Create('id_empresa',qryCons1.FieldByName('id_empresa').AsString));
                     jso.AddPair(TJsonPair.Create('razao_social',qryCons1.FieldByName('razao_social').AsString));
                     jso.AddPair(TJsonPair.Create('fantasia',qryCons1.FieldByName('fantasia').AsString));
                     jso.AddPair(TJsonPair.Create('item',qryCons1.FieldByName('id_item').AsString));
                     jso.AddPair(TJsonPair.Create('descricao',qryCons1.FieldByName('descricao').AsString));
                     jso.AddPair(TJsonPair.Create('id_und_venda',qryCons1.FieldByName('id_und_venda').AsString));
                     jso.AddPair(TJsonPair.Create('saldo_fisico',qryCons1.FieldByName('saldo_fisico').AsString));
                     Lista.AddElement(jso);
                     qryCons1.Next;
                  end;
            end
         else
            begin
               {jso := TJsonObject.Create();
               jso.AddPair(TJsonPair.Create('id_empresa','0'));
               jso.AddPair(TJsonPair.Create('razao_social',''));
               jso.AddPair(TJsonPair.Create('fantasia',''));
               jso.AddPair(TJsonPair.Create('item','0'));
               jso.AddPair(TJsonPair.Create('descricao',''));
               jso.AddPair(TJsonPair.Create('id_und_venda',''));
               jso.AddPair(TJsonPair.Create('saldo_fisico','0'));
               Lista.AddElement(jso);}
            end;
         qryCons1.Close;
         FreeAndNil(qryCons1);
       end
    else
       begin
          {jso := TJsonObject.Create();
          jso.AddPair(TJsonPair.Create('id_empresa','0'));
          jso.AddPair(TJsonPair.Create('razao_social',''));
          jso.AddPair(TJsonPair.Create('fantasia',''));
          jso.AddPair(TJsonPair.Create('item','0'));
          jso.AddPair(TJsonPair.Create('descricao',''));
          jso.AddPair(TJsonPair.Create('id_und_venda',''));
          jso.AddPair(TJsonPair.Create('saldo_fisico','0'));
          Lista.AddElement(jso);  }
       end;

    GetInvocationMetadata().ResponseCode := 200;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get do saldo do estoque sincronizado!');

  finally
     FreeAndNil(Lista);
     FreeAndNil(CAD_CD_C_FUN);
     FreeAndNil(CAD_CD_C_PAR_CTR);
     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);
  end;

end;

function TSM.tbTitulosRec: TJsonArray;
begin

end;

function TSM.tbUltimasVisitas: TJsonArray;
begin

end;

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
    Criado por: Maxsuel Victor
    Data: 13/01/2017
  }
  try
    CAD_CD_C_VEI := TClientDataSet.Create(nil);
    CAD_CD_C_VEI.SetProvider(CAD_DP_C_VEI);

    CAD_SQ_C_VEI.close;
    CAD_SQ_C_VEI.CommandText := '';
    CAD_SQ_C_VEI.CommandText := ' SELECT * FROM CAD_TB_C_VEI ';
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
    CAD_CD_C_VEI.close;
    FreeAndNil(CAD_CD_C_VEI);
  end;
end;

function TSM.tbVersaoSis: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto: String;

  CAD_CD_C_PEC: TClientDataSet;
  Lista: TJsonArray;
begin

  { TODO -oMaxsuel -cGet : Criado em 13/07/17 }

  try
    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    jso := TJsonObject.Create();
    jso.AddPair(TJsonPair.Create('versao', uPrincipal.Form1.versao));
    Lista.AddElement(jso);

    GetInvocationMetadata().ResponseCode := 200;
    //GetInvocationMetadata().ResponseContent := result.ToString;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da versão do servidor mobile sincronizado!');

  finally
    FreeAndNil(Lista);
  end;
end;


function TSM.tbVerificacoes: TStream;
var
  jsobj, jso : TJsonObject;
  jsa : TJsonArray;
  jsp : TJsonPair;
  texto,semana: String;

  CAD_CD_C_PEC: TClientDataSet;
  Lista: TJsonArray;

begin

  { TODO -oMaxsuel -cGet : Criado em 13/07/17 }

  try
    semana := IntToStr(WeekOfTheYear(date));
    jsObj := TJsonObject.Create();
    Lista := TJsonArray.Create();

    jso := TJsonObject.Create();
    jso.AddPair(TJsonPair.Create('versao', uPrincipal.Form1.versao));
    jso.AddPair(TJsonPair.Create('semana_atual',semana));
    Lista.AddElement(jso);

    GetInvocationMetadata().ResponseCode := 200;
    //GetInvocationMetadata().ResponseContent := result.ToString;
    GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
    result :=  TStringStream.Create( utf8encode(Lista.ToString));

    uPrincipal.Form1.mmTexto.Lines.Add('Get da versão do servidor mobile sincronizado!');

  finally
    FreeAndNil(Lista);
  end;
end;

function TSM.updatetbAcompVisitas(dados: TJSONArray): TJsonArray;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  PRO_SQ_M_VIS,PRO_SQ_M_VIS_CLI: TSQLDataSet;
  PRO_DP_M_VIS,PRO_DP_M_VIS_CLI: TDataSetProvider;

  CAD_CD_C_SEQ, CAD_CD_C_VIT, CAD_CD_C_VIT_FOT,
  CAD_CD_C_VIT_KMT, PRO_CD_M_VIS,PRO_CD_M_VIS_CLI: TClientDataSet;

  jsobj, jso: TJsonObject;

  tabela: string;


  //cad_tb_c_vit
  id_visita, id_vendedor,
  doc_cnpj_cpf,id_veiculo,
  dta_visita,obs,recomendacoes,
  placa, pedido, hor_ini,hor_fim, tipo,
  gpslatitude, gpslongitude, semana,
  semana_prox_vis, dta_prox_vis, remarcar_vis : String;

  //cad_tb_c_vit_fot
  id_visita_fot,id_vit_fot,caminho_foto_fot: String;

  //cad_tb_c_vit_kmt
  id_visita_kmt,id_km,id_veiculo_kmt,km_inicial,
  km_final: String;


  base64Stream : TIdReadFileExclusiveStream;
  pngStream : TIdFileCreateStream;
  MIMEDecoder : TidDecoderMIME;
  sData,FotoStr, ano: string;

  Arquivo: TextFile;
  c1,c2,c3,c4:String;

  NomeFoto,pathFoto: String;

  ch_id_visitao_ant,ch_id_visita_nov       : integer;
  ch_id_visita_fot_ant,ch_id_visita_fot_nov: integer;
  ch_id_visita_km_ant,ch_id_visita_km_nov  : integer;

  retorno,prox_visita: integer;

  Vtran: TDBXTransaction;
  InseriVis, InseriVisKmt, InseriVisFot: Boolean;
begin

  { Post da Tabela: CAD_TB_C_VIT - Acompanhamento da visita
    Criado por: Maxsuel Victor
    Data: 15/01/2017
  }

  // Operacao = 0 -> será o Get Clientes
  // Operacao = 1 -> será o post Clientes
  try
     GerarSqlTxt('tbAcompVisitas Parte 1 -' + 'Início do processo da visita');

     txt := dados.ToString;

     VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;



     PRO_SQ_M_VIS := TSQLDataSet.Create(nil);
     PRO_SQ_M_VIS.SQLConnection := ConexaoNW;

     PRO_DP_M_VIS := TDataSetProvider.Create(nil);
     PRO_DP_M_VIS.DataSet := PRO_SQ_M_VIS;

     PRO_CD_M_VIS := TClientDataSet.Create(nil);
     PRO_CD_M_VIS.SetProvider(PRO_DP_M_VIS);

     PRO_SQ_M_VIS_CLI := TSQLDataSet.Create(nil);
     PRO_SQ_M_VIS_CLI.SQLConnection := ConexaoNW;

     PRO_DP_M_VIS_CLI := TDataSetProvider.Create(nil);
     PRO_DP_M_VIS_CLI.DataSet := PRO_SQ_M_VIS_CLI;

     PRO_CD_M_VIS_CLI := TClientDataSet.Create(nil);
     PRO_CD_M_VIS_CLI.SetProvider(PRO_DP_M_VIS_CLI);


     CAD_CD_C_SEQ := TClientDataSet.Create(nil);
     CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);

     CAD_CD_C_VIT := TClientDataSet.Create(nil);
     CAD_CD_C_VIT.SetProvider(CAD_DP_C_VIT);

     CAD_CD_C_VIT_FOT := TClientDataSet.Create(nil);
   //  CAD_CD_C_VIT_FOT.SetProvider(CAD_DP_C_VIT_FOT);

     CAD_CD_C_VIT_KMT := TClientDataSet.Create(nil);
   ///  CAD_CD_C_VIT_KMT.SetProvider(CAD_DP_C_VIT_KMT);


     CAD_SQ_C_SEQ.close;
     CAD_SQ_C_SEQ.CommandText := '';
     CAD_SQ_C_SEQ.CommandText := ' SELECT * FROM CAD_TB_C_SEQ ' +
                                 ' WHERE ID_TABELA in (''CAD_TB_C_VIS'',''CAD_TB_C_VIT'',''CAD_TB_C_VIT_FOT'',''CAD_TB_C_VIT_KMT'')';
     CAD_CD_C_SEQ.Open;

     if not (cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT',[])) then
        begin
           CAD_CD_C_SEQ.Insert;
           CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_VIT';
           CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
           CAD_CD_C_SEQ.Post;
        end;
     if not (cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT_FOT',[])) then
        begin
           CAD_CD_C_SEQ.Insert;
           CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_VIT_FOT';
           CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
           CAD_CD_C_SEQ.Post;
        end;
     if not (cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT_KMT',[])) then
        begin
           CAD_CD_C_SEQ.Insert;
           CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_VIT_KMT';
           CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
           CAD_CD_C_SEQ.Post;
        end;

     GerarSqlTxt('tbAcompVisitas Parte 2 -' + 'Abriu as sequências');

     CAD_SQ_C_VIT.close;
     CAD_SQ_C_VIT.CommandText := '';
     CAD_SQ_C_VIT.CommandText := ' SELECT 0 as int_id_visita_mob, * FROM CAD_TB_C_VIT ' +
                                 ' WHERE 1 = 2 ';
     CAD_CD_C_VIT.Open;

     CAD_SQ_C_VIT_FOT.close;
     CAD_SQ_C_VIT_FOT.CommandText := '';
     CAD_SQ_C_VIT_FOT.CommandText := ' SELECT * FROM CAD_TB_C_VIT_FOT ' +
                                     ' WHERE 1 = 2 ';
     CAD_CD_C_VIT_FOT.Open;

     CAD_SQ_C_VIT_KMT.close;
     CAD_SQ_C_VIT_KMT.CommandText := '';
     CAD_SQ_C_VIT_KMT.CommandText := ' SELECT * FROM CAD_TB_C_VIT_KMT ' +
                                     ' WHERE 1 = 2 ';
     CAD_CD_C_VIT_KMT.Open;

     ch_id_visitao_ant    := 0;
     ch_id_visita_nov     := 0;
     ch_id_visita_fot_ant := 0;
     ch_id_visita_fot_nov := 0;
     ch_id_visita_km_ant  := 0;
     ch_id_visita_km_nov  := 0;

     GerarSqlTxt('tbAcompVisitas Parte 3 -' + 'Abriu as tabelas de visitas');

     for LJsonValue in VJsonArray do
         begin
           InseriVis    := true;
           InseriVisKmt := true;
           InseriVisFot := true;
           for LItem in TJSONArray(LJsonValue) do
              begin

                //if TJSONPair(LItem).JsonString.Value = 'tabela' then
                //   tabela := TJSONPair(LItem).JsonValue.Value;

                //if tabela = 'CAD_TB_C_VIT' then
                if copy(TJSONPair(LItem).JsonString.Value,1,3) = 'VIT' then
                   begin
                     if InseriVis then
                        begin
                          CAD_CD_C_VIT.Insert;
                          InseriVis := false;
                        end
                     else
                        CAD_CD_C_VIT.edit;

                     if TJSONPair(LItem).JsonString.Value = 'VITid' then
                        begin
                          //CAD_CD_C_VIT.Insert;
                          CAD_CD_C_VIT.FieldByName('int_id_visita_mob').AsString :=
                               TJSONPair(LItem).JsonValue.Value;
                          ch_id_visita_nov := CAD_CD_C_VIT.FieldByName('int_id_visita_mob').AsInteger;
                        end;

                     if CAD_CD_C_VIT.FieldByName('int_id_visita_mob').AsInteger > 0 then
                        begin
                           cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT',[]);

                            if ch_id_visitao_ant <> ch_id_visita_nov  then
                               begin
                                 ch_id_visitao_ant :=  ch_id_visita_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                 CAD_CD_C_SEQ.Post;

                                 CAD_CD_C_VIT.FieldByName('id_visita').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                               end
                            //else
                             //  CAD_CD_C_VIT.edit;
                        end;
                           if TJSONPair(LItem).JsonString.Value = 'VITempresa' then
                               CAD_CD_C_VIT.FieldByName('id_empresa').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITvendedor' then
                              begin
                               CAD_CD_C_VIT.FieldByName('id_vendedor').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;
                               id_vendedor := CAD_CD_C_VIT.FieldByName('id_vendedor').AsString;
                              end;

                           if TJSONPair(LItem).JsonString.Value = 'VITcnpjcpf' then
                               CAD_CD_C_VIT.FieldByName('doc_cnpj_cpf').AsString :=
                                  TJSONPair(LItem).JsonValue.Value;


                           if TJSONPair(LItem).JsonString.Value = 'VITidcliente' then
                               CAD_CD_C_VIT.FieldByName('id_cliente').AsString :=
                                  TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITveiculo' then
                               CAD_CD_C_VIT.FieldByName('id_veiculo').AsString :=
                                  TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITdatavisita' then
                               CAD_CD_C_VIT.FieldByName('dta_visita').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITobs' then
                              CAD_CD_C_VIT.FieldByName('obs').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITrecomendacoes' then
                               CAD_CD_C_VIT.FieldByName('recomendacoes').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITplaca' then
                               CAD_CD_C_VIT.FieldByName('placa').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITpedido' then
                               CAD_CD_C_VIT.FieldByName('id_pedido_mobile').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITtipo' then
                               CAD_CD_C_VIT.FieldByName('tipo_mobile').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VIThor_ini' then
                              CAD_CD_C_VIT.FieldByName('hor_ini').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VIThor_fin' then
                               CAD_CD_C_VIT.FieldByName('hor_fim').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITgpslatitude' then
                               CAD_CD_C_VIT.FieldByName('gps_latitude').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITgpslongitude' then
                               CAD_CD_C_VIT.FieldByName('gps_longitude').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITsemana' then
                               CAD_CD_C_VIT.FieldByName('semana').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITsemana_prox_vis' then
                               CAD_CD_C_VIT.FieldByName('semana_prox_vis').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITdta_prox_vis' then
                               CAD_CD_C_VIT.FieldByName('dta_prox_vis').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'VITremarcar_vis' then
                               CAD_CD_C_VIT.FieldByName('remarcar_vis').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;

                           CAD_CD_C_VIT.Post;

                   end;

                //if tabela = 'CAD_TB_C_VIT_FOT' then
                if copy(TJSONPair(LItem).JsonString.Value,1,3) = 'FOT' then
                   begin
                     cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT_FOT',[]);

                     if InseriVisFot then
                        begin
                          CAD_CD_C_VIT_FOT.Insert;
                          InseriVisFot := false;
                        end
                     else
                        CAD_CD_C_VIT_FOT.edit;


                     if TJSONPair(LItem).JsonString.Value = 'FOTid' then
                        begin
                          ch_id_visita_fot_ant := 0;
                          ch_id_visita_fot_nov := strtoint(TJSONPair(LItem).JsonValue.Value);
                          //CAD_CD_C_VIT_FOT.Insert;
                        end;

                     if ch_id_visita_fot_nov > 0 then
                        begin

                           if (ch_id_visita_fot_ant <> ch_id_visita_fot_nov) then
                               begin
                                 ch_id_visita_fot_ant := ch_id_visita_fot_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                 CAD_CD_C_SEQ.Post;

                                 CAD_CD_C_VIT_FOT.FieldByName('id_vit_fot').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                               end
                           //else
                           //   CAD_CD_C_VIT_FOT.edit;
                        end;

                           if TJSONPair(LItem).JsonString.Value = 'FOTvisita' then
                              begin
                                if CAD_CD_C_VIT.Locate('int_id_visita_mob',TJSONPair(LItem).JsonValue.Value,[]) then
                                   CAD_CD_C_VIT_FOT.FieldByName('id_visita').AsString :=
                                      CAD_CD_C_VIT.FieldByName('id_visita').AsString;
                              end;

                           if TJSONPair(LItem).JsonString.Value = 'FOTobs' then
                              begin
                                CAD_CD_C_VIT_FOT.FieldByName('obs').AsString :=
                                    TJSONPair(LItem).JsonValue.Value;
                              end;

                           if TJSONPair(LItem).JsonString.Value = 'FOTfoto' then
                              begin
                                if TJSONPair(LItem).JsonValue.Value <> '' then
                                   begin
                                     FotoStr := TJSONPair(LItem).JsonValue.Value;

                                     if (CAD_CD_C_VIT_FOT.FieldByName('id_visita').AsInteger  > 0) and
                                        (CAD_CD_C_VIT_FOT.FieldByName('id_vit_fot').AsInteger > 0) then
                                         begin
                                           pathFoto := ExtractFilePath(Application.ExeName)+'emp'+CAD_CD_C_VIT.FieldByName('id_empresa').AsString+'\FotosTablets';
                                           //pathFoto := 'emp'+CAD_CD_C_VIT.FieldByName('id_empresa').AsString;
                                           if not (DirectoryExists(pathFoto)) then
                                              begin
                                                ForceDirectories(pathFoto);
                                              end;

                                            NomeFoto := 'FotoVis'+CAD_CD_C_VIT.FieldByName('id_empresa').AsString + '-'+
                                                         CAD_CD_C_VIT_FOT.FieldByName('id_visita').AsString+'-'+
                                                         CAD_CD_C_VIT_FOT.FieldByName('id_vit_fot').AsString;

                                            CAD_CD_C_VIT_fot.FieldByName('caminho_foto').AsString :=
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
                                                      while ReadLnFromStream(base64Stream, sData) do
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
                              end;
                            CAD_CD_C_VIT_FOT.Post;
                   end;

                //if tabela = 'CAD_TB_C_KMT' then
                if copy(TJSONPair(LItem).JsonString.Value,1,3) = 'KMT' then
                   begin
                     cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT_KMT',[]);

                     if InseriVisKmt then
                        begin
                          CAD_CD_C_VIT_KMT.Insert;
                          InseriVisKmt := false;
                        end
                     else
                        CAD_CD_C_VIT_KMT.edit;


                     if TJSONPair(LItem).JsonString.Value = 'KMTid' then
                        begin
                          ch_id_visita_km_ant := 0;
                          ch_id_visita_km_nov := strtoint(TJSONPair(LItem).JsonValue.Value);
                          //CAD_CD_C_VIT_KMT.Insert;
                        end;

                     if ch_id_visita_km_nov > 0 then
                        begin

                           if (ch_id_visita_km_ant <> ch_id_visita_km_nov) then
                               begin
                                 ch_id_visita_km_ant := ch_id_visita_km_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                 CAD_CD_C_SEQ.Post;

                                 CAD_CD_C_VIT_KMT.FieldByName('id_km').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                               end
                           //else
                           //    CAD_CD_C_VIT_KMT.edit;
                        end;

                           if TJSONPair(LItem).JsonString.Value = 'KMTvisita' then
                              begin
                                 if CAD_CD_C_VIT.Locate('int_id_visita_mob',TJSONPair(LItem).JsonValue.Value,[]) then
                                   CAD_CD_C_VIT_KMT.FieldByName('id_visita').AsString :=
                                      CAD_CD_C_VIT.FieldByName('id_visita').AsString;
                              end;

                           if TJSONPair(LItem).JsonString.Value = 'KMTveiculo' then
                               CAD_CD_C_VIT_KMT.FieldByName('id_veiculo').AsString :=
                                  TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'KMTkminicial' then
                               CAD_CD_C_VIT_KMT.FieldByName('km_inicial').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'KMTkmfinal' then
                               CAD_CD_C_VIT_KMT.FieldByName('km_final').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           CAD_CD_C_VIT_KMT.Post;
                   end;
              end;

         end;

     GerarSqlTxt('tbAcompVisitas Parte 4 -' + 'Encerrou a parte dos post das visitas');

     if CAD_CD_C_VIT <> nil then
        if (CAD_CD_C_VIT.ChangeCount > 0) then
            begin

              GerarSqlTxt('Parte 5 -' + 'Irá fazer o novo post das novas visitas vindas do tablet');

              ano := copy(FormatDateTime('dd/mm/yyyy',date),7,4);
              PRO_SQ_M_VIS.Close;
              PRO_SQ_M_VIS.CommandText := 'SELECT * FROM PRO_TB_M_VIS ' +
                                          ' WHERE ANO = ' + ano +
                                          '   and id_vendedor = ' + id_vendedor;
              PRO_CD_M_VIS.Open;

              PRO_SQ_M_VIS_CLI.Close;
              PRO_SQ_M_VIS_CLI.CommandText := ' SELECT * FROM PRO_TB_M_VIS_CLI VCL ' +
                                              '    LEFT OUTER JOIN PRO_TB_M_VIS VIS ON VIS.ID_VIS = VCL.ID_VIS ' +
                                              ' WHERE VIS.ANO = ' + ano +
                                              '   and VIS.id_vendedor = ' + id_vendedor;
              PRO_CD_M_VIS_CLI.Open;

              CAD_CD_C_VIT.First;
              while not CAD_CD_C_VIT.Eof do
                 begin
                    GerarSqlTxt('tbAcompVisitas Parte 5.1 ');
                    if CAD_CD_C_VIT.FieldByName('remarcar_vis').AsBoolean then
                       begin
                         if PRO_CD_M_VIS.Locate('ano;semana',VarArrayOf([ano,
                                                                         CAD_CD_C_VIT.FieldByName('semana_prox_vis').AsInteger]),[]) then
                            begin
                              GerarSqlTxt('Parte 5.2 ');
                              PRO_CD_M_VIS_CLI.IndexFieldNames := 'id_vis_cli';
                              PRO_CD_M_VIS_CLI.Last;
                              prox_visita := PRO_CD_M_VIS_CLI.FieldByName('id_vis_cli').AsInteger + 1;
                              PRO_CD_M_VIS_CLI.Insert;
                              PRO_CD_M_VIS_CLI.FieldByName('id_vis').AsInteger :=  PRO_CD_M_VIS.FieldByName('id_vis').AsInteger;
                              PRO_CD_M_VIS_CLI.FieldByName('id_vis_cli').AsInteger  :=  prox_visita;
                              PRO_CD_M_VIS_CLI.FieldByName('doc_cnpj_cpf').AsString :=  CAD_CD_C_VIT.FieldByName('doc_cnpj_cpf').AsString;
                              PRO_CD_M_VIS_CLI.FieldByName('id_cliente').AsString   :=  CAD_CD_C_VIT.FieldByName('id_cliente').AsString;
                              PRO_CD_M_VIS_CLI.FieldByName('dta_visita').AsString   :=  CAD_CD_C_VIT.FieldByName('dta_prox_vis').AsString;
                              PRO_CD_M_VIS_CLI.Post;
                              GerarSqlTxt('tbAcompVisitas Parte 5.3 ');
                            end
                         else
                            begin
                               GerarSqlTxt('tbAcompVisitas Parte 5.3 ');
                               cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIS',[]);
                               CAD_CD_C_SEQ.edit;
                               CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                               CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                               CAD_CD_C_SEQ.Post;

                               PRO_CD_M_VIS.Insert;
                               PRO_CD_M_VIS.FieldByName('id_vis').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                               PRO_CD_M_VIS.FieldByName('id_empresa').AsInteger := CAD_CD_C_VIT.FieldByName('id_empresa').AsInteger;
                               PRO_CD_M_VIS.FieldByName('ano').AsString    :=  ano;
                               PRO_CD_M_VIS.FieldByName('dta_criacao').AsDateTime := date;
                               PRO_CD_M_VIS.FieldByName('semana').AsInteger :=  CAD_CD_C_VIT.FieldByName('semana_prox_vis').AsInteger;
                               PRO_CD_M_VIS.FieldByName('fechada').AsBoolean := false;
                               PRO_CD_M_VIS.FieldByName('id_vendedor').AsString := id_vendedor;
                               PRO_CD_M_VIS.Post;

                               PRO_CD_M_VIS_CLI.Insert;
                               PRO_CD_M_VIS_CLI.FieldByName('id_vis').AsInteger :=  PRO_CD_M_VIS.FieldByName('id_vis').AsInteger;
                               PRO_CD_M_VIS_CLI.FieldByName('id_vis_cli').AsInteger   :=  1;
                               PRO_CD_M_VIS_CLI.FieldByName('doc_cnpj_cpf').AsString :=  CAD_CD_C_VIT.FieldByName('doc_cnpj_cpf').AsString;
                               PRO_CD_M_VIS_CLI.FieldByName('id_cliente').AsString   :=  CAD_CD_C_VIT.FieldByName('id_cliente').AsString;
                               PRO_CD_M_VIS_CLI.FieldByName('dta_visita').AsString   :=  CAD_CD_C_VIT.FieldByName('dta_prox_vis').AsString;
                               PRO_CD_M_VIS_CLI.Post;
                               GerarSqlTxt('tbAcompVisitas  Parte 5.4');
                            end;
                       end;
                    CAD_CD_C_VIT.Next;
                 end;
              CAD_CD_C_VIT.First;
            end;

     try
       Vtran := ConexaoNW.BeginTransaction;

       try
           if CAD_CD_C_SEQ <> nil then
             if (CAD_CD_C_SEQ.ChangeCount > 0) then
                retorno := CAD_CD_C_SEQ.ApplyUpdates(0);

           if CAD_CD_C_VIT <> nil then
              if (CAD_CD_C_VIT.ChangeCount > 0) then
                 retorno := CAD_CD_C_VIT.ApplyUpdates(0);

           if CAD_CD_C_VIT_FOT <> nil then
              if (CAD_CD_C_VIT_FOT.ChangeCount > 0) then
                 retorno := CAD_CD_C_VIT_FOT.ApplyUpdates(0);

           if CAD_CD_C_VIT_KMT <> nil then
              if (CAD_CD_C_VIT_KMT.ChangeCount > 0) then
                 retorno := CAD_CD_C_VIT_KMT.ApplyUpdates(0);

           if PRO_CD_M_VIS <> nil then
              if (PRO_CD_M_VIS.ChangeCount > 0) then
                 retorno := PRO_CD_M_VIS.ApplyUpdates(0);

            if PRO_CD_M_VIS_CLI <> nil then
              if (PRO_CD_M_VIS_CLI.ChangeCount > 0) then
                 retorno := PRO_CD_M_VIS_CLI.ApplyUpdates(0);
       except
          on e: exception do
            GerarSqlTxt('erro:' + e.Message);
       end;

       ConexaoNW.CommitFreeAndNil(Vtran);


       if retorno = 0 then
          begin
            GetInvocationMetadata().ResponseCode := 201;
            uPrincipal.Form1.mmTexto.Lines.Add('Post do acompanhamento da visita foi sincronizado!');
          end
       else
           begin
             GetInvocationMetadata().ResponseCode := 404;
             GerarSqlTxt('Erro ao tentar atualizar a tabela de visitas!');
           end;

     finally
        ConexaoNW.RollbackIncompleteFreeAndNil(Vtran);
     end;


  finally
     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);

     if CAD_CD_C_VIT <> nil then
        FreeAndNil(CAD_CD_C_VIT);

     if CAD_CD_C_VIT_FOT <> nil then
        FreeAndNil(CAD_CD_C_VIT_FOT);

     if CAD_CD_C_VIT_KMT <> nil then
        FreeAndNil(CAD_CD_C_VIT_KMT);

     if CAD_CD_C_SEQ <> nil then
        FreeAndNil(CAD_CD_C_SEQ);

     if PRO_CD_M_VIS <> nil then
        FreeAndNil(PRO_CD_M_VIS);

     if PRO_CD_M_VIS_CLI <> nil then
        FreeAndNil(PRO_CD_M_VIS_CLI);

     if jso <> nil then
        FreeAndNil(jso);

     GerarSqlTxt('tbAcompVisitas Parte 5.5 Finalizou a parte da gravação das visitas!');
  end;

end;

function TSM.updatetbClientes(dados: TJSONArray): TStream;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  CAD_CD_C_SEQ: TClientDataSet;
  xClientes: String;

  jsobj, jso: TJsonObject;

  operacao: string;

  id_cli_matriz,id_cliente, id_rota,nome, id_perfil_cli,
  id_funcionario, id_cidade,
  cep, endereco, numero, bairro, tel_fixo,
  tel_movel, email, sexo, dta_nascimento,
  filiacao,doc_cnpj_cpf,doc_ie_identidade,
  doc_ip, status_vis_mobile, id_vendedor,ativo,mac: String;

  qryCons: TSQLQuery;

  Vtran: TDBXTransaction;
  retorno : integer;
  gravacao: string;

  Lista:  TJsonArray;
  semana: String;
begin

  { Get e Post da Tabela: CAD_TB_C_CLI - Clientes
    Criado por: Maxsuel Victor
    Data: 10/01/2017
  }

  // Operacao = 0 -> será o Get Clientes
  // Operacao = 1 -> será o post Clientes
  try


  txt := dados.ToString;

  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

  CAD_CD_C_SEQ := TClientDataSet.Create(nil);
  CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);


  //CAD_CD_C_CLI := TClientDataSet.Create(nil);
  //CAD_CD_C_CLI.SetProvider(CAD_DP_C_CLI);

  CAD_SQ_C_CLI.close;
  CAD_SQ_C_CLI.CommandText := '';
  CAD_SQ_C_CLI.CommandText := ' SELECT * FROM CAD_TB_C_CLI WHERE 1 = 2 ';
  CAD_CD_C_CLI.Open;




 for LJsonValue in VJsonArray do
    begin
       CAD_CD_C_CLI.insert;

       for LItem in TJSONArray(LJsonValue) do
          begin

            if TJSONPair(LItem).JsonString.Value = 'operacao' then
               operacao := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'vendedor' then
               id_funcionario := TJSONPair(LItem).JsonValue.Value;

            if (operacao = '0') and (id_funcionario <> '') then
               break;

            if TJSONPair(LItem).JsonString.Value = 'rota' then
               CAD_CD_C_CLI.FieldByName('id_rota').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id' then
               CAD_CD_C_CLI.FieldByName('id_cliente').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'nome' then
               CAD_CD_C_CLI.FieldByName('nome').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'ativo' then
               CAD_CD_C_CLI.FieldByName('ativo').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'perfil' then
               CAD_CD_C_CLI.FieldByName('id_perfil_cli').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'rota' then
               CAD_CD_C_CLI.FieldByName('id_rota').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id_vendedor' then
               CAD_CD_C_CLI.FieldByName('id_vendedor').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'codibgel' then
               CAD_CD_C_CLI.FieldByName('id_cidade').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'cep' then
               CAD_CD_C_CLI.FieldByName('cep').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'endereco' then
               CAD_CD_C_CLI.FieldByName('endereco').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'numero' then
               CAD_CD_C_CLI.FieldByName('numero').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'bairro' then
               CAD_CD_C_CLI.FieldByName('bairro').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'telefone' then
               CAD_CD_C_CLI.FieldByName('tel_fixo').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'celular' then
               CAD_CD_C_CLI.FieldByName('tel_movel').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'email' then
               CAD_CD_C_CLI.FieldByName('email').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'sexo' then
               CAD_CD_C_CLI.FieldByName('sexo').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'dtanasc' then
               CAD_CD_C_CLI.FieldByName('dta_nascimento').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'filiacao' then
               CAD_CD_C_CLI.FieldByName('filiacao').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               CAD_CD_C_CLI.FieldByName('id_cliente').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'cpfcnpj' then
               CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               begin
                  if xClientes <> '' then
                     begin
                       xClientes :=
                       xClientes + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                     end;
                  if xClientes = '' then
                     begin
                       xClientes :=
                       xClientes +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                     end;
               end;

            if TJSONPair(LItem).JsonString.Value = 'rg' then
               CAD_CD_C_CLI.FieldByName('doc_ie_identidade').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'ip' then
               CAD_CD_C_CLI.FieldByName('doc_ip').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'visitado' then
               CAD_CD_C_CLI.FieldByName('status_vis_mobile').AsString := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'mac' then
               CAD_CD_C_CLI.FieldByName('id_cli_temp_mobile').AsString := '';
          end;
       CAD_CD_C_CLI.cancel;
    end;

  semana := IntToStr(WeekOfTheYear(date));

  if operacao = '0' then // Get dos clientes
     begin
       try
         qryCons := TSQLQuery.Create(nil);
         qryCons.SQLConnection := ConexaoNW;


         qryCons.Close;
         qryCons.SQL.Clear;
         {qryCons.SQL.Add(
                          'with tb_temp_cli' + #13#10 +
                          'as (' + #13#10 +
                          '     SELECT cli.*, 0 as semana, false as pra_visitar  FROM cad_tb_c_cli cli  ' + #13#10 +
                          '     WHERE cli.ativo = true and cli.id_vendedor = ' + VarToStr(id_funcionario) + #13#10 +
                          '        and cli.id_cliente not in' + #13#10 +
                          '           (SELECT cli.id_cliente FROM PRO_TB_M_VIS_CLI vcl ' + #13#10 +
                          '               left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' + #13#10 +
                          '               left outer join cad_tb_c_cli cli on cli.id_cliente = vcl.id_cliente ' + #13#10 +
                          '            WHERE vis.semana =  ' + semana + '  ' + #13#10 +
                          '              and vis.id_vendedor = ' + VarToStr(id_funcionario)+ ')' + #13#10 +
                          '     ' + #13#10 +
                          '     union' + #13#10 +
                          '     SELECT cli.*, vis.semana, true as pra_visitar FROM PRO_TB_M_VIS_CLI vcl ' + #13#10 +
                          '       left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' + #13#10 +
                          '       left outer join cad_tb_c_cli cli on cli.id_cliente = vcl.id_cliente ' + #13#10 +
                          '     WHERE vis.fechada =  '+ semana +'  ' + #13#10 +
                          '       and vis.id_vendedor = ' + VarToStr(id_funcionario) + #13#10 +
                          ') ' + #13#10 +
                          'select * from tb_temp_cli ' ); }


         qryCons.SQL.Add(

                          'with tb_temp_cli' + #13#10 +
                          'as (' + #13#10 +
                          '     SELECT cli.*, 0 as semana, false as pra_visitar  FROM cad_tb_c_cli cli  ' + #13#10 +
                          '     WHERE cli.ativo = true and cli.id_vendedor = ' + VarToStr(id_funcionario) + #13#10 +
                          '        and cli.id_cliente not in' + #13#10 +
                          '           (SELECT cli.id_cliente FROM PRO_TB_M_VIS_CLI vcl ' + #13#10 +
                          '               left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' + #13#10 +
                          '               left outer join cad_tb_c_cli cli on cli.id_cliente = vcl.id_cliente ' + #13#10 +
                          '            WHERE vis.semana =  ' + semana + '  ' + #13#10 +
                          '              and vis.id_vendedor = ' + VarToStr(id_funcionario)+ ')' + #13#10 +
                          '     ' + #13#10 +
                          '     union' + #13#10 +
                          '     SELECT cli.*, vis.semana, true as pra_visitar FROM PRO_TB_M_VIS_CLI vcl ' + #13#10 +
                          '       left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' + #13#10 +
                          '       left outer join cad_tb_c_cli cli on cli.id_cliente = vcl.id_cliente ' + #13#10 +
                          '     WHERE vis.semana =  ' + semana + '  ' + #13#10 +
                          '       and vis.id_vendedor = ' + VarToStr(id_funcionario) + #13#10 +
                          ') ' + #13#10 +
                          'select * from tb_temp_cli ');
         //uPrincipal.Form1.mmTexto.Lines.Add(qryCons.SQL.text);
         //abort;
         qryCons.Open;



         jsObj := TJsonObject.Create();
         lista := TJsonArray.Create();

         qryCons.First;
         while not qryCons.Eof  do
            begin
                jso := TJsonObject.Create();

                jso.AddPair(TJsonPair.Create('id',qryCons.FieldByName('id_cliente').AsString));
                jso.AddPair(TJsonPair.Create('nome',qryCons.FieldByName('nome').AsString));
                jso.AddPair(TJsonPair.Create('perfil',qryCons.FieldByName('id_perfil_cli').AsString));
                jso.AddPair(TJsonPair.Create('ativo',qryCons.FieldByName('ativo').AsString));
                jso.AddPair(TJsonPair.Create('rota',qryCons.FieldByName('id_rota').AsString));
                jso.AddPair(TJsonPair.Create('id_vendedor',qryCons.FieldByName('id_vendedor').AsString));
                jso.AddPair(TJsonPair.Create('codibge',qryCons.FieldByName('id_cidade').AsString));
                jso.AddPair(TJsonPair.Create('cep',qryCons.FieldByName('cep').AsString));
                jso.AddPair(TJsonPair.Create('endereco',qryCons.FieldByName('endereco').AsString));
                jso.AddPair(TJsonPair.Create('numero',qryCons.FieldByName('numero').AsString));
                jso.AddPair(TJsonPair.Create('bairro',qryCons.FieldByName('bairro').AsString));
                jso.AddPair(TJsonPair.Create('telefone',qryCons.FieldByName('tel_fixo').AsString));
                jso.AddPair(TJsonPair.Create('celular',qryCons.FieldByName('tel_movel').AsString));
                jso.AddPair(TJsonPair.Create('email',qryCons.FieldByName('email').AsString));
                jso.AddPair(TJsonPair.Create('sexo',qryCons.FieldByName('sexo').AsString));
                jso.AddPair(TJsonPair.Create('dtanasc',qryCons.FieldByName('dta_nascimento').AsString));
                jso.AddPair(TJsonPair.Create('filiacao',qryCons.FieldByName('filiacao').AsString));
                jso.AddPair(TJsonPair.Create('cpfcnpj',qryCons.FieldByName('doc_cnpj_cpf').AsString));
                jso.AddPair(TJsonPair.Create('ip',qryCons.FieldByName('doc_ip').AsString));
                jso.AddPair(TJsonPair.Create('rg',qryCons.FieldByName('doc_ie_identidade').AsString));
                jso.AddPair(TJsonPair.Create('visitado',qryCons.FieldByName('status_vis_mobile').AsString));
                jso.AddPair(TJsonPair.Create('pra_visitar',qryCons.FieldByName('pra_visitar').AsString));
                jso.AddPair(TJsonPair.Create('semana',qryCons.FieldByName('semana').AsString));
                jso.AddPair(TJsonPair.Create('desenvolvimento',qryCons.FieldByName('desenvolvimento').AsString));
                lista.AddElement(jso);
                qryCons.Next;
            end;

         GetInvocationMetadata().ResponseCode := 200;
         GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
         result :=  TStringStream.Create( utf8encode(Lista.ToString));

         uPrincipal.Form1.mmTexto.Lines.Add('Get do cliente sincronizado!');
       finally
          FreeAndNil(qryCons);
       end;
     end;

  if operacao = '1' then // Post dos clientes
     begin
       GerarSqlTxt('tbClientes Parte 1 -' + 'Início do processo do cliente');

       CAD_SQ_C_SEQ.close;
       CAD_SQ_C_SEQ.CommandText := '';
       CAD_SQ_C_SEQ.CommandText := ' SELECT * FROM CAD_TB_C_SEQ WHERE ID_TABELA = ''CAD_TB_C_CLI'' ';
       CAD_CD_C_SEQ.Open;
       if CAD_CD_C_SEQ.IsEmpty then
          begin
            CAD_CD_C_SEQ.Insert;
            CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_CLI';
            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
            CAD_CD_C_SEQ.Post;
          end;


      // if CAD_CD_C_CLI <> nil then
      //    FreeAndNil(CAD_CD_C_CLI);

       //CAD_CD_C_CLI := TClientDataSet.Create(nil);
       //CAD_CD_C_CLI.SetProvider(CAD_DP_C_CLI);

       CAD_CD_C_CLI.close;
       CAD_SQ_C_CLI.close;
       CAD_SQ_C_CLI.CommandText := '';
       CAD_SQ_C_CLI.CommandText := ' SELECT * FROM CAD_TB_C_CLI ' +
                                   ' WHERE  id_cliente in  (' + VarToStr(xClientes) + ')  ';
       CAD_CD_C_CLI.Open;

       for LJsonValue in VJsonArray do
           begin
             for LItem in TJSONArray(LJsonValue) do
                begin
                  if TJSONPair(LItem).JsonString.Value = 'operacao' then
                     operacao := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'rota' then
                     id_rota := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'nome' then
                     nome := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'perfil' then
                     id_perfil_cli := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'rota' then
                     id_rota := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'id_logado' then
                     id_funcionario := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'id_vendedor' then
                     id_vendedor := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'codibge' then
                     id_cidade := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'cep' then
                     cep := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'endereco' then
                     endereco := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'numero' then
                     numero := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'bairro' then
                     bairro := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'telefone' then
                     tel_fixo := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'celular' then
                     tel_movel := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'email' then
                     email := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'sexo' then
                     sexo  := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'dtanasc' then
                     dta_nascimento  := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'filiacao' then
                     filiacao := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
                     id_cliente := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'cpfcnpj' then
                     doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'rg' then
                     doc_ie_identidade := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'ip' then
                     doc_ip  := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'visitado' then
                     status_vis_mobile := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'ativo' then
                     ativo := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'mac' then
                     mac := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'id_cli_matriz' then
                     id_cli_matriz := TJSONPair(LItem).JsonValue.Value;
                end;

             if (id_cli_matriz <> '0') then
                begin
                  if (CAD_CD_C_CLI.Locate('id_cliente',id_cliente,[])) then
                      CAD_CD_C_CLI.edit;
                end
             else
                begin
                  CAD_CD_C_CLI.Insert;

                  CAD_CD_C_SEQ.edit;
                  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                  CAD_CD_C_SEQ.Post;

                  CAD_CD_C_CLI.FieldByName('id_cliente').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                  id_cliente := CAD_CD_C_CLI.FieldByName('id_cliente').AsString;
                  //                end;

                  //CAD_CD_C_CLI.FieldByName('id_rota').AsString := id_rota;

                  if Length(doc_cnpj_cpf) > 11 then
                     CAD_CD_C_CLI.FieldByName('pessoa').AsString := '1'
                  else
                     CAD_CD_C_CLI.FieldByName('pessoa').AsString := '0';

                  CAD_CD_C_CLI.FieldByName('nome').AsString := nome;
                  CAD_CD_C_CLI.FieldByName('ativo').AsString := ativo;
                  CAD_CD_C_CLI.FieldByName('id_perfil_cli').AsString := id_perfil_cli;
                  CAD_CD_C_CLI.FieldByName('id_rota').AsString := id_rota;
                  CAD_CD_C_CLI.FieldByName('id_responsavel').AsString := id_funcionario;
                  CAD_CD_C_CLI.FieldByName('id_vendedor').AsString := id_vendedor;
                  CAD_CD_C_CLI.FieldByName('id_cidade').AsString := id_cidade;
                  CAD_CD_C_CLI.FieldByName('cep').AsString := cep;
                  CAD_CD_C_CLI.FieldByName('endereco').AsString := endereco;
                  CAD_CD_C_CLI.FieldByName('numero').AsString := numero;
                  CAD_CD_C_CLI.FieldByName('bairro').AsString := bairro;
                  CAD_CD_C_CLI.FieldByName('tel_fixo').AsString := tel_fixo;
                  CAD_CD_C_CLI.FieldByName('tel_movel').AsString := tel_movel;
                  CAD_CD_C_CLI.FieldByName('email').AsString := email;
                  CAD_CD_C_CLI.FieldByName('sexo').AsString := sexo;
                  CAD_CD_C_CLI.FieldByName('dta_nascimento').AsString := dta_nascimento;
                  CAD_CD_C_CLI.FieldByName('filiacao').AsString := filiacao;
                  CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString := doc_cnpj_cpf;
                  CAD_CD_C_CLI.FieldByName('doc_ie_identidade').AsString := doc_ie_identidade;
                  CAD_CD_C_CLI.FieldByName('doc_ip').AsString := doc_ip;
                  CAD_CD_C_CLI.FieldByName('situacao').AsString       := '0';
                  CAD_CD_C_CLI.FieldByName('dta_cadastro').AsDateTime := time;
                  CAD_CD_C_CLI.FieldByName('tipo_cliente').AsInteger  := 0; // Consumidor
                  CAD_CD_C_CLI.FieldByName('contribuinte').AsInteger  := 1; // Não contribuinte
                  //CAD_CD_C_CLI.FieldByName('id_cliente_matriz').AsString  := id_cli_matriz;
                end;

             CAD_CD_C_CLI.FieldByName('status_vis_mobile').AsString := status_vis_mobile;

             //if CAD_CD_C_CLI.FieldByName('ativo').AsBoolean = false then
             if id_cli_matriz = '0' then
                begin
                  CAD_CD_C_CLI.FieldByName('id_cli_temp_mobile').AsString :=
                      id_cliente+'-'+doc_cnpj_cpf+id_vendedor;
                end;

             CAD_CD_C_CLI.Post;
           end;
       try

         Vtran := ConexaoNW.BeginTransaction;



         if CAD_CD_C_SEQ <> nil then
           if (CAD_CD_C_SEQ.ChangeCount > 0) then
               retorno := CAD_CD_C_SEQ.ApplyUpdates(0);

         if CAD_CD_C_CLI <> nil then
            if (CAD_CD_C_CLI.ChangeCount > 0) then
                retorno := CAD_CD_C_CLI.ApplyUpdates(0);

          ConexaoNW.CommitFreeAndNil(Vtran);
          if retorno = 0 then
             begin
               GetInvocationMetadata().ResponseCode := 201;
               //uPrincipal.Form1.mmTexto.Lines.Add('Post do cliente sincronizado!');
             end
          else
             begin
                  // comentado por max para testes, logo com GetInvocationMetadata depois
                   // pois adicionei o clientdataset CAD_CD_C_CLI nesse DM.
//                GetInvocationMetadata().ResponseCode := 404;
//                GetInvocationMetadata().ResponseContent := xMsg;


                GetInvocationMetadata().ResponseCode := 404;
                GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
                result :=  TStringStream.Create( utf8encode(xMsg));
             end;

       finally
          ConexaoNW.RollbackIncompleteFreeAndNil(Vtran);
       end;

     end;

  finally

     if Lista <> nil then
        FreeAndNil(Lista);

     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);

     if qryCons <> nil then
        FreeAndNil(qryCons);

    // if CAD_CD_C_CLI <> nil then
    //    FreeAndNil(CAD_CD_C_CLI);

     if CAD_CD_C_SEQ <> nil then
        FreeAndNil(CAD_CD_C_SEQ);


    // if jso <> nil then
    //    FreeAndNil(jso);
  end;

end;

function TSM.updatetbClientesPro(dados: TJSONArray): TJsonArray;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  CAD_CD_C_CLI_PRO, CAD_CD_C_SEQ: TClientDataSet;
  nClientes, nProMatriz: String;

  jsobj, jso: TJsonObject;

  operacao,id_vendedor: string;

  id_cliente,doc_cnpj_cpf, propriedade, nome,tipo,administrador,endereco,
  id_cli_matriz, cep,propriedade_matriz: String;

  qryCons1: TSQLQuery;

  Vtran: TDBXTransaction;
  retorno: integer;
  semana: String;
begin

  { Get e Post da Tabela: CAD_TB_C_CLI_PRO - Propriedades do Cliente
    Criado por: Maxsuel Victor
    Data: 12/01/2017
  }

  // Operacao = 0 -> será o Get
  // Operacao = 1 -> será o post

  try

  txt := dados.ToString;

  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

  CAD_CD_C_SEQ := TClientDataSet.Create(nil);
  CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);

  for LJsonValue in VJsonArray do
    begin
       for LItem in TJSONArray(LJsonValue) do
          begin

            if TJSONPair(LItem).JsonString.Value = 'operacao' then
               operacao := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'vendedor' then
               id_vendedor  := TJSONPair(LItem).JsonValue.Value;

            if (operacao = '0') and (id_vendedor <> '') then
               break;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               begin
                  if nClientes <> '' then
                     begin
                       nClientes :=
                       nClientes + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                     end;
                  if nClientes = '' then
                     begin
                       nClientes :=
                       nClientes +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                     end;
               end;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               id_cliente  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'cpfcnpj' then
               doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'propriedade' then
               propriedade  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'tipo' then
               tipo  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'descricao' then
               nome  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'administrador' then
               administrador  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'endereco' then
               endereco  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'cep' then
               cep  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'propriedade_matriz' then
               begin
                 if TJSONPair(LItem).JsonValue.Value <> '0' then
                    begin
                       if nProMatriz <> '' then
                          begin
                            nProMatriz :=
                            nProMatriz + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                       if nProMatriz = '' then
                          begin
                            nProMatriz :=
                            nProMatriz +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                    end;
               end;
          end;
    end;
  semana := IntToStr(WeekOfTheYear(date));
  if operacao = '0' then // Get dos clientes
     begin
       qryCons1 := TSQLQuery.Create(nil);
       qryCons1.SQLConnection := ConexaoNW;

       // Irá localizar os clientes da semana do vendedor
       qryCons1.Close;
       qryCons1.SQL.Clear;
       qryCons1.SQL.Add(' SELECT cli.* FROM PRO_TB_M_VIS_CLI vcl ' +
                       '   left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' +
                       '   left outer join cad_tb_c_cli cli on cli.doc_cnpj_cpf = vcl.doc_cnpj_cpf ' +
                       ' WHERE vis.semana =  ' + semana + '  ' + #13#10 +
                       '   and vis.id_vendedor in (' + VarToStr(id_vendedor) +') ');
       qryCons1.Open;
       while not qryCons1.eof do
          begin
            if nClientes <> '' then
               begin
                 nClientes :=
                 nClientes + ',' +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
               end;
            if nClientes = '' then
               begin
                 nClientes :=
                 nClientes +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
               end;
            qryCons1.Next;
          end;

       // Depois irá localizar as propriedades dos clientes
       qryCons1.Close;
       FreeAndNil(qryCons1);

       if trim(nClientes) <> '' then
          begin
             qryCons1 := TSQLQuery.Create(nil);
             qryCons1.SQLConnection := ConexaoNW;

             qryCons1.Close;
             qryCons1.SQL.Clear;
             qryCons1.SQL.Add(' SELECT cli.id_cliente , cli.doc_cnpj_cpf, * FROM cad_tb_c_cli_pro cpr ' +
                             '   left outer join cad_tb_c_cli cli on cli.id_cliente = cpr.id_cliente ' +
                             ' WHERE cli.id_cliente in (' + VarToStr(nClientes) +') ');
             qryCons1.Open;

             jsObj := TJsonObject.Create();
             result := TJsonArray.Create();

             qryCons1.First;
             while not qryCons1.Eof  do
                begin
                    jso := TJsonObject.Create();
                    jso.AddPair(TJsonPair.Create('id_cliente',qryCons1.FieldByName('id_cliente').AsString));
                    jso.AddPair(TJsonPair.Create('cpfcnpj',qryCons1.FieldByName('doc_cnpj_cpf').AsString));
                    jso.AddPair(TJsonPair.Create('nome',qryCons1.FieldByName('nome').AsString));
                    jso.AddPair(TJsonPair.Create('tipo',qryCons1.FieldByName('tipo').AsString));
                    jso.AddPair(TJsonPair.Create('administrador',qryCons1.FieldByName('administrador').AsString));
                    jso.AddPair(TJsonPair.Create('endereco',qryCons1.FieldByName('endereco').AsString));
                    jso.AddPair(TJsonPair.Create('cep',qryCons1.FieldByName('cep').AsString));
                    jso.AddPair(TJsonPair.Create('propriedade_matriz',qryCons1.FieldByName('id_propriedade').AsString));
                    result.AddElement(jso);
                    qryCons1.Next;
                end;
             qryCons1.close;
             GetInvocationMetadata().ResponseCode := 200;
             GetInvocationMetadata().ResponseContent := result.ToString;
             uPrincipal.Form1.mmTexto.Lines.Add('Get da propriedade cliente sincronizado!');
          end
       else
          begin
             GetInvocationMetadata().ResponseCode := 200;
             GetInvocationMetadata().ResponseContent := '';
             uPrincipal.Form1.mmTexto.Lines.Add('Get da propriedade cliente sincronizado, mas sem nenhum dado!');
          end;
     end;

  {if operacao = '1' then // Post das propriedades dos clientes
     begin

       qryCons1 := TSQLQuery.Create(nil);
       qryCons1.SQLConnection := ConexaoNW;

       result := TJsonArray.Create();

       CAD_SQ_C_SEQ.close;
       CAD_SQ_C_SEQ.CommandText := '';
       CAD_SQ_C_SEQ.CommandText := ' SELECT * FROM CAD_TB_C_SEQ WHERE ID_TABELA = ''CAD_TB_C_CLI_PRO'' ';
       CAD_CD_C_SEQ.Open;
       if CAD_CD_C_SEQ.IsEmpty then
          begin
            CAD_CD_C_SEQ.Insert;
            CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_CLI_PRO';
            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
            CAD_CD_C_SEQ.Post;
          end;

       CAD_CD_C_CLI_PRO := TClientDataSet.Create(nil);
       CAD_CD_C_CLI_PRO.SetProvider(CAD_DP_C_CLI_PRO);


       if trim(nProMatriz) = '' then
          nProMatriz := '0';

       CAD_SQ_C_CLI_PRO.close;
       CAD_SQ_C_CLI_PRO.CommandText := '';
       CAD_SQ_C_CLI_PRO.CommandText := ' SELECT cli.doc_cnpj_cpf, cpr.* FROM CAD_TB_C_CLI_PRO cpr ' +
                                       '   left outer join cad_tb_c_cli cli on (cli.id_cliente = cpr.id_cliente) ' +
                                       '  where cpr.id_propriedade in (' + VarToStr(nProMatriz) +') ';
       CAD_CD_C_CLI_PRO.Open;

       for LJsonValue in VJsonArray do
           begin
             for LItem in TJSONArray(LJsonValue) do
                begin
                  if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
                     id_cliente  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'cpfcnpj' then
                     doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'propriedade' then
                     propriedade  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'vendedor' then
                     id_vendedor  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'tipo' then
                     tipo  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'descricao' then
                     nome  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'administrador' then
                     administrador  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'endereco' then
                     endereco  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'cep' then
                     cep  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'propriedade_matriz' then
                     propriedade_matriz  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'id_cli_matriz' then
                     id_cli_matriz  := TJSONPair(LItem).JsonValue.Value;

                end;

             if id_cli_matriz <> '0' then
                begin
                   if (CAD_CD_C_CLI_PRO.Locate('id_cliente;id_propriedade',varArrayOf([id_cli_matriz,propriedade_matriz]),[])) then
                      begin
                        CAD_CD_C_CLI_PRO.edit;
                      end
                   else
                      begin

                        CAD_CD_C_SEQ.edit;

                        CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                        CAD_CD_C_SEQ.Post;

                        CAD_CD_C_CLI_PRO.Insert;
                        CAD_CD_C_CLI_PRO.FieldByName('id_cliente').AsString      := id_cli_matriz;
                        CAD_CD_C_CLI_PRO.FieldByName('id_propriedade').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                      end;
                end
             else
                begin
                  // Irá buscar o cliente pelo cnpj_cpf

                  qryCons1.Close;
                  qryCons1.SQL.Clear;
                  qryCons1.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                    ' WHERE cli.id_cli_temp_mobile = ''' + VarToStr(id_cliente+'-'+doc_cnpj_cpf+id_vendedor) + ''' ');
                  qryCons1.Open;

                  {qryCons1.Close;
                   qryCons1.SQL.Clear;
                   qryCons1.SQL.Add(' SELECT cli.* FROM cad_tb_c_cli cli ' +
                                   ' WHERE cli.id_cliente = ''' + VarToStr(id_cliente)+ '''');
                   qryCons1.Open;}

   {               CAD_CD_C_SEQ.edit;

                  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                      CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                  CAD_CD_C_SEQ.Post;

                  CAD_CD_C_CLI_PRO.Insert;
                  CAD_CD_C_CLI_PRO.FieldByName('id_cliente').AsInteger  := qryCons1.FieldByName('id_cliente').AsInteger;
                  CAD_CD_C_CLI_PRO.FieldByName('id_propriedade').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                  qryCons1.close;
                end;

             CAD_CD_C_CLI_PRO.FieldByName('nome').AsString := nome;
             CAD_CD_C_CLI_PRO.FieldByName('tipo').AsString := tipo;
             CAD_CD_C_CLI_PRO.FieldByName('nome').AsString := nome;
             CAD_CD_C_CLI_PRO.FieldByName('administrador').AsString := administrador;
             CAD_CD_C_CLI_PRO.FieldByName('endereco').AsString := endereco;
             CAD_CD_C_CLI_PRO.FieldByName('cep').AsString := cep;
             CAD_CD_C_CLI_PRO.FieldByName('id_pro_mob_temp').AsString := propriedade;
             CAD_CD_C_CLI_PRO.Post;
           end;

           try

             Vtran := ConexaoNW.BeginTransaction;

             if CAD_CD_C_SEQ <> nil then
               if (CAD_CD_C_SEQ.ChangeCount > 0) then
                  retorno :=  CAD_CD_C_SEQ.ApplyUpdates(0);


             if CAD_CD_C_CLI_PRO <> nil then
                if (CAD_CD_C_CLI_PRO.ChangeCount > 0) then
                   retorno := CAD_CD_C_CLI_PRO.ApplyUpdates(0);

             ConexaoNW.CommitFreeAndNil(Vtran);

             if retorno = 0 then
                begin
                   GetInvocationMetadata().ResponseCode := 201;
                   uPrincipal.Form1.mmTexto.Lines.Add('Post da propriedade do cliente sincronizado!');
                end
             else
                GetInvocationMetadata().ResponseCode := 404;
           finally
              ConexaoNW.RollbackIncompleteFreeAndNil(Vtran);
           end;
     end;}
  finally
     if qryCons1 <> nil then
         FreeAndNil(qryCons1);

     if CAD_CD_C_CLI_PRO <> nil then
        FreeAndNil(CAD_CD_C_CLI_PRO);

     if CAD_CD_C_SEQ <> nil then
        FreeAndNil(CAD_CD_C_SEQ);

     if jso <> nil then
        FreeAndNil(jso);
  end;
end;

function TSM.updatetbClientesProCul(dados: TJSONArray): TJsonArray;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  CAD_CD_C_CLI_PRO_CUL: TClientDataSet;

  nClientes, nPropriedades,nLote,nCultura,nPropriedadesMatriz: String;

  jsobj, jso: TJsonObject;

  operacao,id_vendedor, IdCliente,id_cli_matriz: string;

  id_cliente, doc_cnpj_cpf, propriedade, cultura, lote,
  idade, area, produtividade, obs, variedade, propriedade_matriz: String;

  qryCons1,qryCons2: TSQLQuery;

  Vtran: TDBXTransaction;
  retorno: integer;
  semana:String;
begin

  { Get e Post da Tabela: CAD_TB_C_CLI_PRO - Propriedades do Cliente
    Criado por: Maxsuel Victor
    Data: 12/01/2017
  }

  // Operacao = 0 -> será o Get
  // Operacao = 1 -> será o post

     // propriedade_matriz -> refere-se ao campo id_propriedade da tabela CAD_TB_C_CLI_PRO;

  try

  txt := dados.ToString;

  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;


  for LJsonValue in VJsonArray do
    begin
       for LItem in TJSONArray(LJsonValue) do
          begin

            if TJSONPair(LItem).JsonString.Value = 'operacao' then
               operacao := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'vendedor' then
               id_vendedor  := TJSONPair(LItem).JsonValue.Value;

            if (operacao = '0') and (id_vendedor <> '') then
               break;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               begin
                  if nClientes <> '' then
                     begin
                       nClientes :=
                       nClientes + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                     end;
                  if nClientes = '' then
                     begin
                       nClientes :=
                       nClientes +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                     end;
               end;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               id_cliente  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'cpfcnpj' then
               doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'propriedade' then
               propriedade  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'cultura' then
               cultura  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'lote' then
               lote  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'idade' then
               idade  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'area' then
               area  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'produtividade' then
               produtividade  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'obs' then
               obs  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'variedade' then
               variedade  := TJSONPair(LItem).JsonValue.Value;
            if TJSONPair(LItem).JsonString.Value = 'propriedade_matriz' then
               propriedade_matriz  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'propriedade' then
               begin
                 if TJSONPair(LItem).JsonValue.Value <> '0' then
                    begin
                       if nPropriedades <> '' then
                          begin
                            nPropriedades :=
                            nPropriedades + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                       if nPropriedades = '' then
                          begin
                            nPropriedades :=
                            nPropriedades +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                    end;
               end;

            if TJSONPair(LItem).JsonString.Value = 'propriedade_matriz' then
               begin
                 if TJSONPair(LItem).JsonValue.Value <> '0' then
                    begin
                       if nPropriedadesMatriz <> '' then
                          begin
                            nPropriedadesMatriz :=
                            nPropriedadesMatriz + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                       if nPropriedadesMatriz = '' then
                          begin
                            nPropriedadesMatriz :=
                            nPropriedadesMatriz +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                    end;
               end;
            if TJSONPair(LItem).JsonString.Value = 'lote' then
               begin
                 if TJSONPair(LItem).JsonValue.Value <> '0' then
                    begin
                       if nLote <> '' then
                          begin
                            nLote :=
                            nLote + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                       if nLote = '' then
                          begin
                            nLote :=
                            nLote +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                    end;
               end;

            if TJSONPair(LItem).JsonString.Value = 'cultura' then
               begin
                 if TJSONPair(LItem).JsonValue.Value <> '0' then
                    begin
                       if nCultura <> '' then
                          begin
                            nCultura :=
                            nCultura + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                       if nCultura = '' then
                          begin
                            nCultura :=
                            nCultura +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                          end;
                    end;
               end;

          end;
    end;
  semana := IntToStr(WeekOfTheYear(date));
  if operacao = '0' then // Get das culturas das propriedades dos clientes
     begin
       qryCons1 := TSQLQuery.Create(nil);
       qryCons1.SQLConnection := ConexaoNW;

       // Irá localizar os clientes da semana do vendedor
       qryCons1.Close;
       qryCons1.SQL.Clear;
       qryCons1.SQL.Add(' SELECT cli.* FROM PRO_TB_M_VIS_CLI vcl ' +
                       '   left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' +
                       '   left outer join cad_tb_c_cli cli on cli.doc_cnpj_cpf = vcl.doc_cnpj_cpf ' +
                       ' WHERE vis.semana =  ' + semana + '  ' +
                       '   and vis.id_vendedor in (' + VarToStr(id_vendedor) +') ');
       qryCons1.Open;
       while not qryCons1.eof do
          begin
            if nClientes <> '' then
               begin
                 nClientes :=
                 nClientes + ',' +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
               end;
            if nClientes = '' then
               begin
                 nClientes :=
                 nClientes +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
               end;
            qryCons1.Next;
          end;


       // Depois irá localizar as culturas da propriedades dos clientes

       if trim(nClientes) <> '' then
          begin
             qryCons1.Close;
             FreeAndNil(qryCons1);

             qryCons1 := TSQLQuery.Create(nil);
             qryCons1.SQLConnection := ConexaoNW;

             qryCons1.Close;
             qryCons1.SQL.Clear;
             qryCons1.SQL.Add(' SELECT cli.id_cliente, cli.doc_cnpj_cpf, * FROM cad_tb_c_cli_pro_cul cpu ' +
                              '   left outer join cad_tb_c_cli cli on cli.id_cliente = cpu.id_cliente ' +
                              ' WHERE cli.id_cliente in (' + VarToStr(nClientes) +') ');
             qryCons1.Open;

             jsObj := TJsonObject.Create();
             result := TJsonArray.Create();

             qryCons1.First;
             while not qryCons1.Eof  do
                begin
                    jso := TJsonObject.Create();
                    jso.AddPair(TJsonPair.Create('id_cliente',qryCons1.FieldByName('id_cliente').AsString));
                    jso.AddPair(TJsonPair.Create('cpfcnpj',qryCons1.FieldByName('doc_cnpj_cpf').AsString));
                    jso.AddPair(TJsonPair.Create('propriedade',qryCons1.FieldByName('id_propriedade').AsString));
                    jso.AddPair(TJsonPair.Create('cultura',qryCons1.FieldByName('id_cultura').AsString));
                    jso.AddPair(TJsonPair.Create('lote',qryCons1.FieldByName('lote').AsString));
                    jso.AddPair(TJsonPair.Create('idade',qryCons1.FieldByName('idade').AsString));
                    jso.AddPair(TJsonPair.Create('area',qryCons1.FieldByName('area').AsString));
                    jso.AddPair(TJsonPair.Create('produtividade',qryCons1.FieldByName('produtividade').AsString));
                    jso.AddPair(TJsonPair.Create('obs',qryCons1.FieldByName('obs').AsString));
                    jso.AddPair(TJsonPair.Create('variedade',qryCons1.FieldByName('variedade').AsString));
                    result.AddElement(jso);
                    qryCons1.Next;
                end;
             qryCons1.close;
             GetInvocationMetadata().ResponseCode := 200;
             GetInvocationMetadata().ResponseContent := result.ToString;
          end;
       uPrincipal.Form1.mmTexto.Lines.Add('Get da cultura da propriedade do cliente sincronizado!');
     end;

  {if operacao = '1' then // Post das culturas das propriedades dos clientes
     begin

       qryCons1 := TSQLQuery.Create(nil);
       qryCons1.SQLConnection := ConexaoNW;

       qryCons2 := TSQLQuery.Create(nil);
       qryCons2.SQLConnection := ConexaoNW;


       result := TJsonArray.Create();

       if trim(nPropriedades) = '' then
          nPropriedades := '0';

       CAD_CD_C_CLI_PRO_CUL := TClientDataSet.Create(nil);
       CAD_CD_C_CLI_PRO_CUL.SetProvider(CAD_DP_C_CLI_PRO_CUL);

       CAD_SQ_C_CLI_PRO_CUL.close;
       CAD_SQ_C_CLI_PRO_CUL.CommandText := '';
       CAD_SQ_C_CLI_PRO_CUL.CommandText := ' SELECT * FROM CAD_TB_C_CLI_PRO_CUL CPR ' +
                                           '   left outer join cad_tb_c_cli cli on (cli.id_cliente = cpr.id_cliente) ' +
                                           '  where cpr.id_propriedade in (' + VarToStr(nPropriedades) +') ';
       CAD_CD_C_CLI_PRO_CUL.Open;

       for LJsonValue in VJsonArray do
           begin
             for LItem in TJSONArray(LJsonValue) do
                begin
                    if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
                       id_cliente  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'cpfcnpj' then
                       doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'propriedade' then
                       propriedade  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'cultura' then
                       cultura  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'lote' then
                       lote  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'idade' then
                       idade  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'area' then
                       area  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'produtividade' then
                       produtividade  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'obs' then
                       obs  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'variedade' then
                       variedade  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'id_cli_matriz' then
                       id_cli_matriz  := TJSONPair(LItem).JsonValue.Value;
                    if TJSONPair(LItem).JsonString.Value = 'propriedade_matriz' then
                       propriedade_matriz  := TJSONPair(LItem).JsonValue.Value;
                end;


             // Irá localizar o cliente da semana do vendedor

             if id_cli_matriz <> '0' then
                begin
                 qryCons1.Close;
                 qryCons1.SQL.Clear;
                 qryCons1.SQL.Add(' SELECT cli.* FROM cad_tb_c_cli cli ' +
                                       ' WHERE cli.id_cliente = ''' + VarToStr(id_cliente)+'''');
                 qryCons1.Open;
                end
             else
                begin
                  qryCons1.Close;
                  qryCons1.SQL.Clear;
                  qryCons1.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                    ' WHERE cli.id_cli_temp_mobile = ''' + VarToStr(id_cliente+'-'+doc_cnpj_cpf+id_vendedor) + ''' ');
                  qryCons1.Open;
                end;

             IdCliente := qryCons1.FieldByName('id_cliente').AsString;

             if (CAD_CD_C_CLI_PRO_CUL.Locate('id_cliente;id_propriedade;lote;id_cultura',varArrayOf([IdCliente,propriedade,lote,cultura]),[])) then
                begin
                  // Situacao 1 -> O Usuário está alterando uma cultura que já existe;
                  // Situacao 2 -> O Usuário criou uma cultura depois de sincronizado e que depois criou uma cultura nova no mobile
                  //               e que na Matriz outro usuário criou a mesma cultura, sendo assim, a cultura do mobile irá atualizar os dados
                  //               na Matriz.
                  CAD_CD_C_CLI_PRO_CUL.edit;
                end
              else
                begin
                  //Situacao 1 -> A propriedade já existia na Matriz, mas o usuário criou uma nova cultura.
                  //Situacao 2 -> A propriedade não exisita (foi criada no mobile) e o usuário criou uma nova cultura.


                  //Situacao 1
                  if strtoint(propriedade_matriz) > 0 then
                     begin
                       CAD_CD_C_CLI_PRO_CUL.Insert;
                       CAD_CD_C_CLI_PRO_CUL.FieldByName('id_cliente').AsString      := IdCliente;
                       CAD_CD_C_CLI_PRO_CUL.FieldByName('id_propriedade').AsString  := propriedade_matriz;
                     end
                  else
                     begin
                        //Situacao 2
                        qryCons2.Close;
                        qryCons2.SQL.Clear;
                        qryCons2.SQL.Add(' SELECT * FROM CAD_TB_C_CLI_PRO CPR ' +
                                          '  left outer join cad_tb_c_cli cli on (cli.id_cliente = cpr.id_cliente) ' +
                                          ' where cpr.id_pro_mob_temp = ' + VarToStr(propriedade) +
                                          '   and cli.id_cliente = ''' + VarToStr(id_cliente)+'''');
                        qryCons2.Open;
                        propriedade := qryCons2.FieldByName('id_propriedade').AsString;
                        qryCons2.Close;

                        CAD_CD_C_CLI_PRO_CUL.Insert;
                        CAD_CD_C_CLI_PRO_CUL.FieldByName('id_cliente').AsString      := IdCliente;
                        CAD_CD_C_CLI_PRO_CUL.FieldByName('id_propriedade').AsString  := propriedade;
                     end;
                end;
              qryCons1.close;

             CAD_CD_C_CLI_PRO_CUL.FieldByName('id_cliente').AsString := IdCliente;
             CAD_CD_C_CLI_PRO_CUL.FieldByName('id_propriedade').AsString := propriedade;
             CAD_CD_C_CLI_PRO_CUL.FieldByName('lote').AsString := lote;
             CAD_CD_C_CLI_PRO_CUL.FieldByName('id_cultura').AsString := cultura;
             CAD_CD_C_CLI_PRO_CUL.FieldByName('idade').AsString := idade;
             CAD_CD_C_CLI_PRO_CUL.FieldByName('area').AsString := area;
             CAD_CD_C_CLI_PRO_CUL.FieldByName('produtividade').AsString := produtividade;
             CAD_CD_C_CLI_PRO_CUL.FieldByName('obs').AsString := obs;
             CAD_CD_C_CLI_PRO_CUL.FieldByName('variedade').AsString := variedade;
             CAD_CD_C_CLI_PRO_CUL.Post;
           end;

       try
          qryCons1.Close;
          FreeAndNil(qryCons1);

          qryCons1 := TSQLQuery.Create(nil);
          qryCons1.SQLConnection := ConexaoNW;

          qryCons1.Close;
          qryCons1.SQL.Clear;
          qryCons1.SQL.Add(' update cad_tb_c_cli_pro ' +
                           '    set id_pro_mob_temp = 0 ' +
                           ' where coalesce(id_pro_mob_temp,0) <> 0 ');
          Vtran := ConexaoNW.BeginTransaction;

          //try
            qryCons1.ExecSQL;

            if CAD_CD_C_CLI_PRO_CUL <> nil then
               if (CAD_CD_C_CLI_PRO_CUL.ChangeCount > 0) then
                   retorno := CAD_CD_C_CLI_PRO_CUL.ApplyUpdates(0);

            ConexaoNW.CommitFreeAndNil(Vtran);

            if retorno = 0 then
               begin
                GetInvocationMetadata().ResponseCode := 201;
                uPrincipal.Form1.mmTexto.Lines.Add('Post da cultura da propriedade do cliente sincronizado!');
               end
            else
               GetInvocationMetadata().ResponseCode := 404;
       finally
          ConexaoNW.RollbackIncompleteFreeAndNil(Vtran);
       end;
     end;     }
  finally
     if qryCons1 <> nil then
         FreeAndNil(qryCons1);

     if qryCons2 <> nil then
         FreeAndNil(qryCons2);

     if qryCons2 <> nil then
         FreeAndNil(qryCons1);

     if CAD_CD_C_CLI_PRO_CUL <> nil then
        FreeAndNil(CAD_CD_C_CLI_PRO_CUL);

     if jso <> nil then
        FreeAndNil(jso);
  end;
end;

function TSM.updatetbClientesRevenda(dados: TJSONArray): TJsonArray;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  jsobj, jso: TJsonObject;

  CAD_SQ_C_CLI_RVD: TSQLDataSet;
  CAD_DP_C_CLI_RVD: TDataSetProvider;
  CAD_CD_C_CLI_RVD: TClientDataSet;
  CAD_CD_C_CLI: TClientDataSet;

  nClientes,operacao,id_vendedor, doc_cnpj_cpf,id_cli_matriz,
  id_cliente,id_rvd,desc_revenda,ativo,mac: string;

  cnpj_cpf_mac: String;

  qryCons1: TSQLQuery;

  Vtran: TDBXTransaction;
  retorno: Integer;
  semana:String;
begin

  { Get da Tabela: Revendas do Cliente
    Criado por: Maxsuel Victor
    Data: 20/02/2017
  }


  try

  txt := dados.ToString;

  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

  for LJsonValue in VJsonArray do
    begin
       for LItem in TJSONArray(LJsonValue) do
          begin
            if TJSONPair(LItem).JsonString.Value = 'operacao' then
               operacao := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'vendedor' then
               id_vendedor  := TJSONPair(LItem).JsonValue.Value;

            if (operacao = '0') and (id_vendedor <> '') then
                break;

            if TJSONPair(LItem).JsonString.Value = 'mac' then
               mac  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'ativo' then
               ativo  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               id_cliente  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'doc_cnpj_cpf' then
               doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               begin
                  if nClientes <> '' then
                     begin
                       nClientes :=
                       nClientes + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                     end;
                  if nClientes = '' then
                     begin
                       nClientes :=
                       nClientes +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                     end;
               end;

            if TJSONPair(LItem).JsonString.Value = 'id_rvd' then
               id_rvd  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'desc_revenda' then
               desc_revenda  := TJSONPair(LItem).JsonValue.Value;
          end;
    end;
   semana := IntToStr(WeekOfTheYear(date));
   if operacao = '0' then // Get das revendas do clientes
      begin
         qryCons1 := TSQLQuery.Create(nil);
         qryCons1.SQLConnection := ConexaoNW;

         // Irá localizar os clientes da semana do vendedor
         qryCons1.Close;
         qryCons1.SQL.Clear;
         qryCons1.SQL.Add(' SELECT cli.* FROM PRO_TB_M_VIS_CLI vcl ' +
                         '   left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' +
                         '   left outer join cad_tb_c_cli cli on cli.doc_cnpj_cpf = vcl.doc_cnpj_cpf ' +
                         ' WHERE  vis.semana =  ' + semana + '  ' +
                         '   and vis.id_vendedor in (' + VarToStr(id_vendedor) +') ');
         qryCons1.Open;
         while not qryCons1.eof do
            begin
              if nClientes <> '' then
                 begin
                   nClientes :=
                   nClientes + ',' +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
                 end;
              if nClientes = '' then
                 begin
                   nClientes :=
                   nClientes +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
                 end;
              qryCons1.Next;
            end;

         // Depois irá localizar os títulos vencidos em aberto dos clientes
         qryCons1.Close;
         FreeAndNil(qryCons1);

         if trim(nClientes) <> '' then
            begin
               qryCons1 := TSQLQuery.Create(nil);
               qryCons1.SQLConnection := ConexaoNW;

               qryCons1.Close;
               qryCons1.SQL.Clear;
               qryCons1.SQL.Add('  select cli.id_cliente, cli.doc_cnpj_cpf, rvd.id_rvd ' +
                                '  from  cad_tb_c_cli_rvd rvd ' +
                                '     left outer join cad_tb_c_cli cli on cli.id_cliente = rvd.id_cliente ' +
                                ' WHERE cli.id_cliente in (' + VarToStr(nClientes) +') ' +
                                ' order by cli.doc_cnpj_cpf' );


               qryCons1.Open;

               jsObj := TJsonObject.Create();
               result := TJsonArray.Create();

               qryCons1.First;
               while not qryCons1.Eof  do
                  begin
                    jso := TJsonObject.Create();
                    jso.AddPair(TJsonPair.Create('id_cliente',qryCons1.FieldByName('id_cliente').AsString));
                    jso.AddPair(TJsonPair.Create('doc_cnpj_cpf',qryCons1.FieldByName('doc_cnpj_cpf').AsString));
                    jso.AddPair(TJsonPair.Create('id_rvd',qryCons1.FieldByName('id_rvd').AsString));
                    result.AddElement(jso);
                    qryCons1.Next;
                  end;
               qryCons1.close;
               GetInvocationMetadata().ResponseCode := 200;
               GetInvocationMetadata().ResponseContent := result.ToString;
            end;
         uPrincipal.Form1.mmTexto.Lines.Add('Get das revendas do cliente sincronizado!');
      end;

  if operacao = '1' then // Post de Revendas do cliente
     begin

       cnpj_cpf_mac := '';

       CAD_SQ_C_CLI_RVD := TSQLDataSet.Create(nil);
       CAD_SQ_C_CLI_RVD.SQLConnection := ConexaoNW;

       CAD_DP_C_CLI_RVD := TDataSetProvider.Create(nil);
       CAD_DP_C_CLI_RVD.DataSet := CAD_SQ_C_CLI_RVD;

       CAD_CD_C_CLI_RVD := TClientDataSet.Create(nil);
       CAD_CD_C_CLI_RVD.SetProvider(CAD_DP_C_CLI_RVD);

       CAD_SQ_C_CLI_RVD.close;
       CAD_SQ_C_CLI_RVD.CommandText := '';
       CAD_SQ_C_CLI_RVD.CommandText := ' SELECT * FROM CAD_TB_C_CLI_RVD rvd ' +
                                       '   left outer join cad_tb_c_cli cli on cli.id_cliente = rvd.id_cliente ' +
                                       ' WHERE cli.id_cliente in  (' + VarToStr(nClientes) + ')  ';
       CAD_CD_C_CLI_RVD.Open;

       for LJsonValue in VJsonArray do
           begin
               for LItem in TJSONArray(LJsonValue) do
                  begin
                    if TJSONPair(LItem).JsonString.Value = 'operacao' then
                       operacao := TJSONPair(LItem).JsonValue.Value;

                    if TJSONPair(LItem).JsonString.Value = 'vendedor' then
                       id_vendedor  := TJSONPair(LItem).JsonValue.Value;

                    if TJSONPair(LItem).JsonString.Value = 'mac' then
                       mac  := TJSONPair(LItem).JsonValue.Value;

                    if TJSONPair(LItem).JsonString.Value = 'ativo' then
                       ativo  := TJSONPair(LItem).JsonValue.Value;

                    if TJSONPair(LItem).JsonString.Value = 'doc_cnpj_cpf' then
                       doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;


                    if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
                       begin
                         id_cliente := TJSONPair(LItem).JsonValue.Value;
                       end;

                    if TJSONPair(LItem).JsonString.Value = 'id_cli_matriz' then
                       id_cli_matriz  := TJSONPair(LItem).JsonValue.Value;

                    if TJSONPair(LItem).JsonString.Value = 'id_cli_matriz' then
                       begin
                          if nClientes <> '' then
                             begin
                               nClientes :=
                               nClientes + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                             end;
                          if nClientes = '' then
                             begin
                               nClientes :=
                               nClientes +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                             end;
                       end;

                    if TJSONPair(LItem).JsonString.Value = 'id_rvd' then
                       id_rvd  := TJSONPair(LItem).JsonValue.Value;

                    if TJSONPair(LItem).JsonString.Value = 'desc_revenda' then
                       desc_revenda  := TJSONPair(LItem).JsonValue.Value;


                  end;

             qryCons1 := TSQLQuery.Create(nil);
             qryCons1.SQLConnection := ConexaoNW;

             // Irá localizar o cliente

             if LowerCase(ativo) = 'true' then
                begin
                  qryCons1.Close;
                  qryCons1.SQL.Clear;
                  qryCons1.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                    ' WHERE cli.id_cliente in  (' + VarToStr(nClientes) + ')');
                  qryCons1.Open;
                end
             else
                begin
                  qryCons1.Close;
                  qryCons1.SQL.Clear;
                  qryCons1.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                    ' WHERE cli.id_cli_temp_mobile = ''' + VarToStr(id_cliente+'-'+doc_cnpj_cpf+id_vendedor) + ''' ');
                  qryCons1.Open;

                  if cnpj_cpf_mac <> '' then
                     begin
                       cnpj_cpf_mac :=
                       cnpj_cpf_mac + ',' +''''+trim(qryCons1.FieldByName('id_cli_temp_mobile').AsString)+'''';
                     end;
                  if cnpj_cpf_mac = '' then
                     begin
                       cnpj_cpf_mac :=
                       cnpj_cpf_mac +''''+trim(qryCons1.FieldByName('id_cli_temp_mobile').AsString)+'''';
                     end;
                end;

             CAD_CD_C_CLI_RVD.Insert;
             CAD_CD_C_CLI_RVD.FieldByName('id_cliente').AsString := qryCons1.FieldByName('id_cliente').AsString;
             CAD_CD_C_CLI_RVD.FieldByName('id_rvd').AsString     := id_rvd;

             qryCons1.close;
             FreeAndNil(qryCons1);

             CAD_CD_C_CLI_RVD.Post;
           end;

       if cnpj_cpf_mac <> '' then
          begin
             CAD_CD_C_CLI := TClientDataSet.Create(nil);
             CAD_CD_C_CLI.SetProvider(CAD_DP_C_CLI);

             CAD_SQ_C_CLI.close;
             CAD_SQ_C_CLI.CommandText := '';
             CAD_SQ_C_CLI.CommandText := ' SELECT * FROM CAD_TB_C_CLI ' +
                                         ' WHERE id_cli_temp_mobile in  (' + VarToStr(cnpj_cpf_mac) + ')  ';
             CAD_CD_C_CLI.Open;
             if not CAD_CD_C_CLI.IsEmpty then
                begin
                  CAD_CD_C_CLI.Edit;
                  CAD_CD_C_CLI.FieldByName('id_cli_temp_mobile').AsString := '';
                  CAD_CD_C_CLI.Post;
                end;
          end;

       try

         Vtran := ConexaoNW.BeginTransaction;

         if CAD_CD_C_CLI <> nil then
            if (CAD_CD_C_CLI.ChangeCount > 0) then
                retorno := CAD_CD_C_CLI.ApplyUpdates(0);

         if CAD_CD_C_CLI_RVD <> nil then
            if (CAD_CD_C_CLI_RVD.ChangeCount > 0) then
                retorno := CAD_CD_C_CLI_RVD.ApplyUpdates(0);

         ConexaoNW.CommitFreeAndNil(Vtran);

         if retorno = 0 then
             begin
              GetInvocationMetadata().ResponseCode := 201;
              uPrincipal.Form1.mmTexto.Lines.Add('Post de Revendas do Cliente foi sincronizado!');
             end
         else
             GetInvocationMetadata().ResponseCode := 404;

       finally
          ConexaoNW.RollbackIncompleteFreeAndNil(Vtran);
       end;
     end;

  finally
     if qryCons1 <> nil then
        FreeAndNil(qryCons1);

     if CAD_CD_C_CLI_RVD <> nil then
        FreeAndNil(CAD_CD_C_CLI_RVD);

     if CAD_CD_C_CLI <> nil then
        FreeAndNil(CAD_CD_C_CLI);

     if jso <> nil then
        FreeAndNil(jso);
     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);
  end;

end;


function TSM.updatetbHistoricoCli(dados: TJSONArray): TStream;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  jsobj, jso: TJsonObject;

  CAD_CD_C_PAR_CTR,CAD_CD_C_FUN : TClientDataSet;

  nClientes,operacao,id_vendedor,id_empresa_vendedor,
  id_cliente,cod_produto, desc_produto, qtde, vlr_liquido, doc_cnpj_cpf,
  qtd_ult_meses_vend, qtde_dias_ult_meses_vend,desc_grupo: string;

  qryCons1: TSQLQuery;
  Lista:  TJsonArray;
  semana:String;
begin

  { Get da Tabela: Hitorico de compra do cliente - De itens
    Criado por: Maxsuel Victor
    Data: 20/02/2017
  }


  try

  txt := dados.ToString;

  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

  for LJsonValue in VJsonArray do
    begin
       for LItem in TJSONArray(LJsonValue) do
          begin
            if TJSONPair(LItem).JsonString.Value = 'operacao' then
               operacao := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'vendedor' then
               id_vendedor  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               id_cliente  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'doc_cnpj_cpf' then
               doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'cod_produto' then
               cod_produto  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'desc_produto' then
               desc_produto  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'desc_grupo' then
               desc_grupo  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'qtde' then
               qtde  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'vlr_liquido' then
               vlr_liquido  := TJSONPair(LItem).JsonValue.Value;
          end;
    end;

   // Cadastro de Funionário
   CAD_CD_C_FUN := TClientDataSet.Create(nil);
   CAD_CD_C_FUN.SetProvider(CAD_DP_C_FUN);

   CAD_SQ_C_FUN.close;
   CAD_SQ_C_FUN.CommandText := '';
   CAD_SQ_C_FUN.CommandText := ' SELECT id_empresa_mob FROM CAD_TB_C_FUN ' +
                               ' WHERE id_funcionario = ' + id_vendedor;
   CAD_CD_C_FUN.Open;

   id_empresa_vendedor := CAD_CD_C_FUN.FieldByName('id_empresa_mob').AsString;

   CAD_CD_C_FUN.close;

   // Cadastro de Parâmetros
   CAD_CD_C_PAR_CTR := TClientDataSet.Create(nil);
   CAD_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);

   CAD_SQ_C_PAR_CTR.close;
   CAD_SQ_C_PAR_CTR.CommandText := '';
   CAD_SQ_C_PAR_CTR.CommandText := ' SELECT mob_periodo_ult_vend FROM CAD_TB_C_PAR_CTR ' +
                                   ' WHERE id_empresa = ' + id_empresa_vendedor;
   CAD_CD_C_PAR_CTR.Open;
   qtd_ult_meses_vend := CAD_CD_C_PAR_CTR.FieldByName('mob_periodo_ult_vend').AsString;
   CAD_CD_C_PAR_CTR.Close;

   if qtd_ult_meses_vend = '' then
      qtd_ult_meses_vend := '0';

   qtde_dias_ult_meses_vend := inttostr(30 * strtoint(qtd_ult_meses_vend));
   semana := IntToStr(WeekOfTheYear(date));

   qryCons1 := TSQLQuery.Create(nil);
   qryCons1.SQLConnection := ConexaoNW;

   // Irá localizar os clientes da semana do vendedor
   qryCons1.Close;
   qryCons1.SQL.Clear;
   qryCons1.SQL.Add(' SELECT cli.* FROM PRO_TB_M_VIS_CLI vcl ' +
                   '   left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' +
                   '   left outer join cad_tb_c_cli cli on cli.doc_cnpj_cpf = vcl.doc_cnpj_cpf ' +
                   ' WHERE vis.semana =  ' + semana + '  ' +
                   '   and vis.id_vendedor in (' + VarToStr(id_vendedor) +') ');
   qryCons1.Open;
   while not qryCons1.eof do
      begin
        if nClientes <> '' then
           begin
             nClientes :=
             nClientes + ',' +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
           end;
        if nClientes = '' then
           begin
             nClientes :=
             nClientes +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
           end;
        qryCons1.Next;
      end;

   // Depois irá localizar os títulos vencidos em aberto dos clientes
   qryCons1.Close;
   FreeAndNil(qryCons1);

   if trim(nClientes) <> '' then
      begin
         qryCons1 := TSQLQuery.Create(nil);
         qryCons1.SQLConnection := ConexaoNW;
         qryCons1.Close;
         qryCons1.SQL.Clear;
         qryCons1.SQL.Add(' SELECT ' +
                          '   cli.id_cliente, CLI.doc_cnpj_cpf, NIT.ID_ITEM cod_produto, ITE.DESCRICAO desc_produto, GRU.DESCRICAO desc_grupo, ' +
                          '   SUM(NIT.QTDE-NIT.QTDE_DEVOLVIDA) AS qtde, ' +
                          '   SUM(COALESCE(NIT.VLR_UNITARIO*(NIT.QTDE-NIT.QTDE_DEVOLVIDA),0)) AS VLR_BRUTO, '+
                          '   SUM(COALESCE(NIT.VLR_DESCONTO,0)) AS VLR_DESCONTO, '+
                          '   SUM(COALESCE(NIT.VLR_UNITARIO*(NIT.QTDE-NIT.QTDE_DEVOLVIDA),0))-SUM((COALESCE(NIT.VLR_DESCONTO,0)/NIT.QTDE)*(nit.qtde-nit.qtde_devolvida)) AS vlr_liquido ' +
                          ' FROM FAT_TB_M_NFE_ITE NIT '+
                          '   LEFT OUTER JOIN FAT_TB_M_NFE NFE ON NFE.ID_FISCAL=NIT.ID_FISCAL '+
                          '   LEFT OUTER JOIN CAD_TB_C_FUN FUC ON FUC.ID_FUNCIONARIO=NFE.ID_VENDEDOR '+
                          '   LEFT OUTER JOIN CAD_TB_C_CLI CLI ON CLI.ID_CLIENTE=NFE.ID_EMITENTE '+
                          '   LEFT OUTER JOIN CAD_TB_C_ITE ITE ON ITE.ID_ITEM=NIT.ID_ITEM '+
                          '   LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_GRUPO '+
                          '   LEFT OUTER JOIN CAD_TB_C_CFO CFO ON CFO.ID_CFO=NFE.ID_CFO '+
                          ' WHERE ' +
                          '   CFO.ID_CLASSE IN (''SP10'',''SP70'') AND NFE.NFE_COD_SIT not in (''02'',''04'',''05'') AND NFE.STATUS = 1 AND ' +
                          '   NFE.FATURADA = true AND NFE.TIPO_NF='''+'S'+'''  ' +
                          '   and NFE.id_emitente in (' + VarToStr(nClientes) +') ' +
                          '   AND NFE.DTA_EMISSAO >= ''' + FormatDateTime('dd/mm/yyyy', date-strtoint(qtde_dias_ult_meses_vend) )  +''' AND '+
                          '       NFE.DTA_EMISSAO <= ''' + FormatDateTime('dd/mm/yyyy', date) +''' ' +
                          ' group by 1,2,3,4,5 ');
         qryCons1.SQL.Text;
         qryCons1.Open;

         jsObj := TJsonObject.Create();
         //result := TJsonArray.Create();
         lista := TJsonArray.Create();

         qryCons1.First;
         while not qryCons1.Eof  do
            begin
                jso := TJsonObject.Create();
                jso.AddPair(TJsonPair.Create('id_cliente',qryCons1.FieldByName('id_cliente').AsString));
                jso.AddPair(TJsonPair.Create('doc_cnpj_cpf',qryCons1.FieldByName('doc_cnpj_cpf').AsString));
                jso.AddPair(TJsonPair.Create('cod_produto',qryCons1.FieldByName('cod_produto').AsString));
                jso.AddPair(TJsonPair.Create('desc_produto',qryCons1.FieldByName('desc_produto').AsString));
                jso.AddPair(TJsonPair.Create('desc_grupo',qryCons1.FieldByName('desc_grupo').AsString));
                jso.AddPair(TJsonPair.Create('qtde',qryCons1.FieldByName('qtde').AsString));
                jso.AddPair(TJsonPair.Create('vlr_liquido',qryCons1.FieldByName('vlr_liquido').AsString));
                lista.AddElement(jso);
                qryCons1.Next;
            end;
         qryCons1.close;

         GetInvocationMetadata().ResponseCode := 200;
         GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
         result :=  TStringStream.Create( utf8encode(Lista.ToString));
      end;
   uPrincipal.Form1.mmTexto.Lines.Add('Get do histórico do cliente sincronizado!');

  finally

      FreeAndNil(Lista);
     if CAD_CD_C_FUN <> nil then
        FreeAndNil(CAD_CD_C_FUN);

     if CAD_CD_C_PAR_CTR <> nil then
        FreeAndNil(CAD_CD_C_PAR_CTR);

     if qryCons1 <> nil then
        FreeAndNil(qryCons1);

     //if jso <> nil then
     //   FreeAndNil(jso);

     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);
  end;
end;


function TSM.updateimagem(dados: TJSONArray): string;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt,txt2: String;


  value: TJSONValue;
  obj: TJSONObject;
  pair : TJSONPair;
  ar: TJSONArray;
  str: string;

  id, desc, FotoStr: string;


  base64Stream : TIdReadFileExclusiveStream;
  pngStream : TIdFileCreateStream;
  MIMEDecoder : TidDecoderMIME;
  sData: string;

  Arquivo: TextFile;
  c1,c2,c3,c4:String;
begin



  txt := dados.ToString;

  value := TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0);

  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

   for LJsonValue in VJsonArray do
    begin
       for LItem in TJSONArray(LJsonValue) do
          begin
            if TJSONPair(LItem).JsonString.Value = 'id' then
               begin
                  c1:= TJSONPair(LItem).JsonValue.Value;
               //   CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsString := TJSONPair(LItem).JsonValue.Value;
               //   CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsInteger :=
               //   CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsInteger + 10;
               end;
               //txt := (Format('%s : %s',[TJSONPair(LItem).JsonString.Value, TJSONPair(LItem).JsonValue.Value]));
            if TJSONPair(LItem).JsonString.Value = 'visita' then
              c2:= TJSONPair(LItem).JsonValue.Value;
               //CAD_CD_C_PEC.FieldByName('descricao').AsString := TJSONPair(LItem).JsonValue.Value;
               //txt2 := (Format('%s : %s',[TJSONPair(LItem).JsonString.Value, TJSONPair(LItem).JsonValue.Value]));
            if TJSONPair(LItem).JsonString.Value = 'cliente' then
               c3:= TJSONPair(LItem).JsonValue.Value;
               //
            if TJSONPair(LItem).JsonString.Value = 'foto' then
               FotoStr := TJSONPair(LItem).JsonValue.Value;
          end;
    end;


  AssignFile(Arquivo,'c:\temp\teste2.txt');
  Rewrite(Arquivo); //abre o arquivo para escrita

  Writeln(Arquivo,FotoStr);
  Closefile(Arquivo); //fecha o handle de arquivo

  base64Stream := TIdReadFileExclusiveStream.Create('C:\temp\teste2.txt');
  try
    pngStream := TIdFileCreateStream.Create('C:\temp\testettt.png');
    try
      try
        MIMEDecoder := TIdDecoderMIME.Create(nil);
        try
          MIMEDecoder.DecodeBegin(pngStream);
          try
            while ReadLnFromStream(base64Stream, sData) do
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
      DeleteFile('C:\AppProg\MyFile.pdf');
      raise;
    end;
  finally
    base64Stream.Free;
  end;


   result := 'PEGUEI_TUDO_FOFO';
end;

function TSM.updateperfil(dados: TJSONArray): String;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt,txt2: String;


  value: TJSONValue;
  obj: TJSONObject;
  pair : TJSONPair;
  ar: TJSONArray;
  str: string;

  id, desc: string;

  CAD_CD_C_PEC: TClientDataSet;
begin

  txt := dados.ToString;

  value := TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0);



  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

  CAD_SQ_C_PEC.close;
  CAD_SQ_C_PEC.CommandText := '';
  CAD_SQ_C_PEC.CommandText := ' SELECT * FROM CAD_TB_C_PEC ';
  CAD_CD_C_PEC.Open;


   for LJsonValue in VJsonArray do
    begin
       CAD_CD_C_PEC.Insert;

       for LItem in TJSONArray(LJsonValue) do
          begin
            if TJSONPair(LItem).JsonString.Value = 'id' then
               begin
                  CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsString := TJSONPair(LItem).JsonValue.Value;
                  CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsInteger :=
                  CAD_CD_C_PEC.FieldByName('id_perfil_cli').AsInteger + 10;
               end;
               //txt := (Format('%s : %s',[TJSONPair(LItem).JsonString.Value, TJSONPair(LItem).JsonValue.Value]));
            if TJSONPair(LItem).JsonString.Value = 'descricao' then
               CAD_CD_C_PEC.FieldByName('descricao').AsString := TJSONPair(LItem).JsonValue.Value;
               //txt2 := (Format('%s : %s',[TJSONPair(LItem).JsonString.Value, TJSONPair(LItem).JsonValue.Value]));
          end;
       CAD_CD_C_PEC.Post;
    end;

    CAD_CD_C_PEC.ApplyUpdates(0);

    result := 'Gravado';
end;

function TSM.updatetbPedidosCli(dados: TJSONArray): TJsonArray;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  CAD_CD_C_PAR_CTR, CAD_CD_C_SEQ, FAT_CD_M_PED, FAT_CD_M_PED_ITE,
  FAT_CD_M_PED_TIT: TClientDataSet;

  jsobj, jso: TJsonObject;

  tabela, IdTipoMovEstoque: string;

  qryCons: TSQLQuery;

  //fat_tb_m_ped
  id_cliente, id_cli_matriz, id_pedido, dta_pedido, id_vendedor,doc_cnpj_cpf,
  id_condicao_pag,vlr_bruto,vlr_desconto,
  vlr_liquido, gps_latitude, gps_longitude, semana: String;


  //fat_tb_m_ped_ite
  id_pedido_ite, id_item,qtde,vlr_unitario_ite,
  vlr_bruto_ite,vlr_desconto_ite,vlr_liquido_ite,per_desconto_ite:string;


  //fat_tb_m_ped_tit
  id_pedido_tit,id_titulo,
  dta_titulo,vlr_titulo_tit, id_forma_pag: String;

  retorno: integer;
  DtaPed,ch_id_pedido_ant, ch_id_pedido_nov , ch_id_seq_item_ant,ch_id_seq_item_nov,
  ch_id_tit_ant,ch_id_tit_nov: string;
  Vtran: TDBXTransaction;

  InseriPed, InseriPedIte, InseriPedTit: Boolean;

  Arquivo: TextFile;

  EST_CD_M_FEA,EST_CD_M_FES:TClientDataSet;
  EST_SQ_M_FEA,EST_SQ_M_FES: TSQLDataSet;
  EST_DP_M_FEA,EST_DP_M_FES:TDataSetProvider;
  listaItens,listaCor,listaTamanho:String;

begin

  { Post da Tabela: FAT_TB_M_PED - Pedidos
    Criado por: Maxsuel Victor
    Data: 15/01/2017
  }


  try
    GerarSqlTxt('tbPedidosCli Parte 1 -' + 'Início do processo do pedido de venda');

     txt := dados.ToString;

     VJsonArray :=  TJSONObject.ParseJSONValue(
                   TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;


     CAD_CD_C_SEQ := TClientDataSet.Create(nil);
     CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);

     FAT_CD_M_PED := TClientDataSet.Create(nil);
     FAT_CD_M_PED.SetProvider(FAT_DP_M_PED);

     FAT_CD_M_PED_ITE := TClientDataSet.Create(nil);
     //FAT_CD_M_PED_ITE.SetProvider(FAT_DP_M_PED_ITE);

     FAT_CD_M_PED_TIT := TClientDataSet.Create(nil);
     //FAT_CD_M_PED_TIT.SetProvider(FAT_DP_M_PED_TIT);

     qryCons := TSQLQuery.Create(nil);
     qryCons.SQLConnection := ConexaoNW;


     CAD_SQ_C_SEQ.close;
     CAD_SQ_C_SEQ.CommandText := '';
     CAD_SQ_C_SEQ.CommandText := ' SELECT * FROM CAD_TB_C_SEQ ' +
                                 ' WHERE ID_TABELA in (''FAT_TB_M_PED'',''FAT_TB_M_NFE_ITE'',''FAT_TB_M_NFE_TIT'',''EST_TB_M_FEA'')';
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


     FAT_SQ_M_PED.close;
     FAT_SQ_M_PED.CommandText := '';
     FAT_SQ_M_PED.CommandText := ' SELECT  * FROM FAT_TB_M_PED ' +
                                 ' WHERE 1 = 2 ';
     FAT_CD_M_PED.Open;

     FAT_SQ_M_PED_ITE.close;
     FAT_SQ_M_PED_ITE.CommandText := '';
     FAT_SQ_M_PED_ITE.CommandText := ' SELECT * FROM FAT_TB_M_PED_ITE  ' +
                                     ' WHERE 1 = 2 ';
     FAT_CD_M_PED_ITE.Open;

     FAT_SQ_M_PED_TIT.close;
     FAT_SQ_M_PED_TIT.CommandText := '';
     FAT_SQ_M_PED_TIT.CommandText := ' SELECT * FROM FAT_TB_M_PED_TIT ' +
                                     ' WHERE 1 = 2 ';
     FAT_CD_M_PED_TIT.Open;

     ch_id_pedido_ant := '0';
     ch_id_pedido_nov := '0';


     ch_id_seq_item_ant := '0';
     ch_id_seq_item_nov := '0';
     ch_id_tit_ant := '0';
     ch_id_tit_nov := '0';
     IdTipoMovEstoque := '';


     for LJsonValue in VJsonArray do
         begin
           InseriPed    := true;
           InseriPedIte := true;
           InseriPedTit := true;

           for LItem in TJSONArray(LJsonValue) do
              begin
                //if TJSONPair(LItem).JsonString.Value = 'tabela' then
                //   tabela := TJSONPair(LItem).JsonValue.Value;

                //if tabela = 'FAT_TB_M_PED' then
                if copy(TJSONPair(LItem).JsonString.Value,1,3) = 'PED' then
                   begin
                     if InseriPed then
                        begin
                          FAT_CD_M_PED.Insert;
                          Id_cliente    := '';
                          Id_Cli_Matriz := '';
                          InseriPed := false;
                        end
                     else
                        FAT_CD_M_PED.edit;

                     if TJSONPair(LItem).JsonString.Value = 'PEDid' then
                        begin
                           //FAT_CD_M_PED.Insert;
                           FAT_CD_M_PED.FieldByName('id_pedido_temp_mob').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;
                           ch_id_pedido_nov := FAT_CD_M_PED.FieldByName('id_pedido_temp_mob').AsString;
                        end;

                     if FAT_CD_M_PED.FieldByName('id_pedido_temp_mob').AsInteger > 0 then
                        begin
                           cad_cd_c_seq.locate('id_tabela','FAT_TB_M_PED',[]);

                           if ch_id_pedido_ant <> ch_id_pedido_nov  then
                              begin
                                 ch_id_pedido_ant := ch_id_pedido_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                 CAD_CD_C_SEQ.Post;

                                 FAT_CD_M_PED.FieldByName('id_pedido').AsString :=
                                      CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString;
                              end;
                           //else
                           //   FAT_CD_M_PED.Edit;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PEDempresa' then
                        begin
                          FAT_CD_M_PED.FieldByName('id_empresa').AsString :=
                               TJSONPair(LItem).JsonValue.Value;

                          if IdTipoMovEstoque = '' then
                             begin
                                CAD_CD_C_PAR_CTR := TClientDataSet.Create(nil);
                                CAD_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);

                                CAD_SQ_C_PAR_CTR.close;
                                CAD_SQ_C_PAR_CTR.CommandText := '';
                                CAD_SQ_C_PAR_CTR.CommandText := ' SELECT  * FROM CAD_TB_C_PAR_CTR ' +
                                                                 ' WHERE id_empresa = ' + FAT_CD_M_PED.FieldByName('id_empresa').AsString;
                                CAD_CD_C_PAR_CTR.Open;
                                IdTipoMovEstoque := CAD_CD_C_PAR_CTR.FieldByName('mob_id_tipo_mov_estoque').AsString;
                                FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsString  :=  IdTipoMovEstoque;
                                CAD_CD_C_PAR_CTR.Close;
                                FreeAndNil(CAD_CD_C_PAR_CTR);
                             end
                          else
                             FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsString  :=  IdTipoMovEstoque;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PEDsemana' then
                         FAT_CD_M_PED.FieldByName('semana').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PEDvendedor' then
                        begin
                          FAT_CD_M_PED.FieldByName('id_vendedor').AsString :=
                             TJSONPair(LItem).JsonValue.Value;
                          FAT_CD_M_PED.FieldByName('id_atendente').AsString :=
                             TJSONPair(LItem).JsonValue.Value;
                          FAT_CD_M_PED.FieldByName('id_responsavel').AsString :=
                             TJSONPair(LItem).JsonValue.Value;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PEDdtapedido' then
                        begin
                          FAT_CD_M_PED.FieldByName('dta_pedido').AsString :=
                                  TJSONPair(LItem).JsonValue.Value;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PEDcondicaopag' then
                        FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').text :=
                            TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PEDid_cliente' then
                        begin
                          id_cliente    := TJSONPair(LItem).JsonValue.Value;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PEDid_cli_matriz' then
                        begin
                          id_cli_matriz := TJSONPair(LItem).JsonValue.Value;;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PEDcpfcnpj' then
                        begin
                          doc_cnpj_cpf := TJSONPair(LItem).JsonValue.Value;;
                        end;

                     if (trim(id_cliente) <> '') and (trim(id_cli_matriz) <> '') then
                         begin
                           qryCons.Close;
                           FreeAndNil(qryCons);

                           qryCons := TSQLQuery.Create(nil);
                           qryCons.SQLConnection := ConexaoNW;

                           if id_cli_matriz = '0' then
                              begin
                                qryCons.Close;
                                qryCons.SQL.Clear;
                                qryCons.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                                  ' WHERE cli.id_cli_temp_mobile = ''' + VarToStr(id_cliente+'-'+doc_cnpj_cpf+id_vendedor) + ''' ');
                                qryCons.Open;
                              end
                           else
                              begin
                                 qryCons.Close;
                                 qryCons.SQL.Clear;
                                 qryCons.SQL.Add(' SELECT cli.* FROM cad_tb_c_cli cli ' +
                                                 ' WHERE cli.id_cliente = ''' + VarToStr(id_cli_matriz)+ '''');
                                 qryCons.Open;
                              end;

                           FAT_CD_M_PED.FieldByName('id_cliente').text :=
                              qryCons.FieldByName('id_cliente').text;
                           qryCons.close;
                         end;

                     if TJSONPair(LItem).JsonString.Value = 'PEDdias' then
                        FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsString :=
                            TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PEDgpslatitude' then
                        FAT_CD_M_PED.FieldByName('GPS_LATITUDE').AsString :=
                            TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PEDgpslongitude' then
                        FAT_CD_M_PED.FieldByName('GPS_LONGITUDE').AsString :=
                            TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'PEDvlrbruto' then
                         begin
                           FAT_CD_M_PED.FieldByName('vlr_bruto').AsString :=
                               TJSONPair(LItem).JsonValue.Value;
                           FAT_CD_M_PED.FieldByName('vlr_desconto').Ascurrency   := 0;
                           FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency := 0;
                         end;

                     if TJSONPair(LItem).JsonString.Value = 'PEDvlrdesconto' then
                        begin
                          FAT_CD_M_PED.FieldByName('vlr_desconto').AsString :=
                               TJSONPair(LItem).JsonValue.Value;
                          if FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
                             FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency       := RoundTo( (FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency *100)/
                                                                               FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency,-2);
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PEDvlrliquido' then
                        FAT_CD_M_PED.FieldByName('vlr_liquido').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PEDhora' then
                        FAT_CD_M_PED.FieldByName('hor_pedido').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PEDid' then
                        FAT_CD_M_PED.FieldByName('id_pedido_mob').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger            := 0;
                     FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger  := 0;
                     FAT_CD_M_PED.FieldByName('PCP_ID_OPR').AsInteger          := 0;
                     FAT_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency          := 0;
                     FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger              := 1;
                     FAT_CD_M_PED.FieldByName('DISPOSITIVO').AsString          := 'Mobile';
                     FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean         := false;
                     FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger      := 0;
                     FAT_CD_M_PED.FieldByName('CONFERIDO').AsBoolean           := false;
                     FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString       := 'I';//Pedido gerado pelo Mobile
                     FAT_CD_M_PED.Post;
                   end;

               // if tabela = 'FAT_TB_M_PED_ITE' then
               if copy(TJSONPair(LItem).JsonString.Value,1,3) = 'ITE' then
                   begin
                     //FAT_CD_M_PED.recordcount;

                     //ch_id_pedido := '0';

                     cad_cd_c_seq.locate('id_tabela','FAT_TB_M_NFE_ITE',[]);

                     if InseriPedIte then
                        begin
                          FAT_CD_M_PED_ITE.Insert;
                          InseriPedIte := false;
                        end
                     else
                        FAT_CD_M_PED_ITE.edit;



                     if TJSONPair(LItem).JsonString.Value = 'ITEitem' then
                        begin
                          //FAT_CD_M_PED_ITE.Insert;
                          ch_id_seq_item_ant := '0';
                          FAT_CD_M_PED_ITE.FieldByName('id_item').AsString :=
                             TJSONPair(LItem).JsonValue.Value;
                          ch_id_seq_item_nov :=
                             FAT_CD_M_PED_ITE.FieldByName('id_item').AsString;
                        end;

                     if FAT_CD_M_PED_ITE.FieldByName('id_item').AsString <> '' then
                        begin
                           if (ch_id_seq_item_ant <> ch_id_seq_item_nov) then
                               begin
                                 ch_id_seq_item_ant := ch_id_seq_item_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;

                                 FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                                 CAD_CD_C_SEQ.Post;
                               end
                           //else
                           //    FAT_CD_M_PED_ITE.edit;
                        end;

                           if TJSONPair(LItem).JsonString.Value = 'ITEpedido' then
                              begin
                                if FAT_CD_M_PED.Locate('id_pedido_temp_mob',TJSONPair(LItem).JsonValue.Value,[]) then
                                   FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsString :=
                                      FAT_CD_M_PED.FieldByName('id_pedido').AsString;
                              end;


                           if TJSONPair(LItem).JsonString.Value = 'ITEqtde' then
                               FAT_CD_M_PED_ITE.FieldByName('qtde').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'ITEvlrunitario' then
                               FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'ITEvlrbruto' then
                               FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'ITEvlrdesconto' then
                               FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'ITEvlrliquido' then
                               FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'ITEperdesconto' then
                               FAT_CD_M_PED_ITE.FieldByName('per_desconto').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger           := 0;
                           FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger       := 0;
                           FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat     := 0;

                           FAT_CD_M_PED_ITE.FieldByName('vlr_unitario_orig').AsCurrency :=
                                   FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency;

                           FAT_CD_M_PED_ITE.Post;
                   end;

                //if tabela = 'FAT_TB_M_PED_TIT' then
                if copy(TJSONPair(LItem).JsonString.Value,1,3) = 'TIT' then
                   begin
                     //ch_id_pedido := '0';

                     cad_cd_c_seq.locate('id_tabela','FAT_TB_M_NFE_TIT',[]);


                     if InseriPedTit then
                        begin
                          FAT_CD_M_PED_TIT.Insert;
                          InseriPedTit := false;
                        end
                     else
                        FAT_CD_M_PED_TIT.edit;


                     if TJSONPair(LItem).JsonString.Value = 'TITid' then
                        begin
                          ch_id_tit_ant := '0';
                          ch_id_tit_nov := TJSONPair(LItem).JsonValue.Value;
                        end;

                     if strtoint(ch_id_tit_nov) > 0 then
                        begin
                           if (ch_id_tit_ant <> ch_id_tit_nov) then
                               begin
                                 ch_id_tit_ant := ch_id_tit_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;

                                 FAT_CD_M_PED_TIT.FieldByName('id_titulo').AsInteger :=
                                        CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;

                                 CAD_CD_C_SEQ.Post;
                               end
                           //else
                           //    FAT_CD_M_PED_TIT.edit;
                        end;

                           if TJSONPair(LItem).JsonString.Value = 'TITpedido' then
                              begin
                                if FAT_CD_M_PED.Locate('id_pedido_temp_mob',TJSONPair(LItem).JsonValue.Value,[]) then
                                   FAT_CD_M_PED_TIT.FieldByName('id_pedido').AsString :=
                                      FAT_CD_M_PED.FieldByName('id_pedido').AsString;
                              end;

                           if TJSONPair(LItem).JsonString.Value = 'TITdtatitulo' then
                               FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'TITvlrtitulo' then
                               FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'TITformapag' then
                               FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger            := 0;
                           FAT_CD_M_PED_TIT.FieldByName('CHE_BANCO').text            := '';
                           FAT_CD_M_PED_TIT.FieldByName('CHE_AGENCIA').text          := '';
                           FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsString        := '';
                           FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').AsInteger      := 0;
                           FAT_CD_M_PED_TIT.FieldByName('CHE_EMITENTE').text         := '';

                           FAT_CD_M_PED_TIT.Post;
                   end;
              end;
         end;
     try

       if not FAT_CD_M_PED.IsEmpty then
          begin
             FAT_CD_M_PED.First;
             while not FAT_CD_M_PED.Eof do
                begin
                  FAT_CD_M_PED.edit;
                  FAT_CD_M_PED.FieldByName('id_pedido_temp_mob').AsInteger := 0;
                  FAT_CD_M_PED.Post;
                  FAT_CD_M_PED.Next;
                end;
             FAT_CD_M_PED.First;
         end;

      { AssignFile(Arquivo,'c:\logs\sql.txt');
       Rewrite(Arquivo); //abre o arquivo para escrita

       if not FAT_CD_M_PED_TIT.IsEmpty then
          begin
             FAT_CD_M_PED_TIT.First;
             while not FAT_CD_M_PED_TIT.Eof do
                begin
                   Writeln(Arquivo,FAT_CD_M_PED_TIT.FieldByName('id_pedido').Asstring);


                  FAT_CD_M_PED_TIT.Next;
                end;
             FAT_CD_M_PED_TIT.First;
          end;
       Closefile(Arquivo); //fecha o handle de arquivo}


      GerarSqlTxt('tbPedidosCli Parte 2 -' + ' Preparando para dar saída no estoque dos itens do pedido');


      listaItens := '';
      listaCor := '';
      listaTamanho := '';
      FAT_CD_M_PED_ITE.First;
      while not FAT_CD_M_PED_ITE.eof do
        begin
           if (listaItens <> '') then
              listaItens := listaItens + ',' +''''+
                                    FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString+''''
           else
              listaItens := listaItens +''''+
                                    FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString+'''';

           if (listaCor <> '') then
             listaCor := listaCor + ',' +''''+
                                    FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsString+''''
           else
              listaCor := listaCor +''''+
                                    FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsString+'''';

           if (listaTamanho <> '') then
               listaTamanho := listaTamanho + ',' +''''+
                                    FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString+''''
           else
               listaTamanho := listaTamanho +''''+
                                    FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString+'''';

          FAT_CD_M_PED_ITE.Next;
        end;

      EST_SQ_M_FEA := TSQLDataSet.Create(nil);
      EST_SQ_M_FEA.SQLConnection := ConexaoNW;
      EST_SQ_M_FEA.CommandType   := ctQuery;
      EST_SQ_M_FEA.CommandText   := 'SELECT * FROM EST_TB_M_FEA WHERE 1=2 ';

      EST_DP_M_FEA := TDataSetProvider.Create(nil);
        EST_DP_M_FEA .DataSet :=  EST_SQ_M_FEA;


      EST_CD_M_FEA := TClientDataSet.Create(nil);
      EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
      EST_CD_M_FEA.Open;


      EST_SQ_M_FES := TSQLDataSet.Create(nil);
      EST_SQ_M_FES.SQLConnection := ConexaoNW;
      EST_SQ_M_FES.CommandType   := ctQuery;
      EST_SQ_M_FES.CommandText   := 'SELECT * FROM EST_TB_M_FES WHERE  ID_EMPRESA='+FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString+' AND (ID_ITEM IN ('+listaItens+') or ID_COR IN ('+listaCor+') or ID_TAMANHO IN ('+listaTamanho+')) ';


      EST_DP_M_FES := TDataSetProvider.Create(nil);
        EST_DP_M_FES .DataSet :=  EST_SQ_M_FES;


      EST_CD_M_FES := TClientDataSet.Create(nil);
      EST_CD_M_FES.SetProvider(EST_DP_M_FES);
      EST_CD_M_FES.Open;

      GerarSqlTxt('tbPedidosCli Parte 3 -' + ' Iniciar a saída no estoque dos itens do pedido');
       GerarEstoquePedido(CAD_CD_C_SEQ,FAT_CD_M_PED,FAT_CD_M_PED_ITE,EST_CD_M_FEA,EST_CD_M_FES);

       Vtran := ConexaoNW.BeginTransaction;
       try
        if CAD_CD_C_SEQ <> nil then
          if (CAD_CD_C_SEQ.ChangeCount > 0) then
            retorno := CAD_CD_C_SEQ.ApplyUpdates(0);


        FAT_CD_M_PED.OnReconcileError := enReconcileError;
        if FAT_CD_M_PED <> nil then
           if (FAT_CD_M_PED.ChangeCount > 0) then
             retorno := FAT_CD_M_PED.ApplyUpdates(0);

        if FAT_CD_M_PED_ITE <> nil then
           if (FAT_CD_M_PED_ITE.ChangeCount > 0) then
              retorno := FAT_CD_M_PED_ITE.ApplyUpdates(0);

        if FAT_CD_M_PED_TIT <> nil then
           if (FAT_CD_M_PED_TIT.ChangeCount > 0) then
             retorno := FAT_CD_M_PED_TIT.ApplyUpdates(0);

        if EST_CD_M_FEA <> nil then
           if (EST_CD_M_FEA.ChangeCount > 0) then
              retorno := EST_CD_M_FEA.ApplyUpdates(0);

        if EST_CD_M_FES <> nil then
           if (EST_CD_M_FES.ChangeCount > 0) then
             retorno := EST_CD_M_FES.ApplyUpdates(0);

        ConexaoNW.CommitFreeAndNil(Vtran);

        except
          on e: exception do
            GerarSqlTxt('tbPedidosCli erro:' + e.Message);
        end;

        if retorno = 0 then
           begin
             GetInvocationMetadata().ResponseCode := 201;
             uPrincipal.Form1.mmTexto.Lines.Add('Post do pedido de venda foi sincronizado!');
           end
        else
           GetInvocationMetadata().ResponseCode := 404;


     finally
        ConexaoNW.RollbackIncompleteFreeAndNil(Vtran);
     end;


  finally

     if qryCons <> nil then
        FreeAndNil(qryCons);

     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);

     if FAT_CD_M_PED <> nil then
        FreeAndNil(FAT_CD_M_PED);

     if FAT_CD_M_PED_ITE <> nil then
        FreeAndNil(FAT_CD_M_PED_ITE);

     if FAT_CD_M_PED_TIT <> nil then
        FreeAndNil(FAT_CD_M_PED_TIT);

     if CAD_CD_C_SEQ <> nil then
        FreeAndNil(CAD_CD_C_SEQ);

     if jso <> nil then
        FreeAndNil(jso);

     GerarSqlTxt('tbPedidosCli Parte 4 -' + ' finalizando o pedido');
  end;

end;

function TSM.updatetbPefil(dados: TJSONArray): string;
begin
end;

function TSM.GerarEstoquePedido(CAD_CD_C_SEQ,cdsPai,cdsItens,EST_CD_M_FEA,EST_CD_M_FES:TClientDataSet):Boolean;
VAR
 { CAD_CD_C_SEQ:TClientDataSet;
  CAD_SQ_C_SEQ: TSQLDataSet;
  CAD_DP_C_SEQ:TDataSetProvider; }


  BUS_CD_C_ITE:TClientDataSet;

  BUS_CD_C_PAR_CTR:TClientDataSet;
  BUS_SQ_C_PAR_CTR: TSQLDataSet;
  BUS_DP_C_PAR_CTR:TDataSetProvider;

  id_fea,qtdeReg:Integer;
begin
     Result := true;

     TRY





       BUS_SQ_C_PAR_CTR := TSQLDataSet.Create(nil);
       BUS_SQ_C_PAR_CTR.close;
       BUS_SQ_C_PAR_CTR.SQLConnection := ConexaoNW;
       BUS_SQ_C_PAR_CTR.CommandType   := ctQuery;
       BUS_SQ_C_PAR_CTR.CommandText := ' SELECT ID_EMPRESA,PED_ACEITA_EST_NEGATIVO FROM CAD_TB_C_PAR_CTR ' +
                                       ' WHERE ID_EMPRESA='''+cdsPai.FieldByName('ID_EMPRESA').AsString+''' ';

       BUS_DP_C_PAR_CTR := TDataSetProvider.Create(nil);
       BUS_DP_C_PAR_CTR.DataSet :=  BUS_SQ_C_PAR_CTR;


       BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
       BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);
       BUS_CD_C_PAR_CTR.Open;







      { CAD_SQ_C_SEQ := TSQLDataSet.Create(nil);
       CAD_SQ_C_SEQ.close;
       CAD_SQ_C_SEQ.SQLConnection := ConexaoNW;
       CAD_SQ_C_SEQ.CommandType   := ctQuery;
       CAD_SQ_C_SEQ.CommandText := '';
       CAD_SQ_C_SEQ.CommandText := ' SELECT * FROM CAD_TB_C_SEQ ' +
                                   ' WHERE ID_TABELA in (''EST_TB_M_FEA'')';

       CAD_DP_C_SEQ := TDataSetProvider.Create(nil);
       CAD_DP_C_SEQ.DataSet :=  CAD_SQ_C_SEQ;


       CAD_CD_C_SEQ := TClientDataSet.Create(nil);
       CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);
       CAD_CD_C_SEQ.Open;

       qtdeReg := 0;
       cdsPai.First;
       while (not cdsPai.eof) do
         begin
           qtdeReg := qtdeReg + cdsItens.RecordCount;
           cdsPai.Next;
         end;



       if not (cad_cd_c_seq.locate('id_tabela','EST_TB_M_FEA',[])) then
          begin
             CAD_CD_C_SEQ.Insert;
             CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'EST_TB_M_FEA';
             id_fea := 1;
             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := qtdeReg;
             CAD_CD_C_SEQ.Post;
          end
       else
          begin
             CAD_CD_C_SEQ.Edit;
             id_fea := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
             CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger+
                                                                qtdeReg;
             CAD_CD_C_SEQ.Post;
          end;


       if CAD_CD_C_SEQ <> nil then
          if (CAD_CD_C_SEQ.ChangeCount > 0) then
             CAD_CD_C_SEQ.ApplyUpdates(0);  }

       if cad_cd_c_seq.locate('id_tabela','EST_TB_M_FEA',[]) then
          CAD_CD_C_SEQ.Edit;


       cdsPai.First;
       while not cdsPai.eof do
         begin
           cdsItens.First;
           while not cdsItens.eof do
             begin
               BUS_CD_C_ITE := TClientDataSet.Create(nil);
               BUS_CD_C_ITE.SetProvider(CAD_DP_C_ITE);
               BUS_CD_C_ITE.Data :=
                  BUS_CD_C_ITE.DataRequest(VarArrayOf([0,cdsItens.FieldByName('ID_ITEM').AsString]));

               if (BUS_CD_C_ITE.FieldByName('INT_TIPOITEM').AsString <> '09') then
                 begin
                   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                         CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger+1;

                   EST_CD_M_FEA.Insert;
                   EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger      := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;

                   EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := cdsPai.FieldByName('id_pedido').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;
                   EST_CD_M_FEA.FieldByName('QTDE').AsCurrency          := cdsItens.FieldByName('QTDE').AsCurrency;
                   EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger  := cdsPai.FieldByName('ID_EMPRESA').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger     := cdsItens.FieldByName('ID_ITEM').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_COR').text           := cdsItens.FieldByName('ID_COR').text;
                   EST_CD_M_FEA.FieldByName('ID_TAMANHO').text       := cdsItens.FieldByName('ID_TAMANHO').text;
                   EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat   := cdsItens.FieldByName('ID_SEQUENCIA').Asfloat;

                   EST_CD_M_FEA.FieldByName('DATA').AsDateTime    := cdsPai.FieldByName('DTA_PEDIDO').AsDateTime;
                   EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger := cdsPai.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;
                   EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger      := 6;

                   EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency     := cdsItens.FieldByName('VLR_BRUTO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency  := cdsItens.FieldByName('PER_DESCONTO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency  := cdsItens.FieldByName('VLR_DESCONTO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency     := 0;
                   EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency := cdsItens.FieldByName('VLR_LIQUIDO').AsCurrency;
                   EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger      := cdsPai.FieldByName('ID_PEDIDO').AsInteger;
                   EST_CD_M_FEA.FieldByName('ID_ORS').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger      := 0;
                   EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_MET').AsInteger         := 0;
                   EST_CD_M_FEA.FieldByName('ID_ORDEM').AsInteger       := 0;
                   EST_CD_M_FEA.FieldByName('NUM_LOTE').text            := '';
                   EST_CD_M_FEA.Post;



                   if EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                        VarArrayOf([cdsPai.FieldByName('ID_EMPRESA').AsString,
                                   cdsItens.FieldByName('id_item').AsString,
                                   cdsItens.FieldByName('id_cor').AsString,
                                   cdsItens.FieldByName('id_tamanho').AsString]),[]) then
                      begin
                          EST_CD_M_FES.Edit;

                          EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime  := Date;


                          EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                  EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency + cdsItens.FieldByName('QTDE').AsCurrency;

                          EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                       EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                         if ((EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency<0) and (not (BUS_CD_C_PAR_CTR.FieldByName('PED_ACEITA_EST_NEGATIVO').AsBoolean=true))) then
                            begin
                              GerarSqlTxt('Erro ao gerar saida de estoque: saldo do item negativo não permitido!');
                              uPrincipal.Form1.mmTexto.Lines.Add('Erro ao gerar saida de estoque: saldo do item negativo não permitido!');
                              abort;
                            end;
                          EST_CD_M_FES.Post;
                      end;

                   //inc(id_fea);
                 end;

               cdsItens.Next;
             end;
             cdsPai.Next;
         end;
         CAD_CD_C_SEQ.post;
      FINALLY
       // FreeAndNil(CAD_SQ_C_SEQ);
       // FreeAndNil(CAD_CD_C_SEQ);
      //  FreeAndNil(CAD_DP_C_SEQ);

        FreeAndNil(BUS_SQ_C_PAR_CTR);
        FreeAndNil(BUS_CD_C_PAR_CTR);
        FreeAndNil(BUS_DP_C_PAR_CTR);
        FreeAndNil(BUS_CD_C_ITE);
      END;

end;






function TSM.updatetbTitulosRec(dados: TJSONArray): TJsonArray;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  FIN_CD_C_REC: TClientDataSet;

  jsobj, jso: TJsonObject;

  nClientes,operacao,id_vendedor,
  id_cliente,cpfcnpj,numero,vencimento,valor,historico: string;

  qryCons1: TSQLQuery;

begin

  { Get da Tabela: FIN_TB_M_REC - Títulos do contas a receber
    Criado por: Maxsuel Victor
    Data: 13/01/2017
  }


  try

  txt := dados.ToString;

  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

  for LJsonValue in VJsonArray do
    begin
       for LItem in TJSONArray(LJsonValue) do
          begin
            if TJSONPair(LItem).JsonString.Value = 'operacao' then
               operacao := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'vendedor' then
               id_vendedor  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               id_cliente  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'cpfcnpj' then
               cpfcnpj  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'numero' then
               numero  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'vencimento' then
               vencimento  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'valor' then
               valor  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'historico' then
               historico  := TJSONPair(LItem).JsonValue.Value;
          end;
    end;

   qryCons1 := TSQLQuery.Create(nil);
   qryCons1.SQLConnection := ConexaoNW;

   // Irá localizar os clientes da semana do vendedor
   qryCons1.Close;
   qryCons1.SQL.Clear;
   qryCons1.SQL.Add(' SELECT cli.* FROM PRO_TB_M_VIS_CLI vcl ' +
                   '   left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' +
                   '   left outer join cad_tb_c_cli cli on cli.doc_cnpj_cpf = vcl.doc_cnpj_cpf ' +
                   ' WHERE vis.fechada =  false ' +
                   '   and vis.id_vendedor in (' + VarToStr(id_vendedor) +') ');
   qryCons1.Open;
   while not qryCons1.eof do
      begin
        if nClientes <> '' then
           begin
             nClientes :=
             nClientes + ',' +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
           end;
        if nClientes = '' then
           begin
             nClientes :=
             nClientes +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
           end;
        qryCons1.Next;
      end;

   // Depois irá localizar os títulos vencidos em aberto dos clientes
   qryCons1.Close;
   FreeAndNil(qryCons1);

   if trim(nClientes) <> ''  then
      begin
         qryCons1 := TSQLQuery.Create(nil);
         qryCons1.SQLConnection := ConexaoNW;

         qryCons1.Close;
         qryCons1.SQL.Clear;
         qryCons1.SQL.Add(' SELECT cli.id_cliente, cli.doc_cnpj_cpf,  rec.* FROM fin_tb_m_rec rec ' +
                         '   left outer join cad_tb_c_cli cli on cli.id_cliente = rec.id_cliente ' +
                         ' WHERE cli.id_cliente in (' + VarToStr(nClientes) +') ' +
                         '   and rec.dta_vencimento < current_date  ' +
                         '   and rec.vlr_saldo > 0 ');
         qryCons1.Open;

         jsObj := TJsonObject.Create();
         result := TJsonArray.Create();

         qryCons1.First;
         while not qryCons1.Eof  do
            begin
                jso := TJsonObject.Create();
                jso.AddPair(TJsonPair.Create('id',qryCons1.FieldByName('id_titulo').AsString));
                jso.AddPair(TJsonPair.Create('id_cliente',qryCons1.FieldByName('id_cliente').AsString));
                jso.AddPair(TJsonPair.Create('cliente',qryCons1.FieldByName('doc_cnpj_cpf').AsString));
                jso.AddPair(TJsonPair.Create('numero',qryCons1.FieldByName('num_parcela').AsString));
                jso.AddPair(TJsonPair.Create('vencimento',qryCons1.FieldByName('dta_vencimento').AsString));
                jso.AddPair(TJsonPair.Create('valor',qryCons1.FieldByName('vlr_saldo').AsString));
                jso.AddPair(TJsonPair.Create('historico',qryCons1.FieldByName('historico').AsString));
                result.AddElement(jso);
                qryCons1.Next;
            end;
         qryCons1.close;
         GetInvocationMetadata().ResponseCode := 200;
         GetInvocationMetadata().ResponseContent := result.ToString;
      end;
   uPrincipal.Form1.mmTexto.Lines.Add('Get do financeiro sincronizado!');

  finally
     if qryCons1 <> nil then
        FreeAndNil(qryCons1);
     if jso <> nil then
        FreeAndNil(jso);
     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);
  end;
end;

function TSM.updatetbUltimasVisitas(dados: TJSONArray): TJsonArray;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;

  jsobj, jso: TJsonObject;

  nClientes,operacao,id_vendedor, doc_cnpj_cpf,
  id_cliente,dta_visita,hora_ini,hora_fim, semana, obs, recomendacoes, id_empresa: string;

  qryCons1: TSQLQuery;
  semanaAtual:String;
begin

  { Get da Tabela: Últimas visitas
    Criado por: Maxsuel Victor
    Data: 20/02/2017
  }


  try

  txt := dados.ToString;

  VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;

  for LJsonValue in VJsonArray do
    begin
       for LItem in TJSONArray(LJsonValue) do
          begin
            if TJSONPair(LItem).JsonString.Value = 'operacao' then
               operacao := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'vendedor' then
               id_vendedor  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id_cliente' then
               id_cliente  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'doc_cnpj_cpf' then
               doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'dta_visita' then
               dta_visita  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'hora_ini' then
               hora_ini  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'hora_fim' then
               hora_fim  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'semana' then
               semana  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'obs' then
               obs  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'recomendacoes' then
               recomendacoes  := TJSONPair(LItem).JsonValue.Value;

            if TJSONPair(LItem).JsonString.Value = 'id_empresa' then
               id_empresa  := TJSONPair(LItem).JsonValue.Value;
          end;
    end;
   semanaAtual := IntToStr(WeekOfTheYear(date));
   qryCons1 := TSQLQuery.Create(nil);
   qryCons1.SQLConnection := ConexaoNW;

   // Irá localizar os clientes da semana do vendedor
   qryCons1.Close;
   qryCons1.SQL.Clear;
   qryCons1.SQL.Add(' SELECT cli.* FROM PRO_TB_M_VIS_CLI vcl ' +
                   '   left outer join pro_tb_m_vis vis on vis.id_vis = vcl.id_vis ' +
                   '   left outer join cad_tb_c_cli cli on cli.doc_cnpj_cpf = vcl.doc_cnpj_cpf ' +
                   ' WHERE vis.semana =  ' + semanaAtual + '  ' + #13#10 +
                   '   and vis.id_vendedor in (' + VarToStr(id_vendedor) +') ');
   qryCons1.Open;
   while not qryCons1.eof do
      begin
        if nClientes <> '' then
           begin
             nClientes :=
             nClientes + ',' +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
           end;
        if nClientes = '' then
           begin
             nClientes :=
             nClientes +''''+trim(qryCons1.FieldByName('id_cliente').AsString)+'''';
           end;
        qryCons1.Next;
      end;

   // Depois irá localizar os títulos vencidos em aberto dos clientes
   qryCons1.Close;
   FreeAndNil(qryCons1);

   if trim(nClientes) <> '' then
      begin
       qryCons1 := TSQLQuery.Create(nil);
       qryCons1.SQLConnection := ConexaoNW;

       qryCons1.Close;
       qryCons1.SQL.Clear;
       qryCons1.SQL.Add(' select * from cad_tb_c_vit vit ' +
                        '   left outer join cad_tb_c_cli cli on (cli.doc_cnpj_cpf = vit.doc_cnpj_cpf and ' +
                        '                                        cli.ativo = true ) ' +
                        ' WHERE vit.id_cliente in (' + VarToStr(nClientes) +') ' +
                        '   and vit.id_visita in (select vvv.id_visita from cad_tb_c_vit vvv ' +
                        '                         where vit.doc_cnpj_cpf = vvv.doc_cnpj_cpf  ' +
                        '                         order by vvv.dta_visita desc, vvv.id_visita desc limit 3) ' +
                        ' order by vit.doc_cnpj_cpf' );


       qryCons1.Open;

       jsObj := TJsonObject.Create();
       result := TJsonArray.Create();

       qryCons1.First;
       while not qryCons1.Eof  do
          begin
            jso := TJsonObject.Create();
            jso.AddPair(TJsonPair.Create('id_cliente',qryCons1.FieldByName('id_cliente').AsString));
            jso.AddPair(TJsonPair.Create('doc_cnpj_cpf',qryCons1.FieldByName('doc_cnpj_cpf').AsString));
            jso.AddPair(TJsonPair.Create('dta_visita',qryCons1.FieldByName('dta_visita').AsString));
            jso.AddPair(TJsonPair.Create('hora_ini',qryCons1.FieldByName('hor_ini').AsString));
            jso.AddPair(TJsonPair.Create('hora_fim',qryCons1.FieldByName('hor_fim').AsString));
            jso.AddPair(TJsonPair.Create('semana',qryCons1.FieldByName('semana').AsString));
            jso.AddPair(TJsonPair.Create('obs',qryCons1.FieldByName('obs').AsString));
            jso.AddPair(TJsonPair.Create('recomendacoes',qryCons1.FieldByName('recomendacoes').AsString));
            jso.AddPair(TJsonPair.Create('id_empresa',qryCons1.FieldByName('id_empresa').AsString));
            result.AddElement(jso);
            qryCons1.Next;
          end;
       qryCons1.close;
       GetInvocationMetadata().ResponseCode := 200;
       GetInvocationMetadata().ResponseContent := result.ToString;
      end;
   uPrincipal.Form1.mmTexto.Lines.Add('Get das últimas 3 visitas sincronizado!');

  finally
     if qryCons1 <> nil then
        FreeAndNil(qryCons1);
     if jso <> nil then
        FreeAndNil(jso);
     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);
  end;
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

//function TSM.testeGravarDados: TStream;
function TSM.updatetbGravarDados(dados: TJSONArray): TStream;
var
  VJSONArray: TJSONArray;
  LJsonValue,LItem: TJSONValue;
  txt: String;
  jsobj, jso: TJsonObject;
  Lista:  TJsonArray;

  CAD_CD_C_PAR_CTR,CAD_CD_C_SEQ: TClientDataSet;
  xClientes: String;

  operacao: string;

  id_cli_matriz,id_cliente, id_rota,nome, id_perfil_cli,
  id_funcionario, id_cidade,
  cep, endereco, numero, bairro, tel_fixo,
  tel_movel, email, sexo, dta_nascimento,
  filiacao,doc_cnpj_cpf,doc_ie_identidade,
  doc_ip, status_vis_mobile, id_vendedor,ativo,mac: String;

  qryCons: TSQLQuery;

  Vtran: TDBXTransaction;
  retornoSeq,retornoPed,RetornoCli,RetornoProVis,RetornoVit : integer;
  gravacao: string;

  CAD_CD_C_FUN: TClientDataSet;

  InseriCli, InseriCliPro, InseriCliProCul,
  InseriCliRvd : Boolean;

  VerifCli,VerifCliPro, VerifCliProCul,
  VerifVisFechar, VerifVisNovas,
  VerifCliRvd,VerifVit,VerifPed: Boolean;

  // CLI
  cliNovo: Boolean;
  NomeClientes: String;
  cli_id_rota, cli_nome, cli_id_perfil_cli,cli_operacao,
  cli_id_funcionario,cli_id_vendedor,cli_id_cidade,cli_cep,
  cli_endereco,cli_numero,cli_bairro,cli_tel_fixo,cli_tel_movel,
  cli_email,cli_sexo,cli_dta_nascimento,cli_filiacao,cli_id_cliente,
  cli_doc_cnpj_cpf,cli_doc_ie_identidade,cli_doc_ip,
  cli_status_vis_mobile,cli_ativo,cli_mac,cli_id_cli_matriz: String;

  // CliPro
  nClientesPro,nProMatriz: String;
  propriedade,tipo,administrador,propriedade_matriz: String;
  qryCons1: TSQLQuery;
  EndPreenchido,AdmPreenchido,NomePreenchido:Boolean;

  // CliProCul
  idade,area,produtividade,obs,lote,cultura,variedade: String;
  ObsPreenchido:Boolean;

  // CliRvd
  id_rvd, desc_revenda: String;

  // Visita
  InseriVis: Boolean;
  vit_id_cli_matriz: string;
  vit_id_cliente,vit_doc_cnpj_cpf, vit_id_vendedor: String;
  ch_id_visita_ant,ch_id_visita_nov        : integer;
  ch_id_visita_fot_ant,ch_id_visita_fot_nov: integer;
  ch_id_visita_km_ant,ch_id_visita_km_nov  : integer;

  // Visita fotos
  InseriVisFot: Boolean;
  FotoStr,pathFoto,NomeFoto: String;
  Arquivo: TextFile;
  base64Stream : TIdReadFileExclusiveStream;
  pngStream : TIdFileCreateStream;
  MIMEDecoder : TidDecoderMIME;
  sData: String;

  // Visita KM
  InseriVisKmt: Boolean;

  // Programação Visita
  anoVis: String;
  prox_visita: Integer;

  // Pedido
  i: integer;
  ped_id_cliente, ped_id_Cli_Matriz,
  ped_doc_cnpj_cpf,ped_id_vendedor: String;

  IdTipoMovEstoque: String;
  InseriPed,InseriPedIte,InseriPedTit: Boolean;

  DtaPed,ch_id_pedido_ant, ch_id_pedido_nov , ch_id_seq_item_ant,ch_id_seq_item_nov,
  ch_id_tit_ant,ch_id_tit_nov: string;

  x: string;

  EST_CD_M_FEA,EST_CD_M_FES:TClientDataSet;
  EST_SQ_M_FEA,EST_SQ_M_FES: TSQLDataSet;
  EST_DP_M_FEA,EST_DP_M_FES:TDataSetProvider;
  listaItens, listaCor, listaTamanho: String;

  // Pacote
  id_pmb: String;
  semana:String;
  campo:String;
begin

  // Ordem de Gravação dos dados:
     //  cli, cli_pro, cli_pro_cul, pedido, visita, cli_rvd
 try
  txt := dados.ToString;
 //GerarSqlTxt(txt);
// txt := percorreArquivoTexto('C:\e-north\branches\branch\enServerMobile\Servidor\jsonTeste.txt');


 PRO_CD_M_PMB.Open;
 PRO_CD_M_PMB.Insert;
 PRO_CD_M_PMB.FieldByName('dta_rec').AsDateTime := Date;
 PRO_CD_M_PMB.FieldByName('hor_rec').AsDateTime := time;
 PRO_CD_M_PMB.FieldByName('pacote_mobile').AsString := txt;
 PRO_CD_M_PMB.FieldByName('pacote_utilizado').AsBoolean := false;
 PRO_CD_M_PMB.Post;
 PRO_CD_M_PMB.ApplyUpdates(0);

 PRO_CD_M_PMB.close;
 PRO_SQ_M_PMB.close;
 PRO_SQ_M_PMB.CommandText := '';
 PRO_SQ_M_PMB.CommandText := ' SELECT MAX(ID_PMB) AS ID_PMB FROM PRO_TB_M_PMB ';
 PRO_CD_M_PMB.Open;

 id_pmb := PRO_CD_M_PMB.FieldByName('id_pmb').AsString;

 PRO_CD_M_PMB.close;

 uPrincipal.Form1.mmTexto.Lines.Add('Pacote: ' + id_pmb + ', recebido com sucesso!');
 uPrincipal.Form1.mmTexto.Lines.Add('');

 VJsonArray :=  TJSONObject.ParseJSONValue(
                 TEncoding.ASCII.GetBytes(txt),0) as TJSONArray;


 CAD_CD_C_CLI.close;
 CAD_SQ_C_CLI.close;
 CAD_SQ_C_CLI.CommandText := '';
 CAD_SQ_C_CLI.CommandText := ' SELECT * FROM CAD_TB_C_CLI WHERE 1 = 2 ';
 CAD_CD_C_CLI.Open;




 for LJsonValue in VJsonArray do
    begin
       CAD_CD_C_CLI.insert;

       for LItem in TJSONArray(LJsonValue) do
          begin
            x:= copy(TJSONPair(LItem).JsonString.Value,1,8);
            if copy(TJSONPair(LItem).JsonString.Value,1,8) = 'CLI_ENV_' then
               begin
                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_operacao' then
                     operacao := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_vendedor' then
                     id_funcionario := TJSONPair(LItem).JsonValue.Value;

                  //if (operacao = '0') and (id_funcionario <> '') then
                  //   break;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_rota' then
                     CAD_CD_C_CLI.FieldByName('id_rota').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_id' then
                     CAD_CD_C_CLI.FieldByName('id_cliente').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_nome' then
                     CAD_CD_C_CLI.FieldByName('nome').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_ativo' then
                     CAD_CD_C_CLI.FieldByName('ativo').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_perfil' then
                     CAD_CD_C_CLI.FieldByName('id_perfil_cli').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_rota' then
                     CAD_CD_C_CLI.FieldByName('id_rota').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_id_vendedor' then
                     CAD_CD_C_CLI.FieldByName('id_vendedor').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_codibgel' then
                     CAD_CD_C_CLI.FieldByName('id_cidade').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_cep' then
                     CAD_CD_C_CLI.FieldByName('cep').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_endereco' then
                     CAD_CD_C_CLI.FieldByName('endereco').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_numero' then
                     CAD_CD_C_CLI.FieldByName('numero').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_bairro' then
                     CAD_CD_C_CLI.FieldByName('bairro').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_telefone' then
                     CAD_CD_C_CLI.FieldByName('tel_fixo').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_celular' then
                     CAD_CD_C_CLI.FieldByName('tel_movel').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_email' then
                     CAD_CD_C_CLI.FieldByName('email').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_sexo' then
                     CAD_CD_C_CLI.FieldByName('sexo').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_dtanasc' then
                     CAD_CD_C_CLI.FieldByName('dta_nascimento').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_filiacao' then
                     CAD_CD_C_CLI.FieldByName('filiacao').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_id_cliente' then
                     CAD_CD_C_CLI.FieldByName('id_cliente').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_cpfcnpj' then
                     CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_id_cliente' then
                     begin
                        if xClientes <> '' then
                           begin
                             xClientes :=
                             xClientes + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                           end;
                        if xClientes = '' then
                           begin
                             xClientes :=
                             xClientes +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                           end;
                     end;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_rg' then
                     CAD_CD_C_CLI.FieldByName('doc_ie_identidade').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_ip' then
                     CAD_CD_C_CLI.FieldByName('doc_ip').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_visitado' then
                     CAD_CD_C_CLI.FieldByName('status_vis_mobile').AsString := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_mac' then
                     CAD_CD_C_CLI.FieldByName('id_cli_temp_mobile').AsString := '';
               end;


            if copy(TJSONPair(LItem).JsonString.Value,1,12) = 'CLI_PRO_ENV_' then
               begin
                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_operacao' then
                     operacao := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_vendedor' then
                     id_vendedor  := TJSONPair(LItem).JsonValue.Value;

                  if (operacao = '0') and (id_vendedor <> '') then
                     break;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_id_cliente' then
                     begin
                        if nClientesPro <> '' then
                           begin
                             nClientesPro :=
                             nClientesPro + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                           end;
                        if nClientesPro = '' then
                           begin
                             nClientesPro :=
                             nClientesPro +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                           end;
                     end;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_id_cliente' then
                     id_cliente  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_cpfcnpj' then
                     doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_propriedade' then
                     propriedade  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_tipo' then
                     tipo  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_descricao' then
                     nome  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_administrador' then
                     administrador  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_endereco' then
                     endereco  := TJSONPair(LItem).JsonValue.Value;
                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_cep' then
                     cep  := TJSONPair(LItem).JsonValue.Value;

                  if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_propriedade_matriz' then
                     begin
                       if TJSONPair(LItem).JsonValue.Value <> '0' then
                          begin
                             if nProMatriz <> '' then
                                begin
                                  nProMatriz :=
                                  nProMatriz + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                                end;
                             if nProMatriz = '' then
                                begin
                                  nProMatriz :=
                                  nProMatriz +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                                end;
                          end;
                     end;
               end;

             if copy(TJSONPair(LItem).JsonString.Value,1,8) = 'VIT_ENV_' then
                 begin


                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_id' then
                      begin
                       x:= TJSONPair(LItem).JsonString.Value;
                      end;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_empresa' then
                      x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_vendedor' then
                      begin
                        id_funcionario :=
                               TJSONPair(LItem).JsonValue.Value;
                      end;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_cnpjcpf' then
                      begin
                        x:= TJSONPair(LItem).JsonString.Value;
                      end;


                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_id_cliente' then
                      begin
                        x:= TJSONPair(LItem).JsonString.Value;
                      end;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_id_cli_matriz' then
                      begin
                        x:= TJSONPair(LItem).JsonString.Value;
                      end;


                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_veiculo' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_datavisita' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_obs' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_recomendacoes' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_placa' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_pedido' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_tipo' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_hor_ini' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_hor_fin' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_gpslatitude' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_gpslongitude' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_semana' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_semana_prox_vis' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_dta_prox_vis' then
                        x:= TJSONPair(LItem).JsonString.Value;

                   if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_remarcar_vis' then
                        x:= TJSONPair(LItem).JsonString.Value;
                 end;
          end;
       CAD_CD_C_CLI.cancel;
    end;

   VerifCli       := true;
   VerifCliPro    := true;
   VerifCliProCul := true;
   VerifCliRvd := true;
   VerifVit := true;
   VerifPed := true;
   VerifVisFechar := false;
   VerifVisNovas  := true;

   CAD_CD_C_FUN := TClientDataSet.Create(nil);
   CAD_CD_C_FUN.SetProvider(CAD_DP_C_FUN);

   CAD_SQ_C_FUN.close;
   CAD_SQ_C_FUN.CommandText := '';
   CAD_SQ_C_FUN.CommandText := ' SELECT * FROM CAD_TB_C_FUN ' +
                               ' WHERE ID_FUNCIONARIO = ' + id_funcionario;
   CAD_CD_C_FUN.Open;


   uPrincipal.Form1.mmTexto.Lines.Add('Vendedor: ' + CAD_CD_C_FUN.FieldByName('nome').AsString);
   uPrincipal.Form1.mmTexto.Lines.Add('');


   PRO_CD_M_PMB.close;
   PRO_SQ_M_PMB.close;
   PRO_SQ_M_PMB.CommandText := '';
   PRO_SQ_M_PMB.CommandText := ' SELECT * FROM PRO_TB_M_PMB WHERE ID_PMB = ' + id_pmb;
   PRO_CD_M_PMB.Open;
   PRO_CD_M_PMB.Edit;
   PRO_CD_M_PMB.FieldByName('id_funcionario').AsInteger :=
         CAD_CD_C_FUN.FieldByName('id_funcionario').AsInteger;
   PRO_CD_M_PMB.Post;
   PRO_CD_M_PMB.ApplyUpdates(0);


   CAD_CD_C_FUN.Close;

   CAD_CD_C_SEQ := TClientDataSet.Create(nil);
   CAD_CD_C_SEQ.SetProvider(CAD_DP_C_SEQ);

   CAD_SQ_C_SEQ.close;
   CAD_SQ_C_SEQ.CommandText := '';
   CAD_SQ_C_SEQ.CommandText := ' SELECT * FROM CAD_TB_C_SEQ  ' +
                               ' WHERE ID_TABELA in (''CAD_TB_C_CLI'',''CAD_TB_C_CLI_PRO'', '+
                               '                     ''CAD_TB_C_VIS'',''CAD_TB_C_VIT'',     '+
                               '                     ''FAT_TB_M_PED'',''FAT_TB_M_NFE_ITE'', '+
                               '                     ''FAT_TB_M_NFE_TIT'',''EST_TB_M_FEA'', '+
                               '                     ''CAD_TB_C_VIT_FOT'',''CAD_TB_C_VIT_KMT'') ';
   CAD_CD_C_SEQ.Open;

   if not (cad_cd_c_seq.locate('id_tabela','CAD_TB_C_CLI',[])) then
      begin
         CAD_CD_C_SEQ.Insert;
         CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_CLI';
         CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
         CAD_CD_C_SEQ.Post;
      end;
   if not (cad_cd_c_seq.locate('id_tabela','CAD_TB_C_CLI_PRO',[])) then
      begin
         CAD_CD_C_SEQ.Insert;
         CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_CLI_PRO';
         CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
         CAD_CD_C_SEQ.Post;
      end;

   if not (cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT',[])) then
      begin
         CAD_CD_C_SEQ.Insert;
         CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_VIT';
         CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
         CAD_CD_C_SEQ.Post;
      end;
   if not (cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT_FOT',[])) then
      begin
         CAD_CD_C_SEQ.Insert;
         CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_VIT_FOT';
         CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
         CAD_CD_C_SEQ.Post;
      end;
   if not (cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT_KMT',[])) then
      begin
         CAD_CD_C_SEQ.Insert;
         CAD_CD_C_SEQ.FieldByName('ID_TABELA').AsString := 'CAD_TB_C_VIT_KMT';
         CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString := '0';
         CAD_CD_C_SEQ.Post;
      end;
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

   try // 1º

   if xClientes <> '' then
      begin
         uPrincipal.Form1.mmTexto.Lines.Add('Buscando clientes....');

         // Clientes
         CAD_CD_C_CLI.close;
         CAD_SQ_C_CLI.close;
         CAD_SQ_C_CLI.CommandText := '';
         CAD_SQ_C_CLI.CommandText := ' SELECT * FROM CAD_TB_C_CLI ' +
                                     ' WHERE  id_cliente in  (' + VarToStr(xClientes) + ')  ';
         CAD_CD_C_CLI.Open;

         uPrincipal.Form1.mmTexto.Lines.Add('Buscar clientes....OK');
         // Fim *******************
      end;

   FAT_SQ_M_PED.close;
   FAT_SQ_M_PED.CommandText := '';
   FAT_SQ_M_PED.CommandText := ' SELECT  * FROM FAT_TB_M_PED ' +
                                 ' WHERE 1 = 2 ';
   FAT_CD_M_PED.Open;  


   CAD_SQ_C_VIT.close;
   CAD_SQ_C_VIT.CommandText := '';
   CAD_SQ_C_VIT.CommandText := ' SELECT 0 as int_id_visita_mob, * FROM CAD_TB_C_VIT ' +
                                 ' WHERE 1 = 2 ';
   CAD_CD_C_VIT.Open;



   if trim(nProMatriz) = '' then
      nProMatriz := '0';

   {CAD_SQ_C_CLI_PRO.close;
   CAD_SQ_C_CLI_PRO.CommandText := '';
   CAD_SQ_C_CLI_PRO.CommandText := ' SELECT cli.doc_cnpj_cpf, cpr.* FROM CAD_TB_C_CLI_PRO cpr ' +
                                   '   left outer join cad_tb_c_cli cli on (cli.id_cliente = cpr.id_cliente) ' +
                                   '  where cpr.id_propriedade in (' + VarToStr(nProMatriz) +') ';
   CAD_CD_C_CLI_PRO.Open;}
   // Fim ********************

   NomeClientes := 'Clientes: ';

   for LJsonValue in VJsonArray do
       begin
         InseriCli       := true;

           cli_operacao := '';
           cli_id_rota := '';
           cli_nome := '';
           cli_id_perfil_cli := '';
           cli_id_funcionario := '';
           cli_id_vendedor := '';
           cli_id_cidade := '';
           cli_cep := '';
           cli_endereco := '';
           cli_numero := '';
           cli_bairro := '';
           cli_tel_fixo := '';
           cli_tel_movel := '';
           cli_email := '';
           cli_sexo  := '';
           cli_dta_nascimento  := '';
           cli_filiacao := '';
           cli_id_cliente := '';
           cli_doc_cnpj_cpf  := '';
           cli_doc_ie_identidade := '';
           cli_doc_ip  := '';
           cli_status_vis_mobile := '';
           cli_ativo := '';
           cli_mac := '';
           cli_id_cli_matriz := '';

         InseriCliPro    := true;
         InseriCliProCul := true;
         InseriCliRvd    := true;

         InseriVis       := true;
           vit_id_cli_matriz := '';
           vit_id_cliente    := '';
           vit_doc_cnpj_cpf  := '';
           vit_id_vendedor  := '';
         InseriVisFot    := true;
         InseriVisKmt    := true;

         InseriPed    := true;
         InseriPedIte := true;
         InseriPedTit := true;

         ch_id_tit_ant := '0';
         ch_id_tit_nov := '0';


         for LItem in TJSONArray(LJsonValue) do
             begin
                // Início Cliente
                campo :=  TJSONPair(LItem).JsonString.Value;
                if copy(TJSONPair(LItem).JsonString.Value,1,8) = 'CLI_ENV_' then
                   begin
                      if InseriCli then
                         begin
                           cliNovo := false;
                           if VerifCli then
                              begin
                                VerifCli := false;
                                uPrincipal.Form1.mmTexto.Lines.Add('Recebendo os clientes...');
                              end;
                         end;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_operacao' then
                         cli_operacao := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_rota' then
                         cli_id_rota := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_nome' then
                         cli_nome := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_perfil' then
                         cli_id_perfil_cli := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_id_logado' then
                         cli_id_funcionario := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_id_vendedor' then
                         cli_id_vendedor := TJSONPair(LItem).JsonValue.Value;

                       if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_vendedor' then
                         cli_id_vendedor := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_codibge' then
                         cli_id_cidade := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_cep' then
                         cli_cep := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_endereco' then
                         cli_endereco := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_numero' then
                         cli_numero := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_bairro' then
                         cli_bairro := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_telefone' then
                         cli_tel_fixo := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_celular' then
                         cli_tel_movel := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_email' then
                         cli_email := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_sexo' then
                         cli_sexo  := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_dtanasc' then
                         cli_dta_nascimento  := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_filiacao' then
                         cli_filiacao := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_id_cliente' then
                         cli_id_cliente := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_cpfcnpj' then
                         cli_doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_rg' then
                         cli_doc_ie_identidade := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_ip' then
                         cli_doc_ip  := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_visitado' then
                         cli_status_vis_mobile := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_ativo' then
                         cli_ativo := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_mac' then
                         cli_mac := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_ENV_id_cli_matriz' then
                         cli_id_cli_matriz := TJSONPair(LItem).JsonValue.Value;

                      if (trim(cli_Id_cliente) <> '') and
                         (trim(cli_id_cli_matriz) <> '') and
                         (InseriCli) then
                         begin
                           InseriCli := false;
                           if (cli_id_cli_matriz <> '0') then
                              begin
                                if (CAD_CD_C_CLI.Locate('id_cliente',cli_id_cliente,[])) then
                                    begin
                                      CAD_CD_C_CLI.edit;

                                      NomeClientes := NomeClientes +#13 + 'Nome:' + cli_id_cliente+'-'+cli_nome;
                                    end;
                              end
                           else
                              begin
                                CAD_CD_C_CLI.Insert;

                                cliNovo := true;

                                cad_cd_c_seq.locate('id_tabela','CAD_TB_C_CLI',[]);

                                CAD_CD_C_SEQ.edit;
                                CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                CAD_CD_C_SEQ.Post;

                                CAD_CD_C_CLI.FieldByName('id_cliente').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                                //cli_id_cliente := CAD_CD_C_CLI.FieldByName('id_cliente').AsString;

                                if Length(cli_doc_cnpj_cpf) > 11 then
                                   CAD_CD_C_CLI.FieldByName('pessoa').AsString := '1'
                                else
                                   CAD_CD_C_CLI.FieldByName('pessoa').AsString := '0';

                                NomeClientes := NomeClientes +#13 + 'Nome Novo:' + CAD_CD_C_CLI.FieldByName('id_cliente').AsString+'-'+cli_nome;
                              end;
                           //cli_Id_cliente    := '';
                           //cli_Id_Cli_Matriz := '';
                         end;
                      if cliNovo then
                         begin
                           if cad_cd_c_cli.State in [dsInsert,dsEdit] then
                              begin
                                CAD_CD_C_CLI.FieldByName('nome').AsString := cli_nome;
                                CAD_CD_C_CLI.FieldByName('ativo').AsString := cli_ativo;
                                CAD_CD_C_CLI.FieldByName('id_perfil_cli').AsString := cli_id_perfil_cli;
                                CAD_CD_C_CLI.FieldByName('id_rota').AsString := cli_id_rota;
                                CAD_CD_C_CLI.FieldByName('id_responsavel').AsString := cli_id_funcionario;
                                CAD_CD_C_CLI.FieldByName('id_vendedor').AsString := cli_id_vendedor;
                                CAD_CD_C_CLI.FieldByName('id_cidade').AsString := cli_id_cidade;
                                CAD_CD_C_CLI.FieldByName('cep').AsString := cli_cep;
                                CAD_CD_C_CLI.FieldByName('endereco').AsString := cli_endereco;
                                CAD_CD_C_CLI.FieldByName('numero').AsString := cli_numero;
                                CAD_CD_C_CLI.FieldByName('bairro').AsString := cli_bairro;
                                CAD_CD_C_CLI.FieldByName('tel_fixo').AsString := cli_tel_fixo;
                                CAD_CD_C_CLI.FieldByName('tel_movel').AsString := cli_tel_movel;
                                CAD_CD_C_CLI.FieldByName('email').AsString := cli_email;
                                CAD_CD_C_CLI.FieldByName('sexo').AsString := cli_sexo;
                                CAD_CD_C_CLI.FieldByName('dta_nascimento').AsString := cli_dta_nascimento;
                                CAD_CD_C_CLI.FieldByName('dta_cadastro').AsString := DateToStr(date);
                                CAD_CD_C_CLI.FieldByName('filiacao').AsString := cli_filiacao;
                                CAD_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString := cli_doc_cnpj_cpf;
                                CAD_CD_C_CLI.FieldByName('doc_ie_identidade').AsString := cli_doc_ie_identidade;
                                CAD_CD_C_CLI.FieldByName('doc_ip').AsString := cli_doc_ip;
                                CAD_CD_C_CLI.FieldByName('situacao').AsString       := '0';
                                CAD_CD_C_CLI.FieldByName('dta_cadastro').AsDateTime := time;
                                CAD_CD_C_CLI.FieldByName('tipo_cliente').AsInteger  := 0; // Consumidor
                                CAD_CD_C_CLI.FieldByName('contribuinte').AsInteger  := 1; // Não contribuinte
                              end;
                         end;

                      if cad_cd_c_cli.State in [dsInsert,dsEdit] then
                         begin
                           CAD_CD_C_CLI.FieldByName('status_vis_mobile').AsString := cli_status_vis_mobile;
                           if (trim(cli_Id_cliente)  <> '') and
                              (trim(cli_id_vendedor) <> '') and
                              (trim(cli_doc_cnpj_cpf) <> '') and
                              (cli_id_cli_matriz = '0') then
                              begin
                                CAD_CD_C_CLI.FieldByName('id_cli_temp_mobile').AsString :=
                                      cli_id_cliente+'-'+cli_doc_cnpj_cpf+cli_id_vendedor;

                                uPrincipal.Form1.mmTexto.Lines.Add('');
                                uPrincipal.Form1.mmTexto.Lines.Add('cli - cnpj - vend mobile: ' + cli_id_cliente+'-'+cli_doc_cnpj_cpf+cli_id_vendedor + #13 +
                                                                   'id_cli_temp_mobile: ' + CAD_CD_C_CLI.FieldByName('id_cli_temp_mobile').AsString);
                                uPrincipal.Form1.mmTexto.Lines.Add('');
                              end;
                           CAD_CD_C_CLI.Post;
                           CAD_CD_C_CLI.edit;
                         end;
                   end;


                // Fim Cliente ************************************************

                // Inicio Propriedade do cliente
                campo :=  TJSONPair(LItem).JsonString.Value;
                if copy(TJSONPair(LItem).JsonString.Value,1,12) = 'CLI_PRO_ENV_' then
                   begin
                      if InseriCliPro then
                         begin
                           if VerifCliPro then
                              begin
                                VerifCliPro := false;
                                uPrincipal.Form1.mmTexto.Lines.Add('Recebendo as propriedades dos clientes...');
                              end;
                           id_cliente         := '';
                           doc_cnpj_cpf       := '';
                           id_vendedor        := '';
                           id_cli_matriz      := '';
                           propriedade_matriz := '';
                           NomePreenchido := false;
                           EndPreenchido := false;
                           AdmPreenchido := false;

                           InseriCliPro := false;
                         end;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_id_cliente' then
                         id_cliente  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_cpfcnpj' then
                         doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_propriedade' then
                         propriedade  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_vendedor' then
                         id_vendedor  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_tipo' then
                         tipo  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_descricao' then
                        begin
                         nome  := TJSONPair(LItem).JsonValue.Value;
                         NomePreenchido := true;
                        end;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_administrador' then
                        begin
                         administrador  := TJSONPair(LItem).JsonValue.Value;
                         AdmPreenchido := true;
                        end;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_endereco' then
                        begin
                         endereco  := TJSONPair(LItem).JsonValue.Value;
                         EndPreenchido := true;
                        end;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_cep' then
                         cep  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_propriedade_matriz' then
                         propriedade_matriz  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_ENV_id_cli_matriz' then
                         id_cli_matriz  := TJSONPair(LItem).JsonValue.Value;
                   end;

                 if (trim(id_cliente)    <> '') and
                    (trim(doc_cnpj_cpf)  <> '') and
                    (trim(id_vendedor)   <> '') and
                    (trim(id_cli_matriz) <> '') and
                    (trim(propriedade_matriz) <> '') and
                    (EndPreenchido = true) and
                    (AdmPreenchido = true) and
                    (NomePreenchido = true) and
                    (InseriCliPro=false) then
                     begin

                       InseriCliPro := false;

                       if trim(id_cli_matriz) <> '' then
                          begin
                             if id_cli_matriz <> '0' then
                                begin
                                   if (CAD_CD_C_CLI_PRO.Locate('id_cliente;id_propriedade',varArrayOf([id_cli_matriz,propriedade_matriz]),[])) then
                                      begin
                                        CAD_CD_C_CLI_PRO.edit;
                                      end
                                   else
                                      begin
                                        cad_cd_c_seq.locate('id_tabela','CAD_TB_C_CLI',[]);

                                        CAD_CD_C_SEQ.edit;

                                        CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                            CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                        CAD_CD_C_SEQ.Post;

                                        CAD_CD_C_CLI_PRO.Insert;
                                        //CAD_CD_C_CLI_PRO.FieldByName('id_cliente').AsString      := id_cli_matriz;
                                        CAD_CD_C_CLI_PRO.FieldByName('id_propriedade').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                                      end;
                                end
                             else
                                begin
                                  // Irá buscar o cliente pelo cnpj_cpf
                                  {qryCons1.Close;
                                  qryCons1.SQL.Clear;
                                  qryCons1.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                                    ' WHERE cli.id_cli_temp_mobile = ''' + VarToStr(id_cliente+'-'+doc_cnpj_cpf+id_vendedor) + ''' ');
                                  qryCons1.Open;}

                                  cad_cd_c_seq.locate('id_tabela','CAD_TB_C_CLI_PRO',[]);

                                  CAD_CD_C_SEQ.edit;
                                  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                      CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                  CAD_CD_C_SEQ.Post;

                                  CAD_CD_C_CLI_PRO.Insert;
                                  CAD_CD_C_CLI_PRO.FieldByName('id_propriedade').AsInteger := CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                                  //qryCons1.close;
                                end;
                              id_cli_matriz := '';
                          end;

                       CAD_CD_C_CLI_PRO.FieldByName('nome').AsString := nome;
                       CAD_CD_C_CLI_PRO.FieldByName('tipo').AsString := tipo;
                       CAD_CD_C_CLI_PRO.FieldByName('administrador').AsString := administrador;
                       CAD_CD_C_CLI_PRO.FieldByName('endereco').AsString := endereco;
                       CAD_CD_C_CLI_PRO.FieldByName('cep').AsString := cep;
                       CAD_CD_C_CLI_PRO.FieldByName('id_pro_mob_temp').AsString := propriedade;
                       CAD_CD_C_CLI_PRO.Post;
                       CAD_CD_C_CLI_PRO.edit;
                     end;

                campo :=  TJSONPair(LItem).JsonString.Value;
                if copy(TJSONPair(LItem).JsonString.Value,1,16) = 'CLI_PRO_CUL_ENV_' then
                   begin
                      if InseriCliProCul then
                         begin
                           if VerifCliProCul then
                              begin
                                VerifCliProCul := false;
                                uPrincipal.Form1.mmTexto.Lines.Add('Recebendo as culturas das propriedades dos clientes...');
                              end;
                           id_cliente         := '';
                           propriedade        := '';
                           lote               := '';
                           id_cli_matriz      := '';
                           cultura            := '';
                           obsPreenchido      := false;
                           InseriCliProCul    := false;
                         end;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_id_cliente' then
                         id_cliente  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_cpfcnpj' then
                         doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_propriedade' then
                         propriedade  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_cultura' then
                         cultura  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_lote' then
                         lote  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_idade' then
                         idade  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_area' then
                         area  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_produtividade' then
                         produtividade  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_obs' then
                       begin
                         obs  := TJSONPair(LItem).JsonValue.Value;
                         ObsPreenchido :=true;
                       end;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_variedade' then
                         variedade  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_id_cli_matriz' then
                         id_cli_matriz  := TJSONPair(LItem).JsonValue.Value;
                      if TJSONPair(LItem).JsonString.Value = 'CLI_PRO_CUL_ENV_propriedade_matriz' then
                         propriedade_matriz  := TJSONPair(LItem).JsonValue.Value;
                   end;


                if (trim(id_cliente)    <> '') and
                   (trim(propriedade)   <> '') and
                   (trim(lote)          <> '') and
                   (trim(id_cli_matriz) <> '') and
                   (trim(cultura)       <> '') and
                   (trim(propriedade_matriz) <>'') and
                   (ObsPreenchido = true) and
                   (InseriCliProCul=false) then
                    begin
                       // Irá localizar o cliente da semana do vendedor
                       {if id_cli_matriz <> '0' then
                          begin
                           qryCons1.Close;
                           qryCons1.SQL.Clear;
                           qryCons1.SQL.Add(' SELECT cli.* FROM cad_tb_c_cli cli ' +
                                                 ' WHERE cli.id_cliente = ''' + VarToStr(id_cliente)+'''');
                           qryCons1.Open;
                          end
                       else
                          begin
                            qryCons1.Close;
                            qryCons1.SQL.Clear;
                            qryCons1.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                              ' WHERE cli.id_cli_temp_mobile = ''' + VarToStr(id_cliente+'-'+doc_cnpj_cpf+id_vendedor) + ''' ');
                            qryCons1.Open;
                          end;   }

                       //IdCliente := qryCons1.FieldByName('id_cliente').AsString;

                       if (trim(propriedade_matriz) = '0') then
                         begin
                           CAD_CD_C_CLI_PRO.Locate('id_pro_mob_temp',varArrayOf([propriedade]),[]);
                         end
                       else
                         begin
                           CAD_CD_C_CLI_PRO.Locate('id_propriedade',varArrayOf([propriedade]),[]);
                         end;


                       if trim(id_cli_matriz) <> '' then
                          begin
                             if (strtoint(propriedade_matriz) > 0) and (CAD_CD_C_CLI_PRO_CUL.Locate('id_propriedade;lote;id_cultura',varArrayOf([propriedade,lote,cultura]),[])) then
                                begin
                                  // Situacao 1 -> O Usuário está alterando uma cultura que já existe;
                                  // Situacao 2 -> O Usuário criou uma cultura depois de sincronizado e que depois criou uma cultura nova no mobile
                                  //               e que na Matriz outro usuário criou a mesma cultura, sendo assim, a cultura do mobile irá atualizar os dados
                                  //               na Matriz.
                                  CAD_CD_C_CLI_PRO_CUL.edit;
                                end
                              else
                                begin
                                  //Situacao 1 -> A propriedade já existia na Matriz, mas o usuário criou uma nova cultura.
                                  //Situacao 2 -> A propriedade não exisita (foi criada no mobile) e o usuário criou uma nova cultura.


                                  //Situacao 1
                                  if strtoint(propriedade_matriz) > 0 then
                                     begin
                                       CAD_CD_C_CLI_PRO_CUL.Insert;
                                       //CAD_CD_C_CLI_PRO_CUL.FieldByName('id_cliente').AsString      := IdCliente;
                                       CAD_CD_C_CLI_PRO_CUL.FieldByName('id_propriedade').AsString  := propriedade_matriz;
                                     end
                                  else
                                     begin
                                        //Situacao 2
                                        {qryCons2.Close;
                                        qryCons2.SQL.Clear;
                                        qryCons2.SQL.Add(' SELECT * FROM CAD_TB_C_CLI_PRO CPR ' +
                                                          '  left outer join cad_tb_c_cli cli on (cli.id_cliente = cpr.id_cliente) ' +
                                                          ' where cpr.id_pro_mob_temp = ' + VarToStr(propriedade) +
                                                          '   and cli.id_cliente = ''' + VarToStr(id_cliente)+'''');
                                        qryCons2.Open;
                                        propriedade := qryCons2.FieldByName('id_propriedade').AsString;
                                        qryCons2.Close;  }

                                        CAD_CD_C_CLI_PRO_CUL.Insert;
                                        //CAD_CD_C_CLI_PRO_CUL.FieldByName('id_cliente').AsString      := IdCliente;
                                        //CAD_CD_C_CLI_PRO_CUL.FieldByName('id_propriedade').AsString  := propriedade;
                                        CAD_CD_C_CLI_PRO_CUL.FieldByName('id_propriedade').AsString  :=
                                               CAD_CD_C_CLI_PRO.FieldByName('id_propriedade').AsString;
                                     end;
                                end;
                             id_cli_matriz := '';
                          end;
                       //CAD_CD_C_CLI_PRO_CUL.FieldByName('id_cliente').AsString := IdCliente;
  //                     CAD_CD_C_CLI_PRO_CUL.FieldByName('id_propriedade').AsString := propriedade;


                       CAD_CD_C_CLI_PRO_CUL.FieldByName('lote').AsString := lote;
                       CAD_CD_C_CLI_PRO_CUL.FieldByName('id_cultura').AsString := cultura;
                       CAD_CD_C_CLI_PRO_CUL.FieldByName('idade').AsString := idade;
                       CAD_CD_C_CLI_PRO_CUL.FieldByName('area').AsString := area;
                       CAD_CD_C_CLI_PRO_CUL.FieldByName('produtividade').AsString := produtividade;
                       CAD_CD_C_CLI_PRO_CUL.FieldByName('obs').AsString := obs;
                       CAD_CD_C_CLI_PRO_CUL.FieldByName('variedade').AsString := variedade;
                       CAD_CD_C_CLI_PRO_CUL.Post;
                   end;

                if copy(TJSONPair(LItem).JsonString.Value,1,12) = 'CLI_RVD_ENV_' then
                   begin
                      if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_operacao' then
                         operacao := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_vendedor' then
                         id_vendedor  := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_mac' then
                         mac  := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_ativo' then
                         ativo  := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_doc_cnpj_cpf' then
                         doc_cnpj_cpf  := TJSONPair(LItem).JsonValue.Value;


                      if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_id_cliente' then
                         begin
                           id_cliente := TJSONPair(LItem).JsonValue.Value;
                         end;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_id_cli_matriz' then
                         id_cli_matriz  := TJSONPair(LItem).JsonValue.Value;

                        {if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_id_cli_matriz' then
                           begin
                              if nClientes <> '' then
                                 begin
                                   nClientes :=
                                   nClientes + ',' +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                                 end;
                              if nClientes = '' then
                                 begin
                                   nClientes :=
                                   nClientes +''''+trim(TJSONPair(LItem).JsonValue.Value)+'''';
                                 end;
                           end; }

                      if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_id_rvd' then
                         id_rvd  := TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'CLI_RVD_ENV_desc_revenda' then
                         desc_revenda  := TJSONPair(LItem).JsonValue.Value;


                        {qryCons1 := TSQLQuery.Create(nil);
                        qryCons1.SQLConnection := ConexaoNW;

                        // Irá localizar o cliente

                        if LowerCase(ativo) = 'true' then
                            begin
                              qryCons1.Close;
                              qryCons1.SQL.Clear;
                              qryCons1.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                                ' WHERE cli.id_cliente in  (' + VarToStr(nClientes) + ')');
                              qryCons1.Open;
                            end
                        else
                            begin
                              qryCons1.Close;
                              qryCons1.SQL.Clear;
                              qryCons1.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                                ' WHERE cli.id_cli_temp_mobile = ''' + VarToStr(id_cliente+'-'+doc_cnpj_cpf+id_vendedor) + ''' ');
                              qryCons1.Open;

                              if cnpj_cpf_mac <> '' then
                                 begin
                                   cnpj_cpf_mac :=
                                   cnpj_cpf_mac + ',' +''''+trim(qryCons1.FieldByName('id_cli_temp_mobile').AsString)+'''';
                                 end;
                              if cnpj_cpf_mac = '' then
                                 begin
                                   cnpj_cpf_mac :=
                                   cnpj_cpf_mac +''''+trim(qryCons1.FieldByName('id_cli_temp_mobile').AsString)+'''';
                                 end;
                            end; }


                        //qryCons1.close;
                        //FreeAndNil(qryCons1);
                   end;

                if trim(id_rvd) <> '' then
                   begin
                      if VerifCliRvd then
                         begin
                           VerifCliRvd := false;
                           uPrincipal.Form1.mmTexto.Lines.Add('Recebendo as revendas dos clientes...');
                         end;
                      CAD_CD_C_CLI_RVD.Insert;
                      //CAD_CD_C_CLI_RVD.FieldByName('id_cliente').AsString := qryCons1.FieldByName('id_cliente').AsString;
                      CAD_CD_C_CLI_RVD.FieldByName('id_rvd').AsString     := id_rvd;

                      CAD_CD_C_CLI.FieldByName('id_cli_temp_mobile').AsString := '';

                      CAD_CD_C_CLI_RVD.Post;
                   end;

                if copy(TJSONPair(LItem).JsonString.Value,1,8) = 'VIT_ENV_' then
                   begin
                     if InseriVis then
                        begin
                          if VerifVit then
                             begin
                               VerifVit := false;
                               uPrincipal.Form1.mmTexto.Lines.Add('Recebendo as Visitas dos clientes...');
                             end;
                          CAD_CD_C_VIT.Insert;
                          InseriVis := false;
                        end
                     else
                          CAD_CD_C_VIT.edit;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_id' then
                        begin
                          CAD_CD_C_VIT.FieldByName('int_id_visita_mob').AsString :=
                               TJSONPair(LItem).JsonValue.Value;
                          ch_id_visita_nov := CAD_CD_C_VIT.FieldByName('int_id_visita_mob').AsInteger;
                        end;

                     if CAD_CD_C_VIT.FieldByName('int_id_visita_mob').AsInteger > 0 then
                        begin
                           cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT',[]);

                            if ch_id_visita_ant <> ch_id_visita_nov  then
                               begin
                                 ch_id_visita_ant :=  ch_id_visita_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                 CAD_CD_C_SEQ.Post;

                                 CAD_CD_C_VIT.FieldByName('id_visita').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                               end
                        end;
                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_empresa' then
                         CAD_CD_C_VIT.FieldByName('id_empresa').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_vendedor' then
                        begin
                         CAD_CD_C_VIT.FieldByName('id_vendedor').AsString :=
                           TJSONPair(LItem).JsonValue.Value;
                         vit_id_vendedor := CAD_CD_C_VIT.FieldByName('id_vendedor').AsString;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_cnpjcpf' then
                        begin
                         CAD_CD_C_VIT.FieldByName('doc_cnpj_cpf').AsString :=
                            TJSONPair(LItem).JsonValue.Value;
                         vit_doc_cnpj_cpf := CAD_CD_C_VIT.FieldByName('doc_cnpj_cpf').AsString;
                        end;


                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_id_cliente' then
                        begin
                          CAD_CD_C_VIT.FieldByName('id_cliente').AsString :=
                            TJSONPair(LItem).JsonValue.Value;
                          vit_id_cliente := CAD_CD_C_VIT.FieldByName('id_cliente').AsString;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_id_cli_matriz' then
                        begin
                          vit_id_cli_matriz := TJSONPair(LItem).JsonValue.Value;
                        end;

                     if  (trim(vit_id_vendedor) <>  '') and
                         (trim(vit_id_cliente) <>   '') and
                         (trim(vit_doc_cnpj_cpf) <> '') and
                         (vit_id_cli_matriz <> '') then
                         begin
                           if vit_id_cli_matriz = '0' then
                              begin
                                 if cad_cd_c_cli.Locate('id_cli_temp_mobile',vit_id_cliente+'-'
                                                      +vit_doc_cnpj_cpf+
                                                       vit_id_vendedor,[]) then
                                    CAD_CD_C_VIT.FieldByName('id_cliente').AsString :=  cad_cd_c_cli.FieldByName('id_cliente').AsString
                                 else
                                   begin
                                     GerarSqlTxt('Erro ao tentar gerar a visita: código do cliente novo não localizado!');
                                     uPrincipal.Form1.mmTexto.Lines.Add('Erro ao tentar gerar a visita: código do cliente novo não localizado!');
                                     abort;
                                   end;
                              end;
                         end;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_veiculo' then
                         CAD_CD_C_VIT.FieldByName('id_veiculo').AsString :=
                            TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_datavisita' then
                         CAD_CD_C_VIT.FieldByName('dta_visita').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_obs' then
                        CAD_CD_C_VIT.FieldByName('obs').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_recomendacoes' then
                         CAD_CD_C_VIT.FieldByName('recomendacoes').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_placa' then
                         CAD_CD_C_VIT.FieldByName('placa').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_pedido' then
                         CAD_CD_C_VIT.FieldByName('id_pedido_mobile').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_tipo' then
                        begin
                          CAD_CD_C_VIT.FieldByName('tipo_mobile').AsString :=
                             TJSONPair(LItem).JsonValue.Value;
                          if CAD_CD_C_VIT.FieldByName('tipo_mobile').AsString = '2' then
                             VerifVisFechar := true;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_hor_ini' then
                        CAD_CD_C_VIT.FieldByName('hor_ini').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_hor_fin' then
                         CAD_CD_C_VIT.FieldByName('hor_fim').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_gpslatitude' then
                         CAD_CD_C_VIT.FieldByName('gps_latitude').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_gpslongitude' then
                         CAD_CD_C_VIT.FieldByName('gps_longitude').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_semana' then
                         CAD_CD_C_VIT.FieldByName('semana').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_semana_visitada' then
                         CAD_CD_C_VIT.FieldByName('semana_visitada').AsString :=
                            IntToStr(WeekOfTheYear(date));

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_semana_prox_vis' then
                         CAD_CD_C_VIT.FieldByName('semana_prox_vis').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_dta_prox_vis' then
                         CAD_CD_C_VIT.FieldByName('dta_prox_vis').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_ENV_remarcar_vis' then
                         CAD_CD_C_VIT.FieldByName('remarcar_vis').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     CAD_CD_C_VIT.Post;
                   end;

               if copy(TJSONPair(LItem).JsonString.Value,1,12) = 'VIT_FOT_ENV_' then
                  begin
                     cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT_FOT',[]);

                     if InseriVisFot then
                        begin
                          CAD_CD_C_VIT_FOT.Insert;
                          InseriVisFot := false;
                        end
                     else
                        CAD_CD_C_VIT_FOT.edit;


                     if TJSONPair(LItem).JsonString.Value = 'VIT_FOT_ENV_id' then
                        begin
                          ch_id_visita_fot_ant := 0;
                          ch_id_visita_fot_nov := strtoint(TJSONPair(LItem).JsonValue.Value);
                        end;

                     if ch_id_visita_fot_nov > 0 then
                        begin

                           if (ch_id_visita_fot_ant <> ch_id_visita_fot_nov) then
                               begin
                                 ch_id_visita_fot_ant := ch_id_visita_fot_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                 CAD_CD_C_SEQ.Post;

                                 CAD_CD_C_VIT_FOT.FieldByName('id_vit_fot').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                               end
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_FOT_ENV_visita' then
                        begin
                          {if CAD_CD_C_VIT.Locate('int_id_visita_mob',TJSONPair(LItem).JsonValue.Value,[]) then
                             CAD_CD_C_VIT_FOT.FieldByName('id_visita').AsString :=
                                CAD_CD_C_VIT.FieldByName('id_visita').AsString; }
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_FOT_ENV_obs' then
                        begin
                          CAD_CD_C_VIT_FOT.FieldByName('obs').AsString :=
                              TJSONPair(LItem).JsonValue.Value;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_FOT_ENV_foto' then
                        begin
                          if TJSONPair(LItem).JsonValue.Value <> '' then
                             begin
                               FotoStr := TJSONPair(LItem).JsonValue.Value;

                               if (CAD_CD_C_VIT_FOT.FieldByName('id_visita').AsInteger  > 0) and
                                  (CAD_CD_C_VIT_FOT.FieldByName('id_vit_fot').AsInteger > 0) then
                                   begin
                                     pathFoto := ExtractFilePath(Application.ExeName)+'emp'+CAD_CD_C_VIT.FieldByName('id_empresa').AsString+'\FotosTablets';

                                     if not (DirectoryExists(pathFoto)) then
                                        begin
                                          ForceDirectories(pathFoto);
                                        end;

                                      NomeFoto := 'FotoVis'+CAD_CD_C_VIT.FieldByName('id_empresa').AsString + '-'+
                                                   CAD_CD_C_VIT_FOT.FieldByName('id_visita').AsString+'-'+
                                                   CAD_CD_C_VIT_FOT.FieldByName('id_vit_fot').AsString;

                                      CAD_CD_C_VIT_fot.FieldByName('caminho_foto').AsString :=
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
                                                while ReadLnFromStream(base64Stream, sData) do
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
                        end;
                      CAD_CD_C_VIT_FOT.Post;
                  end;

                if copy(TJSONPair(LItem).JsonString.Value,1,12) = 'VIT_KMT_ENV_' then
                   begin
                     cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIT_KMT',[]);

                     if InseriVisKmt then
                        begin
                          CAD_CD_C_VIT_KMT.Insert;
                          InseriVisKmt := false;
                        end
                     else
                        CAD_CD_C_VIT_KMT.edit;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_KMT_ENV_id' then
                        begin
                          ch_id_visita_km_ant := 0;
                          ch_id_visita_km_nov := strtoint(TJSONPair(LItem).JsonValue.Value);
                        end;

                     if ch_id_visita_km_nov > 0 then
                        begin
                           if (ch_id_visita_km_ant <> ch_id_visita_km_nov) then
                               begin
                                 ch_id_visita_km_ant := ch_id_visita_km_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                 CAD_CD_C_SEQ.Post;

                                 CAD_CD_C_VIT_KMT.FieldByName('id_km').AsInteger :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                               end
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_KMT_ENV_visita' then
                        begin
                          { if CAD_CD_C_VIT.Locate('int_id_visita_mob',TJSONPair(LItem).JsonValue.Value,[]) then
                             CAD_CD_C_VIT_KMT.FieldByName('id_visita').AsString :=
                                CAD_CD_C_VIT.FieldByName('id_visita').AsString;  }
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_KMT_ENV_veiculo' then
                         CAD_CD_C_VIT_KMT.FieldByName('id_veiculo').AsString :=
                            TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_KMT_ENV_kminicial' then
                         CAD_CD_C_VIT_KMT.FieldByName('km_inicial').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'VIT_KMT_ENV_kmfinal' then
                         CAD_CD_C_VIT_KMT.FieldByName('km_final').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     CAD_CD_C_VIT_KMT.Post;
                   end;



                if copy(TJSONPair(LItem).JsonString.Value,1,8) = 'PED_ENV_' then
                   begin
                     if InseriPed then
                        begin
                          if VerifPed then
                             begin
                               VerifPed := false;
                               uPrincipal.Form1.mmTexto.Lines.Add('Recebendo os pedidos do clientes...');
                             end;
                          FAT_CD_M_PED.Insert;
                          ped_id_cliente    := '';
                          ped_id_Cli_Matriz := '';
                          InseriPed := false;
                        end
                     else
                        FAT_CD_M_PED.edit;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_id' then
                        begin
                          FAT_CD_M_PED.FieldByName('id_pedido_temp_mob').AsString :=
                                 TJSONPair(LItem).JsonValue.Value;
                          ch_id_pedido_nov := FAT_CD_M_PED.FieldByName('id_pedido_temp_mob').AsString;
                        end;

                     if FAT_CD_M_PED.FieldByName('id_pedido_temp_mob').AsInteger > 0 then
                        begin
                           cad_cd_c_seq.locate('id_tabela','FAT_TB_M_PED',[]);

                           if ch_id_pedido_ant <> ch_id_pedido_nov  then
                              begin
                                 ch_id_pedido_ant := ch_id_pedido_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                 CAD_CD_C_SEQ.Post;

                                 FAT_CD_M_PED.FieldByName('id_pedido').AsString :=
                                      CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsString;
                              end;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_empresa' then
                        begin
                          FAT_CD_M_PED.FieldByName('id_empresa').AsString :=
                               TJSONPair(LItem).JsonValue.Value;

                          if IdTipoMovEstoque = '' then
                             begin
                                CAD_CD_C_PAR_CTR := TClientDataSet.Create(nil);
                                CAD_CD_C_PAR_CTR.SetProvider(CAD_DP_C_PAR_CTR);

                                CAD_SQ_C_PAR_CTR.close;
                                CAD_SQ_C_PAR_CTR.CommandText := '';
                                CAD_SQ_C_PAR_CTR.CommandText := ' SELECT  * FROM CAD_TB_C_PAR_CTR ' +
                                                                 ' WHERE id_empresa = ' + FAT_CD_M_PED.FieldByName('id_empresa').AsString;
                                CAD_CD_C_PAR_CTR.Open;
                                IdTipoMovEstoque := CAD_CD_C_PAR_CTR.FieldByName('mob_id_tipo_mov_estoque').AsString;
                                FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsString  :=  IdTipoMovEstoque;
                                CAD_CD_C_PAR_CTR.Close;
                                FreeAndNil(CAD_CD_C_PAR_CTR);
                             end
                          else
                             FAT_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsString  :=  IdTipoMovEstoque;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_semana' then
                         FAT_CD_M_PED.FieldByName('semana').AsString :=
                           TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_vendedor' then
                        begin
                          ped_id_vendedor :=  TJSONPair(LItem).JsonValue.Value;

                          FAT_CD_M_PED.FieldByName('id_vendedor').AsString :=
                             ped_id_vendedor;
                          FAT_CD_M_PED.FieldByName('id_atendente').AsString :=
                             ped_id_vendedor;
                          FAT_CD_M_PED.FieldByName('id_responsavel').AsString :=
                             ped_id_vendedor;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_dtapedido' then
                        begin
                          FAT_CD_M_PED.FieldByName('dta_pedido').AsString :=
                                  TJSONPair(LItem).JsonValue.Value;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_condicaopag' then
                        FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').text :=
                            TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_id_cliente' then
                        begin
                          ped_id_cliente    := TJSONPair(LItem).JsonValue.Value;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_id_cli_matriz' then
                        begin
                          ped_id_cli_matriz := TJSONPair(LItem).JsonValue.Value;;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_cpfcnpj' then
                        begin
                          ped_doc_cnpj_cpf := TJSONPair(LItem).JsonValue.Value;;
                        end;

                     if (trim(ped_id_cliente) <> '')   and (trim(ped_id_cli_matriz) <> '') and
                        (trim(ped_doc_cnpj_cpf) <> '') and (trim(ped_id_vendedor) <> '') then
                         begin
                           qryCons := TSQLQuery.Create(nil);
                           qryCons.SQLConnection := ConexaoNW;

                           if ped_id_cli_matriz = '0' then
                              begin
                                if cad_cd_c_cli.Locate('id_cli_temp_mobile',ped_id_cliente+'-'+ped_doc_cnpj_cpf+ped_id_vendedor,[]) then
                                   ped_id_cliente := cad_cd_c_cli.FieldByName('id_cliente').AsString
                                else
                                   begin
                                     GerarSqlTxt('Erro ao tentar gerar o pedido de venda: código do cliente novo não localizado!');
                                     uPrincipal.Form1.mmTexto.Lines.Add('Erro ao tentar gerar o pedido de venda: código do cliente novo não localizado!');
                                     abort;
                                   end;
                                {qryCons.Close;
                                qryCons.SQL.Clear;
                                qryCons.SQL.Add(' SELECT cli.id_cliente FROM cad_tb_c_cli cli ' +
                                                  ' WHERE cli.id_cli_temp_mobile = ''' + VarToStr(id_cliente+'-'+doc_cnpj_cpf+id_vendedor) + ''' ');
                                qryCons.Open;}
                              end
                           else
                              begin
                                 qryCons.Close;
                                 qryCons.SQL.Clear;
                                 qryCons.SQL.Add(' SELECT cli.* FROM cad_tb_c_cli cli ' +
                                                 ' WHERE cli.id_cliente = ''' + VarToStr(ped_id_cli_matriz)+ '''');
                                 qryCons.Open;
                                 ped_id_cliente := qryCons.FieldByName('id_cliente').text;
                              end;

                           FAT_CD_M_PED.FieldByName('id_cliente').text :=
                              ped_id_cliente;

                           ped_id_cliente := '';
                           ped_id_cli_matriz := '';

                           qryCons.close;
                           FreeAndNil(qryCons);
                         end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_dias' then
                        FAT_CD_M_PED.FieldByName('dias_cpg_prazo').AsString :=
                            TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_gpslatitude' then
                        FAT_CD_M_PED.FieldByName('GPS_LATITUDE').AsString :=
                            TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_gpslongitude' then
                        FAT_CD_M_PED.FieldByName('GPS_LONGITUDE').AsString :=
                            TJSONPair(LItem).JsonValue.Value;

                      if TJSONPair(LItem).JsonString.Value = 'PED_ENV_vlrbruto' then
                         begin
                           FAT_CD_M_PED.FieldByName('vlr_bruto').AsString :=
                               TJSONPair(LItem).JsonValue.Value;

                           if FAT_CD_M_PED.FieldByName('vlr_bruto').AsCurrency = 0 then
                              begin
                                 GerarSqlTxt('Erro ao tentar gerar o item do pedido: Item com valor bruto zerado!');
                                 uPrincipal.Form1.mmTexto.Lines.Add('Erro ao tentar gerar o item do pedido: Item com valor bruto zerado!');
                                 abort;
                              end;

                           FAT_CD_M_PED.FieldByName('vlr_desconto').Ascurrency   := 0;
                           FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency := 0;
                         end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_vlrdesconto' then
                        begin
                          FAT_CD_M_PED.FieldByName('vlr_desconto').AsString :=
                               TJSONPair(LItem).JsonValue.Value;
                          if FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
                             FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency       := RoundTo( (FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency *100)/
                                                                               FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency,-2);
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_vlrliquido' then
                        begin
                           FAT_CD_M_PED.FieldByName('vlr_liquido').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                           if FAT_CD_M_PED.FieldByName('vlr_liquido').AsCurrency = 0 then
                              begin
                                GerarSqlTxt('Erro ao tentar gerar o item do pedido: Item com valor líquido zerado!');
                                uPrincipal.Form1.mmTexto.Lines.Add('Erro ao tentar gerar o item do pedido: Item com valor líquido zerado!');
                                abort;
                              end;
                        end;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_hora' then
                        FAT_CD_M_PED.FieldByName('hor_pedido').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_id' then
                        FAT_CD_M_PED.FieldByName('id_pedido_mob').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     if TJSONPair(LItem).JsonString.Value = 'PED_ENV_obs' then
                        FAT_CD_M_PED.FieldByName('obs').AsString :=
                             TJSONPair(LItem).JsonValue.Value;

                     FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger            := 0;
                     FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger  := 0;
                     FAT_CD_M_PED.FieldByName('PCP_ID_OPR').AsInteger          := 0;
                     FAT_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency          := 0;
                     FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger              := 1;
                     FAT_CD_M_PED.FieldByName('DISPOSITIVO').AsString          := 'Mobile';
                     FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean         := false;
                     FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger      := 0;
                     FAT_CD_M_PED.FieldByName('CONFERIDO').AsBoolean           := false;
                     FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString       := 'I';//Pedido gerado pelo Mobile
                     FAT_CD_M_PED.Post;
                   end;


               if copy(TJSONPair(LItem).JsonString.Value,1,12) = 'PED_ITE_ENV_' then
                   begin
                     cad_cd_c_seq.locate('id_tabela','FAT_TB_M_NFE_ITE',[]);

                     if InseriPedIte then
                        begin
                          FAT_CD_M_PED_ITE.Insert;
                          InseriPedIte := false;
                        end
                     else
                        FAT_CD_M_PED_ITE.edit;



                     if TJSONPair(LItem).JsonString.Value = 'PED_ITE_ENV_item' then
                        begin
                          //FAT_CD_M_PED_ITE.Insert;
                          ch_id_seq_item_ant := '0';
                          FAT_CD_M_PED_ITE.FieldByName('id_item').AsString :=
                             TJSONPair(LItem).JsonValue.Value;
                          ch_id_seq_item_nov :=
                             FAT_CD_M_PED_ITE.FieldByName('id_item').AsString;
                        end;

                     if FAT_CD_M_PED_ITE.FieldByName('id_item').AsString <> '' then
                        begin
                           if (ch_id_seq_item_ant <> ch_id_seq_item_nov) then
                               begin
                                 ch_id_seq_item_ant := ch_id_seq_item_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;

                                 FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                                 CAD_CD_C_SEQ.Post;
                               end
                           //else
                           //    FAT_CD_M_PED_ITE.edit;
                        end;

                           if TJSONPair(LItem).JsonString.Value = 'PED_ITE_ENV_pedido' then
                              begin
                                {if FAT_CD_M_PED.Locate('id_pedido_temp_mob',TJSONPair(LItem).JsonValue.Value,[]) then
                                   FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsString :=
                                      FAT_CD_M_PED.FieldByName('id_pedido').AsString;}
                              end;


                           if TJSONPair(LItem).JsonString.Value = 'PED_ITE_ENV_qtde' then
                               FAT_CD_M_PED_ITE.FieldByName('qtde').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'PED_ITE_ENV_vlrunitario' then
                               FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'PED_ITE_ENV_vlrbruto' then
                               FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'PED_ITE_ENV_vlrdesconto' then
                               FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'PED_ITE_ENV_vlrliquido' then
                               FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'PED_ITE_ENV_perdesconto' then
                               FAT_CD_M_PED_ITE.FieldByName('per_desconto').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger           := 0;
                           FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger       := 0;
                           FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat     := 0;

                           FAT_CD_M_PED_ITE.FieldByName('vlr_unitario_orig').AsCurrency :=
                                   FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency;

                           FAT_CD_M_PED_ITE.Post;
                   end;

                if copy(TJSONPair(LItem).JsonString.Value,1,12) = 'PED_TIT_ENV_' then
                   begin
                     cad_cd_c_seq.locate('id_tabela','FAT_TB_M_NFE_TIT',[]);

                     if InseriPedTit then
                        begin
                          FAT_CD_M_PED_TIT.Insert;
                          InseriPedTit := false;
                        end
                     else
                        FAT_CD_M_PED_TIT.edit;


                     if TJSONPair(LItem).JsonString.Value = 'PED_TIT_ENV_id' then
                        begin
                          ch_id_tit_ant := '0';
                          ch_id_tit_nov := TJSONPair(LItem).JsonValue.Value;
                        end;

                     if strtoint(ch_id_tit_nov) > 0 then
                        begin
                           if (ch_id_tit_ant <> ch_id_tit_nov) then
                               begin
                                 ch_id_tit_ant := ch_id_tit_nov;

                                 CAD_CD_C_SEQ.edit;
                                 CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                     CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;

                                 FAT_CD_M_PED_TIT.FieldByName('id_titulo').AsInteger :=
                                        CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;

                                 CAD_CD_C_SEQ.Post;
                               end
                        end;

                           if TJSONPair(LItem).JsonString.Value = 'PED_TIT_ENV_pedido' then
                              begin
                                {if FAT_CD_M_PED.Locate('id_pedido_temp_mob',TJSONPair(LItem).JsonValue.Value,[]) then
                                   FAT_CD_M_PED_TIT.FieldByName('id_pedido').AsString :=
                                      FAT_CD_M_PED.FieldByName('id_pedido').AsString;   }
                              end;

                           if TJSONPair(LItem).JsonString.Value = 'PED_TIT_ENV_dtatitulo' then
                               FAT_CD_M_PED_TIT.FieldByName('dta_vencimento').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'PED_TIT_ENV_vlrtitulo' then
                               FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           if TJSONPair(LItem).JsonString.Value = 'PED_TIT_ENV_formapag' then
                               FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsString :=
                                   TJSONPair(LItem).JsonValue.Value;

                           FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger            := 0;
                           FAT_CD_M_PED_TIT.FieldByName('CHE_BANCO').text            := '';
                           FAT_CD_M_PED_TIT.FieldByName('CHE_AGENCIA').text          := '';
                           FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsString        := '';
                           FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').AsInteger      := 0;
                           FAT_CD_M_PED_TIT.FieldByName('CHE_EMITENTE').text         := '';

                           FAT_CD_M_PED_TIT.Post;
                   end;
             end;
       end;



   if CAD_CD_C_VIT <> nil then
      if (CAD_CD_C_VIT.ChangeCount > 0) then
          begin
            vit_id_vendedor :=  CAD_CD_C_VIT.FieldByName('id_vendedor').AsString;
            if trim(vit_id_vendedor) <> '' then
               begin
                  anoVis := copy(FormatDateTime('dd/mm/yyyy',date),7,4);
                  semana := IntToStr(WeekOfTheYear(date));
                  PRO_SQ_M_VIS.Close;
                  PRO_SQ_M_VIS.CommandText := 'SELECT * FROM PRO_TB_M_VIS ' +
                                              ' WHERE ANO = ' + anoVis  +
                                              '   and id_vendedor = '   + vit_id_vendedor +
                                              '   and semana = ' + semana + '  ';
                  PRO_CD_M_VIS.Open;

                  CAD_CD_C_VIT.First;
                  while not CAD_CD_C_VIT.Eof do
                     begin
                        // Caso tenha visita para remarcar (nova programação de visita)
                        if CAD_CD_C_VIT.FieldByName('remarcar_vis').AsBoolean then
                           begin
                             if VerifVisNovas then
                                begin
                                   VerifVisNovas := false;
                                   uPrincipal.Form1.mmTexto.Lines.Add('Recebendo as novas programações de visitas...');
                                end;

                             if PRO_CD_M_VIS.Locate('ano;semana',VarArrayOf([anoVis,
                                                                             CAD_CD_C_VIT.FieldByName('semana_prox_vis').AsInteger]),[]) then
                                begin
                                  PRO_CD_M_VIS_CLI.IndexFieldNames := 'id_vis_cli';
                                  PRO_CD_M_VIS_CLI.Last;
                                  prox_visita := PRO_CD_M_VIS_CLI.FieldByName('id_vis_cli').AsInteger + 1;
                                  PRO_CD_M_VIS_CLI.Insert;
                                  PRO_CD_M_VIS_CLI.FieldByName('id_vis').AsInteger :=  PRO_CD_M_VIS.FieldByName('id_vis').AsInteger;
                                  PRO_CD_M_VIS_CLI.FieldByName('id_vis_cli').AsInteger  :=  prox_visita;
                                  PRO_CD_M_VIS_CLI.FieldByName('doc_cnpj_cpf').AsString :=  CAD_CD_C_VIT.FieldByName('doc_cnpj_cpf').AsString;
                                  PRO_CD_M_VIS_CLI.FieldByName('id_cliente').AsString   :=  CAD_CD_C_VIT.FieldByName('id_cliente').AsString;
                                  PRO_CD_M_VIS_CLI.FieldByName('dta_visita').AsString   :=  CAD_CD_C_VIT.FieldByName('dta_prox_vis').AsString;
                                  PRO_CD_M_VIS_CLI.Post;
                                end
                             else
                                begin
                                   cad_cd_c_seq.locate('id_tabela','CAD_TB_C_VIS',[]);
                                   CAD_CD_C_SEQ.edit;
                                   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger :=
                                   CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger + 1;
                                   CAD_CD_C_SEQ.Post;

                                   PRO_CD_M_VIS.Insert;
                                   PRO_CD_M_VIS.FieldByName('id_vis').AsInteger       :=  CAD_CD_C_SEQ.FieldByName('SEQUENCIA').AsInteger;
                                   PRO_CD_M_VIS.FieldByName('id_empresa').AsInteger   := CAD_CD_C_VIT.FieldByName('id_empresa').AsInteger;
                                   PRO_CD_M_VIS.FieldByName('ano').AsString           :=  anoVis;
                                   PRO_CD_M_VIS.FieldByName('dta_criacao').AsDateTime := date;
                                   PRO_CD_M_VIS.FieldByName('semana').AsInteger       :=  CAD_CD_C_VIT.FieldByName('semana_prox_vis').AsInteger;
                                   PRO_CD_M_VIS.FieldByName('fechada').AsBoolean      := false;
                                   PRO_CD_M_VIS.FieldByName('id_vendedor').AsString   := vit_id_vendedor;
                                   PRO_CD_M_VIS.Post;

                                   PRO_CD_M_VIS_CLI.Insert;
                                   PRO_CD_M_VIS_CLI.FieldByName('id_vis').AsInteger :=  PRO_CD_M_VIS.FieldByName('id_vis').AsInteger;
                                   PRO_CD_M_VIS_CLI.FieldByName('id_vis_cli').AsInteger   :=  1;
                                   PRO_CD_M_VIS_CLI.FieldByName('doc_cnpj_cpf').AsString :=  CAD_CD_C_VIT.FieldByName('doc_cnpj_cpf').AsString;
                                   PRO_CD_M_VIS_CLI.FieldByName('id_cliente').AsString   :=  CAD_CD_C_VIT.FieldByName('id_cliente').AsString;
                                   PRO_CD_M_VIS_CLI.FieldByName('dta_visita').AsString   :=  CAD_CD_C_VIT.FieldByName('dta_prox_vis').AsString;
                                   PRO_CD_M_VIS_CLI.Post;
                                end;
                           end;
                        CAD_CD_C_VIT.Next;
                     end;

                  // Fechando a programação da visita, que foi utilizada pelo vendedor.
                  // Foi descontinuado , devido o vendedor puxar novamente
                  // a programação que já teve visita parcial , sendo que a programação
                  // já estava com status de FECHADA;   , em 01/12/2017
                  {CAD_CD_C_VIT.First;
                  while not CAD_CD_C_VIT.Eof do
                        begin
                          if PRO_CD_M_VIS.Locate('ano;semana',VarArrayOf([anoVis,
                                                                             CAD_CD_C_VIT.FieldByName('semana').AsInteger]),[]) then
                             begin
                                if VerifVisFechar then
                                    begin
                                       VerifVisFechar := false;
                                       uPrincipal.Form1.mmTexto.Lines.Add('Fechando as programações de visita realizadas...');

                                       PRO_CD_M_VIS.edit;
                                       PRO_CD_M_VIS.FieldByName('fechada').AsBoolean := true;
                                       PRO_CD_M_VIS.Post;
                                    end;
                             end;
                          CAD_CD_C_VIT.Next;
                        end;
                  CAD_CD_C_VIT.First; }
               end;
          end;



    if not CAD_CD_C_CLI.IsEmpty then
       begin
         CAD_CD_C_CLI.First;
         while not (CAD_CD_C_CLI.eof) do
               begin
                  CAD_CD_C_CLI.Edit;
                  CAD_CD_C_CLI.FieldByName('id_cli_temp_mobile').AsString := '';

                  if not (CAD_CD_C_VIT.IsEmpty) then
                     if CAD_CD_C_VIT.locate('id_cliente',CAD_CD_C_CLI.FieldByName('id_cliente').AsString,[]) then
                        begin
                          if CAD_CD_C_VIT.FieldByName('gps_latitude').AsString <> '0' then
                             CAD_CD_C_CLI.FieldByName('gps_latitude').AsString :=
                                   CAD_CD_C_VIT.FieldByName('gps_latitude').AsString;

                          if CAD_CD_C_VIT.FieldByName('gps_longitude').AsString <> '0' then
                             CAD_CD_C_CLI.FieldByName('gps_longitude').AsString :=
                                   CAD_CD_C_VIT.FieldByName('gps_longitude').AsString;
                        end;

                  CAD_CD_C_CLI.Post;
                  CAD_CD_C_CLI.Next;
                end;
       end;

    if not FAT_CD_M_PED.IsEmpty then
       begin
         FAT_CD_M_PED.First;
         while not FAT_CD_M_PED.Eof do
            begin
              FAT_CD_M_PED.edit;
              FAT_CD_M_PED.FieldByName('id_pedido_temp_mob').AsInteger := 0;
              FAT_CD_M_PED.Post;
              FAT_CD_M_PED.Next;
            end;
         FAT_CD_M_PED.First;


          listaItens := '';
          listaCor := '';
          listaTamanho := '';

          FAT_CD_M_PED.First;
          while not FAT_CD_M_PED.eof do
            begin
              FAT_CD_M_PED_ITE.First;
              while not FAT_CD_M_PED_ITE.eof do
                begin
                   if (listaItens <> '') then
                      listaItens := listaItens + ',' +''''+
                                            FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString+''''
                   else
                      listaItens := listaItens +''''+
                                            FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString+'''';

                   if (listaCor <> '') then
                     listaCor := listaCor + ',' +''''+
                                            FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsString+''''
                   else
                      listaCor := listaCor +''''+
                                            FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsString+'''';

                   if (listaTamanho <> '') then
                       listaTamanho := listaTamanho + ',' +''''+
                                            FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString+''''
                   else
                       listaTamanho := listaTamanho +''''+
                                            FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsString+'''';

                  FAT_CD_M_PED_ITE.Next;
                end;
               FAT_CD_M_PED.Next;
           end;

          uPrincipal.Form1.mmTexto.Lines.Add('Preparando para gravar a movimentação do estoque...');

          EST_SQ_M_FEA := TSQLDataSet.Create(nil);
          EST_SQ_M_FEA.SQLConnection := ConexaoNW;
          EST_SQ_M_FEA.CommandType   := ctQuery;
          EST_SQ_M_FEA.CommandText   := 'SELECT * FROM EST_TB_M_FEA WHERE 1=2 ';

          EST_DP_M_FEA := TDataSetProvider.Create(nil);
            EST_DP_M_FEA .DataSet :=  EST_SQ_M_FEA;


          EST_CD_M_FEA := TClientDataSet.Create(nil);
          EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
          EST_CD_M_FEA.Open;


          EST_SQ_M_FES := TSQLDataSet.Create(nil);
          EST_SQ_M_FES.SQLConnection := ConexaoNW;
          EST_SQ_M_FES.CommandType   := ctQuery;
          EST_SQ_M_FES.CommandText   := 'SELECT * FROM EST_TB_M_FES WHERE  ID_EMPRESA='+FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString+' AND (ID_ITEM IN ('+listaItens+') or ID_COR IN ('+listaCor+') or ID_TAMANHO IN ('+listaTamanho+')) ';


          EST_DP_M_FES := TDataSetProvider.Create(nil);
            EST_DP_M_FES .DataSet :=  EST_SQ_M_FES;


          EST_CD_M_FES := TClientDataSet.Create(nil);
          EST_CD_M_FES.SetProvider(EST_DP_M_FES);
          EST_CD_M_FES.Open;


          GerarEstoquePedido(CAD_CD_C_SEQ,FAT_CD_M_PED,FAT_CD_M_PED_ITE,EST_CD_M_FEA,EST_CD_M_FES);
          uPrincipal.Form1.mmTexto.Lines.Add('Preparação do estoque OK!');
      end;

   except
     on e: exception do
        begin
          xMsg := 'Erro: ' + e.Message;
          GetInvocationMetadata().ResponseCode := 404;
          GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
          GetInvocationMetadata().ResponseMessage := xMsg;
          result :=  TStringStream.Create( utf8encode(xMsg));
          uPrincipal.Form1.mmTexto.Lines.Add(xMsg);
          GerarSqlTxt('Erro : '+ xMsg);
          uPrincipal.Form1.mmTexto.Lines.Add('Log do erro foi gerado!');
          abort;
        end;
   end;

   // Informações de alguns dados a serem gravados:
   uPrincipal.Form1.mmTexto.Lines.Add('');
   uPrincipal.Form1.mmTexto.Lines.Add('Informações de alguns dados a serem gravados:');
   uPrincipal.Form1.mmTexto.Lines.Add(NomeClientes);
   uPrincipal.Form1.mmTexto.Lines.Add('Quantidade de pedidos: ' + inttostr(FAT_CD_M_PED.RecordCount));
   uPrincipal.Form1.mmTexto.Lines.Add('Quantidade de visitas: ' + inttostr(CAD_CD_C_VIT.RecordCount));

   retornoSeq := 0;
   retornoPed := 0;
   RetornoCli := 0;
   RetornoProVis := 0;
   RetornoVit := 0;
   try
      Vtran := ConexaoNW.BeginTransaction;

      uPrincipal.Form1.mmTexto.Lines.Add('');
      uPrincipal.Form1.mmTexto.Lines.Add('Iniciando gravação dos dados no banco de dados...');
      uPrincipal.Form1.mmTexto.Lines.Add('');      
      
      if CAD_CD_C_SEQ <> nil then
         if (CAD_CD_C_SEQ.ChangeCount > 0) then
            begin
               retornoSeq :=  CAD_CD_C_SEQ.ApplyUpdates(0);
               if retornoSeq = 0 then
                  uPrincipal.Form1.mmTexto.Lines.Add('...Tabela de sequências atualizadas!');
            end;

      if CAD_CD_C_CLI <> nil then
         if (CAD_CD_C_CLI.ChangeCount > 0) then
            begin
               RetornoCli := CAD_CD_C_CLI.ApplyUpdates(0);
               if RetornoCli = 0 then
                  uPrincipal.Form1.mmTexto.Lines.Add('...Dados do Cliente gravado!');
            end;

      if PRO_CD_M_VIS <> nil then
         if (PRO_CD_M_VIS.ChangeCount > 0) then
             begin
               RetornoProVis := PRO_CD_M_VIS.ApplyUpdates(0);
               if RetornoProVis = 0 then
                  uPrincipal.Form1.mmTexto.Lines.Add('...Programações de visisitas gravadas!');
             end;

      if FAT_CD_M_PED <> nil then
         if (FAT_CD_M_PED.ChangeCount > 0) then
            begin
               retornoPed := FAT_CD_M_PED.ApplyUpdates(0);
               if retornoPed = 0 then
                  uPrincipal.Form1.mmTexto.Lines.Add('...Pedidos de Venda gravados!');
            end;

       if EST_CD_M_FEA <> nil then
         if (EST_CD_M_FEA.ChangeCount > 0) then
            begin
               retornoPed := EST_CD_M_FEA.ApplyUpdates(0);
               if retornoPed = 0 then
                  uPrincipal.Form1.mmTexto.Lines.Add('...Ficha de estoque gravados!');
            end;
       if EST_CD_M_FES <> nil then
         if (EST_CD_M_FES.ChangeCount > 0) then
            begin
               retornoPed := EST_CD_M_FES.ApplyUpdates(0);
               if retornoPed = 0 then
                  uPrincipal.Form1.mmTexto.Lines.Add('...Ficha sintética gravados!');
            end;


      if CAD_CD_C_VIT <> nil then
         if (CAD_CD_C_VIT.ChangeCount > 0) then
             begin
               RetornoVit := CAD_CD_C_VIT.ApplyUpdates(0);
               if RetornoVit = 0 then
                  uPrincipal.Form1.mmTexto.Lines.Add('...Visitas gravadas!');
             end;

     PRO_CD_M_PMB.close;
     PRO_SQ_M_PMB.close;
     PRO_SQ_M_PMB.CommandText := '';
     PRO_SQ_M_PMB.CommandText := ' SELECT * FROM PRO_TB_M_PMB WHERE ID_PMB = ' + id_pmb;
     PRO_CD_M_PMB.Open;
     PRO_CD_M_PMB.Edit;
     PRO_CD_M_PMB.FieldByName('pacote_utilizado').AsBoolean := true;
     PRO_CD_M_PMB.Post;
     PRO_CD_M_PMB.ApplyUpdates(0);


      if (retornoSeq = 0) and
         (RetornoCli = 0) and
         (RetornoProVis = 0) and
         (retornoPed = 0) and
         (RetornoVit = 0) then
         begin
          // Comitar.
          //Showmessage('Vai comitar galera!');
          //abort;
          ConexaoNW.CommitFreeAndNil(Vtran);

          GetInvocationMetadata().ResponseCode := 201;
          uPrincipal.Form1.mmTexto.Lines.Add('');
          uPrincipal.Form1.mmTexto.Lines.Add('Dados gravado com Sucesso!!!');
         end
      else
         begin
            GetInvocationMetadata().ResponseCode := 404;
            GetInvocationMetadata().ResponseContentType :=  'application/json; charset=utf-8';
            result :=  TStringStream.Create( utf8encode(xMsg));
         end;

   finally
      ConexaoNW.RollbackIncompleteFreeAndNil(Vtran);
   end;

  finally
     if Lista <> nil then
        FreeAndNil(Lista);

     if VJsonArray <> nil then
        FreeAndNil(VJsonArray);

     if qryCons <> nil then
        FreeAndNil(qryCons);

     if CAD_CD_C_SEQ <> nil then
        FreeAndNil(CAD_CD_C_SEQ);

     if CAD_CD_C_PAR_CTR <> nil then
        FreeAndNil(CAD_CD_C_PAR_CTR);

     if CAD_CD_C_FUN <> nil then
        FreeAndNil(CAD_CD_C_FUN);

     if EST_CD_M_FEA <> nil then
        FreeAndNil(EST_CD_M_FEA);

     if EST_CD_M_FES <> nil then
        FreeAndNil(EST_CD_M_FES);


  end;


end;

end.

