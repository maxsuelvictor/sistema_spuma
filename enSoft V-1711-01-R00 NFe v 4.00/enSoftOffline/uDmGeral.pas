unit uDmGeral;

interface

uses
  System.SysUtils, System.Variants,System.IniFiles,System.Math,System.Classes,System.Generics.Collections,System.TypInfo, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Data.DbxSqlite,DataSnap.DSSession,Vcl.Forms,Vcl.Dialogs,Vcl.Controls, vcl.wwdbigrd, vcl.wwdbgrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,Winapi.Windows;

type
  TdmGeral = class(TDataModule)
    FAT_CD_M_PED: TClientDataSet;
    FAT_DP_M_PED: TDataSetProvider;
    FAT_CD_M_PED_ITE: TClientDataSet;
    FAT_CD_M_PED_TIT: TClientDataSet;
    CAD_CD_C_PAR: TClientDataSet;
    BUS_CD_C_FU2: TClientDataSet;
    CAD_DP_C_FUN: TDataSetProvider;
    CAD_DP_C_PAR: TDataSetProvider;
    conexao: TFDConnection;
    CAD_FD_C_PAR: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    CAD_FD_C_PARid_empresa: TIntegerField;
    CAD_FD_C_PARemp_cnpj: TStringField;
    CAD_FD_C_PARid_ramo: TIntegerField;
    CAD_FD_C_PARemp_razao: TStringField;
    CAD_FD_C_PARemp_endereco: TStringField;
    CAD_FD_C_PARemp_numero: TStringField;
    CAD_FD_C_PARemp_complemento: TStringField;
    CAD_FD_C_PARemp_bairro: TStringField;
    CAD_FD_C_PARid_cidade: TStringField;
    CAD_FD_C_PARemp_cep: TStringField;
    CAD_FD_C_PARemp_telefone: TStringField;
    CAD_FD_C_PARemp_fax: TStringField;
    CAD_FD_C_PARemp_email: TStringField;
    CAD_FD_C_PARemp_site: TStringField;
    CAD_FD_C_PARemp_fantasia: TStringField;
    CAD_FD_C_PARemp_im: TStringField;
    CAD_FD_C_PARemp_ie: TStringField;
    CAD_FD_C_PARemp_suframa: TStringField;
    CAD_FD_C_PARemp_numero_junta: TStringField;
    CAD_FD_C_PARres_nome: TStringField;
    CAD_FD_C_PARres_qualificacao: TStringField;
    CAD_FD_C_PARres_cpf: TStringField;
    CAD_FD_C_PARres_cep: TStringField;
    CAD_FD_C_PARres_endereco: TStringField;
    CAD_FD_C_PARres_numero: TStringField;
    CAD_FD_C_PARres_complemento: TStringField;
    CAD_FD_C_PARres_bairro: TStringField;
    CAD_FD_C_PARres_cp: TStringField;
    CAD_FD_C_PARres_telefone: TStringField;
    CAD_FD_C_PARres_fax: TStringField;
    CAD_FD_C_PARres_email: TStringField;
    CAD_FD_C_PARcnt_nome: TStringField;
    CAD_FD_C_PARcnt_cpf: TStringField;
    CAD_FD_C_PARcnt_crc: TStringField;
    CAD_FD_C_PARcnt_cnpj: TStringField;
    CAD_FD_C_PARcnt_cep: TStringField;
    CAD_FD_C_PARcnt_endereco: TStringField;
    CAD_FD_C_PARcnt_numero: TStringField;
    CAD_FD_C_PARcnt_complemento: TStringField;
    CAD_FD_C_PARcnt_bairro: TStringField;
    CAD_FD_C_PARcnt_telefone: TStringField;
    CAD_FD_C_PARcnt_fax: TStringField;
    CAD_FD_C_PARcnt_email: TStringField;
    CAD_FD_C_PARcnt_id_cidade: TStringField;
    CAD_FD_C_PARcnt_qualificacao: TStringField;
    CAD_FD_C_PARcnt_cp: TStringField;
    CAD_FD_C_PARres_cidade: TStringField;
    CAD_FD_C_PARcod_lme: TStringField;
    CAD_FD_C_PARrev_lme: TStringField;
    CAD_FD_C_PARres_id_cidade: TStringField;
    CAD_CD_C_PARid_empresa: TIntegerField;
    CAD_CD_C_PARemp_cnpj: TStringField;
    CAD_CD_C_PARid_ramo: TIntegerField;
    CAD_CD_C_PARemp_razao: TStringField;
    CAD_CD_C_PARemp_endereco: TStringField;
    CAD_CD_C_PARemp_numero: TStringField;
    CAD_CD_C_PARemp_complemento: TStringField;
    CAD_CD_C_PARemp_bairro: TStringField;
    CAD_CD_C_PARid_cidade: TStringField;
    CAD_CD_C_PARemp_cep: TStringField;
    CAD_CD_C_PARemp_telefone: TStringField;
    CAD_CD_C_PARemp_fax: TStringField;
    CAD_CD_C_PARemp_email: TStringField;
    CAD_CD_C_PARemp_site: TStringField;
    CAD_CD_C_PARemp_fantasia: TStringField;
    CAD_CD_C_PARemp_im: TStringField;
    CAD_CD_C_PARemp_ie: TStringField;
    CAD_CD_C_PARemp_suframa: TStringField;
    CAD_CD_C_PARemp_numero_junta: TStringField;
    CAD_CD_C_PARres_nome: TStringField;
    CAD_CD_C_PARres_qualificacao: TStringField;
    CAD_CD_C_PARres_cpf: TStringField;
    CAD_CD_C_PARres_cep: TStringField;
    CAD_CD_C_PARres_endereco: TStringField;
    CAD_CD_C_PARres_numero: TStringField;
    CAD_CD_C_PARres_complemento: TStringField;
    CAD_CD_C_PARres_bairro: TStringField;
    CAD_CD_C_PARres_cp: TStringField;
    CAD_CD_C_PARres_telefone: TStringField;
    CAD_CD_C_PARres_fax: TStringField;
    CAD_CD_C_PARres_email: TStringField;
    CAD_CD_C_PARcnt_nome: TStringField;
    CAD_CD_C_PARcnt_cpf: TStringField;
    CAD_CD_C_PARcnt_crc: TStringField;
    CAD_CD_C_PARcnt_cnpj: TStringField;
    CAD_CD_C_PARcnt_cep: TStringField;
    CAD_CD_C_PARcnt_endereco: TStringField;
    CAD_CD_C_PARcnt_numero: TStringField;
    CAD_CD_C_PARcnt_complemento: TStringField;
    CAD_CD_C_PARcnt_bairro: TStringField;
    CAD_CD_C_PARcnt_telefone: TStringField;
    CAD_CD_C_PARcnt_fax: TStringField;
    CAD_CD_C_PARcnt_email: TStringField;
    CAD_CD_C_PARcnt_id_cidade: TStringField;
    CAD_CD_C_PARcnt_qualificacao: TStringField;
    CAD_CD_C_PARcnt_cp: TStringField;
    CAD_CD_C_PARres_cidade: TStringField;
    CAD_CD_C_PARcod_lme: TStringField;
    CAD_CD_C_PARres_id_cidade: TStringField;
    CAD_FD_C_FUN: TFDQuery;
    CAD_FD_C_CPG: TFDQuery;
    CAD_DP_C_CPG: TDataSetProvider;
    BUS_CD_C_CPG: TClientDataSet;
    CAD_FD_C_FPG: TFDQuery;
    CAD_DP_C_FPG: TDataSetProvider;
    BUS_CD_C_FPG: TClientDataSet;
    CAD_FD_C_ITE: TFDQuery;
    CAD_DP_C_ITE: TDataSetProvider;
    BUS_CD_C_ITE: TClientDataSet;
    CAD_FD_C_CLI: TFDQuery;
    CAD_DP_C_CLI: TDataSetProvider;
    BUS_CD_C_CLI: TClientDataSet;
    BUS_FD_CSU_ITE: TFDQuery;
    BUS_DP_CSU_ITE: TDataSetProvider;
    BUS_CD_CSU_ITE: TClientDataSet;
    EST_FD_M_FES: TFDQuery;
    EST_DP_M_FES: TDataSetProvider;
    BUS_CD_M_FES: TClientDataSet;
    EST_FD_M_FES_ALM: TFDQuery;
    EST_DP_M_FES_ALM: TDataSetProvider;
    BUS_CD_M_FES_ALM: TClientDataSet;
    CAD_FD_C_PAR_MOD: TFDQuery;
    CAD_DS_C_PAR: TDataSource;
    CAD_CD_C_PARCAD_FD_C_PAR_MOD: TDataSetField;
    CAD_CD_C_PAR_MOD: TClientDataSet;
    CAD_FD_C_PAR_CTR: TFDQuery;
    CAD_CD_C_PAR_CTR: TClientDataSet;
    CAD_CD_C_PARCAD_FD_C_PAR_CTR: TDataSetField;
    BUS_CD_C_PAR_CPG_INF: TClientDataSet;
    CAD_CD_C_PAR_CPG: TClientDataSet;
    CAD_FD_C_PAR_CPG: TFDQuery;
    CAD_FD_C_PAR_CPGid_empresa: TIntegerField;
    CAD_FD_C_PAR_CPGid_condicao_pag: TIntegerField;
    CAD_FD_C_PAR_CPGper_reajuste: TFloatField;
    CAD_FD_C_PAR_CPGsequencia: TIntegerField;
    CAD_CD_C_PARCAD_FD_C_PAR_CPG: TDataSetField;
    CAD_CD_C_PAR_CPGid_empresa: TIntegerField;
    CAD_CD_C_PAR_CPGper_reajuste: TFloatField;
    CAD_CD_C_PAR_CPGsequencia: TIntegerField;
    BUS_DP_C_PAR_CPG_INF: TDataSetProvider;
    BUS_FD_C_PAR_CPG_INF: TFDQuery;
    CAD_FD_C_PEC: TFDQuery;
    CAD_DP_C_PEC: TDataSetProvider;
    BUS_CD_C_PEC: TClientDataSet;
    CAD_FD_C_PECid_perfil_cli: TIntegerField;
    CAD_FD_C_PECdescricao: TStringField;
    CAD_FD_C_PECper_correcao: TFloatField;
    CAD_FD_C_PECoperacao: TIntegerField;
    CAD_FD_C_PECper_correcao_aprazo: TFloatField;
    CAD_FD_C_PECper_correcao_financeiro: TFloatField;
    BUS_CD_C_PECid_perfil_cli: TIntegerField;
    BUS_CD_C_PECdescricao: TStringField;
    BUS_CD_C_PECper_correcao: TFloatField;
    BUS_CD_C_PECoperacao: TIntegerField;
    BUS_CD_C_PECper_correcao_aprazo: TFloatField;
    BUS_CD_C_PECper_correcao_financeiro: TFloatField;
    CAD_FD_C_FAM: TFDQuery;
    CAD_DP_C_FAM: TDataSetProvider;
    BUS_CD_C_FAM: TClientDataSet;
    CAD_FD_C_FAMid_familia: TIntegerField;
    CAD_FD_C_FAMdescricao: TStringField;
    BUS_CD_C_FAMid_familia: TIntegerField;
    BUS_CD_C_FAMdescricao: TStringField;
    CAD_FD_C_ITEid_item: TIntegerField;
    CAD_FD_C_ITEdescricao: TStringField;
    CAD_FD_C_ITEfantasia: TStringField;
    CAD_FD_C_ITEid_fornecedor: TIntegerField;
    CAD_FD_C_ITEid_grupo: TStringField;
    CAD_FD_C_ITEid_und_compra: TStringField;
    CAD_FD_C_ITEid_und_venda: TStringField;
    CAD_FD_C_ITEcod_barra: TStringField;
    CAD_FD_C_ITEcod_fabrica: TStringField;
    CAD_FD_C_ITEpreco_avista: TFloatField;
    CAD_FD_C_ITEpreco_aprazo: TFloatField;
    BUS_CD_C_ITEid_item: TIntegerField;
    BUS_CD_C_ITEdescricao: TStringField;
    BUS_CD_C_ITEfantasia: TStringField;
    BUS_CD_C_ITEid_fornecedor: TIntegerField;
    BUS_CD_C_ITEid_grupo: TStringField;
    BUS_CD_C_ITEid_und_compra: TStringField;
    BUS_CD_C_ITEid_und_venda: TStringField;
    BUS_CD_C_ITEcod_barra: TStringField;
    BUS_CD_C_ITEcod_fabrica: TStringField;
    BUS_CD_C_ITEpreco_avista: TFloatField;
    BUS_CD_C_ITEpreco_aprazo: TFloatField;
    BUS_FD_C_PAR_CPG: TFDQuery;
    BUS_DP_C_PAR_CPG: TDataSetProvider;
    BUS_CD_C_PAR_CPG: TClientDataSet;
    BUS_FD_C_ITE_PRC: TFDQuery;
    BUS_DP_C_ITE_PRC: TDataSetProvider;
    BUS_CD_C_ITE_PRC: TClientDataSet;
    BUS_FD_C_ITE_PRCid_item: TIntegerField;
    BUS_FD_C_ITE_PRCid_perfil_cli: TIntegerField;
    BUS_FD_C_ITE_PRCpreco_avista: TFloatField;
    BUS_FD_C_ITE_PRCpreco1: TFloatField;
    BUS_FD_C_ITE_PRCpreco2: TFloatField;
    BUS_FD_C_ITE_PRCpreco3: TFloatField;
    BUS_FD_C_ITE_PRCpreco4: TFloatField;
    BUS_CD_C_ITE_PRCid_item: TIntegerField;
    BUS_CD_C_ITE_PRCid_perfil_cli: TIntegerField;
    BUS_CD_C_ITE_PRCpreco_avista: TFloatField;
    BUS_CD_C_ITE_PRCpreco1: TFloatField;
    BUS_CD_C_ITE_PRCpreco2: TFloatField;
    BUS_CD_C_ITE_PRCpreco3: TFloatField;
    BUS_CD_C_ITE_PRCpreco4: TFloatField;
    BUS_CD_C_CPG_EXP: TClientDataSet;
    CAD_CD_C_FUN: TClientDataSet;


    CAD_FD_C_GRU: TFDQuery;
    CAD_DP_C_GRU: TDataSetProvider;
    BUS_CD_C_GRU: TClientDataSet;


    BUS_FD_M_ULT_NFE_ITE: TFDQuery;
    BUS_DP_M_ULT_NFE_ITE: TDataSetProvider;
    BUS_CD_M_ULT_NFE_ITE: TClientDataSet;
    BUS_FD_C_CSU_ITE_PRF: TFDQuery;
    BUS_DP_C_CSU_ITE_PRF: TDataSetProvider;
    BUS_CD_C_CSU_ITE_PRF: TClientDataSet;
    BUS_CD_X_TIP: TClientDataSet;
    BUS_CD_C_FUN: TClientDataSet;
    CAD_FD_C_TME: TFDQuery;
    CAD_DP_C_TME: TDataSetProvider;
    BUS_CD_C_TME: TClientDataSet;
    CAD_FD_C_TMEid_tipo_mov_estoque: TIntegerField;
    CAD_FD_C_TMEdescricao: TStringField;
    CAD_FD_C_TMEtipo_movimento: TIntegerField;
    CAD_FD_C_TMEativo: TBooleanField;
    CAD_FD_C_TMEindicador: TIntegerField;
    BUS_CD_C_TMEid_tipo_mov_estoque: TIntegerField;
    BUS_CD_C_TMEdescricao: TStringField;
    BUS_CD_C_TMEtipo_movimento: TIntegerField;
    BUS_CD_C_TMEativo: TBooleanField;
    BUS_CD_C_TMEindicador: TIntegerField;
    CAD_FD_C_PAR_CTRid_empresa: TIntegerField;
    CAD_FD_C_PAR_CTRutiliza_almoxarifado: TBooleanField;
    CAD_FD_C_PAR_CTRfaz_corr_preco_perfil: TBooleanField;
    CAD_FD_C_PAR_CTRprc_ite_manual: TBooleanField;
    CAD_FD_C_PAR_CTRped_corr_preco_prazo: TBooleanField;
    CAD_FD_C_PAR_CTRped_altera_preco: TBooleanField;
    CAD_FD_C_PAR_CTRped_ativa_titulos: TBooleanField;
    CAD_CD_C_PAR_CTRid_empresa: TIntegerField;
    CAD_CD_C_PAR_CTRutiliza_almoxarifado: TBooleanField;
    CAD_CD_C_PAR_CTRfaz_corr_preco_perfil: TBooleanField;
    CAD_CD_C_PAR_CTRprc_ite_manual: TBooleanField;
    CAD_CD_C_PAR_CTRped_corr_preco_prazo: TBooleanField;
    CAD_CD_C_PAR_CTRped_altera_preco: TBooleanField;
    CAD_CD_C_PAR_CTRped_ativa_titulos: TBooleanField;
    CAD_FD_C_COR: TFDQuery;
    CAD_DP_C_COR: TDataSetProvider;
    BUS_CD_C_COR: TClientDataSet;
    CAD_FD_C_TAM: TFDQuery;
    CAD_DP_C_TAM: TDataSetProvider;
    BUS_CD_C_TAM: TClientDataSet;
    CAD_FD_C_CORid_cor: TIntegerField;
    CAD_FD_C_CORdescricao: TStringField;
    CAD_FD_C_TAMid_tamanho: TIntegerField;
    CAD_FD_C_TAMdescricao: TStringField;
    CAD_FD_C_PAR_CTRdia_protesto: TIntegerField;
    CAD_CD_C_PAR_CTRdia_protesto: TIntegerField;
    CAD_FD_C_PAR_CTRativa_cor: TBooleanField;
    CAD_FD_C_PAR_CTRativa_tamanho: TBooleanField;
    CAD_CD_C_PAR_CTRativa_cor: TBooleanField;
    CAD_CD_C_PAR_CTRativa_tamanho: TBooleanField;
    EST_CD_M_FES: TClientDataSet;
    EST_CD_M_FES_ALM: TClientDataSet;
    FAT_FD_M_PED: TFDQuery;
    FAT_FD_M_PED_ITE: TFDQuery;
    FAT_FD_M_PED_TIT: TFDQuery;
    FAT_SQ_M_PED: TDataSource;
    FAT_FD_M_PEDid_pedido: TIntegerField;
    FAT_FD_M_PEDid_empresa: TIntegerField;
    FAT_FD_M_PEDdta_pedido: TDateField;
    FAT_FD_M_PEDid_tipo_mov_estoque: TIntegerField;
    FAT_FD_M_PEDid_vendedor: TIntegerField;
    FAT_FD_M_PEDobs: TStringField;
    FAT_FD_M_PEDvlr_bruto: TFloatField;
    FAT_FD_M_PEDvlr_desconto: TFloatField;
    FAT_FD_M_PEDper_desconto: TFloatField;
    FAT_FD_M_PEDvlr_liquido: TFloatField;
    FAT_FD_M_PEDhor_pedido: TSQLTimeStampField;
    FAT_FD_M_PEDid_condicao_pag: TIntegerField;
    FAT_FD_M_PEDpcp_obs: TStringField;
    FAT_FD_M_PEDpcp_id_opr: TIntegerField;
    FAT_FD_M_PEDsituacao: TIntegerField;
    FAT_FD_M_PEDsituacao_aprovacao: TIntegerField;
    FAT_FD_M_PEDid_atendente: TIntegerField;
    FAT_FD_M_PEDid_responsavel: TIntegerField;
    FAT_FD_M_PEDid_cliente: TIntegerField;
    FAT_FD_M_PEDtipo_restricao: TStringField;
    FAT_FD_M_PEDid_almoxarifado: TIntegerField;
    FAT_FD_M_PEDjustificativa: TStringField;
    FAT_FD_M_PEDid_usuario_lib: TIntegerField;
    FAT_FD_M_PEDcod_lme: TStringField;
    FAT_FD_M_PEDrev_lme: TStringField;
    FAT_FD_M_PEDorigem: TIntegerField;
    FAT_FD_M_PEDdispositivo: TStringField;
    FAT_FD_M_PEDgps_latitude: TFloatField;
    FAT_FD_M_PEDgps_longitude: TFloatField;
    FAT_FD_M_PEDcubagem: TFloatField;
    FAT_FD_M_PEDid_orcamento: TIntegerField;
    FAT_FD_M_PEDenvia_carga: TBooleanField;
    FAT_FD_M_PEDdta_prev_entrega: TDateField;
    FAT_FD_M_PEDid_abertura: TIntegerField;
    FAT_FD_M_PEDdias_cpg_prazo: TIntegerField;
    FAT_FD_M_PEDoffline: TBooleanField;
    FAT_FD_M_PEDconferido: TBooleanField;
    FAT_FD_M_PEDid_conf: TIntegerField;
    FAT_FD_M_PEDdta_conf: TDateField;
    FAT_FD_M_PEDhor_conf: TTimeField;
    FAT_FD_M_PEDresultado_conf: TIntegerField;
    FAT_FD_M_PED_ITEid_pedido: TIntegerField;
    FAT_FD_M_PED_ITEid_sequencia: TIntegerField;
    FAT_FD_M_PED_ITEid_item: TIntegerField;
    FAT_FD_M_PED_ITEqtde: TFloatField;
    FAT_FD_M_PED_ITEvlr_unitario: TFloatField;
    FAT_FD_M_PED_ITEvlr_bruto: TFloatField;
    FAT_FD_M_PED_ITEper_desconto: TFloatField;
    FAT_FD_M_PED_ITEvlr_desconto: TFloatField;
    FAT_FD_M_PED_ITEvlr_liquido: TFloatField;
    FAT_FD_M_PED_ITEid_cor: TIntegerField;
    FAT_FD_M_PED_ITEid_tamanho: TIntegerField;
    FAT_FD_M_PED_ITEid_busca_item: TStringField;
    FAT_FD_M_PED_ITEvlr_unitario_orig: TFloatField;
    FAT_FD_M_PED_ITEper_desc_max: TFloatField;
    FAT_FD_M_PED_ITEqtde_conferida: TFloatField;
    FAT_FD_M_PED_TITid_pedido: TIntegerField;
    FAT_FD_M_PED_TITid_titulo: TIntegerField;
    FAT_FD_M_PED_TITdias: TIntegerField;
    FAT_FD_M_PED_TITdta_vencimento: TDateField;
    FAT_FD_M_PED_TITvlr_titulo: TFloatField;
    FAT_FD_M_PED_TITche_banco: TStringField;
    FAT_FD_M_PED_TITche_agencia: TStringField;
    FAT_FD_M_PED_TITche_conta: TIntegerField;
    FAT_FD_M_PED_TITche_numero: TIntegerField;
    FAT_FD_M_PED_TITche_emitente: TStringField;
    FAT_FD_M_PED_TITid_forma_pag: TIntegerField;
    FAT_FD_M_PED_TITbol_nosso_numero: TIntegerField;
    FAT_FD_M_PED_TITid_maquineta: TIntegerField;
    FAT_CD_M_PEDid_pedido: TIntegerField;
    FAT_CD_M_PEDid_empresa: TIntegerField;
    FAT_CD_M_PEDdta_pedido: TDateField;
    FAT_CD_M_PEDid_tipo_mov_estoque: TIntegerField;
    FAT_CD_M_PEDid_vendedor: TIntegerField;
    FAT_CD_M_PEDobs: TStringField;
    FAT_CD_M_PEDvlr_bruto: TFloatField;
    FAT_CD_M_PEDvlr_desconto: TFloatField;
    FAT_CD_M_PEDper_desconto: TFloatField;
    FAT_CD_M_PEDvlr_liquido: TFloatField;
    FAT_CD_M_PEDhor_pedido: TSQLTimeStampField;
    FAT_CD_M_PEDid_condicao_pag: TIntegerField;
    FAT_CD_M_PEDpcp_obs: TStringField;
    FAT_CD_M_PEDpcp_id_opr: TIntegerField;
    FAT_CD_M_PEDsituacao: TIntegerField;
    FAT_CD_M_PEDsituacao_aprovacao: TIntegerField;
    FAT_CD_M_PEDid_atendente: TIntegerField;
    FAT_CD_M_PEDid_responsavel: TIntegerField;
    FAT_CD_M_PEDid_cliente: TIntegerField;
    FAT_CD_M_PEDtipo_restricao: TStringField;
    FAT_CD_M_PEDid_almoxarifado: TIntegerField;
    FAT_CD_M_PEDjustificativa: TStringField;
    FAT_CD_M_PEDid_usuario_lib: TIntegerField;
    FAT_CD_M_PEDcod_lme: TStringField;
    FAT_CD_M_PEDrev_lme: TStringField;
    FAT_CD_M_PEDorigem: TIntegerField;
    FAT_CD_M_PEDdispositivo: TStringField;
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
    FAT_CD_M_PEDFAT_FD_M_PED_TIT: TDataSetField;
    FAT_CD_M_PEDFAT_FD_M_PED_ITE: TDataSetField;
    CAD_FD_C_PAR_CTRid_alm_padrao: TIntegerField;
    CAD_CD_C_PAR_CTRid_alm_padrao: TIntegerField;
    BUS_CD_C_FPG2: TClientDataSet;
    CAD_FD_C_CLIid_cliente: TIntegerField;
    CAD_FD_C_CLIpessoa: TIntegerField;
    CAD_FD_C_CLInome: TStringField;
    CAD_FD_C_CLIendereco: TStringField;
    CAD_FD_C_CLIend_complemento: TStringField;
    CAD_FD_C_CLIcep: TStringField;
    CAD_FD_C_CLInumero: TStringField;
    CAD_FD_C_CLItel_fixo: TStringField;
    CAD_FD_C_CLItel_movel: TStringField;
    CAD_FD_C_CLIfax: TStringField;
    CAD_FD_C_CLIdoc_cnpj_cpf: TStringField;
    CAD_FD_C_CLIdoc_ie_identidade: TStringField;
    CAD_FD_C_CLIbairro: TStringField;
    CAD_FD_C_CLIid_cidade: TStringField;
    CAD_FD_C_CLIativo: TBooleanField;
    CAD_FD_C_CLIemail: TStringField;
    CAD_FD_C_CLIlim_valor: TFloatField;
    CAD_FD_C_CLIlim_saldo: TFloatField;
    CAD_FD_C_CLIsexo: TIntegerField;
    CAD_FD_C_CLIsituacao: TIntegerField;
    CAD_FD_C_CLItipo_cliente: TIntegerField;
    CAD_FD_C_CLIcod_pais: TStringField;
    CAD_FD_C_CLIid_perfil_cli: TIntegerField;
    CAD_FD_C_CLIdoc_rg_orgao: TStringField;
    CAD_FD_C_CLIid_vendedor: TIntegerField;
    CAD_FD_C_CLIdias_prazo_financeiro: TIntegerField;
    CAD_FD_C_CLIint_uf: TStringField;
    CAD_FD_C_CLIint_nomecid: TStringField;
    BUS_CD_C_CLIid_cliente: TIntegerField;
    BUS_CD_C_CLIpessoa: TIntegerField;
    BUS_CD_C_CLInome: TStringField;
    BUS_CD_C_CLIendereco: TStringField;
    BUS_CD_C_CLIend_complemento: TStringField;
    BUS_CD_C_CLIcep: TStringField;
    BUS_CD_C_CLInumero: TStringField;
    BUS_CD_C_CLItel_fixo: TStringField;
    BUS_CD_C_CLItel_movel: TStringField;
    BUS_CD_C_CLIfax: TStringField;
    BUS_CD_C_CLIdoc_cnpj_cpf: TStringField;
    BUS_CD_C_CLIdoc_ie_identidade: TStringField;
    BUS_CD_C_CLIbairro: TStringField;
    BUS_CD_C_CLIid_cidade: TStringField;
    BUS_CD_C_CLIativo: TBooleanField;
    BUS_CD_C_CLIemail: TStringField;
    BUS_CD_C_CLIlim_valor: TFloatField;
    BUS_CD_C_CLIlim_saldo: TFloatField;
    BUS_CD_C_CLIsexo: TIntegerField;
    BUS_CD_C_CLIsituacao: TIntegerField;
    BUS_CD_C_CLItipo_cliente: TIntegerField;
    BUS_CD_C_CLIcod_pais: TStringField;
    BUS_CD_C_CLIid_perfil_cli: TIntegerField;
    BUS_CD_C_CLIdoc_rg_orgao: TStringField;
    BUS_CD_C_CLIid_vendedor: TIntegerField;
    BUS_CD_C_CLIdias_prazo_financeiro: TIntegerField;
    BUS_CD_C_CLIint_uf: TStringField;
    BUS_CD_C_CLIint_nomecid: TStringField;
    FAT_FD_M_PEDINT_NOMECLI: TStringField;
    FAT_FD_M_PEDINT_NOMECID: TStringField;
    FAT_FD_M_PEDINT_NOMEEST: TStringField;
    FAT_FD_M_PEDINT_CPFCNPJ: TStringField;
    FAT_FD_M_PEDint_pessoacli: TIntegerField;
    FAT_FD_M_PEDINT_ID_PERFIL: TIntegerField;
    FAT_CD_M_PEDINT_NOMECLI: TStringField;
    FAT_CD_M_PEDINT_NOMECID: TStringField;
    FAT_CD_M_PEDINT_NOMEEST: TStringField;
    FAT_CD_M_PEDINT_CPFCNPJ: TStringField;
    FAT_CD_M_PEDint_pessoacli: TIntegerField;
    FAT_CD_M_PEDINT_ID_PERFIL: TIntegerField;
    FAT_FD_M_PED_ITEint_nomeite: TStringField;
    FAT_FD_M_PED_ITEint_nomecor: TStringField;
    FAT_FD_M_PED_ITEint_id_und_venda: TStringField;
    FAT_FD_M_PED_ITEint_tipo_item: TStringField;
    FAT_FD_M_PED_ITEint_nometam: TStringField;
    BUS_FD_C_TRI_REG: TFDQuery;
    BUS_DP_C_TRI_REG: TDataSetProvider;
    BUS_CD_C_TRI_REG: TClientDataSet;
    BUS_CD_M_PED: TClientDataSet;
    BUS_CD_M_PEDid_pedido: TIntegerField;
    BUS_CD_M_PEDid_empresa: TIntegerField;
    BUS_CD_M_PEDdta_pedido: TDateField;
    BUS_CD_M_PEDid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_PEDid_vendedor: TIntegerField;
    BUS_CD_M_PEDobs: TStringField;
    BUS_CD_M_PEDvlr_bruto: TFloatField;
    BUS_CD_M_PEDvlr_desconto: TFloatField;
    BUS_CD_M_PEDper_desconto: TFloatField;
    BUS_CD_M_PEDvlr_liquido: TFloatField;
    BUS_CD_M_PEDhor_pedido: TSQLTimeStampField;
    BUS_CD_M_PEDid_condicao_pag: TIntegerField;
    BUS_CD_M_PEDpcp_obs: TStringField;
    BUS_CD_M_PEDpcp_id_opr: TIntegerField;
    BUS_CD_M_PEDsituacao: TIntegerField;
    BUS_CD_M_PEDsituacao_aprovacao: TIntegerField;
    BUS_CD_M_PEDid_atendente: TIntegerField;
    BUS_CD_M_PEDid_responsavel: TIntegerField;
    BUS_CD_M_PEDid_cliente: TIntegerField;
    BUS_CD_M_PEDtipo_restricao: TStringField;
    BUS_CD_M_PEDid_almoxarifado: TIntegerField;
    BUS_CD_M_PEDjustificativa: TStringField;
    BUS_CD_M_PEDid_usuario_lib: TIntegerField;
    BUS_CD_M_PEDcod_lme: TStringField;
    BUS_CD_M_PEDrev_lme: TStringField;
    BUS_CD_M_PEDorigem: TIntegerField;
    BUS_CD_M_PEDdispositivo: TStringField;
    BUS_CD_M_PEDgps_latitude: TFloatField;
    BUS_CD_M_PEDgps_longitude: TFloatField;
    BUS_CD_M_PEDcubagem: TFloatField;
    BUS_CD_M_PEDid_orcamento: TIntegerField;
    BUS_CD_M_PEDenvia_carga: TBooleanField;
    BUS_CD_M_PEDdta_prev_entrega: TDateField;
    BUS_CD_M_PEDid_abertura: TIntegerField;
    BUS_CD_M_PEDdias_cpg_prazo: TIntegerField;
    BUS_CD_M_PEDoffline: TBooleanField;
    BUS_CD_M_PEDconferido: TBooleanField;
    BUS_CD_M_PEDid_conf: TIntegerField;
    BUS_CD_M_PEDdta_conf: TDateField;
    BUS_CD_M_PEDhor_conf: TTimeField;
    BUS_CD_M_PEDresultado_conf: TIntegerField;
    BUS_CD_M_PEDINT_NOMECLI: TStringField;
    BUS_CD_M_PEDINT_NOMECID: TStringField;
    BUS_CD_M_PEDINT_NOMEEST: TStringField;
    BUS_CD_M_PEDINT_CPFCNPJ: TStringField;
    BUS_CD_M_PEDint_pessoacli: TIntegerField;
    BUS_CD_M_PEDINT_ID_PERFIL: TIntegerField;
    BUS_CD_M_PEDFAT_FD_M_PED_TIT: TDataSetField;
    BUS_CD_M_PEDFAT_FD_M_PED_ITE: TDataSetField;
    CAD_FD_C_PAR_MODid_empresa: TIntegerField;
    CAD_FD_C_PAR_MODsgq: TBooleanField;
    CAD_FD_C_PAR_MODctc: TBooleanField;
    CAD_FD_C_PAR_MODrev: TBooleanField;
    CAD_CD_C_PAR_MODid_empresa: TIntegerField;
    CAD_CD_C_PAR_MODsgq: TBooleanField;
    CAD_CD_C_PAR_MODctc: TBooleanField;
    CAD_CD_C_PAR_MODrev: TBooleanField;
    CAD_FD_C_FPGid_forma_pag: TIntegerField;
    CAD_FD_C_FPGdescricao: TStringField;
    CAD_FD_C_FPGdoc_impresso: TIntegerField;
    CAD_FD_C_FPGtipo_pagamento: TIntegerField;
    BUS_CD_C_CPGid_condicao_pag: TIntegerField;
    BUS_CD_C_CPGdescricao: TStringField;
    BUS_CD_C_CPGtipo_pagamento: TIntegerField;
    BUS_CD_C_CPGnum_parcelas: TIntegerField;
    BUS_CD_C_CPGper_desc: TFloatField;
    BUS_CD_C_CPGativo: TBooleanField;
    BUS_CD_C_CPG_EXPid_condicao_pag: TIntegerField;
    BUS_CD_C_CPG_EXPdescricao: TStringField;
    BUS_CD_C_CPG_EXPtipo_pagamento: TIntegerField;
    BUS_CD_C_CPG_EXPnum_parcelas: TIntegerField;
    BUS_CD_C_CPG_EXPper_desc: TFloatField;
    BUS_CD_C_CPG_EXPativo: TBooleanField;
    CAD_FD_C_CPGid_condicao_pag: TIntegerField;
    CAD_FD_C_CPGativo: TBooleanField;
    CAD_FD_C_CPGdescricao: TStringField;
    CAD_FD_C_CPGtipo_pagamento: TIntegerField;
    CAD_FD_C_CPGnum_parcelas: TIntegerField;
    CAD_FD_C_CPGper_desc: TFloatField;
    CAD_CD_C_FPG: TClientDataSet;
    CAD_CD_C_CPG: TClientDataSet;
    CAD_FD_C_CID: TFDQuery;
    CAD_DP_C_CID: TDataSetProvider;
    CAD_CD_C_CID: TClientDataSet;
    CAD_FD_C_CIDid_cidade: TStringField;
    CAD_FD_C_CIDnome: TStringField;
    CAD_FD_C_CIDuf: TStringField;
    CAD_CD_C_TME: TClientDataSet;
    CAD_CD_C_TMEid_tipo_mov_estoque: TIntegerField;
    CAD_CD_C_TMEdescricao: TStringField;
    CAD_CD_C_TMEtipo_movimento: TIntegerField;
    CAD_CD_C_TMEativo: TBooleanField;
    CAD_CD_C_TMEindicador: TIntegerField;
    CAD_CD_C_GRU: TClientDataSet;
    CAD_CD_C_PEC: TClientDataSet;
    CAD_CD_C_PECid_perfil_cli: TIntegerField;
    CAD_CD_C_PECdescricao: TStringField;
    CAD_CD_C_PECper_correcao: TFloatField;
    CAD_CD_C_PECoperacao: TIntegerField;
    CAD_CD_C_PECper_correcao_aprazo: TFloatField;
    CAD_CD_C_PECper_correcao_financeiro: TFloatField;
    CAD_FD_C_FOR: TFDQuery;
    CAD_CD_C_FOR: TClientDataSet;
    CAD_DP_C_FOR: TDataSetProvider;
    CAD_FD_C_FORid_fornecedor: TIntegerField;
    CAD_FD_C_FORdescricao: TStringField;
    CAD_FD_C_FORfantasia: TStringField;
    CAD_CD_C_FORid_fornecedor: TIntegerField;
    CAD_CD_C_FORdescricao: TStringField;
    CAD_CD_C_FORfantasia: TStringField;
    CAD_FD_C_UND: TFDQuery;
    CAD_DP_C_UND: TDataSetProvider;
    CAD_CD_C_UND: TClientDataSet;
    CAD_FD_C_UNDid_unidade: TStringField;
    CAD_FD_C_UNDdescricao: TStringField;
    CAD_FD_C_UNDnum_decimais: TIntegerField;
    CAD_CD_C_UNDid_unidade: TStringField;
    CAD_CD_C_UNDdescricao: TStringField;
    CAD_CD_C_UNDnum_decimais: TIntegerField;
    CAD_CD_C_FAM: TClientDataSet;
    CAD_CD_C_FAMid_familia: TIntegerField;
    CAD_CD_C_FAMdescricao: TStringField;
    CAD_FD_C_ITEid_familia: TIntegerField;
    BUS_CD_C_ITEid_familia: TIntegerField;
    CAD_FD_C_FAMfaz_corr_preco_perfil: TBooleanField;
    CAD_CD_C_FAMfaz_corr_preco_perfil: TBooleanField;
    BUS_CD_C_FAMfaz_corr_preco_perfil: TBooleanField;
    CAD_CD_C_ITE: TClientDataSet;
    CAD_CD_C_ITEid_item: TIntegerField;
    CAD_CD_C_ITEdescricao: TStringField;
    CAD_CD_C_ITEfantasia: TStringField;
    CAD_CD_C_ITEid_fornecedor: TIntegerField;
    CAD_CD_C_ITEid_grupo: TStringField;
    CAD_CD_C_ITEid_und_compra: TStringField;
    CAD_CD_C_ITEid_und_venda: TStringField;
    CAD_CD_C_ITEcod_barra: TStringField;
    CAD_CD_C_ITEcod_fabrica: TStringField;
    CAD_CD_C_ITEpreco_avista: TFloatField;
    CAD_CD_C_ITEpreco_aprazo: TFloatField;
    CAD_CD_C_ITEid_familia: TIntegerField;
    CAD_FD_C_ITE_PRC: TFDQuery;
    CAD_DS_C_ITE: TDataSource;
    CAD_FD_C_ITE_PRCid_item: TIntegerField;
    CAD_FD_C_ITE_PRCid_perfil_cli: TIntegerField;
    CAD_FD_C_ITE_PRCpreco_avista: TFloatField;
    CAD_FD_C_ITE_PRCpreco1: TFloatField;
    CAD_FD_C_ITE_PRCpreco2: TFloatField;
    CAD_FD_C_ITE_PRCpreco3: TFloatField;
    CAD_FD_C_ITE_PRCpreco4: TFloatField;
    CAD_CD_C_ITECAD_FD_C_ITE_PRC: TDataSetField;
    CAD_CD_C_ITE_PRC: TClientDataSet;
    CAD_CD_C_ITE_PRCid_item: TIntegerField;
    CAD_CD_C_ITE_PRCid_perfil_cli: TIntegerField;
    CAD_CD_C_ITE_PRCpreco_avista: TFloatField;
    CAD_CD_C_ITE_PRCpreco1: TFloatField;
    CAD_CD_C_ITE_PRCpreco2: TFloatField;
    CAD_CD_C_ITE_PRCpreco3: TFloatField;
    CAD_CD_C_ITE_PRCpreco4: TFloatField;
    EST_FD_M_FESid_item: TIntegerField;
    EST_FD_M_FESid_empresa: TIntegerField;
    EST_FD_M_FESid_cor: TIntegerField;
    EST_FD_M_FESid_tamanho: TIntegerField;
    EST_FD_M_FESdata_ult_movimento: TDateField;
    EST_FD_M_FESdata_ult_inventario: TDateField;
    EST_FD_M_FESqtde_entrada: TFloatField;
    EST_FD_M_FESqtde_saida: TFloatField;
    EST_FD_M_FESsaldo_fisico: TFloatField;
    EST_FD_M_FESqtde_ped_compra: TFloatField;
    EST_FD_M_FESqtde_ped_venda: TFloatField;
    EST_FD_M_FESvlr_custo_medio: TFloatField;
    EST_FD_M_FESvlr_custo_ult_compra: TFloatField;
    EST_CD_M_FESid_item: TIntegerField;
    EST_CD_M_FESid_empresa: TIntegerField;
    EST_CD_M_FESid_cor: TIntegerField;
    EST_CD_M_FESid_tamanho: TIntegerField;
    EST_CD_M_FESdata_ult_movimento: TDateField;
    EST_CD_M_FESdata_ult_inventario: TDateField;
    EST_CD_M_FESqtde_entrada: TFloatField;
    EST_CD_M_FESqtde_saida: TFloatField;
    EST_CD_M_FESsaldo_fisico: TFloatField;
    EST_CD_M_FESqtde_ped_compra: TFloatField;
    EST_CD_M_FESqtde_ped_venda: TFloatField;
    EST_CD_M_FESvlr_custo_medio: TFloatField;
    EST_CD_M_FESvlr_custo_ult_compra: TFloatField;
    EST_FD_M_FES_ALMid_item: TIntegerField;
    EST_FD_M_FES_ALMid_empresa: TIntegerField;
    EST_FD_M_FES_ALMid_cor: TIntegerField;
    EST_FD_M_FES_ALMid_tamanho: TIntegerField;
    EST_FD_M_FES_ALMid_almoxarifado: TIntegerField;
    EST_FD_M_FES_ALMdata_ult_movimento: TDateField;
    EST_FD_M_FES_ALMdata_ult_inventario: TDateField;
    EST_FD_M_FES_ALMqtde_entrada: TFloatField;
    EST_FD_M_FES_ALMqtde_saida: TFloatField;
    EST_FD_M_FES_ALMsaldo_fisico: TFloatField;
    EST_CD_M_FES_ALMid_item: TIntegerField;
    EST_CD_M_FES_ALMid_empresa: TIntegerField;
    EST_CD_M_FES_ALMid_cor: TIntegerField;
    EST_CD_M_FES_ALMid_tamanho: TIntegerField;
    EST_CD_M_FES_ALMid_almoxarifado: TIntegerField;
    EST_CD_M_FES_ALMdata_ult_movimento: TDateField;
    EST_CD_M_FES_ALMdata_ult_inventario: TDateField;
    EST_CD_M_FES_ALMqtde_entrada: TFloatField;
    EST_CD_M_FES_ALMqtde_saida: TFloatField;
    EST_CD_M_FES_ALMsaldo_fisico: TFloatField;
    CAD_CD_C_CLI: TClientDataSet;
    CAD_CD_C_CLIid_cliente: TIntegerField;
    CAD_CD_C_CLIpessoa: TIntegerField;
    CAD_CD_C_CLInome: TStringField;
    CAD_CD_C_CLIendereco: TStringField;
    CAD_CD_C_CLIend_complemento: TStringField;
    CAD_CD_C_CLIcep: TStringField;
    CAD_CD_C_CLInumero: TStringField;
    CAD_CD_C_CLItel_fixo: TStringField;
    CAD_CD_C_CLItel_movel: TStringField;
    CAD_CD_C_CLIfax: TStringField;
    CAD_CD_C_CLIdoc_cnpj_cpf: TStringField;
    CAD_CD_C_CLIdoc_ie_identidade: TStringField;
    CAD_CD_C_CLIbairro: TStringField;
    CAD_CD_C_CLIid_cidade: TStringField;
    CAD_CD_C_CLIativo: TBooleanField;
    CAD_CD_C_CLIemail: TStringField;
    CAD_CD_C_CLIlim_valor: TFloatField;
    CAD_CD_C_CLIlim_saldo: TFloatField;
    CAD_CD_C_CLIsexo: TIntegerField;
    CAD_CD_C_CLIsituacao: TIntegerField;
    CAD_CD_C_CLItipo_cliente: TIntegerField;
    CAD_CD_C_CLIcod_pais: TStringField;
    CAD_CD_C_CLIid_perfil_cli: TIntegerField;
    CAD_CD_C_CLIdoc_rg_orgao: TStringField;
    CAD_CD_C_CLIid_vendedor: TIntegerField;
    CAD_CD_C_CLIdias_prazo_financeiro: TIntegerField;
    CAD_CD_C_CLIint_uf: TStringField;
    CAD_CD_C_CLIint_nomecid: TStringField;
    CAD_FD_C_ALM: TFDQuery;
    CAD_FD_C_ALMid_almoxarifado: TIntegerField;
    CAD_FD_C_ALMdescricao: TStringField;
    CAD_DP_C_ALM: TDataSetProvider;
    CAD_CD_C_ALM: TClientDataSet;
    CAD_CD_C_ALMid_almoxarifado: TIntegerField;
    CAD_CD_C_ALMdescricao: TStringField;
    CAD_CD_C_COR: TClientDataSet;
    CAD_CD_C_CORid_cor: TIntegerField;
    CAD_CD_C_CORdescricao: TStringField;
    CAD_CD_C_TAM: TClientDataSet;
    CAD_CD_C_TAMid_tamanho: TIntegerField;
    CAD_CD_C_TAMdescricao: TStringField;
    CAD_CD_C_PARrev_lme: TStringField;
    CAD_CD_C_CIDid_cidade: TStringField;
    CAD_CD_C_CIDnome: TStringField;
    CAD_CD_C_CIDuf: TStringField;
    CAD_FD_C_FUNid_funcionario: TIntegerField;
    CAD_FD_C_FUNnome: TStringField;
    CAD_CD_C_FUNid_funcionario: TIntegerField;
    CAD_CD_C_FUNnome: TStringField;
    CAD_FD_C_TRI: TFDQuery;
    CAD_DP_C_TRI: TDataSetProvider;
    CAD_CD_C_TRI: TClientDataSet;
    CAD_FD_C_TRI_REG: TFDQuery;
    CAD_DS_C_TRI: TDataSource;
    CAD_CD_C_TRI_REG: TClientDataSet;
    CAD_FD_C_TRIid_tributo: TIntegerField;
    CAD_FD_C_TRIdescricao: TStringField;
    CAD_FD_C_TRI_REGid_tributo: TIntegerField;
    CAD_FD_C_TRI_REGid_tipo_mov_estoque: TIntegerField;
    CAD_FD_C_TRI_REGuf: TStringField;
    CAD_FD_C_TRI_REGid_empresa: TIntegerField;
    CAD_CD_C_TRIid_tributo: TIntegerField;
    CAD_CD_C_TRIdescricao: TStringField;
    CAD_CD_C_TRICAD_FD_C_TRI_REG: TDataSetField;
    CAD_CD_C_TRI_REGid_tributo: TIntegerField;
    CAD_CD_C_TRI_REGid_tipo_mov_estoque: TIntegerField;
    CAD_CD_C_TRI_REGuf: TStringField;
    CAD_CD_C_TRI_REGid_empresa: TIntegerField;
    CAD_FD_C_CLIapelido: TStringField;
    CAD_CD_C_CLIapelido: TStringField;
    BUS_CD_C_CLIapelido: TStringField;
    EST_FD_M_FESINT_NOMEEMP: TStringField;
    EST_FD_M_FESINT_NOMEFAN: TStringField;
    EST_FD_M_FESINT_NOMECOR: TStringField;
    EST_FD_M_FESINT_NOMETAM: TStringField;
    EST_CD_M_FESINT_NOMEEMP: TStringField;
    EST_CD_M_FESINT_NOMEFAN: TStringField;
    EST_CD_M_FESINT_NOMECOR: TStringField;
    EST_CD_M_FESINT_NOMETAM: TStringField;
    EST_FD_M_FES_ALMint_nomealm: TStringField;
    EST_FD_M_FES_ALMINT_NOMEEMP: TStringField;
    EST_FD_M_FES_ALMINT_NOMEFAN: TStringField;
    EST_FD_M_FES_ALMINT_NOMECOR: TStringField;
    EST_FD_M_FES_ALMINT_NOMETAM: TStringField;
    EST_CD_M_FES_ALMint_nomealm: TStringField;
    EST_CD_M_FES_ALMINT_NOMEEMP: TStringField;
    EST_CD_M_FES_ALMINT_NOMEFAN: TStringField;
    EST_CD_M_FES_ALMINT_NOMECOR: TStringField;
    EST_CD_M_FES_ALMINT_NOMETAM: TStringField;
    CAD_CD_C_SEQ: TClientDataSet;
    CAD_DP_C_SEQ: TDataSetProvider;
    CAD_FD_C_SEQ: TFDQuery;
    CAD_FD_C_SEQid_tabela: TStringField;
    CAD_FD_C_SEQsequencia: TIntegerField;
    CAD_CD_C_SEQid_tabela: TStringField;
    CAD_CD_C_SEQsequencia: TIntegerField;
    CAD_FD_C_PAR_CTRsgq_dias_prev_cid_fora: TIntegerField;
    CAD_FD_C_PAR_CTRsgq_dias_prev_cid_dentro: TIntegerField;
    CAD_CD_C_PAR_CTRsgq_dias_prev_cid_fora: TIntegerField;
    CAD_CD_C_PAR_CTRsgq_dias_prev_cid_dentro: TIntegerField;
    CAD_FD_C_PAR_CTRped_cliente: TIntegerField;
    CAD_CD_C_PAR_CTRped_cliente: TIntegerField;
    CAD_FD_C_PAR_CTRped_ver_limite: TBooleanField;
    CAD_CD_C_PAR_CTRped_ver_limite: TBooleanField;
    FAT_CD_M_PED_ITEid_pedido: TIntegerField;
    FAT_CD_M_PED_ITEid_sequencia: TIntegerField;
    FAT_CD_M_PED_ITEid_item: TIntegerField;
    FAT_CD_M_PED_ITEqtde: TFloatField;
    FAT_CD_M_PED_ITEvlr_unitario: TFloatField;
    FAT_CD_M_PED_ITEvlr_bruto: TFloatField;
    FAT_CD_M_PED_ITEper_desconto: TFloatField;
    FAT_CD_M_PED_ITEvlr_liquido: TFloatField;
    FAT_CD_M_PED_ITEid_cor: TIntegerField;
    FAT_CD_M_PED_ITEid_tamanho: TIntegerField;
    FAT_CD_M_PED_ITEid_busca_item: TStringField;
    FAT_CD_M_PED_ITEvlr_unitario_orig: TFloatField;
    FAT_CD_M_PED_ITEper_desc_max: TFloatField;
    FAT_CD_M_PED_ITEqtde_conferida: TFloatField;
    FAT_CD_M_PED_ITEint_nomeite: TStringField;
    FAT_CD_M_PED_ITEint_nomecor: TStringField;
    FAT_CD_M_PED_ITEint_id_und_venda: TStringField;
    FAT_CD_M_PED_ITEint_tipo_item: TStringField;
    FAT_CD_M_PED_ITEint_nometam: TStringField;
    FAT_CD_M_PED_TITid_pedido: TIntegerField;
    FAT_CD_M_PED_TITid_titulo: TIntegerField;
    FAT_CD_M_PED_TITdias: TIntegerField;
    FAT_CD_M_PED_TITdta_vencimento: TDateField;
    FAT_CD_M_PED_TITvlr_titulo: TFloatField;
    FAT_CD_M_PED_TITche_banco: TStringField;
    FAT_CD_M_PED_TITche_agencia: TStringField;
    FAT_CD_M_PED_TITche_conta: TIntegerField;
    FAT_CD_M_PED_TITche_numero: TIntegerField;
    FAT_CD_M_PED_TITche_emitente: TStringField;
    FAT_CD_M_PED_TITid_forma_pag: TIntegerField;
    FAT_CD_M_PED_TITbol_nosso_numero: TIntegerField;
    FAT_CD_M_PED_TITid_maquineta: TIntegerField;
    CAD_FD_C_ITEativo: TBooleanField;
    CAD_CD_C_ITEativo: TBooleanField;
    BUS_CD_C_ITEativo: TBooleanField;
    CAD_FD_C_ITEint_tipo_item: TStringField;
    CAD_CD_C_ITEint_tipo_item: TStringField;
    BUS_CD_C_ITEint_tipo_item: TStringField;
    CAD_FD_C_PAR_CTRnfe_separa_prod_serv: TBooleanField;
    CAD_CD_C_PAR_CTRnfe_separa_prod_serv: TBooleanField;
    BUS_FD_C_TRI_REGid_tributo: TIntegerField;
    BUS_FD_C_TRI_REGid_tipo_mov_estoque: TIntegerField;
    BUS_FD_C_TRI_REGuf: TStringField;
    BUS_FD_C_TRI_REGid_empresa: TIntegerField;
    CAD_FD_C_PAR_CTRped_aceita_est_negativo: TBooleanField;
    CAD_CD_C_PAR_CTRped_aceita_est_negativo: TBooleanField;
    PCP_FD_C_REG: TFDQuery;
    PCP_DP_C_REG: TDataSetProvider;
    PCP_CD_C_REG: TClientDataSet;
    PCP_FD_C_REGid_regiao: TIntegerField;
    PCP_FD_C_REGdescricao: TStringField;
    PCP_FD_C_REGdesc_perc: TFloatField;
    PCP_CD_C_REGid_regiao: TIntegerField;
    PCP_CD_C_REGdescricao: TStringField;
    PCP_CD_C_REGdesc_perc: TFloatField;
    CAD_FD_C_CLIid_regiao: TIntegerField;
    CAD_FD_C_CLIINT_REG_DESC_PERC: TFloatField;
    CAD_CD_C_CLIid_regiao: TIntegerField;
    CAD_CD_C_CLIINT_REG_DESC_PERC: TFloatField;
    BUS_CD_C_CLIid_regiao: TIntegerField;
    BUS_CD_C_CLIINT_REG_DESC_PERC: TFloatField;
    CAD_FD_C_PAR_CTRper_desconto: TFloatField;
    CAD_CD_C_PAR_CTRper_desconto: TFloatField;
    CAD_FD_C_TMEesto_movimenta: TBooleanField;
    CAD_CD_C_TMEesto_movimenta: TBooleanField;
    BUS_CD_C_TMEesto_movimenta: TBooleanField;
    CAD_FD_C_GRUid_grupo: TStringField;
    CAD_FD_C_GRUdescricao: TStringField;
    CAD_FD_C_GRUtipo: TIntegerField;
    CAD_FD_C_GRUnivel: TIntegerField;
    CAD_FD_C_GRUtipo_item: TStringField;
    CAD_FD_C_GRUid_tributo: TIntegerField;
    CAD_FD_C_GRUpromo_ativa: TBooleanField;
    CAD_FD_C_GRUpromo_perc: TFloatField;
    CAD_FD_C_GRUdesc_ativa: TBooleanField;
    CAD_FD_C_GRUdesc_perc: TFloatField;
    CAD_CD_C_GRUid_grupo: TStringField;
    CAD_CD_C_GRUdescricao: TStringField;
    CAD_CD_C_GRUtipo: TIntegerField;
    CAD_CD_C_GRUnivel: TIntegerField;
    CAD_CD_C_GRUtipo_item: TStringField;
    CAD_CD_C_GRUid_tributo: TIntegerField;
    CAD_CD_C_GRUpromo_ativa: TBooleanField;
    CAD_CD_C_GRUpromo_perc: TFloatField;
    CAD_CD_C_GRUdesc_ativa: TBooleanField;
    CAD_CD_C_GRUdesc_perc: TFloatField;
    BUS_CD_C_GRUid_grupo: TStringField;
    BUS_CD_C_GRUdescricao: TStringField;
    BUS_CD_C_GRUtipo: TIntegerField;
    BUS_CD_C_GRUnivel: TIntegerField;
    BUS_CD_C_GRUtipo_item: TStringField;
    BUS_CD_C_GRUid_tributo: TIntegerField;
    BUS_CD_C_GRUpromo_ativa: TBooleanField;
    BUS_CD_C_GRUpromo_perc: TFloatField;
    BUS_CD_C_GRUdesc_ativa: TBooleanField;
    BUS_CD_C_GRUdesc_perc: TFloatField;
    CAD_FD_C_PAR_CTRped_cli_cns_vnd_max: TFloatField;
    CAD_CD_C_PAR_CTRped_cli_cns_vnd_max: TFloatField;
    FAT_CD_M_PED_ITEvlr_desconto: TFloatField;
    CAD_FD_C_ITEcubagem: TFloatField;
    CAD_CD_C_ITEcubagem: TFloatField;
    BUS_CD_C_ITEcubagem: TFloatField;
    FAT_FD_M_PED_TITINT_NOMEFPG: TStringField;
    FAT_FD_M_PED_TITINT_DOCIMPRESSO: TIntegerField;
    FAT_CD_M_PED_TITINT_NOMEFPG: TStringField;
    FAT_CD_M_PED_TITINT_DOCIMPRESSO: TIntegerField;
    CAD_FD_C_PAR_CTRcxa_critica_chq: TBooleanField;
    CAD_CD_C_PAR_CTRcxa_critica_chq: TBooleanField;
    BUS_FD_CSU_ITEid_item: TIntegerField;
    BUS_FD_CSU_ITEdescricao: TStringField;
    BUS_FD_CSU_ITEfantasia: TStringField;
    BUS_FD_CSU_ITEid_familia: TIntegerField;
    BUS_FD_CSU_ITEid_fornecedor: TIntegerField;
    BUS_FD_CSU_ITEid_grupo: TStringField;
    BUS_FD_CSU_ITEid_und_compra: TStringField;
    BUS_FD_CSU_ITEid_und_venda: TStringField;
    BUS_FD_CSU_ITEcod_barra: TStringField;
    BUS_FD_CSU_ITEcod_fabrica: TStringField;
    BUS_FD_CSU_ITEpreco_avista: TFloatField;
    BUS_FD_CSU_ITEpreco_aprazo: TFloatField;
    BUS_FD_CSU_ITEativo: TBooleanField;
    BUS_FD_CSU_ITEcubagem: TFloatField;
    BUS_CD_X_TIPCODIGO: TStringField;
    BUS_CD_X_TIPDESCRICAO: TStringField;
    BUS_FD_CSU_ITEINT_DESC_GRUPO: TStringField;
    BUS_FD_CSU_ITEINT_NOMEFOR: TStringField;
    BUS_FD_C_ITE_PRCINT_DESC_PEC: TStringField;
    BUS_FD_CSU_ITEINT_TIPO_ITEM: TStringField;
    BUS_FD_C_PAR_CPG_INFid_empresa: TIntegerField;
    BUS_FD_C_PAR_CPG_INFid_condicao_pag: TIntegerField;
    BUS_FD_C_PAR_CPG_INFint_nomecpg: TStringField;
    BUS_FD_C_PAR_CPG_INFsequencia: TIntegerField;
    BUS_FD_C_PAR_CPG_INFper_reajuste: TFloatField;
    BUS_FD_C_PAR_CPGid_empresa: TIntegerField;
    BUS_FD_C_PAR_CPGid_condicao_pag: TIntegerField;
    BUS_FD_C_PAR_CPGper_reajuste: TFloatField;
    BUS_FD_C_PAR_CPGsequencia: TIntegerField;
    BUS_FD_C_PAR_CPGINT_NOMECPG: TStringField;
    BUS_FD_CSU_ITEid_ncm: TStringField;
    BUS_FD_CSU_ITEloca_rua: TStringField;
    BUS_FD_CSU_ITEreferencia: TStringField;
    BUS_FD_CSU_ITEdestino_reclamado: TIntegerField;
    CAD_FD_C_ITEid_ncm: TStringField;
    CAD_FD_C_ITEloca_rua: TStringField;
    CAD_FD_C_ITEreferencia: TStringField;
    CAD_FD_C_ITEdestino_reclamado: TIntegerField;
    CAD_CD_C_ITEid_ncm: TStringField;
    CAD_CD_C_ITEloca_rua: TStringField;
    CAD_CD_C_ITEreferencia: TStringField;
    CAD_CD_C_ITEdestino_reclamado: TIntegerField;
    BUS_CD_C_ITEid_ncm: TStringField;
    BUS_CD_C_ITEloca_rua: TStringField;
    BUS_CD_C_ITEreferencia: TStringField;
    BUS_CD_C_ITEdestino_reclamado: TIntegerField;
    FAT_FD_M_PEDINT_NOMETME: TStringField;
    FAT_FD_M_PEDINT_NOMEFUN: TStringField;
    FAT_FD_M_PEDINT_NOMECPG: TStringField;
    FAT_FD_M_PEDINT_NOMEATE: TStringField;
    FAT_FD_M_PEDINT_NOMERES: TStringField;
    FAT_FD_M_PEDint_ie_rg_cli: TStringField;
    FAT_CD_M_PEDINT_NOMETME: TStringField;
    FAT_CD_M_PEDINT_NOMEFUN: TStringField;
    FAT_CD_M_PEDINT_NOMECPG: TStringField;
    FAT_CD_M_PEDINT_NOMEATE: TStringField;
    FAT_CD_M_PEDINT_NOMERES: TStringField;
    FAT_CD_M_PEDint_ie_rg_cli: TStringField;
    CAD_FD_C_PARint_uf: TStringField;
    CAD_FD_C_PARint_nomecid: TStringField;
    CAD_CD_C_PARint_uf: TStringField;
    CAD_CD_C_PARint_nomecid: TStringField;
    FIN_FD_M_REC: TFDQuery;
    FIN_DP_M_REC: TDataSetProvider;
    FIN_CD_M_REC: TClientDataSet;
    FIN_FD_M_RECid_titulo: TIntegerField;
    FIN_FD_M_RECid_empresa: TIntegerField;
    FIN_FD_M_RECid_cliente: TIntegerField;
    FIN_FD_M_RECdta_vencimento: TDateField;
    FIN_FD_M_RECvlr_saldo: TFloatField;
    FIN_FD_M_RECid_forma_pag: TIntegerField;
    FIN_CD_M_RECid_titulo: TIntegerField;
    FIN_CD_M_RECid_empresa: TIntegerField;
    FIN_CD_M_RECid_cliente: TIntegerField;
    FIN_CD_M_RECdta_vencimento: TDateField;
    FIN_CD_M_RECvlr_saldo: TFloatField;
    FIN_CD_M_RECid_forma_pag: TIntegerField;
    CAD_FD_C_FUNdoc_cpf: TStringField;
    CAD_FD_C_FUNlogin: TStringField;
    CAD_FD_C_FUNsenha: TStringField;
    CAD_FD_C_FUNseg_alt_vend_ped: TBooleanField;
    CAD_FD_C_FUNseg_habilitar_seg: TBooleanField;
    CAD_FD_C_FUNseg_hab_bot_exc: TBooleanField;
    CAD_FD_C_FUNseg_vis_ult_cmp_ite: TBooleanField;
    CAD_FD_C_FUNseg_hab_bot_alt_fun: TBooleanField;
    CAD_FD_C_FUNseg_alt_pre_pro: TBooleanField;
    CAD_CD_C_FUNdoc_cpf: TStringField;
    CAD_CD_C_FUNlogin: TStringField;
    CAD_CD_C_FUNsenha: TStringField;
    CAD_CD_C_FUNseg_alt_vend_ped: TBooleanField;
    CAD_CD_C_FUNseg_habilitar_seg: TBooleanField;
    CAD_CD_C_FUNseg_hab_bot_exc: TBooleanField;
    CAD_CD_C_FUNseg_vis_ult_cmp_ite: TBooleanField;
    CAD_CD_C_FUNseg_hab_bot_alt_fun: TBooleanField;
    CAD_CD_C_FUNseg_alt_pre_pro: TBooleanField;
    BUS_CD_M_REC: TClientDataSet;
    CAD_FD_C_FPGcri_debi_cliente: TBooleanField;
    CAD_CD_C_FPGid_forma_pag: TIntegerField;
    CAD_CD_C_FPGdescricao: TStringField;
    CAD_CD_C_FPGdoc_impresso: TIntegerField;
    CAD_CD_C_FPGtipo_pagamento: TIntegerField;
    CAD_CD_C_FPGcri_debi_cliente: TBooleanField;
    CAD_FD_C_ITE_PRC_INT: TFDQuery;
    CAD_DP_C_ITE_PRC_INT: TDataSetProvider;
    CAD_CD_C_ITE_PRC_INT: TClientDataSet;
    CAD_FD_C_ITE_PRC_INTid_item: TIntegerField;
    CAD_FD_C_ITE_PRC_INTid_perfil_cli: TIntegerField;
    CAD_FD_C_ITE_PRC_INTpreco_avista: TFloatField;
    CAD_FD_C_ITE_PRC_INTpreco1: TFloatField;
    CAD_FD_C_ITE_PRC_INTpreco2: TFloatField;
    CAD_FD_C_ITE_PRC_INTpreco3: TFloatField;
    CAD_FD_C_ITE_PRC_INTpreco4: TFloatField;
    CAD_CD_C_PAR_CPGid_condicao_pag: TIntegerField;
    qryBusca: TFDQuery;
    FAT_FD_M_PEDped_excluido: TBooleanField;
    FAT_CD_M_PEDped_excluido: TBooleanField;
    BUS_CD_M_PEDped_excluido: TBooleanField;
    CAD_FD_C_PAR_RST: TFDQuery;
    CAD_CD_C_PAR_RST: TClientDataSet;
    CAD_CD_C_PAR_RSTid_empresa: TIntegerField;
    CAD_CD_C_PAR_RSTletra_restricao: TWideStringField;
    CAD_CD_C_PAR_RSTtipo_restricao: TIntegerField;
    CAD_CD_C_PARCAD_FD_C_PAR_RST: TDataSetField;
    function CAD_DP_C_PARDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_FUNDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    procedure DataModuleCreate(Sender: TObject);
    procedure FAT_CD_M_PED_ITEvlr_unitarioChange(Sender: TField);
    procedure FAT_CD_M_PED_ITEqtdeChange(Sender: TField);
    procedure FAT_CD_M_PED_ITEid_itemChange(Sender: TField);
    procedure FAT_CD_M_PED_ITEper_descontoChange(Sender: TField);
    procedure FAT_CD_M_PED_ITEvlr_descontoChange(Sender: TField);
    procedure FAT_CD_M_PED_ITENewRecord(DataSet: TDataSet);
    procedure FAT_CD_M_PED_ITEBeforePost(DataSet: TDataSet);
    procedure FAT_CD_M_PED_ITEBeforeOpen(DataSet: TDataSet);
    procedure FAT_CD_M_PED_ITEAfterPost(DataSet: TDataSet);
    procedure FAT_CD_M_PED_ITEAfterDelete(DataSet: TDataSet);
    procedure FAT_CD_M_PEDNewRecord(DataSet: TDataSet);
    procedure FAT_CD_M_PEDBeforeOpen(DataSet: TDataSet);
    procedure FAT_CD_M_PEDBeforeEdit(DataSet: TDataSet);
    procedure FAT_CD_M_PED_TITNewRecord(DataSet: TDataSet);
    procedure FAT_CD_M_PED_TITBeforeOpen(DataSet: TDataSet);
    function BUS_DP_C_TRI_REGDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_FPGDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_CPGDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_TMEDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;

    function CAD_DP_C_CIDDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_CLIDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_PECDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_TRIDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_UNDDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_GRUDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_FAMDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_FORDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_ITEDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_TAMDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_CORDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_ALMDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function EST_DP_M_FESDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function EST_DP_M_FES_ALMDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function FAT_DP_M_PEDDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_SEQDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function PCP_DP_C_REGDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function BUS_DP_CSU_ITEDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function BUS_DP_C_ITE_PRCDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function BUS_DP_C_PAR_CPG_INFDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function BUS_DP_C_PAR_CPGDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function FIN_DP_M_RECDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function CAD_DP_C_ITE_PRC_INTDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    
  private
    { Private declarations }
    procedure AcessarBancoLocal;
    var
      Connections : TDictionary<NativeInt,TSQLConnection>;

  public
     function enValorChave(NomeSeq: String): Integer;
     procedure BusCor(index: integer; filtro: string);
     procedure BusTamanho(index: integer; filtro: string);
     procedure BusCondPgto(index: integer; filtro: string);
     procedure BusFormaPgtos(index: integer; filtro: string);
     procedure BusFormaPgtos2(index: integer; filtro: String);
     procedure BusFuncionario(index: integer; filtro: string);
     procedure BusFuncionario2(index:integer; filtro: string);
     procedure BusPerfil(index: integer; filtro: String);
     procedure BusItens(index: integer; filtro: string);
     procedure BusCondPgtoExp(index: integer; filtro: String);
     procedure BusGrupoEst(index: integer; filtro: String);
     procedure BusTipoEstoque(index: integer; filtro: string);
     procedure BusCliente(index: integer; filtro: string);
     //procedure BusPlanoCta(index: integer; filtro: string);
     procedure BusTriReg(id_tributo, id_tipo_mov_estoque, uf,id_empresa: String);


     procedure BUS_PR_X_TIP(Tabela:TClientDataSet);

     function  ImpEmpresa(var msg:String):Integer;
     function  ImpFormaPgto(var msg:String):Integer;
     function  ImpCondPgto(var msg:String):Integer;
     function  ImpCidade(var msg:String):Integer;
     function  ImpTipoMovEstoque(var msg:String):Integer;
     function  ImpGrupo(var msg:String):Integer;
     function  ImpPerfil(var msg:String):Integer;
     //function  ImpPlanoContas(var msg:String):Integer;
     function  ImpUnidade(var msg:String):Integer;
     function  ImpFornecedor(var msg:String):Integer;
     function  ImpFamilia(var msg:String):Integer;
     function  ImpItens(var msg:String):Integer;
     function  ImpFichaEstoque(var msg:String):Integer;
     function  ImpFichaEstoqueAlm(var msg:String):Integer;
     function  ImpCliente(var msg:String):Integer;
     function  ImpAlmoxarifado(var msg:String):Integer;
     function  ImpCor(var msg:String):Integer;
     function  ImpTamanho(var msg:String):Integer;
     function  ImpRegiao(var msg:String):Integer;
     function  ImpFuncionario(var msg:String):Integer;
     function  ImpTributo(var msg:String):Integer;
     function  ImpTituloRec(var msg:String;codCliente:String):Integer;

     function LimparBanco(var msg:String):Integer;


     function VerifCliSemLimite(id_cliente: String; valor_doc: currency): Boolean;
     Function enExiDebCliente(DiasProtesto,id_cliente:integer):boolean;
     procedure Grava(Tabela: TClientDataSet);

     function BuscarDescItem(cds_itens: TClientDataSet;tipo_busca_desc:integer=0;id_cliente:integer=0;id_condpag:integer=0): Currency;
     function BusSaldoItem(empresa, id_item, id_cor, id_tamanho,
           id_almoxarifado: String; var saldo_fisico: String): Boolean;

     function CAD_CD_C_CLI_TesValObrigatorio(
                              cds_cli: TClientDataSet): Boolean;
     function CAD_CD_C_ITE_TesValObrigatorio(
                              cds_item: TClientDataSet): Boolean;
     function VerifCliEmDeb(id_cliente: integer; id_condicao_pag: string): Boolean;
     function BusPercPromGru(id_grupo: String): Extended;
     procedure BusUltPrcNfeIte(index: integer; item,cor,tamanho: String);
     function TesValDias(const valor: integer): Boolean;
     function TesValVlr(const valor: Currency): Boolean;
     function TesValVencto(const emissao_doc, vencto: TDateTime): Boolean;
     function TesValVlrDesconto(const valor_desconto, valor_bruto_item, perc_desc_perm: Currency): Boolean;
     function TesValPerDesconto(const valor, perc_desc_perm: Currency): Boolean;
     function TesValVlrUnitPed(const valor: Currency): Boolean;
     procedure AtualizarGridItens(grdItens: TwwDBGrid; NomeColItem: String; TamLargCor, TamLargTam: Integer);
     function CalcPrecoItem(tipo_calculo: integer; id_perfil_cli, id_condicao_pag: String;
   cds_itens: TClientDataSet; PsqItem, CsuItem: Boolean;diasPrazo:integer=0;calculo_prc_prazo:integer=0): Currency;
     procedure GerarFPG_Entrada(origem: integer; id_forma_fpg,id_plano: string; valor: Currency;
  cds: TClientDataSet);
     function VerifTribItem(lTipoNf,IdEmpresa,IdEmitente,IdItem,IdTipoEstoque,TipoAcao: String):Boolean;
     function LocalizarRegItem(cds_itens: TClientDataSet; rotina, id_item, id_cor,
                        id_tamanho, id_almoxarifado, nro_lote: String): Boolean;
     function TesValQtde(const valor: Double): Boolean;
     function FatTestaQtdeIte(origem: integer;CdsPai, CdsIte: TClientDataSet): Boolean;
     procedure GerarFPG_Doc(id_forma_fpg, id_plano, id_Ccusto: String; qtde_parcelas: integer;  valor: Currency; cds: TClientDataSet;
                                Origem:Integer);
    { Public declarations }
  end;



var
  dmGeral: TdmGeral;
  xDataSis: TDate;
  xHoraSis: TTime;
  xFuncionario,xPerfilUsuario: integer;
  xCodLme,xRevLme: String;





implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FAT_RN_M_PED, enFunc, uDmGeralSer, enConstantes;

{$R *.dfm}




function TdmGeral.LimparBanco(var msg:String):Integer;
begin
  Result := 0;

  dmGeral.FIN_CD_M_REC.Close;
  dmGeral.FIN_CD_M_REC.Data :=
  dmGeral.FIN_CD_M_REC.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.FIN_CD_M_REC.eof do
      begin
        dmGeral.FIN_CD_M_REC.delete;
      end;


  if dmGeral.FIN_CD_M_REC.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os títulos.';
      exit;
    end;

  dmGeral.CAD_CD_C_CLI.Close;
  dmGeral.CAD_CD_C_CLI.Data :=
  dmGeral.CAD_CD_C_CLI.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_CLI.eof do
      begin
        dmGeral.CAD_CD_C_CLI.delete;
      end;

  if dmGeral.CAD_CD_C_CLI.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os clientes.';
      exit;
    end;



  dmGeral.PCP_CD_C_REG.Close;
  dmGeral.PCP_CD_C_REG.Data :=
  dmGeral.PCP_CD_C_REG.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.PCP_CD_C_REG.eof do
      begin
        dmGeral.PCP_CD_C_REG.delete;
      end;

  if dmGeral.PCP_CD_C_REG.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as regiões.';
      exit;
    end;


  dmGeral.EST_CD_M_FES_ALM.Close;
  dmGeral.EST_CD_M_FES_ALM.Data :=
  dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.EST_CD_M_FES_ALM.eof do
      begin
        dmGeral.EST_CD_M_FES_ALM.delete;
      end;

  if dmGeral.EST_CD_M_FES_ALM.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as ficha de estoque por almoxarifado.';
      exit;
    end;




  dmGeral.EST_CD_M_FES.Close;
  dmGeral.EST_CD_M_FES.Data :=
  dmGeral.EST_CD_M_FES.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.EST_CD_M_FES.eof do
      begin
        dmGeral.EST_CD_M_FES.delete;
      end;

  if dmGeral.EST_CD_M_FES.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as ficha de estoque.';
      exit;
    end;




  dmGeral.CAD_CD_C_COR.Close;
  dmGeral.CAD_CD_C_COR.Data :=
  dmGeral.CAD_CD_C_COR.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_COR.eof do
      begin
        dmGeral.CAD_CD_C_COR.delete;
      end;

  if dmGeral.CAD_CD_C_COR.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as cores.';
      exit;
    end;


  dmGeral.CAD_CD_C_TAM.Close;
  dmGeral.CAD_CD_C_TAM.Data :=
  dmGeral.CAD_CD_C_TAM.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_TAM.eof do
      begin
        dmGeral.CAD_CD_C_TAM.delete;
      end;

  if dmGeral.CAD_CD_C_TAM.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os tamanhos.';
      exit;
    end;


  dmGeral.CAD_CD_C_ALM.Close;
  dmGeral.CAD_CD_C_ALM.Data :=
  dmGeral.CAD_CD_C_ALM.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_ALM.eof do
      begin
        dmGeral.CAD_CD_C_ALM.delete;
      end;

  if dmGeral.CAD_CD_C_ALM.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os almoxarifados.';
      exit;
    end;



  dmGeral.CAD_CD_C_ITE_PRC_INT.Close;
  dmGeral.CAD_CD_C_ITE_PRC_INT.Data :=
  dmGeral.CAD_CD_C_ITE_PRC_INT.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_ITE_PRC_INT.eof do
      begin
        dmGeral.CAD_CD_C_ITE_PRC_INT.delete;
      end;

  if dmGeral.CAD_CD_C_ITE_PRC_INT.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os precços dos itens.';
      exit;
    end;


  dmGeral.CAD_CD_C_ITE.Close;
  dmGeral.CAD_CD_C_ITE.Data :=
  dmGeral.CAD_CD_C_ITE.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_ITE.eof do
      begin
        dmGeral.CAD_CD_C_ITE.delete;
      end;

  if dmGeral.CAD_CD_C_ITE.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os itens.';
      exit;
    end;


  dmGeral.CAD_CD_C_FOR.Close;
  dmGeral.CAD_CD_C_FOR.Data :=
  dmGeral.CAD_CD_C_FOR.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_FOR.eof do
      begin
        dmGeral.CAD_CD_C_FOR.delete;
      end;

  if dmGeral.CAD_CD_C_FOR.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os fornecedores.';
      exit;
    end;


  dmGeral.CAD_CD_C_PEC.Close;
  dmGeral.CAD_CD_C_PEC.Data :=
  dmGeral.CAD_CD_C_PEC.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_PEC.eof do
      begin
        dmGeral.CAD_CD_C_PEC.delete;
      end;

  if dmGeral.CAD_CD_C_PEC.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os perfis.';
      exit;
    end;



  dmGeral.CAD_CD_C_FAM.Close;
  dmGeral.CAD_CD_C_FAM.Data :=
  dmGeral.CAD_CD_C_FAM.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_FAM.eof do
      begin
        dmGeral.CAD_CD_C_FAM.delete;
      end;

  if dmGeral.CAD_CD_C_FAM.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as familias.';
      exit;
    end;


  dmGeral.CAD_CD_C_GRU.Close;
  dmGeral.CAD_CD_C_GRU.Data :=
  dmGeral.CAD_CD_C_GRU.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_GRU.eof do
      begin
        dmGeral.CAD_CD_C_GRU.delete;
      end;

  if dmGeral.CAD_CD_C_GRU.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os grupos.';
      exit;
    end;


  dmGeral.CAD_CD_C_UND.Close;
  dmGeral.CAD_CD_C_UND.Data :=
  dmGeral.CAD_CD_C_UND.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_UND.eof do
      begin
        dmGeral.CAD_CD_C_UND.delete;
      end;

  if dmGeral.CAD_CD_C_UND.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as unidades.';
      exit;
    end;


  dmGeral.CAD_CD_C_TRI.Close;
  dmGeral.CAD_CD_C_TRI.Data :=
  dmGeral.CAD_CD_C_TRI.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_TRI.eof do
      begin
        dmGeral.CAD_CD_C_TRI.delete;
      end;

  if dmGeral.CAD_CD_C_TRI.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as tributações.';
      exit;
    end;



  dmGeral.CAD_CD_C_TME.Close;
  dmGeral.CAD_CD_C_TME.Data :=
  dmGeral.CAD_CD_C_TME.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_TME.eof do
      begin
        dmGeral.CAD_CD_C_TME.delete;
      end;

  if dmGeral.CAD_CD_C_TME.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar os tipos de mov. de estoque.';
      exit;
    end;



  dmGeral.CAD_CD_C_FPG.Close;
  dmGeral.CAD_CD_C_FPG.Data :=
  dmGeral.CAD_CD_C_FPG.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_FPG.eof do
      begin
        dmGeral.CAD_CD_C_FPG.delete;
      end;

  if dmGeral.CAD_CD_C_FPG.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as formas de pagamento.';
      exit;
    end;


  dmGeral.CAD_CD_C_CPG.Close;
  dmGeral.CAD_CD_C_CPG.Data :=
  dmGeral.CAD_CD_C_CPG.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_CPG.eof do
      begin
        dmGeral.CAD_CD_C_CPG.delete;
      end;

  if dmGeral.CAD_CD_C_CPG.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as condições de pagamento.';
      exit;
    end;


  dmGeral.CAD_CD_C_CID.Close;
  dmGeral.CAD_CD_C_CID.Data :=
  dmGeral.CAD_CD_C_CID.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_CID.eof do
      begin
        dmGeral.CAD_CD_C_CID.delete;
      end;

  if dmGeral.CAD_CD_C_CID.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as cidades.';
      exit;
    end;

  dmGeral.CAD_CD_C_SEQ.Close;
  dmGeral.CAD_CD_C_SEQ.Data :=
  dmGeral.CAD_CD_C_SEQ.DataRequest(VarArrayOf([100,'']));

    while not dmGeral.CAD_CD_C_SEQ.eof do
      begin
        dmGeral.CAD_CD_C_SEQ.delete;
      end;

  if dmGeral.CAD_CD_C_SEQ.ApplyUpdates(0)<>0 then
    begin
      msg :='Erro ao deletar as sequências.';
      exit;
    end;



   Result := 1;
end;



procedure TdmGeral.BusPerfil(index: integer; filtro: String);
begin
  BUS_CD_C_PEC.Close;
  BUS_CD_C_PEC.Data :=
  BUS_CD_C_PEC.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusItens(index: integer; filtro: string);
begin
  BUS_CD_C_ITE.Close;
  BUS_CD_C_ITE.Data :=
  BUS_CD_C_ITE.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusCondPgtoExp(index: integer; filtro: String);
begin
  BUS_CD_C_CPG_EXP.Close;
  BUS_CD_C_CPG_EXP.Data :=
  BUS_CD_C_CPG_EXP.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusGrupoEst(index: integer; filtro: String);
begin
  BUS_CD_C_GRU.Close;
  BUS_CD_C_GRU.Data :=
  BUS_CD_C_GRU.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusFormaPgtos2(index: integer; filtro: String);
begin
  BUS_CD_C_FPG2.Close;
  BUS_CD_C_FPG2.Data :=
  BUS_CD_C_FPG2.DataRequest(VarArrayOf([index, filtro]));
end;


procedure TdmGeral.BusTriReg(id_tributo, id_tipo_mov_estoque, uf,id_empresa: String);
begin
  BUS_CD_C_TRI_REG.Close;
  BUS_CD_C_TRI_REG.Data :=
           BUS_CD_C_TRI_REG.DataRequest(VarArrayOf([id_tributo,id_tipo_mov_estoque,uf,id_empresa]));
  // Novo código inserido dia 11/08/2014 por Maxsuel Victor devido mudanças feita por Mariel.
  if BUS_CD_C_TRI_REG.IsEmpty then
     begin
       BUS_CD_C_TRI_REG.Close;
       BUS_CD_C_TRI_REG.Data :=
           BUS_CD_C_TRI_REG.DataRequest(VarArrayOf([id_tributo,id_tipo_mov_estoque,'XX',id_empresa]));
     end;

  // Comentário inserido em 08/08/2014 por Maxsuel Victor devido mudanças feita por Mariel.
  {  if BUS_CD_C_TRI_REG.IsEmpty then
      begin
        BUS_CD_C_TRI_REG.Close;
        BUS_CD_C_TRI_REG.Data :=
            BUS_CD_C_TRI_REG.DataRequest(VarArrayOf([id_tributo,id_tipo_mov_estoque,'']));
      end;}
end;


function  TdmGeral.VerifTribItem(lTipoNf,IdEmpresa,IdEmitente,IdItem,IdTipoEstoque,TipoAcao: String):Boolean;
begin
  result := true;
  // TipoAcao - V - Utilizado para verificar se tá ok.
  //            C - Utilizado para calcular a tributação do item.

  dmGeral.BusTipoEstoque(0,IdTipoEstoque);
  dmGeral.BusItens(0,IdItem);
  dmGeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').text);


 { if (lTipoNf = 'E') or
     (lTipoNf = 'D') then // NF de (Entrada) e (Dev. fornecedor)
     begin
       dmGeral.BusFornecedor(0,IdEmitente);
       //removi o comentário para tratamento de nota de dev. do fornecedor. Data: 06/01/2015. Responsável: Luan
       if lTipoNf = 'D' then
         begin
           dmGeral.BusTriReg(dmGeral.BUS_CD_C_GRU.FieldByName('ID_TRIBUTO').Text,
                         IdTipoEstoque,
                         dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').Text,
                         IdEmpresa);
         end;
     end;   }

   if (lTipoNf = 'S') or // NF (Saída) e (Dev. Cliente);
      (lTipoNf = 'R') then
     begin
       dmGeral.BusCliente(0,IdEmitente);

       dmGeral.BusTriReg(dmGeral.BUS_CD_C_GRU.FieldByName('ID_TRIBUTO').Text,
                         IdTipoEstoque,
                         dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').Text,
                         IdEmpresa);

     end;

   if TipoAcao = 'V' then
      begin
        if dmGeral.BUS_CD_C_TRI_REG.IsEmpty then
           begin
             result := false;
           end;
        dmGeral.BUS_CD_C_TME.close;
        dmGeral.BUS_CD_C_ITE.close;
        dmGeral.BUS_CD_C_GRU.Close;
       // dmGeral.BUS_CD_C_CFO.Close;
        dmGeral.BUS_CD_C_CLI.Close;
      //  dmGeral.BUS_CD_C_FOR.Close;
      end;

end;


function TdmGeral.TesValPerDesconto(const valor, perc_desc_perm: Currency): Boolean;
begin
  result := true;

  if valor < 0 then
     begin
       ShowMessage('O campo "% Desconto" não pode ser menor que 0.');
       result := false;
     end;

  if valor > 0 then
     begin
       if perc_desc_perm = 0 then
          begin
            ShowMessage('Desconto não é permitido.' + #13 +
                        'Limite para desconto não encontrado.');
            result := false;
          end
       else
          begin
            if valor > perc_desc_perm then
               begin
                 ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                             'Desconto informado: ' + FormatFloat('##,##0.00',valor) + #13 +
                             'Desconto limite...: ' + FormatFloat('##,##0.00',perc_desc_perm));
                 result := false;
               end;
          end;
     end;


  if valor > 99.99 then
     begin
       ShowMessage('O campo "% Desconto" não pode ser maior que 99.99%.');
       result := false;
     end;

end;


function TdmGeral.TesValVlrUnitPed(const valor: Currency): Boolean;
begin
  result := true;

  if valor = 0 then
     begin
       ShowMessage('O campo "Valor unitário" deve ser prenchido.');
       result := false;
     end;

  if valor < 0 then
     begin
       ShowMessage('O campo "Valor unitário" não pode ser menor que 0.');
       result := false;
     end;

  if result = true then
     begin
        if BUS_CD_C_CPG.IsEmpty then
           begin
             Showmessage('Informações da condição de pagamento não foi encontrado. ' + #13 +
                         'Não é possível testar se o valor digitado é menor que o que está no cadastro do item.');
           end
        else
           begin
              // Nesse momento o BUS_CDF_C_CPG deve estar aberto pela tela que chamou este metódo
              if BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then
                 begin
                  // if valor < BUS_CD_C_ITEPRECO_AVISTA.AsCurrency then
                  if valor < dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
                      begin
                        ShowMessage('O campo "Valor unitário" é menor que o preço tabelado.');
                        result := false;
                      end;
                 end;

              if BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then
                 begin
                  // if valor < BUS_CD_C_ITEPRECO_APRAZO.AsCurrency then
                  if valor < dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
                      begin
                        ShowMessage('O campo "Valor unitário" é menor que o preço tabelado.');
                        result := false;
                      end;
                 end;
           end;
     end;
end;


function TdmGeral.LocalizarRegItem(cds_itens: TClientDataSet; rotina, id_item, id_cor,
  id_tamanho, id_almoxarifado, nro_lote: String): Boolean;
begin

  { rotina:
           FAT_FM_M_PED,   EST_FM_M_CTE
  }

  result := false;
 if trim(nro_lote) = '' then
    begin
      if (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
         (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
         begin
           if cds_itens.Locate('ID_ITEM',id_item,[]) then
              begin
                result := true;
              end;
         end;

      if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
         (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
         begin
           if cds_itens.Locate('ID_ITEM;ID_COR',VarArrayOf([id_item,id_cor]),[]) then
              begin
                result := true;
              end;
         end;

      if (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
         (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean)   then
         begin
           if cds_itens.Locate('ID_ITEM;ID_TAMANHO',VarArrayOf([id_item,id_tamanho]),[]) then
              begin
                result := true;
              end;
         end;

      if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
         (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
         begin
           if cds_itens.Locate('ID_ITEM;ID_COR;ID_TAMANHO', VarArrayOf([id_item,id_cor,id_tamanho]),[]) then
              begin
                result := true;
              end;
         end;
    end

  else
     begin
        if (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
           (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
           begin
             if cds_itens.Locate('ID_ITEM;NUM_LOTE',VarArrayOf([id_item,nro_lote]),[]) then
                begin
                  result := true;
                end;
           end;

        if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
           (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
           begin
             if cds_itens.Locate('ID_ITEM;ID_COR;NUM_LOTE',
                        VarArrayOf([id_item,id_cor,nro_lote]),[]) then
                begin
                  result := true;
                end;
           end;

        if (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
           (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
           begin
             if cds_itens.Locate('ID_ITEM;ID_TAMANHO;NUM_LOTE',
                        VarArrayOf([id_item,id_tamanho,nro_lote]),[]) then
                begin
                  result := true;
                end;
           end;

        if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
           (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
           begin
             if cds_itens.Locate('ID_ITEM;ID_COR;ID_TAMANHO;NUM_LOTE',
                        VarArrayOf([id_item,id_cor,id_tamanho,nro_lote]),[]) then
                begin
                  result := true;
                end;
           end;
    end;
end;

function TdmGeral.PCP_DP_C_REGDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlPcpReg: String;
  begin
    Result :=
      'select REG.*  '+
      'from PCP_TB_C_REG REG ';
  end;
begin
   PCP_FD_C_REG.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
            PCP_FD_C_REG.SQL.Add(enSqlPcpReg + ' WHERE 1=2 ')
        else
            PCP_FD_C_REG.SQL.Add(enSqlPcpReg +
             ' WHERE REG.ID_REGIAO = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        PCP_FD_C_REG.SQL.Add(enSqlPcpReg +
          Format('WHERE upper(REG.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end;

    if Input[0] = 100 then
      begin
        PCP_FD_C_REG.SQL.Add(enSqlPcpReg +
          ' WHERE 1=1 ');
      end;


   Result := PCP_DP_C_REG.Data;
   PCP_FD_C_REG.Close;
end;




function TdmGeral.ImpCidade(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_CID.Close;
  dmGeralSer.BUS_CD_C_CID.Data :=
  dmGeralSer.BUS_CD_C_CID.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_CID.Close;
  dmGeral.CAD_CD_C_CID.Data :=
  dmGeral.CAD_CD_C_CID.DataRequest(VarArrayOf([0,'']));




    while not dmGeralSer.BUS_CD_C_CID.eof  do
      begin
        dmGeral.CAD_CD_C_CID.Insert;

        dmGeral.CAD_CD_C_CID.fieldByName('ID_CIDADE').AsString :=
                    TRIM(dmGeralSer.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString);

        dmGeral.CAD_CD_C_CID.fieldByName('NOME').AsString :=
                    dmGeralSer.BUS_CD_C_CID.FieldByName('NOME').AsString;

        dmGeral.CAD_CD_C_CID.fieldByName('UF').AsString :=
                    dmGeralSer.BUS_CD_C_CID.FieldByName('UF').AsString;

        dmGeral.CAD_CD_C_CID.Post;
        dmGeralSer.BUS_CD_C_CID.Next;
      end;

     if  dmGeralSer.BUS_CD_C_CID.IsEmpty then
       begin
         msg := 'Não há nenhum registro de cidade a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_CID.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros de cidades importados com sucesso.';
             Result := 1;
           end
         else
           begin
             ShowMessage('Falha no processo de importação dos registros de cidade.');
             Result := 2;
           end;

       end;
end;

function TdmGeral.ImpTipoMovEstoque(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_TME.Close;
  dmGeralSer.BUS_CD_C_TME.Data :=
  dmGeralSer.BUS_CD_C_TME.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_TME.Close;
  dmGeral.CAD_CD_C_TME.Data :=
  dmGeral.CAD_CD_C_TME.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_TME.eof  do
      begin
        if dmGeral.CAD_CD_C_TME.Locate('ID_TIPO_MOV_ESTOQUE',
                                          dmGeralSer.BUS_CD_C_TME.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_TME.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_TME.Insert;
            dmGeral.CAD_CD_C_TME.fieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger :=
                    dmGeralSer.BUS_CD_C_TME.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;
          end;

        dmGeral.CAD_CD_C_TME.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_TME.FieldByName('DESCRICAO').AsString;

        dmGeral.CAD_CD_C_TME.fieldByName('TIPO_MOVIMENTO').AsInteger :=
                    dmGeralSer.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger;

        dmGeral.CAD_CD_C_TME.fieldByName('ATIVO').AsBoolean :=
                    dmGeralSer.BUS_CD_C_TME.FieldByName('ATIVO').AsBoolean;

        dmGeral.CAD_CD_C_TME.fieldByName('ESTO_MOVIMENTA').AsBoolean :=
                    dmGeralSer.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean;

        dmGeral.CAD_CD_C_TME.fieldByName('INDICADOR').AsInteger :=
                    dmGeralSer.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger;


        dmGeral.CAD_CD_C_TME.Post;
        dmGeralSer.BUS_CD_C_TME.Next;
      end;

     if  dmGeralSer.BUS_CD_C_TME.IsEmpty then
       begin
         msg := 'Não há nenhum registro de tipo mov. de estoque a ser importada.';
         Result :=0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_TME.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros de tipo mov. de estoque importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg:='Falha no processo de importação dos registros de tipo mov. de estoque.';
             Result := 2;
           end;
       end;
end;




function TdmGeral.ImpTituloRec(var msg:String;codCliente:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_M_REC.Close;
  dmGeralSer.BUS_CD_M_REC.Data :=
  dmGeralSer.BUS_CD_M_REC.DataRequest(VarArrayOf([97,codCliente]));

  dmGeral.FIN_CD_M_REC.Close;
  dmGeral.FIN_CD_M_REC.Data :=
  dmGeral.FIN_CD_M_REC.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_M_REC.eof  do
      begin

        dmGeral.FIN_CD_M_REC.Insert;
        dmGeral.FIN_CD_M_REC.fieldByName('ID_TITULO').AsInteger :=
                    dmGeralSer.BUS_CD_M_REC.FieldByName('ID_TITULO').AsInteger;


        dmGeral.FIN_CD_M_REC.fieldByName('ID_EMPRESA').AsString :=
                    dmGeralSer.BUS_CD_M_REC.FieldByName('ID_EMPRESA').AsString;

        dmGeral.FIN_CD_M_REC.fieldByName('ID_CLIENTE').AsInteger :=
                    dmGeralSer.BUS_CD_M_REC.FieldByName('ID_CLIENTE').AsInteger;

        dmGeral.FIN_CD_M_REC.fieldByName('DTA_VENCIMENTO').AsDateTime :=
                    dmGeralSer.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime;

        dmGeral.FIN_CD_M_REC.fieldByName('VLR_SALDO').AsCurrency :=
                    dmGeralSer.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency;

        dmGeral.FIN_CD_M_REC.fieldByName('ID_FORMA_PAG').AsInteger :=
                    dmGeralSer.BUS_CD_M_REC.FieldByName('ID_FORMA_PAG').AsInteger;


        dmGeral.FIN_CD_M_REC.Post;
        dmGeralSer.BUS_CD_M_REC.Next;
      end;

     if  dmGeralSer.BUS_CD_M_REC.IsEmpty then
       begin
         msg := 'Não há nenhum registro de títulos a ser importada.';
         Result :=0;
       end
     else
       begin
         if dmGeral.FIN_CD_M_REC.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros de títulos importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg:='Falha no processo de importação dos registros de títulos.';
             Result := 2;
           end;
       end;
end;







function TdmGeral.ImpEmpresa(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_PAR.Close;
  dmGeralSer.BUS_CD_C_PAR.Data :=
  dmGeralSer.BUS_CD_C_PAR.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_PAR.Close;
  dmGeral.CAD_CD_C_PAR.Data :=
  dmGeral.CAD_CD_C_PAR.DataRequest(VarArrayOf([1,'%']));

    while not dmGeralSer.BUS_CD_C_PAR.eof  do
      begin
        if dmGeral.CAD_CD_C_PAR.Locate('ID_EMPRESA',
                                          dmGeralSer.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_PAR.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_PAR.Insert;
            dmGeral.CAD_CD_C_PAR.fieldByName('ID_EMPRESA').AsInteger :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
          end;


        dmGeral.CAD_CD_C_PAR.fieldByName('EMP_CNPJ').ASsTRING :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;

        dmGeral.CAD_CD_C_PAR.fieldByName('EMP_RAZAO').ASsTRING :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('EMP_RAZAO').AsString;
        dmGeral.CAD_CD_C_PAR.fieldByName('EMP_FANTASIA').AsString :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;
        dmGeral.CAD_CD_C_PAR.fieldByName('ID_CIDADE').AsString :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('ID_CIDADE').AsString;
        dmGeral.CAD_CD_C_PAR.fieldByName('EMP_ENDERECO').AsString :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('EMP_ENDERECO').AsString;
        dmGeral.CAD_CD_C_PAR.fieldByName('EMP_NUMERO').AsString :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('EMP_NUMERO').AsString;
        dmGeral.CAD_CD_C_PAR.fieldByName('EMP_BAIRRO').AsString :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('EMP_BAIRRO').AsString;
         dmGeral.CAD_CD_C_PAR.fieldByName('EMP_CEP').AsString :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('EMP_CEP').AsString;

        dmGeral.CAD_CD_C_PAR.fieldByName('EMP_TELEFONE').AsString :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('EMP_TELEFONE').AsString;
        dmGeral.CAD_CD_C_PAR.fieldByName('EMP_FAX').AsString :=
                    dmGeralSer.BUS_CD_C_PAR.FieldByName('EMP_FAX').AsString;




          dmGeralSer.BUS_CD_C_PAR_CTR.First;
          while not dmGeralSer.BUS_CD_C_PAR_CTR.EOF do
            begin
                if dmGeral.CAD_CD_C_PAR_CTR.Locate('ID_EMPRESA',
                                          dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('ID_EMPRESA').AsInteger,[]) then
                  begin
                    dmGeral.CAD_CD_C_PAR_CTR.Edit;
                  end
                else
                  begin
                    dmGeral.CAD_CD_C_PAR_CTR.Insert;
                    dmGeral.CAD_CD_C_PAR_CTR.fieldByName('ID_EMPRESA').AsInteger :=
                          dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('ID_EMPRESA').AsInteger;
                  end;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('UTILIZA_ALMOXARIFADO').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('FAZ_CORR_PRECO_PERFIL').AsString :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsString;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('PRC_ITE_MANUAL').AsString :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsString;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('PED_CORR_PRECO_PRAZO').AsString :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsString;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('PED_ALTERA_PRECO').AsString :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('PED_ALTERA_PRECO').AsString;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('PED_ATIVA_TITULOS').AsString :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('PED_ATIVA_TITULOS').AsString;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('PED_CLIENTE').AsInteger :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsInteger;

                dmGeral.CAD_CD_C_PAR_CTR.fieldByName('DIA_PROTESTO').AsInteger :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('DIA_PROTESTO').AsInteger;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('ATIVA_COR').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('ATIVA_TAMANHO').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('PED_VER_LIMITE').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('PED_VER_LIMITE').AsBoolean;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('ID_ALM_PADRAO').AsInteger :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('ID_ALM_PADRAO').AsInteger;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('sgq_dias_prev_cid_fora').AsInteger :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('sgq_dias_prev_cid_fora').AsInteger;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('sgq_dias_prev_cid_dentro').AsInteger :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('sgq_dias_prev_cid_dentro').AsInteger;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('nfe_separa_prod_serv').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('nfe_separa_prod_serv').AsBoolean;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('ped_aceita_est_negativo').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('per_desconto').AsCurrency :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('per_desconto').AsCurrency;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('ped_cli_cns_vnd_max').AsCurrency :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency;

               dmGeral.CAD_CD_C_PAR_CTR.fieldByName('cxa_critica_chq').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_CTR.FieldByName('cxa_critica_chq').AsBoolean;



               dmGeral.CAD_CD_C_PAR_CTR.Post;
               dmGeralSer.BUS_CD_C_PAR_CTR.Next;
            end;


          dmGeralSer.BUS_CD_C_PAR_MOD.First;
          while not dmGeralSer.BUS_CD_C_PAR_MOD.EOF do
            begin
                if dmGeral.CAD_CD_C_PAR_MOD.Locate('ID_EMPRESA',
                                          dmGeralSer.BUS_CD_C_PAR_MOD.FieldByName('ID_EMPRESA').AsInteger,[]) then
                  begin
                    dmGeral.CAD_CD_C_PAR_MOD.Edit;
                  end
                else
                  begin
                    dmGeral.CAD_CD_C_PAR_MOD.Insert;
                    dmGeral.CAD_CD_C_PAR_MOD.fieldByName('ID_EMPRESA').AsInteger :=
                          dmGeralSer.BUS_CD_C_PAR_MOD.FieldByName('ID_EMPRESA').AsInteger;
                  end;

               dmGeral.CAD_CD_C_PAR_MOD.fieldByName('SGQ').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean;

               dmGeral.CAD_CD_C_PAR_MOD.fieldByName('REV').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_MOD.FieldByName('REV').AsBoolean;

               dmGeral.CAD_CD_C_PAR_MOD.fieldByName('CTC').AsBoolean :=
                        dmGeralSer.BUS_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;


               dmGeral.CAD_CD_C_PAR_MOD.Post;
               dmGeralSer.BUS_CD_C_PAR_MOD.Next;
            end;


          dmGeralSer.BUS_CD_C_PAR_CPG.First;
          while not dmGeralSer.BUS_CD_C_PAR_CPG.EOF do
            begin
                if dmGeral.CAD_CD_C_PAR_CPG.Locate('ID_EMPRESA;ID_CONDICAO_PAG',
                                         VarArrayOf([dmGeralSer.BUS_CD_C_PAR_CPG.FieldByName('ID_EMPRESA').AsInteger,
                                                     dmGeralSer.BUS_CD_C_PAR_CPG.FieldByName('ID_CONDICAO_PAG').AsInteger]), []) then
                  begin
                    dmGeral.CAD_CD_C_PAR_CPG.Edit;
                  end
                else
                  begin
                    dmGeral.CAD_CD_C_PAR_CPG.Insert;
                    dmGeral.CAD_CD_C_PAR_CPG.fieldByName('ID_EMPRESA').AsInteger :=
                          dmGeralSer.BUS_CD_C_PAR_CPG.FieldByName('ID_EMPRESA').AsInteger;
                    dmGeral.CAD_CD_C_PAR_CPG.fieldByName('ID_CONDICAO_PAG').AsInteger:=
                        dmGeralSer.BUS_CD_C_PAR_CPG.FieldByName('ID_CONDICAO_PAG').AsInteger;
                  end;



               dmGeral.CAD_CD_C_PAR_CPG.fieldByName('PER_REAJUSTE').AsCurrency :=
                        dmGeralSer.BUS_CD_C_PAR_CPG.FieldByName('PER_REAJUSTE').AsCurrency;

               dmGeral.CAD_CD_C_PAR_CPG.fieldByName('SEQUENCIA').AsInteger :=
                        dmGeralSer.BUS_CD_C_PAR_CPG.FieldByName('SEQUENCIA').AsInteger;


               dmGeral.CAD_CD_C_PAR_CPG.Post;
               dmGeralSer.BUS_CD_C_PAR_CPG.Next;
            end;

          dmGeralSer.BUS_CD_C_PAR_RST.First;
          while not dmGeralSer.BUS_CD_C_PAR_RST.EOF do
            begin
                if dmGeral.CAD_CD_C_PAR_RST.Locate('ID_EMPRESA;LETRA_RESTRICAO',
                                         VarArrayOf([dmGeralSer.BUS_CD_C_PAR_RST.FieldByName('ID_EMPRESA').AsInteger,
                                                       trim(dmGeralSer.BUS_CD_C_PAR_RST.FieldByName('LETRA_RESTRICAO').AsString)]), []) then
                  begin
                    dmGeral.CAD_CD_C_PAR_RST.Edit;
                  end
                else
                  begin
                    dmGeral.CAD_CD_C_PAR_RST.Insert;
                    dmGeral.CAD_CD_C_PAR_RST.fieldByName('ID_EMPRESA').AsInteger :=
                          dmGeralSer.BUS_CD_C_PAR_RST.FieldByName('ID_EMPRESA').AsInteger;

                    dmGeral.CAD_CD_C_PAR_RST.fieldByName('letra_restricao').AsString :=
                        trim(dmGeralSer.BUS_CD_C_PAR_RST.FieldByName('letra_restricao').AsString);
                  end;

               dmGeral.CAD_CD_C_PAR_RST.fieldByName('tipo_restricao').AsInteger :=
                        dmGeralSer.BUS_CD_C_PAR_RST.FieldByName('tipo_restricao').AsInteger;

               dmGeral.CAD_CD_C_PAR_RST.Post;
               dmGeralSer.BUS_CD_C_PAR_RST.Next;
            end;




        dmGeral.CAD_CD_C_PAR.Post;
        dmGeralSer.BUS_CD_C_PAR.Next;
      end;

     if  dmGeralSer.BUS_CD_C_PAR.IsEmpty then
       begin
         msg := 'Não há nenhum registro de empresa a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_PAR.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de empresas importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação de registros de empresa.';
             Result := 2;
           end;

       end;
end;




function TdmGeral.ImpCondPgto(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_CPG.Close;
  dmGeralSer.BUS_CD_C_CPG.Data :=
  dmGeralSer.BUS_CD_C_CPG.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_CPG.Close;
  dmGeral.CAD_CD_C_CPG.Data :=
  dmGeral.CAD_CD_C_CPG.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_CPG.eof  do
      begin
        if dmGeral.CAD_CD_C_CPG.Locate('ID_CONDICAO_PAG',
                                          dmGeralSer.BUS_CD_C_CPG.FieldByName('ID_CONDICAO_PAG').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_CPG.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_CPG.Insert;
            dmGeral.CAD_CD_C_CPG.fieldByName('ID_CONDICAO_PAG').AsInteger :=
                    dmGeralSer.BUS_CD_C_CPG.FieldByName('ID_CONDICAO_PAG').AsInteger;
          end;

        dmGeral.CAD_CD_C_CPG.fieldByName('ATIVO').AsBoolean :=
                    dmGeralSer.BUS_CD_C_CPG.FieldByName('ATIVO').AsBoolean;

        dmGeral.CAD_CD_C_CPG.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_CPG.FieldByName('DESCRICAO').AsString;

        dmGeral.CAD_CD_C_CPG.fieldByName('TIPO_PAGAMENTO').AsInteger :=
                    dmGeralSer.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger;

        dmGeral.CAD_CD_C_CPG.fieldByName('NUM_PARCELAS').AsInteger :=
                    dmGeralSer.BUS_CD_C_CPG.FieldByName('NUM_PARCELAS').AsInteger;

         dmGeral.CAD_CD_C_CPG.fieldByName('PER_DESC').AsCurrency :=
                    dmGeralSer.BUS_CD_C_CPG.FieldByName('PER_DESC').AsCurrency;

        dmGeral.CAD_CD_C_CPG.Post;
        dmGeralSer.BUS_CD_C_CPG.Next;
      end;

     if  dmGeralSer.BUS_CD_C_CPG.IsEmpty then
       begin
         msg := 'Não há nenhum registro de cond. pagamento a ser importada.';
         Result :=0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_CPG.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de cond. pagamento importados com sucesso.';
             Result :=1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de cond. pagamento.';
             Result :=2;
           end;

       end;
end;






function TdmGeral.ImpGrupo(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_GRU.Close;
  dmGeralSer.BUS_CD_C_GRU.Data :=
  dmGeralSer.BUS_CD_C_GRU.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_GRU.Close;
  dmGeral.CAD_CD_C_GRU.Data :=
  dmGeral.CAD_CD_C_GRU.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_GRU.eof  do
      begin
        if dmGeral.CAD_CD_C_GRU.Locate('ID_GRUPO',
                                          trim(dmGeralSer.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString),[]) then
          begin
            dmGeral.CAD_CD_C_GRU.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_GRU.Insert;
          end;

        dmGeral.CAD_CD_C_GRU.fieldByName('ID_GRUPO').AsString :=
                    trim(dmGeralSer.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString);
        dmGeral.CAD_CD_C_GRU.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString;
        dmGeral.CAD_CD_C_GRU.fieldByName('TIPO').AsInteger :=
                    dmGeralSer.BUS_CD_C_GRU.FieldByName('TIPO').AsInteger;
        dmGeral.CAD_CD_C_GRU.fieldByName('ID_TRIBUTO').AsInteger :=
                    dmGeralSer.BUS_CD_C_GRU.FieldByName('ID_TRIBUTO').AsInteger;
        dmGeral.CAD_CD_C_GRU.fieldByName('NIVEL').AsInteger :=
                    dmGeralSer.BUS_CD_C_GRU.FieldByName('NIVEL').AsInteger;
        dmGeral.CAD_CD_C_GRU.fieldByName('TIPO_ITEM').AsString :=
                    trim(dmGeralSer.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString);
        dmGeral.CAD_CD_C_GRU.fieldByName('PROMO_ATIVA').AsBoolean :=
                    dmGeralSer.BUS_CD_C_GRU.FieldByName('PROMO_ATIVA').AsBoolean;
        dmGeral.CAD_CD_C_GRU.fieldByName('PROMO_PERC').AsCurrency :=
                    dmGeralSer.BUS_CD_C_GRU.FieldByName('PROMO_PERC').AsCurrency;
        dmGeral.CAD_CD_C_GRU.fieldByName('DESC_ATIVA').AsBoolean :=
                    dmGeralSer.BUS_CD_C_GRU.FieldByName('DESC_ATIVA').AsBoolean;
        dmGeral.CAD_CD_C_GRU.fieldByName('DESC_PERC').AsCurrency :=
                    dmGeralSer.BUS_CD_C_GRU.FieldByName('DESC_PERC').AsCurrency;

        dmGeral.CAD_CD_C_GRU.Post;
        dmGeralSer.BUS_CD_C_GRU.Next;
      end;

     if  dmGeralSer.BUS_CD_C_GRU.IsEmpty then
       begin
         msg := 'Não há nenhum registro de empresa a ser importada.';
         Result :=0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_GRU.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg :='Falha no processo de importação dos registros.';
             Result := 2;
           end;

       end;
end;

function TdmGeral.ImpPerfil(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_C_PEC.Close;
  dmGeralSer.BUS_CD_C_PEC.Data :=
  dmGeralSer.BUS_CD_C_PEC.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_PEC.Close;
  dmGeral.CAD_CD_C_PEC.Data :=
  dmGeral.CAD_CD_C_PEC.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_PEC.eof  do
      begin
        if dmGeral.CAD_CD_C_PEC.Locate('ID_PERFIL_CLI',
                                          dmGeralSer.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_PEC.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_PEC.Insert;
          end;

        dmGeral.CAD_CD_C_PEC.fieldByName('ID_PERFIL_CLI').AsInteger :=
                    dmGeralSer.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger;
        dmGeral.CAD_CD_C_PEC.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString;
        dmGeral.CAD_CD_C_PEC.fieldByName('PER_CORRECAO').AsCurrency :=
                    dmGeralSer.BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency;
        dmGeral.CAD_CD_C_PEC.fieldByName('OPERACAO').AsInteger :=
                    dmGeralSer.BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger;
        dmGeral.CAD_CD_C_PEC.fieldByName('per_correcao_aprazo').AsCurrency :=
                    dmGeralSer.BUS_CD_C_PEC.FieldByName('per_correcao_aprazo').AsCurrency;
        dmGeral.CAD_CD_C_PEC.fieldByName('per_correcao_financeiro').AsCurrency :=
                    dmGeralSer.BUS_CD_C_PEC.FieldByName('per_correcao_financeiro').AsCurrency;


        dmGeral.CAD_CD_C_PEC.Post;
        dmGeralSer.BUS_CD_C_PEC.Next;
      end;

     if  dmGeralSer.BUS_CD_C_PEC.IsEmpty then
       begin
         msg := 'Não há nenhum registro de perfil cliente a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_PEC.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de perfil cliente importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de perfil cliente.';
             Result := 2;
           end;

       end;
end;


{function TdmGeral.ImpPlanoContas(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_C_PCT.Close;
  dmGeralSer.BUS_CD_C_PCT.Data :=
  dmGeralSer.BUS_CD_C_PCT.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_PCT.Close;
  dmGeral.CAD_CD_C_PCT.Data :=
  dmGeral.CAD_CD_C_PCT.DataRequest(VarArrayOf([1,'%']));

    while not dmGeralSer.BUS_CD_C_PCT.eof  do
      begin
        if dmGeral.CAD_CD_C_PCT.Locate('ID_PLANO',
                                          dmGeralSer.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString,[]) then
          begin
            dmGeral.CAD_CD_C_PCT.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_PCT.Insert;
          end;

        dmGeral.CAD_CD_C_PCT.fieldByName('ID_PLANO').AsString :=
                    dmGeralSer.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
        dmGeral.CAD_CD_C_PCT.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
        dmGeral.CAD_CD_C_PCT.fieldByName('TIPO').AsInteger :=
                    dmGeralSer.BUS_CD_C_PCT.FieldByName('TIPO').AsInteger;
        dmGeral.CAD_CD_C_PCT.fieldByName('TIPO_MOV').AsInteger :=
                    dmGeralSer.BUS_CD_C_PCT.FieldByName('TIPO_MOV').AsInteger;
        dmGeral.CAD_CD_C_PCT.fieldByName('TIPO_DESP').AsInteger :=
                    dmGeralSer.BUS_CD_C_PCT.FieldByName('TIPO_DESP').AsInteger;

        dmGeral.CAD_CD_C_PCT.Post;
        dmGeralSer.BUS_CD_C_PCT.Next;
      end;

     if  dmGeralSer.BUS_CD_C_PCT.IsEmpty then
       begin
         msg := 'Não há nenhum registro de plano de Contas a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_PCT.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de planos de contas importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de plano de contas.';
             Result := 2;
           end;

       end;
end; }


function TdmGeral.ImpUnidade(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_C_UND.Close;
  dmGeralSer.BUS_CD_C_UND.Data :=
  dmGeralSer.BUS_CD_C_UND.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_UND.Close;
  dmGeral.CAD_CD_C_UND.Data :=
  dmGeral.CAD_CD_C_UND.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_UND.eof  do
      begin
        if dmGeral.CAD_CD_C_UND.Locate('ID_UNIDADE',
                                          trim(dmGeralSer.BUS_CD_C_UND.FieldByName('ID_UNIDADE').AsString),[]) then
          begin
            dmGeral.CAD_CD_C_UND.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_UND.Insert;
            dmGeral.CAD_CD_C_UND.fieldByName('ID_UNIDADE').AsString :=
                    trim(dmGeralSer.BUS_CD_C_UND.FieldByName('ID_UNIDADE').AsString);
          end;

        dmGeral.CAD_CD_C_UND.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_UND.FieldByName('DESCRICAO').AsString;
        dmGeral.CAD_CD_C_UND.fieldByName('NUM_DECIMAIS').AsInteger :=
                    dmGeralSer.BUS_CD_C_UND.FieldByName('NUM_DECIMAIS').AsInteger;


        dmGeral.CAD_CD_C_UND.Post;
        dmGeralSer.BUS_CD_C_UND.Next;
      end;

     if  dmGeralSer.BUS_CD_C_UND.IsEmpty then
       begin
         msg := 'Não há nenhum registro de unidades a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_UND.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de unidades importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de unidades.';
             Result := 2;
           end;

       end;
end;

function TdmGeral.ImpFornecedor(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_FOR.Close;
  dmGeralSer.BUS_CD_C_FOR.Data :=
  dmGeralSer.BUS_CD_C_FOR.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_FOR.Close;
  dmGeral.CAD_CD_C_FOR.Data :=
  dmGeral.CAD_CD_C_FOR.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_FOR.eof  do
      begin
        if dmGeral.CAD_CD_C_FOR.Locate('ID_FORNECEDOR',
                                          dmGeralSer.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString,[]) then
          begin
            dmGeral.CAD_CD_C_FOR.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_FOR.Insert;
             dmGeral.CAD_CD_C_FOR.fieldByName('ID_FORNECEDOR').AsInteger :=
                    dmGeralSer.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
          end;

        dmGeral.CAD_CD_C_FOR.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
        dmGeral.CAD_CD_C_FOR.fieldByName('FANTASIA').AsString :=
                    dmGeralSer.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;


        dmGeral.CAD_CD_C_FOR.Post;
        dmGeralSer.BUS_CD_C_FOR.Next;
      end;

     if  dmGeralSer.BUS_CD_C_FOR.IsEmpty then
       begin
         msg := 'Não há nenhum registro de fornecedores a ser importada.';
         Result :=0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_FOR.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de fornecedores importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de fornecedores.';
             Result := 2;
           end;

       end;
end;

function TdmGeral.ImpFamilia(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_C_FAM.Close;
  dmGeralSer.BUS_CD_C_FAM.Data :=
  dmGeralSer.BUS_CD_C_FAM.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_FAM.Close;
  dmGeral.CAD_CD_C_FAM.Data :=
  dmGeral.CAD_CD_C_FAM.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_FAM.eof  do
      begin
        if dmGeral.CAD_CD_C_FAM.Locate('ID_FAMILIA',
                                          dmGeralSer.BUS_CD_C_FAM.FieldByName('ID_FAMILIA').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_FAM.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_FAM.Insert;
             dmGeral.CAD_CD_C_FAM.fieldByName('ID_FAMILIA').AsInteger :=
                    dmGeralSer.BUS_CD_C_FAM.FieldByName('ID_FAMILIA').AsInteger;
          end;

        dmGeral.CAD_CD_C_FAM.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_FAM.FieldByName('DESCRICAO').AsString;
        dmGeral.CAD_CD_C_FAM.fieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean :=
                    dmGeralSer.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;


        dmGeral.CAD_CD_C_FAM.Post;
        dmGeralSer.BUS_CD_C_FAM.Next;
      end;

     if  dmGeralSer.BUS_CD_C_FAM.IsEmpty then
       begin
         msg := 'Não há nenhum registro de familia a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_FAM.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de familia importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de familia.';
             Result := 2;
           end;

       end;
end;




function TdmGeral.ImpTributo(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_TRI.Close;
  dmGeralSer.BUS_CD_C_TRI.Data :=
  dmGeralSer.BUS_CD_C_TRI.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_TRI.Close;
  dmGeral.CAD_CD_C_TRI.Data :=
  dmGeral.CAD_CD_C_TRI.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_TRI.eof  do
      begin
        if dmGeral.CAD_CD_C_TRI.Locate('ID_TRIBUTO',
                                          dmGeralSer.BUS_CD_C_TRI.FieldByName('ID_TRIBUTO').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_TRI.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_TRI.Insert;
             dmGeral.CAD_CD_C_TRI.fieldByName('ID_TRIBUTO').AsInteger :=
                    dmGeralSer.BUS_CD_C_TRI.FieldByName('ID_TRIBUTO').AsInteger;
          end;

        dmGeral.CAD_CD_C_TRI.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_TRI.FieldByName('DESCRICAO').AsString;


         dmGeralSer.BUS_CD_C_TRI_REG.First;
         while not dmGeralSer.BUS_CD_C_TRI_REG.EOF do
           begin
                if dmGeral.CAD_CD_C_TRI_REG.Locate('ID_TRIBUTO;ID_TIPO_MOV_ESTOQUE;UF;ID_EMPRESA',
                                     VarArrayOf([dmGeralSer.BUS_CD_C_TRI_REG.FieldByName('ID_TRIBUTO').AsInteger,
                                        dmGeralSer.BUS_CD_C_TRI_REG.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger,
                                        dmGeralSer.BUS_CD_C_TRI_REG.FieldByName('UF').AsString,
                                        dmGeralSer.BUS_CD_C_TRI_REG.FieldByName('ID_EMPRESA').AsInteger]),[]) then
                  begin
                    dmGeral.CAD_CD_C_TRI_REG.Edit;
                  end
                else
                  begin
                    dmGeral.CAD_CD_C_TRI_REG.Insert;
                    dmGeral.CAD_CD_C_TRI_REG.fieldByName('ID_TRIBUTO').AsInteger :=
                            dmGeralSer.BUS_CD_C_TRI_REG.FieldByName('ID_TRIBUTO').AsInteger;
                    dmGeral.CAD_CD_C_TRI_REG.fieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger :=
                            dmGeralSer.BUS_CD_C_TRI_REG.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger;
                    dmGeral.CAD_CD_C_TRI_REG.fieldByName('UF').AsString :=
                            dmGeralSer.BUS_CD_C_TRI_REG.FieldByName('UF').AsString;
                    dmGeral.CAD_CD_C_TRI_REG.fieldByName('ID_EMPRESA').AsInteger :=
                            dmGeralSer.BUS_CD_C_TRI_REG.FieldByName('ID_EMPRESA').AsInteger;
                  end;


                 dmGeral.CAD_CD_C_TRI_REG.Post;
                 dmGeralSer.BUS_CD_C_TRI_REG.Next;
           end;

        dmGeral.CAD_CD_C_TRI.Post;
        dmGeralSer.BUS_CD_C_TRI.Next;
      end;

     if  dmGeralSer.BUS_CD_C_TRI.IsEmpty then
       begin
         msg := 'Não há nenhum registro de tributação a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_TRI.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de tributação importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de tributação.';
             Result := 2;
           end;

       end;
end;





function TdmGeral.ImpItens(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_ITE.Close;
  dmGeralSer.BUS_CD_C_ITE.Data :=
  dmGeralSer.BUS_CD_C_ITE.DataRequest(VarArrayOf([91,'']));

  dmGeral.CAD_CD_C_ITE.Close;
  dmGeral.CAD_CD_C_ITE.Data :=
  dmGeral.CAD_CD_C_ITE.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_ITE.eof  do
      begin
        if dmGeral.CAD_CD_C_ITE.Locate('ID_ITEM',
                                          dmGeralSer.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_ITE.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_ITE.Insert;
             dmGeral.CAD_CD_C_ITE.fieldByName('ID_ITEM').AsInteger :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
          end;

        dmGeral.CAD_CD_C_ITE.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
        dmGeral.CAD_CD_C_ITE.fieldByName('FANTASIA').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('FANTASIA').AsString;
        dmGeral.CAD_CD_C_ITE.fieldByName('ATIVO').AsBoolean :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('ATIVO').AsBoolean;
        dmGeral.CAD_CD_C_ITE.fieldByName('ID_FAMILIA').AsInteger :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsInteger;
        dmGeral.CAD_CD_C_ITE.fieldByName('ID_FORNECEDOR').AsInteger :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('ID_FORNECEDOR').AsInteger;
        dmGeral.CAD_CD_C_ITE.fieldByName('ID_GRUPO').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString;
        dmGeral.CAD_CD_C_ITE.fieldByName('ID_UND_VENDA').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;
        dmGeral.CAD_CD_C_ITE.fieldByName('ID_UND_COMPRA').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('ID_UND_COMPRA').AsString;
        dmGeral.CAD_CD_C_ITE.fieldByName('COD_BARRA').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;
        dmGeral.CAD_CD_C_ITE.fieldByName('COD_FABRICA').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString;
       

        dmGeral.CAD_CD_C_ITE.fieldByName('preco_avista').AsCurrency :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('preco_avista').AsCurrency;
        dmGeral.CAD_CD_C_ITE.fieldByName('preco_aprazo').AsCurrency :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('preco_aprazo').AsCurrency;
        dmGeral.CAD_CD_C_ITE.fieldByName('cubagem').AsCurrency :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('cubagem').AsCurrency;

        dmGeral.CAD_CD_C_ITE.fieldByName('id_ncm').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('id_ncm').AsString;
        dmGeral.CAD_CD_C_ITE.fieldByName('loca_rua').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('loca_rua').AsString;
        dmGeral.CAD_CD_C_ITE.fieldByName('referencia').AsString :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('referencia').AsString;
        dmGeral.CAD_CD_C_ITE.fieldByName('destino_reclamado').AsInteger :=
                    dmGeralSer.BUS_CD_C_ITE.FieldByName('destino_reclamado').AsInteger;


           dmGeralSer.BUS_CD_C_ITE_PRC.First;
           while not dmGeralSer.BUS_CD_C_ITE_PRC.EOF do
             begin
                  if dmGeral.CAD_CD_C_ITE_PRC.Locate('ID_ITEM;ID_PERFIL_CLI',
                                       VarArrayOf([dmGeralSer.BUS_CD_C_ITE_PRC.FieldByName('ID_ITEM').AsInteger,
                                          dmGeralSer.BUS_CD_C_ITE_PRC.FieldByName('ID_PERFIL_CLI').AsInteger]),[]) then
                    begin
                      dmGeral.CAD_CD_C_ITE_PRC.Edit;
                    end
                  else
                    begin
                      dmGeral.CAD_CD_C_ITE_PRC.Insert;
                      dmGeral.CAD_CD_C_ITE_PRC.fieldByName('ID_ITEM').AsInteger :=
                              dmGeralSer.BUS_CD_C_ITE_PRC.FieldByName('ID_ITEM').AsInteger;
                      dmGeral.CAD_CD_C_ITE_PRC.fieldByName('ID_PERFIL_CLI').AsInteger :=
                              dmGeralSer.BUS_CD_C_ITE_PRC.FieldByName('ID_PERFIL_CLI').AsInteger;
                    end;

                   dmGeral.CAD_CD_C_ITE_PRC.fieldByName('PRECO_AVISTA').AsCurrency :=
                              dmGeralSer.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsCurrency;
                   dmGeral.CAD_CD_C_ITE_PRC.fieldByName('PRECO1').AsCurrency :=
                              dmGeralSer.BUS_CD_C_ITE_PRC.FieldByName('PRECO1').AsCurrency;
                   dmGeral.CAD_CD_C_ITE_PRC.fieldByName('PRECO2').AsCurrency :=
                              dmGeralSer.BUS_CD_C_ITE_PRC.FieldByName('PRECO2').AsCurrency;
                   dmGeral.CAD_CD_C_ITE_PRC.fieldByName('PRECO3').AsCurrency :=
                              dmGeralSer.BUS_CD_C_ITE_PRC.FieldByName('PRECO3').AsCurrency;
                   dmGeral.CAD_CD_C_ITE_PRC.fieldByName('PRECO4').AsCurrency :=
                              dmGeralSer.BUS_CD_C_ITE_PRC.FieldByName('PRECO4').AsCurrency;

                   dmGeral.CAD_CD_C_ITE_PRC.Post;
                   dmGeralSer.BUS_CD_C_ITE_PRC.Next;
             end;

        dmGeral.CAD_CD_C_ITE.Post;
        dmGeralSer.BUS_CD_C_ITE.Next;
      end;

     if  dmGeralSer.BUS_CD_C_ITE.IsEmpty then
       begin
         msg := 'Não há nenhum registro de itens a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_ITE.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de itens importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de itens.';
             Result := 2;
           end;

       end;
end;



function TdmGeral.ImpFichaEstoque(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_M_FES.Close;
  dmGeralSer.BUS_CD_M_FES.Data :=
  dmGeralSer.BUS_CD_M_FES.DataRequest(VarArrayOf([100,'']));

  dmGeral.EST_CD_M_FES.Close;
  dmGeral.EST_CD_M_FES.Data :=
  dmGeral.EST_CD_M_FES.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_M_FES.eof  do
      begin
        if dmGeral.EST_CD_M_FES.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO',
                                         VarArrayOf([ dmGeralSer.BUS_CD_M_FES.FieldByName('ID_EMPRESA').AsInteger,
                                          dmGeralSer.BUS_CD_M_FES.FieldByName('ID_ITEM').AsInteger,
                                          dmGeralSer.BUS_CD_M_FES.FieldByName('ID_COR').AsInteger,
                                          dmGeralSer.BUS_CD_M_FES.FieldByName('ID_TAMANHO').AsInteger]),[]) then
          begin
            dmGeral.EST_CD_M_FES.Edit;
          end
        else
          begin
            dmGeral.EST_CD_M_FES.Insert;
            dmGeral.EST_CD_M_FES.fieldByName('ID_EMPRESA').AsInteger :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('ID_EMPRESA').AsInteger;
            dmGeral.EST_CD_M_FES.fieldByName('ID_ITEM').AsInteger :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('ID_ITEM').AsInteger;
            dmGeral.EST_CD_M_FES.fieldByName('ID_COR').AsInteger :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('ID_COR').AsInteger;
            dmGeral.EST_CD_M_FES.fieldByName('ID_TAMANHO').AsInteger :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('ID_TAMANHO').AsInteger;
          end;

        dmGeral.EST_CD_M_FES.fieldByName('DATA_ULT_MOVIMENTO').AsDateTime :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('DATA_ULT_MOVIMENTO').AsDateTime;

        dmGeral.EST_CD_M_FES.fieldByName('DATA_ULT_INVENTARIO').AsDateTime :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('DATA_ULT_INVENTARIO').AsDateTime;


        dmGeral.EST_CD_M_FES.fieldByName('QTDE_ENTRADA').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency;
        dmGeral.EST_CD_M_FES.fieldByName('QTDE_SAIDA').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

        dmGeral.EST_CD_M_FES.fieldByName('SALDO_FISICO').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency;

        dmGeral.EST_CD_M_FES.fieldByName('QTDE_PED_COMPRA').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('QTDE_PED_COMPRA').AsCurrency;

        dmGeral.EST_CD_M_FES.fieldByName('QTDE_PED_VENDA').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('QTDE_PED_VENDA').AsCurrency;

        dmGeral.EST_CD_M_FES.fieldByName('VLR_CUSTO_MEDIO').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('VLR_CUSTO_MEDIO').AsCurrency;
        dmGeral.EST_CD_M_FES.fieldByName('VLR_CUSTO_ULT_COMPRA').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES.FieldByName('VLR_CUSTO_ULT_COMPRA').AsCurrency;

        dmGeral.EST_CD_M_FES.Post;
        dmGeralSer.BUS_CD_M_FES.Next;
      end;

     if  dmGeralSer.BUS_CD_M_FES.IsEmpty then
       begin
         msg := 'Não há nenhum registro de ficha de estoque a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.EST_CD_M_FES.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de ficha de estoque importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de ficha de estoque.';
             Result := 2;
           end;

       end;
end;





function TdmGeral.ImpFichaEstoqueAlm(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_M_FES_ALM.Close;
  dmGeralSer.BUS_CD_M_FES_ALM.Data :=
  dmGeralSer.BUS_CD_M_FES_ALM.DataRequest(VarArrayOf([100,'']));

  dmGeral.EST_CD_M_FES_ALM.Close;
  dmGeral.EST_CD_M_FES_ALM.Data :=
  dmGeral.EST_CD_M_FES_ALM.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_M_FES_ALM.eof  do
      begin
        if dmGeral.EST_CD_M_FES_ALM.Locate('ID_EMPRESA;ID_ITEM;ID_COR;ID_TAMANHO;ID_ALMOXARIFADO',
                                       VarArrayOf([dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_EMPRESA').AsInteger,
                                          dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_ITEM').AsInteger,
                                          dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_COR').AsInteger,
                                          dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_TAMANHO').AsInteger,
                                          dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_ALMOXARIFADO').AsInteger]),[]) then
          begin
            dmGeral.EST_CD_M_FES_ALM.Edit;
          end
        else
          begin
            dmGeral.EST_CD_M_FES_ALM.Insert;
            dmGeral.EST_CD_M_FES_ALM.fieldByName('ID_EMPRESA').AsInteger :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_EMPRESA').AsInteger;
            dmGeral.EST_CD_M_FES_ALM.fieldByName('ID_ITEM').AsInteger :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_ITEM').AsInteger;
            dmGeral.EST_CD_M_FES_ALM.fieldByName('ID_COR').AsInteger :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_COR').AsInteger;
            dmGeral.EST_CD_M_FES_ALM.fieldByName('ID_TAMANHO').AsInteger :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_TAMANHO').AsInteger;
            dmGeral.EST_CD_M_FES_ALM.fieldByName('ID_ALMOXARIFADO').AsInteger :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('ID_ALMOXARIFADO').AsInteger;

          end;

        dmGeral.EST_CD_M_FES_ALM.fieldByName('DATA_ULT_MOVIMENTO').AsDateTime :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('DATA_ULT_MOVIMENTO').AsDateTime;

        dmGeral.EST_CD_M_FES_ALM.fieldByName('DATA_ULT_INVENTARIO').AsDateTime :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('DATA_ULT_INVENTARIO').AsDateTime;


        dmGeral.EST_CD_M_FES_ALM.fieldByName('QTDE_ENTRADA').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency;
        dmGeral.EST_CD_M_FES_ALM.fieldByName('QTDE_SAIDA').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

        dmGeral.EST_CD_M_FES_ALM.fieldByName('SALDO_FISICO').AsCurrency :=
                    dmGeralSer.BUS_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency;

        dmGeral.EST_CD_M_FES_ALM.Post;
        dmGeralSer.BUS_CD_M_FES_ALM.Next;
      end;

     if  dmGeralSer.BUS_CD_M_FES_ALM.IsEmpty then
       begin
         msg := 'Não há nenhum registro de ficha de estoque por almoxarifado a ser importada.';
         Result :=0;
       end
     else
       begin
         if dmGeral.EST_CD_M_FES_ALM.ApplyUpdates(0) = 0 then
           begin
             msg := 'Registros de ficha de estoque por almoxaridado importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg := 'Falha no processo de importação dos registros de ficha de estoque por almoxarifado.';
             Result := 2;
           end;

       end;
end;



function TdmGeral.ImpAlmoxarifado(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_ALM.Close;
  dmGeralSer.BUS_CD_C_ALM.Data :=
  dmGeralSer.BUS_CD_C_ALM.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_ALM.Close;
  dmGeral.CAD_CD_C_ALM.Data :=
  dmGeral.CAD_CD_C_ALM.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_ALM.eof  do
      begin
        if dmGeral.CAD_CD_C_ALM.Locate('ID_ALMOXARIFADO',
                                dmGeralSer.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_ALM.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_ALM.Insert;
            dmGeral.CAD_CD_C_ALM.fieldByName('ID_ALMOXARIFADO').AsInteger :=
                    dmGeralSer.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsInteger;

          end;

        dmGeral.CAD_CD_C_ALM.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString;

        dmGeral.CAD_CD_C_ALM.Post;
        dmGeralSer.BUS_CD_C_ALM.Next;
      end;

     if  dmGeralSer.BUS_CD_C_ALM.IsEmpty then
       begin
         msg:='Não há nenhum registro de almoxarifado a ser importada.';
         Result :=0
       end
     else
       begin
         if dmGeral.CAD_CD_C_ALM.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros de almoxaridado importados com sucesso.';
             Result :=1;
           end
         else
           begin
             msg:='Falha no processo de importação dos registros de almoxarifado.';
             Result :=2;
           end;

       end;
end;

function TdmGeral.ImpCor(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_C_COR.Close;
  dmGeralSer.BUS_CD_C_COR.Data :=
  dmGeralSer.BUS_CD_C_COR.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_COR.Close;
  dmGeral.CAD_CD_C_COR.Data :=
  dmGeral.CAD_CD_C_COR.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_COR.eof  do
      begin
        if dmGeral.CAD_CD_C_COR.Locate('ID_COR',
                                dmGeralSer.BUS_CD_C_COR.FieldByName('ID_COR').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_COR.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_COR.Insert;
            dmGeral.CAD_CD_C_COR.fieldByName('ID_COR').AsInteger :=
                    dmGeralSer.BUS_CD_C_COR.FieldByName('ID_COR').AsInteger;

          end;

        dmGeral.CAD_CD_C_COR.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;

        dmGeral.CAD_CD_C_COR.Post;
        dmGeralSer.BUS_CD_C_COR.Next;
      end;

     if  dmGeralSer.BUS_CD_C_COR.IsEmpty then
       begin
         msg:='Não há nenhum registro de cor a ser importada.';
         Result :=0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_COR.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros de cor importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg:='Falha no processo de importação dos registros de cor.';
             Result := 2;
           end;

       end;
end;


function TdmGeral.ImpTamanho(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_C_TAM.Close;
  dmGeralSer.BUS_CD_C_TAM.Data :=
  dmGeralSer.BUS_CD_C_TAM.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_TAM.Close;
  dmGeral.CAD_CD_C_TAM.Data :=
  dmGeral.CAD_CD_C_TAM.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_TAM.eof  do
      begin
        if dmGeral.CAD_CD_C_TAM.Locate('ID_TAMANHO',
                                dmGeralSer.BUS_CD_C_TAM.FieldByName('ID_TAMANHO').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_TAM.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_TAM.Insert;
            dmGeral.CAD_CD_C_TAM.fieldByName('ID_TAMANHO').AsInteger :=
                    dmGeralSer.BUS_CD_C_TAM.FieldByName('ID_TAMANHO').AsInteger;

          end;

        dmGeral.CAD_CD_C_TAM.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString;

        dmGeral.CAD_CD_C_TAM.Post;
        dmGeralSer.BUS_CD_C_TAM.Next;
      end;

     if  dmGeralSer.BUS_CD_C_TAM.IsEmpty then
       begin
         msg:='Não há nenhum registro de tamanho a ser importada.';
         Result :=0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_TAM.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros de tamanhos importados com sucesso.';
             Result :=1;
           end
         else
           begin
             msg:='Falha no processo de importação dos registros de tamanho.';
             Result :=2;
           end;

       end;
end;



function TdmGeral.ImpRegiao(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_C_REG.Close;
  dmGeralSer.BUS_CD_C_REG.Data :=
  dmGeralSer.BUS_CD_C_REG.DataRequest(VarArrayOf([1,'%']));

  dmGeral.PCP_CD_C_REG.Close;
  dmGeral.PCP_CD_C_REG.Data :=
  dmGeral.PCP_CD_C_REG.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_REG.eof  do
      begin
        if dmGeral.PCP_CD_C_REG.Locate('ID_REGIAO',
                                dmGeralSer.BUS_CD_C_REG.FieldByName('ID_REGIAO').AsInteger,[]) then
          begin
            dmGeral.PCP_CD_C_REG.Edit;
          end
        else
          begin
            dmGeral.PCP_CD_C_REG.Insert;
            dmGeral.PCP_CD_C_REG.fieldByName('ID_REGIAO').AsInteger :=
                    dmGeralSer.BUS_CD_C_REG.FieldByName('ID_REGIAO').AsInteger;

          end;

        dmGeral.PCP_CD_C_REG.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_REG.FieldByName('DESCRICAO').AsString;

        dmGeral.PCP_CD_C_REG.fieldByName('DESC_PERC').AsCurrency :=
                    dmGeralSer.BUS_CD_C_REG.FieldByName('DESC_PERC').AsCurrency;

        dmGeral.PCP_CD_C_REG.Post;
        dmGeralSer.BUS_CD_C_REG.Next;
      end;

     if  dmGeralSer.BUS_CD_C_REG.IsEmpty then
       begin
         msg:='Não há nenhum registro de região a ser importada.';
         Result :=0;
       end
     else
       begin
         if dmGeral.PCP_CD_C_REG.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros de região importados com sucesso.';
             Result :=1;
           end
         else
           begin
             msg:='Falha no processo de importação dos registros de região.';
             Result :=2;
           end;

       end;
end;



function TdmGeral.ImpFuncionario(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_C_FUN.Close;
  dmGeralSer.BUS_CD_C_FUN.Data :=
  dmGeralSer.BUS_CD_C_FUN.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_FUN.Close;
  dmGeral.CAD_CD_C_FUN.Data :=
  dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([1,'%']));

    while not dmGeralSer.BUS_CD_C_FUN.eof  do
      begin
        if dmGeral.CAD_CD_C_FUN.Locate('ID_FUNCIONARIO',
                                dmGeralSer.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_FUN.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_FUN.Insert;
            dmGeral.CAD_CD_C_FUN.fieldByName('ID_FUNCIONARIO').AsInteger :=
                    dmGeralSer.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

          end;

        dmGeral.CAD_CD_C_FUN.fieldByName('NOME').AsString :=
                    dmGeralSer.BUS_CD_C_FUN.FieldByName('NOME').AsString;

        dmGeral.CAD_CD_C_FUN.fieldByName('ATIVO').AsBoolean :=
                    dmGeralSer.BUS_CD_C_FUN.FieldByName('ATIVO').AsBoolean;

        dmGeral.CAD_CD_C_FUN.Post;
        dmGeralSer.BUS_CD_C_FUN.Next;
      end;

     if  dmGeralSer.BUS_CD_C_FUN.IsEmpty then
       begin
         msg:='Não há nenhum registro de funcionário a ser importado.';
         Result :=0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_FUN.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros de funcionários importados com sucesso.';
             Result :=1;
           end
         else
           begin
             msg:='Falha no processo de importação dos registros de funcionários.';
             Result :=2;
           end;

       end;
end;







function TdmGeral.ImpCliente(var msg:String):Integer;
begin
  Result :=0;
  dmGeralSer.BUS_CD_C_CLI.First;

  dmGeral.CAD_CD_C_CLI.Close;
  dmGeral.CAD_CD_C_CLI.Data :=
  dmGeral.CAD_CD_C_CLI.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_CLI.eof  do
      begin
        if dmGeral.CAD_CD_C_CLI.Locate('ID_CLIENTE',
                                          dmGeralSer.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_CLI.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_CLI.Insert;
            dmGeral.CAD_CD_C_CLI.fieldByName('ID_CLIENTE').AsInteger :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;
          end;

        dmGeral.CAD_CD_C_CLI.fieldByName('PESSOA').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('PESSOA').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('NOME').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('NOME').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('APELIDO').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('APELIDO').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('ENDERECO').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('ENDERECO').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('END_COMPLEMENTO').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('END_COMPLEMENTO').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('CEP').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('CEP').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('NUMERO').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('NUMERO').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('tel_fixo').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('tel_fixo').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('tel_movel').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('tel_movel').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('fax').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('fax').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('doc_cnpj_cpf').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('doc_ie_identidade').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('doc_ie_identidade').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('bairro').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('bairro').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('id_cidade').AsString :=
                    trim(dmGeralSer.BUS_CD_C_CLI.FieldByName('id_cidade').AsString);

        dmGeral.CAD_CD_C_CLI.fieldByName('ativo').AsBoolean :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('ativo').AsBoolean;

        dmGeral.CAD_CD_C_CLI.fieldByName('email').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('email').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('lim_valor').AsCurrency :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('lim_valor').AsCurrency;

        dmGeral.CAD_CD_C_CLI.fieldByName('lim_saldo').AsCurrency :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('lim_saldo').AsCurrency;

        dmGeral.CAD_CD_C_CLI.fieldByName('sexo').AsInteger :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('sexo').AsInteger;

        dmGeral.CAD_CD_C_CLI.fieldByName('situacao').AsInteger :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('situacao').AsInteger;

        dmGeral.CAD_CD_C_CLI.fieldByName('tipo_cliente').AsInteger :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('tipo_cliente').AsInteger;

        dmGeral.CAD_CD_C_CLI.fieldByName('id_perfil_cli').AsInteger :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('id_perfil_cli').AsInteger;

        dmGeral.CAD_CD_C_CLI.fieldByName('doc_rg_orgao').AsString :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('doc_rg_orgao').AsString;

        dmGeral.CAD_CD_C_CLI.fieldByName('id_vendedor').AsInteger :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('id_vendedor').AsInteger;

        dmGeral.CAD_CD_C_CLI.fieldByName('dias_prazo_financeiro').AsInteger :=
                    dmGeralSer.BUS_CD_C_CLI.FieldByName('dias_prazo_financeiro').AsInteger;

        dmGeral.CAD_CD_C_CLI.Post;
        dmGeralSer.BUS_CD_C_CLI.Next;
      end;

     if  dmGeralSer.BUS_CD_C_CLI.IsEmpty then
       begin
         msg := 'Não há nenhum registro de cliente a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_CLI.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros de clientes importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg:='Falha no processo de importação dos registros de clientes.';
             Result := 2;
           end;

       end;
end;






function TdmGeral.ImpFormaPgto(var msg:String):Integer;
begin
  Result := 0;
  dmGeralSer.BUS_CD_C_FPG.Close;
  dmGeralSer.BUS_CD_C_FPG.Data :=
  dmGeralSer.BUS_CD_C_FPG.DataRequest(VarArrayOf([1,'%']));

  dmGeral.CAD_CD_C_FPG.Close;
  dmGeral.CAD_CD_C_FPG.Data :=
  dmGeral.CAD_CD_C_FPG.DataRequest(VarArrayOf([0,'']));

    while not dmGeralSer.BUS_CD_C_FPG.eof  do
      begin
        if dmGeral.CAD_CD_C_FPG.Locate('ID_FORMA_PAG',
                                          dmGeralSer.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsInteger,[]) then
          begin
            dmGeral.CAD_CD_C_FPG.Edit;
          end
        else
          begin
            dmGeral.CAD_CD_C_FPG.Insert;
            dmGeral.CAD_CD_C_FPG.fieldByName('ID_FORMA_PAG').AsInteger :=
                    dmGeralSer.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsInteger;
          end;


        dmGeral.CAD_CD_C_FPG.fieldByName('DESCRICAO').AsString :=
                    dmGeralSer.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

        dmGeral.CAD_CD_C_FPG.fieldByName('DOC_IMPRESSO').AsInteger :=
                    dmGeralSer.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger;
        dmGeral.CAD_CD_C_FPG.fieldByName('TIPO_PAGAMENTO').AsInteger :=
                    dmGeralSer.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger;
        dmGeral.CAD_CD_C_FPG.fieldByName('CRI_DEBI_CLIENTE').AsBoolean :=
                    dmGeralSer.BUS_CD_C_FPG.FieldByName('CRI_DEBI_CLIENTE').AsBoolean;

        dmGeral.CAD_CD_C_FPG.Post;
        dmGeralSer.BUS_CD_C_FPG.Next;
      end;

     if  dmGeralSer.BUS_CD_C_FPG.IsEmpty then
       begin
         msg:='Não há nenhum registro de empresa a ser importada.';
         Result := 0;
       end
     else
       begin
         if dmGeral.CAD_CD_C_FPG.ApplyUpdates(0) = 0 then
           begin
             msg:='Registros importados com sucesso.';
             Result := 1;
           end
         else
           begin
             msg:= 'Falha no processo de importação dos registros.';
             Result := 2;
           end;

       end;
end;



procedure TdmGeral.GerarFPG_Doc(id_forma_fpg, id_plano, id_Ccusto: String; qtde_parcelas: integer;  valor: Currency; cds: TClientDataSet;
                                Origem:Integer);
  procedure MostraMensagem;
  begin
    ShowMessage('Mensagem');
  end;
var
  i: integer;
  lTotFpgInserido, lSoma, lVlrParcela, lVlrRestante, lVlrUltParc: Currency;
  IdFormaPag: String;
  vlrTitulo: Currency;
begin

   {
    Origem:
       0 - Pedido de venda
       1 - Movimento de cheque
       2 - Ordem de saída
       3 - Nota Fiscal(Controle de Caixa)
       4 - Fechamento de Ordem de Serviço
       5 - Pedido Cupon - FAT_FM_M_PNF
   }

  lTotFpgInserido := 0;
  lVlrParcela     := 0;
  lSoma           := 0;

  if origem = 5 then
     begin
       IdFormaPag := cds.fieldbyname('ID_FORMA_PAG').AsString;
       dmGeral.BusFormaPgtos2(0,cds.fieldbyname('ID_FORMA_PAG').AsString);
       vlrTitulo  := cds.fieldbyname('VLR_TITULO').AsCurrency;
     end;

  cds.Cancel;

  if Origem <> 5 then
     begin
        if not cds.IsEmpty then
           begin
             if Dc_MessageDlgCheck('Existe forma de pagamento já lançado!' + #13 + 'Deseja refazer?', mtConfirmation, [mbYes, mbNo],
                0, mrNo, true, false,'', @MostraMensagem) = 7 then
                //if MessageDlg('Existe forma de pagamento já lançado!' + #13 +
                //               'Deseja refazer?', mtConfirmation, [mbYes, mbNo], 1) = mrNo then
                begin
                  cds.First;
                  while not cds.eof do
                     begin
                       if (origem = 0) or (origem = 2)  or (origem = 3) or (origem = 4)  then
                          lTotFpgInserido :=  lTotFpgInserido + cds.fieldbyname('VLR_TITULO').AsCurrency;
                       if origem = 1 then
                          lTotFpgInserido :=  lTotFpgInserido + cds.fieldbyname('VLR_TOTAL').AsCurrency;

                       cds.Next;
                     end;
                   if lTotFpgInserido > 0 then
                      begin
                        if lTotFpgInserido >= Valor then
                           begin
                             cds.Cancel;
                             ShowMessage('Não há saldo valor para poder adicionar nos vencimentos.');
                             abort;
                           end;
                      end;

                end
             else
                begin
                  cds.First;
                  while not cds.eof do
                     begin
                       cds.delete;
                     end;
                end;
           end;
     end
  else
     begin
     // if not cds.IsEmpty then
     //    begin
            //if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger <> 5 then
               //begin
                  cds.First;
                  while not cds.eof do
                     begin
                       dmGeral.BusFormaPgtos2(0,cds.fieldbyname('ID_FORMA_PAG').AsString);
                       if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger <> 5 then
                          begin
                            lTotFpgInserido :=  lTotFpgInserido + cds.fieldbyname('VLR_TITULO').AsCurrency;
                          end;
                       cds.Next;
                     end;

                  if lTotFpgInserido > 0 then
                     begin
                        if lTotFpgInserido >= Valor then
                           begin
                             cds.Cancel;
                             ShowMessage('Não há saldo valor para poder adicionar nos vencimentos.');
                             abort;
                           end;
                     end
                  else
                     begin
                       dmGeral.BusFormaPgtos2(0,IdFormaPag);
                       if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger <> 5 then
                          begin
                             if vlrTitulo >= Valor then
                                begin
                                  cds.Cancel;
                                  ShowMessage('Valor da forma de pagamento não pode ser maior que o do pedido de venda.');
                                  abort;
                                end;
                          end;
                     end;
              // end;
      //   end;
     end;

  if Origem <> 5 then
     begin
        if lTotFpgInserido > 0 then
           begin
             lVlrRestante := Valor - lTotFpgInserido;
             lVlrParcela :=  RoundTo(lVlrRestante / qtde_parcelas,-2);
             for i := 1 to qtde_parcelas do
                begin
                   if i <> qtde_parcelas then
                      begin
                        lSoma := lSoma + lVlrParcela
                      end
                   else
                      begin
                        lVlrUltParc := RoundTo(lVlrRestante - lSoma,-2);
                      end;
                end;
           end
        else
           begin
             lVlrParcela :=  RoundTo(Valor / qtde_parcelas,-2);
             for i := 1 to qtde_parcelas do
                begin
                   if i <> qtde_parcelas then
                      begin
                        lSoma := lSoma + lVlrParcela
                      end
                   else
                      begin
                        lVlrUltParc := RoundTo(Valor - lSoma,-2);
                      end;
                end;
           end;
     end
  else
     begin
       dmGeral.BusFormaPgtos2(0,IdFormaPag);
       if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger <> 5 then
          begin
            if lTotFpgInserido > 0 then
               begin
                 lVlrRestante := vlrTitulo;
                 lVlrParcela :=  RoundTo(lVlrRestante / qtde_parcelas,-2);
                 for i := 1 to qtde_parcelas do
                    begin
                       if i <> qtde_parcelas then
                          begin
                            lSoma := lSoma + lVlrParcela
                          end
                       else
                          begin
                            lVlrUltParc := RoundTo(lVlrRestante - lSoma,-2);
                          end;
                    end;
               end
            else
               begin
                 lVlrParcela :=  RoundTo(vlrTitulo / qtde_parcelas,-2);
                 for i := 1 to qtde_parcelas do
                    begin
                       if i <> qtde_parcelas then
                          begin
                            lSoma := lSoma + lVlrParcela
                          end
                       else
                          begin
                            lVlrUltParc := RoundTo(vlrTitulo - lSoma,-2);
                          end;
                    end;
               end;
          end
       else
          begin
            lSoma := 0;
            cds.First;
            while not cds.eof do
               begin
                 lSoma :=  lSoma + cds.fieldbyname('VLR_TITULO').AsCurrency;
                 cds.Next;
               end;
            cds.First;

            if vlrTitulo > (valor - lSoma) then
               begin
                 lVlrUltParc := valor - lSoma;
               end
            else
               begin
                 lVlrUltParc := vlrTitulo;
               end;
            lSoma := 0;
          end;
     end;


  for i := 1 to qtde_parcelas do
      begin
        cds.Insert;
        // Comentado por Maxsuel Victor, 28/10/2016, o código agora funciona no onNewRecord
           //cds.FieldByName('ID_TITULO').AsInteger    := id_seq_titulo;
           //inc(id_seq_titulo);

        // O id_titulo é gerado no OnNewRecord do cds.

        cds.FieldByName('ID_FORMA_PAG').AsInteger    := strtoint(id_forma_fpg);
        dmGeral.BusFormaPgtos(0,cds.FieldByName('ID_FORMA_PAG').text);
        cds.FieldByName('int_nomefpg').AsString      := BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

        {if BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 5 then
          cds.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis
        else
          cds.FieldByName('DTA_VENCIMENTO').AsDateTime := (xDataSis + (i * 30));
        cds.FieldByName('DIAS').AsInteger            :=  i * 30;  }

         if BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
           begin
             cds.FieldByName('DTA_VENCIMENTO').AsDateTime := (now + (i * 30));
             cds.FieldByName('DIAS').AsInteger            :=  i * 30;
           end
        else
           begin
             cds.FieldByName('DTA_VENCIMENTO').AsDateTime := now;
             cds.FieldByName('DIAS').AsInteger            :=  0;
           end;

        cds.FieldByName('CHE_BANCO').text            := '';
        cds.FieldByName('CHE_AGENCIA').text          := '';
        cds.FieldByName('CHE_CONTA').AsString        := '';
        cds.FieldByName('CHE_NUMERO').AsInteger      :=  0;
        cds.FieldByName('CHE_EMITENTE').text         := '';


       { if origem = 3 then // Nota Fiscal(Controle de Caixa)
           begin

                cds.FieldByName('id_nfe_tit').AsInteger :=
                     enValorChave('FAT_TB_M_NFE_TIT');

             cds.FieldByName('ID_PLANO').AsString     := id_plano;
             cds.FieldByName('ID_CCUSTO').AsString    := id_Ccusto;

             if trim(id_plano) <> '' then
                begin
                  dmGeral.BusPlanoCta(0,id_plano);
                  cds.FieldByName('INT_NOMEPCT').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
                  dmGeral.BUS_CD_C_PCT.close;
                end;

             cds.FieldByName('num_parcela').AsString  := '';
             if i < qtde_parcelas then
               begin
                cds.FieldByName('VLR_TITULO').AsCurrency     := lVlrParcela;
                if lVlrParcela = 0 then
                   begin
                     cds.Cancel;
                     ShowMessage('Não é permitido parcela com valor 0.');
                     abort;
                   end;

               end
             else
               begin
                cds.FieldByName('VLR_TITULO').AsCurrency     := lVlrUltParc;
                if lVlrUltParc = 0 then
                   begin
                     cds.Cancel;
                     ShowMessage('Não é permitido parcela com valor 0.');
                     abort;
                   end;
               end;
           end;   }

        {if origem = 2 then // Ordem de saída
           begin

              cds.FieldByName('num_parcela').AsString       := '';

             if i < qtde_parcelas then
               begin
                cds.FieldByName('VLR_TITULO').AsCurrency     := lVlrParcela;
               end
             else
               begin
                cds.FieldByName('VLR_TITULO').AsCurrency     := lVlrUltParc;
               end;
           end;}

        if origem = 1 then  // Movimento de Cheques
           begin
             if i < qtde_parcelas then
               begin
                cds.FieldByName('VLR_TOTAL').AsCurrency     := lVlrParcela;
                cds.FieldByName('VLR_TITULO').AsCurrency := lVlrParcela;
                if lVlrParcela = 0 then
                   begin
                     cds.Cancel;
                     ShowMessage('Não é permitido parcela com valor 0.');
                     abort;
                   end;
               end
             else
               begin
                 cds.FieldByName('VLR_TOTAL').AsCurrency     := lVlrUltParc;
                 cds.FieldByName('VLR_TITULO').AsCurrency := lVlrParcela;
                 if lVlrUltParc = 0 then
                   begin
                     cds.Cancel;
                     ShowMessage('Não é permitido parcela com valor 0.');
                     abort;
                   end;
               end;
           end;

        if origem in [0,2,4,5] then // Pedido de Venda, Ordem de saída,  Fechamento de Ordem de Serviço e Pedido Cupon - FAT_FM_M_PNF
           begin
             if i < qtde_parcelas then
               begin
                 cds.FieldByName('VLR_TITULO').AsCurrency     := lVlrParcela;
                 if lVlrParcela = 0 then
                    begin
                      cds.Cancel;
                      ShowMessage('Não é permitido parcela com valor 0.');
                      abort;
                    end;
               end
             else
               begin
                 cds.FieldByName('VLR_TITULO').AsCurrency     := lVlrUltParc;
                 if lVlrUltParc = 0 then
                    begin
                      cds.Cancel;
                      ShowMessage('Não é permitido parcela com valor 0.');
                      abort;
                    end;
               end;

             if (origem = 0) then
               cds.FieldByName('BOL_NOSSO_NUMERO').text     := '';
             if (origem = 2) then
               cds.FieldByName('num_parcela').AsString       := '';
           end;
        cds.Post;
      end;
  cds.First;
  cds.Edit;
end;


function TdmGeral.FatTestaQtdeIte(origem: integer;CdsPai, CdsIte: TClientDataSet): Boolean;
var
   Saldo_Fisico: String;

   QtdeAnt, SaldoIte: Extended;
begin

   { Origem:
          1 - Pedido De venda
          2 - Nota Fiscal de Saída / Nota Fiscal de Dev. de Fornecedor
          3 - Saída por Almoxarifado
   }

   result  := true;

   QtdeAnt := 0;

   case Origem of
     1:
       begin
        { dmGeral.BUS_CD_M_PED.Close;
         dmGeral.BUS_CD_M_PED.Data :=
                 dmGeral.BUS_CD_M_PED.DataRequest(
                         VarArrayOf([0, CdsPai.FieldByName('id_empresa').AsString, CdsPai.FieldByName('id_pedido').AsString]));
         if not dmGeral.BUS_CD_M_PED.IsEmpty then
            begin
              if dmGeral.BUS_CD_M_PED_ITE.locate('ID_PEDIDO;ID_SEQUENCIA',VarArrayOf([
                                   CdsPai.FieldByName('id_pedido').AsString,
                                   CdsIte.FieldByName('ID_SEQUENCIA').Text]),[]) then
                 begin
                   QtdeAnt := dmGeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsFloat;
                 end;
            end;
         dmGeral.BUS_CD_M_PED.Close;  }
       end;
     2:
       begin
        { dmGeral.BUS_CD_M_NFE.Close;
         dmGeral.BUS_CD_M_NFE.Data :=
                 dmGeral.BUS_CD_M_NFE.DataRequest(
                         VarArrayOf([12, CdsPai.FieldByName('ID_FISCAL').AsString]));
         if not dmGeral.BUS_CD_M_NFE.IsEmpty then
            begin
              if dmGeral.BUS_CD_M_NFE_ITE.locate('ID_FISCAL;ID_SEQUENCIA',VarArrayOf([
                                   CdsPai.FieldByName('ID_FISCAL').AsString,
                                   CdsIte.FieldByName('ID_SEQUENCIA').Text]),[]) then
                 begin
                   QtdeAnt := dmGeral.BUS_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                 end;
            end;
         dmGeral.BUS_CD_M_NFE.Close;  }
       end;
     3:
       begin
        { dmGeral.BUS_CD_M_MAL.Close;
         dmGeral.BUS_CD_M_MAL.Data :=
                 dmGeral.BUS_CD_M_MAL.DataRequest(
                         VarArrayOf([0, CdsPai.FieldByName('ID_EMPRESA').AsString,
                                        CdsPai.FieldByName('ID_MAL').AsString]));
         if not dmGeral.BUS_CD_M_MAL.IsEmpty then
            begin
              if dmGeral.BUS_CD_M_MAL_ITE.locate('ID_MAL;ID_SEQUENCIA',VarArrayOf([
                                   CdsPai.FieldByName('ID_MAL').AsString,
                                   CdsIte.FieldByName('ID_SEQUENCIA').Text]),[]) then
                 begin
                   QtdeAnt := dmGeral.BUS_CD_M_MAL_ITE.FieldByName('QTDE').AsFloat;
                 end;
            end;
         dmGeral.BUS_CD_M_MAL.Close;}
       end;
   end;

   dmGeral.BusItens(0,CdsIte.FieldByName('ID_ITEM').Text);

   if dmGeral.BUS_CD_C_ITE.FieldByName('int_tipo_item').AsInteger <> 9 then // Se não for serviço
      begin
        dmGeral.BusTipoEstoque(0,CdsPai.FieldByName('ID_TIPO_MOV_ESTOQUE').Text);

       { if origem = 3 then
           begin
              if (dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 0) and // Entrada
                 (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 1) then // Devolução
                  begin
                    dmGeral.BUS_CD_C_ITE.close;
                    dmGeral.BUS_CD_C_TME.Close;
                    exit;
                  end;
           end;}

        if dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean then
           begin
              dmGeral.BusSaldoItem(CdsPai.FieldByName('ID_EMPRESA').Text,
                                   CdsIte.FieldByName('ID_ITEM').Text,
                                   CdsIte.FieldByName('ID_COR').Text,
                                   CdsIte.FieldByName('ID_TAMANHO').Text,
                                   CdsPai.FieldByName('ID_ALMOXARIFADO').Text,
                                   saldo_fisico);

              // A variavel saldo_fisico tem este nome devido o sistema não trabalhar com estoque pendente por isso
              // não coloquei saldo disponivel.

              SaldoIte := StrToFloat(saldo_fisico);

              if QtdeAnt > 0 then
                 begin
                   SaldoIte := SaldoIte + QtdeAnt;
                 end;


              if CdsIte.FieldByName('QTDE').AsFloat > SaldoIte then
                 begin
                   if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
                      begin
                        result := false;
                        dmGeral.BUS_CD_C_ITE.close;
                        dmGeral.BUS_CD_C_TME.close;
                      end;
                 end;
           end;
      end;
   dmGeral.BUS_CD_C_ITE.close;
   dmGeral.BUS_CD_C_TME.close;
end;

function TdmGeral.TesValQtde(const valor: Double): Boolean;
begin
  result := true;

  if valor < 0 then
     begin
       ShowMessage('O campo "Qtde" não pode ser menor que 0.');
       result := false;
     end;

  if valor = 0 then
     begin
       ShowMessage('O campo "Qtde" deve ser prenchido.');
       result := false;
     end;

end;





function TdmGeral.BUS_DP_CSU_ITEDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
function enSqlIte: String;
  begin
    Result :=
        'SELECT ITE.*, '+
        //' NCM.DESCRICAO AS INT_NOMENCM, '+
        '   GRU.DESCRICAO INT_DESC_GRUPO, '+
        '   GRU.TIPO_ITEM INT_TIPO_ITEM, '+
      //  '   GRU.ORIGEM_MERCADORIA INT_ORIGEM, '+
      //  '   GRU.ID_TRIBUTO INT_TRIBUTO, '+
        //'   GRU.MVA INT_MVA, '+
        ' FON.DESCRICAO AS INT_NOMEFOR '+
        //'   GRU.ID_FTE_ETQ AS INT_FTEETQ ' +
        'FROM CAD_TB_C_ITE ITE '+
        'LEFT OUTER JOIN CAD_TB_C_GRU GRU ON GRU.ID_GRUPO=ITE.ID_GRUPO '+
        'LEFT OUTER JOIN CAD_TB_C_FOR FON ON FON.ID_FORNECEDOR=ITE.ID_FORNECEDOR ';
       // 'LEFT OUTER JOIN CAD_TB_C_NCM NCM ON NCM.ID_NCM = ITE.ID_NCM ';
  end;
begin
   BUS_FD_CSU_ITE.sql.Clear;

   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           BUS_FD_CSU_ITE.SQL.Add(enSqlIte + ' WHERE 1=2 ')
        else
           BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.ID_ITEM= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
          Format('WHERE upper(ITE.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 2 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.COD_BARRA= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 3 then
      begin
           BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.COD_FABRICA= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 4 then
      begin
           BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.LOCA_RUA= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 5 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
          Format('WHERE upper(ITE.APLICACAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 6 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
          Format('WHERE upper(FON.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 7 then
      begin
       BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.ID_GRUPO= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 8 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
          Format('WHERE upper(GRU.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 9 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
          Format('WHERE upper(ITE.REFERENCIA) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 10 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.ID_NCM= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 11 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.ATIVO = 1 and ITE.DESTINO_RECLAMADO in (''1'',''2'') ');
      end
   else if Input[0] = 12 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.ID_FORNECEDOR= ''' + VarToStr(Input[1]) +''' ');
      end;


   BUS_FD_CSU_ITE.SQL.Add(' AND ITE.ATIVO=1 ');

   if Input[2] <> '' then
      begin
            BUS_FD_CSU_ITE.SQL.Add(
              ' AND GRU.TIPO_ITEM = ''' + VarToStr(Input[2]) +''' ');
      end;

   if Input[3] = 0 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(
           ' ORDER BY ITE.ID_GRUPO, ITE.ID_ITEM ');
      end;
   if Input[3] = 1 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(
           ' ORDER BY INT_DESC_GRUPO, ITE.ID_ITEM ');
      end;
   if Input[3] = 2 then
      begin
        BUS_FD_CSU_ITE.SQL.Add(
           ' ORDER BY ITE.DESCRICAO ');
      end;
  // GerarSqlTxt(BUS_SQ_CSU_ITE);

   Result := BUS_DP_CSU_ITE.Data;
   BUS_FD_CSU_ITE.Close;
end;

function TdmGeral.BUS_DP_C_ITE_PRCDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlItePrc: String;
  begin
    Result :=
     ' SELECT PRC.*,PEC.DESCRICAO AS INT_DESC_PEC FROM CAD_TB_C_ITE_PRC PRC '+
     '  LEFT OUTER JOIN CAD_TB_C_PEC PEC ON PEC.ID_PERFIL_CLI=PRC.ID_PERFIL_CLI ';
  end;
begin
   BUS_FD_C_ITE_PRC.sql.Clear;

   BUS_FD_C_ITE_PRC.SQL.Add(enSqlItePrc +
     ' WHERE prc.id_item = ''' + VarToStr(Input[0]) +''' ');

   if VarToStr(Input[1])<>'' then
     begin
        BUS_FD_C_ITE_PRC.SQL.Add(
            ' and prc.id_perfil_cli = ''' + VarToStr(Input[1]) +''' ');
     end;

   Result := BUS_DP_C_ITE_PRC.Data;
   BUS_FD_C_ITE_PRC.Close;
end;

function TdmGeral.BUS_DP_C_PAR_CPGDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
function enSqlParCpg: String;
  begin
    Result :=
        ' SELECT PPG.*, CPG.DESCRICAO AS INT_NOMECPG FROM CAD_TB_C_PAR_CPG PPG ' +
        '  left outer join CAD_TB_C_CPG CPG ON (CPG.ID_CONDICAO_PAG = PPG.ID_CONDICAO_PAG)';
  end;
begin
   BUS_FD_C_PAR_CPG.sql.Clear;

   BUS_FD_C_PAR_CPG.SQL.Add(enSqlParCpg + ' WHERE 1 = 1 ');

   if Input[0] = 0 then
      begin
        if input[2] <> '' then
           begin
             BUS_FD_C_PAR_CPG.SQL.Add(
                ' AND PPG.ID_EMPRESA = '''+VarToStr(Input[1])+''' '+
                ' AND PPG.SEQUENCIA <= ''' + VarToStr(Input[2]) +''' ');
           end;
      end;

   BUS_FD_C_PAR_CPG.SQL.Add(' ORDER BY SEQUENCIA ');

   Result := BUS_DP_C_PAR_CPG.Data;
   BUS_FD_C_PAR_CPG.close;
end;

function TdmGeral.BUS_DP_C_PAR_CPG_INFDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
function enSqlParCpgInf: String;
  begin
    Result := ' select ppg.id_empresa, ppg.id_condicao_pag, cpg.descricao as int_nomecpg, ppg.sequencia, ccc.per_reajuste ' +
              ' from cad_tb_c_par_cpg ppg                                                        ' +
              '   left outer join cad_tb_c_cpg cpg on (cpg.id_condicao_pag = ppg.id_condicao_pag) ' +
              '   left outer join cad_tb_c_par_cpg ccc on ( ppg.id_empresa = ccc.id_empresa and ' +
              '                                            ppg.sequencia >= ccc.sequencia) ';

  end;
begin
   BUS_FD_C_PAR_CPG_INF.sql.Clear;

   BUS_FD_C_PAR_CPG_INF.SQL.Add(enSqlParCpgInf +
      ' where ppg.id_empresa = ''' + VarToStr(Input[0])  +''' ' +
      ' order by ppg.sequencia ');

   Result := BUS_DP_C_PAR_CPG_INF.Data;
   BUS_FD_C_PAR_CPG_INF.close;
end;

function TdmGeral.BUS_DP_C_TRI_REGDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlTriReg: String;
  begin
    Result := ' select * from CAD_TB_C_TRI_REG ';
  end;
begin
   BUS_FD_C_TRI_REG.sql.Clear;
   if VarToStr(Input[2])<>'' then
      begin
        BUS_FD_C_TRI_REG.SQL.Add(enSqlTriReg +
           ' WHERE ID_TRIBUTO =       ''' + VarToStr(Input[0]) +''' AND '+
           '       ID_TIPO_MOV_ESTOQUE =  ''' + VarToStr(Input[1]) +''' AND '+
           '       UF = ''' + VarToStr(Input[2]) +''' and '+
           '       ID_EMPRESA = ''' + VarToStr(Input[3]) +''' ');

      end
   else
      begin
        BUS_FD_C_TRI_REG.SQL.Add(enSqlTriReg +
           ' WHERE ID_TRIBUTO =       ''' + VarToStr(Input[0]) +''' AND '+
           '       ID_TIPO_MOV_ESTOQUE =  ''' + VarToStr(Input[1]) +''' AND '+
           '       ID_EMPRESA = ''' + VarToStr(Input[3]) +''' ');

      end;
   Result := BUS_DP_C_TRI_REG.Data;
   BUS_FD_C_TRI_REG.Close;
end;

procedure TdmGeral.BUS_PR_X_TIP(Tabela:TClientDataSet);
begin

  Tabela.Close;
  Tabela.CreateDataSet;


  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString    := '00';
  Tabela.FieldByName('DESCRICAO').AsString := 'Mercadoria para Revenda';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '01';
  Tabela.FieldByName('DESCRICAO').AsString := 'Matéria Prima';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString    := '02';
  Tabela.FieldByName('DESCRICAO').AsString := 'Embalagem';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '03';
  Tabela.FieldByName('DESCRICAO').AsString := 'Produto em Processo';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '04';
  Tabela.FieldByName('DESCRICAO').AsString := 'Produto Acabado';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '05';
  Tabela.FieldByName('DESCRICAO').AsString := 'Subproduto';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '06';
  Tabela.FieldByName('DESCRICAO').AsString := 'Produto Intermediário';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '07';
  Tabela.FieldByName('DESCRICAO').AsString := 'Material de Uso e Consumo';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '08';
  Tabela.FieldByName('DESCRICAO').AsString := 'Ativo Imobilizado';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '09';
  Tabela.FieldByName('DESCRICAO').AsString := 'Serviços';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '10';
  Tabela.FieldByName('DESCRICAO').AsString := 'Outros Insumos';

  Tabela.Insert;
  Tabela.FieldByName('CODIGO').AsString     := '99';
  Tabela.FieldByName('DESCRICAO').AsString := 'Outros';

  Tabela.Post;
  Tabela.IndexFieldNames := 'CODIGO';
  Tabela.First;
end;



function TdmGeral.BuscarDescItem(cds_itens: TClientDataSet;tipo_busca_desc:integer=0;id_cliente:integer=0;id_condpag:integer=0): Currency;
begin
  { tipo_busca_desc
     0 - Grupo(Promo) > Grupo(Desc) > Parametros(Desc)
     1 - Regiao(Desc) > Grupo(Promo) > Parametros(Desc)
  }


  BusItens(0,cds_itens.FieldByName('ID_ITEM').AsString);
  BusGrupoEst(0,BUS_CD_C_ITE.FieldByName('id_grupo').Text);

  // O result é referente ao desconto normal(DESC_PER) do Grupo ou Global (PER_DESCONTO)
  result := 0;

  { Verifica primeiro se o grupo está em promoção,
    neste caso, deve ser passado o percentual de promoção para o campo
    % de desconto do item,  mas só se ele tiver zerado (0,00)}
  if (tipo_busca_desc = 0) then
     begin
        if BUS_CD_C_GRU.FieldByName('PROMO_ATIVA').AsBoolean then
           begin
             if cds_itens.FieldByName('PER_DESCONTO').AsCurrency = 0 then
                cds_itens.FieldByName('PER_DESCONTO').AsCurrency := BUS_CD_C_GRU.FieldByName('PROMO_PERC').AsCurrency;
                result := BUS_CD_C_GRU.FieldByName('PROMO_PERC').AsCurrency;
           end
        else
           begin
              // Caso for percentual de desconto do Grupo do item
              if BUS_CD_C_GRU.FieldByName('DESC_ATIVA').AsBoolean then
                 begin
                   if BUS_CD_C_GRU.FieldByName('DESC_PERC').AsCurrency > 0 then
                      result := BUS_CD_C_GRU.FieldByName('DESC_PERC').AsCurrency;
                 end
              else
                 begin
                   // Caso o grupo não permita desconto, o sistema irá buscar o Desconto Global.
                   if CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsCurrency > 0 then
                      result := CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsCurrency;
                 end;
           end;
     end;

   //Rotinas que utlizam tipo_busca_desc = 1: FAT_FM_M_PED(SGQ)
  if (tipo_busca_desc = 1) then
     begin
       dmGeral.BusCliente(0,IntToStr(id_cliente));
       if ((BUS_CD_C_CLI.FieldByName('INT_REG_DESC_PERC').AsString <> '') and
          (BUS_CD_C_CLI.FieldByName('INT_REG_DESC_PERC').AsCurrency > 0)) then
          begin
            result := BUS_CD_C_CLI.FieldByName('INT_REG_DESC_PERC').AsCurrency;
          end
       else if ((BUS_CD_C_GRU.FieldByName('PROMO_ATIVA').AsBoolean = true) and
                (BUS_CD_C_GRU.FieldByName('PROMO_PERC').AsString <> '') and
                (BUS_CD_C_GRU.FieldByName('PROMO_PERC').AsCurrency > 0)) then
          begin
            result := BUS_CD_C_GRU.FieldByName('PROMO_PERC').AsCurrency;
          end
       else if ((CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsString<>'') and
                (CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsCurrency > 0))  then
          begin
            result := CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsCurrency;
          end;
       BUS_CD_C_CLI.Close;
     end;

     //REV
   if (tipo_busca_desc = 2) then
     begin
        BusCondPgto(0,IntToStr(id_condpag));
        if ((not BUS_CD_C_CPG.IsEmpty) and (BUS_CD_C_CPG.FieldByName('PER_DESC').AsString <> '') and
         (BUS_CD_C_CPG.FieldByName('PER_DESC').AsCurrency > 0)) then
          begin
            result := BUS_CD_C_CPG.FieldByName('PER_DESC').AsCurrency;
            BUS_CD_C_CPG.Close;
            exit;
          end;

        if BUS_CD_C_GRU.FieldByName('PROMO_ATIVA').AsBoolean then
           begin
             if cds_itens.FieldByName('PER_DESCONTO').AsCurrency = 0 then
                cds_itens.FieldByName('PER_DESCONTO').AsCurrency := BUS_CD_C_GRU.FieldByName('PROMO_PERC').AsCurrency;
                result := BUS_CD_C_GRU.FieldByName('PROMO_PERC').AsCurrency;
           end
        else
           begin
              // Caso for percentual de desconto do Grupo do item
              if BUS_CD_C_GRU.FieldByName('DESC_ATIVA').AsBoolean then
                 begin
                   if BUS_CD_C_GRU.FieldByName('DESC_PERC').AsCurrency > 0 then
                      result := BUS_CD_C_GRU.FieldByName('DESC_PERC').AsCurrency;
                 end
              else
                 begin
                   // Caso o grupo não permita desconto, o sistema irá buscar o Desconto Global.
                   if CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsCurrency > 0 then
                      result := CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsCurrency;
                 end;
           end;
          BUS_CD_C_CPG.Close;
     end;
  BUS_CD_C_GRU.Close;
end;

function TdmGeral.CAD_CD_C_ITE_TesValObrigatorio(
  cds_item: TClientDataSet): Boolean;
begin
  result := true;

  if cds_item.IsEmpty then
     begin
       ShowMessage('Item não encontrado.');
       result := false;
       exit;
     end;

  if cds_item.FieldByName('ATIVO').AsBoolean = false then
     begin
       ShowMessage('Item inativo.');
       result := false;
       exit;
     end;
end;

function TdmGeral.CAD_CD_C_CLI_TesValObrigatorio(
  cds_cli: TClientDataSet): Boolean;
begin
  result := true;

  if cds_cli.IsEmpty then
     begin
       ShowMessage('Cliente não encontrado.');
       result := false;
       exit;
     end;

  if cds_cli.FieldByName('ID_CLIENTE').AsInteger = 0 then
     begin
       ShowMessage('O campo "Cliente" deve ser preenchido.');
       result := false;
       exit;
     end;

  if cds_cli.FieldByName('ATIVO').AsBoolean = false then
     begin
       ShowMessage('Cliente inativo.');
       result := false;
       exit;
     end;
end;


function TdmGeral.BusPercPromGru(id_grupo: String): Extended;
begin
  // Carregamento automatico do descontro quando "promo_ativa" do CAD_FM_C_GRU.
  result := 0;

  dmGeral.BusGrupoEst(0, id_grupo);
  if dmGeral.BUS_CD_C_GRUpromo_ativa.AsBoolean = true  then
     begin
       result := dmGeral.BUS_CD_C_GRUpromo_perc.AsCurrency;
     end;
  dmGeral.BUS_CD_C_GRU.Close;
end;


procedure TdmGeral.BusUltPrcNfeIte(index: integer; item,cor,tamanho: String);
begin
  dmGeral.BUS_CD_M_ULT_NFE_ITE.Close;
  dmGeral.BUS_CD_M_ULT_NFE_ITE.Data :=
          dmGeral.BUS_CD_M_ULT_NFE_ITE.DataRequest(VarArrayOf([index,item,cor,tamanho]));
end;

function TdmGeral.TesValVencto(const emissao_doc, vencto: TDateTime): Boolean;
begin
  result := true;

  if datetostr(vencto) = '' then
     begin
       ShowMessage('O campo "Vencimento" deve ser prenchido.');
       result := false;
     end;

  if emissao_doc > vencto then
     begin
       ShowMessage('A data de vencimento não pode ser menor que a data de emissão do documento.');
       result := false;
     end;

end;

function TdmGeral.TesValVlrDesconto(const valor_desconto, valor_bruto_item, perc_desc_perm: Currency): Boolean;
var
  lDescEncontrado: Currency;
begin
  result := true;
  lDescEncontrado := 0;

  if valor_desconto < 0 then
     begin
       ShowMessage('O campo "Valor desconto" não pode ser menor que 0.');
       result := false;
     end;

    if valor_desconto > valor_bruto_item then
     begin
       ShowMessage('O campo "Valor desconto" não pode ser maior que o "Valor bruto" do item.');
       result := false;
     end;

  lDescEncontrado :=  (valor_desconto * 100) / valor_bruto_item;

  if valor_desconto > 0 then
     begin
       if perc_desc_perm = 0 then
          begin
            ShowMessage('Desconto não é permitido.' + #13 +
                        'Limite para desconto não encontrado.');
            result := false;
          end
       else
          begin
            if lDescEncontrado > perc_desc_perm then
               begin
                 ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                             'Desconto informado: ' + FormatFloat('##,##0.00',lDescEncontrado) + #13 +
                             'Desconto limite...: ' + FormatFloat('##,##0.00',perc_desc_perm));
                 result := false;
               end;
          end;
     end;
end;


procedure TdmGeral.AtualizarGridItens(grdItens: TwwDBGrid; NomeColItem: String; TamLargCor, TamLargTam: Integer);
begin
  grdItens.ColumnByName(NomeColItem).DisplayWidth :=
      (grdItens.ColumnByName(NomeColItem).DisplayWidth + TamLargCor + TamLargTam);



 if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean=true) and
    (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean=true) then
    begin
       grdItens.ColumnByName(NomeColItem).DisplayWidth :=
      (grdItens.ColumnByName(NomeColItem).DisplayWidth - (TamLargCor + TamLargTam));
    end
 else
    begin
       if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = true) then
          begin
            grdItens.ColumnByName(NomeColItem).DisplayWidth :=
                  (grdItens.ColumnByName(NomeColItem).DisplayWidth - TamLargCor);

            grdItens.ColumnByName('int_nometam').Visible := false;
          end
       else
          begin
             if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = true then
                begin
                  grdItens.ColumnByName(NomeColItem).DisplayWidth :=
                        (grdItens.ColumnByName(NomeColItem).DisplayWidth - TamLargTam);
                  grdItens.ColumnByName('int_nomecor').Visible := false;
                end
             else
                begin
                  grdItens.ColumnByName('int_nomecor').Visible    := false;
                  grdItens.ColumnByName('int_nometam').Visible    := false;
                end;
          end;
    end;

end;


function TdmGeral.CalcPrecoItem(tipo_calculo: integer; id_perfil_cli, id_condicao_pag: String;
   cds_itens: TClientDataSet; PsqItem, CsuItem: Boolean;diasPrazo:integer=0;calculo_prc_prazo:integer=0): Currency;
var
  PonteiroItens : TBookmark;
  i,x: integer;
  lTermina_while: boolean;
  IdItem: String;
  IdCondicaoPag: Integer;
  indexPrc:Integer;
  fazCorrPerfilFamilia:Boolean;
begin

  {
    Se PsqItem = true, quer dizer que esta rotina foi chamada pela tela de pesquisa de itens (f3).
    Se CsuItem = true, quer dizer que esta rotina foi chamada pela tela de consulta de itens.
  }

  {tipo_calculo = 1 - Somente 1 produto
                = 2 - Atualiza o preço de todos os produtos}

  // Maxsuel 27/07/2015
  // Este if foi colocado pela necessidade do Orçamento da Oficina
  // que será feito sem a utiliação do cadastro de cliente e com isso o sistema
  // não tem como pegar o perfil do cliente. Para o módulo SGQ isso não terá
  // utilidade. Isso foi conversado com Mariel.
  if strtoint(id_perfil_cli) > 0 then
     begin
       BusPerfil(0,id_perfil_cli);
     end;
  BusCondPgtoExp(0,id_condicao_pag);



  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true then
     begin
       if tipo_calculo = 1 then
          begin
             // Busca os dados dos itens
             IdItem := cds_itens.FieldByName('ID_ITEM').Text;
             BusItens(0,cds_itens.FieldByName('ID_ITEM').Text);

             if PsqItem or CsuItem then  // Chamada pela tela de Pesquisa de Item
                begin
                  cds_itens.cancel;

                  dmGeral.BUS_CD_C_PAR_CPG_INF.Close;
                  dmGeral.BUS_CD_C_PAR_CPG_INF.Data :=
                       dmGeral.BUS_CD_C_PAR_CPG_INF.DataRequest(VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));

                  if not dmGeral.BUS_CD_C_PAR_CPG_INF.IsEmpty then
                     begin
                       IdCondicaoPag    := 0;
                       i:= 0;
                       while not dmGeral.BUS_CD_C_PAR_CPG_INF.eof do
                          begin
                            if IdCondicaoPag <> dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('id_condicao_pag').AsInteger then
                               begin
                                 inc(i);
                                 cds_itens.Insert;
                                 cds_itens.FieldByName('ORDEM').AsInteger  := i;
                                 cds_itens.FieldByName('ID_ITEM').AsString := IdItem;
                                 cds_itens.FieldByName('INT_NOMECPG').AsString :=
                                      BUS_CD_C_PAR_CPG_INF.FieldByName('INT_NOMECPG').AsString;

                                 cds_itens.FieldByName('preco01').AsCurrency :=
                                     BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;
                                 IdCondicaoPag :=  BUS_CD_C_PAR_CPG_INF.FieldByName('id_condicao_pag').AsInteger;
                               end;

                            if dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency > 0  then
                               begin
                                 cds_itens.FieldByName('preco01').AsCurrency :=
                                    roundTo(cds_itens.FieldByName('preco01').AsCurrency +
                                     ((cds_itens.FieldByName('preco01').AsCurrency *
                                      dmGeral.BUS_CD_C_PAR_CPG_INF.FieldByName('PER_REAJUSTE').AsCurrency) / 100 ),-2);
                               end;
                            dmGeral.BUS_CD_C_PAR_CPG_INF.Next;
                          end;
                       dmGeral.BUS_CD_C_PAR_CPG_INF.Close;
                       i:= 0;
                     end;
                end
             else
                begin
                   if cds_itens.State in [dsInsert] then
                      begin
                        cds_itens.FieldByName('PER_DESCONTO').AsCurrency :=
                                  dmGeral.BusPercPromGru(dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString);
                      end;
                   if dmGeral.CAD_CD_C_PAR_CPG.Locate('ID_CONDICAO_PAG',id_condicao_pag,[]) then
                      begin
                        BUS_CD_C_PAR_CPG.Close;
                        BUS_CD_C_PAR_CPG.Data :=
                            BUS_CD_C_PAR_CPG.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PARid_empresa.AsString, dmGeral.CAD_CD_C_PAR_CPGsequencia.AsString]));
                        if not BUS_CD_C_PAR_CPG.IsEmpty then
                           begin
                             cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                       BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;
                             while not BUS_CD_C_PAR_CPG.eof do
                                begin
                                   if BUS_CD_C_PAR_CPG.FieldByName('PER_REAJUSTE').AsCurrency > 0  then
                                      begin
                                        cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                           roundTo(cds_itens.FieldByName('VLR_UNITARIO').AsCurrency +
                                            ((cds_itens.FieldByName('VLR_UNITARIO').AsCurrency *
                                             BUS_CD_C_PAR_CPG.FieldByName('PER_REAJUSTE').AsCurrency) / 100 ),-2);
                                      end;
                                   BUS_CD_C_PAR_CPG.Next;
                                end;
                           end;
                      end;
                end;

          end
       else
          begin
            PonteiroItens := cds_itens.GetBookmark;
            cds_itens.First;
              while not cds_itens.Eof do
                 begin
                   // Busca os dados dos itens
                   BusItens(0,cds_itens.FieldByName('ID_ITEM').Text);
                   if dmGeral.CAD_CD_C_PAR_CPG.Locate('ID_CONDICAO_PAG',id_condicao_pag,[]) then
                      begin
                        BUS_CD_C_PAR_CPG.Close;
                        BUS_CD_C_PAR_CPG.Data :=
                            BUS_CD_C_PAR_CPG.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CPGid_empresa.AsString, dmGeral.CAD_CD_C_PAR_CPGsequencia.AsString]));
                        if not BUS_CD_C_PAR_CPG.IsEmpty then
                           begin
                             cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                       BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;
                             while not BUS_CD_C_PAR_CPG.eof do
                                begin
                                   if BUS_CD_C_PAR_CPG.FieldByName('PER_REAJUSTE').AsCurrency > 0  then
                                      begin
                                        cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                           roundTo(cds_itens.FieldByName('VLR_UNITARIO').AsCurrency +
                                            ((cds_itens.FieldByName('VLR_UNITARIO').AsCurrency *
                                             BUS_CD_C_PAR_CPG.FieldByName('PER_REAJUSTE').AsCurrency) / 100 ),-2);
                                      end;
                                   BUS_CD_C_PAR_CPG.Next;
                                end;
                           end;
                      end;
                   cds_itens.Next;
                 end;
              cds_itens.GotoBookmark(PonteiroItens);
          end;
     end
  else
     begin
        {*********************************
           Demais módulos ( sem ser SGQ )
        **********************************}
        if tipo_calculo = 1 then
           begin
              // Busca os dados dos itens
             IdItem := cds_itens.FieldByName('ID_ITEM').Text;
             BusItens(0,cds_itens.FieldByName('ID_ITEM').Text);

             i := 0;
             if PsqItem or CsuItem then  // Chamada pela tela de Pesquisa de Item  ou Consulta de item
                begin
                  if PsqItem then
                     begin


                         if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) and
                             not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true)) and
                           (calculo_prc_prazo=0)  then
                          begin
                              cds_itens.FieldByName('prcAvista').AsCurrency :=
                                        BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;

                              cds_itens.FieldByName('prcAprazo').AsCurrency :=
                                        BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency;

                             fazCorrPerfilFamilia := true;
                             if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                                begin
                                  fazCorrPerfilFamilia := false;
                                  if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                                    begin
                                      dmGeral.BUS_CD_C_FAM.Close;
                                      dmGeral.BUS_CD_C_FAM.Data :=
                                      dmGeral.BUS_CD_C_FAM.DataRequest(
                                                 VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString]));
                                      if (not dmgeral.BUS_CD_C_FAM.IsEmpty) and
                                         (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                                        begin
                                          fazCorrPerfilFamilia :=
                                                    dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;

                                         // dmGeral.BUS_CD_C_FAM.Close;
                                          //cds_itens.FieldByName('VLR_UNITARIO_ORIG').AsCurrency := cds_itens.FieldByName('VLR_UNITARIO').AsCurrency;

                                          //exit;
                                        end;
                                      dmGeral.BUS_CD_C_FAM.Close;
                                    end;
                                end;


                              if strtoint(id_perfil_cli) > 0 then
                                 begin
                                   if (CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean=true) and
                                      (fazCorrPerfilFamilia=true) then
                                      begin
                                        if BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsFloat > 0 then
                                           begin
                                             if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                                begin
                                                  cds_itens.FieldByName('prcAvista').AsCurrency :=
                                                       roundTo(
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                                                            dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency),-2);

                                                       {roundTo( BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency +
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency *
                                                            BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) / 100,-2); }
                                                end;

                                             if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                                begin
                                                  cds_itens.FieldByName('prcAvista').AsCurrency :=
                                                       roundTo(
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency/
                                                            dmGeral.BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency),-2);

                                                      {roundTo(  BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency -
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency *
                                                            BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) / 100,-2); }
                                                end;
                                           end;

                                        if BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsFloat > 0 then
                                           begin
                                             if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                                begin
                                                  cds_itens.FieldByName('prcAprazo').AsCurrency :=
                                                       roundTo(
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency/
                                                            BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);

                                                       {roundTo( BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency +
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                            BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency) / 100,-2);}
                                                end;

                                             if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                                begin
                                                  cds_itens.FieldByName('prcAprazo').AsCurrency :=
                                                       roundTo(
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency /
                                                            BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);

                                                     { roundTo(  BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency -
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                            BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency) / 100,-2); }
                                                end;
                                           end;
                                      end;
                                 end;
                           end;

                      if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) or
                         (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true))
                          and (calculo_prc_prazo=1) then
                          begin

                              BusPerfil(1,'%');
                              dmGeral.BUS_CD_C_ITE_PRC.Close;
                              dmGeral.BUS_CD_C_ITE_PRC.Data :=
                              dmGeral.BUS_CD_C_ITE_PRC.DataRequest(
                                           VarArrayOf([dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,'']));

                              cds_itens.cancel;
                              while not BUS_CD_C_PEC.eof do
                                begin
                                  //inc(i);
                                    cds_itens.Insert;
                                    cds_itens.FieldByName('descricao').AsString := dmGeral.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString;
                                    if dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI',dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger,[]) and
                                       (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsString <> '') then
                                      begin
                                        cds_itens.FieldByName('PRECO_AVISTA').AsCurrency := dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsCurrency;

                                      end
                                    ELSE
                                      begin
                                        cds_itens.FieldByName('PRECO_AVISTA').AsCurrency :=
                                             BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;
                                          fazCorrPerfilFamilia := true;
                                         if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                                          begin
                                            fazCorrPerfilFamilia := false;
                                            if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                                              begin
                                                dmGeral.BUS_CD_C_FAM.Close;
                                                dmGeral.BUS_CD_C_FAM.Data :=
                                                dmGeral.BUS_CD_C_FAM.DataRequest(
                                                           VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString]));
                                                 if (not dmgeral.BUS_CD_C_FAM.IsEmpty) and
                                                    (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                                                    begin
                                                      fazCorrPerfilFamilia :=
                                                                      dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;

                                                    end;
                                                dmGeral.BUS_CD_C_FAM.Close;
                                              end;
                                          end;


                                        if (fazCorrPerfilFamilia = true) and  (CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean=true) then
                                          begin
                                            if BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsFloat > 0 then
                                               begin
                                                 if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                                    begin
                                                      cds_itens.FieldByName('PRECO_AVISTA').AsCurrency :=
                                                           roundTo(
                                                               (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                                                                BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                                                    end;

                                                 if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                                    begin
                                                      cds_itens.FieldByName('PRECO_AVISTA').AsCurrency :=
                                                          roundTo(
                                                               (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                                                                BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                                                    end;
                                               end;
                                          end;
                                      end;

                                      for indexPrc := 1 to 4 do
                                        begin

                                          if dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI',dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger,[]) and
                                            (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO'+IntToStr(indexPrc)).AsString <> '') then
                                             begin
                                               cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                             dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency;
                                             end
                                          else
                                            begin
                                                cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency;

                                                if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                                                  begin
                                                    fazCorrPerfilFamilia := false;
                                                    if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                                                      begin
                                                        dmGeral.BUS_CD_C_FAM.Close;
                                                        dmGeral.BUS_CD_C_FAM.Data :=
                                                        dmGeral.BUS_CD_C_FAM.DataRequest(
                                                                   VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString]));
                                                        if (not dmgeral.BUS_CD_C_FAM.IsEmpty) and
                                                           (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                                                          begin
                                                            fazCorrPerfilFamilia :=
                                                                      dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;

                                                          end;
                                                        dmGeral.BUS_CD_C_FAM.Close;
                                                      end;
                                                  end;


                                               if ((CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = True) and
                                                  (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = False)) or

                                                    ((CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = True) and
                                                     (fazCorrPerfilFamilia = True) and
                                                    (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True))   then
                                                  begin
                                                    if BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsFloat > 0 then
                                                       begin
                                                         if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                                            begin
                                                              cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                                   roundTo(
                                                                       (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency/
                                                                        BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                                                            end;

                                                         if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                                            begin
                                                              cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                                  roundTo(
                                                                       (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency /
                                                                        BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                                                            end;
                                                       end;
                                                  end;

                                                 if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
                                                    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True)) then
                                                    begin
                                                     if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then
                                                        begin
                                                         cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                                   roundTo( cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency*
                                                             Power(1+(BUS_CD_C_PEC.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),indexPrc),-2);
                                                        end;
                                                     if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then
                                                        begin
                                                         cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                                   roundTo( cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency*
                                                             Power(1-(BUS_CD_C_PEC.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),indexPrc),-2);
                                                        end;
                                                    end;
                                             end;

                                        end;



                                  BUS_CD_C_PEC.Next;
                                end;
                            end;

                         // Por Maxsuel Victor, em 30/11/2015
                         // Esse método foi descontinuado devido a implatação da Teresina.

                        {if strtoint(id_perfil_cli) > 0 then
                           begin
                             if CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsCurrency > 0 then
                                begin
                                   cds_itens.FieldByName('prcAprazo').AsCurrency :=
                                           roundTo(   BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency +
                                                 (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                  CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsCurrency) / 100,-2);
                                end;
                           end;  }
                     end;

                  if CsuItem then
                     begin

                      if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) and
                          not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true)) and
                           (calculo_prc_prazo=0)  then
                          begin

                            BusPerfil(1,'%');

                            cds_itens.cancel;
                            while not BUS_CD_C_PEC.eof do
                               begin
                                 inc(i);

                                 cds_itens.Insert;
                                 cds_itens.FieldByName('ordem').AsInteger      := i;
                                 cds_itens.FieldByName('id_item').AsString     := IdItem;
                                 cds_itens.FieldByName('int_nomepec').AsString := BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString;

                                 cds_itens.FieldByName('prcAvista').AsCurrency :=
                                      BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;

                                 cds_itens.FieldByName('prcAprazo').AsCurrency :=
                                      BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency;

                                 if CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean then
                                    begin
                                      if BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsFloat > 0 then
                                         begin
                                           if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                              begin
                                                cds_itens.FieldByName('prcAvista').AsCurrency :=
                                                      roundTo(
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency/
                                                            BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency),-2);

                                                    { roundTo( BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency +
                                                         (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency *
                                                          BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) / 100,-2); }
                                              end;

                                           if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                              begin
                                                cds_itens.FieldByName('prcAvista').AsCurrency :=
                                                     roundTo(
                                                           (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency/
                                                            BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency),-2);

                                                   { roundTo(  BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency -
                                                         (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency *
                                                          BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) / 100,-2); }
                                              end;
                                         end;

                                      if BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsFloat > 0 then
                                         begin
                                           if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                              begin
                                                cds_itens.FieldByName('prcAprazo').AsCurrency :=
                                                     roundTo(
                                                         (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency /
                                                          BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency) ,-2);

                                                    { roundTo( BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency +
                                                         (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                          BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency) / 100,-2);}
                                              end;

                                           if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                              begin
                                                cds_itens.FieldByName('prcAprazo').AsCurrency :=
                                                    roundTo(
                                                         (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency /
                                                          BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency) ,-2);

                                                   { roundTo(  BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency -
                                                         (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                          BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency) / 100,-2); }
                                              end;
                                         end;
                                    end;

                                 // Por Maxsuel Victor, em 30/11/2015
                                 // Esse método foi descontinuado devido a implatação da Teresina.

                                 {if CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsCurrency > 0 then
                                    begin
                                       cds_itens.FieldByName('prcAprazo').AsCurrency :=
                                               roundTo(   BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency +
                                                     (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                      CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsCurrency) / 100,-2);
                                    end;}

                                  BUS_CD_C_PEC.Next;
                               end;

                         end;

                        if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean = true) or
                           (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean = true))
                           and (calculo_prc_prazo=1) then
                            begin

                              BusPerfil(1,'%');
                              dmGeral.BUS_CD_C_ITE_PRC.Close;
                              dmGeral.BUS_CD_C_ITE_PRC.Data :=
                              dmGeral.BUS_CD_C_ITE_PRC.DataRequest(
                                           VarArrayOf([dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,'']));

                              cds_itens.cancel;
                              while not BUS_CD_C_PEC.eof do
                                begin
                                  //inc(i);
                                    cds_itens.Insert;
                                    cds_itens.FieldByName('descricao').AsString := dmGeral.BUS_CD_C_PEC.FieldByName('DESCRICAO').AsString;
                                    if dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI',dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger,[]) and
                                       (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsString <> '') then
                                      begin
                                        cds_itens.FieldByName('PRECO_AVISTA').AsCurrency := dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsCurrency;

                                      end
                                    ELSE
                                      begin
                                        cds_itens.FieldByName('PRECO_AVISTA').AsCurrency :=
                                             BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;
                                          fazCorrPerfilFamilia := true;
                                         if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                                          begin
                                            fazCorrPerfilFamilia := false;
                                            if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                                              begin
                                                dmGeral.BUS_CD_C_FAM.Close;
                                                dmGeral.BUS_CD_C_FAM.Data :=
                                                dmGeral.BUS_CD_C_FAM.DataRequest(
                                                           VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString]));
                                                 if (not dmgeral.BUS_CD_C_FAM.IsEmpty) and
                                                    (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                                                    begin
                                                      fazCorrPerfilFamilia :=
                                                                      dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;

                                                    end;
                                                dmGeral.BUS_CD_C_FAM.Close;
                                              end;
                                          end;


                                        if (fazCorrPerfilFamilia = true) and  (CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean=true) then
                                          begin
                                            if BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsFloat > 0 then
                                               begin
                                                 if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                                    begin
                                                      cds_itens.FieldByName('PRECO_AVISTA').AsCurrency :=
                                                           roundTo(
                                                               (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                                                                BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                                                    end;

                                                 if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                                    begin
                                                      cds_itens.FieldByName('PRECO_AVISTA').AsCurrency :=
                                                          roundTo(
                                                               (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                                                                BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                                                    end;
                                               end;
                                          end;
                                      end;

                                      for indexPrc := 1 to 4 do
                                        begin

                                          if dmGeral.BUS_CD_C_ITE_PRC.Locate('ID_PERFIL_CLI',dmGeral.BUS_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsInteger,[]) and
                                            (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO'+IntToStr(indexPrc)).AsString <> '') then
                                             begin
                                               cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                             dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency;
                                             end
                                          else
                                            begin
                                                cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency;

                                                if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                                                  begin
                                                    fazCorrPerfilFamilia := false;
                                                    if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                                                      begin
                                                        dmGeral.BUS_CD_C_FAM.Close;
                                                        dmGeral.BUS_CD_C_FAM.Data :=
                                                        dmGeral.BUS_CD_C_FAM.DataRequest(
                                                                   VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString]));
                                                        if (not dmgeral.BUS_CD_C_FAM.IsEmpty) and
                                                           (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                                                          begin
                                                            fazCorrPerfilFamilia :=
                                                                      dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;

                                                          end;
                                                        dmGeral.BUS_CD_C_FAM.Close;
                                                      end;
                                                  end;


                                               if ((CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = True) and
                                                  (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = False)) or

                                                    ((CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = True) and
                                                     (fazCorrPerfilFamilia = True) and
                                                    (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True))   then
                                                  begin
                                                    if BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsFloat > 0 then
                                                       begin
                                                         if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                                            begin
                                                              cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                                   roundTo(
                                                                       (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency/
                                                                        BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                                                            end;

                                                         if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                                            begin
                                                              cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                                  roundTo(
                                                                       (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency /
                                                                        BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                                                            end;
                                                       end;
                                                  end;

                                                 if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
                                                    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True)) then
                                                    begin
                                                     if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then
                                                        begin
                                                         cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                                   roundTo( cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency*
                                                             Power(1+(BUS_CD_C_PEC.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),indexPrc),-2);
                                                        end;
                                                     if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then
                                                        begin
                                                         cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency :=
                                                                   roundTo( cds_itens.FieldByName('PRECO'+IntToStr(indexPrc)).AsCurrency*
                                                             Power(1-(BUS_CD_C_PEC.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),indexPrc),-2);
                                                        end;
                                                    end;
                                             end;

                                        end;



                                  BUS_CD_C_PEC.Next;
                                end;
                            end;

                     end;
                end
             else
                begin
                  if cds_itens.State in [dsInsert] then
                      begin
                        cds_itens.FieldByName('PER_DESCONTO').AsCurrency :=
                                  dmGeral.BusPercPromGru(dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString);
                      end;
                   if BUS_CD_C_CPG_EXP.FieldByName('tipo_pagamento').AsInteger = 0 then  // Condição à vista
                      begin
                        cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                  BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;

                        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                          begin
                            if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                              begin
                                dmGeral.BUS_CD_C_FAM.Close;
                                dmGeral.BUS_CD_C_FAM.Data :=
                                dmGeral.BUS_CD_C_FAM.DataRequest(
                                           VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString]));
                                if (not dmgeral.BUS_CD_C_FAM.IsEmpty) and
                                   (dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = False) then
                                  begin
                                    dmGeral.BUS_CD_C_FAM.Close;
                                    cds_itens.FieldByName('VLR_UNITARIO_ORIG').AsCurrency := cds_itens.FieldByName('VLR_UNITARIO').AsCurrency;
                                    exit;
                                  end;
                                dmGeral.BUS_CD_C_FAM.Close;
                              end;
                          end;

                        if strtoint(id_perfil_cli) > 0 then
                           begin
                             if CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean then
                                begin
                                  if BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsFloat > 0 then
                                     begin
                                       if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                          begin
//                                            cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
//                                                 roundTo( BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency +
//                                                     (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency *
//                                                      BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) / 100,-2);

                                            cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                                 roundTo( {BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency + }
                                                     (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                                                      BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                                          end;

                                       if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                          begin
//                                            cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
//                                                roundTo(  BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency -
//                                                     (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency *
//                                                      BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) / 100,-2);

                                            cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                                roundTo(  {BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency -}
                                                     (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency /
                                                      BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) ,-2);
                                          end;
                                     end;
                                end;



                             if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
                                (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = True)) then
                                 begin
                                   dmGeral.BUS_CD_C_ITE_PRC.Close;
                                   dmGeral.BUS_CD_C_ITE_PRC.Data :=
                                   dmGeral.BUS_CD_C_ITE_PRC.DataRequest(
                                           VarArrayOf([dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,id_perfil_cli]));

                                   if not dmGeral.BUS_CD_C_ITE_PRC.IsEmpty then
                                     begin
                                       if (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsString <> '') then
                                         begin
                                           cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                                             dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO_AVISTA').AsCurrency;
                                         end;
                                     end;
                                 end;





                           end;
                      end;

                   if BUS_CD_C_CPG_EXP.FieldByName('tipo_pagamento').AsInteger = 1 then // Condição a prazo
                      begin
                        cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                  BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency;

                        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True then
                          begin
                            fazCorrPerfilFamilia := false;
                            if (dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString <> '') then
                              begin
                                dmGeral.BUS_CD_C_FAM.Close;
                                dmGeral.BUS_CD_C_FAM.Data :=
                                dmGeral.BUS_CD_C_FAM.DataRequest(
                                           VarArrayOf([0, dmGeral.BUS_CD_C_ITE.FieldByName('ID_FAMILIA').AsString]));
                                if (not dmgeral.BUS_CD_C_FAM.IsEmpty) and
                                   (not dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').IsNull) then
                                  begin
                                    fazCorrPerfilFamilia :=
                                              dmGeral.BUS_CD_C_FAM.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean;

                                   // dmGeral.BUS_CD_C_FAM.Close;
                                    //cds_itens.FieldByName('VLR_UNITARIO_ORIG').AsCurrency := cds_itens.FieldByName('VLR_UNITARIO').AsCurrency;

                                    //exit;
                                  end;
                                dmGeral.BUS_CD_C_FAM.Close;
                              end;
                          end;

                        if strtoint(id_perfil_cli) > 0 then
                           begin
                             if ((CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = True) and
                                  (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = False)) or

                                  ((CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean = True) and
                                   (fazCorrPerfilFamilia = True) and
                                  (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True))   then
                                begin
                                  if BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsFloat > 0 then
                                     begin
                                       if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                          begin
                                            cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                                 roundTo( {BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency +}
                                                     (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency/
                                                      BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                                          end;

                                       if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                          begin
                                            cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                                roundTo(  {BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency -}
                                                     (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency /
                                                      BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency),-2);
                                          end;
                                     end;
                                end;

                             if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
                                (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True)) then
                                begin
                                 if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then
                                    begin
                                     cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                               roundTo( cds_itens.FieldByName('VLR_UNITARIO').AsCurrency*
                                         Power(1+(BUS_CD_C_PEC.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),1+Trunc((diasPrazo-1)/30)),-2);
                                    end;
                                 if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then
                                    begin
                                     cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                               roundTo( cds_itens.FieldByName('VLR_UNITARIO').AsCurrency*
                                         Power(1-(BUS_CD_C_PEC.FieldByName('PER_CORRECAO_FINANCEIRO').AsCurrency / 100),1+Trunc((diasPrazo-1)/30)),-2);
                                    end;
                                end;


                             if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
                                (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('prc_ite_manual').AsBoolean = True)) then
                                 begin
                                   dmGeral.BUS_CD_C_ITE_PRC.Close;
                                   dmGeral.BUS_CD_C_ITE_PRC.Data :=
                                   dmGeral.BUS_CD_C_ITE_PRC.DataRequest(
                                           VarArrayOf([dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,id_perfil_cli]));

                                   if not dmGeral.BUS_CD_C_ITE_PRC.IsEmpty then
                                     begin
                                       if (diasPrazo < 31) and  (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO1').AsString <> '') then
                                         begin
                                           cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                                             dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO1').AsCurrency;
                                         end;
                                       if (diasPrazo > 30) and (diasPrazo < 61) and (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO2').AsString <> '') then
                                         begin
                                           cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                                             dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO2').AsCurrency;
                                         end;
                                       if (diasPrazo > 60) and (diasPrazo < 91) and (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO3').AsString <> '') then
                                         begin
                                          cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                                             dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO3').AsCurrency;
                                         end;
                                       if (diasPrazo > 90) and (dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO4').AsString <> '') then
                                         begin
                                           cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                                             dmGeral.BUS_CD_C_ITE_PRC.FieldByName('PRECO4').AsCurrency;
                                         end;
                                     end;
                                  end;


                              // Por Maxsuel Victor, em 30/11/2015
                              // Esse método foi descontinuado devido a implatação da Teresina.
                             {if CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsCurrency > 0 then
                                begin
                                   cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                           roundTo(   BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency +
                                                 (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                  CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsCurrency) / 100,-2);
                                end;}
                           end;
                      end;
                end;
           end
        else
           begin
              PonteiroItens := cds_itens.GetBookmark;
              cds_itens.First;
              while not cds_itens.Eof do
                 begin
                   // Busca os dados dos itens
                   BusItens(0,cds_itens.FieldByName('ID_ITEM').Text);

                   if BUS_CD_C_CPG_EXP.FieldByName('tipo_pagamento').AsInteger = 0 then  // Condição à vista
                      begin
                        cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                  BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;

                        if strtoint(id_perfil_cli) > 0 then
                           begin
                             if CAD_CD_C_PAR_CTR.FieldByName('FAZ_CORR_PRECO_PERFIL').AsBoolean then
                                begin
                                  if BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsFloat > 0 then
                                     begin
                                       if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                          begin
                                            cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                               roundTo(   BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency +
                                                     (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency *
                                                      BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) / 100,-2);
                                          end;

                                       if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                          begin
                                            cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                               roundTo(   BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency -
                                                     (BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency *
                                                      BUS_CD_C_PEC.FieldByName('PER_CORRECAO').AsCurrency) / 100,-2);
                                          end;
                                     end;
                                end;
                           end;
                      end;

                   if BUS_CD_C_CPG_EXP.FieldByName('tipo_pagamento').AsInteger = 1 then // Condição a prazo
                      begin
                        cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                  BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency;

                        if strtoint(id_perfil_cli) > 0 then
                           begin
                              if BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsFloat > 0 then
                                 begin
                                   if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 0 then   // Operação de soma
                                      begin
                                        cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                           roundTo(   BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency +
                                                 (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                  BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency) / 100,-2);
                                      end;

                                   if BUS_CD_C_PEC.FieldByName('OPERACAO').AsInteger = 1 then  // Operação de subtração
                                      begin
                                        cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                           roundTo(   BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency -
                                                 (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                  BUS_CD_C_PEC.FieldByName('PER_CORRECAO_APRAZO').AsCurrency) / 100,-2);
                                      end;
                                 end;

                             // Por Maxsuel Victor, em 30/11/2015
                             // Esse método foi descontinuado devido a implatação da Teresina.

                             {if CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsCurrency > 0 then
                                begin
                                   cds_itens.FieldByName('VLR_UNITARIO').AsCurrency :=
                                          roundTo(    BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency +
                                                 (BUS_CD_C_ITE.FieldByName('PRECO_APRAZO').AsCurrency *
                                                  CAD_CD_C_PAR_CTR.FieldByName('PER_CORR_PRECO_PRAZO').AsCurrency) / 100,-2);
                                end;}
                           end;
                      end;
                   cds_itens.Next;
                 end;
              cds_itens.GotoBookmark(PonteiroItens);
           end;
     end;

 if (PsqItem = false) and (CsuItem = false) then // Se a chamada não for pela tela de pesquisa de itens.
    begin
     cds_itens.FieldByName('VLR_UNITARIO_ORIG').AsCurrency := cds_itens.FieldByName('VLR_UNITARIO').AsCurrency;
    end;
end;


function TdmGeral.VerifCliEmDeb(id_cliente: integer; id_condicao_pag: string): Boolean;
var
  DiasProtesto: integer;
begin
  inherited;
  result := false;

  BusCondPgto(0,id_condicao_pag);



  DiasProtesto := 0;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dia_protesto').AsInteger > 0 then
     DiasProtesto := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dia_protesto').AsInteger;

  if enExiDebCliente(DiasProtesto,id_cliente) then
     begin
      result := true;
     end;

end;

function TdmGeral.VerifCliSemLimite(id_cliente: String; valor_doc: currency): Boolean;
begin
  result := false;

  BusCliente(0,id_cliente);
  if valor_doc > BUS_CD_C_CLIlim_saldo.AsCurrency then
     begin
       result := true;
     end;
  BUS_CD_C_CLI.close;
end;

Function TdmGeral.enExiDebCliente(DiasProtesto,id_cliente:integer):boolean;
var
 xSql:string;
begin
  result := false;

   qryBusca.SQL.Clear;
   qryBusca.SQL.Add(
      ' select coalesce(SUM( RC.VLR_SALDO ),0) AS VLR_SALDO '+
    ' from FIN_TB_M_REC RC '+
    '   LEFT OUTER JOIN CAD_TB_C_FPG FPG ON FPG.ID_FORMA_PAG = RC.ID_FORMA_PAG '+
    ' WHERE RC.ID_CLIENTE = '''+IntToStr(id_Cliente)+''' and FPG.CRI_DEBI_CLIENTE='''+'TRUE'+''' ' +
    '  AND  (RC.DTA_VENCIMENTO + ' + inttostr(DiasProtesto) + ') <  CURRENT_DATE ');

   qryBusca.Open;




  {xSql:=
    ' select coalesce(SUM( RC.VLR_SALDO ),0) AS VLR_SALDO '+
    ' from FIN_TB_M_REC RC '+
    '   LEFT OUTER JOIN CAD_TB_C_FPG FPG ON FPG.ID_FORMA_PAG = RC.ID_FORMA_PAG '+
    ' WHERE RC.ID_CLIENTE = '''+IntToStr(id_Cliente)+''' and FPG.CRI_DEBI_CLIENTE='''+'TRUE'+''' ' +
    '  AND  (RC.DTA_VENCIMENTO + ' + inttostr(DiasProtesto) + ') <  CURRENT_DATE ';
  qryBusca.Close;
  qryBusca.SQL.Clear;
  qryBusca.SQL.Add(xsql);
  qryBusca.Open;      }

  if not qryBusca.IsEmpty then
     begin
       if qryBusca.FieldByName('VLR_SALDO').AsCurrency > 0 then
          begin
            result:=true;
          end;
     end;
   qryBusca.SQL.Clear;
   qryBusca.Close;

end;


function TdmGeral.BusSaldoItem(empresa, id_item, id_cor, id_tamanho,
  id_almoxarifado: String; var saldo_fisico: String): Boolean;
var
  index: integer;
  filtro: string;
begin
    { Filtros do EST_CD_M_FES:
      Index 0 - Empresa, Item
      Index 1 - Empresa, Item, Cor
      Index 2 - Empresa, Item, Tamanho
      Index 3 - Empresa, Item, Cor,Tamanho
      Index 4 - empresa, in(item),  in(cores)
      Index 5 - empresa, in(item),  in(tamanho)
      Index 6 - empresa, int(item), in(cor) in(tamanho)
      Index 7 - empresa, in(item)
      }

    { Filtros do EST_CD_M_FES_ALM:
      Index 0 - Empresa, Item, almoxarifado
      Index 1 - Empresa, Item, Cor, almoxarifado
      Index 2 - Empresa, Item, Tamanho, almoxarifado
      Index 3 - Empresa, Item, Cor,Tamanho, almoxarifado
      Index 4 - empresa, in(item),  in(cores), almoxarifado
      Index 5 - empresa, in(item),  in(tamanho), almoxarifado
      Index 6 - empresa, int(item), in(cor) in(tamanho), almoxarifado
      Index 7 - empresa, in(item), almoxarifado
      }

     result := true;

     saldo_fisico := '0';

     index  := 0;
     filtro := empresa + ',' + id_item;

     if (CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean = false) and (CAD_CD_C_PAR_CTRativa_cor.AsBoolean = true) then
        begin
          index := 1;
          filtro := filtro + ',' + id_cor;
        end;

     if (CAD_CD_C_PAR_CTRativa_cor.AsBoolean = false) and (CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean = true) then
        begin
          index := 2;
          filtro := filtro + ',' + id_tamanho;
        end;

     if (CAD_CD_C_PAR_CTRativa_cor.AsBoolean = true) and (CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean = true) then
        begin
          index := 3;
          filtro := filtro + ',' + id_cor + ',' + id_tamanho;
        end;


     if CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = true then
        begin
          EST_CD_M_FES_ALM.Close;

          if index = 0 then
              EST_CD_M_FES_ALM.Data :=
                   EST_CD_M_FES_ALM.DataRequest(VarArrayOf([index, empresa, id_item, id_almoxarifado]));

          if index = 1 then
              EST_CD_M_FES_ALM.Data :=
                   EST_CD_M_FES_ALM.DataRequest(VarArrayOf([index, empresa, id_item, id_cor, id_almoxarifado]));
          if index = 2 then
              EST_CD_M_FES_ALM.Data :=
                   EST_CD_M_FES_ALM.DataRequest(VarArrayOf([index, empresa, id_item, id_tamanho, id_almoxarifado]));

          if index = 3 then
              EST_CD_M_FES_ALM.Data :=
                   EST_CD_M_FES_ALM.DataRequest(VarArrayOf([index, empresa, id_item, id_cor, id_tamanho, id_almoxarifado]));

          if not EST_CD_M_FES_ALM.IsEmpty then
             begin
               saldo_fisico := EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').Text;
             end
          else
             begin
               result := false;
             end;
        end
     else
        begin
           EST_CD_M_FES.Close;

           if index = 0 then
               EST_CD_M_FES.Data :=
                   EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item]));

           if index = 1 then
               EST_CD_M_FES.Data :=
                   EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item, id_cor]));
           if index = 2 then
               EST_CD_M_FES.Data :=
                    EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item, id_tamanho]));

           if index = 3 then
               EST_CD_M_FES.Data :=
                    EST_CD_M_FES.DataRequest(VarArrayOf([index, empresa, id_item, id_cor, id_tamanho]));

           if not EST_CD_M_FES.IsEmpty then
              begin
                saldo_fisico := EST_CD_M_FES.FieldByName('SALDO_FISICO').Text;
              end
          else
             begin
               result := false;
             end;
        end;
end;


procedure TdmGeral.GerarFPG_Entrada(origem: integer; id_forma_fpg,id_plano: string; valor: Currency;
  cds: TClientDataSet);
begin

  { origem
        1 - Pedido de venda
        2 - Nota fiscal
        3 - Ordem de saída
        4 - Orde de Saída (Oficina)
        5 - Fechamento de Ordem de Serviço
  }

  cds.Cancel;
  if not cds.IsEmpty then
     begin
       ShowMessage('Não é possível gerar a "entrada" pois já existe vencimento lançado.');
       cds.edit;
       abort;
     end;

  cds.Insert;

  // O id_titulo está no OnNewRecord do cds.

  cds.FieldByName('ID_FORMA_PAG').AsInteger    := strtoint(id_forma_fpg);
  dmGeral.BusFormaPgtos(0,cds.FieldByName('ID_FORMA_PAG').text);
  cds.FieldByName('int_nomefpg').AsString      := BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
  cds.FieldByName('DIAS').AsInteger            := 0;
  cds.FieldByName('DTA_VENCIMENTO').AsDateTime := now;
  cds.FieldByName('VLR_TITULO').AsCurrency     := valor;
  cds.FieldByName('CHE_BANCO').text            := '';
  cds.FieldByName('CHE_AGENCIA').text          := '';
  cds.FieldByName('CHE_CONTA').AsString        := '';
  cds.FieldByName('CHE_NUMERO').AsInteger      := 0;
  cds.FieldByName('CHE_EMITENTE').text         := '';

    { origem
        1 - Pedido de venda
        2 - Nota fiscal
        3 - Ordem de saída
        4 - Orde de Saída (Oficina)
        5 - Fechamento de Ordem de Serviço
  }

  if origem = 1 then
      cds.FieldByName('BOL_NOSSO_NUMERO').text := ''
  else
    if origem in [2,3,4] then
      cds.FieldByName('num_parcela').AsString    := '';

  {if origem = 2 then
     begin

          cds.FieldByName('id_nfe_tit').AsInteger :=
               enValorChave('FAT_TB_M_NFE_TIT');

       cds.FieldByName('ID_PLANO').text := id_plano;
       if trim(id_plano) <> '' then
          begin
            dmGeral.BusPlanoCta(0,id_plano);
            cds.FieldByName('INT_NOMEPCT').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
            dmGeral.BUS_CD_C_PCT.close;
          end;
     end;  }

  cds.Post;
  cds.Edit;
end;


function TdmGeral.TesValVlr(const valor: Currency): Boolean;
begin
  result := true;

  if valor = 0 then
     begin
       ShowMessage('O campo "Valor" deve ser prenchido.');
       result := false;
     end;

  if valor < 0 then
     begin
       ShowMessage('O campo "Valor" não pode ser menor que 0.');
       result := false;
     end;
end;



function TdmGeral.TesValDias(const valor: integer): Boolean;
begin
  result := true;

  if valor < 0 then
     begin
       ShowMessage('O campo "Dias" não pode ser menor que 0.');
       result := false;
     end;
end;



procedure  TdmGeral.AcessarBancoLocal;
var
  Rede:TInifile;
  MySession: TDSSession;
  Id: String;
  z: integer;
  msg: String;
begin
  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCli.Ini');
  Conexao.Connected := false;
  Conexao.Close;
  Conexao.Params.Clear;

   for z := 0 to ComponentCount-1 do
      begin
        if (components[z] is TClientDataSet) and
           ((components[z] as TClientDataSet).Active) then
           begin
              msg := msg + 'CDS: ' + (components[z] as TClientDataSet).name + ' está ativo.' + #13;
             (components[z] as TClientDataSet).active := false;
              msg := msg + 'CDS: ' + (components[z] as TClientDataSet).name + ' fechado.';
           end;
      end;
  {if trim(msg) <> '' then
     begin
       ShowMessage(msg);
     end; }


  Conexao.Params.Add('Database='+Rede.ReadString('DEFINICAO_DE_DATABASE','DIR_BANCO_LOCAL',''));
  Conexao.Params.Add('DriverID=SQlite');

  try
    begin
      //MySession := TDSSessionManager.GetThreadSession();
      Conexao.Open;
      //id := VarToStr(MySession.Id);
      //Connections := TDictionary<NativeInt,TSQLConnection>.Create;
      //Connections.Add(TDSSessionManager.GetThreadSession.Id, Conexao);

      //MySession.PutObject('Conn',Conexao);
    end;
  except on E:Exception do
    begin
      Application.MessageBox(Pchar('Não Foi possível conectar-se com banco de dados local!'+#13+#13+#13+
       'Descrição do erro: '+
        #13+#13+E.Message),'Atenção', MB_ICONERROR or MB_OK);
       // SC.DSServer1.Stop();
        Application.Terminate;
    end;
  end;
end;


procedure TdmGeral.BusTamanho(index: integer; filtro: string);
begin
  BUS_CD_C_TAM.Close;
  BUS_CD_C_TAM.Data :=
  BUS_CD_C_TAM.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusCor(index: integer; filtro: string);
begin
  BUS_CD_C_COR.Close;
  BUS_CD_C_COR.Data :=
  BUS_CD_C_COR.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusCondPgto(index: integer; filtro: string);
begin
  BUS_CD_C_CPG.Close;
  BUS_CD_C_CPG.Data :=
  BUS_CD_C_CPG.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusFormaPgtos(index: integer; filtro: string);
begin
  BUS_CD_C_FPG.Close;
  BUS_CD_C_FPG.Data :=
  BUS_CD_C_FPG.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusFuncionario(index: integer; filtro: string);
begin
  BUS_CD_C_FUN.Close;
  BUS_CD_C_FUN.Data :=
  BUS_CD_C_FUN.DataRequest(VarArrayOf([index, filtro]));
end;



procedure TdmGeral.BusFuncionario2(index: integer; filtro: string);
begin
  BUS_CD_C_FU2.Close;
  BUS_CD_C_FU2.Data :=
  BUS_CD_C_FU2.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusTipoEstoque(index: integer; filtro: string);
begin
  BUS_CD_C_TME.Close;
  BUS_CD_C_TME.Data :=
  BUS_CD_C_TME.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmGeral.BusCliente(index: integer; filtro: string);
begin
  BUS_CD_C_CLI.Close;
  BUS_CD_C_CLI.Data :=
  BUS_CD_C_CLI.DataRequest(VarArrayOf([index, filtro]));
end;

{procedure TdmGeral.BusPlanoCta(index: integer; filtro: string);
begin
  BUS_CD_C_PCT.Close;
  BUS_CD_C_PCT.Data :=
  BUS_CD_C_PCT.DataRequest(VarArrayOf([index, filtro]));
end; }


procedure TdmGeral.Grava(Tabela: TClientDataSet);
var
  retorno: integer;
begin
   try
     Tabela.Post;
     try
        retorno := Tabela.ApplyUpdates(0);
     if retorno = 0 then
        begin
          Tabela.Close;
          Tabela.Open;
          Showmessage('Gravação realizada com sucesso.');
        end
     finally
       if retorno <> 0 then
          Tabela.edit;
     end;
   except
     on e:EReconcileError do
       begin
         showmessage(e.Message);
       end;
   end;
end;


function TdmGeral.CAD_DP_C_ALMDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlPcpAlm: String;
  begin
    Result := ' SELECT * FROM CAD_TB_C_ALM  ';
  end;
begin
   CAD_FD_C_ALM.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_ALM.SQL.Add(enSqlPcpAlm + ' WHERE 1=2 ')
        else
           CAD_FD_C_ALM.SQL.Add(enSqlPcpAlm +
             ' WHERE ID_ALMOXARIFADO = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_ALM.SQL.Add(enSqlPcpAlm +
          Format('WHERE upper(DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end;


   if Input[0] = 100 then
      begin
        CAD_FD_C_ALM.SQL.Add(enSqlPcpAlm +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_ALM.Data;
   CAD_FD_C_ALM.Close;
end;

function TdmGeral.CAD_DP_C_CIDDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlCid: String;
  begin
    Result :=
       ' SELECT CID.* '+
       '   FROM CAD_TB_C_CID CID ';
  end;
begin
   CAD_FD_C_CID.SQL.Clear;

   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
            CAD_FD_C_CID.SQL.Add(enSqlCid + ' WHERE 1=2 ')
        else
            CAD_FD_C_CID.SQL.Add(enSqlCid +
             ' WHERE ID_CIDADE = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        // CAD_FD_C_CID.SQL.Add(enSqlCid +
         // ' WHERE upper(nome) LIKE '''+ uppercase(VarToStr(Input[1]))+'%'+''' ');
          CAD_FD_C_CID.SQL.Add(enSqlCid +
          Format('WHERE upper(CID.NOME) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));

//          Format('WHERE upper(NOME) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]);
      end
   else if Input[0] = 2 then
      begin
         CAD_FD_C_CID.SQL.Add(enSqlCid +
          'WHERE upper(UF) = upper(''' + VarToStr(Input[1]) +''') ');
      end
   else if Input[0] = 3 then
      begin
         CAD_FD_C_CID.SQL.Add(enSqlCid +
          'WHERE CEP = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 4 then
      begin
         CAD_FD_C_CID.SQL.Add(enSqlCid +
          'WHERE upper(UF) in (' + VarToStr(Input[1]) +') ');
      end;

   if Input[0] = 100 then
      begin
        CAD_FD_C_CID.SQL.Add(enSqlCid +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_CID.Data;
   CAD_FD_C_CID.Close;
end;

function TdmGeral.CAD_DP_C_CLIDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlCli: String;
  begin
    Result :=
       ' SELECT CLI.*, CID.UF AS int_uf,  CID.NOME AS int_nomecid, '+
       ' REG.DESC_PERC AS INT_REG_DESC_PERC  '+
       ' FROM CAD_TB_C_CLI CLI  '+
       ' LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=CLI.ID_CIDADE '+
       ' LEFT OUTER JOIN PCP_TB_C_REG REG ON REG.ID_REGIAO = CLI.ID_REGIAO ';
  end;
begin
    CAD_FD_C_CLI.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_CLI.SQL.Add(enSqlCli + ' WHERE 1=2 ')
        else
           CAD_FD_C_CLI.SQL.Add(enSqlCli +
             ' WHERE CLI.ID_CLIENTE = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_CLI.SQL.Add(enSqlCli +
          Format('WHERE upper(CLI.NOME) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 2 then
      begin
        CAD_FD_C_CLI.SQL.Add(enSqlCli +
          'WHERE CLI.doc_cnpj_cpf = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 3 then
      begin
        CAD_FD_C_CLI.SQL.Add(enSqlCli +
          'WHERE CLI.DOC_IE_IDENTIDADE = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 4 then
      begin
        CAD_FD_C_CLI.SQL.Add(enSqlCli +
          Format('WHERE upper(CID.NOME) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 5 then
      begin
        CAD_FD_C_CLI.SQL.Add(enSqlCli +
          Format('WHERE upper(cli.apelido) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 80 then
      begin
        CAD_FD_C_CLI.SQL.Add(enSqlCli +
          ' WHERE CLI.ID_CLIENTE <> ''' + VarToStr(Input[1]) +''' ' +
          '   AND CLI.doc_cnpj_cpf = ''' + VarToStr(Input[2]) +''' ');
      end;

   if Input[0] = 100 then
      begin
        CAD_FD_C_CLI.SQL.Add(enSqlCli +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_CLI.Data;
   CAD_FD_C_CLI.Close;
end;

function TdmGeral.CAD_DP_C_CORDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlCor: String;
  begin
    Result := ' SELECT * FROM CAD_TB_C_COR  ';
  end;
begin
   CAD_FD_C_COR.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_COR.SQL.Add(enSqlCor + ' WHERE 1=2 ')
        else
           CAD_FD_C_COR.SQL.Add(enSqlCor +
             ' WHERE ID_COR= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_COR.SQL.Add(enSqlCor +
          Format('WHERE upper(DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end;

   if Input[0] = 100 then
      begin
        CAD_FD_C_COR.SQL.Add(enSqlCor +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_COR.Data;
   CAD_FD_C_COR.Close;
end;

function TdmGeral.CAD_DP_C_CPGDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlCpg: String;
  begin
    Result := ' SELECT * FROM CAD_TB_C_CPG CPG  ';
  end;

begin

   CAD_FD_C_CPG.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_CPG.SQL.Add(enSqlCpg + ' WHERE 1=1 ')
        else
           CAD_FD_C_CPG.SQL.Add(enSqlCpg +
             ' WHERE CPG.ID_CONDICAO_PAG= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_CPG.SQL.Add(enSqlCpg +
          Format('WHERE upper(CPG.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 2 then
      begin
        CAD_FD_C_CPG.SQL.Add(enSqlCpg +
             ' WHERE CPG.ATIVO = 1 AND CPG.TIPO_PAGAMENTO IN (1,2) AND ' +
             Format(' upper(CPG.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 3 then
      begin

        if CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
           begin
              CAD_FD_C_CPG.SQL.Add(enSqlCpg +
                   ' WHERE CPG.ATIVO = 1 AND CPG.TIPO_PAGAMENTO IN (0,1)  ' +
                   ' AND EXISTS (SELECT * FROM CAD_TB_C_PAR_CPG PPG          ' +
                   '             WHERE PPG.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' ' +
                   '               AND PPG.ID_CONDICAO_PAG = CPG.ID_CONDICAO_PAG) ');
           end
        else
           begin
              CAD_FD_C_CPG.SQL.Add(enSqlCpg +
                   ' WHERE CPG.ATIVO = 1 AND CPG.TIPO_PAGAMENTO IN (0,1)  ');
           end;
      end
   else if Input[0] = 4 then
      begin
        CAD_FD_C_CPG.SQL.Add(enSqlCpg +
             ' WHERE CPG.ATIVO = 1 AND CPG.TIPO_PAGAMENTO in (' + VarToStr(Input[1]) +') ');
      end;

   if Input[0] = 100 then
      begin
        CAD_FD_C_CPG.SQL.Add(enSqlCpg +
          ' WHERE 1=1 ');
      end;


   CAD_FD_C_CPG.SQL.Add(' ORDER BY CPG.DESCRICAO ');


   Result := CAD_DP_C_CPG.Data;
   CAD_FD_C_CPG.Close;
end;

function TdmGeral.CAD_DP_C_FAMDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
  function enSqlFam: String;
  begin
    Result := ' SELECT * FROM CAD_TB_C_FAM ';
  end;
begin
   CAD_FD_C_FAM.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_FAM.SQL.Add(enSqlFam + ' WHERE 1=2 ')
        else
           CAD_FD_C_FAM.SQL.Add(enSqlFam +
             ' WHERE ID_FAMILIA= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_FAM.SQL.Add(enSqlFam +
          Format('WHERE upper(DESCRICAO) LIKE ''%s%%'' ', [Uppercase(VarToStr(Input[1]))]));
      end;

    if Input[0] = 100 then
      begin
        CAD_FD_C_FAM.SQL.Add(enSqlFam +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_FAM.Data;
   CAD_FD_C_FAM.Close;
end;

function TdmGeral.CAD_DP_C_FORDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlFor: String;
  begin
    Result :=
        'SELECT FN.* '+
        'FROM CAD_TB_C_FOR FN ';
  end;
begin
    CAD_FD_C_FOR.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
            CAD_FD_C_FOR.SQL.Add(enSqlFor + ' WHERE 1=2 ')
        else
            CAD_FD_C_FOR.SQL.Add(enSqlFor +
             ' WHERE FN.ID_FORNECEDOR= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
         CAD_FD_C_FOR.SQL.Add(enSqlFor +
          Format('WHERE upper(FN.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end;

   if Input[0] = 100 then
      begin
        CAD_FD_C_FOR.SQL.Add(enSqlFor+
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_FOR.Data;
   CAD_FD_C_FOR.Close;
end;

function TdmGeral.CAD_DP_C_FPGDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlFpg: String;
  begin
    Result := ' SELECT FPG.*' +
              ' FROM CAD_TB_C_FPG FPG ';
  end;

begin
   CAD_FD_C_FPG.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_FPG.SQL.Add(enSqlFpg + ' WHERE 1=1 ')
        else
            CAD_FD_C_FPG.SQL.Add(enSqlFpg +
             ' WHERE FPG.ID_FORMA_PAG= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
         CAD_FD_C_FPG.SQL.Add(enSqlFpg +
          Format('WHERE upper(FPG.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 2 then
      begin
            CAD_FD_C_FPG.SQL.Add(enSqlFpg +
             ' WHERE FPG.TIPO_PAGAMENTO = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 3 then // Filtro utilizado pela tela de NFe de entrada
      begin
            CAD_FD_C_FPG.SQL.Add(enSqlFpg +
             ' WHERE FPG.DOC_IMPRESSO in (1,2,4) ');
      end
   else if Input[0] = 4 then //
      begin
            CAD_FD_C_FPG.SQL.Add(enSqlFpg +
             ' WHERE FPG.DOC_IMPRESSO in ('+ VarToStr(Input[1]) + ') ');
      end;

    if Input[0] = 100 then
      begin
        CAD_FD_C_FPG.SQL.Add(enSqlFpg +
          ' WHERE 1=1 ');
      end;


   CAD_FD_C_FPG.SQL.Add(' ORDER BY FPG.DESCRICAO ');
   Result := CAD_DP_C_FPG.Data;
   CAD_FD_C_FPG.Close;
end;

function TdmGeral.CAD_DP_C_FUNDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
function enSqlFun: String;
  begin
    Result :=
      'SELECT FUC.* '+
      'FROM CAD_TB_C_FUN FUC ';
  end;
begin
    CAD_FD_C_FUN.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_FUN.SQL.Add(enSqlFun + ' WHERE 1=2 ')
        else
           CAD_FD_C_FUN.SQL.Add(enSqlFun +
             ' WHERE FUC.ID_FUNCIONARIO= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_FUN.SQL.Add(enSqlFun +
          Format('WHERE upper(FUC.NOME) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
    else if Input[0] = 2 then
      begin
        CAD_FD_C_FUN.SQL.Add(enSqlFun +
          'WHERE FUC.DOC_CPF = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 3 then
      begin
        CAD_FD_C_FUN.SQL.Add(enSqlFun +
          'WHERE FUC.LOGIN = ''' + VarToStr(Input[1]) +''' And SENHA=''' + VarToStr(Input[2]) +''' ');
      end;



  { else if Input[0] = 2 then
      begin
        CAD_FD_C_FUN.SQL.Add(enSqlFun +
          'WHERE FUC.DOC_CPF = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 3 then
      begin
        CAD_FD_C_FUN.SQL.Add(enSqlFun +
          'WHERE FUC.DOC_IDENTIDADE = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 4 then
      begin
        CAD_FD_C_FUN.SQL.Add(enSqlFun +
          'WHERE FUC.LOGIN = ''' + VarToStr(Input[1]) +''' And SENHA=''' + VarToStr(Input[2]) +''' ');
      end
   else if Input[0] = 5 then
      begin
        CAD_FD_C_FUN.SQL.Add(enSqlFun +
          'WHERE upper(FUC.LOGIN) = ''' + uppercase(VarToStr(Input[1])) +''' AND FUC.ID_FUNCIONARIO <> ''' + VarToStr(Input[2]) +''' ');
      end
   else if Input[0] = 6 then
      begin
        CAD_FD_C_FUN.SQL.Add(enSqlFun +
          Format('WHERE upper(FUC.NOME) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end;    }

   Result := CAD_DP_C_FUN.Data;
    CAD_FD_C_FUN.Close;
end;



function TdmGeral.CAD_DP_C_GRUDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
  function enSqlGru: String;
  begin
    Result :=
      'SELECT GRU.* '+
      'FROM CAD_TB_C_GRU GRU ';
  end;
begin
   CAD_FD_C_GRU.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_GRU.SQL.Add(enSqlGru + ' WHERE 1=1 ')
        else
           CAD_FD_C_GRU.SQL.Add(enSqlGru +
             ' WHERE GRU.ID_GRUPO= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_GRU.SQL.Add(enSqlGru +
          Format('WHERE upper(GRU.DESCRICAO) LIKE ''%s%%'' ', [uppercase(Input[1])]));
      end
   else if Input[0] = 2 then
      begin
        CAD_FD_C_GRU.SQL.Add(enSqlGru +
             ' WHERE GRU.TIPO= '''+VarToStr(Input[1])+''' ');
      end;

    if Input[0] = 100 then
      begin
        CAD_FD_C_GRU.SQL.Add(enSqlGru +
          ' WHERE 1=1 ');
      end;



   CAD_FD_C_GRU.SQL.Add('Order By ID_GRUPO');

   Result := CAD_DP_C_GRU.Data;
   CAD_FD_C_GRU.Close;
end;

function TdmGeral.CAD_DP_C_ITEDataRequest(Sender: TObject;
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
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_ITE.SQL.Add(enSqlIte +
          Format('WHERE upper(ITE.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 2 then
      begin
        CAD_FD_C_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.COD_BARRA= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 3 then
      begin
        CAD_FD_C_ITE.SQL.Add(enSqlIte +
             ' WHERE ITE.COD_FABRICA= ''' + VarToStr(Input[1]) +''' ');
      end;

    if Input[0] = 100 then
      begin
        CAD_FD_C_ITE.SQL.Add(enSqlIte +
             ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_ITE.Data;
   CAD_FD_C_ITE.Close;

end;

function TdmGeral.CAD_DP_C_ITE_PRC_INTDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlIte: String;
  begin
    Result :=
       ' select prc.* '+
       ' from cad_tb_c_ite_prc prc ';
  end;
begin
   CAD_FD_C_ITE_PRC_INT.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_ITE_PRC_INT.SQL.Add(enSqlIte + ' WHERE 1=2 ')
        else
           CAD_FD_C_ITE_PRC_INT.SQL.Add(enSqlIte +
             ' WHERE prc.ID_ITEM= ''' + VarToStr(Input[1]) +''' ');
      end;


    if Input[0] = 100 then
      begin
        CAD_FD_C_ITE_PRC_INT.SQL.Add(enSqlIte +
             ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_ITE_PRC_INT.Data;
   CAD_FD_C_ITE_PRC_INT.Close;
end;

function TdmGeral.CAD_DP_C_PARDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
function enSqlPar: String;
  begin
    Result :=
        ' select PAR.*, CID.UF AS int_uf, CID.NOME AS int_nomecid from cad_tb_c_par par '+
        ' LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=PAR.ID_CIDADE ';
  end;
begin
    CAD_FD_C_PAR.SQL.Clear;
   if Input[0] = 0 then
      begin
           CAD_FD_C_PAR.SQL.Add(enSqlPar +
             ' WHERE PAR.ID_EMPRESA= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_PAR.SQL.Add(enSqlPar +
          Format('WHERE upper(PAR.EMP_RAZAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 2 then
      begin
        CAD_FD_C_PAR.SQL.Add(enSqlPar +
          Format('WHERE upper(PAR.EMP_FANTASIA) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end;

   Result := CAD_DP_C_PAR.Data;
    CAD_FD_C_PAR.Close;
end;

function TdmGeral.CAD_DP_C_PECDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlPec: String;
  begin
    Result := ' SELECT * FROM CAD_TB_C_PEC  ';
  end;
begin
   CAD_FD_C_PEC.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_PEC.SQL.Add(enSqlPec + ' WHERE 1=2 ')
        else
           CAD_FD_C_PEC.SQL.Add(enSqlPec +
             ' WHERE ID_PERFIL_CLI= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_PEC.SQL.Add(enSqlPec +
          Format('WHERE upper(DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end;

   if Input[0] = 100 then
      begin
        CAD_FD_C_PEC.SQL.Add(enSqlPec +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_PEC.Data;
   CAD_FD_C_PEC.Close;
end;

function TdmGeral.CAD_DP_C_SEQDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlSeq: String;
  begin
    Result := ' SELECT * FROM CAD_TB_C_SEQ  ';
  end;
begin
    CAD_FD_C_SEQ.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_SEQ.SQL.Add(enSqlSeq + ' WHERE 1=2 ')
        else
            CAD_FD_C_SEQ.SQL.Add(enSqlSeq +
             ' WHERE ID_TABELA = ''' + VarToStr(Input[1]) +''' ');
      end;
   if Input[0] = 100 then
      begin
        CAD_FD_C_SEQ.SQL.Add(enSqlSeq + ' WHERE 1=1 ')
      end;

   Result := CAD_DP_C_SEQ.Data;
   CAD_FD_C_SEQ.Close;
end;

function TdmGeral.CAD_DP_C_TAMDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlTam: String;
  begin
    Result := ' SELECT * FROM CAD_TB_C_TAM  ';
  end;
begin
   CAD_FD_C_TAM.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_TAM.SQL.Add(enSqlTam + ' WHERE 1=2 ')
        else
           CAD_FD_C_TAM.SQL.Add(enSqlTam +
             ' WHERE ID_TAMANHO= ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_TAM.SQL.Add(enSqlTam +
          Format('WHERE upper(DESCRICAO) LIKE ''%s%%'' ', [Uppercase(VarToStr(Input[1]))]));
      end;

   if Input[0] = 100 then
      begin
        CAD_FD_C_TAM.SQL.Add(enSqlTam +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_TAM.Data;
   CAD_FD_C_TAM.Close;
end;

function TdmGeral.CAD_DP_C_TMEDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlTme: String;
  begin
    Result :=
        'SELECT TME.* '+
        'FROM CAD_TB_C_TME TME ';
  end;
begin
   CAD_FD_C_TME.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_TME.SQL.Add(enSqlTme + ' WHERE 1=1 ')
        else
           CAD_FD_C_TME.SQL.Add(enSqlTme +
             ' WHERE TME.ATIVO=1 AND TME.ID_TIPO_MOV_ESTOQUE = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_TME.SQL.Add(enSqlTme +
          Format('WHERE TME.ATIVO=1 AND upper(TME.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end
   else if Input[0] = 2 then
      begin
           CAD_FD_C_TME.SQL.Add(enSqlTme +
             ' WHERE TME.ATIVO=1 AND TME.TIPO_MOVIMENTO = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 3 then
      begin
           CAD_FD_C_TME.SQL.Add(enSqlTme +
             ' WHERE TME.ATIVO=1 AND TME.TIPO_MOVIMENTO = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 4 then
      begin
           CAD_FD_C_TME.SQL.Add(enSqlTme +
             ' WHERE TME.ATIVO=1 AND TME.INDICADOR = 0 AND ' +
             '       TME.TIPO_MOVIMENTO = ''' + VarToStr(Input[1]) +''' ');
      end;

   if Input[0] = 100 then
      begin
        CAD_FD_C_TME.SQL.Add(enSqlTme +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_TME.Data;
   CAD_FD_C_TME.Close;
end;

function TdmGeral.CAD_DP_C_TRIDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
  function enSqlTri: String;
  begin
    Result := ' SELECT * FROM CAD_TB_C_TRI  ';
  end;
begin
    CAD_FD_C_TRI.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_TRI.SQL.Add(enSqlTri + ' WHERE 1=2 ')
        else
            CAD_FD_C_TRI.SQL.Add(enSqlTri +
             ' WHERE ID_TRIBUTO = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
         CAD_FD_C_TRI.SQL.Add(enSqlTri +
          Format('WHERE upper(DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end;

   if Input[0] = 100 then
      begin
        CAD_FD_C_TRI.SQL.Add(enSqlTri +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_TRI.Data;
   CAD_FD_C_TRI.Close;
end;

function TdmGeral.CAD_DP_C_UNDDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlUnd: String;
  begin
    Result := ' SELECT * FROM CAD_TB_C_UND  ';
  end;
begin
    CAD_FD_C_UND.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           CAD_FD_C_UND.SQL.Add(enSqlUnd + ' WHERE 1=2 ')
        else
           CAD_FD_C_UND.SQL.Add(enSqlUnd +
             ' WHERE ID_UNIDADE = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        CAD_FD_C_UND.SQL.Add(enSqlUnd +
          Format('WHERE upper(DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]));
      end;

    if Input[0] = 100 then
      begin
        CAD_FD_C_UND.SQL.Add(enSqlUnd +
          ' WHERE 1=1 ');
      end;

   Result := CAD_DP_C_UND.Data;
   CAD_FD_C_UND.Close;
end;

procedure TdmGeral.DataModuleCreate(Sender: TObject);
begin
   AcessarBancoLocal;
end;

function TdmGeral.enValorChave(NomeSeq: String): Integer;
var
  xSeq:Integer;
begin
     Result :=0;

     dmGeral.CAD_CD_C_SEQ.Close;
     dmGeral.CAD_CD_C_SEQ.Data :=
     dmGeral.CAD_CD_C_SEQ.DataRequest(
            VarArrayOf([0, NomeSeq]));

     if not dmGeral.CAD_CD_C_SEQ.IsEmpty then
        begin
          dmGeral.CAD_CD_C_SEQ.Edit;
           dmGeral.CAD_CD_C_SEQ.FieldByName('sequencia').AsInteger :=
              dmGeral.CAD_CD_C_SEQ.FieldByName('sequencia').AsInteger + 1;
        end
     else
        begin
          dmGeral.CAD_CD_C_SEQ.Insert;
          dmGeral.CAD_CD_C_SEQ.FieldByName('id_tabela').AsString := NomeSeq;
          dmGeral.CAD_CD_C_SEQ.FieldByName('sequencia').AsInteger := 1;
        end;

      if dmGeral.CAD_CD_C_SEQ.ApplyUpdates(0) <> 0 then
        begin
            ABORT;
        end;


  xSeq := dmGeral.CAD_CD_C_SEQ.FieldByName('sequencia').AsInteger;
  Result := xSeq;
end;

function TdmGeral.EST_DP_M_FESDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlFes: String;
  begin
    Result :=
      'SELECT FES.* , '+
      ' PAR.EMP_RAZAO AS INT_NOMEEMP, '+
      ' PAR.EMP_FANTASIA AS INT_NOMEFAN, '+
      ' COR.DESCRICAO AS INT_NOMECOR, '+
      ' TAM.DESCRICAO AS INT_NOMETAM '+
      'FROM EST_TB_M_FES FES '+
      'LEFT OUTER JOIN CAD_TB_C_PAR PAR ON PAR.ID_EMPRESA=FES.ID_EMPRESA '+
      'LEFT OUTER JOIN CAD_TB_C_COR COR ON COR.ID_COR=FES.ID_COR '+
      'LEFT OUTER JOIN CAD_TB_C_TAM TAM ON TAM.ID_TAMANHO=FES.ID_TAMANHO ';
  end;
begin
   EST_FD_M_FES.SQL.Clear;

   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           EST_FD_M_FES.SQL.Add(enSqlFes + ' WHERE 1=2 ')
        else
            EST_FD_M_FES.SQL.Add(enSqlFes +
             ' WHERE FES.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' AND '+
             '       FES.ID_ITEM = ''' + VarToStr(Input[2]) +''' ');
      end
   else if Input[0] = 1 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           EST_FD_M_FES.SQL.Add(enSqlFes + ' WHERE 1=2 ')
        else
           EST_FD_M_FES.SQL.Add(enSqlFes +
             ' WHERE FES.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' AND '+
             '       FES.ID_ITEM = ''' + VarToStr(Input[2]) +''' AND '+
             '       FES.ID_COR = ''' + VarToStr(Input[3]) +''' ');
      end
   else if Input[0] = 2 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           EST_FD_M_FES.SQL.Add(enSqlFes + ' WHERE 1=2 ')
        else
           EST_FD_M_FES.SQL.Add(enSqlFes +
             ' WHERE FES.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' AND '+
             '       FES.ID_ITEM    = ''' + VarToStr(Input[2]) +''' AND '+
             '       FES.ID_TAMANHO = ''' + VarToStr(Input[3]) +''' ');
      end
   else if Input[0] = 3 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           EST_FD_M_FES.SQL.Add(enSqlFes + ' WHERE 1=2 ')
        else
           EST_FD_M_FES.SQL.Add(enSqlFes +
             ' WHERE FES.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' AND '+
             '       FES.ID_ITEM    = ''' + VarToStr(Input[2]) +''' AND '+
             '       FES.ID_COR     = ''' + VarToStr(Input[3]) +''' AND '+
             '       FES.ID_TAMANHO = ''' + VarToStr(Input[4]) +''' ');
      end
   else if Input[0] = 90 then
      begin
           EST_FD_M_FES.SQL.Add(enSqlFes +
             ' WHERE FES.ID_ITEM = ''' + VarToStr(Input[1]) +''' ');
      end
    else if Input[0] = 91 then
      begin
          EST_FD_M_FES.SQL.Add(enSqlFes +
             ' WHERE FES.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' ');
      end
   else if Input[0] = 100 then
      begin
          EST_FD_M_FES.SQL.Add(enSqlFes +
             ' WHERE 1=1 ');
      end;

   if Input[0] = 90 then
      begin
           EST_FD_M_FES.SQL.Add(' ORDER BY FES.ID_EMPRESA ');
      end;




   Result := EST_DP_M_FES.Data;
   EST_FD_M_FES.Close;
end;

function TdmGeral.EST_DP_M_FES_ALMDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlFesAlm: String;
  begin
    Result :=
      'select FAL.*, alm.descricao as int_nomealm, '+
      '  PAR.EMP_RAZAO AS INT_NOMEEMP, '+
      '  PAR.EMP_FANTASIA AS INT_NOMEFAN, '+
      '  COR.DESCRICAO AS INT_NOMECOR, '+
      '  TAM.DESCRICAO AS INT_NOMETAM '+
      'from EST_TB_M_FES_ALM FAL '+
      'left outer join cad_tb_c_alm alm on alm.id_almoxarifado=fal.id_almoxarifado '+
      'LEFT OUTER JOIN CAD_TB_C_PAR PAR ON PAR.ID_EMPRESA=fal.ID_EMPRESA '+
      'LEFT OUTER JOIN CAD_TB_C_COR COR ON COR.ID_COR=FAL.ID_COR '+
      'LEFT OUTER JOIN CAD_TB_C_TAM TAM ON TAM.ID_TAMANHO=FAL.ID_TAMANHO ';
  end;
begin

   EST_FD_M_FES_ALM.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm + ' WHERE 1=2 ')
        else
           EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm +
             ' WHERE FAL.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' AND '+
             '       FAL.ID_ITEM = ''' + VarToStr(Input[2]) +''' AND '+
             '       FAL.ID_ALMOXARIFADO = ''' + VarToStr(Input[3]) +''' ');

      end
   else if Input[0] = 1 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm + ' WHERE 1=2 ')
        else
           EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm +
             ' WHERE FAL.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' AND '+
             '       FAL.ID_ITEM = ''' + VarToStr(Input[2]) +''' AND '+
             '       FAL.ID_COR = ''' + VarToStr(Input[3]) +''' AND '+
             '       FAL.ID_ALMOXARIFADO = ''' + VarToStr(Input[4]) +''' ');
      end
   else if Input[0] = 2 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm + ' WHERE 1=2 ')
        else
           EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm +
             ' WHERE FAL.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' AND '+
             '       FAL.ID_ITEM    = ''' + VarToStr(Input[2]) +''' AND '+
             '       FAL.ID_TAMANHO = ''' + VarToStr(Input[3]) +''' AND '+
             '       FAL.ID_ALMOXARIFADO = ''' + VarToStr(Input[4]) +''' ');

      end
   else if Input[0] = 3 then
      begin
           EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm +
             ' WHERE FAL.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' AND '+
             '       FAL.ID_ITEM    = ''' + VarToStr(Input[2]) +''' AND '+
             '       FAL.ID_COR     = ''' + VarToStr(Input[3]) +''' AND '+
             '       FAL.ID_TAMANHO = ''' + VarToStr(Input[4]) +''' AND '+
             '       FAL.ID_ALMOXARIFADO = ''' + VarToStr(Input[5]) +''' ');
      end
  else if Input[0] = 90 then
      begin
            EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm +
             ' WHERE FAL.ID_ITEM = ''' + VarToStr(Input[1]) +''' ');
      end
  else if Input[0] = 91 then
      begin
          EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm +
             ' WHERE FAL.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' ');
      end
  else if Input[0] = 100 then
      begin
          EST_FD_M_FES_ALM.SQL.Add(enSqlFesAlm +
             ' WHERE 1=1');
      end;


   Result := EST_DP_M_FES_ALM.Data;
   EST_FD_M_FES_ALM.Close;
end;

procedure TdmGeral.FAT_CD_M_PEDBeforeEdit(DataSet: TDataSet);
begin
   FAT_RN_M_PED.FatValidaStatusPedido(DataSet);

end;

procedure TdmGeral.FAT_CD_M_PEDBeforeOpen(DataSet: TDataSet);
begin
   FAT_RN_M_PED.FatMascaraPedido(DataSet);
end;

procedure TdmGeral.FAT_CD_M_PEDNewRecord(DataSet: TDataSet);
begin
   FAT_RN_M_PED.FatNovoPedido(DataSet);
end;

procedure TdmGeral.FAT_CD_M_PED_ITEAfterDelete(DataSet: TDataSet);
begin
    FAT_RN_M_PED.fatPedCalcTotal;
    FAT_CD_M_PED_ITE.Edit;
end;

procedure TdmGeral.FAT_CD_M_PED_ITEAfterPost(DataSet: TDataSet);
begin
  FAT_RN_M_PED.fatPedCalcTotal;
end;

procedure TdmGeral.FAT_CD_M_PED_ITEBeforeOpen(DataSet: TDataSet);
begin
  FAT_RN_M_PED.FatMascaraPedidoIte(DataSet);
end;

procedure TdmGeral.FAT_CD_M_PED_ITEBeforePost(DataSet: TDataSet);
begin
    FAT_RN_M_PED.FatValidaPedidoIte(DataSet);
end;

procedure TdmGeral.FAT_CD_M_PED_ITEid_itemChange(Sender: TField);
begin
   FAT_RN_M_PED.FAT_CD_M_PED_ITEid_itemChange(Sender);
end;

procedure TdmGeral.FAT_CD_M_PED_ITENewRecord(DataSet: TDataSet);
begin
   FAT_RN_M_PED.FatNovoPedidoIte(DataSet);
end;

procedure TdmGeral.FAT_CD_M_PED_ITEper_descontoChange(Sender: TField);
begin
    FAT_RN_M_PED.FAT_CD_M_PED_ITEPER_DESCONTOChange(Sender);
end;

procedure TdmGeral.FAT_CD_M_PED_ITEqtdeChange(Sender: TField);
begin
    FAT_RN_M_PED.fatPedCalcTotalItem;
end;

procedure TdmGeral.FAT_CD_M_PED_ITEvlr_descontoChange(Sender: TField);
begin
  FAT_RN_M_PED.FAT_CD_M_PED_ITEVLR_DESCONTOChange(Sender);
end;

procedure TdmGeral.FAT_CD_M_PED_ITEvlr_unitarioChange(Sender: TField);
begin
   FAT_RN_M_PED.fatPedCalcTotalItem;
end;

procedure TdmGeral.FAT_CD_M_PED_TITBeforeOpen(DataSet: TDataSet);
begin
   FAT_RN_M_PED.FatMascaraPedidoTit(DataSet);
end;

procedure TdmGeral.FAT_CD_M_PED_TITNewRecord(DataSet: TDataSet);
begin
    FAT_RN_M_PED.FatNovoPedidoTit(DataSet);
end;

function TdmGeral.FAT_DP_M_PEDDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
  function enSqlFatPed: String;
  begin
    Result :=
        'SELECT PED.*, CLI.NOME AS INT_NOMECLI, TME.DESCRICAO AS INT_NOMETME, '+
        '       FUN.NOME AS INT_NOMEFUN, CPG.DESCRICAO AS INT_NOMECPG, '+
        '       ATE.NOME AS INT_NOMEATE, RES.NOME AS INT_NOMERES, '+
        '       CID.NOME AS INT_NOMECID, '+
        '       CID.UF AS INT_NOMEEST, CLI.doc_cnpj_cpf AS INT_CPFCNPJ, CLI.pessoa as int_pessoacli, '+
        '       CLI.ID_PERFIL_CLI AS INT_ID_PERFIL, '+
        '       cli.doc_ie_identidade as int_ie_rg_cli ' +

        'FROM FAT_TB_M_PED PED '+
        'LEFT OUTER JOIN CAD_TB_C_CLI CLI ON CLI.ID_CLIENTE = PED.ID_CLIENTE '+
        'LEFT OUTER JOIN CAD_TB_C_TME TME ON TME.ID_TIPO_MOV_ESTOQUE = PED.ID_TIPO_MOV_ESTOQUE '+
        'LEFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN.ID_FUNCIONARIO=PED.ID_VENDEDOR '+
        'LEFT OUTER JOIN CAD_TB_C_CPG CPG ON CPG.ID_CONDICAO_PAG=PED.ID_CONDICAO_PAG '+
        'LEFT OUTER JOIN CAD_TB_C_FUN ATE ON ATE.ID_FUNCIONARIO=PED.ID_ATENDENTE '+
        'LEFT OUTER JOIN CAD_TB_C_FUN RES ON RES.ID_FUNCIONARIO=PED.ID_RESPONSAVEL '+
        'LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=CLI.ID_CIDADE ';

  end;
 var
   CondicaoOrder:string;
begin
   CondicaoOrder := '';
   FAT_FD_M_PED.SQL.Clear;

    case Input[0] of
       0: CondicaoOrder := ' ORDER BY PED.ID_PEDIDO ';
       1: CondicaoOrder := ' ORDER BY PED.ID_PEDIDO ';
       2: CondicaoOrder := ' ORDER BY PED.SITUACAO_APROVACAO ';
       3: CondicaoOrder := ' ORDER BY PED.ID_PEDIDO ';
       4: CondicaoOrder := ' ORDER BY PED.ID_PEDIDO ';
       5: CondicaoOrder := ' ORDER BY PED.ID_PEDIDO ';
       6: CondicaoOrder := ' ORDER BY PED.ID_PEDIDO ';
       7: CondicaoOrder := ' ORDER BY PED.ID_PEDIDO ';
    end;

   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           FAT_FD_M_PED.SQL.Add(enSqlFatPed + ' WHERE 1 = 2 ')
        else
           FAT_FD_M_PED.SQL.Add(enSqlFatPed +
             ' WHERE PED.PED_EXCLUIDO=0 AND PED.ID_EMPRESA =   ''' + VarToStr(Input[1]) + ''' AND PED.ID_PEDIDO = ''' + VarToStr(Input[2]) +''' ' +
              CondicaoOrder);
      end;
   if Input[0] = 1 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed +
                 ' WHERE PED.PED_EXCLUIDO=0 AND PED.ID_EMPRESA = ''' + VarToStr(Input[1]) + ''' AND ' +
                 Format('upper(CLI.NOME) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[2]))]) +
                         CondicaoOrder);
      end;
   if Input[0] = 2 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed +
         ' WHERE PED.PED_EXCLUIDO=0 AND PED.ID_EMPRESA = ''' + VarToStr(Input[1]) + ''' AND ' +
          Format(' upper(FUN.NOME) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[2]))])+
                  CondicaoOrder);
      end;
   if Input[0] = 3 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed +
          ' WHERE PED.PED_EXCLUIDO=0 AND PED.ID_EMPRESA = ''' + VarToStr(Input[1]) + ''' AND ' +
          Format(' upper(CPG.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[2]))]) +
                  CondicaoOrder);
      end;
   if Input[0] = 4 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed +
          ' WHERE PED.PED_EXCLUIDO=0 AND PED.ID_EMPRESA = ''' + VarToStr(Input[1]) + ''' AND ' +
          Format(' upper(TME.DESCRICAO) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[2]))]) +
                  CondicaoOrder);
      end;
   if Input[0] = 5 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed +
             ' WHERE PED.PED_EXCLUIDO=0 AND PED.ID_EMPRESA = ''' + VarToStr(Input[1]) + ''' AND  PED.DTA_PEDIDO = ''' + FormatDateTime(CFormatoData_v2, StrToDate(VarToStr(Input[2])) ) +''' ' +
                  CondicaoOrder);
      end;
   if Input[0] = 6 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed +
             ' WHERE PED.PED_EXCLUIDO=0 AND PED.ID_EMPRESA = ''' + VarToStr(Input[1]) + ''' AND  CLI.DOC_CNPJ_CPF = ' + QuotedStr(VarToStr(Input[2]))  +
                  CondicaoOrder);
      end;
   if Input[0] = 7 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed +
             ' WHERE PED.PED_EXCLUIDO=0 AND PED.ID_EMPRESA = ''' + VarToStr(Input[1]) + ''' AND  PED.DTA_PEDIDO >= ''' + FormatDateTime(CFormatoData_v2, StrToDate(VarToStr(Input[2]))) +''' AND ' +
             ' PED.DTA_PEDIDO <= '''+FormatDateTime(CFormatoData_v2, StrToDate(VarToStr(Input[3])))+''' '+
                  CondicaoOrder);
      end;

   if Input[0] = 100 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed + ' WHERE 1 = 1 ');
      end;

   if Input[0] = 101 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed + ' WHERE PED.PED_EXCLUIDO=0 ');
      end;

   if Input[0] = 102 then
      begin
        FAT_FD_M_PED.SQL.Add(enSqlFatPed + ' WHERE PED.PED_EXCLUIDO=1 ');
      end;


   Result := FAT_DP_M_PED.Data;
   FAT_FD_M_PED.Close;
end;

function TdmGeral.FIN_DP_M_RECDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
 function enSqlRec: String;
  begin
    Result :=
      'SELECT REC.* '+
      'FROM FIN_TB_M_REC REC ';
  end;
begin
   FIN_FD_M_REC.SQL.Clear;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           FIN_FD_M_REC.SQL.Add(enSqlRec + ' WHERE 1=2 ')
        else
           FIN_FD_M_REC.SQL.Add(enSqlRec +
              ' WHERE REC.ID_EMPRESA = ''' + VarToStr(Input[1]) +''' AND REC.ID_TITULO = ''' + VarToStr(Input[2]) +''' ');
      end;

    if Input[0] = 100 then
      begin
        FIN_FD_M_REC.SQL.Add(enSqlRec + ' WHERE 1=1 ');
      end;

   Result := FIN_DP_M_REC.Data;
   FIN_FD_M_REC.Close;
end;

end.
