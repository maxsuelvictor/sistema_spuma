unit uDmSgq;

interface

uses
  System.SysUtils, vcl.StdCtrls, System.Classes, Data.DBXDataSnap, IPPeerClient,Vcl.Dialogs,System.Variants,
  Data.DBXCommon, Data.DB, Data.SqlExpr, Datasnap.DBClient, Datasnap.DSConnect,System.Math,
  vcl.Forms, Vcl.Controls,Winapi.Windows, dxBar, cxBarEditItem,
  vcl.wwdbigrd,  vcl.wwdbgrid,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS,System.IniFiles,
  Data.DbxHTTPLayer,uProxy, ACBrBoleto, ACBrBoletoFCFR, ACBrBase;

type
  TdmSgq = class(TDataModule)
    PCP_CD_C_CDR: TClientDataSet;
    PCP_CD_C_CDRid_cdr: TIntegerField;
    PCP_CD_C_CDRid_grupo: TWideStringField;
    PCP_CD_C_CDRid_cor_grupo: TIntegerField;
    PCP_CD_C_CDRtipo_cadarco: TIntegerField;
    PCP_CD_C_CDRid_cor_cadarco: TIntegerField;
    PCP_CD_C_CDRint_nomegru: TWideStringField;
    PCP_CD_C_CDRint_nomecoc: TWideStringField;
    PCP_CD_C_CDRint_nomecog: TWideStringField;
    PCP_CD_C_CDRcod_lme: TWideStringField;
    PCP_CD_C_CDRrev_lme: TWideStringField;
    PCP_CD_C_CNF: TClientDataSet;
    PCP_CD_C_CNFid_conformidade: TIntegerField;
    PCP_CD_C_CNFdescricao: TWideStringField;
    PCP_CD_C_CNFcod_lme: TWideStringField;
    PCP_CD_C_CNFrev_lme: TWideStringField;
    PCP_CD_C_DIS: TClientDataSet;
    PCP_CD_C_DISid_dis: TIntegerField;
    PCP_CD_C_DISdescricao: TWideStringField;
    PCP_CD_C_DIScod_lme: TWideStringField;
    PCP_CD_C_DISrev_lme: TWideStringField;
    PCP_CD_C_ESP: TClientDataSet;
    PCP_CD_C_ESPid_especificacao: TIntegerField;
    PCP_CD_C_ESPdescricao: TWideStringField;
    PCP_CD_C_ESPcod_lme: TWideStringField;
    PCP_CD_C_ESPrev_lme: TWideStringField;
    PCP_CD_C_LME: TClientDataSet;
    PCP_CD_C_LMEid_lme: TIntegerField;
    PCP_CD_C_LMEdata: TDateField;
    PCP_CD_C_LMEid_responsavel: TIntegerField;
    PCP_CD_C_LMEobservacao: TWideStringField;
    PCP_CD_C_LMEPCP_SQ_C_LME_DOC: TDataSetField;
    PCP_CD_C_LMEcod_lme: TWideStringField;
    PCP_CD_C_LMErev_lme: TWideStringField;
    PCP_CD_C_LMEint_nomeres: TWideStringField;
    PCP_CD_C_LME_DOC: TClientDataSet;
    PCP_CD_C_LME_DOCid_lme: TIntegerField;
    PCP_CD_C_LME_DOCid_lme_d: TIntegerField;
    PCP_CD_C_LME_DOCid_tlm: TIntegerField;
    PCP_CD_C_LME_DOCorigem: TIntegerField;
    PCP_CD_C_LME_DOCdescricao: TWideStringField;
    PCP_CD_C_LME_DOCcodigo: TWideStringField;
    PCP_CD_C_LME_DOCrevisao: TWideStringField;
    PCP_CD_C_LME_DOCdata_aprovacao: TDateField;
    PCP_CD_C_LME_DOCdistribuicao_tipo: TIntegerField;
    PCP_CD_C_LME_DOCobservacao: TWideStringField;
    PCP_CD_C_LME_DOCPCP_SQ_C_LME_DPG: TDataSetField;
    PCP_CD_C_LME_DOCPCP_SQ_C_LME_DRV: TDataSetField;
    PCP_CD_C_LME_DOCPCP_SQ_C_LME_DRP: TDataSetField;
    PCP_CD_C_LME_DOCid_setor: TIntegerField;
    PCP_CD_C_LME_DRV: TClientDataSet;
    PCP_CD_C_LME_DRVid_lme: TIntegerField;
    PCP_CD_C_LME_DRVid_lme_d: TIntegerField;
    PCP_CD_C_LME_DRVid_lme_dv: TIntegerField;
    PCP_CD_C_LME_DRVdata_revisao: TDateField;
    PCP_CD_C_LME_DRVrevisao: TIntegerField;
    PCP_CD_C_LME_DRVhistorico_alteracao: TWideStringField;
    PCP_CD_C_LME_DRP: TClientDataSet;
    PCP_CD_C_LME_DRPid_lme: TIntegerField;
    PCP_CD_C_LME_DRPid_lme_d: TIntegerField;
    PCP_CD_C_LME_DRPid_lme_dr: TIntegerField;
    PCP_CD_C_LME_DRPdata: TDateField;
    PCP_CD_C_LME_DRPsituacao: TWideStringField;
    PCP_CD_C_LME_DPG: TClientDataSet;
    PCP_CD_C_LME_DPGid_lme: TIntegerField;
    PCP_CD_C_LME_DPGid_lme_d: TIntegerField;
    PCP_CD_C_LME_DPGid_lme_dp: TIntegerField;
    PCP_CD_C_LME_DPGdata_cadastro: TDateField;
    PCP_CD_C_LME_DPGnome_formulario: TWideStringField;
    PCP_CD_C_LME_DPGint_nomeprg: TWideStringField;
    BUS_DP_C_ESP: TClientDataSet;
    BUS_DP_C_ESPid_especificacao: TIntegerField;
    BUS_DP_C_ESPdescricao: TWideStringField;
    BUS_DP_C_ESPcod_lme: TWideStringField;
    BUS_DP_C_ESPrev_lme: TWideStringField;
    PCP_CD_C_PRQ: TClientDataSet;
    PCP_CD_C_PRQid_prq: TIntegerField;
    PCP_CD_C_PRQid_grupo: TWideStringField;
    PCP_CD_C_PRQid_item: TIntegerField;
    PCP_CD_C_PRQid_responsavel: TIntegerField;
    PCP_CD_C_PRQdta_cadastro: TDateField;
    PCP_CD_C_PRQPCP_SQ_C_PRQ_ESP: TDataSetField;
    PCP_CD_C_PRQint_nomeite: TWideStringField;
    PCP_CD_C_PRQint_nomegru: TWideStringField;
    PCP_CD_C_PRQint_nomefun: TWideStringField;
    PCP_CD_C_PRQcod_lme: TWideStringField;
    PCP_CD_C_PRQrev_lme: TWideStringField;
    BUS_CD_C_PRQ: TClientDataSet;
    BUS_CD_C_PRQid_prq: TIntegerField;
    BUS_CD_C_PRQid_grupo: TWideStringField;
    BUS_CD_C_PRQid_item: TIntegerField;
    BUS_CD_C_PRQid_responsavel: TIntegerField;
    BUS_CD_C_PRQdta_cadastro: TDateField;
    BUS_CD_C_PRQPCP_SQ_C_PRQ_ESP: TDataSetField;
    BUS_CD_C_PRQint_nomeite: TWideStringField;
    BUS_CD_C_PRQint_nomegru: TWideStringField;
    BUS_CD_C_PRQint_nomefun: TWideStringField;
    BUS_CD_C_PRQcod_lme: TWideStringField;
    BUS_CD_C_PRQrev_lme: TWideStringField;
    PCP_CD_C_PRQ_ESP: TClientDataSet;
    PCP_CD_C_PRQ_ESPid_prq: TIntegerField;
    PCP_CD_C_PRQ_ESPid_prq_esp: TIntegerField;
    PCP_CD_C_PRQ_ESPverif_texto: TWideStringField;
    PCP_CD_C_PRQ_ESPverif_minimo: TWideStringField;
    PCP_CD_C_PRQ_ESPvefif_maximo: TWideStringField;
    PCP_CD_C_PRQ_ESPverif_metodo: TWideStringField;
    PCP_CD_C_PRQ_ESPamostragem: TWideStringField;
    PCP_CD_C_PRQ_ESPmanuseio_transp: TWideStringField;
    PCP_CD_C_PRQ_ESParmazenamento: TWideStringField;
    PCP_CD_C_PRQ_ESPpreservacao: TWideStringField;
    PCP_CD_C_PRQ_ESPid_especificacao: TIntegerField;
    PCP_CD_C_PRQ_ESPint_nomeesp: TWideStringField;
    PCP_CD_C_CDP: TClientDataSet;
    PCP_CD_C_CDPid_item: TIntegerField;
    PCP_CD_C_CDPdta_lancamento: TDateField;
    PCP_CD_C_CDPmed_comp_01: TFloatField;
    PCP_CD_C_CDPmed_comp_02: TFloatField;
    PCP_CD_C_CDPmed_comp_03: TFloatField;
    PCP_CD_C_CDPmed_comp_media: TFloatField;
    PCP_CD_C_CDPmed_largura_01: TFloatField;
    PCP_CD_C_CDPmed_largura_02: TFloatField;
    PCP_CD_C_CDPmed_largura_03: TFloatField;
    PCP_CD_C_CDPmed_largura_media: TFloatField;
    PCP_CD_C_CDPmed_altura_01: TFloatField;
    PCP_CD_C_CDPmed_altura_02: TFloatField;
    PCP_CD_C_CDPmed_altura_03: TFloatField;
    PCP_CD_C_CDPmed_altura_media: TFloatField;
    PCP_CD_C_CDPsituacao: TBooleanField;
    PCP_CD_C_CDPint_nomeite: TWideStringField;
    PCP_CD_C_CDPcod_lme: TWideStringField;
    PCP_CD_C_CDPrev_lme: TWideStringField;
    BUS_CD_C_CDP: TClientDataSet;
    BUS_CD_C_CDPid_item: TIntegerField;
    BUS_CD_C_CDPdta_lancamento: TDateField;
    BUS_CD_C_CDPmed_comp_01: TFloatField;
    BUS_CD_C_CDPmed_comp_02: TFloatField;
    BUS_CD_C_CDPmed_comp_03: TFloatField;
    BUS_CD_C_CDPmed_comp_media: TFloatField;
    BUS_CD_C_CDPmed_largura_01: TFloatField;
    BUS_CD_C_CDPmed_largura_02: TFloatField;
    BUS_CD_C_CDPmed_largura_03: TFloatField;
    BUS_CD_C_CDPmed_largura_media: TFloatField;
    BUS_CD_C_CDPmed_altura_01: TFloatField;
    BUS_CD_C_CDPmed_altura_02: TFloatField;
    BUS_CD_C_CDPmed_altura_03: TFloatField;
    BUS_CD_C_CDPmed_altura_media: TFloatField;
    BUS_CD_C_CDPsituacao: TBooleanField;
    BUS_CD_C_CDPint_nomeite: TWideStringField;
    BUS_CD_C_CDPcod_lme: TWideStringField;
    BUS_CD_C_CDPrev_lme: TWideStringField;
    PCP_CD_C_MDE: TClientDataSet;
    PCP_CD_C_MDEid_mde: TIntegerField;
    PCP_CD_C_MDEdescricao: TWideStringField;
    PCP_CD_C_MDEcod_lme: TWideStringField;
    PCP_CD_C_MDErev_lme: TWideStringField;
    PCP_CD_C_MEQ: TClientDataSet;
    PCP_CD_C_MEQid_meq: TIntegerField;
    PCP_CD_C_MEQid_empresa: TIntegerField;
    PCP_CD_C_MEQcod_equipamento: TWideStringField;
    PCP_CD_C_MEQdescricao: TWideStringField;
    PCP_CD_C_MEQid_mde: TIntegerField;
    PCP_CD_C_MEQid_fabricante: TIntegerField;
    PCP_CD_C_MEQnro_serie: TWideStringField;
    PCP_CD_C_MEQdta_cadastro: TDateField;
    PCP_CD_C_MEQdta_compra: TDateField;
    PCP_CD_C_MEQnumero_nf: TIntegerField;
    PCP_CD_C_MEQgara_validade: TDateField;
    PCP_CD_C_MEQgara_existe: TBooleanField;
    PCP_CD_C_MEQid_resp_lancto: TIntegerField;
    PCP_CD_C_MEQtipo_mei: TIntegerField;
    PCP_CD_C_MEQcod_lme: TWideStringField;
    PCP_CD_C_MEQrev_lme: TWideStringField;
    PCP_CD_C_MEQid_setor: TIntegerField;
    PCP_CD_C_MEQint_nomemde: TWideStringField;
    PCP_CD_C_MEQint_nomefab: TWideStringField;
    PCP_CD_C_MEQint_nomefuc: TWideStringField;
    PCP_CD_C_MEQint_nomeset: TWideStringField;
    PCP_CD_C_MEQvlr_aquisicao: TFMTBCDField;
    PCP_CD_C_MEQnome_fabricante: TWideStringField;
    PCP_CD_C_PRP: TClientDataSet;
    PCP_CD_C_PRPid_prp: TIntegerField;
    PCP_CD_C_PRPid_grupo: TWideStringField;
    PCP_CD_C_PRPid_item: TIntegerField;
    PCP_CD_C_PRPcaract_inspecionada: TWideStringField;
    PCP_CD_C_PRPcriterio_aceitacao: TWideStringField;
    PCP_CD_C_PRPmetodo_verificacao: TWideStringField;
    PCP_CD_C_PRPamostragem: TWideStringField;
    PCP_CD_C_PRPmanuseio_transporte: TWideStringField;
    PCP_CD_C_PRParmazenamento: TWideStringField;
    PCP_CD_C_PRPpreservacao: TWideStringField;
    PCP_CD_C_PRPint_nomeite: TWideStringField;
    PCP_CD_C_PRPint_nomegru: TWideStringField;
    PCP_CD_C_PRPcod_lme: TWideStringField;
    PCP_CD_C_PRPrev_lme: TWideStringField;
    BUS_CD_C_PRP: TClientDataSet;
    BUS_CD_C_PRPid_grupo: TWideStringField;
    BUS_CD_C_PRPid_item: TIntegerField;
    BUS_CD_C_PRPcaract_inspecionada: TWideStringField;
    BUS_CD_C_PRPcriterio_aceitacao: TWideStringField;
    BUS_CD_C_PRPmetodo_verificacao: TWideStringField;
    BUS_CD_C_PRPamostragem: TWideStringField;
    BUS_CD_C_PRPmanuseio_transporte: TWideStringField;
    BUS_CD_C_PRParmazenamento: TWideStringField;
    BUS_CD_C_PRPpreservacao: TWideStringField;
    BUS_CD_C_PRPint_nomeite: TWideStringField;
    BUS_CD_C_PRPint_nomegru: TWideStringField;
    BUS_CD_C_PRPcod_lme: TWideStringField;
    BUS_CD_C_PRPrev_lme: TWideStringField;
    BUS_CD_C_PRPid_prp: TIntegerField;
    BUS_CD_C_ESP: TClientDataSet;
    BUS_CD_C_ESPid_especificacao: TIntegerField;
    BUS_CD_C_ESPdescricao: TWideStringField;
    BUS_CD_C_ESPcod_lme: TWideStringField;
    BUS_CD_C_ESPrev_lme: TWideStringField;
    BUS_CD_C_DIS: TClientDataSet;
    BUS_CD_C_DISid_dis: TIntegerField;
    BUS_CD_C_DISdescricao: TWideStringField;
    BUS_CD_C_DIScod_lme: TWideStringField;
    BUS_CD_C_DISrev_lme: TWideStringField;
    PCP_CD_C_ORI: TClientDataSet;
    PCP_CD_C_ORIid_ori: TIntegerField;
    PCP_CD_C_ORIdescricao: TWideStringField;
    PCP_CD_C_ORIcod_lme: TWideStringField;
    PCP_CD_C_ORIrev_lme: TWideStringField;
    BUS_CD_C_ORI: TClientDataSet;
    BUS_CD_C_ORIid_ori: TIntegerField;
    BUS_CD_C_ORIdescricao: TWideStringField;
    BUS_CD_C_ORIcod_lme: TWideStringField;
    BUS_CD_C_ORIrev_lme: TWideStringField;
    BUS_CD_C_CDR: TClientDataSet;
    BUS_CD_C_CDRid_cargo: TIntegerField;
    BUS_CD_C_CDRid_setor: TIntegerField;
    BUS_CD_C_CDRdescricao: TWideStringField;
    BUS_CD_C_CDRobjetivo_cargo: TWideStringField;
    BUS_CD_C_CDRatribuicoes: TWideStringField;
    BUS_CD_C_CDRrequisitos: TWideStringField;
    BUS_CD_C_CDRdata_aprovacao: TDateField;
    BUS_CD_C_CDRint_nomeset: TWideStringField;
    BUS_CD_C_CDRaprovador: TWideStringField;
    BUS_CD_C_CDRtipo: TIntegerField;
    BUS_CD_C_CDRcod_lme: TWideStringField;
    BUS_CD_C_CDRrev_lme: TWideStringField;
    BUS_CD_C_CNF: TClientDataSet;
    BUS_CD_C_CNFid_conformidade: TIntegerField;
    BUS_CD_C_CNFdescricao: TWideStringField;
    BUS_CD_C_CNFcod_lme: TWideStringField;
    BUS_CD_C_CNFrev_lme: TWideStringField;
    PCP_CD_C_CIN: TClientDataSet;
    PCP_CD_C_CINid_cin: TIntegerField;
    PCP_CD_C_CINid_ins: TIntegerField;
    PCP_CD_C_CINrequer_calibracao: TIntegerField;
    PCP_CD_C_CINsituacao_instrumento: TIntegerField;
    PCP_CD_C_CINcert_erro_admissivel: TWideStringField;
    PCP_CD_C_CINcert_num: TWideStringField;
    PCP_CD_C_CINcert_id_fornecedor: TIntegerField;
    PCP_CD_C_CINcert_id_resp_inspecao: TIntegerField;
    PCP_CD_C_CINcert_dta_verificacao: TDateField;
    PCP_CD_C_CINnum_seq: TIntegerField;
    PCP_CD_C_CINtr_sit_encosto: TIntegerField;
    PCP_CD_C_CINtr_sit_funcionamento: TIntegerField;
    PCP_CD_C_CINtr_sit_escala: TIntegerField;
    PCP_CD_C_CINtr_sit_aspecto_geral: TIntegerField;
    PCP_CD_C_CINtr_sit_escala_padrao: TIntegerField;
    PCP_CD_C_CINtr_resultado: TIntegerField;
    PCP_CD_C_CINtr_sit_inspecao: TIntegerField;
    PCP_CD_C_CINtr_id_resp_inspecao: TIntegerField;
    PCP_CD_C_CINtr_dta_verificacao: TDateField;
    PCP_CD_C_CINtr_reg_acao_tomada: TWideStringField;
    PCP_CD_C_CINcal_efet_frequencia: TWideStringField;
    PCP_CD_C_CINnumero_nfe: TIntegerField;
    PCP_CD_C_CINhistorico_instrumento: TWideStringField;
    PCP_CD_C_CINint_marca: TWideStringField;
    PCP_CD_C_CINint_serie: TWideStringField;
    PCP_CD_C_CINint_resolucao: TWideStringField;
    PCP_CD_C_CINint_scala: TWideStringField;
    PCP_CD_C_CINint_denominacao: TWideStringField;
    PCP_CD_C_CINint_sigla: TWideStringField;
    PCP_CD_C_CINint_modelo: TWideStringField;
    PCP_CD_C_CINcal_efet_proxima: TDateField;
    PCP_CD_C_CINPCP_SQ_C_CIN_LNS: TDataSetField;
    PCP_CD_C_CINcod_lme: TWideStringField;
    PCP_CD_C_CINrev_lme: TWideStringField;
    BUS_CD_C_CIN: TClientDataSet;
    BUS_CD_C_CINid_cin: TIntegerField;
    BUS_CD_C_CINid_ins: TIntegerField;
    BUS_CD_C_CINrequer_calibracao: TIntegerField;
    BUS_CD_C_CINsituacao_instrumento: TIntegerField;
    BUS_CD_C_CINcert_erro_admissivel: TWideStringField;
    BUS_CD_C_CINcert_num: TWideStringField;
    BUS_CD_C_CINcert_id_fornecedor: TIntegerField;
    BUS_CD_C_CINcert_id_resp_inspecao: TIntegerField;
    BUS_CD_C_CINcert_dta_verificacao: TDateField;
    BUS_CD_C_CINnum_seq: TIntegerField;
    BUS_CD_C_CINtr_sit_encosto: TIntegerField;
    BUS_CD_C_CINtr_sit_funcionamento: TIntegerField;
    BUS_CD_C_CINtr_sit_escala: TIntegerField;
    BUS_CD_C_CINtr_sit_aspecto_geral: TIntegerField;
    BUS_CD_C_CINtr_sit_escala_padrao: TIntegerField;
    BUS_CD_C_CINtr_resultado: TIntegerField;
    BUS_CD_C_CINtr_sit_inspecao: TIntegerField;
    BUS_CD_C_CINtr_id_resp_inspecao: TIntegerField;
    BUS_CD_C_CINtr_dta_verificacao: TDateField;
    BUS_CD_C_CINtr_reg_acao_tomada: TWideStringField;
    BUS_CD_C_CINcal_efet_frequencia: TWideStringField;
    BUS_CD_C_CINnumero_nfe: TIntegerField;
    BUS_CD_C_CINhistorico_instrumento: TWideStringField;
    BUS_CD_C_CINint_marca: TWideStringField;
    BUS_CD_C_CINint_serie: TWideStringField;
    BUS_CD_C_CINint_resolucao: TWideStringField;
    BUS_CD_C_CINint_scala: TWideStringField;
    BUS_CD_C_CINint_denominacao: TWideStringField;
    BUS_CD_C_CINint_sigla: TWideStringField;
    BUS_CD_C_CINint_modelo: TWideStringField;
    BUS_CD_C_CINcal_efet_proxima: TDateField;
    BUS_CD_C_CINcod_lme: TWideStringField;
    BUS_CD_C_CINrev_lme: TWideStringField;
    BUS_CD_C_CINPCP_SQ_C_CIN_LNS: TDataSetField;
    BUS_CD_C_CIN_LNS: TClientDataSet;
    PCP_CD_C_CIN_LNS: TClientDataSet;
    PCP_CD_C_CIN_LNSid_cin: TIntegerField;
    PCP_CD_C_CIN_LNSid_cin_lns: TIntegerField;
    PCP_CD_C_CIN_LNSdta_cadastro: TDateField;
    PCP_CD_C_CIN_LNSid_setor: TIntegerField;
    PCP_CD_C_CIN_LNStolerancia_processo: TWideStringField;
    PCP_CD_C_CIN_LNSfrequencia: TWideStringField;
    PCP_CD_C_CIN_LNSid_responsavel: TIntegerField;
    PCP_CD_C_CIN_LNSint_nomeset: TWideStringField;
    PCP_CD_C_CIN_LNSint_nomeres: TWideStringField;
    PCP_CD_C_INS: TClientDataSet;
    PCP_CD_C_INSid_ins: TIntegerField;
    PCP_CD_C_INSsigla: TWideStringField;
    PCP_CD_C_INSid_mde: TIntegerField;
    PCP_CD_C_INSid_fabricante: TIntegerField;
    PCP_CD_C_INSnro_serie: TWideStringField;
    PCP_CD_C_INSdta_cadastro: TDateField;
    PCP_CD_C_INSresolucao_menor_divisao: TWideStringField;
    PCP_CD_C_INSid_tin: TIntegerField;
    PCP_CD_C_INSscala: TWideStringField;
    PCP_CD_C_INSgarantia: TBooleanField;
    PCP_CD_C_INSint_nomefab: TWideStringField;
    PCP_CD_C_INSint_nomemde: TWideStringField;
    PCP_CD_C_INSint_nometin: TWideStringField;
    PCP_CD_C_INScod_lme: TWideStringField;
    PCP_CD_C_INSrev_lme: TWideStringField;
    PCP_CD_C_TIN: TClientDataSet;
    PCP_CD_C_TINid_tin: TIntegerField;
    PCP_CD_C_TINdescricao: TWideStringField;
    PCP_CD_C_TINcod_lme: TWideStringField;
    PCP_CD_C_TINrev_lme: TWideStringField;
    BUS_CD_C_TIN: TClientDataSet;
    BUS_CD_C_TINid_tin: TIntegerField;
    BUS_CD_C_TINdescricao: TWideStringField;
    BUS_CD_C_TINcod_lme: TWideStringField;
    BUS_CD_C_TINrev_lme: TWideStringField;
    PCP_CD_C_ROT: TClientDataSet;
    PCP_CD_C_ROTid_rota: TIntegerField;
    PCP_CD_C_ROTdescricao: TWideStringField;
    PCP_CD_C_ROTdis_inicial: TFloatField;
    PCP_CD_C_ROTdis_final: TFloatField;
    PCP_CD_C_ROTcod_lme: TWideStringField;
    PCP_CD_C_ROTrev_lme: TWideStringField;
    PCP_CD_C_TLM: TClientDataSet;
    PCP_CD_C_TLMid_tlm: TIntegerField;
    PCP_CD_C_TLMdescricao: TWideStringField;
    PCP_CD_C_TLMcod_lme: TWideStringField;
    PCP_CD_C_TLMrev_lme: TWideStringField;
    BUS_CD_C_TLM: TClientDataSet;
    BUS_CD_C_TLMid_tlm: TIntegerField;
    BUS_CD_C_TLMdescricao: TWideStringField;
    BUS_CD_C_TLMcod_lme: TWideStringField;
    BUS_CD_C_TLMrev_lme: TWideStringField;
    PCP_CD_C_MTA: TClientDataSet;
    PCP_CD_C_MTAid_motorista: TIntegerField;
    PCP_CD_C_MTAnome: TWideStringField;
    PCP_CD_C_MTAplaca: TWideStringField;
    PCP_CD_C_MTAend_endereco: TWideStringField;
    PCP_CD_C_MTAend_numero: TWideStringField;
    PCP_CD_C_MTAend_cidade: TWideStringField;
    PCP_CD_C_MTAend_bairro: TWideStringField;
    PCP_CD_C_MTAend_cep: TWideStringField;
    PCP_CD_C_MTAend_estado: TWideStringField;
    PCP_CD_C_MTAfone: TWideStringField;
    PCP_CD_C_MTAcelular: TWideStringField;
    PCP_CD_C_MTAemail: TWideStringField;
    PCP_CD_C_MTAobservacao: TWideStringField;
    PCP_CD_C_MTAcod_lme: TWideStringField;
    PCP_CD_C_MTArev_lme: TWideStringField;
    PCP_CD_C_MTAdoc_cpf: TWideStringField;
    BUS_CD_C_MTA: TClientDataSet;
    IntegerField22: TIntegerField;
    WideStringField80: TWideStringField;
    WideStringField81: TWideStringField;
    WideStringField82: TWideStringField;
    WideStringField83: TWideStringField;
    WideStringField84: TWideStringField;
    WideStringField85: TWideStringField;
    WideStringField86: TWideStringField;
    WideStringField87: TWideStringField;
    WideStringField88: TWideStringField;
    WideStringField89: TWideStringField;
    WideStringField90: TWideStringField;
    WideStringField91: TWideStringField;
    WideStringField92: TWideStringField;
    WideStringField93: TWideStringField;
    BUS_CD_C_MTAdoc_cpf: TWideStringField;
    BUS_CD_C_REG: TClientDataSet;
    BUS_CD_C_REGid_regiao: TIntegerField;
    BUS_CD_C_REGdescricao: TWideStringField;
    BUS_CD_C_REGid_rota: TIntegerField;
    BUS_CD_C_REGint_nomerot: TWideStringField;
    BUS_CD_C_REGcod_lme: TWideStringField;
    BUS_CD_C_REGrev_lme: TWideStringField;
    PCP_CD_C_REG: TClientDataSet;
    PCP_CD_C_REGid_regiao: TIntegerField;
    PCP_CD_C_REGdescricao: TWideStringField;
    PCP_CD_C_REGid_rota: TIntegerField;
    PCP_CD_C_REGint_nomerot: TWideStringField;
    PCP_CD_C_REGcod_lme: TWideStringField;
    PCP_CD_C_REGrev_lme: TWideStringField;
    PCP_CD_C_CUE: TClientDataSet;
    PCP_CD_C_CUEid_cue: TIntegerField;
    PCP_CD_C_CUEdescricao: TWideStringField;
    BUS_CD_C_CUE: TClientDataSet;
    BUS_CD_C_CUEid_cue: TIntegerField;
    BUS_CD_C_CUEdescricao: TWideStringField;
    PCP_CD_C_CLE: TClientDataSet;
    PCP_CD_C_CLEid_cle: TIntegerField;
    BUS_CD_C_CLE: TClientDataSet;
    BUS_CD_C_CLEid_cle: TIntegerField;
    PCP_CD_C_RPT: TClientDataSet;
    PCP_CD_C_RPTid_rpt: TIntegerField;
    PCP_CD_C_RPTdescricao: TWideStringField;
    PCP_CD_C_RPTcod_lme: TWideStringField;
    PCP_CD_C_RPTrev_lme: TWideStringField;
    BUS_CD_C_RPT: TClientDataSet;
    BUS_CD_C_RPTid_rpt: TIntegerField;
    BUS_CD_C_RPTdescricao: TWideStringField;
    BUS_CD_C_RPTcod_lme: TWideStringField;
    BUS_CD_C_RPTrev_lme: TWideStringField;
    PCP_CD_C_TPP: TClientDataSet;
    PCP_CD_C_TPPid_tpp: TIntegerField;
    PCP_CD_C_TPPdescricao: TWideStringField;
    PCP_CD_C_TPPPCP_SQ_C_TPP_SET: TDataSetField;
    PCP_CD_C_TPPcod_lme: TWideStringField;
    PCP_CD_C_TPPrev_lme: TWideStringField;
    BUS_CD_C_TPP: TClientDataSet;
    BUS_CD_C_TPPid_tpp: TIntegerField;
    BUS_CD_C_TPPdescricao: TWideStringField;
    BUS_CD_C_TPPPCP_SQ_C_TPP_SET: TDataSetField;
    BUS_CD_C_TPPcod_lme: TWideStringField;
    BUS_CD_C_TPPrev_lme: TWideStringField;
    PCP_CD_C_TPP_SET: TClientDataSet;
    PCP_CD_C_TPP_SETid_tpp: TIntegerField;
    PCP_CD_C_TPP_SETid_setor: TIntegerField;
    PCP_CD_C_TPP_SETgera_estoque: TBooleanField;
    PCP_CD_C_TPP_SETgrava_nro_lote: TBooleanField;
    PCP_CD_C_TPP_SETgera_nro_lote: TBooleanField;
    PCP_CD_C_TPP_SETexecuta_servico: TBooleanField;
    PCP_CD_C_TPP_SETint_nomeset: TWideStringField;
    PCP_CD_C_FTE: TClientDataSet;
    PCP_CD_C_FTEid_fte: TIntegerField;
    PCP_CD_C_FTEcod_lme: TWideStringField;
    PCP_CD_C_FTErev_lme: TWideStringField;
    PCP_CD_C_FTErequisitos: TWideStringField;
    PCP_CD_C_FTEinf_contato: TWideStringField;
    PCP_CD_C_FTEinf_remocao: TWideStringField;
    PCP_CD_C_FTEPCP_SQ_C_FTE_ETQ: TDataSetField;
    PCP_CD_C_FTEinf_sac: TWideStringField;
    PCP_CD_C_FTE_ETQ: TClientDataSet;
    PCP_CD_C_FTE_ETQid_fte: TIntegerField;
    PCP_CD_C_FTE_ETQid_fte_etq: TIntegerField;
    PCP_CD_C_FTE_ETQcod_int_etq: TWideStringField;
    PCP_CD_C_FTE_ETQcod_int_etq_rev: TWideStringField;
    PCP_CD_C_FTE_ETQdescricao: TWideStringField;
    PCP_CD_C_FTE_ETQespecificacoes: TWideStringField;
    PCP_CD_C_FTE_ETQimg_modelo: TBlobField;
    PCP_CD_C_FTE_ETQtexto_livre1: TWideStringField;
    PCP_CD_C_FTE_ETQtexto_livre2: TWideStringField;
    PCP_CD_C_FTE_ETQmodelo_etq: TIntegerField;
    PCP_CD_C_FTE_ETQetq_tecnica: TBooleanField;
    BUS_CD_M_FTE_ETQ: TClientDataSet;
    BUS_CD_M_FTE_ETQcod_int_etq: TWideStringField;
    BUS_CD_M_FTE_ETQcod_int_etq_rev: TWideStringField;
    BUS_CD_M_FTE_ETQdescricao: TWideStringField;
    BUS_CD_M_FTE_ETQespecificacoes: TWideStringField;
    BUS_CD_M_FTE_ETQtexto_livre1: TWideStringField;
    BUS_CD_M_FTE_ETQtexto_livre2: TWideStringField;
    BUS_CD_M_FTE_ETQid_fte_etq: TIntegerField;
    BUS_CD_M_FTE_ETQid_fte: TIntegerField;
    BUS_CD_M_FTE_ETQcod_lme: TWideStringField;
    BUS_CD_M_FTE_ETQrev_lme: TWideStringField;
    BUS_CD_M_FTE_ETQrequisitos: TWideStringField;
    BUS_CD_M_FTE_ETQinf_contato: TWideStringField;
    BUS_CD_M_FTE_ETQinf_remocao: TWideStringField;
    BUS_CD_M_FTE_ETQinf_sac: TWideStringField;
    BUS_CD_M_FTE_ETQetq_tecnica: TBooleanField;
    BUS_CD_M_FTE_ETQmodelo_etq: TIntegerField;
    PCP_CD_C_REGdesc_perc: TFloatField;
    BUS_CD_C_REGdesc_perc: TFloatField;
    BUS_DP_M_OPR_OPP_SOP: TClientDataSet;
    PCP_CD_M_OPR_REQ: TClientDataSet;
    PCP_CD_M_OPR_REQid_opr: TIntegerField;
    PCP_CD_M_OPR_REQid_opr_req: TIntegerField;
    PCP_CD_M_OPR_REQdta_emissao: TDateField;
    PCP_CD_M_OPR_REQid_funcionario_canc: TIntegerField;
    PCP_CD_M_OPR_REQdta_canc: TDateField;
    PCP_CD_M_OPR_REQhor_canc: TTimeField;
    PCP_CD_M_OPR_REQint_nomefuncanc: TWideStringField;
    PCP_CD_M_OPR_REQid_responsavel: TIntegerField;
    PCP_CD_M_OPR_REQPCP_SQ_M_OPR_REQ_ITE: TDataSetField;
    PCP_CD_M_OPR_REQcod_lme: TWideStringField;
    PCP_CD_M_OPR_REQrev_lme: TWideStringField;
    PCP_CD_M_OPR_REQ_ITE: TClientDataSet;
    PCP_CD_M_OPR_REQ_ITEid_opr: TIntegerField;
    PCP_CD_M_OPR_REQ_ITEid_opr_req: TIntegerField;
    PCP_CD_M_OPR_REQ_ITEid_opr_req_ite: TIntegerField;
    PCP_CD_M_OPR_REQ_ITEid_item: TIntegerField;
    PCP_CD_M_OPR_REQ_ITEid_cor: TIntegerField;
    PCP_CD_M_OPR_REQ_ITEid_tamanho: TIntegerField;
    PCP_CD_M_OPR_REQ_ITEqtde: TFloatField;
    PCP_CD_M_OPR_REQ_ITEqtde_atendida: TFloatField;
    PCP_CD_M_OPR_REQ_ITEdta_canc: TDateField;
    PCP_CD_M_OPR_REQ_ITEhor_canc: TTimeField;
    PCP_CD_M_OPR_REQ_ITEid_funcionario_canc: TIntegerField;
    PCP_CD_M_OPR_REQ_ITEsituacao: TIntegerField;
    PCP_CD_M_OPR_REQ_ITEid_setor: TIntegerField;
    PCP_CD_M_OPR_REQ_ITEint_nomeite: TWideStringField;
    PCP_CD_M_OPR_REQ_ITEint_nomecor: TWideStringField;
    PCP_CD_M_OPR_REQ_ITEint_nometam: TWideStringField;
    PCP_CD_M_OPR_REQ_ITEint_nomefuncanc: TWideStringField;
    PCP_CD_M_OPR_REQ_ITEid_busca_item: TWideStringField;
    PCP_CD_M_OPR_REQ_ITEint_undvenda: TWideStringField;
    PCP_CD_M_OPR_REQ_ITEnum_lote: TWideStringField;
    PCP_CD_M_OPR_REQ_ITEgerado_automatico: TBooleanField;
    PCP_CD_M_OPR_REQint_nomeresp: TWideStringField;
    PCP_CD_M_OPR_REQ_ITEint_nomestr: TWideStringField;
    PCP_CD_M_OPR_REQcancelado: TBooleanField;
    PCP_CD_M_OPR_REQ_ITEcancelado: TBooleanField;
    BUS_CD_M_OPR_REQ: TClientDataSet;
    BUS_CD_M_OPR_REQ_ITE: TClientDataSet;
    BUS_CD_M_OPR_REQid_opr: TIntegerField;
    BUS_CD_M_OPR_REQid_opr_req: TIntegerField;
    BUS_CD_M_OPR_REQdta_emissao: TDateField;
    BUS_CD_M_OPR_REQid_funcionario_canc: TIntegerField;
    BUS_CD_M_OPR_REQdta_canc: TDateField;
    BUS_CD_M_OPR_REQhor_canc: TTimeField;
    BUS_CD_M_OPR_REQint_nomefuncanc: TWideStringField;
    BUS_CD_M_OPR_REQid_responsavel: TIntegerField;
    BUS_CD_M_OPR_REQint_nomeresp: TWideStringField;
    BUS_CD_M_OPR_REQcod_lme: TWideStringField;
    BUS_CD_M_OPR_REQrev_lme: TWideStringField;
    BUS_CD_M_OPR_REQcancelado: TBooleanField;
    BUS_CD_M_OPR_REQPCP_SQ_M_OPR_REQ_ITE: TDataSetField;
    BUS_CD_M_OPR_REQ_ITEid_opr: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_opr_req: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_opr_req_ite: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_item: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_cor: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_tamanho: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEqtde: TFloatField;
    BUS_CD_M_OPR_REQ_ITEqtde_atendida: TFloatField;
    BUS_CD_M_OPR_REQ_ITEdta_canc: TDateField;
    BUS_CD_M_OPR_REQ_ITEhor_canc: TTimeField;
    BUS_CD_M_OPR_REQ_ITEid_funcionario_canc: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEsituacao: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_setor: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEint_nomeite: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_nomecor: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_nometam: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_nomefuncanc: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEid_busca_item: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_undvenda: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEnum_lote: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEgerado_automatico: TBooleanField;
    BUS_CD_M_OPR_REQ_ITEint_nomestr: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEcancelado: TBooleanField;
    PCP_CD_M_OPR_ETQ: TClientDataSet;
    PCP_CD_C_MEQvlr_hora: TFMTBCDField;
    PCP_CD_C_MEQvlr_comissao: TFMTBCDField;
    PCP_CD_C_CLEdescricao: TWideStringField;
    BUS_CD_C_CLEdescricao: TWideStringField;
    PCP_CD_C_REG_ITE: TClientDataSet;
    BUS_CD_C_REG_ITE: TClientDataSet;
    PCP_CD_C_REGPCP_SQ_C_REG_ITE: TDataSetField;
    BUS_CD_C_REGPCP_SQ_C_REG_ITE: TDataSetField;
    PCP_CD_C_REG_ITEid_regiao: TIntegerField;
    PCP_CD_C_REG_ITEtipo: TIntegerField;
    PCP_CD_C_REG_ITEid_grupo: TWideStringField;
    PCP_CD_C_REG_ITEid_item: TIntegerField;
    PCP_CD_C_REG_ITEper_desconto: TFloatField;
    PCP_CD_C_REG_ITEint_nomeite: TWideStringField;
    PCP_CD_C_REG_ITEint_undvenda: TWideStringField;
    PCP_CD_C_REG_ITEint_nomegru: TWideStringField;
    BUS_CD_C_REG_ITEid_regiao: TIntegerField;
    BUS_CD_C_REG_ITEtipo: TIntegerField;
    BUS_CD_C_REG_ITEid_grupo: TWideStringField;
    BUS_CD_C_REG_ITEid_item: TIntegerField;
    BUS_CD_C_REG_ITEper_desconto: TFloatField;
    BUS_CD_C_REG_ITEint_nomeite: TWideStringField;
    BUS_CD_C_REG_ITEint_undvenda: TWideStringField;
    BUS_CD_C_REG_ITEint_nomegru: TWideStringField;
    PCP_CD_C_MTAmob_id_empresa: TIntegerField;
    PCP_CD_C_MTAmob_senha: TWideStringField;
    PCP_CD_C_MTAmob_login: TWideStringField;
    PCP_CD_C_MEQid_placa: TWideStringField;
    PCP_CD_C_MEQkm_aquisicao: TFloatField;
    PCP_CD_C_MEQdta_aquisicao: TDateField;
    PCP_CD_C_MEQkm_atual: TFloatField;
    PCP_CD_C_MEQchassi: TWideStringField;
    PCP_CD_C_MEQano_modelo: TWideStringField;
    PCP_CD_C_MEQano_fabricacao: TWideStringField;
    PCP_CD_C_MEQrenavam: TWideStringField;
    PCP_CD_C_MEQalimentacao: TIntegerField;
    PCP_CD_C_MEQcombustivel: TIntegerField;
    PCP_CD_C_MEQmotor: TWideStringField;
    PCP_CD_C_MEQmotor_num: TWideStringField;
    PCP_CD_C_MEQrastreado: TBooleanField;
    PCP_CD_C_MEQtipo: TIntegerField;
    PCP_CD_C_MEQstatus: TIntegerField;
    PCP_CD_C_MEQid_cor: TIntegerField;
    PCP_CD_C_MEQmedia_consumo: TFloatField;
    PCP_CD_C_MEQeqp_terceiro: TBooleanField;
    PCP_CD_C_MEQtipo_rodado: TSmallintField;
    PCP_CD_C_MEQtipo_carroceria: TSmallintField;
    PCP_CD_C_MEQcap_veiculo: TFloatField;
    PCP_CD_C_MEQtara: TFloatField;
    PCP_CD_C_MEQuf_licenciado: TWideStringField;
    BUS_CD_C_MEQ: TClientDataSet;
    PCP_CD_C_MTAfiliacao: TWideStringField;
    PCP_CD_C_MTAnome_contato_1: TWideStringField;
    PCP_CD_C_MTAfone_contato_1: TWideStringField;
    PCP_CD_C_MTAtipo_cnh: TWideStringField;
    BUS_CD_C_MTAfiliacao: TWideStringField;
    BUS_CD_C_MTAnome_contato_1: TWideStringField;
    BUS_CD_C_MTAfone_contato_1: TWideStringField;
    BUS_CD_C_MTAtipo_cnh: TWideStringField;
    PCP_CD_C_REGunifica_desc_reg: TBooleanField;
    BUS_CD_C_REGunifica_desc_reg: TBooleanField;
    procedure PCP_CD_C_ORIBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_ORINewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_CDRBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_CDRNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_DISBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_DISNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_CNFBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_CNFNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_ESPBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_ESPNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_LMENewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_LME_DPGNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_LME_DRPNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_LME_DRVNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_LME_DOCNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_PRQBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_PRQNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_PRQ_ESPNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_CDPBeforeOpen(DataSet: TDataSet);
    procedure PCP_CD_C_CDPBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_CDPNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_MDEBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_MDENewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_MEQBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_MEQNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_PRPBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_PRPNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_CINNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_CIN_LNSNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_INSBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_INSNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_TINBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_TINNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_ROTBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_ROTNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_TLMBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_TLMNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_MTABeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_MTANewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_REGBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_REGNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_CLEBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_CUEBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_CUENewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_CLENewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_RPTBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_RPTNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_TPPBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_TPPNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_FTEBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_FTENewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_FTE_ETQBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_FTE_ETQNewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_LME_DOCcodigoChange(Sender: TField);
    procedure PCP_CD_M_OPR_REQNewRecord(DataSet: TDataSet);
    procedure PCP_CD_M_OPR_REQBeforePost(DataSet: TDataSet);
    procedure PCP_CD_M_OPR_REQ_ITENewRecord(DataSet: TDataSet);
    procedure PCP_CD_M_OPR_REQ_ITEBeforePost(DataSet: TDataSet);
    procedure PCP_CD_M_OPR_REQ_ITEReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure PCP_CD_M_OPR_REQReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure PCP_CD_M_OPR_REQBeforeEdit(DataSet: TDataSet);
    procedure PCP_CD_C_MEQBeforeOpen(DataSet: TDataSet);
    procedure PCP_CD_C_REG_ITENewRecord(DataSet: TDataSet);
    procedure PCP_CD_C_REG_ITEBeforePost(DataSet: TDataSet);
    procedure PCP_CD_C_TPP_SETNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BusMotorista(index: integer; filtro: String);
    procedure BusOrigem(index: integer; filtro: String);
    procedure BusConformidade(index: integer; filtro: String);
    procedure BusDisposicao(index: integer; filtro: String);
    procedure BusEspecificacao(index: integer; filtro: String);
    procedure BusClassEtiquetaCol(index: integer; filtro: String);
    procedure BusTipoLisMestre(index: integer; filtro: String);
    procedure BusTipoInst(index: integer; filtro: String);
    procedure BusUsoEtiquetaCol(index: integer; filtro: String);
    procedure BusRecipiente(index: integer; filtro: String);
    procedure BusTiposProg(index: integer; filtro: String);


    function PCP_CD_C_CIN_TesCampos: Boolean;

  end;

var
  dmSgq: TdmSgq;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmGeral, uValidacoes, PCP_RN_C_CDP, PCP_RN_M_OPR_REQ, PCP_RN_C_REG;

{$R *.dfm}

procedure TdmSgq.PCP_CD_C_CDPBeforeOpen(DataSet: TDataSet);
begin
  cdpMascara(DataSet);
end;

procedure TdmSgq.PCP_CD_C_CDPBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_CDP(DataSet);
end;

procedure TdmSgq.PCP_CD_C_CDPNewRecord(DataSet: TDataSet);
begin
  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_CDP',xCodLme,xRevLme,dmSgq.PCP_CD_C_CDP);
end;

procedure TdmSgq.PCP_CD_C_CDRBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_CDR(DataSet);
end;

procedure TdmSgq.PCP_CD_C_CDRNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_CDR.FieldByName('id_cdr').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_CDR');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_CDR',xCodLme,xRevLme,dmSgq.PCP_CD_C_CDR);
end;

procedure TdmSgq.PCP_CD_C_CINNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_CIN.FieldByName('ID_CIN').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_CIN');
  finally
    FreeAndNil(SMPrincipal);
  end;

  PCP_CD_C_CIN.FieldByName('NUM_SEQ').AsInteger      := 0;
  PCP_CD_C_CIN.FieldByName('SITUACAO_INSTRUMENTO').AsInteger := 0;
  PCP_CD_C_CIN.FieldByName('TR_SIT_ENCOSTO').AsInteger       := 0;
  PCP_CD_C_CIN.FieldByName('TR_SIT_FUNCIONAMENTO').AsInteger := 0;
  PCP_CD_C_CIN.FieldByName('TR_SIT_ESCALA').AsInteger        := 0;
  PCP_CD_C_CIN.FieldByName('TR_SIT_ASPECTO_GERAL').AsInteger := 0;
  PCP_CD_C_CIN.FieldByName('TR_SIT_ESCALA_PADRAO').AsInteger := 0;
  PCP_CD_C_CIN.FieldByName('TR_RESULTADO').AsInteger         := 0;
  PCP_CD_C_CIN.FieldByName('TR_SIT_INSPECAO').AsInteger      := 0;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_CIN',xCodLme,xRevLme,dmSgq.PCP_CD_C_CIN);
end;

procedure TdmSgq.PCP_CD_C_CIN_LNSNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_CIN_LNS.FieldByName('ID_CIN_LNS').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_CIN_LNS');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TdmSgq.PCP_CD_C_CLEBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_CLE(DataSet);
end;

procedure TdmSgq.PCP_CD_C_CLENewRecord(DataSet: TDataSet);
  var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_CLE.FieldByName('id_cle').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_CLE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_CLE',xCodLme,xRevLme,dmSgq.PCP_CD_C_CLE);
end;

procedure TdmSgq.PCP_CD_C_CNFBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_CNF(DataSet);
end;

procedure TdmSgq.PCP_CD_C_CNFNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_CNF.FieldByName('ID_CONFORMIDADE').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_CNF');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_CNF',xCodLme,xRevLme,dmSgq.PCP_CD_C_CNF);
end;

procedure TdmSgq.PCP_CD_C_CUEBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_CUE(DataSet);
end;

procedure TdmSgq.PCP_CD_C_CUENewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_CUE.FieldByName('id_cue').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_CUE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_CUE',xCodLme,xRevLme,dmSgq.PCP_CD_C_CUE);
end;

procedure TdmSgq.PCP_CD_C_DISBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_DIS(DataSet);
end;

procedure TdmSgq.PCP_CD_C_DISNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_DIS.FieldByName('ID_DIS').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_DIS');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_DIS',xCodLme,xRevLme,dmSgq.PCP_CD_C_DIS);
end;

procedure TdmSgq.PCP_CD_C_ESPBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_ESP(DataSet);
end;

procedure TdmSgq.PCP_CD_C_ESPNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_ESP.FieldByName('ID_ESPECIFICACAO').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_ESP');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TdmSgq.PCP_CD_C_FTEBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_FTE(DataSet);
end;

procedure TdmSgq.PCP_CD_C_FTENewRecord(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    PCP_CD_C_FTE.FieldByName('ID_FTE').AsInteger :=
       SMPrincipal.enValorChave('PCP_TB_C_FTE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_FTE',xCodLme,xRevLme,dmSgq.PCP_CD_C_FTE);
end;

procedure TdmSgq.PCP_CD_C_FTE_ETQBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_FTE_ETQ(DataSet);
end;

procedure TdmSgq.PCP_CD_C_FTE_ETQNewRecord(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    PCP_CD_C_FTE_ETQ.FieldByName('ID_FTE_ETQ').AsInteger :=
       SMPrincipal.enValorChave('PCP_TB_C_FTE_ETQ');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TdmSgq.PCP_CD_C_INSBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_INS(DataSet);
end;

procedure TdmSgq.PCP_CD_C_INSNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_INS.FieldByName('ID_INS').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_INS');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmSgq.PCP_CD_C_INS.FieldByName('DTA_CADASTRO').AsDateTime := xDataSis;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_INS',xCodLme,xRevLme,dmSgq.PCP_CD_C_INS);
end;

procedure TdmSgq.PCP_CD_C_LMENewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_LME.FieldByName('ID_LME').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_LME');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_LME',xCodLme,xRevLme,dmSgq.PCP_CD_C_LME);
end;

procedure TdmSgq.PCP_CD_C_LME_DOCcodigoChange(Sender: TField);
begin
   dmGeral.BUS_CD_C_LME_DOC.Close;
   dmGeral.BUS_CD_C_LME_DOC.Data :=
           dmGeral.BUS_CD_C_LME_DOC.DataRequest(VarArrayOf([0, PCP_CD_C_LME_DOC.FieldByName('ID_LME').AsString,
                                                       PCP_CD_C_LME_DOC.FieldByName('ID_LME_D').AsString,
                                                       PCP_CD_C_LME_DOC.FieldByName('CODIGO').AsString]));
   if not dmGeral.BUS_CD_C_LME_DOC.IsEmpty then
      begin
        ShowMessage('Este código já existe para outro documento.');
        PCP_CD_C_LME_DOC.FieldByName('CODIGO').AsString := '';
        dmGeral.BUS_CD_C_LME_DOC.Close;
        Abort;
      end;
   dmGeral.BUS_CD_C_LME_DOC.Close;
end;

procedure TdmSgq.PCP_CD_C_LME_DOCNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_LME_DOC.FieldByName('ID_LME_D').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_LME_DOC');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TdmSgq.PCP_CD_C_LME_DPGNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_LME_DPG.FieldByName('ID_LME_DP').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_LME_DPG');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TdmSgq.PCP_CD_C_LME_DRPNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_LME_DRP.FieldByName('ID_LME_DR').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_LME_DRP');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TdmSgq.PCP_CD_C_LME_DRVNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_LME_DRV.FieldByName('ID_LME_DV').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_LME_DRV');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TdmSgq.PCP_CD_C_MDEBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_MDE(DataSet);
end;

procedure TdmSgq.PCP_CD_C_MDENewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_MDE.FieldByName('ID_MDE').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_MDE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_MDE',xCodLme,xRevLme,dmSgq.PCP_CD_C_MDE);
end;

procedure TdmSgq.PCP_CD_C_MEQBeforeOpen(DataSet: TDataSet);
begin
  uValidacoes.MascaraPCP_CD_C_MEQ(DataSet);
end;

procedure TdmSgq.PCP_CD_C_MEQBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_MEQ(DataSet);

end;

procedure TdmSgq.PCP_CD_C_MEQNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_MEQ.FieldByName('ID_MEQ').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_MEQ');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmSgq.PCP_CD_C_MEQ.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmSgq.PCP_CD_C_MEQ.FieldByName('GARA_EXISTE').AsBoolean := false;
  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_MEQ',xCodLme,xRevLme,dmSgq.PCP_CD_C_MEQ);
end;

procedure TdmSgq.PCP_CD_C_MTABeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_MTA(DataSet);
end;

procedure TdmSgq.PCP_CD_C_MTANewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_MTA.FieldByName('ID_MOTORISTA').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_MTA');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_MTA',xCodLme,xRevLme,dmSgq.PCP_CD_C_MTA);
end;

procedure TdmSgq.PCP_CD_C_ORIBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_ORI(DataSet);
end;

procedure TdmSgq.PCP_CD_C_ORINewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_ORI.FieldByName('id_ori').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_ORI');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_ORI',xCodLme,xRevLme,dmSgq.PCP_CD_C_ORI);

end;

procedure TdmSgq.PCP_CD_C_PRPBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_PRP(DataSet);
end;

procedure TdmSgq.PCP_CD_C_PRPNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_PRP.FieldByName('ID_PRP').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_PRP');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_PRP',xCodLme,xRevLme,dmSgq.PCP_CD_C_PRP);
end;

procedure TdmSgq.PCP_CD_C_PRQBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_PRQ(DataSet);
end;

procedure TdmSgq.PCP_CD_C_PRQNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_PRQ.FieldByName('ID_PRQ').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_PRQ');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_PRQ',xCodLme,xRevLme,dmSgq.PCP_CD_C_PRQ);
end;

procedure TdmSgq.PCP_CD_C_PRQ_ESPNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_PRQ_ESP.FieldByName('ID_PRQ_ESP').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_PRQ_ESP');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TdmSgq.PCP_CD_C_REGBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_REG(DataSet);

   { TODO -oMaxsuel : Insertido por Maxsuel Victor, em 22/07/2019 }
  dmGeral.enAudRegistrarInfo(DataSet);
end;

procedure TdmSgq.PCP_CD_C_REGNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_REG.FieldByName('ID_REGIAO').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_REG');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_REG',xCodLme,xRevLme,dmSgq.PCP_CD_C_REG);
end;

procedure TdmSgq.PCP_CD_C_REG_ITEBeforePost(DataSet: TDataSet);
begin
  PCP_RN_C_REG.PcpValidaRegIte;
  PCP_RN_C_REG.PcpPreencherRegIte;
end;

procedure TdmSgq.PCP_CD_C_REG_ITENewRecord(DataSet: TDataSet);
begin
  PCP_RN_C_REG.PcpNovoRegIte;
end;

procedure TdmSgq.PCP_CD_C_ROTBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_ROT(DataSet);
end;

procedure TdmSgq.PCP_CD_C_ROTNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_ROT.FieldByName('ID_ROTA').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_ROT');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_ROT',xCodLme,xRevLme,dmSgq.PCP_CD_C_ROT);
end;

procedure TdmSgq.PCP_CD_C_RPTBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_RPT(DataSet);
end;

procedure TdmSgq.PCP_CD_C_RPTNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_RPT.FieldByName('ID_RPT').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_RPT');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_RPT',xCodLme,xRevLme,dmSgq.PCP_CD_C_RPT);
end;

procedure TdmSgq.PCP_CD_C_TINBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_TIN(DataSet);
end;

procedure TdmSgq.PCP_CD_C_TINNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_TIN.FieldByName('ID_TIN').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_TIN');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_TIN',xCodLme,xRevLme,dmSgq.PCP_CD_C_TIN);
end;

procedure TdmSgq.PCP_CD_C_TLMBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_TLM(DataSet);
end;

procedure TdmSgq.PCP_CD_C_TLMNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_TLM.FieldByName('ID_TLM').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_TLM');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_TLM',xCodLme,xRevLme,dmSgq.PCP_CD_C_TLM);
end;

procedure TdmSgq.PCP_CD_C_TPPBeforePost(DataSet: TDataSet);
begin
  uValidacoes.ValidaPCP_CD_C_TPP(DataSet);
end;

procedure TdmSgq.PCP_CD_C_TPPNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_TPP.FieldByName('ID_TPP').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_C_TPP');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_C_TPP',xCodLme,xRevLme,dmSgq.PCP_CD_C_TPP);
end;


procedure TdmSgq.PCP_CD_C_TPP_SETNewRecord(DataSet: TDataSet);
begin
  dmSgq.PCP_CD_C_TPP_SET.FieldByName('gera_estoque').AsBoolean     := false;
  dmSgq.PCP_CD_C_TPP_SET.FieldByName('grava_nro_lote').AsBoolean   := false;
  dmSgq.PCP_CD_C_TPP_SET.FieldByName('gera_nro_lote').AsBoolean    := false;
  dmSgq.PCP_CD_C_TPP_SET.FieldByName('executa_servico').AsBoolean  := false;

end;

procedure TdmSgq.PCP_CD_M_OPR_REQBeforeEdit(DataSet: TDataSet);
begin
  PCP_RN_M_OPR_REQ.PcpImportReq;
end;

procedure TdmSgq.PCP_CD_M_OPR_REQBeforePost(DataSet: TDataSet);
begin
  PCP_RN_M_OPR_REQ.PcpValidaReq;
end;

procedure TdmSgq.PCP_CD_M_OPR_REQNewRecord(DataSet: TDataSet);
begin
  PCP_RN_M_OPR_REQ.PcpNovaReq;
end;

procedure TdmSgq.PCP_CD_M_OPR_REQReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  dmgeral.VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TdmSgq.PCP_CD_M_OPR_REQ_ITEBeforePost(DataSet: TDataSet);
begin
  PCP_RN_M_OPR_REQ.PcpValidaReqIte;
end;

procedure TdmSgq.PCP_CD_M_OPR_REQ_ITENewRecord(DataSet: TDataSet);
begin
  PCP_RN_M_OPR_REQ.PcpNovaReqIte;
end;

procedure TdmSgq.PCP_CD_M_OPR_REQ_ITEReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  dmgeral.VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TdmSgq.BusMotorista(index: integer; filtro: String);
begin
  BUS_CD_C_MTA.Close;
  BUS_CD_C_MTA.Data :=
      BUS_CD_C_MTA.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmSgq.BusOrigem(index: integer; filtro: String);
begin
  BUS_CD_C_ORI.Close;
  BUS_CD_C_ORI.Data :=
         BUS_CD_C_ORI.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmSgq.BusConformidade(index: integer; filtro: String);
begin
  BUS_CD_C_CNF.Close;
  BUS_CD_C_CNF.Data :=
  BUS_CD_C_CNF.DataRequest(VarArrayOf([Index, filtro]));
end;

procedure TdmSgq.BusDisposicao(index: integer; filtro: String);
begin
  BUS_CD_C_DIS.Close;
  BUS_CD_C_DIS.Data :=
    BUS_CD_C_DIS.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmSgq.BusEspecificacao(index: integer; filtro: String);
begin
  BUS_CD_C_ESP.Close;
  BUS_CD_C_ESP.Data :=
        BUS_CD_C_ESP.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmSgq.BusClassEtiquetaCol(index: integer; filtro: String);
begin
  BUS_CD_C_CLE.Close;
  BUS_CD_C_CLE.Data :=
      BUS_CD_C_CLE.DataRequest(VarArrayOf([Index, filtro]));
end;

procedure TdmSgq.BusTipoInst(index: integer; filtro: String);
begin
  BUS_CD_C_TIN.Close;
  BUS_CD_C_TIN.Data :=
    BUS_CD_C_TIN.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmSgq.BusTipoLisMestre(index: integer; filtro: String);
begin
  BUS_CD_C_TLM.Close;
  BUS_CD_C_TLM.Data :=
      BUS_CD_C_TLM.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TdmSgq.BusTiposProg(index: integer; filtro: String);
begin
  BUS_CD_C_TPP.Close;
  BUS_CD_C_TPP.Data :=
      BUS_CD_C_TPP.DataRequest(VarArrayOf([Index, filtro]));
end;

procedure TdmSgq.BusUsoEtiquetaCol(index: integer; filtro: String);
begin
  BUS_CD_C_CUE.Close;
  BUS_CD_C_CUE.Data :=
      BUS_CD_C_CUE.DataRequest(VarArrayOf([Index, filtro]));
end;

procedure TdmSgq.BusRecipiente(index: integer; filtro: String);
begin
  BUS_CD_C_RPT.Close;
  BUS_CD_C_RPT.Data :=
     BUS_CD_C_RPT.DataRequest(VarArrayOf([index, filtro]));
end;



function TdmSgq.PCP_CD_C_CIN_TesCampos: Boolean;
var
  mens: String;
begin

  mens := '';
  result := true;

  if PCP_CD_C_CIN.FieldByName('ID_CIN').AsInteger = 0 then
     begin
       mens := mens + '.Controle' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('ID_INS').AsInteger = 0 then
     begin
       mens := mens + '.Controle' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('SITUACAO_INSTRUMENTO').Isnull then
     begin
       mens := mens + '.Situação do instrumento' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('CERT_DTA_VERIFICACAO').text = '' then
     begin
       mens := mens + '.Data do certificado' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('NUM_SEQ').isnull then
     begin
       mens := mens + '.Número de sequência' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('TR_SIT_ENCOSTO').isnull then
     begin
       mens := mens + '.Encosto' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('TR_SIT_FUNCIONAMENTO').isnull then
     begin
       mens := mens + '.Funcionanmento' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('TR_SIT_ESCALA').isnull then
     begin
       mens := mens + '.Escala' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('TR_SIT_ASPECTO_GERAL').isnull then
     begin
       mens := mens + '.Aspecto geral' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('TR_SIT_ESCALA_PADRAO').isnull then
     begin
       mens := mens + '.Comparação' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('TR_RESULTADO').isnull then
     begin
       mens := mens + '.Resultado' + #13;
     end;

  if PCP_CD_C_CIN.FieldByName('TR_SIT_INSPECAO').isnull then
     begin
       mens := mens + '.Situação' + #13;

     end;

  if PCP_CD_C_CIN.FieldByName('TR_DTA_VERIFICACAO').isnull then
     begin
       mens := mens + '.Data resultado verificação' + #13;
     end;

  if (PCP_CD_C_CIN.FieldByName('NUMERO_NFE').text      = '') or
     (PCP_CD_C_CIN.FieldByName('NUMERO_NFE').AsInteger = 0 ) then
     begin
       mens := mens + '.Número' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin
       if mens <> '' then
          begin
            ShowMessage('Atenção:' + #13 + mens);
            mens := '';
            result := false;
          end
     end;
end;


end.
