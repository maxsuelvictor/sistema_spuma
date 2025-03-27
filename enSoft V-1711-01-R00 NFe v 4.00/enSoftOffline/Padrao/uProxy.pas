//
// Created by the DataSnap proxy generator.
// 02/08/2016 19:59:48
//

unit uProxy;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Datasnap.DBClient, Data.DBXJSONReflect;

type
  TSMClient = class(TDSAdminClient)
  private
    FCAD_DP_C_CNEDataRequestCommand: TDBXCommand;
    FCMP_DP_M_SOLDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CIDDataRequestCommand: TDBXCommand;
    FCAD_DP_C_RAMDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CINDataRequestCommand: TDBXCommand;
    FCAD_DP_C_PECDataRequestCommand: TDBXCommand;
    FCAD_DP_C_PCTDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CCUDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CTCDataRequestCommand: TDBXCommand;
    FCAD_DP_C_LTODataRequestCommand: TDBXCommand;
    FCAD_DP_C_TIFDataRequestCommand: TDBXCommand;
    FCAD_DP_C_TMEDataRequestCommand: TDBXCommand;
    FCAD_DP_C_FPGDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CPGDataRequestCommand: TDBXCommand;
    FCAD_DP_C_UNDDataRequestCommand: TDBXCommand;
    FCAD_DP_C_NCMDataRequestCommand: TDBXCommand;
    FCAD_DP_C_INFDataRequestCommand: TDBXCommand;
    FCAD_DP_C_NATDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CFODataRequestCommand: TDBXCommand;
    FCAD_DP_C_GRUDataRequestCommand: TDBXCommand;
    FCAD_DP_C_TRIDataRequestCommand: TDBXCommand;
    FCAD_DP_C_ECFDataRequestCommand: TDBXCommand;
    FCAD_DP_C_FORDataRequestCommand: TDBXCommand;
    FCAD_DP_C_FUNDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CLIDataRequestCommand: TDBXCommand;
    FCAD_DP_C_PESDataRequestCommand: TDBXCommand;
    FCAD_DP_C_ALMDataRequestCommand: TDBXCommand;
    FPCP_DP_C_CDRDataRequestCommand: TDBXCommand;
    FPCP_DP_C_CNFDataRequestCommand: TDBXCommand;
    FPCP_DP_C_CRGDataRequestCommand: TDBXCommand;
    FPCP_DP_C_DISDataRequestCommand: TDBXCommand;
    FPCP_DP_C_ESPDataRequestCommand: TDBXCommand;
    FPCP_DP_C_LMEDataRequestCommand: TDBXCommand;
    FPCP_DP_C_MTADataRequestCommand: TDBXCommand;
    FPCP_DP_C_REGDataRequestCommand: TDBXCommand;
    FPCP_DP_C_ROTDataRequestCommand: TDBXCommand;
    FPCP_DP_C_TLMDataRequestCommand: TDBXCommand;
    FCAD_DP_C_ITEDataRequestCommand: TDBXCommand;
    FEST_DP_M_FEADataRequestCommand: TDBXCommand;
    FEST_DP_M_FESDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CORDataRequestCommand: TDBXCommand;
    FBUS_DP_C_PAR_SERDataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFE_NFFDataRequestCommand: TDBXCommand;
    FBUS_DP_C_TRI_REGDataRequestCommand: TDBXCommand;
    FCAD_DP_C_PARDataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFEDataRequestCommand: TDBXCommand;
    FCAD_DP_C_SETDataRequestCommand: TDBXCommand;
    FFAT_DP_M_NFEDataRequestCommand: TDBXCommand;
    FBUS_DP_M_POSDataRequestCommand: TDBXCommand;
    FFAT_DP_M_POSDataRequestCommand: TDBXCommand;
    FBUS_DP_C_ITE_PREDataRequestCommand: TDBXCommand;
    FFAT_DP_M_ORCDataRequestCommand: TDBXCommand;
    FFAT_DP_M_PEDDataRequestCommand: TDBXCommand;
    FEST_DP_M_FES_ALMDataRequestCommand: TDBXCommand;
    FCAD_DP_C_TAMDataRequestCommand: TDBXCommand;
    FEST_DP_M_CTEDataRequestCommand: TDBXCommand;
    FPCP_DP_C_PRPDataRequestCommand: TDBXCommand;
    FEST_DP_M_LOTDataRequestCommand: TDBXCommand;
    FPCP_DP_C_INSDataRequestCommand: TDBXCommand;
    FPCP_DP_M_ACRDataRequestCommand: TDBXCommand;
    FPCP_DP_M_RAADataRequestCommand: TDBXCommand;
    FPCP_DP_M_PSCDataRequestCommand: TDBXCommand;
    FFIN_DP_M_COBDataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFE_ITEDataRequestCommand: TDBXCommand;
    FFIN_DP_M_RECDataRequestCommand: TDBXCommand;
    FFIN_DP_M_RCRDataRequestCommand: TDBXCommand;
    FFIN_DP_M_CTADataRequestCommand: TDBXCommand;
    FFIN_DP_M_PAGDataRequestCommand: TDBXCommand;
    FCMP_DP_M_PEDDataRequestCommand: TDBXCommand;
    FFIN_DP_M_RBXDataRequestCommand: TDBXCommand;
    FFIN_DP_M_PBXDataRequestCommand: TDBXCommand;
    FBUS_DP_M_RAADataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFI_RAADataRequestCommand: TDBXCommand;
    FEST_DP_M_MALDataRequestCommand: TDBXCommand;
    FCSU_DP_M_PSCDataRequestCommand: TDBXCommand;
    FBUS_DP_M_PAGDataRequestCommand: TDBXCommand;
    FPCP_DP_C_FTEDataRequestCommand: TDBXCommand;
    FPCP_DP_M_ORSDataRequestCommand: TDBXCommand;
    FPCP_DP_M_ROMDataRequestCommand: TDBXCommand;
    FPCP_DP_M_OPRDataRequestCommand: TDBXCommand;
    FFIN_DP_R_PAG_ABEDataRequestCommand: TDBXCommand;
    FFIN_DP_M_PCRDataRequestCommand: TDBXCommand;
    FBUS_DP_C_REPDataRequestCommand: TDBXCommand;
    FFIN_DP_M_PBXUpdateDataCommand: TDBXCommand;
    FPCP_DP_R_PSCDataRequestCommand: TDBXCommand;
    FFAT_DP_R_IQM_ITEDataRequestCommand: TDBXCommand;
    FPCP_DP_R_RAADataRequestCommand: TDBXCommand;
    FFIN_DP_M_CXADataRequestCommand: TDBXCommand;
    FCAD_DP_R_ITEDataRequestCommand: TDBXCommand;
    FFIN_DP_M_PAG_PAGDataRequestCommand: TDBXCommand;
    FFIN_DP_M_PBX_TIT_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_C_LME_DOCDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CNEUpdateDataCommand: TDBXCommand;
    FdspCustomerGetDataSetPropertiesCommand: TDBXCommand;
    FCMP_DP_M_COTDataRequestCommand: TDBXCommand;
    FFIN_DP_R_PAG_ABE_PPGDataRequestCommand: TDBXCommand;
    FBUS_DP_C_CTCDataRequestCommand: TDBXCommand;
    FCAD_DP_C_TDFDataRequestCommand: TDBXCommand;
    FPCP_DP_C_MEQDataRequestCommand: TDBXCommand;
    FPCP_DP_M_VVEDataRequestCommand: TDBXCommand;
    FPCP_DP_M_NCFDataRequestCommand: TDBXCommand;
    FCAD_DP_C_VEIDataRequestCommand: TDBXCommand;
    FPCP_DP_C_MDEDataRequestCommand: TDBXCommand;
    FCAD_DP_C_MVEDataRequestCommand: TDBXCommand;
    FFIN_DP_M_CONDataRequestCommand: TDBXCommand;
    FPCP_DP_C_PRQDataRequestCommand: TDBXCommand;
    FPCP_DP_C_CDPDataRequestCommand: TDBXCommand;
    FPCP_DP_C_RPTDataRequestCommand: TDBXCommand;
    FPCP_DP_C_TPPDataRequestCommand: TDBXCommand;
    FPCP_DP_C_TINDataRequestCommand: TDBXCommand;
    FPCP_DP_C_CINDataRequestCommand: TDBXCommand;
    FPCP_DP_C_ORIDataRequestCommand: TDBXCommand;
    FPCP_DP_M_MCPDataRequestCommand: TDBXCommand;
    FPCP_DP_M_RVCDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CME_MEQDataRequestCommand: TDBXCommand;
    FPCP_DP_M_CMEDataRequestCommand: TDBXCommand;
    FFAT_DP_M_NFEUpdateDataCommand: TDBXCommand;
    FPCP_DP_M_LPRDataRequestCommand: TDBXCommand;
    FPCP_DP_M_CACDataRequestCommand: TDBXCommand;
    FPCP_DP_M_CRPDataRequestCommand: TDBXCommand;
    FPCP_DP_M_CRQDataRequestCommand: TDBXCommand;
    FPCP_DP_M_LBEDataRequestCommand: TDBXCommand;
    FPCP_DP_M_OPBDataRequestCommand: TDBXCommand;
    FOFI_DP_M_AGEDataRequestCommand: TDBXCommand;
    FOFI_DP_M_OCVDataRequestCommand: TDBXCommand;
    FOFI_DP_C_TIODataRequestCommand: TDBXCommand;
    FOFI_DP_M_ORVDataRequestCommand: TDBXCommand;
    FCAD_DP_C_PRGDataRequestCommand: TDBXCommand;
    FBUS_DP_M_FTE_ETQDataRequestCommand: TDBXCommand;
    FBUS_DP_C_LME_DOC_DPGDataRequestCommand: TDBXCommand;
    FPCP_DP_M_IQFDataRequestCommand: TDBXCommand;
    FCAD_DP_R_PCTDataRequestCommand: TDBXCommand;
    FCAD_DP_R_GRUDataRequestCommand: TDBXCommand;
    FPCP_DP_R_PRQDataRequestCommand: TDBXCommand;
    FCAD_DP_R_FORDataRequestCommand: TDBXCommand;
    FPCP_DP_R_PRPDataRequestCommand: TDBXCommand;
    FPCP_DP_R_LMEDataRequestCommand: TDBXCommand;
    FCAD_DP_R_FPGDataRequestCommand: TDBXCommand;
    FBUS_DP_M_FAT_NFE_CUSDataRequestCommand: TDBXCommand;
    FCAD_DP_R_CORDataRequestCommand: TDBXCommand;
    FCAD_DP_R_TAMDataRequestCommand: TDBXCommand;
    FCAD_DP_R_PRGDataRequestCommand: TDBXCommand;
    FEST_DP_R_CTEDataRequestCommand: TDBXCommand;
    FPCP_DP_R_ACRDataRequestCommand: TDBXCommand;
    FCAD_DP_R_CNEDataRequestCommand: TDBXCommand;
    FCAD_DP_R_CFODataRequestCommand: TDBXCommand;
    FFAT_DP_M_IQMDataRequestCommand: TDBXCommand;
    FBUS_DP_M_IQF_FORDataRequestCommand: TDBXCommand;
    FCAD_DP_R_TRI_REGDataRequestCommand: TDBXCommand;
    FBUS_DP_M_IQF_NFEDataRequestCommand: TDBXCommand;
    FCAD_DP_R_FUNDataRequestCommand: TDBXCommand;
    FPCP_DP_R_IQFDataRequestCommand: TDBXCommand;
    FEST_DP_R_MOVDataRequestCommand: TDBXCommand;
    FPCP_DP_R_CDPDataRequestCommand: TDBXCommand;
    FPCP_DP_R_CDRDataRequestCommand: TDBXCommand;
    FPCP_DP_R_MEQDataRequestCommand: TDBXCommand;
    FPCP_DP_R_CRGDataRequestCommand: TDBXCommand;
    FBUS_DP_M_EST_SLD_ANTDataRequestCommand: TDBXCommand;
    FEST_DP_R_FICDataRequestCommand: TDBXCommand;
    FFAT_DP_M_IQMUpdateDataCommand: TDBXCommand;
    FFAT_DP_M_IQM_ITE_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_C_FUN_CRGDataRequestCommand: TDBXCommand;
    Fctc_dp_c_obrDataRequestCommand: TDBXCommand;
    Fctc_dp_c_tprDataRequestCommand: TDBXCommand;
    Fctc_dp_m_orcUpdateDataCommand: TDBXCommand;
    Fctc_dp_m_orcDataRequestCommand: TDBXCommand;
    FCAD_DP_C_FAMDataRequestCommand: TDBXCommand;
    Fctc_dp_m_facDataRequestCommand: TDBXCommand;
    Fctc_dp_m_avfDataRequestCommand: TDBXCommand;
    FBUS_DP_M_RECDataRequestCommand: TDBXCommand;
    Fctc_dp_c_epiDataRequestCommand: TDBXCommand;
    Fctc_dp_m_cepDataRequestCommand: TDBXCommand;
    Fctc_dp_m_cfeDataRequestCommand: TDBXCommand;
    Fctc_dp_m_locDataRequestCommand: TDBXCommand;
    Fctc_dp_m_ofiDataRequestCommand: TDBXCommand;
    FFIN_DP_R_PAG_BXADataRequestCommand: TDBXCommand;
    Fctc_dp_m_bdeDataRequestCommand: TDBXCommand;
    Fctc_dp_r_bdeDataRequestCommand: TDBXCommand;
    FFAT_DP_R_DEV_FORDataRequestCommand: TDBXCommand;
    FFIN_DP_R_REC_ABEDataRequestCommand: TDBXCommand;
    FFIN_DP_R_REC_ABE_PPGDataRequestCommand: TDBXCommand;
    FFIN_DP_R_REC_BXADataRequestCommand: TDBXCommand;
    FFIN_DP_M_REC_PAGDataRequestCommand: TDBXCommand;
    FFIN_DP_M_RBXUpdateDataCommand: TDBXCommand;
    FFIN_DP_M_RBX_TIT_INTDataRequestCommand: TDBXCommand;
    FFIN_DP_R_REC_ABE_PRRDataRequestCommand: TDBXCommand;
    FFIN_DP_M_MCHDataRequestCommand: TDBXCommand;
    FBUS_DP_M_ULT_NFE_ITEDataRequestCommand: TDBXCommand;
    FBUS_DP_CSU_ITEDataRequestCommand: TDBXCommand;
    FBUS_DP_C_ITE_XMLDataRequestCommand: TDBXCommand;
    FBUS_DP_C_PAR_CPGDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_NFE_ITEDataRequestCommand: TDBXCommand;
    FBUS_DP_M_FEA_ITEDataRequestCommand: TDBXCommand;
    FBUS_DP_M_FOR_SLD_TITDataRequestCommand: TDBXCommand;
    FFIN_DP_M_ORCDataRequestCommand: TDBXCommand;
    FBUS_DP_M_PAG_DIADataRequestCommand: TDBXCommand;
    FBUS_DP_M_REC_DIADataRequestCommand: TDBXCommand;
    FFAT_DP_R_PVE_01DataRequestCommand: TDBXCommand;
    FBUS_DP_C_PAR_CTRDataRequestCommand: TDBXCommand;
    FBUS_DP_C_PAR_NFEDataRequestCommand: TDBXCommand;
    FFAT_DP_R_PVE_02DataRequestCommand: TDBXCommand;
    FFAT_DP_R_PVE_03DataRequestCommand: TDBXCommand;
    FFAT_DP_R_PVE_04DataRequestCommand: TDBXCommand;
    FFAT_DP_R_PVE_05DataRequestCommand: TDBXCommand;
    FFAT_DP_R_ICM_CSTDataRequestCommand: TDBXCommand;
    FFAT_DP_R_ICM_CFODataRequestCommand: TDBXCommand;
    FFAT_DP_R_ICM_ITEDataRequestCommand: TDBXCommand;
    FFAT_DP_R_PIS_ITEDataRequestCommand: TDBXCommand;
    FFAT_DP_R_PIS_CIPDataRequestCommand: TDBXCommand;
    FFAT_DP_R_RET_CLIDataRequestCommand: TDBXCommand;
    FFAT_DP_R_RET_ITEDataRequestCommand: TDBXCommand;
    FBUS_DP_C_ECF_FPGDataRequestCommand: TDBXCommand;
    FDP_BR_PREVENDADataRequestCommand: TDBXCommand;
    FDP_BR_SEQ_IDDataRequestCommand: TDBXCommand;
    FBUS_DP_M_POS_ITEDataRequestCommand: TDBXCommand;
    FFAT_DP_M_PEDUpdateDataCommand: TDBXCommand;
    FFAT_DP_R_RET_FORDataRequestCommand: TDBXCommand;
    FFAT_DP_R_RET_GRUDataRequestCommand: TDBXCommand;
    FFAT_DP_R_RET_VNDDataRequestCommand: TDBXCommand;
    FEST_DP_M_MALUpdateDataCommand: TDBXCommand;
    FBUS_DP_M_MAL_ITE_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFE_ITE_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_PED_ITE_INTDataRequestCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIADataRequestCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIA_SLADataRequestCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIA_VNDDataRequestCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIA_PAGDataRequestCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIA_RECDataRequestCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIA_MOPDataRequestCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIA_MPLDataRequestCommand: TDBXCommand;
    FBUS_DP_BR_PREVENDADataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFE_TIT_GRPDataRequestCommand: TDBXCommand;
    FCAD_DP_R_ECF_FPGDataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFE_TIT_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_PED_TIT_INTDataRequestCommand: TDBXCommand;
    FPCP_DP_R_CRP_ITEDataRequestCommand: TDBXCommand;
    FEST_DP_R_INVDataRequestCommand: TDBXCommand;
    FPCP_DP_R_CRP_ITE_BXIDataRequestCommand: TDBXCommand;
    FFAT_DP_R_ABC_CLIDataRequestCommand: TDBXCommand;
    FFAT_DP_R_ABC_FORDataRequestCommand: TDBXCommand;
    FFAT_DP_R_ABC_GRUDataRequestCommand: TDBXCommand;
    FFIN_DP_R_COB_COBDataRequestCommand: TDBXCommand;
    FFIN_DP_R_COB_ACODataRequestCommand: TDBXCommand;
    FBUS_DP_M_CTE_ITE_INTDataRequestCommand: TDBXCommand;
    FFIN_DP_R_EXT_CLI_ABEDataRequestCommand: TDBXCommand;
    FFIN_DP_R_EXT_CLI_PAGDataRequestCommand: TDBXCommand;
    FFIN_DP_R_EXT_FOR_ABEDataRequestCommand: TDBXCommand;
    FFIN_DP_R_EXT_FOR_PAGDataRequestCommand: TDBXCommand;
    FFIN_DP_M_CXAUpdateDataCommand: TDBXCommand;
    FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFE_DEV_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFE_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_EXT_ITEDataRequestCommand: TDBXCommand;
    FBUS_DP_M_TER_NFEDataRequestCommand: TDBXCommand;
    FFAT_DP_R_NFEDataRequestCommand: TDBXCommand;
    FFAT_DP_R_NFE_TMEDataRequestCommand: TDBXCommand;
    FFAT_DP_R_NFE_CFODataRequestCommand: TDBXCommand;
    FDSServerModuleCreateCommand: TDBXCommand;
    FDSServerModuleDestroyCommand: TDBXCommand;
    FFAT_DP_R_GAM_150DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_E20DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_E25DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_100DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_105DataRequestCommand: TDBXCommand;
    FBUS_DP_M_PED_NIPDataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_120DataRequestCommand: TDBXCommand;
    FCAD_DP_R_CLIDataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_H30DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_H20DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_H50DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_H60DataRequestCommand: TDBXCommand;
    FBUS_DP_M_CXA_RES_CARDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CXA_DET_CNFDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CXA_DET_CRBDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CXA_CARDataRequestCommand: TDBXCommand;
    FCAD_DP_R_PESDataRequestCommand: TDBXCommand;
    FCAD_DP_R_TMEDataRequestCommand: TDBXCommand;
    FFIN_DP_R_MCHDataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_C20DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_300DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_600DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_610DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_200DataRequestCommand: TDBXCommand;
    FFIN_DP_M_MCHUpdateDataCommand: TDBXCommand;
    FFAT_DP_M_ROMDataRequestCommand: TDBXCommand;
    FBUS_DP_M_MCH_CHE_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_REC_HCH_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CON_CTA_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CON_GER_INTDataRequestCommand: TDBXCommand;
    FFIN_DP_M_CONUpdateDataCommand: TDBXCommand;
    FBUS_DP_R_OCVDataRequestCommand: TDBXCommand;
    FBUS_DP_M_OCVDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CTADataRequestCommand: TDBXCommand;
    FBUS_DP_R_ORVDataRequestCommand: TDBXCommand;
    FBUS_DP_M_ROM_PEDDataRequestCommand: TDBXCommand;
    FBUS_DP_M_ROM_REGDataRequestCommand: TDBXCommand;
    FBUS_DP_R_RQVDataRequestCommand: TDBXCommand;
    FBUS_DP_C_FUN_MECDataRequestCommand: TDBXCommand;
    FOFI_DP_M_ORVUpdateDataCommand: TDBXCommand;
    FFAT_DP_R_GAM_190DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_405DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_500DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_510DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_590DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_D_100DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_D_500DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_D_510DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_D_590DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_A_100DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_A_170DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_481DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_485DataRequestCommand: TDBXCommand;
    FBUS_DP_M_ORV_PRO_INTDataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_420DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_425DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_490DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_501DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_505DataRequestCommand: TDBXCommand;
    FBUS_DP_M_ORV_ITE_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_ORV_TIT_INTDataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_460DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_470DataRequestCommand: TDBXCommand;
    FCAD_DP_C_MCTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CXA_DET_CRCDataRequestCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIA_RVEDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_OPR_PEDDataRequestCommand: TDBXCommand;
    FOFI_DP_M_POSDataRequestCommand: TDBXCommand;
    FOFI_DP_R_POSDataRequestCommand: TDBXCommand;
    FOFI_DP_R_OFV_FIVDataRequestCommand: TDBXCommand;
    FOFI_DP_R_OFV_POS_001DataRequestCommand: TDBXCommand;
    FOFI_DP_R_OFV_POS_002DataRequestCommand: TDBXCommand;
    FOFI_DP_R_OFV_COM_001DataRequestCommand: TDBXCommand;
    FOFI_DP_R_OFV_COM_002DataRequestCommand: TDBXCommand;
    FOFI_DP_R_OFV_ABC_001DataRequestCommand: TDBXCommand;
    FOFI_DP_R_OFV_ABC_002DataRequestCommand: TDBXCommand;
    FBUS_DP_M_POS_STADataRequestCommand: TDBXCommand;
    Fbus_dp_m_ctc_tprDataRequestCommand: TDBXCommand;
    FOFI_DP_R_POS_OSPDataRequestCommand: TDBXCommand;
    FBUS_DP_M_PNODataRequestCommand: TDBXCommand;
    FBUS_DP_M_PNMDataRequestCommand: TDBXCommand;
    Fctc_dp_c_eocDataRequestCommand: TDBXCommand;
    FEST_DP_R_ABC_VLRDataRequestCommand: TDBXCommand;
    FEST_DP_R_ABC_QTDDataRequestCommand: TDBXCommand;
    FCTC_DP_R_ORCDataRequestCommand: TDBXCommand;
    FCTC_DP_R_COMDataRequestCommand: TDBXCommand;
    FEST_DP_R_GIRDataRequestCommand: TDBXCommand;
    FPCP_DP_C_CUEDataRequestCommand: TDBXCommand;
    FPCP_DP_C_CLEDataRequestCommand: TDBXCommand;
    FEST_DP_R_MLTDataRequestCommand: TDBXCommand;
    FBUS_DP_R_ORC_ITE_MEDDataRequestCommand: TDBXCommand;
    FBUS_DP_C_PAR_CPG_INFDataRequestCommand: TDBXCommand;
    FBUS_DP_R_CTE_ITEDataRequestCommand: TDBXCommand;
    FBUS_DP_R_CHQDataRequestCommand: TDBXCommand;
    FCAD_DP_C_CCRDataRequestCommand: TDBXCommand;
    FBUS_DP_M_NFE_TIT_MAQDataRequestCommand: TDBXCommand;
    FFIN_DP_R_INDDataRequestCommand: TDBXCommand;
    FEST_DP_R_MOV_SPRDataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_0190DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_0400DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_0405DataRequestCommand: TDBXCommand;
    FFIN_DP_M_CBXDataRequestCommand: TDBXCommand;
    FFIN_DP_M_CBXUpdateDataCommand: TDBXCommand;
    FBUS_DP_M_CBX_TITDataRequestCommand: TDBXCommand;
    FFIN_DP_R_BCO_EXBDataRequestCommand: TDBXCommand;
    FFIN_DP_R_BCO_CCBDataRequestCommand: TDBXCommand;
    FFIN_DP_R_BCO_SBCDataRequestCommand: TDBXCommand;
    FEST_DP_M_CTEUpdateDataCommand: TDBXCommand;
    FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand: TDBXCommand;
    FFAT_DP_R_PIS_NFLDataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_G_600DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_G_610DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_G_615DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_G_605DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_G_620DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_G_625DataRequestCommand: TDBXCommand;
    FDP_BR_CUPOM_MESTREDataRequestCommand: TDBXCommand;
    FBUS_DP_M_COBDataRequestCommand: TDBXCommand;
    FBUS_DP_M_COB_TIT_TITDataRequestCommand: TDBXCommand;
    FFIN_DP_M_CTA_INTDataRequestCommand: TDBXCommand;
    FFIN_DP_M_CTAUpdateDataCommand: TDBXCommand;
    FBUS_DP_C_PCTDataRequestCommand: TDBXCommand;
    FEST_DP_M_METDataRequestCommand: TDBXCommand;
    FEST_DP_M_METUpdateDataCommand: TDBXCommand;
    FBUS_DP_M_MET_ITE_INTDataRequestCommand: TDBXCommand;
    FFAT_DP_R_PIS_RPCDataRequestCommand: TDBXCommand;
    FPCP_DP_M_ORSUpdateDataCommand: TDBXCommand;
    FBUS_DP_M_ORS_ITE_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_ORS_TIT_INTDataRequestCommand: TDBXCommand;
    FFIN_DP_M_RCRUpdateDataCommand: TDBXCommand;
    FPCP_DP_R_ORSDataRequestCommand: TDBXCommand;
    FFAT_DP_M_PCADataRequestCommand: TDBXCommand;
    FBUS_DP_M_PCADataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_E60DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_E65DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_E80DataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_E85DataRequestCommand: TDBXCommand;
    FFAT_DP_M_XMLDataRequestCommand: TDBXCommand;
    FFAT_DP_R_PEDDataRequestCommand: TDBXCommand;
    FBUS_DP_M_FAT_PCA_PEDDataRequestCommand: TDBXCommand;
    FBUS_DP_M_FES_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_ORC_PLCDataRequestCommand: TDBXCommand;
    FFIN_DP_R_CSCDataRequestCommand: TDBXCommand;
    FFIN_DP_R_EXT_CLI_NCRDataRequestCommand: TDBXCommand;
    FACE_DP_M_IDNDataRequestCommand: TDBXCommand;
    FACE_DP_M_PRODataRequestCommand: TDBXCommand;
    FACE_DP_M_FILDataRequestCommand: TDBXCommand;
    FACE_DP_M_EST_DEPDataRequestCommand: TDBXCommand;
    FACE_DP_M_EST_FOPDataRequestCommand: TDBXCommand;
    FACE_DP_M_VNDDataRequestCommand: TDBXCommand;
    FACE_DP_M_CLIDataRequestCommand: TDBXCommand;
    FACE_DP_M_NFEDataRequestCommand: TDBXCommand;
    FBUS_DP_C_FUN_CRG_GERDataRequestCommand: TDBXCommand;
    FCTC_DP_M_PRODataRequestCommand: TDBXCommand;
    FCTC_DP_M_APGDataRequestCommand: TDBXCommand;
    FCTC_DP_M_SLMDataRequestCommand: TDBXCommand;
    FCTC_DP_R_SLMDataRequestCommand: TDBXCommand;
    FBUS_DP_C_CSU_ITE_PRFDataRequestCommand: TDBXCommand;
    FCAD_DP_R_ITE_PRC_FINDataRequestCommand: TDBXCommand;
    FEST_DP_R_DEZDataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_700DataRequestCommand: TDBXCommand;
    FFIN_DP_R_MCH_TOTDataRequestCommand: TDBXCommand;
    FFAT_DP_R_GAM_710DataRequestCommand: TDBXCommand;
    FFIN_DP_R_BCO_SLDDataRequestCommand: TDBXCommand;
    FFAT_DP_M_ROMUpdateDataCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIA_NPDDataRequestCommand: TDBXCommand;
    FFIN_DP_R_CXA_DIA_NFTDataRequestCommand: TDBXCommand;
    FFAT_DP_R_COV_RECDataRequestCommand: TDBXCommand;
    FFAT_DP_R_COV_FATDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_PFTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_PREDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_PDEDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_PFEDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_PRCDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_PPGDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_XRCDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_XPGDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_XCBDataRequestCommand: TDBXCommand;
    FFIN_DP_M_RECUpdateDataCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand: TDBXCommand;
    FBUS_DP_M_OPR_OPP_INTDataRequestCommand: TDBXCommand;
    FEST_DP_R_PES_GERDataRequestCommand: TDBXCommand;
    FEST_DP_R_PES_ALMDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_DRE_RVNDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_DRE_DVNDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_DRE_DPODataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_DRE_CMDDataRequestCommand: TDBXCommand;
    FBUS_DP_M_CSU_DRE_RNODataRequestCommand: TDBXCommand;
    FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand: TDBXCommand;
    FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand: TDBXCommand;
    FPCP_DP_C_FPIDataRequestCommand: TDBXCommand;
    FPCP_DP_M_OPR_ETQDataRequestCommand: TDBXCommand;
    FBUS_DP_M_PED_INTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_OPR_PED_INTDataRequestCommand: TDBXCommand;
    FEST_DP_M_MALGetDataSetPropertiesCommand: TDBXCommand;
    FFAT_DP_M_PEDGetDataSetPropertiesCommand: TDBXCommand;
    FFIN_DP_R_EXT_CLI_ESTDataRequestCommand: TDBXCommand;
    FBUS_DP_M_OPR_OPP_SOPDataRequestCommand: TDBXCommand;
    FBUS_DP_M_REC_INTDataRequestCommand: TDBXCommand;
    FPCP_DP_M_OPRGetDataSetPropertiesCommand: TDBXCommand;
    FPCP_DP_M_OPRUpdateDataCommand: TDBXCommand;
    FBUS_DP_M_CSU_GER_PFFDataRequestCommand: TDBXCommand;
    FBUS_DP_C_ITE_PRCDataRequestCommand: TDBXCommand;
    FCAD_DP_R_ITE_PRC_MNLDataRequestCommand: TDBXCommand;
    FCAD_DP_C_PAIDataRequestCommand: TDBXCommand;
    FPCP_DP_M_OPR_REQDataRequestCommand: TDBXCommand;
    FBUS_DP_M_LOT_ESTDataRequestCommand: TDBXCommand;
    FAbreBancoCommand: TDBXCommand;
    FGerarSqlTxtCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FenValorChaveCommand: TDBXCommand;
    FenChaveNItensCommand: TDBXCommand;
    FenDataServerCommand: TDBXCommand;
    FenHoraServerCommand: TDBXCommand;
    FenVerifVersaoCommand: TDBXCommand;
    FenVerifPedDupOrsCommand: TDBXCommand;
    FenVerifNfeDupRomCommand: TDBXCommand;
    FenVerifCteIteDupCommand: TDBXCommand;
    FenVerifNfePendenteCommand: TDBXCommand;
    FenExiTitulosBaixadoCommand: TDBXCommand;
    FenExiDebClienteCommand: TDBXCommand;
    FenBuscaMenuCommand: TDBXCommand;
    FenVerCreditoFornCommand: TDBXCommand;
    FenVerCreditoCliCommand: TDBXCommand;
    FenVerSaldoDiaCxaCommand: TDBXCommand;
    FenGerPeqDespCommand: TDBXCommand;
    FenBusTotPagMedCommand: TDBXCommand;
    FenBusTotVendMedCommand: TDBXCommand;
    FenAtuPrcIteCommand: TDBXCommand;
    FenDesfazerFatCommand: TDBXCommand;
    FenGerFinCxaBcoCommand: TDBXCommand;
    FenGerFinRecPagCommand: TDBXCommand;
    FenGerFinRcrCommand: TDBXCommand;
    FenBusNovoSldlimCliCommand: TDBXCommand;
    FenVerSldLimAtuCommand: TDBXCommand;
    FenFormarObsFiscoNfeCommand: TDBXCommand;
    FenAtuDadosNFCommand: TDBXCommand;
    FenProxNroMDFeCommand: TDBXCommand;
    FenGerarPreVendaCommand: TDBXCommand;
    FenFinalizarCupomCxaCommand: TDBXCommand;
    FenGerCupomGerConWinCommand: TDBXCommand;
    FenBusFpgEcfCommand: TDBXCommand;
    FenCancelCupomCommand: TDBXCommand;
    FenCancelNfeCommand: TDBXCommand;
    FenReabrePedCommand: TDBXCommand;
    FenAproReprPedCommand: TDBXCommand;
    FenGerarNfeCommand: TDBXCommand;
    FenFecharCaixaCommand: TDBXCommand;
    FenBxaTitRetBcoCommand: TDBXCommand;
    FenAtualMaqNfsTitCommand: TDBXCommand;
    FenAtualPedF11Command: TDBXCommand;
    FenVerSldCxaEmAbertoCommand: TDBXCommand;
    FAllApplyUpdatesCommand: TDBXCommand;
    FenMD5Command: TDBXCommand;
    FenMD5FileCommand: TDBXCommand;
    FBuscarConnBancoCommand: TDBXCommand;
    FenAudInserirCampoPacoteCommand: TDBXCommand;
    FenAudGravarCommand: TDBXCommand;
    FenSgqVefPedRomCommand: TDBXCommand;
    FenSgqPcpImportarPedCommand: TDBXCommand;
    FenSgqPcpGerarReqCommand: TDBXCommand;
    FenSgqEstatisticaAcrCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function CAD_DP_C_CNEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CMP_DP_M_SOLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_CIDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_RAMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_CINDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_PECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_PCTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_CCUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_CTCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_LTODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_TIFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_TMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_FPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_CPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_UNDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_NCMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_INFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_NATDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_CFODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_GRUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_TRIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_ECFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_FUNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_PESDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_ALMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_CDRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_CNFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_CRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_DISDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_ESPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_LMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_MTADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_REGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_ROTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_TLMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_M_FEADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_M_FESDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_CORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_PAR_SERDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFE_NFFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_TRI_REGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_PARDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_SETDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_M_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_POSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_M_POSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_ITE_PREDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_M_ORCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_M_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_M_FES_ALMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_TAMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_M_CTEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_PRPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_M_LOTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_INSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_ACRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_RAADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_PSCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_COBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFE_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_RECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_RCRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_CTADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CMP_DP_M_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_RBXDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_PBXDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_RAADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFI_RAADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_M_MALDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CSU_DP_M_PSCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_FTEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_ORSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_ROMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_OPRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_PAG_ABEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_PCRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_REPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FIN_DP_M_PBXUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function PCP_DP_R_PSCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_IQM_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_RAADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_CXADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_PAG_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_PBX_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_LME_DOCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure CAD_DP_C_CNEUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure dspCustomerGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
    function CMP_DP_M_COTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_PAG_ABE_PPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_CTCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_TDFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_MEQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_VVEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_NCFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_VEIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_MDEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_MVEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_CONDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_PRQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_CDPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_RPTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_TPPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_TINDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_CINDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_ORIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_MCPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_RVCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CME_MEQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_CMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FAT_DP_M_NFEUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function PCP_DP_M_LPRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_CACDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_CRPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_CRQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_LBEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_OPBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_M_AGEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_M_OCVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_C_TIODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_M_ORVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_PRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_FTE_ETQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_LME_DOC_DPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_IQFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_PCTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_GRUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_PRQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_PRPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_LMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_FPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_FAT_NFE_CUSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_CORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_TAMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_PRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_CTEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_ACRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_CNEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_CFODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_M_IQMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_IQF_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_TRI_REGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_IQF_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_FUNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_IQFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_MOVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_CDPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_CDRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_MEQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_CRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_EST_SLD_ANTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_FICDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FAT_DP_M_IQMUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function FAT_DP_M_IQM_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_FUN_CRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_c_obrDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_c_tprDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure ctc_dp_m_orcUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function ctc_dp_m_orcDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_FAMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_m_facDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_m_avfDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_RECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_c_epiDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_m_cepDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_m_cfeDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_m_locDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_m_ofiDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_PAG_BXADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_m_bdeDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_r_bdeDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_DEV_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_REC_ABEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_REC_ABE_PPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_REC_BXADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_REC_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FIN_DP_M_RBXUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function FIN_DP_M_RBX_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_REC_ABE_PRRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_MCHDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_ULT_NFE_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_CSU_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_ITE_XMLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_PAR_CPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_NFE_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_FEA_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_FOR_SLD_TITDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_ORCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_PAG_DIADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_REC_DIADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PVE_01DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_PAR_CTRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_PAR_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PVE_02DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PVE_03DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PVE_04DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PVE_05DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_ICM_CSTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_ICM_CFODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_ICM_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PIS_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PIS_CIPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_RET_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_RET_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_ECF_FPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function DP_BR_PREVENDADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function DP_BR_SEQ_IDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_POS_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FAT_DP_M_PEDUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function FAT_DP_R_RET_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_RET_GRUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_RET_VNDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure EST_DP_M_MALUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_M_MAL_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFE_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_PED_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CXA_DIADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CXA_DIA_SLADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CXA_DIA_VNDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CXA_DIA_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CXA_DIA_RECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CXA_DIA_MOPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CXA_DIA_MPLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_BR_PREVENDADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFE_TIT_GRPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_ECF_FPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFE_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_PED_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_CRP_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_INVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_R_CRP_ITE_BXIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_ABC_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_ABC_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_ABC_GRUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_COB_COBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_COB_ACODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CTE_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_EXT_CLI_ABEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_EXT_CLI_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_EXT_FOR_ABEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_EXT_FOR_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FIN_DP_M_CXAUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_M_NFE_DEV_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFE_DEV_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_EXT_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_TER_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_NFE_TMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_NFE_CFODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure DSServerModuleDestroy(Sender: TObject);
    function FAT_DP_R_GAM_150DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_E20DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_E25DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_100DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_105DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_PED_NIPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_120DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_H30DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_H20DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_H50DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_H60DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CXA_RES_CARDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CXA_DET_CNFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CXA_DET_CRBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CXA_CARDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_PESDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_TMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_MCHDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_C20DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_300DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_600DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_610DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_200DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FIN_DP_M_MCHUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function FAT_DP_M_ROMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_MCH_CHE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_REC_HCH_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CON_CTA_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CON_GER_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FIN_DP_M_CONUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_R_OCVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_OCVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CTADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_R_ORVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_ROM_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_ROM_REGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_R_RQVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_FUN_MECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure OFI_DP_M_ORVUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function FAT_DP_R_GAM_190DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_405DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_500DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_510DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_590DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_D_100DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_D_500DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_D_510DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_D_590DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_A_100DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_A_170DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_481DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_485DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_ORV_PRO_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_420DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_425DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_490DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_501DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_505DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_ORV_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_ORV_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_460DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_470DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_MCTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_ORV_TIT_SER_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CXA_DET_CRCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CXA_DIA_RVEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_OPR_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_M_POSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_R_POSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_R_OFV_FIVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_R_OFV_POS_001DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_R_OFV_POS_002DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_R_OFV_COM_001DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_R_OFV_COM_002DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_R_OFV_ABC_001DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_R_OFV_ABC_002DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_POS_STADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function bus_dp_m_ctc_tprDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function OFI_DP_R_POS_OSPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_PNODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_PNMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ctc_dp_c_eocDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_ABC_VLRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_ABC_QTDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CTC_DP_R_ORCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CTC_DP_R_COMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_GIRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_CUEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_CLEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_MLTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_R_ORC_ITE_MEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_PAR_CPG_INFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_R_CTE_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_R_CHQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_CCRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_NFE_TIT_MAQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_INDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_MOV_SPRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_0190DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_0400DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_0405DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_CBXDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FIN_DP_M_CBXUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_M_CBX_TITDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_BCO_EXBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_BCO_CCBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_BCO_SBCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure EST_DP_M_CTEUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_M_CTE_RES_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PIS_NFLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_G_600DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_G_610DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_G_615DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_G_605DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_G_620DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_G_625DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function DP_BR_CUPOM_MESTREDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_COBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_COB_TIT_TITDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_M_CTA_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FIN_DP_M_CTAUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_C_PCTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_M_METDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure EST_DP_M_METUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_M_MET_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PIS_RPCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure PCP_DP_M_ORSUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_M_ORS_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_ORS_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FIN_DP_M_RCRUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function PCP_DP_R_ORSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_M_PCADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_PCADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_E60DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_E65DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_E80DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_E85DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_M_XMLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_FAT_PCA_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_FES_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_ORC_PLCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CSCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_EXT_CLI_NCRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ACE_DP_M_IDNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ACE_DP_M_PRODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ACE_DP_M_FILDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ACE_DP_M_EST_DEPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ACE_DP_M_EST_FOPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ACE_DP_M_VNDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ACE_DP_M_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function ACE_DP_M_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_FUN_CRG_GERDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CTC_DP_M_PRODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CTC_DP_M_APGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CTC_DP_M_SLMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CTC_DP_R_SLMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_CSU_ITE_PRFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_ITE_PRC_FINDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_DEZDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_700DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_MCH_TOTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_GAM_710DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_BCO_SLDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FAT_DP_M_ROMUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function FIN_DP_R_CXA_DIA_NPDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FIN_DP_R_CXA_DIA_NFTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_COV_RECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function FAT_DP_R_COV_FATDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GER_PFTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GER_PREDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GER_PDEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GER_PFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GER_PRCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GER_PPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GER_XRCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GER_XPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GER_XCBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure FIN_DP_M_RECUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_M_CSU_GER_PFT_EMPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_OPR_OPP_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_PES_GERDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function EST_DP_R_PES_ALMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_PEQ_TVPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_PEQ_CMDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_PEQ_DPVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_PEQ_DPFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_DRE_RVNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_DRE_DVNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_DRE_DPODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_DRE_CMDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_DRE_RNODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_BR_PREVENDA_DETALHEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_BR_CUPOM_DETALHEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_C_FPIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_OPR_ETQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_PED_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_OPR_PED_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure EST_DP_M_MALGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
    procedure FAT_DP_M_PEDGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
    function FIN_DP_R_EXT_CLI_ESTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_OPR_OPP_SOPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_REC_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure PCP_DP_M_OPRGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
    procedure PCP_DP_M_OPRUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    function BUS_DP_M_CSU_GER_PFFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_C_ITE_PRCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_R_ITE_PRC_MNLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function CAD_DP_C_PAIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function PCP_DP_M_OPR_REQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    function BUS_DP_M_LOT_ESTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
    procedure AbreBanco;
    procedure GerarSqlTxt(dataset: TSQLDataSet);
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function enValorChave(NomeSeq: string): Integer;
    function enChaveNItens(NomeSeq: string; QtdeItens: Integer): Integer;
    function enDataServer: TDateTime;
    function enHoraServer: TDateTime;
    function enVerifVersao: string;
    function enVerifPedDupOrs(id_empresa: string; id_ors: string; id_pedido: string): Boolean;
    function enVerifNfeDupRom(id_empresa: string; id_romaneio: string; id_fiscal: string): Boolean;
    function enVerifCteIteDup(id_empresa: string; id_controle: string; id_item: string; id_cor: string; id_tamanho: string): string;
    function enVerifNfePendente(id_empresa: string; id_funcionario: string): string;
    function enExiTitulosBaixado(Empresa: string; ID: string; Rotina: string): Boolean;
    function enExiDebCliente(DiasProtesto: Integer; id_cliente: Integer): Boolean;
    function enBuscaMenu(Perfil: Integer; Formulario: string; Acao: Integer): Boolean;
    function enVerCreditoForn(Fornecedor: string): Currency;
    function enVerCreditoCli(Cliente: string; tipo_saldo: Integer): Currency;
    function enVerSaldoDiaCxa(IdEmpresa: Integer; IdConta: Integer; IdAbertura: Integer): Currency;
    function enGerPeqDesp(IdFornecedor: Integer; IdAbertura: Integer; IdLocalTit: Integer; IdFormaPag: Integer; IdCcusto: Integer; IdTipoFinanceiro: Integer; IdEmpresa: Integer; IdPlano: string; Historico: string; DtaEmissao: TDateTime; DtaVencto: TDateTime; DtaOrig: TDateTime; VlrLancto: Currency): string;
    function enBusTotPagMed(IdEmpresa: string; PctTipMov: string): Currency;
    function enBusTotVendMed(Ano: string; MesAtual: string; IdEmpresa: string): Currency;
    function enAtuPrcIte(IdFiscal: string; IdSeqItem: string; IdItem: string; fp_vlr_tot_custo_fix_mens: Currency; fp_vlr_ven_med_mens: Currency; fp_per_cust_ven_mens: Currency; fp_per_icms_ven: Currency; fp_per_simples: Currency; fp_per_comissao: Currency; fp_per_frete_ven: Currency; fp_per_cust_fin_ven: Currency; fp_per_lucro_ven: Currency; fp_per_total_incid: Currency; fp_per_markup_div: Currency; fp_per_markup_mult: Currency; fp_per_prc_prz_ven_prat: Currency; PrcIteCalc: Currency; PrcItePrat: Currency; PrcPrazoItePrat: Currency): string;
    procedure enDesfazerFat(IdFiscal: Integer; BUS_CD_M_NFE: TClientDataSet; var FIN_CD_M_CTA: TClientDataSet; var FIN_CD_M_REC: TClientDataSet; var FIN_CD_M_REC_PAG: TClientDataSet; var FIN_CD_M_RCR: TClientDataSet; var FIN_CD_M_CTA_RCR: TClientDataSet; var FAT_CD_M_PED: TClientDataSet; var OFI_CD_M_ORV: TClientDataSet; var EST_CD_M_FES: TClientDataSet; ReabrePed: string);
    procedure enGerFinCxaBco(Sender: TObject; origem: Integer; DataSet: TCustomClientDataSet; cdsTit: TDataSet; FIN_CD_M_CTA: TClientDataSet; IdAbertura: Integer);
    procedure enGerFinRecPag(Sender: TObject; origem: Integer; DataSet: TCustomClientDataSet; var cdsTit: TDataSet; var FIN_CD_M_REC_PAG: TClientDataSet; IdAbertura: Integer; NumeroNfe: string);
    procedure enGerFinRcr(Sender: TObject; origem: Integer; DataSet: TCustomClientDataSet; var cdsTit: TDataSet; var FIN_CD_M_RCR: TClientDataSet; var FIN_CD_M_CTA_RCR: TClientDataSet; IdAbertura: Integer);
    function enBusNovoSldlimCli(IdEmpresa: string; IdCliente: string; VlrLimiteCli: Currency): Currency;
    function enVerSldLimAtu(origem: Integer; DataSet: TCustomClientDataSet; cdsTitulos: TDataSet; id_forma_pag_rbx: Integer): Currency;
    function enFormarObsFiscoNfe(DataSet: TCustomClientDataSet; NfeObsAnt: string; NfeObsAtu: string): string;
    function enAtuDadosNF(id_fiscal: string; id_abertura: string; tipo_doc: string): string;
    function enProxNroMDFe(id_empresa: string): Integer;
    function enGerarPreVenda(id_fiscal: string; id_abertura: string; serial_pv: string; ecf_serial: string; ecf_marca: string; ecf_modelo: string; ecf_caixa: string): string;
    function enFinalizarCupomCxa(id_fiscal: Integer; NroCupom: Integer; CupomCancelado: Boolean; ecf_prevenda: string; ecf_serial_impressora: string; DtaCaixa: TDateTime; ReabrePed: string): string;
    procedure enGerCupomGerConWin(id_abertura: Integer);
    function enBusFpgEcf(ecf_serial_impressora: string): TDataSet;
    function enCancelCupom(id_fiscal: Integer; DataSet: TCustomClientDataSet; var CAD_CD_C_CLI: TClientDataSet; var FAT_CD_M_NFE: TClientDataSet): string;
    function enCancelNfe(id_fiscal: Integer; CanStatus: string; CanProtocolo: string; ReabrePed: string; IdAbertura: string): string;
    function enReabrePed(id_fiscal: Integer; ReabrePed: string): string;
    function enAproReprPed(IdEmpresa: string; IdPedidos: string; TipoAcao: string; IdFuncionario: string; msgJustificativa: string): string;
    function enGerarNfe(id_fiscal: Integer; id_emitente: Integer): string;
    function enFecharCaixa(IdAbertura: Integer; Status: Integer; ExisteCar: Boolean; IdTitulos: string; DataSetCar: TDataSet): string;
    function enBxaTitRetBco(DataSet_Tit: TDataSet; IdTitulos: string; IdPlano: string; IdConta: Integer; IdResponsavel: Integer; IdFormaPag: Integer; IdCCusto: Integer; IdTipoFinanceiro: Integer): string;
    function enAtualMaqNfsTit(IdEmpresa: Integer; IdFiscal: Integer; Data: OleVariant): string;
    function enAtualPedF11(id_empresa: Integer; id_pedido: Integer): Boolean;
    function enVerSldCxaEmAberto(id_empresa: string; id_funcionario: string): string;
    function AllApplyUpdates(Delta: OleVariant): Boolean;
    function enMD5(texto: string): string;
    function enMD5File(fileName: string): string;
    function BuscarConnBanco: TSQLConnection;
    procedure enAudInserirCampoPacote(Properties: OleVariant);
    procedure enAudGravar(Sender: TObject; DataSet: TCustomClientDataSet);
    function enSgqVefPedRom(id_pedido: string): Integer;
    function enSgqPcpImportarPed(tbItensSel: TDataSet; IdEmpresa: string; IdOpr: string; IdResp: string; AlmSel: string; PedSel: string; ItensSel: string; CorSel: string; TamSel: string): OleVariant;
    procedure enSgqPcpGerarReq(IdOpr: Integer; IdResp: Integer; IdAlmoxarifado: string; PCP_CD_M_OPR_REQ: TClientDataSet; cdsItensOpr: TClientDataSet; PCP_CD_M_OPR_REQ_ITE: TDataSet);
    function enSgqEstatisticaAcr(tipo: Integer; Input: OleVariant): OleVariant;
  end;

implementation

function TSMClient.CAD_DP_C_CNEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CNEDataRequestCommand = nil then
  begin
    FCAD_DP_C_CNEDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CNEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CNEDataRequestCommand.Text := 'TSM.CAD_DP_C_CNEDataRequest';
    FCAD_DP_C_CNEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CNEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CNEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CNEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CNEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CNEDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CNEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CMP_DP_M_SOLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCMP_DP_M_SOLDataRequestCommand = nil then
  begin
    FCMP_DP_M_SOLDataRequestCommand := FDBXConnection.CreateCommand;
    FCMP_DP_M_SOLDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCMP_DP_M_SOLDataRequestCommand.Text := 'TSM.CMP_DP_M_SOLDataRequest';
    FCMP_DP_M_SOLDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCMP_DP_M_SOLDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCMP_DP_M_SOLDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCMP_DP_M_SOLDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCMP_DP_M_SOLDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCMP_DP_M_SOLDataRequestCommand.ExecuteUpdate;
  Result := FCMP_DP_M_SOLDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_CIDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CIDDataRequestCommand = nil then
  begin
    FCAD_DP_C_CIDDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CIDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CIDDataRequestCommand.Text := 'TSM.CAD_DP_C_CIDDataRequest';
    FCAD_DP_C_CIDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CIDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CIDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CIDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CIDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CIDDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CIDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_RAMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_RAMDataRequestCommand = nil then
  begin
    FCAD_DP_C_RAMDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_RAMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_RAMDataRequestCommand.Text := 'TSM.CAD_DP_C_RAMDataRequest';
    FCAD_DP_C_RAMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_RAMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_RAMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_RAMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_RAMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_RAMDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_RAMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_CINDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CINDataRequestCommand = nil then
  begin
    FCAD_DP_C_CINDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CINDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CINDataRequestCommand.Text := 'TSM.CAD_DP_C_CINDataRequest';
    FCAD_DP_C_CINDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CINDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CINDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CINDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CINDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CINDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CINDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_PECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_PECDataRequestCommand = nil then
  begin
    FCAD_DP_C_PECDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_PECDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_PECDataRequestCommand.Text := 'TSM.CAD_DP_C_PECDataRequest';
    FCAD_DP_C_PECDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_PECDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_PECDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_PECDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_PECDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_PECDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_PECDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_PCTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_PCTDataRequestCommand = nil then
  begin
    FCAD_DP_C_PCTDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_PCTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_PCTDataRequestCommand.Text := 'TSM.CAD_DP_C_PCTDataRequest';
    FCAD_DP_C_PCTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_PCTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_PCTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_PCTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_PCTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_PCTDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_PCTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_CCUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CCUDataRequestCommand = nil then
  begin
    FCAD_DP_C_CCUDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CCUDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CCUDataRequestCommand.Text := 'TSM.CAD_DP_C_CCUDataRequest';
    FCAD_DP_C_CCUDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CCUDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CCUDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CCUDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CCUDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CCUDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CCUDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_CTCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CTCDataRequestCommand = nil then
  begin
    FCAD_DP_C_CTCDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CTCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CTCDataRequestCommand.Text := 'TSM.CAD_DP_C_CTCDataRequest';
    FCAD_DP_C_CTCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CTCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CTCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CTCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CTCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CTCDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CTCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_LTODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_LTODataRequestCommand = nil then
  begin
    FCAD_DP_C_LTODataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_LTODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_LTODataRequestCommand.Text := 'TSM.CAD_DP_C_LTODataRequest';
    FCAD_DP_C_LTODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_LTODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_LTODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_LTODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_LTODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_LTODataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_LTODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_TIFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_TIFDataRequestCommand = nil then
  begin
    FCAD_DP_C_TIFDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_TIFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_TIFDataRequestCommand.Text := 'TSM.CAD_DP_C_TIFDataRequest';
    FCAD_DP_C_TIFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_TIFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_TIFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_TIFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_TIFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_TIFDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_TIFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_TMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_TMEDataRequestCommand = nil then
  begin
    FCAD_DP_C_TMEDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_TMEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_TMEDataRequestCommand.Text := 'TSM.CAD_DP_C_TMEDataRequest';
    FCAD_DP_C_TMEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_TMEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_TMEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_TMEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_TMEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_TMEDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_TMEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_FPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_FPGDataRequestCommand = nil then
  begin
    FCAD_DP_C_FPGDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_FPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_FPGDataRequestCommand.Text := 'TSM.CAD_DP_C_FPGDataRequest';
    FCAD_DP_C_FPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_FPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_FPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_FPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_FPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_FPGDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_FPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_CPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CPGDataRequestCommand = nil then
  begin
    FCAD_DP_C_CPGDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CPGDataRequestCommand.Text := 'TSM.CAD_DP_C_CPGDataRequest';
    FCAD_DP_C_CPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CPGDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_UNDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_UNDDataRequestCommand = nil then
  begin
    FCAD_DP_C_UNDDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_UNDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_UNDDataRequestCommand.Text := 'TSM.CAD_DP_C_UNDDataRequest';
    FCAD_DP_C_UNDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_UNDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_UNDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_UNDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_UNDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_UNDDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_UNDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_NCMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_NCMDataRequestCommand = nil then
  begin
    FCAD_DP_C_NCMDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_NCMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_NCMDataRequestCommand.Text := 'TSM.CAD_DP_C_NCMDataRequest';
    FCAD_DP_C_NCMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_NCMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_NCMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_NCMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_NCMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_NCMDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_NCMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_INFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_INFDataRequestCommand = nil then
  begin
    FCAD_DP_C_INFDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_INFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_INFDataRequestCommand.Text := 'TSM.CAD_DP_C_INFDataRequest';
    FCAD_DP_C_INFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_INFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_INFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_INFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_INFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_INFDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_INFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_NATDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_NATDataRequestCommand = nil then
  begin
    FCAD_DP_C_NATDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_NATDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_NATDataRequestCommand.Text := 'TSM.CAD_DP_C_NATDataRequest';
    FCAD_DP_C_NATDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_NATDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_NATDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_NATDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_NATDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_NATDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_NATDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_CFODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CFODataRequestCommand = nil then
  begin
    FCAD_DP_C_CFODataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CFODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CFODataRequestCommand.Text := 'TSM.CAD_DP_C_CFODataRequest';
    FCAD_DP_C_CFODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CFODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CFODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CFODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CFODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CFODataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CFODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_GRUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_GRUDataRequestCommand = nil then
  begin
    FCAD_DP_C_GRUDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_GRUDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_GRUDataRequestCommand.Text := 'TSM.CAD_DP_C_GRUDataRequest';
    FCAD_DP_C_GRUDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_GRUDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_GRUDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_GRUDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_GRUDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_GRUDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_GRUDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_TRIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_TRIDataRequestCommand = nil then
  begin
    FCAD_DP_C_TRIDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_TRIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_TRIDataRequestCommand.Text := 'TSM.CAD_DP_C_TRIDataRequest';
    FCAD_DP_C_TRIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_TRIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_TRIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_TRIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_TRIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_TRIDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_TRIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_ECFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_ECFDataRequestCommand = nil then
  begin
    FCAD_DP_C_ECFDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_ECFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_ECFDataRequestCommand.Text := 'TSM.CAD_DP_C_ECFDataRequest';
    FCAD_DP_C_ECFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_ECFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_ECFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_ECFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_ECFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_ECFDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_ECFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_FORDataRequestCommand = nil then
  begin
    FCAD_DP_C_FORDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_FORDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_FORDataRequestCommand.Text := 'TSM.CAD_DP_C_FORDataRequest';
    FCAD_DP_C_FORDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_FORDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_FORDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_FORDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_FORDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_FORDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_FORDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_FUNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_FUNDataRequestCommand = nil then
  begin
    FCAD_DP_C_FUNDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_FUNDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_FUNDataRequestCommand.Text := 'TSM.CAD_DP_C_FUNDataRequest';
    FCAD_DP_C_FUNDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_FUNDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_FUNDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_FUNDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_FUNDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_FUNDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_FUNDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CLIDataRequestCommand = nil then
  begin
    FCAD_DP_C_CLIDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CLIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CLIDataRequestCommand.Text := 'TSM.CAD_DP_C_CLIDataRequest';
    FCAD_DP_C_CLIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CLIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CLIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CLIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CLIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CLIDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CLIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_PESDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_PESDataRequestCommand = nil then
  begin
    FCAD_DP_C_PESDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_PESDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_PESDataRequestCommand.Text := 'TSM.CAD_DP_C_PESDataRequest';
    FCAD_DP_C_PESDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_PESDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_PESDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_PESDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_PESDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_PESDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_PESDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_ALMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_ALMDataRequestCommand = nil then
  begin
    FCAD_DP_C_ALMDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_ALMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_ALMDataRequestCommand.Text := 'TSM.CAD_DP_C_ALMDataRequest';
    FCAD_DP_C_ALMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_ALMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_ALMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_ALMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_ALMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_ALMDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_ALMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_CDRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_CDRDataRequestCommand = nil then
  begin
    FPCP_DP_C_CDRDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_CDRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_CDRDataRequestCommand.Text := 'TSM.PCP_DP_C_CDRDataRequest';
    FPCP_DP_C_CDRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_CDRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_CDRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_CDRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_CDRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_CDRDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_CDRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_CNFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_CNFDataRequestCommand = nil then
  begin
    FPCP_DP_C_CNFDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_CNFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_CNFDataRequestCommand.Text := 'TSM.PCP_DP_C_CNFDataRequest';
    FPCP_DP_C_CNFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_CNFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_CNFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_CNFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_CNFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_CNFDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_CNFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_CRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_CRGDataRequestCommand = nil then
  begin
    FPCP_DP_C_CRGDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_CRGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_CRGDataRequestCommand.Text := 'TSM.PCP_DP_C_CRGDataRequest';
    FPCP_DP_C_CRGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_CRGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_CRGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_CRGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_CRGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_CRGDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_CRGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_DISDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_DISDataRequestCommand = nil then
  begin
    FPCP_DP_C_DISDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_DISDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_DISDataRequestCommand.Text := 'TSM.PCP_DP_C_DISDataRequest';
    FPCP_DP_C_DISDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_DISDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_DISDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_DISDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_DISDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_DISDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_DISDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_ESPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_ESPDataRequestCommand = nil then
  begin
    FPCP_DP_C_ESPDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_ESPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_ESPDataRequestCommand.Text := 'TSM.PCP_DP_C_ESPDataRequest';
    FPCP_DP_C_ESPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_ESPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_ESPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_ESPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_ESPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_ESPDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_ESPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_LMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_LMEDataRequestCommand = nil then
  begin
    FPCP_DP_C_LMEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_LMEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_LMEDataRequestCommand.Text := 'TSM.PCP_DP_C_LMEDataRequest';
    FPCP_DP_C_LMEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_LMEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_LMEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_LMEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_LMEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_LMEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_LMEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_MTADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_MTADataRequestCommand = nil then
  begin
    FPCP_DP_C_MTADataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_MTADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_MTADataRequestCommand.Text := 'TSM.PCP_DP_C_MTADataRequest';
    FPCP_DP_C_MTADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_MTADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_MTADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_MTADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_MTADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_MTADataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_MTADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_REGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_REGDataRequestCommand = nil then
  begin
    FPCP_DP_C_REGDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_REGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_REGDataRequestCommand.Text := 'TSM.PCP_DP_C_REGDataRequest';
    FPCP_DP_C_REGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_REGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_REGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_REGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_REGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_REGDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_REGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_ROTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_ROTDataRequestCommand = nil then
  begin
    FPCP_DP_C_ROTDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_ROTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_ROTDataRequestCommand.Text := 'TSM.PCP_DP_C_ROTDataRequest';
    FPCP_DP_C_ROTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_ROTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_ROTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_ROTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_ROTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_ROTDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_ROTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_TLMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_TLMDataRequestCommand = nil then
  begin
    FPCP_DP_C_TLMDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_TLMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_TLMDataRequestCommand.Text := 'TSM.PCP_DP_C_TLMDataRequest';
    FPCP_DP_C_TLMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_TLMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_TLMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_TLMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_TLMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_TLMDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_TLMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_ITEDataRequestCommand = nil then
  begin
    FCAD_DP_C_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_ITEDataRequestCommand.Text := 'TSM.CAD_DP_C_ITEDataRequest';
    FCAD_DP_C_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_ITEDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_M_FEADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_M_FEADataRequestCommand = nil then
  begin
    FEST_DP_M_FEADataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_FEADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_FEADataRequestCommand.Text := 'TSM.EST_DP_M_FEADataRequest';
    FEST_DP_M_FEADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_FEADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_FEADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_FEADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_FEADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_M_FEADataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_M_FEADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_M_FESDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_M_FESDataRequestCommand = nil then
  begin
    FEST_DP_M_FESDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_FESDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_FESDataRequestCommand.Text := 'TSM.EST_DP_M_FESDataRequest';
    FEST_DP_M_FESDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_FESDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_FESDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_FESDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_FESDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_M_FESDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_M_FESDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_CORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CORDataRequestCommand = nil then
  begin
    FCAD_DP_C_CORDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CORDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CORDataRequestCommand.Text := 'TSM.CAD_DP_C_CORDataRequest';
    FCAD_DP_C_CORDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CORDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CORDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CORDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CORDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CORDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CORDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_PAR_SERDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_PAR_SERDataRequestCommand = nil then
  begin
    FBUS_DP_C_PAR_SERDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_PAR_SERDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_PAR_SERDataRequestCommand.Text := 'TSM.BUS_DP_C_PAR_SERDataRequest';
    FBUS_DP_C_PAR_SERDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_PAR_SERDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_PAR_SERDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_PAR_SERDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_PAR_SERDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_PAR_SERDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_PAR_SERDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFE_NFFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFE_NFFDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFE_NFFDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFE_NFFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFE_NFFDataRequestCommand.Text := 'TSM.BUS_DP_M_NFE_NFFDataRequest';
    FBUS_DP_M_NFE_NFFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFE_NFFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFE_NFFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFE_NFFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFE_NFFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFE_NFFDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFE_NFFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_TRI_REGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_TRI_REGDataRequestCommand = nil then
  begin
    FBUS_DP_C_TRI_REGDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_TRI_REGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_TRI_REGDataRequestCommand.Text := 'TSM.BUS_DP_C_TRI_REGDataRequest';
    FBUS_DP_C_TRI_REGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_TRI_REGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_TRI_REGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_TRI_REGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_TRI_REGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_TRI_REGDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_TRI_REGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_PARDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_PARDataRequestCommand = nil then
  begin
    FCAD_DP_C_PARDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_PARDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_PARDataRequestCommand.Text := 'TSM.CAD_DP_C_PARDataRequest';
    FCAD_DP_C_PARDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_PARDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_PARDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_PARDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_PARDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_PARDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_PARDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFEDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFEDataRequestCommand.Text := 'TSM.BUS_DP_M_NFEDataRequest';
    FBUS_DP_M_NFEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_SETDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_SETDataRequestCommand = nil then
  begin
    FCAD_DP_C_SETDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_SETDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_SETDataRequestCommand.Text := 'TSM.CAD_DP_C_SETDataRequest';
    FCAD_DP_C_SETDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_SETDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_SETDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_SETDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_SETDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_SETDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_SETDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_M_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_M_NFEDataRequestCommand = nil then
  begin
    FFAT_DP_M_NFEDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_NFEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_NFEDataRequestCommand.Text := 'TSM.FAT_DP_M_NFEDataRequest';
    FFAT_DP_M_NFEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_NFEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_NFEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_NFEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_NFEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_M_NFEDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_M_NFEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_POSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_POSDataRequestCommand = nil then
  begin
    FBUS_DP_M_POSDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_POSDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_POSDataRequestCommand.Text := 'TSM.BUS_DP_M_POSDataRequest';
    FBUS_DP_M_POSDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_POSDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_POSDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_POSDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_POSDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_POSDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_POSDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_M_POSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_M_POSDataRequestCommand = nil then
  begin
    FFAT_DP_M_POSDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_POSDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_POSDataRequestCommand.Text := 'TSM.FAT_DP_M_POSDataRequest';
    FFAT_DP_M_POSDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_POSDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_POSDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_POSDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_POSDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_M_POSDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_M_POSDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_ITE_PREDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_ITE_PREDataRequestCommand = nil then
  begin
    FBUS_DP_C_ITE_PREDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_ITE_PREDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_ITE_PREDataRequestCommand.Text := 'TSM.BUS_DP_C_ITE_PREDataRequest';
    FBUS_DP_C_ITE_PREDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_ITE_PREDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_ITE_PREDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_ITE_PREDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_ITE_PREDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_ITE_PREDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_ITE_PREDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_M_ORCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_M_ORCDataRequestCommand = nil then
  begin
    FFAT_DP_M_ORCDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_ORCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_ORCDataRequestCommand.Text := 'TSM.FAT_DP_M_ORCDataRequest';
    FFAT_DP_M_ORCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_ORCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_ORCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_ORCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_ORCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_M_ORCDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_M_ORCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_M_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_M_PEDDataRequestCommand = nil then
  begin
    FFAT_DP_M_PEDDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_PEDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_PEDDataRequestCommand.Text := 'TSM.FAT_DP_M_PEDDataRequest';
    FFAT_DP_M_PEDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_PEDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_PEDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_PEDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_PEDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_M_PEDDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_M_PEDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_M_FES_ALMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_M_FES_ALMDataRequestCommand = nil then
  begin
    FEST_DP_M_FES_ALMDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_FES_ALMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_FES_ALMDataRequestCommand.Text := 'TSM.EST_DP_M_FES_ALMDataRequest';
    FEST_DP_M_FES_ALMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_FES_ALMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_FES_ALMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_FES_ALMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_FES_ALMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_M_FES_ALMDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_M_FES_ALMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_TAMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_TAMDataRequestCommand = nil then
  begin
    FCAD_DP_C_TAMDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_TAMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_TAMDataRequestCommand.Text := 'TSM.CAD_DP_C_TAMDataRequest';
    FCAD_DP_C_TAMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_TAMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_TAMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_TAMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_TAMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_TAMDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_TAMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_M_CTEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_M_CTEDataRequestCommand = nil then
  begin
    FEST_DP_M_CTEDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_CTEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_CTEDataRequestCommand.Text := 'TSM.EST_DP_M_CTEDataRequest';
    FEST_DP_M_CTEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_CTEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_CTEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_CTEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_CTEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_M_CTEDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_M_CTEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_PRPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_PRPDataRequestCommand = nil then
  begin
    FPCP_DP_C_PRPDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_PRPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_PRPDataRequestCommand.Text := 'TSM.PCP_DP_C_PRPDataRequest';
    FPCP_DP_C_PRPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_PRPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_PRPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_PRPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_PRPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_PRPDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_PRPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_M_LOTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_M_LOTDataRequestCommand = nil then
  begin
    FEST_DP_M_LOTDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_LOTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_LOTDataRequestCommand.Text := 'TSM.EST_DP_M_LOTDataRequest';
    FEST_DP_M_LOTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_LOTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_LOTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_LOTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_LOTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_M_LOTDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_M_LOTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_INSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_INSDataRequestCommand = nil then
  begin
    FPCP_DP_C_INSDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_INSDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_INSDataRequestCommand.Text := 'TSM.PCP_DP_C_INSDataRequest';
    FPCP_DP_C_INSDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_INSDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_INSDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_INSDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_INSDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_INSDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_INSDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_ACRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_ACRDataRequestCommand = nil then
  begin
    FPCP_DP_M_ACRDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_ACRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_ACRDataRequestCommand.Text := 'TSM.PCP_DP_M_ACRDataRequest';
    FPCP_DP_M_ACRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_ACRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_ACRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_ACRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_ACRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_ACRDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_ACRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_RAADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_RAADataRequestCommand = nil then
  begin
    FPCP_DP_M_RAADataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_RAADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_RAADataRequestCommand.Text := 'TSM.PCP_DP_M_RAADataRequest';
    FPCP_DP_M_RAADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_RAADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_RAADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_RAADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_RAADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_RAADataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_RAADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_PSCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_PSCDataRequestCommand = nil then
  begin
    FPCP_DP_M_PSCDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_PSCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_PSCDataRequestCommand.Text := 'TSM.PCP_DP_M_PSCDataRequest';
    FPCP_DP_M_PSCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_PSCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_PSCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_PSCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_PSCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_PSCDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_PSCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_COBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_COBDataRequestCommand = nil then
  begin
    FFIN_DP_M_COBDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_COBDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_COBDataRequestCommand.Text := 'TSM.FIN_DP_M_COBDataRequest';
    FFIN_DP_M_COBDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_COBDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_COBDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_COBDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_COBDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_COBDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_COBDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFE_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFE_ITEDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFE_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFE_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFE_ITEDataRequestCommand.Text := 'TSM.BUS_DP_M_NFE_ITEDataRequest';
    FBUS_DP_M_NFE_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFE_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFE_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFE_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFE_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFE_ITEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFE_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_RECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_RECDataRequestCommand = nil then
  begin
    FFIN_DP_M_RECDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_RECDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_RECDataRequestCommand.Text := 'TSM.FIN_DP_M_RECDataRequest';
    FFIN_DP_M_RECDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_RECDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RECDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RECDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_RECDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_RECDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_RECDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_RCRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_RCRDataRequestCommand = nil then
  begin
    FFIN_DP_M_RCRDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_RCRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_RCRDataRequestCommand.Text := 'TSM.FIN_DP_M_RCRDataRequest';
    FFIN_DP_M_RCRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_RCRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RCRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RCRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_RCRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_RCRDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_RCRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_CTADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_CTADataRequestCommand = nil then
  begin
    FFIN_DP_M_CTADataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_CTADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_CTADataRequestCommand.Text := 'TSM.FIN_DP_M_CTADataRequest';
    FFIN_DP_M_CTADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_CTADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CTADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CTADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_CTADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_CTADataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_CTADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_PAGDataRequestCommand = nil then
  begin
    FFIN_DP_M_PAGDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_PAGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_PAGDataRequestCommand.Text := 'TSM.FIN_DP_M_PAGDataRequest';
    FFIN_DP_M_PAGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_PAGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_PAGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_PAGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_PAGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_PAGDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_PAGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CMP_DP_M_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCMP_DP_M_PEDDataRequestCommand = nil then
  begin
    FCMP_DP_M_PEDDataRequestCommand := FDBXConnection.CreateCommand;
    FCMP_DP_M_PEDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCMP_DP_M_PEDDataRequestCommand.Text := 'TSM.CMP_DP_M_PEDDataRequest';
    FCMP_DP_M_PEDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCMP_DP_M_PEDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCMP_DP_M_PEDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCMP_DP_M_PEDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCMP_DP_M_PEDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCMP_DP_M_PEDDataRequestCommand.ExecuteUpdate;
  Result := FCMP_DP_M_PEDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_RBXDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_RBXDataRequestCommand = nil then
  begin
    FFIN_DP_M_RBXDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_RBXDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_RBXDataRequestCommand.Text := 'TSM.FIN_DP_M_RBXDataRequest';
    FFIN_DP_M_RBXDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_RBXDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RBXDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RBXDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_RBXDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_RBXDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_RBXDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_PBXDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_PBXDataRequestCommand = nil then
  begin
    FFIN_DP_M_PBXDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_PBXDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_PBXDataRequestCommand.Text := 'TSM.FIN_DP_M_PBXDataRequest';
    FFIN_DP_M_PBXDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_PBXDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_PBXDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_PBXDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_PBXDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_PBXDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_PBXDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_RAADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_RAADataRequestCommand = nil then
  begin
    FBUS_DP_M_RAADataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_RAADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_RAADataRequestCommand.Text := 'TSM.BUS_DP_M_RAADataRequest';
    FBUS_DP_M_RAADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_RAADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_RAADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_RAADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_RAADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_RAADataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_RAADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFI_RAADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFI_RAADataRequestCommand = nil then
  begin
    FBUS_DP_M_NFI_RAADataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFI_RAADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFI_RAADataRequestCommand.Text := 'TSM.BUS_DP_M_NFI_RAADataRequest';
    FBUS_DP_M_NFI_RAADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFI_RAADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFI_RAADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFI_RAADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFI_RAADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFI_RAADataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFI_RAADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_M_MALDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_M_MALDataRequestCommand = nil then
  begin
    FEST_DP_M_MALDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_MALDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_MALDataRequestCommand.Text := 'TSM.EST_DP_M_MALDataRequest';
    FEST_DP_M_MALDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_MALDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_MALDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_MALDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_MALDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_M_MALDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_M_MALDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CSU_DP_M_PSCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCSU_DP_M_PSCDataRequestCommand = nil then
  begin
    FCSU_DP_M_PSCDataRequestCommand := FDBXConnection.CreateCommand;
    FCSU_DP_M_PSCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCSU_DP_M_PSCDataRequestCommand.Text := 'TSM.CSU_DP_M_PSCDataRequest';
    FCSU_DP_M_PSCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCSU_DP_M_PSCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCSU_DP_M_PSCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCSU_DP_M_PSCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCSU_DP_M_PSCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCSU_DP_M_PSCDataRequestCommand.ExecuteUpdate;
  Result := FCSU_DP_M_PSCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_PAGDataRequestCommand = nil then
  begin
    FBUS_DP_M_PAGDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_PAGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_PAGDataRequestCommand.Text := 'TSM.BUS_DP_M_PAGDataRequest';
    FBUS_DP_M_PAGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_PAGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_PAGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_PAGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_PAGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_PAGDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_PAGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_FTEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_FTEDataRequestCommand = nil then
  begin
    FPCP_DP_C_FTEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_FTEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_FTEDataRequestCommand.Text := 'TSM.PCP_DP_C_FTEDataRequest';
    FPCP_DP_C_FTEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_FTEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_FTEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_FTEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_FTEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_FTEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_FTEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_ORSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_ORSDataRequestCommand = nil then
  begin
    FPCP_DP_M_ORSDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_ORSDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_ORSDataRequestCommand.Text := 'TSM.PCP_DP_M_ORSDataRequest';
    FPCP_DP_M_ORSDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_ORSDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_ORSDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_ORSDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_ORSDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_ORSDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_ORSDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_ROMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_ROMDataRequestCommand = nil then
  begin
    FPCP_DP_M_ROMDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_ROMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_ROMDataRequestCommand.Text := 'TSM.PCP_DP_M_ROMDataRequest';
    FPCP_DP_M_ROMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_ROMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_ROMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_ROMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_ROMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_ROMDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_ROMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_OPRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_OPRDataRequestCommand = nil then
  begin
    FPCP_DP_M_OPRDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_OPRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_OPRDataRequestCommand.Text := 'TSM.PCP_DP_M_OPRDataRequest';
    FPCP_DP_M_OPRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_OPRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_OPRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_OPRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_OPRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_OPRDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_OPRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_PAG_ABEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_PAG_ABEDataRequestCommand = nil then
  begin
    FFIN_DP_R_PAG_ABEDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_PAG_ABEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_PAG_ABEDataRequestCommand.Text := 'TSM.FIN_DP_R_PAG_ABEDataRequest';
    FFIN_DP_R_PAG_ABEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_PAG_ABEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_PAG_ABEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_PAG_ABEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_PAG_ABEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_PAG_ABEDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_PAG_ABEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_PCRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_PCRDataRequestCommand = nil then
  begin
    FFIN_DP_M_PCRDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_PCRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_PCRDataRequestCommand.Text := 'TSM.FIN_DP_M_PCRDataRequest';
    FFIN_DP_M_PCRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_PCRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_PCRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_PCRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_PCRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_PCRDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_PCRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_REPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_REPDataRequestCommand = nil then
  begin
    FBUS_DP_C_REPDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_REPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_REPDataRequestCommand.Text := 'TSM.BUS_DP_C_REPDataRequest';
    FBUS_DP_C_REPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_REPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_REPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_REPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_REPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_REPDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_REPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FIN_DP_M_PBXUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFIN_DP_M_PBXUpdateDataCommand = nil then
  begin
    FFIN_DP_M_PBXUpdateDataCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_PBXUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_PBXUpdateDataCommand.Text := 'TSM.FIN_DP_M_PBXUpdateData';
    FFIN_DP_M_PBXUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_PBXUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_PBXUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_PBXUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFIN_DP_M_PBXUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_PBXUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_PBXUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_PBXUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.PCP_DP_R_PSCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_PSCDataRequestCommand = nil then
  begin
    FPCP_DP_R_PSCDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_PSCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_PSCDataRequestCommand.Text := 'TSM.PCP_DP_R_PSCDataRequest';
    FPCP_DP_R_PSCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_PSCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_PSCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_PSCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_PSCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_PSCDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_PSCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_IQM_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_IQM_ITEDataRequestCommand = nil then
  begin
    FFAT_DP_R_IQM_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_IQM_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_IQM_ITEDataRequestCommand.Text := 'TSM.FAT_DP_R_IQM_ITEDataRequest';
    FFAT_DP_R_IQM_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_IQM_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_IQM_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_IQM_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_IQM_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_IQM_ITEDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_IQM_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_RAADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_RAADataRequestCommand = nil then
  begin
    FPCP_DP_R_RAADataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_RAADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_RAADataRequestCommand.Text := 'TSM.PCP_DP_R_RAADataRequest';
    FPCP_DP_R_RAADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_RAADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_RAADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_RAADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_RAADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_RAADataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_RAADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_CXADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_CXADataRequestCommand = nil then
  begin
    FFIN_DP_M_CXADataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_CXADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_CXADataRequestCommand.Text := 'TSM.FIN_DP_M_CXADataRequest';
    FFIN_DP_M_CXADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_CXADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CXADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CXADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_CXADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_CXADataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_CXADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_ITEDataRequestCommand = nil then
  begin
    FCAD_DP_R_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_ITEDataRequestCommand.Text := 'TSM.CAD_DP_R_ITEDataRequest';
    FCAD_DP_R_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_ITEDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_PAG_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_PAG_PAGDataRequestCommand = nil then
  begin
    FFIN_DP_M_PAG_PAGDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_PAG_PAGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_PAG_PAGDataRequestCommand.Text := 'TSM.FIN_DP_M_PAG_PAGDataRequest';
    FFIN_DP_M_PAG_PAGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_PAG_PAGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_PAG_PAGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_PAG_PAGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_PAG_PAGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_PAG_PAGDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_PAG_PAGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_PBX_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_PBX_TIT_INTDataRequestCommand = nil then
  begin
    FFIN_DP_M_PBX_TIT_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_PBX_TIT_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_PBX_TIT_INTDataRequestCommand.Text := 'TSM.FIN_DP_M_PBX_TIT_INTDataRequest';
    FFIN_DP_M_PBX_TIT_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_PBX_TIT_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_PBX_TIT_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_PBX_TIT_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_PBX_TIT_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_PBX_TIT_INTDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_PBX_TIT_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_LME_DOCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_LME_DOCDataRequestCommand = nil then
  begin
    FBUS_DP_C_LME_DOCDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_LME_DOCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_LME_DOCDataRequestCommand.Text := 'TSM.BUS_DP_C_LME_DOCDataRequest';
    FBUS_DP_C_LME_DOCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_LME_DOCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_LME_DOCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_LME_DOCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_LME_DOCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_LME_DOCDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_LME_DOCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.CAD_DP_C_CNEUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FCAD_DP_C_CNEUpdateDataCommand = nil then
  begin
    FCAD_DP_C_CNEUpdateDataCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CNEUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CNEUpdateDataCommand.Text := 'TSM.CAD_DP_C_CNEUpdateData';
    FCAD_DP_C_CNEUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CNEUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CNEUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CNEUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FCAD_DP_C_CNEUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CNEUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CNEUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CNEUpdateDataCommand.ExecuteUpdate;
end;

procedure TSMClient.dspCustomerGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
begin
  if FdspCustomerGetDataSetPropertiesCommand = nil then
  begin
    FdspCustomerGetDataSetPropertiesCommand := FDBXConnection.CreateCommand;
    FdspCustomerGetDataSetPropertiesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FdspCustomerGetDataSetPropertiesCommand.Text := 'TSM.dspCustomerGetDataSetProperties';
    FdspCustomerGetDataSetPropertiesCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FdspCustomerGetDataSetPropertiesCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspCustomerGetDataSetPropertiesCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FdspCustomerGetDataSetPropertiesCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FdspCustomerGetDataSetPropertiesCommand.Parameters[1].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FdspCustomerGetDataSetPropertiesCommand.ExecuteUpdate;
  Properties := FdspCustomerGetDataSetPropertiesCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CMP_DP_M_COTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCMP_DP_M_COTDataRequestCommand = nil then
  begin
    FCMP_DP_M_COTDataRequestCommand := FDBXConnection.CreateCommand;
    FCMP_DP_M_COTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCMP_DP_M_COTDataRequestCommand.Text := 'TSM.CMP_DP_M_COTDataRequest';
    FCMP_DP_M_COTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCMP_DP_M_COTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCMP_DP_M_COTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCMP_DP_M_COTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCMP_DP_M_COTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCMP_DP_M_COTDataRequestCommand.ExecuteUpdate;
  Result := FCMP_DP_M_COTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_PAG_ABE_PPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_PAG_ABE_PPGDataRequestCommand = nil then
  begin
    FFIN_DP_R_PAG_ABE_PPGDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.Text := 'TSM.FIN_DP_R_PAG_ABE_PPGDataRequest';
    FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_CTCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_CTCDataRequestCommand = nil then
  begin
    FBUS_DP_C_CTCDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_CTCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_CTCDataRequestCommand.Text := 'TSM.BUS_DP_C_CTCDataRequest';
    FBUS_DP_C_CTCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_CTCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_CTCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_CTCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_CTCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_CTCDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_CTCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_TDFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_TDFDataRequestCommand = nil then
  begin
    FCAD_DP_C_TDFDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_TDFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_TDFDataRequestCommand.Text := 'TSM.CAD_DP_C_TDFDataRequest';
    FCAD_DP_C_TDFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_TDFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_TDFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_TDFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_TDFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_TDFDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_TDFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_MEQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_MEQDataRequestCommand = nil then
  begin
    FPCP_DP_C_MEQDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_MEQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_MEQDataRequestCommand.Text := 'TSM.PCP_DP_C_MEQDataRequest';
    FPCP_DP_C_MEQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_MEQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_MEQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_MEQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_MEQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_MEQDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_MEQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_VVEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_VVEDataRequestCommand = nil then
  begin
    FPCP_DP_M_VVEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_VVEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_VVEDataRequestCommand.Text := 'TSM.PCP_DP_M_VVEDataRequest';
    FPCP_DP_M_VVEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_VVEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_VVEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_VVEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_VVEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_VVEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_VVEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_NCFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_NCFDataRequestCommand = nil then
  begin
    FPCP_DP_M_NCFDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_NCFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_NCFDataRequestCommand.Text := 'TSM.PCP_DP_M_NCFDataRequest';
    FPCP_DP_M_NCFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_NCFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_NCFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_NCFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_NCFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_NCFDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_NCFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_VEIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_VEIDataRequestCommand = nil then
  begin
    FCAD_DP_C_VEIDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_VEIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_VEIDataRequestCommand.Text := 'TSM.CAD_DP_C_VEIDataRequest';
    FCAD_DP_C_VEIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_VEIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_VEIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_VEIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_VEIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_VEIDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_VEIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_MDEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_MDEDataRequestCommand = nil then
  begin
    FPCP_DP_C_MDEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_MDEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_MDEDataRequestCommand.Text := 'TSM.PCP_DP_C_MDEDataRequest';
    FPCP_DP_C_MDEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_MDEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_MDEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_MDEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_MDEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_MDEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_MDEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_MVEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_MVEDataRequestCommand = nil then
  begin
    FCAD_DP_C_MVEDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_MVEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_MVEDataRequestCommand.Text := 'TSM.CAD_DP_C_MVEDataRequest';
    FCAD_DP_C_MVEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_MVEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_MVEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_MVEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_MVEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_MVEDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_MVEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_CONDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_CONDataRequestCommand = nil then
  begin
    FFIN_DP_M_CONDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_CONDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_CONDataRequestCommand.Text := 'TSM.FIN_DP_M_CONDataRequest';
    FFIN_DP_M_CONDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_CONDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CONDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CONDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_CONDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_CONDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_CONDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_PRQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_PRQDataRequestCommand = nil then
  begin
    FPCP_DP_C_PRQDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_PRQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_PRQDataRequestCommand.Text := 'TSM.PCP_DP_C_PRQDataRequest';
    FPCP_DP_C_PRQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_PRQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_PRQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_PRQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_PRQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_PRQDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_PRQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_CDPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_CDPDataRequestCommand = nil then
  begin
    FPCP_DP_C_CDPDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_CDPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_CDPDataRequestCommand.Text := 'TSM.PCP_DP_C_CDPDataRequest';
    FPCP_DP_C_CDPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_CDPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_CDPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_CDPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_CDPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_CDPDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_CDPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_RPTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_RPTDataRequestCommand = nil then
  begin
    FPCP_DP_C_RPTDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_RPTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_RPTDataRequestCommand.Text := 'TSM.PCP_DP_C_RPTDataRequest';
    FPCP_DP_C_RPTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_RPTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_RPTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_RPTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_RPTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_RPTDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_RPTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_TPPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_TPPDataRequestCommand = nil then
  begin
    FPCP_DP_C_TPPDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_TPPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_TPPDataRequestCommand.Text := 'TSM.PCP_DP_C_TPPDataRequest';
    FPCP_DP_C_TPPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_TPPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_TPPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_TPPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_TPPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_TPPDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_TPPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_TINDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_TINDataRequestCommand = nil then
  begin
    FPCP_DP_C_TINDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_TINDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_TINDataRequestCommand.Text := 'TSM.PCP_DP_C_TINDataRequest';
    FPCP_DP_C_TINDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_TINDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_TINDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_TINDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_TINDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_TINDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_TINDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_CINDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_CINDataRequestCommand = nil then
  begin
    FPCP_DP_C_CINDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_CINDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_CINDataRequestCommand.Text := 'TSM.PCP_DP_C_CINDataRequest';
    FPCP_DP_C_CINDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_CINDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_CINDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_CINDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_CINDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_CINDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_CINDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_ORIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_ORIDataRequestCommand = nil then
  begin
    FPCP_DP_C_ORIDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_ORIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_ORIDataRequestCommand.Text := 'TSM.PCP_DP_C_ORIDataRequest';
    FPCP_DP_C_ORIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_ORIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_ORIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_ORIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_ORIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_ORIDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_ORIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_MCPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_MCPDataRequestCommand = nil then
  begin
    FPCP_DP_M_MCPDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_MCPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_MCPDataRequestCommand.Text := 'TSM.PCP_DP_M_MCPDataRequest';
    FPCP_DP_M_MCPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_MCPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_MCPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_MCPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_MCPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_MCPDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_MCPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_RVCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_RVCDataRequestCommand = nil then
  begin
    FPCP_DP_M_RVCDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_RVCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_RVCDataRequestCommand.Text := 'TSM.PCP_DP_M_RVCDataRequest';
    FPCP_DP_M_RVCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_RVCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_RVCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_RVCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_RVCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_RVCDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_RVCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CME_MEQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CME_MEQDataRequestCommand = nil then
  begin
    FBUS_DP_M_CME_MEQDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CME_MEQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CME_MEQDataRequestCommand.Text := 'TSM.BUS_DP_M_CME_MEQDataRequest';
    FBUS_DP_M_CME_MEQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CME_MEQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CME_MEQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CME_MEQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CME_MEQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CME_MEQDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CME_MEQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_CMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_CMEDataRequestCommand = nil then
  begin
    FPCP_DP_M_CMEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_CMEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_CMEDataRequestCommand.Text := 'TSM.PCP_DP_M_CMEDataRequest';
    FPCP_DP_M_CMEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_CMEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_CMEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_CMEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_CMEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_CMEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_CMEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FAT_DP_M_NFEUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFAT_DP_M_NFEUpdateDataCommand = nil then
  begin
    FFAT_DP_M_NFEUpdateDataCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_NFEUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_NFEUpdateDataCommand.Text := 'TSM.FAT_DP_M_NFEUpdateData';
    FFAT_DP_M_NFEUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_NFEUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_NFEUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_NFEUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFAT_DP_M_NFEUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_NFEUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_NFEUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_NFEUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.PCP_DP_M_LPRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_LPRDataRequestCommand = nil then
  begin
    FPCP_DP_M_LPRDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_LPRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_LPRDataRequestCommand.Text := 'TSM.PCP_DP_M_LPRDataRequest';
    FPCP_DP_M_LPRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_LPRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_LPRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_LPRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_LPRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_LPRDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_LPRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_CACDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_CACDataRequestCommand = nil then
  begin
    FPCP_DP_M_CACDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_CACDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_CACDataRequestCommand.Text := 'TSM.PCP_DP_M_CACDataRequest';
    FPCP_DP_M_CACDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_CACDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_CACDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_CACDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_CACDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_CACDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_CACDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_CRPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_CRPDataRequestCommand = nil then
  begin
    FPCP_DP_M_CRPDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_CRPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_CRPDataRequestCommand.Text := 'TSM.PCP_DP_M_CRPDataRequest';
    FPCP_DP_M_CRPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_CRPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_CRPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_CRPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_CRPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_CRPDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_CRPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_CRQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_CRQDataRequestCommand = nil then
  begin
    FPCP_DP_M_CRQDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_CRQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_CRQDataRequestCommand.Text := 'TSM.PCP_DP_M_CRQDataRequest';
    FPCP_DP_M_CRQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_CRQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_CRQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_CRQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_CRQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_CRQDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_CRQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_LBEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_LBEDataRequestCommand = nil then
  begin
    FPCP_DP_M_LBEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_LBEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_LBEDataRequestCommand.Text := 'TSM.PCP_DP_M_LBEDataRequest';
    FPCP_DP_M_LBEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_LBEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_LBEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_LBEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_LBEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_LBEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_LBEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_OPBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_OPBDataRequestCommand = nil then
  begin
    FPCP_DP_M_OPBDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_OPBDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_OPBDataRequestCommand.Text := 'TSM.PCP_DP_M_OPBDataRequest';
    FPCP_DP_M_OPBDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_OPBDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_OPBDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_OPBDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_OPBDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_OPBDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_OPBDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_M_AGEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_M_AGEDataRequestCommand = nil then
  begin
    FOFI_DP_M_AGEDataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_M_AGEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_M_AGEDataRequestCommand.Text := 'TSM.OFI_DP_M_AGEDataRequest';
    FOFI_DP_M_AGEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_M_AGEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_M_AGEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_M_AGEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_M_AGEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_M_AGEDataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_M_AGEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_M_OCVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_M_OCVDataRequestCommand = nil then
  begin
    FOFI_DP_M_OCVDataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_M_OCVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_M_OCVDataRequestCommand.Text := 'TSM.OFI_DP_M_OCVDataRequest';
    FOFI_DP_M_OCVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_M_OCVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_M_OCVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_M_OCVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_M_OCVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_M_OCVDataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_M_OCVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_C_TIODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_C_TIODataRequestCommand = nil then
  begin
    FOFI_DP_C_TIODataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_C_TIODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_C_TIODataRequestCommand.Text := 'TSM.OFI_DP_C_TIODataRequest';
    FOFI_DP_C_TIODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_C_TIODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_C_TIODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_C_TIODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_C_TIODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_C_TIODataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_C_TIODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_M_ORVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_M_ORVDataRequestCommand = nil then
  begin
    FOFI_DP_M_ORVDataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_M_ORVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_M_ORVDataRequestCommand.Text := 'TSM.OFI_DP_M_ORVDataRequest';
    FOFI_DP_M_ORVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_M_ORVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_M_ORVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_M_ORVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_M_ORVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_M_ORVDataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_M_ORVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_PRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_PRGDataRequestCommand = nil then
  begin
    FCAD_DP_C_PRGDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_PRGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_PRGDataRequestCommand.Text := 'TSM.CAD_DP_C_PRGDataRequest';
    FCAD_DP_C_PRGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_PRGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_PRGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_PRGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_PRGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_PRGDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_PRGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_FTE_ETQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_FTE_ETQDataRequestCommand = nil then
  begin
    FBUS_DP_M_FTE_ETQDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_FTE_ETQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_FTE_ETQDataRequestCommand.Text := 'TSM.BUS_DP_M_FTE_ETQDataRequest';
    FBUS_DP_M_FTE_ETQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_FTE_ETQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_FTE_ETQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_FTE_ETQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_FTE_ETQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_FTE_ETQDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_FTE_ETQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_LME_DOC_DPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_LME_DOC_DPGDataRequestCommand = nil then
  begin
    FBUS_DP_C_LME_DOC_DPGDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_LME_DOC_DPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_LME_DOC_DPGDataRequestCommand.Text := 'TSM.BUS_DP_C_LME_DOC_DPGDataRequest';
    FBUS_DP_C_LME_DOC_DPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_LME_DOC_DPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_LME_DOC_DPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_LME_DOC_DPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_LME_DOC_DPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_LME_DOC_DPGDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_LME_DOC_DPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_IQFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_IQFDataRequestCommand = nil then
  begin
    FPCP_DP_M_IQFDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_IQFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_IQFDataRequestCommand.Text := 'TSM.PCP_DP_M_IQFDataRequest';
    FPCP_DP_M_IQFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_IQFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_IQFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_IQFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_IQFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_IQFDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_IQFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_PCTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_PCTDataRequestCommand = nil then
  begin
    FCAD_DP_R_PCTDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_PCTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_PCTDataRequestCommand.Text := 'TSM.CAD_DP_R_PCTDataRequest';
    FCAD_DP_R_PCTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_PCTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_PCTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_PCTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_PCTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_PCTDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_PCTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_GRUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_GRUDataRequestCommand = nil then
  begin
    FCAD_DP_R_GRUDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_GRUDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_GRUDataRequestCommand.Text := 'TSM.CAD_DP_R_GRUDataRequest';
    FCAD_DP_R_GRUDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_GRUDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_GRUDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_GRUDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_GRUDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_GRUDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_GRUDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_PRQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_PRQDataRequestCommand = nil then
  begin
    FPCP_DP_R_PRQDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_PRQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_PRQDataRequestCommand.Text := 'TSM.PCP_DP_R_PRQDataRequest';
    FPCP_DP_R_PRQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_PRQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_PRQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_PRQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_PRQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_PRQDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_PRQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_FORDataRequestCommand = nil then
  begin
    FCAD_DP_R_FORDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_FORDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_FORDataRequestCommand.Text := 'TSM.CAD_DP_R_FORDataRequest';
    FCAD_DP_R_FORDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_FORDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_FORDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_FORDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_FORDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_FORDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_FORDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_PRPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_PRPDataRequestCommand = nil then
  begin
    FPCP_DP_R_PRPDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_PRPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_PRPDataRequestCommand.Text := 'TSM.PCP_DP_R_PRPDataRequest';
    FPCP_DP_R_PRPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_PRPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_PRPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_PRPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_PRPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_PRPDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_PRPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_LMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_LMEDataRequestCommand = nil then
  begin
    FPCP_DP_R_LMEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_LMEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_LMEDataRequestCommand.Text := 'TSM.PCP_DP_R_LMEDataRequest';
    FPCP_DP_R_LMEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_LMEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_LMEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_LMEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_LMEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_LMEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_LMEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_FPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_FPGDataRequestCommand = nil then
  begin
    FCAD_DP_R_FPGDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_FPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_FPGDataRequestCommand.Text := 'TSM.CAD_DP_R_FPGDataRequest';
    FCAD_DP_R_FPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_FPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_FPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_FPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_FPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_FPGDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_FPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_FAT_NFE_CUSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_FAT_NFE_CUSDataRequestCommand = nil then
  begin
    FBUS_DP_M_FAT_NFE_CUSDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.Text := 'TSM.BUS_DP_M_FAT_NFE_CUSDataRequest';
    FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_CORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_CORDataRequestCommand = nil then
  begin
    FCAD_DP_R_CORDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_CORDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_CORDataRequestCommand.Text := 'TSM.CAD_DP_R_CORDataRequest';
    FCAD_DP_R_CORDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_CORDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_CORDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_CORDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_CORDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_CORDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_CORDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_TAMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_TAMDataRequestCommand = nil then
  begin
    FCAD_DP_R_TAMDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_TAMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_TAMDataRequestCommand.Text := 'TSM.CAD_DP_R_TAMDataRequest';
    FCAD_DP_R_TAMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_TAMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_TAMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_TAMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_TAMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_TAMDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_TAMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_PRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_PRGDataRequestCommand = nil then
  begin
    FCAD_DP_R_PRGDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_PRGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_PRGDataRequestCommand.Text := 'TSM.CAD_DP_R_PRGDataRequest';
    FCAD_DP_R_PRGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_PRGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_PRGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_PRGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_PRGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_PRGDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_PRGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_CTEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_CTEDataRequestCommand = nil then
  begin
    FEST_DP_R_CTEDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_CTEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_CTEDataRequestCommand.Text := 'TSM.EST_DP_R_CTEDataRequest';
    FEST_DP_R_CTEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_CTEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_CTEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_CTEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_CTEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_CTEDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_CTEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_ACRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_ACRDataRequestCommand = nil then
  begin
    FPCP_DP_R_ACRDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_ACRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_ACRDataRequestCommand.Text := 'TSM.PCP_DP_R_ACRDataRequest';
    FPCP_DP_R_ACRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_ACRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_ACRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_ACRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_ACRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_ACRDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_ACRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_CNEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_CNEDataRequestCommand = nil then
  begin
    FCAD_DP_R_CNEDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_CNEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_CNEDataRequestCommand.Text := 'TSM.CAD_DP_R_CNEDataRequest';
    FCAD_DP_R_CNEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_CNEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_CNEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_CNEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_CNEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_CNEDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_CNEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_CFODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_CFODataRequestCommand = nil then
  begin
    FCAD_DP_R_CFODataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_CFODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_CFODataRequestCommand.Text := 'TSM.CAD_DP_R_CFODataRequest';
    FCAD_DP_R_CFODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_CFODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_CFODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_CFODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_CFODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_CFODataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_CFODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_M_IQMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_M_IQMDataRequestCommand = nil then
  begin
    FFAT_DP_M_IQMDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_IQMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_IQMDataRequestCommand.Text := 'TSM.FAT_DP_M_IQMDataRequest';
    FFAT_DP_M_IQMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_IQMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_IQMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_IQMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_IQMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_M_IQMDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_M_IQMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_IQF_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_IQF_FORDataRequestCommand = nil then
  begin
    FBUS_DP_M_IQF_FORDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_IQF_FORDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_IQF_FORDataRequestCommand.Text := 'TSM.BUS_DP_M_IQF_FORDataRequest';
    FBUS_DP_M_IQF_FORDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_IQF_FORDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_IQF_FORDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_IQF_FORDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_IQF_FORDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_IQF_FORDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_IQF_FORDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_TRI_REGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_TRI_REGDataRequestCommand = nil then
  begin
    FCAD_DP_R_TRI_REGDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_TRI_REGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_TRI_REGDataRequestCommand.Text := 'TSM.CAD_DP_R_TRI_REGDataRequest';
    FCAD_DP_R_TRI_REGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_TRI_REGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_TRI_REGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_TRI_REGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_TRI_REGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_TRI_REGDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_TRI_REGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_IQF_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_IQF_NFEDataRequestCommand = nil then
  begin
    FBUS_DP_M_IQF_NFEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_IQF_NFEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_IQF_NFEDataRequestCommand.Text := 'TSM.BUS_DP_M_IQF_NFEDataRequest';
    FBUS_DP_M_IQF_NFEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_IQF_NFEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_IQF_NFEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_IQF_NFEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_IQF_NFEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_IQF_NFEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_IQF_NFEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_FUNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_FUNDataRequestCommand = nil then
  begin
    FCAD_DP_R_FUNDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_FUNDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_FUNDataRequestCommand.Text := 'TSM.CAD_DP_R_FUNDataRequest';
    FCAD_DP_R_FUNDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_FUNDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_FUNDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_FUNDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_FUNDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_FUNDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_FUNDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_IQFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_IQFDataRequestCommand = nil then
  begin
    FPCP_DP_R_IQFDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_IQFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_IQFDataRequestCommand.Text := 'TSM.PCP_DP_R_IQFDataRequest';
    FPCP_DP_R_IQFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_IQFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_IQFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_IQFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_IQFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_IQFDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_IQFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_MOVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_MOVDataRequestCommand = nil then
  begin
    FEST_DP_R_MOVDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_MOVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_MOVDataRequestCommand.Text := 'TSM.EST_DP_R_MOVDataRequest';
    FEST_DP_R_MOVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_MOVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_MOVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_MOVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_MOVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_MOVDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_MOVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_CDPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_CDPDataRequestCommand = nil then
  begin
    FPCP_DP_R_CDPDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_CDPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_CDPDataRequestCommand.Text := 'TSM.PCP_DP_R_CDPDataRequest';
    FPCP_DP_R_CDPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_CDPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_CDPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_CDPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_CDPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_CDPDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_CDPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_CDRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_CDRDataRequestCommand = nil then
  begin
    FPCP_DP_R_CDRDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_CDRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_CDRDataRequestCommand.Text := 'TSM.PCP_DP_R_CDRDataRequest';
    FPCP_DP_R_CDRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_CDRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_CDRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_CDRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_CDRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_CDRDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_CDRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_MEQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_MEQDataRequestCommand = nil then
  begin
    FPCP_DP_R_MEQDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_MEQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_MEQDataRequestCommand.Text := 'TSM.PCP_DP_R_MEQDataRequest';
    FPCP_DP_R_MEQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_MEQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_MEQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_MEQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_MEQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_MEQDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_MEQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_CRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_CRGDataRequestCommand = nil then
  begin
    FPCP_DP_R_CRGDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_CRGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_CRGDataRequestCommand.Text := 'TSM.PCP_DP_R_CRGDataRequest';
    FPCP_DP_R_CRGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_CRGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_CRGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_CRGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_CRGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_CRGDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_CRGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_EST_SLD_ANTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_EST_SLD_ANTDataRequestCommand = nil then
  begin
    FBUS_DP_M_EST_SLD_ANTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_EST_SLD_ANTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_EST_SLD_ANTDataRequestCommand.Text := 'TSM.BUS_DP_M_EST_SLD_ANTDataRequest';
    FBUS_DP_M_EST_SLD_ANTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_EST_SLD_ANTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_EST_SLD_ANTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_EST_SLD_ANTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_EST_SLD_ANTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_EST_SLD_ANTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_EST_SLD_ANTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_FICDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_FICDataRequestCommand = nil then
  begin
    FEST_DP_R_FICDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_FICDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_FICDataRequestCommand.Text := 'TSM.EST_DP_R_FICDataRequest';
    FEST_DP_R_FICDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_FICDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_FICDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_FICDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_FICDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_FICDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_FICDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FAT_DP_M_IQMUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFAT_DP_M_IQMUpdateDataCommand = nil then
  begin
    FFAT_DP_M_IQMUpdateDataCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_IQMUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_IQMUpdateDataCommand.Text := 'TSM.FAT_DP_M_IQMUpdateData';
    FFAT_DP_M_IQMUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_IQMUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_IQMUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_IQMUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFAT_DP_M_IQMUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_IQMUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_IQMUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_IQMUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.FAT_DP_M_IQM_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_M_IQM_ITE_INTDataRequestCommand = nil then
  begin
    FFAT_DP_M_IQM_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_IQM_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_IQM_ITE_INTDataRequestCommand.Text := 'TSM.FAT_DP_M_IQM_ITE_INTDataRequest';
    FFAT_DP_M_IQM_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_IQM_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_IQM_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_IQM_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_IQM_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_M_IQM_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_M_IQM_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_FUN_CRGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_FUN_CRGDataRequestCommand = nil then
  begin
    FBUS_DP_C_FUN_CRGDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_FUN_CRGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_FUN_CRGDataRequestCommand.Text := 'TSM.BUS_DP_C_FUN_CRGDataRequest';
    FBUS_DP_C_FUN_CRGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_FUN_CRGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_FUN_CRGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_FUN_CRGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_FUN_CRGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_FUN_CRGDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_FUN_CRGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_c_obrDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_c_obrDataRequestCommand = nil then
  begin
    Fctc_dp_c_obrDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_c_obrDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_c_obrDataRequestCommand.Text := 'TSM.ctc_dp_c_obrDataRequest';
    Fctc_dp_c_obrDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_c_obrDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_c_obrDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_c_obrDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_c_obrDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_c_obrDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_c_obrDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_c_tprDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_c_tprDataRequestCommand = nil then
  begin
    Fctc_dp_c_tprDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_c_tprDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_c_tprDataRequestCommand.Text := 'TSM.ctc_dp_c_tprDataRequest';
    Fctc_dp_c_tprDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_c_tprDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_c_tprDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_c_tprDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_c_tprDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_c_tprDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_c_tprDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.ctc_dp_m_orcUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if Fctc_dp_m_orcUpdateDataCommand = nil then
  begin
    Fctc_dp_m_orcUpdateDataCommand := FDBXConnection.CreateCommand;
    Fctc_dp_m_orcUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_m_orcUpdateDataCommand.Text := 'TSM.ctc_dp_m_orcUpdateData';
    Fctc_dp_m_orcUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_m_orcUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_orcUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_orcUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    Fctc_dp_m_orcUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_orcUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_orcUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_m_orcUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.ctc_dp_m_orcDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_m_orcDataRequestCommand = nil then
  begin
    Fctc_dp_m_orcDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_m_orcDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_m_orcDataRequestCommand.Text := 'TSM.ctc_dp_m_orcDataRequest';
    Fctc_dp_m_orcDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_m_orcDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_orcDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_orcDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_m_orcDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_m_orcDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_m_orcDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_FAMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_FAMDataRequestCommand = nil then
  begin
    FCAD_DP_C_FAMDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_FAMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_FAMDataRequestCommand.Text := 'TSM.CAD_DP_C_FAMDataRequest';
    FCAD_DP_C_FAMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_FAMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_FAMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_FAMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_FAMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_FAMDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_FAMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_m_facDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_m_facDataRequestCommand = nil then
  begin
    Fctc_dp_m_facDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_m_facDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_m_facDataRequestCommand.Text := 'TSM.ctc_dp_m_facDataRequest';
    Fctc_dp_m_facDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_m_facDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_facDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_facDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_m_facDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_m_facDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_m_facDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_m_avfDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_m_avfDataRequestCommand = nil then
  begin
    Fctc_dp_m_avfDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_m_avfDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_m_avfDataRequestCommand.Text := 'TSM.ctc_dp_m_avfDataRequest';
    Fctc_dp_m_avfDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_m_avfDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_avfDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_avfDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_m_avfDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_m_avfDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_m_avfDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_RECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_RECDataRequestCommand = nil then
  begin
    FBUS_DP_M_RECDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_RECDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_RECDataRequestCommand.Text := 'TSM.BUS_DP_M_RECDataRequest';
    FBUS_DP_M_RECDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_RECDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_RECDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_RECDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_RECDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_RECDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_RECDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_c_epiDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_c_epiDataRequestCommand = nil then
  begin
    Fctc_dp_c_epiDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_c_epiDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_c_epiDataRequestCommand.Text := 'TSM.ctc_dp_c_epiDataRequest';
    Fctc_dp_c_epiDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_c_epiDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_c_epiDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_c_epiDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_c_epiDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_c_epiDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_c_epiDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_m_cepDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_m_cepDataRequestCommand = nil then
  begin
    Fctc_dp_m_cepDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_m_cepDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_m_cepDataRequestCommand.Text := 'TSM.ctc_dp_m_cepDataRequest';
    Fctc_dp_m_cepDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_m_cepDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_cepDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_cepDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_m_cepDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_m_cepDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_m_cepDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_m_cfeDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_m_cfeDataRequestCommand = nil then
  begin
    Fctc_dp_m_cfeDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_m_cfeDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_m_cfeDataRequestCommand.Text := 'TSM.ctc_dp_m_cfeDataRequest';
    Fctc_dp_m_cfeDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_m_cfeDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_cfeDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_cfeDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_m_cfeDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_m_cfeDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_m_cfeDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_m_locDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_m_locDataRequestCommand = nil then
  begin
    Fctc_dp_m_locDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_m_locDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_m_locDataRequestCommand.Text := 'TSM.ctc_dp_m_locDataRequest';
    Fctc_dp_m_locDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_m_locDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_locDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_locDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_m_locDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_m_locDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_m_locDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_m_ofiDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_m_ofiDataRequestCommand = nil then
  begin
    Fctc_dp_m_ofiDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_m_ofiDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_m_ofiDataRequestCommand.Text := 'TSM.ctc_dp_m_ofiDataRequest';
    Fctc_dp_m_ofiDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_m_ofiDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_ofiDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_ofiDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_m_ofiDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_m_ofiDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_m_ofiDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_PAG_BXADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_PAG_BXADataRequestCommand = nil then
  begin
    FFIN_DP_R_PAG_BXADataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_PAG_BXADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_PAG_BXADataRequestCommand.Text := 'TSM.FIN_DP_R_PAG_BXADataRequest';
    FFIN_DP_R_PAG_BXADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_PAG_BXADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_PAG_BXADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_PAG_BXADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_PAG_BXADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_PAG_BXADataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_PAG_BXADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_m_bdeDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_m_bdeDataRequestCommand = nil then
  begin
    Fctc_dp_m_bdeDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_m_bdeDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_m_bdeDataRequestCommand.Text := 'TSM.ctc_dp_m_bdeDataRequest';
    Fctc_dp_m_bdeDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_m_bdeDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_m_bdeDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_m_bdeDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_m_bdeDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_m_bdeDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_m_bdeDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_r_bdeDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_r_bdeDataRequestCommand = nil then
  begin
    Fctc_dp_r_bdeDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_r_bdeDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_r_bdeDataRequestCommand.Text := 'TSM.ctc_dp_r_bdeDataRequest';
    Fctc_dp_r_bdeDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_r_bdeDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_r_bdeDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_r_bdeDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_r_bdeDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_r_bdeDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_r_bdeDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_DEV_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_DEV_FORDataRequestCommand = nil then
  begin
    FFAT_DP_R_DEV_FORDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_DEV_FORDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_DEV_FORDataRequestCommand.Text := 'TSM.FAT_DP_R_DEV_FORDataRequest';
    FFAT_DP_R_DEV_FORDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_DEV_FORDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_DEV_FORDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_DEV_FORDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_DEV_FORDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_DEV_FORDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_DEV_FORDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_REC_ABEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_REC_ABEDataRequestCommand = nil then
  begin
    FFIN_DP_R_REC_ABEDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_REC_ABEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_REC_ABEDataRequestCommand.Text := 'TSM.FIN_DP_R_REC_ABEDataRequest';
    FFIN_DP_R_REC_ABEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_REC_ABEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_REC_ABEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_REC_ABEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_REC_ABEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_REC_ABEDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_REC_ABEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_REC_ABE_PPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_REC_ABE_PPGDataRequestCommand = nil then
  begin
    FFIN_DP_R_REC_ABE_PPGDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_REC_ABE_PPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_REC_ABE_PPGDataRequestCommand.Text := 'TSM.FIN_DP_R_REC_ABE_PPGDataRequest';
    FFIN_DP_R_REC_ABE_PPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_REC_ABE_PPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_REC_ABE_PPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_REC_ABE_PPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_REC_ABE_PPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_REC_ABE_PPGDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_REC_ABE_PPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_REC_BXADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_REC_BXADataRequestCommand = nil then
  begin
    FFIN_DP_R_REC_BXADataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_REC_BXADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_REC_BXADataRequestCommand.Text := 'TSM.FIN_DP_R_REC_BXADataRequest';
    FFIN_DP_R_REC_BXADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_REC_BXADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_REC_BXADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_REC_BXADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_REC_BXADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_REC_BXADataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_REC_BXADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_REC_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_REC_PAGDataRequestCommand = nil then
  begin
    FFIN_DP_M_REC_PAGDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_REC_PAGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_REC_PAGDataRequestCommand.Text := 'TSM.FIN_DP_M_REC_PAGDataRequest';
    FFIN_DP_M_REC_PAGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_REC_PAGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_REC_PAGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_REC_PAGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_REC_PAGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_REC_PAGDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_REC_PAGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FIN_DP_M_RBXUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFIN_DP_M_RBXUpdateDataCommand = nil then
  begin
    FFIN_DP_M_RBXUpdateDataCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_RBXUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_RBXUpdateDataCommand.Text := 'TSM.FIN_DP_M_RBXUpdateData';
    FFIN_DP_M_RBXUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_RBXUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RBXUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RBXUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFIN_DP_M_RBXUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RBXUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RBXUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_RBXUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.FIN_DP_M_RBX_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_RBX_TIT_INTDataRequestCommand = nil then
  begin
    FFIN_DP_M_RBX_TIT_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_RBX_TIT_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_RBX_TIT_INTDataRequestCommand.Text := 'TSM.FIN_DP_M_RBX_TIT_INTDataRequest';
    FFIN_DP_M_RBX_TIT_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_RBX_TIT_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RBX_TIT_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RBX_TIT_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_RBX_TIT_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_RBX_TIT_INTDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_RBX_TIT_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_REC_ABE_PRRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_REC_ABE_PRRDataRequestCommand = nil then
  begin
    FFIN_DP_R_REC_ABE_PRRDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_REC_ABE_PRRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_REC_ABE_PRRDataRequestCommand.Text := 'TSM.FIN_DP_R_REC_ABE_PRRDataRequest';
    FFIN_DP_R_REC_ABE_PRRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_REC_ABE_PRRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_REC_ABE_PRRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_REC_ABE_PRRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_REC_ABE_PRRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_REC_ABE_PRRDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_REC_ABE_PRRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_MCHDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_MCHDataRequestCommand = nil then
  begin
    FFIN_DP_M_MCHDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_MCHDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_MCHDataRequestCommand.Text := 'TSM.FIN_DP_M_MCHDataRequest';
    FFIN_DP_M_MCHDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_MCHDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_MCHDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_MCHDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_MCHDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_MCHDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_MCHDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_ULT_NFE_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ULT_NFE_ITEDataRequestCommand = nil then
  begin
    FBUS_DP_M_ULT_NFE_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.Text := 'TSM.BUS_DP_M_ULT_NFE_ITEDataRequest';
    FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_CSU_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_CSU_ITEDataRequestCommand = nil then
  begin
    FBUS_DP_CSU_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_CSU_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_CSU_ITEDataRequestCommand.Text := 'TSM.BUS_DP_CSU_ITEDataRequest';
    FBUS_DP_CSU_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_CSU_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_CSU_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_CSU_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_CSU_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_CSU_ITEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_CSU_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_ITE_XMLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_ITE_XMLDataRequestCommand = nil then
  begin
    FBUS_DP_C_ITE_XMLDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_ITE_XMLDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_ITE_XMLDataRequestCommand.Text := 'TSM.BUS_DP_C_ITE_XMLDataRequest';
    FBUS_DP_C_ITE_XMLDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_ITE_XMLDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_ITE_XMLDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_ITE_XMLDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_ITE_XMLDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_ITE_XMLDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_ITE_XMLDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_PAR_CPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_PAR_CPGDataRequestCommand = nil then
  begin
    FBUS_DP_C_PAR_CPGDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_PAR_CPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_PAR_CPGDataRequestCommand.Text := 'TSM.BUS_DP_C_PAR_CPGDataRequest';
    FBUS_DP_C_PAR_CPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_PAR_CPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_PAR_CPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_PAR_CPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_PAR_CPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_PAR_CPGDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_PAR_CPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_NFE_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_NFE_ITEDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_NFE_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_NFE_ITEDataRequest';
    FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_FEA_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_FEA_ITEDataRequestCommand = nil then
  begin
    FBUS_DP_M_FEA_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_FEA_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_FEA_ITEDataRequestCommand.Text := 'TSM.BUS_DP_M_FEA_ITEDataRequest';
    FBUS_DP_M_FEA_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_FEA_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_FEA_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_FEA_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_FEA_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_FEA_ITEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_FEA_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_FOR_SLD_TITDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_FOR_SLD_TITDataRequestCommand = nil then
  begin
    FBUS_DP_M_FOR_SLD_TITDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_FOR_SLD_TITDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_FOR_SLD_TITDataRequestCommand.Text := 'TSM.BUS_DP_M_FOR_SLD_TITDataRequest';
    FBUS_DP_M_FOR_SLD_TITDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_FOR_SLD_TITDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_FOR_SLD_TITDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_FOR_SLD_TITDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_FOR_SLD_TITDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_FOR_SLD_TITDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_FOR_SLD_TITDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_ORCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_ORCDataRequestCommand = nil then
  begin
    FFIN_DP_M_ORCDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_ORCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_ORCDataRequestCommand.Text := 'TSM.FIN_DP_M_ORCDataRequest';
    FFIN_DP_M_ORCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_ORCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_ORCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_ORCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_ORCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_ORCDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_ORCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_PAG_DIADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_PAG_DIADataRequestCommand = nil then
  begin
    FBUS_DP_M_PAG_DIADataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_PAG_DIADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_PAG_DIADataRequestCommand.Text := 'TSM.BUS_DP_M_PAG_DIADataRequest';
    FBUS_DP_M_PAG_DIADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_PAG_DIADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_PAG_DIADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_PAG_DIADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_PAG_DIADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_PAG_DIADataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_PAG_DIADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_REC_DIADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_REC_DIADataRequestCommand = nil then
  begin
    FBUS_DP_M_REC_DIADataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_REC_DIADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_REC_DIADataRequestCommand.Text := 'TSM.BUS_DP_M_REC_DIADataRequest';
    FBUS_DP_M_REC_DIADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_REC_DIADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_REC_DIADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_REC_DIADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_REC_DIADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_REC_DIADataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_REC_DIADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PVE_01DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PVE_01DataRequestCommand = nil then
  begin
    FFAT_DP_R_PVE_01DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PVE_01DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PVE_01DataRequestCommand.Text := 'TSM.FAT_DP_R_PVE_01DataRequest';
    FFAT_DP_R_PVE_01DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PVE_01DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PVE_01DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PVE_01DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PVE_01DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PVE_01DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PVE_01DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_PAR_CTRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_PAR_CTRDataRequestCommand = nil then
  begin
    FBUS_DP_C_PAR_CTRDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_PAR_CTRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_PAR_CTRDataRequestCommand.Text := 'TSM.BUS_DP_C_PAR_CTRDataRequest';
    FBUS_DP_C_PAR_CTRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_PAR_CTRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_PAR_CTRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_PAR_CTRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_PAR_CTRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_PAR_CTRDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_PAR_CTRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_PAR_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_PAR_NFEDataRequestCommand = nil then
  begin
    FBUS_DP_C_PAR_NFEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_PAR_NFEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_PAR_NFEDataRequestCommand.Text := 'TSM.BUS_DP_C_PAR_NFEDataRequest';
    FBUS_DP_C_PAR_NFEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_PAR_NFEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_PAR_NFEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_PAR_NFEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_PAR_NFEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_PAR_NFEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_PAR_NFEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PVE_02DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PVE_02DataRequestCommand = nil then
  begin
    FFAT_DP_R_PVE_02DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PVE_02DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PVE_02DataRequestCommand.Text := 'TSM.FAT_DP_R_PVE_02DataRequest';
    FFAT_DP_R_PVE_02DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PVE_02DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PVE_02DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PVE_02DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PVE_02DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PVE_02DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PVE_02DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PVE_03DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PVE_03DataRequestCommand = nil then
  begin
    FFAT_DP_R_PVE_03DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PVE_03DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PVE_03DataRequestCommand.Text := 'TSM.FAT_DP_R_PVE_03DataRequest';
    FFAT_DP_R_PVE_03DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PVE_03DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PVE_03DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PVE_03DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PVE_03DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PVE_03DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PVE_03DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PVE_04DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PVE_04DataRequestCommand = nil then
  begin
    FFAT_DP_R_PVE_04DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PVE_04DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PVE_04DataRequestCommand.Text := 'TSM.FAT_DP_R_PVE_04DataRequest';
    FFAT_DP_R_PVE_04DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PVE_04DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PVE_04DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PVE_04DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PVE_04DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PVE_04DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PVE_04DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PVE_05DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PVE_05DataRequestCommand = nil then
  begin
    FFAT_DP_R_PVE_05DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PVE_05DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PVE_05DataRequestCommand.Text := 'TSM.FAT_DP_R_PVE_05DataRequest';
    FFAT_DP_R_PVE_05DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PVE_05DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PVE_05DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PVE_05DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PVE_05DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PVE_05DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PVE_05DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_ICM_CSTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_ICM_CSTDataRequestCommand = nil then
  begin
    FFAT_DP_R_ICM_CSTDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_ICM_CSTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_ICM_CSTDataRequestCommand.Text := 'TSM.FAT_DP_R_ICM_CSTDataRequest';
    FFAT_DP_R_ICM_CSTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_ICM_CSTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_ICM_CSTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_ICM_CSTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_ICM_CSTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_ICM_CSTDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_ICM_CSTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_ICM_CFODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_ICM_CFODataRequestCommand = nil then
  begin
    FFAT_DP_R_ICM_CFODataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_ICM_CFODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_ICM_CFODataRequestCommand.Text := 'TSM.FAT_DP_R_ICM_CFODataRequest';
    FFAT_DP_R_ICM_CFODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_ICM_CFODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_ICM_CFODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_ICM_CFODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_ICM_CFODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_ICM_CFODataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_ICM_CFODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_ICM_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_ICM_ITEDataRequestCommand = nil then
  begin
    FFAT_DP_R_ICM_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_ICM_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_ICM_ITEDataRequestCommand.Text := 'TSM.FAT_DP_R_ICM_ITEDataRequest';
    FFAT_DP_R_ICM_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_ICM_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_ICM_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_ICM_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_ICM_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_ICM_ITEDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_ICM_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PIS_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PIS_ITEDataRequestCommand = nil then
  begin
    FFAT_DP_R_PIS_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PIS_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PIS_ITEDataRequestCommand.Text := 'TSM.FAT_DP_R_PIS_ITEDataRequest';
    FFAT_DP_R_PIS_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PIS_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PIS_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PIS_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PIS_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PIS_ITEDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PIS_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PIS_CIPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PIS_CIPDataRequestCommand = nil then
  begin
    FFAT_DP_R_PIS_CIPDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PIS_CIPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PIS_CIPDataRequestCommand.Text := 'TSM.FAT_DP_R_PIS_CIPDataRequest';
    FFAT_DP_R_PIS_CIPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PIS_CIPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PIS_CIPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PIS_CIPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PIS_CIPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PIS_CIPDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PIS_CIPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_RET_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_RET_CLIDataRequestCommand = nil then
  begin
    FFAT_DP_R_RET_CLIDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_RET_CLIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_RET_CLIDataRequestCommand.Text := 'TSM.FAT_DP_R_RET_CLIDataRequest';
    FFAT_DP_R_RET_CLIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_RET_CLIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_RET_CLIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_RET_CLIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_RET_CLIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_RET_CLIDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_RET_CLIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_RET_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_RET_ITEDataRequestCommand = nil then
  begin
    FFAT_DP_R_RET_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_RET_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_RET_ITEDataRequestCommand.Text := 'TSM.FAT_DP_R_RET_ITEDataRequest';
    FFAT_DP_R_RET_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_RET_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_RET_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_RET_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_RET_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_RET_ITEDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_RET_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_ECF_FPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_ECF_FPGDataRequestCommand = nil then
  begin
    FBUS_DP_C_ECF_FPGDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_ECF_FPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_ECF_FPGDataRequestCommand.Text := 'TSM.BUS_DP_C_ECF_FPGDataRequest';
    FBUS_DP_C_ECF_FPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_ECF_FPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_ECF_FPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_ECF_FPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_ECF_FPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_ECF_FPGDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_ECF_FPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.DP_BR_PREVENDADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FDP_BR_PREVENDADataRequestCommand = nil then
  begin
    FDP_BR_PREVENDADataRequestCommand := FDBXConnection.CreateCommand;
    FDP_BR_PREVENDADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDP_BR_PREVENDADataRequestCommand.Text := 'TSM.DP_BR_PREVENDADataRequest';
    FDP_BR_PREVENDADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDP_BR_PREVENDADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDP_BR_PREVENDADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDP_BR_PREVENDADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDP_BR_PREVENDADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FDP_BR_PREVENDADataRequestCommand.ExecuteUpdate;
  Result := FDP_BR_PREVENDADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.DP_BR_SEQ_IDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FDP_BR_SEQ_IDDataRequestCommand = nil then
  begin
    FDP_BR_SEQ_IDDataRequestCommand := FDBXConnection.CreateCommand;
    FDP_BR_SEQ_IDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDP_BR_SEQ_IDDataRequestCommand.Text := 'TSM.DP_BR_SEQ_IDDataRequest';
    FDP_BR_SEQ_IDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDP_BR_SEQ_IDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDP_BR_SEQ_IDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDP_BR_SEQ_IDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDP_BR_SEQ_IDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FDP_BR_SEQ_IDDataRequestCommand.ExecuteUpdate;
  Result := FDP_BR_SEQ_IDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_POS_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_POS_ITEDataRequestCommand = nil then
  begin
    FBUS_DP_M_POS_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_POS_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_POS_ITEDataRequestCommand.Text := 'TSM.BUS_DP_M_POS_ITEDataRequest';
    FBUS_DP_M_POS_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_POS_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_POS_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_POS_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_POS_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_POS_ITEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_POS_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FAT_DP_M_PEDUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFAT_DP_M_PEDUpdateDataCommand = nil then
  begin
    FFAT_DP_M_PEDUpdateDataCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_PEDUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_PEDUpdateDataCommand.Text := 'TSM.FAT_DP_M_PEDUpdateData';
    FFAT_DP_M_PEDUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_PEDUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_PEDUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_PEDUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFAT_DP_M_PEDUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_PEDUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_PEDUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_PEDUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.FAT_DP_R_RET_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_RET_FORDataRequestCommand = nil then
  begin
    FFAT_DP_R_RET_FORDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_RET_FORDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_RET_FORDataRequestCommand.Text := 'TSM.FAT_DP_R_RET_FORDataRequest';
    FFAT_DP_R_RET_FORDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_RET_FORDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_RET_FORDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_RET_FORDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_RET_FORDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_RET_FORDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_RET_FORDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_RET_GRUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_RET_GRUDataRequestCommand = nil then
  begin
    FFAT_DP_R_RET_GRUDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_RET_GRUDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_RET_GRUDataRequestCommand.Text := 'TSM.FAT_DP_R_RET_GRUDataRequest';
    FFAT_DP_R_RET_GRUDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_RET_GRUDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_RET_GRUDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_RET_GRUDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_RET_GRUDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_RET_GRUDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_RET_GRUDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_RET_VNDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_RET_VNDDataRequestCommand = nil then
  begin
    FFAT_DP_R_RET_VNDDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_RET_VNDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_RET_VNDDataRequestCommand.Text := 'TSM.FAT_DP_R_RET_VNDDataRequest';
    FFAT_DP_R_RET_VNDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_RET_VNDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_RET_VNDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_RET_VNDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_RET_VNDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_RET_VNDDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_RET_VNDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.EST_DP_M_MALUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FEST_DP_M_MALUpdateDataCommand = nil then
  begin
    FEST_DP_M_MALUpdateDataCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_MALUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_MALUpdateDataCommand.Text := 'TSM.EST_DP_M_MALUpdateData';
    FEST_DP_M_MALUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_MALUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_MALUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_MALUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FEST_DP_M_MALUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_MALUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_MALUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_MALUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_M_MAL_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_MAL_ITE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_MAL_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_MAL_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_MAL_ITE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_MAL_ITE_INTDataRequest';
    FBUS_DP_M_MAL_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_MAL_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_MAL_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_MAL_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_MAL_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_MAL_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_MAL_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFE_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFE_ITE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFE_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFE_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFE_ITE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_NFE_ITE_INTDataRequest';
    FBUS_DP_M_NFE_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFE_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFE_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFE_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFE_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFE_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFE_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_PED_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_PED_ITE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_PED_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_PED_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_PED_ITE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_PED_ITE_INTDataRequest';
    FBUS_DP_M_PED_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_PED_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_PED_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_PED_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_PED_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_PED_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_PED_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CXA_DIADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIADataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIADataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIADataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIADataRequest';
    FFIN_DP_R_CXA_DIADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIADataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CXA_DIA_SLADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIA_SLADataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIA_SLADataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIA_SLADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIA_SLADataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIA_SLADataRequest';
    FFIN_DP_R_CXA_DIA_SLADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIA_SLADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIA_SLADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIA_SLADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIA_SLADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIA_SLADataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIA_SLADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CXA_DIA_VNDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIA_VNDDataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIA_VNDDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIA_VNDDataRequest';
    FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CXA_DIA_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIA_PAGDataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIA_PAGDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIA_PAGDataRequest';
    FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CXA_DIA_RECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIA_RECDataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIA_RECDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIA_RECDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIA_RECDataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIA_RECDataRequest';
    FFIN_DP_R_CXA_DIA_RECDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIA_RECDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIA_RECDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIA_RECDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIA_RECDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIA_RECDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIA_RECDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CXA_DIA_MOPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIA_MOPDataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIA_MOPDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIA_MOPDataRequest';
    FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CXA_DIA_MPLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIA_MPLDataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIA_MPLDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIA_MPLDataRequest';
    FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_BR_PREVENDADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_BR_PREVENDADataRequestCommand = nil then
  begin
    FBUS_DP_BR_PREVENDADataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_BR_PREVENDADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_BR_PREVENDADataRequestCommand.Text := 'TSM.BUS_DP_BR_PREVENDADataRequest';
    FBUS_DP_BR_PREVENDADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_BR_PREVENDADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_BR_PREVENDADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_BR_PREVENDADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_BR_PREVENDADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_BR_PREVENDADataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_BR_PREVENDADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFE_TIT_GRPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFE_TIT_GRPDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFE_TIT_GRPDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.Text := 'TSM.BUS_DP_M_NFE_TIT_GRPDataRequest';
    FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_ECF_FPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_ECF_FPGDataRequestCommand = nil then
  begin
    FCAD_DP_R_ECF_FPGDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_ECF_FPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_ECF_FPGDataRequestCommand.Text := 'TSM.CAD_DP_R_ECF_FPGDataRequest';
    FCAD_DP_R_ECF_FPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_ECF_FPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_ECF_FPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_ECF_FPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_ECF_FPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_ECF_FPGDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_ECF_FPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFE_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFE_TIT_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFE_TIT_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFE_TIT_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFE_TIT_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_NFE_TIT_INTDataRequest';
    FBUS_DP_M_NFE_TIT_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFE_TIT_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFE_TIT_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFE_TIT_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFE_TIT_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFE_TIT_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFE_TIT_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_PED_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_PED_TIT_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_PED_TIT_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_PED_TIT_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_PED_TIT_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_PED_TIT_INTDataRequest';
    FBUS_DP_M_PED_TIT_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_PED_TIT_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_PED_TIT_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_PED_TIT_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_PED_TIT_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_PED_TIT_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_PED_TIT_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_CRP_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_CRP_ITEDataRequestCommand = nil then
  begin
    FPCP_DP_R_CRP_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_CRP_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_CRP_ITEDataRequestCommand.Text := 'TSM.PCP_DP_R_CRP_ITEDataRequest';
    FPCP_DP_R_CRP_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_CRP_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_CRP_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_CRP_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_CRP_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_CRP_ITEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_CRP_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_INVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_INVDataRequestCommand = nil then
  begin
    FEST_DP_R_INVDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_INVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_INVDataRequestCommand.Text := 'TSM.EST_DP_R_INVDataRequest';
    FEST_DP_R_INVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_INVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_INVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_INVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_INVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_INVDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_INVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_R_CRP_ITE_BXIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_CRP_ITE_BXIDataRequestCommand = nil then
  begin
    FPCP_DP_R_CRP_ITE_BXIDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.Text := 'TSM.PCP_DP_R_CRP_ITE_BXIDataRequest';
    FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_ABC_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_ABC_CLIDataRequestCommand = nil then
  begin
    FFAT_DP_R_ABC_CLIDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_ABC_CLIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_ABC_CLIDataRequestCommand.Text := 'TSM.FAT_DP_R_ABC_CLIDataRequest';
    FFAT_DP_R_ABC_CLIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_ABC_CLIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_ABC_CLIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_ABC_CLIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_ABC_CLIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_ABC_CLIDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_ABC_CLIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_ABC_FORDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_ABC_FORDataRequestCommand = nil then
  begin
    FFAT_DP_R_ABC_FORDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_ABC_FORDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_ABC_FORDataRequestCommand.Text := 'TSM.FAT_DP_R_ABC_FORDataRequest';
    FFAT_DP_R_ABC_FORDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_ABC_FORDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_ABC_FORDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_ABC_FORDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_ABC_FORDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_ABC_FORDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_ABC_FORDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_ABC_GRUDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_ABC_GRUDataRequestCommand = nil then
  begin
    FFAT_DP_R_ABC_GRUDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_ABC_GRUDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_ABC_GRUDataRequestCommand.Text := 'TSM.FAT_DP_R_ABC_GRUDataRequest';
    FFAT_DP_R_ABC_GRUDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_ABC_GRUDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_ABC_GRUDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_ABC_GRUDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_ABC_GRUDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_ABC_GRUDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_ABC_GRUDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_COB_COBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_COB_COBDataRequestCommand = nil then
  begin
    FFIN_DP_R_COB_COBDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_COB_COBDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_COB_COBDataRequestCommand.Text := 'TSM.FIN_DP_R_COB_COBDataRequest';
    FFIN_DP_R_COB_COBDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_COB_COBDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_COB_COBDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_COB_COBDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_COB_COBDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_COB_COBDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_COB_COBDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_COB_ACODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_COB_ACODataRequestCommand = nil then
  begin
    FFIN_DP_R_COB_ACODataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_COB_ACODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_COB_ACODataRequestCommand.Text := 'TSM.FIN_DP_R_COB_ACODataRequest';
    FFIN_DP_R_COB_ACODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_COB_ACODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_COB_ACODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_COB_ACODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_COB_ACODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_COB_ACODataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_COB_ACODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CTE_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CTE_ITE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_CTE_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CTE_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CTE_ITE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_CTE_ITE_INTDataRequest';
    FBUS_DP_M_CTE_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CTE_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CTE_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CTE_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CTE_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CTE_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CTE_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_EXT_CLI_ABEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_EXT_CLI_ABEDataRequestCommand = nil then
  begin
    FFIN_DP_R_EXT_CLI_ABEDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.Text := 'TSM.FIN_DP_R_EXT_CLI_ABEDataRequest';
    FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_EXT_CLI_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_EXT_CLI_PAGDataRequestCommand = nil then
  begin
    FFIN_DP_R_EXT_CLI_PAGDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.Text := 'TSM.FIN_DP_R_EXT_CLI_PAGDataRequest';
    FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_EXT_FOR_ABEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_EXT_FOR_ABEDataRequestCommand = nil then
  begin
    FFIN_DP_R_EXT_FOR_ABEDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.Text := 'TSM.FIN_DP_R_EXT_FOR_ABEDataRequest';
    FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_EXT_FOR_PAGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_EXT_FOR_PAGDataRequestCommand = nil then
  begin
    FFIN_DP_R_EXT_FOR_PAGDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.Text := 'TSM.FIN_DP_R_EXT_FOR_PAGDataRequest';
    FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FIN_DP_M_CXAUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFIN_DP_M_CXAUpdateDataCommand = nil then
  begin
    FFIN_DP_M_CXAUpdateDataCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_CXAUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_CXAUpdateDataCommand.Text := 'TSM.FIN_DP_M_CXAUpdateData';
    FFIN_DP_M_CXAUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_CXAUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CXAUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CXAUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFIN_DP_M_CXAUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CXAUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CXAUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_CXAUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_M_NFE_DEV_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_NFE_DEV_ITE_INTDataRequest';
    FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFE_DEV_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFE_DEV_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFE_DEV_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFE_DEV_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFE_DEV_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_NFE_DEV_INTDataRequest';
    FBUS_DP_M_NFE_DEV_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFE_DEV_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFE_DEV_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFE_DEV_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFE_DEV_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFE_DEV_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFE_DEV_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_NFE_INTDataRequest';
    FBUS_DP_M_NFE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_EXT_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_EXT_ITEDataRequestCommand = nil then
  begin
    FBUS_DP_M_EXT_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_EXT_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_EXT_ITEDataRequestCommand.Text := 'TSM.BUS_DP_M_EXT_ITEDataRequest';
    FBUS_DP_M_EXT_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_EXT_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_EXT_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_EXT_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_EXT_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_EXT_ITEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_EXT_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_TER_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_TER_NFEDataRequestCommand = nil then
  begin
    FBUS_DP_M_TER_NFEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_TER_NFEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_TER_NFEDataRequestCommand.Text := 'TSM.BUS_DP_M_TER_NFEDataRequest';
    FBUS_DP_M_TER_NFEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_TER_NFEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_TER_NFEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_TER_NFEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_TER_NFEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_TER_NFEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_TER_NFEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_NFEDataRequestCommand = nil then
  begin
    FFAT_DP_R_NFEDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_NFEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_NFEDataRequestCommand.Text := 'TSM.FAT_DP_R_NFEDataRequest';
    FFAT_DP_R_NFEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_NFEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_NFEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_NFEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_NFEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_NFEDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_NFEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_NFE_TMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_NFE_TMEDataRequestCommand = nil then
  begin
    FFAT_DP_R_NFE_TMEDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_NFE_TMEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_NFE_TMEDataRequestCommand.Text := 'TSM.FAT_DP_R_NFE_TMEDataRequest';
    FFAT_DP_R_NFE_TMEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_NFE_TMEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_NFE_TMEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_NFE_TMEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_NFE_TMEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_NFE_TMEDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_NFE_TMEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_NFE_CFODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_NFE_CFODataRequestCommand = nil then
  begin
    FFAT_DP_R_NFE_CFODataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_NFE_CFODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_NFE_CFODataRequestCommand.Text := 'TSM.FAT_DP_R_NFE_CFODataRequest';
    FFAT_DP_R_NFE_CFODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_NFE_CFODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_NFE_CFODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_NFE_CFODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_NFE_CFODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_NFE_CFODataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_NFE_CFODataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TSM.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

procedure TSMClient.DSServerModuleDestroy(Sender: TObject);
begin
  if FDSServerModuleDestroyCommand = nil then
  begin
    FDSServerModuleDestroyCommand := FDBXConnection.CreateCommand;
    FDSServerModuleDestroyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleDestroyCommand.Text := 'TSM.DSServerModuleDestroy';
    FDSServerModuleDestroyCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleDestroyCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleDestroyCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleDestroyCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleDestroyCommand.ExecuteUpdate;
end;

function TSMClient.FAT_DP_R_GAM_150DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_150DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_150DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_150DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_150DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_150DataRequest';
    FFAT_DP_R_GAM_150DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_150DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_150DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_150DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_150DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_150DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_150DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_E20DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_E20DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_E20DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_E20DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_E20DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_E20DataRequest';
    FFAT_DP_R_GAM_E20DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_E20DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_E20DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_E20DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_E20DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_E20DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_E20DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_E25DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_E25DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_E25DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_E25DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_E25DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_E25DataRequest';
    FFAT_DP_R_GAM_E25DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_E25DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_E25DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_E25DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_E25DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_E25DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_E25DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_100DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_100DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_100DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_100DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_100DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_100DataRequest';
    FFAT_DP_R_GAM_100DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_100DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_100DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_100DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_100DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_100DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_100DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_105DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_105DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_105DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_105DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_105DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_105DataRequest';
    FFAT_DP_R_GAM_105DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_105DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_105DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_105DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_105DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_105DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_105DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_PED_NIPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_PED_NIPDataRequestCommand = nil then
  begin
    FBUS_DP_M_PED_NIPDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_PED_NIPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_PED_NIPDataRequestCommand.Text := 'TSM.BUS_DP_M_PED_NIPDataRequest';
    FBUS_DP_M_PED_NIPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_PED_NIPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_PED_NIPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_PED_NIPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_PED_NIPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_PED_NIPDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_PED_NIPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_120DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_120DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_120DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_120DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_120DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_120DataRequest';
    FFAT_DP_R_GAM_120DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_120DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_120DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_120DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_120DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_120DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_120DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_CLIDataRequestCommand = nil then
  begin
    FCAD_DP_R_CLIDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_CLIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_CLIDataRequestCommand.Text := 'TSM.CAD_DP_R_CLIDataRequest';
    FCAD_DP_R_CLIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_CLIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_CLIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_CLIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_CLIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_CLIDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_CLIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_H30DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_H30DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_H30DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_H30DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_H30DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_H30DataRequest';
    FFAT_DP_R_GAM_H30DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_H30DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_H30DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_H30DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_H30DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_H30DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_H30DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_H20DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_H20DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_H20DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_H20DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_H20DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_H20DataRequest';
    FFAT_DP_R_GAM_H20DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_H20DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_H20DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_H20DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_H20DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_H20DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_H20DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_H50DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_H50DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_H50DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_H50DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_H50DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_H50DataRequest';
    FFAT_DP_R_GAM_H50DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_H50DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_H50DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_H50DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_H50DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_H50DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_H50DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_H60DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_H60DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_H60DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_H60DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_H60DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_H60DataRequest';
    FFAT_DP_R_GAM_H60DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_H60DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_H60DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_H60DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_H60DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_H60DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_H60DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CXA_RES_CARDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CXA_RES_CARDataRequestCommand = nil then
  begin
    FBUS_DP_M_CXA_RES_CARDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CXA_RES_CARDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CXA_RES_CARDataRequestCommand.Text := 'TSM.BUS_DP_M_CXA_RES_CARDataRequest';
    FBUS_DP_M_CXA_RES_CARDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CXA_RES_CARDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CXA_RES_CARDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CXA_RES_CARDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CXA_RES_CARDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CXA_RES_CARDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CXA_RES_CARDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CXA_DET_CNFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CXA_DET_CNFDataRequestCommand = nil then
  begin
    FBUS_DP_M_CXA_DET_CNFDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CXA_DET_CNFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CXA_DET_CNFDataRequestCommand.Text := 'TSM.BUS_DP_M_CXA_DET_CNFDataRequest';
    FBUS_DP_M_CXA_DET_CNFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CXA_DET_CNFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CXA_DET_CNFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CXA_DET_CNFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CXA_DET_CNFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CXA_DET_CNFDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CXA_DET_CNFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CXA_DET_CRBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CXA_DET_CRBDataRequestCommand = nil then
  begin
    FBUS_DP_M_CXA_DET_CRBDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CXA_DET_CRBDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CXA_DET_CRBDataRequestCommand.Text := 'TSM.BUS_DP_M_CXA_DET_CRBDataRequest';
    FBUS_DP_M_CXA_DET_CRBDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CXA_DET_CRBDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CXA_DET_CRBDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CXA_DET_CRBDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CXA_DET_CRBDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CXA_DET_CRBDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CXA_DET_CRBDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CXA_CARDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CXA_CARDataRequestCommand = nil then
  begin
    FBUS_DP_M_CXA_CARDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CXA_CARDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CXA_CARDataRequestCommand.Text := 'TSM.BUS_DP_M_CXA_CARDataRequest';
    FBUS_DP_M_CXA_CARDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CXA_CARDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CXA_CARDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CXA_CARDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CXA_CARDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CXA_CARDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CXA_CARDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_PESDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_PESDataRequestCommand = nil then
  begin
    FCAD_DP_R_PESDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_PESDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_PESDataRequestCommand.Text := 'TSM.CAD_DP_R_PESDataRequest';
    FCAD_DP_R_PESDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_PESDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_PESDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_PESDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_PESDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_PESDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_PESDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_TMEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_TMEDataRequestCommand = nil then
  begin
    FCAD_DP_R_TMEDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_TMEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_TMEDataRequestCommand.Text := 'TSM.CAD_DP_R_TMEDataRequest';
    FCAD_DP_R_TMEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_TMEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_TMEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_TMEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_TMEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_TMEDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_TMEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_MCHDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_MCHDataRequestCommand = nil then
  begin
    FFIN_DP_R_MCHDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_MCHDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_MCHDataRequestCommand.Text := 'TSM.FIN_DP_R_MCHDataRequest';
    FFIN_DP_R_MCHDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_MCHDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_MCHDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_MCHDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_MCHDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_MCHDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_MCHDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_C20DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_C20DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_C20DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_C20DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_C20DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_C20DataRequest';
    FFAT_DP_R_GAM_C20DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_C20DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_C20DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_C20DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_C20DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_C20DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_C20DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_300DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_300DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_300DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_300DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_300DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_300DataRequest';
    FFAT_DP_R_GAM_300DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_300DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_300DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_300DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_300DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_300DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_300DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_600DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_600DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_600DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_600DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_600DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_600DataRequest';
    FFAT_DP_R_GAM_600DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_600DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_600DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_600DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_600DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_600DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_600DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_610DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_610DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_610DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_610DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_610DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_610DataRequest';
    FFAT_DP_R_GAM_610DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_610DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_610DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_610DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_610DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_610DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_610DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_200DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_200DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_200DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_200DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_200DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_200DataRequest';
    FFAT_DP_R_GAM_200DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_200DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_200DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_200DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_200DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_200DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_200DataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FIN_DP_M_MCHUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFIN_DP_M_MCHUpdateDataCommand = nil then
  begin
    FFIN_DP_M_MCHUpdateDataCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_MCHUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_MCHUpdateDataCommand.Text := 'TSM.FIN_DP_M_MCHUpdateData';
    FFIN_DP_M_MCHUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_MCHUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_MCHUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_MCHUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFIN_DP_M_MCHUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_MCHUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_MCHUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_MCHUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.FAT_DP_M_ROMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_M_ROMDataRequestCommand = nil then
  begin
    FFAT_DP_M_ROMDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_ROMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_ROMDataRequestCommand.Text := 'TSM.FAT_DP_M_ROMDataRequest';
    FFAT_DP_M_ROMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_ROMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_ROMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_ROMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_ROMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_M_ROMDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_M_ROMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_MCH_CHE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_MCH_CHE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_MCH_CHE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_MCH_CHE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_MCH_CHE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_MCH_CHE_INTDataRequest';
    FBUS_DP_M_MCH_CHE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_MCH_CHE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_MCH_CHE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_MCH_CHE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_MCH_CHE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_MCH_CHE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_MCH_CHE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_REC_HCH_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_REC_HCH_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_REC_HCH_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_REC_HCH_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_REC_HCH_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_REC_HCH_INTDataRequest';
    FBUS_DP_M_REC_HCH_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_REC_HCH_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_REC_HCH_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_REC_HCH_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_REC_HCH_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_REC_HCH_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_REC_HCH_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CON_CTA_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CON_CTA_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_CON_CTA_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CON_CTA_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CON_CTA_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_CON_CTA_INTDataRequest';
    FBUS_DP_M_CON_CTA_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CON_CTA_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CON_CTA_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CON_CTA_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CON_CTA_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CON_CTA_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CON_CTA_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CON_GER_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CON_GER_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_CON_GER_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CON_GER_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CON_GER_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_CON_GER_INTDataRequest';
    FBUS_DP_M_CON_GER_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CON_GER_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CON_GER_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CON_GER_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CON_GER_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CON_GER_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CON_GER_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FIN_DP_M_CONUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFIN_DP_M_CONUpdateDataCommand = nil then
  begin
    FFIN_DP_M_CONUpdateDataCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_CONUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_CONUpdateDataCommand.Text := 'TSM.FIN_DP_M_CONUpdateData';
    FFIN_DP_M_CONUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_CONUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CONUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CONUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFIN_DP_M_CONUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CONUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CONUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_CONUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_R_OCVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_R_OCVDataRequestCommand = nil then
  begin
    FBUS_DP_R_OCVDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_R_OCVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_R_OCVDataRequestCommand.Text := 'TSM.BUS_DP_R_OCVDataRequest';
    FBUS_DP_R_OCVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_R_OCVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_R_OCVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_R_OCVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_R_OCVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_R_OCVDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_R_OCVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_OCVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_OCVDataRequestCommand = nil then
  begin
    FBUS_DP_M_OCVDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_OCVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_OCVDataRequestCommand.Text := 'TSM.BUS_DP_M_OCVDataRequest';
    FBUS_DP_M_OCVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_OCVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_OCVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_OCVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_OCVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_OCVDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_OCVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CTADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CTADataRequestCommand = nil then
  begin
    FBUS_DP_M_CTADataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CTADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CTADataRequestCommand.Text := 'TSM.BUS_DP_M_CTADataRequest';
    FBUS_DP_M_CTADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CTADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CTADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CTADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CTADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CTADataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CTADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_R_ORVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_R_ORVDataRequestCommand = nil then
  begin
    FBUS_DP_R_ORVDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_R_ORVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_R_ORVDataRequestCommand.Text := 'TSM.BUS_DP_R_ORVDataRequest';
    FBUS_DP_R_ORVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_R_ORVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_R_ORVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_R_ORVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_R_ORVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_R_ORVDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_R_ORVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_ROM_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ROM_PEDDataRequestCommand = nil then
  begin
    FBUS_DP_M_ROM_PEDDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ROM_PEDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ROM_PEDDataRequestCommand.Text := 'TSM.BUS_DP_M_ROM_PEDDataRequest';
    FBUS_DP_M_ROM_PEDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ROM_PEDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ROM_PEDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ROM_PEDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ROM_PEDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ROM_PEDDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ROM_PEDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_ROM_REGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ROM_REGDataRequestCommand = nil then
  begin
    FBUS_DP_M_ROM_REGDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ROM_REGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ROM_REGDataRequestCommand.Text := 'TSM.BUS_DP_M_ROM_REGDataRequest';
    FBUS_DP_M_ROM_REGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ROM_REGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ROM_REGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ROM_REGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ROM_REGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ROM_REGDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ROM_REGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_R_RQVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_R_RQVDataRequestCommand = nil then
  begin
    FBUS_DP_R_RQVDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_R_RQVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_R_RQVDataRequestCommand.Text := 'TSM.BUS_DP_R_RQVDataRequest';
    FBUS_DP_R_RQVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_R_RQVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_R_RQVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_R_RQVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_R_RQVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_R_RQVDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_R_RQVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_FUN_MECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_FUN_MECDataRequestCommand = nil then
  begin
    FBUS_DP_C_FUN_MECDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_FUN_MECDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_FUN_MECDataRequestCommand.Text := 'TSM.BUS_DP_C_FUN_MECDataRequest';
    FBUS_DP_C_FUN_MECDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_FUN_MECDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_FUN_MECDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_FUN_MECDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_FUN_MECDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_FUN_MECDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_FUN_MECDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.OFI_DP_M_ORVUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FOFI_DP_M_ORVUpdateDataCommand = nil then
  begin
    FOFI_DP_M_ORVUpdateDataCommand := FDBXConnection.CreateCommand;
    FOFI_DP_M_ORVUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_M_ORVUpdateDataCommand.Text := 'TSM.OFI_DP_M_ORVUpdateData';
    FOFI_DP_M_ORVUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_M_ORVUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_M_ORVUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_M_ORVUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FOFI_DP_M_ORVUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_M_ORVUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_M_ORVUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_M_ORVUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.FAT_DP_R_GAM_190DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_190DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_190DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_190DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_190DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_190DataRequest';
    FFAT_DP_R_GAM_190DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_190DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_190DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_190DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_190DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_190DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_190DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_405DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_405DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_405DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_405DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_405DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_405DataRequest';
    FFAT_DP_R_GAM_405DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_405DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_405DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_405DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_405DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_405DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_405DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_500DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_500DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_500DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_500DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_500DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_500DataRequest';
    FFAT_DP_R_GAM_500DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_500DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_500DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_500DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_500DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_500DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_500DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_510DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_510DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_510DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_510DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_510DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_510DataRequest';
    FFAT_DP_R_GAM_510DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_510DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_510DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_510DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_510DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_510DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_510DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_590DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_590DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_590DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_590DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_590DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_590DataRequest';
    FFAT_DP_R_GAM_590DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_590DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_590DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_590DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_590DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_590DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_590DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_D_100DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_D_100DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_D_100DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_D_100DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_D_100DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_D_100DataRequest';
    FFAT_DP_R_GAM_D_100DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_D_100DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_D_100DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_D_100DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_D_100DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_D_100DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_D_100DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_D_500DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_D_500DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_D_500DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_D_500DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_D_500DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_D_500DataRequest';
    FFAT_DP_R_GAM_D_500DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_D_500DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_D_500DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_D_500DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_D_500DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_D_500DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_D_500DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_D_510DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_D_510DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_D_510DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_D_510DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_D_510DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_D_510DataRequest';
    FFAT_DP_R_GAM_D_510DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_D_510DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_D_510DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_D_510DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_D_510DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_D_510DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_D_510DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_D_590DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_D_590DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_D_590DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_D_590DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_D_590DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_D_590DataRequest';
    FFAT_DP_R_GAM_D_590DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_D_590DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_D_590DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_D_590DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_D_590DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_D_590DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_D_590DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_A_100DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_A_100DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_A_100DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_A_100DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_A_100DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_A_100DataRequest';
    FFAT_DP_R_GAM_A_100DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_A_100DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_A_100DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_A_100DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_A_100DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_A_100DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_A_100DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_A_170DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_A_170DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_A_170DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_A_170DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_A_170DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_A_170DataRequest';
    FFAT_DP_R_GAM_A_170DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_A_170DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_A_170DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_A_170DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_A_170DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_A_170DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_A_170DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_481DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_481DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_481DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_481DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_481DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_481DataRequest';
    FFAT_DP_R_GAM_481DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_481DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_481DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_481DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_481DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_481DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_481DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_485DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_485DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_485DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_485DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_485DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_485DataRequest';
    FFAT_DP_R_GAM_485DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_485DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_485DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_485DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_485DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_485DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_485DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_ORV_PRO_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ORV_PRO_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_ORV_PRO_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ORV_PRO_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ORV_PRO_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_ORV_PRO_INTDataRequest';
    FBUS_DP_M_ORV_PRO_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ORV_PRO_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ORV_PRO_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ORV_PRO_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ORV_PRO_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ORV_PRO_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ORV_PRO_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_420DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_420DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_420DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_420DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_420DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_420DataRequest';
    FFAT_DP_R_GAM_420DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_420DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_420DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_420DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_420DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_420DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_420DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_425DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_425DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_425DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_425DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_425DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_425DataRequest';
    FFAT_DP_R_GAM_425DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_425DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_425DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_425DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_425DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_425DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_425DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_490DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_490DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_490DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_490DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_490DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_490DataRequest';
    FFAT_DP_R_GAM_490DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_490DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_490DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_490DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_490DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_490DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_490DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_501DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_501DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_501DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_501DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_501DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_501DataRequest';
    FFAT_DP_R_GAM_501DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_501DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_501DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_501DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_501DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_501DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_501DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_505DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_505DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_505DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_505DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_505DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_505DataRequest';
    FFAT_DP_R_GAM_505DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_505DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_505DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_505DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_505DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_505DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_505DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_ORV_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ORV_ITE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_ORV_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ORV_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ORV_ITE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_ORV_ITE_INTDataRequest';
    FBUS_DP_M_ORV_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ORV_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ORV_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ORV_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ORV_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ORV_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ORV_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_ORV_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ORV_TIT_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_ORV_TIT_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ORV_TIT_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ORV_TIT_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_ORV_TIT_INTDataRequest';
    FBUS_DP_M_ORV_TIT_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ORV_TIT_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ORV_TIT_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ORV_TIT_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ORV_TIT_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ORV_TIT_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ORV_TIT_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_460DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_460DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_460DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_460DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_460DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_460DataRequest';
    FFAT_DP_R_GAM_460DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_460DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_460DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_460DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_460DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_460DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_460DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_470DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_470DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_470DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_470DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_470DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_470DataRequest';
    FFAT_DP_R_GAM_470DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_470DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_470DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_470DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_470DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_470DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_470DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_MCTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_MCTDataRequestCommand = nil then
  begin
    FCAD_DP_C_MCTDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_MCTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_MCTDataRequestCommand.Text := 'TSM.CAD_DP_C_MCTDataRequest';
    FCAD_DP_C_MCTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_MCTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_MCTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_MCTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_MCTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_MCTDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_MCTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_ORV_TIT_SER_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_ORV_TIT_SER_INTDataRequest';
    FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CXA_DET_CRCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CXA_DET_CRCDataRequestCommand = nil then
  begin
    FBUS_DP_M_CXA_DET_CRCDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CXA_DET_CRCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CXA_DET_CRCDataRequestCommand.Text := 'TSM.BUS_DP_M_CXA_DET_CRCDataRequest';
    FBUS_DP_M_CXA_DET_CRCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CXA_DET_CRCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CXA_DET_CRCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CXA_DET_CRCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CXA_DET_CRCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CXA_DET_CRCDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CXA_DET_CRCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CXA_DIA_RVEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIA_RVEDataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIA_RVEDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIA_RVEDataRequest';
    FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_OPR_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_OPR_PEDDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_OPR_PEDDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_OPR_PEDDataRequest';
    FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_M_POSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_M_POSDataRequestCommand = nil then
  begin
    FOFI_DP_M_POSDataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_M_POSDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_M_POSDataRequestCommand.Text := 'TSM.OFI_DP_M_POSDataRequest';
    FOFI_DP_M_POSDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_M_POSDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_M_POSDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_M_POSDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_M_POSDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_M_POSDataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_M_POSDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_R_POSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_R_POSDataRequestCommand = nil then
  begin
    FOFI_DP_R_POSDataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_R_POSDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_R_POSDataRequestCommand.Text := 'TSM.OFI_DP_R_POSDataRequest';
    FOFI_DP_R_POSDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_R_POSDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_R_POSDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_R_POSDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_R_POSDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_R_POSDataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_R_POSDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_R_OFV_FIVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_R_OFV_FIVDataRequestCommand = nil then
  begin
    FOFI_DP_R_OFV_FIVDataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_R_OFV_FIVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_R_OFV_FIVDataRequestCommand.Text := 'TSM.OFI_DP_R_OFV_FIVDataRequest';
    FOFI_DP_R_OFV_FIVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_R_OFV_FIVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_R_OFV_FIVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_R_OFV_FIVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_R_OFV_FIVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_R_OFV_FIVDataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_R_OFV_FIVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_R_OFV_POS_001DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_R_OFV_POS_001DataRequestCommand = nil then
  begin
    FOFI_DP_R_OFV_POS_001DataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_R_OFV_POS_001DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_R_OFV_POS_001DataRequestCommand.Text := 'TSM.OFI_DP_R_OFV_POS_001DataRequest';
    FOFI_DP_R_OFV_POS_001DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_R_OFV_POS_001DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_R_OFV_POS_001DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_R_OFV_POS_001DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_R_OFV_POS_001DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_R_OFV_POS_001DataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_R_OFV_POS_001DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_R_OFV_POS_002DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_R_OFV_POS_002DataRequestCommand = nil then
  begin
    FOFI_DP_R_OFV_POS_002DataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_R_OFV_POS_002DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_R_OFV_POS_002DataRequestCommand.Text := 'TSM.OFI_DP_R_OFV_POS_002DataRequest';
    FOFI_DP_R_OFV_POS_002DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_R_OFV_POS_002DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_R_OFV_POS_002DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_R_OFV_POS_002DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_R_OFV_POS_002DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_R_OFV_POS_002DataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_R_OFV_POS_002DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_R_OFV_COM_001DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_R_OFV_COM_001DataRequestCommand = nil then
  begin
    FOFI_DP_R_OFV_COM_001DataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_R_OFV_COM_001DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_R_OFV_COM_001DataRequestCommand.Text := 'TSM.OFI_DP_R_OFV_COM_001DataRequest';
    FOFI_DP_R_OFV_COM_001DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_R_OFV_COM_001DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_R_OFV_COM_001DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_R_OFV_COM_001DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_R_OFV_COM_001DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_R_OFV_COM_001DataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_R_OFV_COM_001DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_R_OFV_COM_002DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_R_OFV_COM_002DataRequestCommand = nil then
  begin
    FOFI_DP_R_OFV_COM_002DataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_R_OFV_COM_002DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_R_OFV_COM_002DataRequestCommand.Text := 'TSM.OFI_DP_R_OFV_COM_002DataRequest';
    FOFI_DP_R_OFV_COM_002DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_R_OFV_COM_002DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_R_OFV_COM_002DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_R_OFV_COM_002DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_R_OFV_COM_002DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_R_OFV_COM_002DataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_R_OFV_COM_002DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_R_OFV_ABC_001DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_R_OFV_ABC_001DataRequestCommand = nil then
  begin
    FOFI_DP_R_OFV_ABC_001DataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_R_OFV_ABC_001DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_R_OFV_ABC_001DataRequestCommand.Text := 'TSM.OFI_DP_R_OFV_ABC_001DataRequest';
    FOFI_DP_R_OFV_ABC_001DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_R_OFV_ABC_001DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_R_OFV_ABC_001DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_R_OFV_ABC_001DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_R_OFV_ABC_001DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_R_OFV_ABC_001DataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_R_OFV_ABC_001DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_R_OFV_ABC_002DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_R_OFV_ABC_002DataRequestCommand = nil then
  begin
    FOFI_DP_R_OFV_ABC_002DataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_R_OFV_ABC_002DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_R_OFV_ABC_002DataRequestCommand.Text := 'TSM.OFI_DP_R_OFV_ABC_002DataRequest';
    FOFI_DP_R_OFV_ABC_002DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_R_OFV_ABC_002DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_R_OFV_ABC_002DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_R_OFV_ABC_002DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_R_OFV_ABC_002DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_R_OFV_ABC_002DataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_R_OFV_ABC_002DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_POS_STADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_POS_STADataRequestCommand = nil then
  begin
    FBUS_DP_M_POS_STADataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_POS_STADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_POS_STADataRequestCommand.Text := 'TSM.BUS_DP_M_POS_STADataRequest';
    FBUS_DP_M_POS_STADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_POS_STADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_POS_STADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_POS_STADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_POS_STADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_POS_STADataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_POS_STADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.bus_dp_m_ctc_tprDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fbus_dp_m_ctc_tprDataRequestCommand = nil then
  begin
    Fbus_dp_m_ctc_tprDataRequestCommand := FDBXConnection.CreateCommand;
    Fbus_dp_m_ctc_tprDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fbus_dp_m_ctc_tprDataRequestCommand.Text := 'TSM.bus_dp_m_ctc_tprDataRequest';
    Fbus_dp_m_ctc_tprDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fbus_dp_m_ctc_tprDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fbus_dp_m_ctc_tprDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fbus_dp_m_ctc_tprDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fbus_dp_m_ctc_tprDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fbus_dp_m_ctc_tprDataRequestCommand.ExecuteUpdate;
  Result := Fbus_dp_m_ctc_tprDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.OFI_DP_R_POS_OSPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FOFI_DP_R_POS_OSPDataRequestCommand = nil then
  begin
    FOFI_DP_R_POS_OSPDataRequestCommand := FDBXConnection.CreateCommand;
    FOFI_DP_R_POS_OSPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOFI_DP_R_POS_OSPDataRequestCommand.Text := 'TSM.OFI_DP_R_POS_OSPDataRequest';
    FOFI_DP_R_POS_OSPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FOFI_DP_R_POS_OSPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FOFI_DP_R_POS_OSPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FOFI_DP_R_POS_OSPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FOFI_DP_R_POS_OSPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FOFI_DP_R_POS_OSPDataRequestCommand.ExecuteUpdate;
  Result := FOFI_DP_R_POS_OSPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_PNODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_PNODataRequestCommand = nil then
  begin
    FBUS_DP_M_PNODataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_PNODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_PNODataRequestCommand.Text := 'TSM.BUS_DP_M_PNODataRequest';
    FBUS_DP_M_PNODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_PNODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_PNODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_PNODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_PNODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_PNODataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_PNODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_PNMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_PNMDataRequestCommand = nil then
  begin
    FBUS_DP_M_PNMDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_PNMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_PNMDataRequestCommand.Text := 'TSM.BUS_DP_M_PNMDataRequest';
    FBUS_DP_M_PNMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_PNMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_PNMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_PNMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_PNMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_PNMDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_PNMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ctc_dp_c_eocDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if Fctc_dp_c_eocDataRequestCommand = nil then
  begin
    Fctc_dp_c_eocDataRequestCommand := FDBXConnection.CreateCommand;
    Fctc_dp_c_eocDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fctc_dp_c_eocDataRequestCommand.Text := 'TSM.ctc_dp_c_eocDataRequest';
    Fctc_dp_c_eocDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    Fctc_dp_c_eocDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(Fctc_dp_c_eocDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      Fctc_dp_c_eocDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  Fctc_dp_c_eocDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  Fctc_dp_c_eocDataRequestCommand.ExecuteUpdate;
  Result := Fctc_dp_c_eocDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_ABC_VLRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_ABC_VLRDataRequestCommand = nil then
  begin
    FEST_DP_R_ABC_VLRDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_ABC_VLRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_ABC_VLRDataRequestCommand.Text := 'TSM.EST_DP_R_ABC_VLRDataRequest';
    FEST_DP_R_ABC_VLRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_ABC_VLRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_ABC_VLRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_ABC_VLRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_ABC_VLRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_ABC_VLRDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_ABC_VLRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_ABC_QTDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_ABC_QTDDataRequestCommand = nil then
  begin
    FEST_DP_R_ABC_QTDDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_ABC_QTDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_ABC_QTDDataRequestCommand.Text := 'TSM.EST_DP_R_ABC_QTDDataRequest';
    FEST_DP_R_ABC_QTDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_ABC_QTDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_ABC_QTDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_ABC_QTDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_ABC_QTDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_ABC_QTDDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_ABC_QTDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CTC_DP_R_ORCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCTC_DP_R_ORCDataRequestCommand = nil then
  begin
    FCTC_DP_R_ORCDataRequestCommand := FDBXConnection.CreateCommand;
    FCTC_DP_R_ORCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCTC_DP_R_ORCDataRequestCommand.Text := 'TSM.CTC_DP_R_ORCDataRequest';
    FCTC_DP_R_ORCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCTC_DP_R_ORCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCTC_DP_R_ORCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCTC_DP_R_ORCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCTC_DP_R_ORCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCTC_DP_R_ORCDataRequestCommand.ExecuteUpdate;
  Result := FCTC_DP_R_ORCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CTC_DP_R_COMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCTC_DP_R_COMDataRequestCommand = nil then
  begin
    FCTC_DP_R_COMDataRequestCommand := FDBXConnection.CreateCommand;
    FCTC_DP_R_COMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCTC_DP_R_COMDataRequestCommand.Text := 'TSM.CTC_DP_R_COMDataRequest';
    FCTC_DP_R_COMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCTC_DP_R_COMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCTC_DP_R_COMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCTC_DP_R_COMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCTC_DP_R_COMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCTC_DP_R_COMDataRequestCommand.ExecuteUpdate;
  Result := FCTC_DP_R_COMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_GIRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_GIRDataRequestCommand = nil then
  begin
    FEST_DP_R_GIRDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_GIRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_GIRDataRequestCommand.Text := 'TSM.EST_DP_R_GIRDataRequest';
    FEST_DP_R_GIRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_GIRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_GIRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_GIRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_GIRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_GIRDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_GIRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_CUEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_CUEDataRequestCommand = nil then
  begin
    FPCP_DP_C_CUEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_CUEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_CUEDataRequestCommand.Text := 'TSM.PCP_DP_C_CUEDataRequest';
    FPCP_DP_C_CUEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_CUEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_CUEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_CUEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_CUEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_CUEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_CUEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_CLEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_CLEDataRequestCommand = nil then
  begin
    FPCP_DP_C_CLEDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_CLEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_CLEDataRequestCommand.Text := 'TSM.PCP_DP_C_CLEDataRequest';
    FPCP_DP_C_CLEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_CLEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_CLEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_CLEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_CLEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_CLEDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_CLEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_MLTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_MLTDataRequestCommand = nil then
  begin
    FEST_DP_R_MLTDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_MLTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_MLTDataRequestCommand.Text := 'TSM.EST_DP_R_MLTDataRequest';
    FEST_DP_R_MLTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_MLTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_MLTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_MLTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_MLTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_MLTDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_MLTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_R_ORC_ITE_MEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_R_ORC_ITE_MEDDataRequestCommand = nil then
  begin
    FBUS_DP_R_ORC_ITE_MEDDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.Text := 'TSM.BUS_DP_R_ORC_ITE_MEDDataRequest';
    FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_PAR_CPG_INFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_PAR_CPG_INFDataRequestCommand = nil then
  begin
    FBUS_DP_C_PAR_CPG_INFDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_PAR_CPG_INFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_PAR_CPG_INFDataRequestCommand.Text := 'TSM.BUS_DP_C_PAR_CPG_INFDataRequest';
    FBUS_DP_C_PAR_CPG_INFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_PAR_CPG_INFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_PAR_CPG_INFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_PAR_CPG_INFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_PAR_CPG_INFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_PAR_CPG_INFDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_PAR_CPG_INFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_R_CTE_ITEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_R_CTE_ITEDataRequestCommand = nil then
  begin
    FBUS_DP_R_CTE_ITEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_R_CTE_ITEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_R_CTE_ITEDataRequestCommand.Text := 'TSM.BUS_DP_R_CTE_ITEDataRequest';
    FBUS_DP_R_CTE_ITEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_R_CTE_ITEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_R_CTE_ITEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_R_CTE_ITEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_R_CTE_ITEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_R_CTE_ITEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_R_CTE_ITEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_R_CHQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_R_CHQDataRequestCommand = nil then
  begin
    FBUS_DP_R_CHQDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_R_CHQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_R_CHQDataRequestCommand.Text := 'TSM.BUS_DP_R_CHQDataRequest';
    FBUS_DP_R_CHQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_R_CHQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_R_CHQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_R_CHQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_R_CHQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_R_CHQDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_R_CHQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_CCRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_CCRDataRequestCommand = nil then
  begin
    FCAD_DP_C_CCRDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_CCRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_CCRDataRequestCommand.Text := 'TSM.CAD_DP_C_CCRDataRequest';
    FCAD_DP_C_CCRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_CCRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_CCRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_CCRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_CCRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_CCRDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_CCRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_NFE_TIT_MAQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_NFE_TIT_MAQDataRequestCommand = nil then
  begin
    FBUS_DP_M_NFE_TIT_MAQDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.Text := 'TSM.BUS_DP_M_NFE_TIT_MAQDataRequest';
    FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_INDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_INDDataRequestCommand = nil then
  begin
    FFIN_DP_R_INDDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_INDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_INDDataRequestCommand.Text := 'TSM.FIN_DP_R_INDDataRequest';
    FFIN_DP_R_INDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_INDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_INDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_INDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_INDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_INDDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_INDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_MOV_SPRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_MOV_SPRDataRequestCommand = nil then
  begin
    FEST_DP_R_MOV_SPRDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_MOV_SPRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_MOV_SPRDataRequestCommand.Text := 'TSM.EST_DP_R_MOV_SPRDataRequest';
    FEST_DP_R_MOV_SPRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_MOV_SPRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_MOV_SPRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_MOV_SPRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_MOV_SPRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_MOV_SPRDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_MOV_SPRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_0190DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_0190DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_0190DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_0190DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_0190DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_0190DataRequest';
    FFAT_DP_R_GAM_0190DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_0190DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_0190DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_0190DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_0190DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_0190DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_0190DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_0400DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_0400DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_0400DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_0400DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_0400DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_0400DataRequest';
    FFAT_DP_R_GAM_0400DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_0400DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_0400DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_0400DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_0400DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_0400DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_0400DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_0405DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_0405DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_0405DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_0405DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_0405DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_0405DataRequest';
    FFAT_DP_R_GAM_0405DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_0405DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_0405DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_0405DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_0405DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_0405DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_0405DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_CBXDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_CBXDataRequestCommand = nil then
  begin
    FFIN_DP_M_CBXDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_CBXDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_CBXDataRequestCommand.Text := 'TSM.FIN_DP_M_CBXDataRequest';
    FFIN_DP_M_CBXDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_CBXDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CBXDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CBXDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_CBXDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_CBXDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_CBXDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FIN_DP_M_CBXUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFIN_DP_M_CBXUpdateDataCommand = nil then
  begin
    FFIN_DP_M_CBXUpdateDataCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_CBXUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_CBXUpdateDataCommand.Text := 'TSM.FIN_DP_M_CBXUpdateData';
    FFIN_DP_M_CBXUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_CBXUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CBXUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CBXUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFIN_DP_M_CBXUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CBXUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CBXUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_CBXUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_M_CBX_TITDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CBX_TITDataRequestCommand = nil then
  begin
    FBUS_DP_M_CBX_TITDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CBX_TITDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CBX_TITDataRequestCommand.Text := 'TSM.BUS_DP_M_CBX_TITDataRequest';
    FBUS_DP_M_CBX_TITDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CBX_TITDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CBX_TITDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CBX_TITDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CBX_TITDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CBX_TITDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CBX_TITDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_BCO_EXBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_BCO_EXBDataRequestCommand = nil then
  begin
    FFIN_DP_R_BCO_EXBDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_BCO_EXBDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_BCO_EXBDataRequestCommand.Text := 'TSM.FIN_DP_R_BCO_EXBDataRequest';
    FFIN_DP_R_BCO_EXBDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_BCO_EXBDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_BCO_EXBDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_BCO_EXBDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_BCO_EXBDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_BCO_EXBDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_BCO_EXBDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_BCO_CCBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_BCO_CCBDataRequestCommand = nil then
  begin
    FFIN_DP_R_BCO_CCBDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_BCO_CCBDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_BCO_CCBDataRequestCommand.Text := 'TSM.FIN_DP_R_BCO_CCBDataRequest';
    FFIN_DP_R_BCO_CCBDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_BCO_CCBDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_BCO_CCBDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_BCO_CCBDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_BCO_CCBDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_BCO_CCBDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_BCO_CCBDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_BCO_SBCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_BCO_SBCDataRequestCommand = nil then
  begin
    FFIN_DP_R_BCO_SBCDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_BCO_SBCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_BCO_SBCDataRequestCommand.Text := 'TSM.FIN_DP_R_BCO_SBCDataRequest';
    FFIN_DP_R_BCO_SBCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_BCO_SBCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_BCO_SBCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_BCO_SBCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_BCO_SBCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_BCO_SBCDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_BCO_SBCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.EST_DP_M_CTEUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FEST_DP_M_CTEUpdateDataCommand = nil then
  begin
    FEST_DP_M_CTEUpdateDataCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_CTEUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_CTEUpdateDataCommand.Text := 'TSM.EST_DP_M_CTEUpdateData';
    FEST_DP_M_CTEUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_CTEUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_CTEUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_CTEUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FEST_DP_M_CTEUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_CTEUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_CTEUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_CTEUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_M_CTE_RES_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_CTE_RES_ITE_INTDataRequest';
    FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PIS_NFLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PIS_NFLDataRequestCommand = nil then
  begin
    FFAT_DP_R_PIS_NFLDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PIS_NFLDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PIS_NFLDataRequestCommand.Text := 'TSM.FAT_DP_R_PIS_NFLDataRequest';
    FFAT_DP_R_PIS_NFLDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PIS_NFLDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PIS_NFLDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PIS_NFLDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PIS_NFLDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PIS_NFLDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PIS_NFLDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_G_600DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_G_600DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_G_600DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_G_600DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_G_600DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_G_600DataRequest';
    FFAT_DP_R_GAM_G_600DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_G_600DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_G_600DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_G_600DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_G_600DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_G_600DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_G_600DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_G_610DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_G_610DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_G_610DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_G_610DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_G_610DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_G_610DataRequest';
    FFAT_DP_R_GAM_G_610DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_G_610DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_G_610DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_G_610DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_G_610DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_G_610DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_G_610DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_G_615DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_G_615DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_G_615DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_G_615DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_G_615DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_G_615DataRequest';
    FFAT_DP_R_GAM_G_615DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_G_615DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_G_615DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_G_615DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_G_615DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_G_615DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_G_615DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_G_605DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_G_605DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_G_605DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_G_605DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_G_605DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_G_605DataRequest';
    FFAT_DP_R_GAM_G_605DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_G_605DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_G_605DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_G_605DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_G_605DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_G_605DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_G_605DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_G_620DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_G_620DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_G_620DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_G_620DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_G_620DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_G_620DataRequest';
    FFAT_DP_R_GAM_G_620DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_G_620DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_G_620DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_G_620DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_G_620DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_G_620DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_G_620DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_G_625DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_G_625DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_G_625DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_G_625DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_G_625DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_G_625DataRequest';
    FFAT_DP_R_GAM_G_625DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_G_625DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_G_625DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_G_625DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_G_625DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_G_625DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_G_625DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.DP_BR_CUPOM_MESTREDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FDP_BR_CUPOM_MESTREDataRequestCommand = nil then
  begin
    FDP_BR_CUPOM_MESTREDataRequestCommand := FDBXConnection.CreateCommand;
    FDP_BR_CUPOM_MESTREDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDP_BR_CUPOM_MESTREDataRequestCommand.Text := 'TSM.DP_BR_CUPOM_MESTREDataRequest';
    FDP_BR_CUPOM_MESTREDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDP_BR_CUPOM_MESTREDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDP_BR_CUPOM_MESTREDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDP_BR_CUPOM_MESTREDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDP_BR_CUPOM_MESTREDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FDP_BR_CUPOM_MESTREDataRequestCommand.ExecuteUpdate;
  Result := FDP_BR_CUPOM_MESTREDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_COBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_COBDataRequestCommand = nil then
  begin
    FBUS_DP_M_COBDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_COBDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_COBDataRequestCommand.Text := 'TSM.BUS_DP_M_COBDataRequest';
    FBUS_DP_M_COBDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_COBDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_COBDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_COBDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_COBDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_COBDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_COBDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_COB_TIT_TITDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_COB_TIT_TITDataRequestCommand = nil then
  begin
    FBUS_DP_M_COB_TIT_TITDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_COB_TIT_TITDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_COB_TIT_TITDataRequestCommand.Text := 'TSM.BUS_DP_M_COB_TIT_TITDataRequest';
    FBUS_DP_M_COB_TIT_TITDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_COB_TIT_TITDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_COB_TIT_TITDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_COB_TIT_TITDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_COB_TIT_TITDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_COB_TIT_TITDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_COB_TIT_TITDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_M_CTA_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_M_CTA_INTDataRequestCommand = nil then
  begin
    FFIN_DP_M_CTA_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_CTA_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_CTA_INTDataRequestCommand.Text := 'TSM.FIN_DP_M_CTA_INTDataRequest';
    FFIN_DP_M_CTA_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_CTA_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CTA_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CTA_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_CTA_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_M_CTA_INTDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_M_CTA_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FIN_DP_M_CTAUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFIN_DP_M_CTAUpdateDataCommand = nil then
  begin
    FFIN_DP_M_CTAUpdateDataCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_CTAUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_CTAUpdateDataCommand.Text := 'TSM.FIN_DP_M_CTAUpdateData';
    FFIN_DP_M_CTAUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_CTAUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CTAUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CTAUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFIN_DP_M_CTAUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_CTAUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_CTAUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_CTAUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_C_PCTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_PCTDataRequestCommand = nil then
  begin
    FBUS_DP_C_PCTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_PCTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_PCTDataRequestCommand.Text := 'TSM.BUS_DP_C_PCTDataRequest';
    FBUS_DP_C_PCTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_PCTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_PCTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_PCTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_PCTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_PCTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_PCTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_M_METDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_M_METDataRequestCommand = nil then
  begin
    FEST_DP_M_METDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_METDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_METDataRequestCommand.Text := 'TSM.EST_DP_M_METDataRequest';
    FEST_DP_M_METDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_METDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_METDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_METDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_METDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_M_METDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_M_METDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.EST_DP_M_METUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FEST_DP_M_METUpdateDataCommand = nil then
  begin
    FEST_DP_M_METUpdateDataCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_METUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_METUpdateDataCommand.Text := 'TSM.EST_DP_M_METUpdateData';
    FEST_DP_M_METUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_METUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_METUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_METUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FEST_DP_M_METUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_METUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_METUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_METUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_M_MET_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_MET_ITE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_MET_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_MET_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_MET_ITE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_MET_ITE_INTDataRequest';
    FBUS_DP_M_MET_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_MET_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_MET_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_MET_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_MET_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_MET_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_MET_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PIS_RPCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PIS_RPCDataRequestCommand = nil then
  begin
    FFAT_DP_R_PIS_RPCDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PIS_RPCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PIS_RPCDataRequestCommand.Text := 'TSM.FAT_DP_R_PIS_RPCDataRequest';
    FFAT_DP_R_PIS_RPCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PIS_RPCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PIS_RPCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PIS_RPCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PIS_RPCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PIS_RPCDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PIS_RPCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.PCP_DP_M_ORSUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FPCP_DP_M_ORSUpdateDataCommand = nil then
  begin
    FPCP_DP_M_ORSUpdateDataCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_ORSUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_ORSUpdateDataCommand.Text := 'TSM.PCP_DP_M_ORSUpdateData';
    FPCP_DP_M_ORSUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_ORSUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_ORSUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_ORSUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FPCP_DP_M_ORSUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_ORSUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_ORSUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_ORSUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_M_ORS_ITE_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ORS_ITE_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_ORS_ITE_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ORS_ITE_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ORS_ITE_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_ORS_ITE_INTDataRequest';
    FBUS_DP_M_ORS_ITE_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ORS_ITE_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ORS_ITE_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ORS_ITE_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ORS_ITE_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ORS_ITE_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ORS_ITE_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_ORS_TIT_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ORS_TIT_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_ORS_TIT_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ORS_TIT_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ORS_TIT_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_ORS_TIT_INTDataRequest';
    FBUS_DP_M_ORS_TIT_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ORS_TIT_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ORS_TIT_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ORS_TIT_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ORS_TIT_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ORS_TIT_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ORS_TIT_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FIN_DP_M_RCRUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFIN_DP_M_RCRUpdateDataCommand = nil then
  begin
    FFIN_DP_M_RCRUpdateDataCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_RCRUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_RCRUpdateDataCommand.Text := 'TSM.FIN_DP_M_RCRUpdateData';
    FFIN_DP_M_RCRUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_RCRUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RCRUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RCRUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFIN_DP_M_RCRUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RCRUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RCRUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_RCRUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.PCP_DP_R_ORSDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_R_ORSDataRequestCommand = nil then
  begin
    FPCP_DP_R_ORSDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_R_ORSDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_R_ORSDataRequestCommand.Text := 'TSM.PCP_DP_R_ORSDataRequest';
    FPCP_DP_R_ORSDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_R_ORSDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_R_ORSDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_R_ORSDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_R_ORSDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_R_ORSDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_R_ORSDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_M_PCADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_M_PCADataRequestCommand = nil then
  begin
    FFAT_DP_M_PCADataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_PCADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_PCADataRequestCommand.Text := 'TSM.FAT_DP_M_PCADataRequest';
    FFAT_DP_M_PCADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_PCADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_PCADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_PCADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_PCADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_M_PCADataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_M_PCADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_PCADataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_PCADataRequestCommand = nil then
  begin
    FBUS_DP_M_PCADataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_PCADataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_PCADataRequestCommand.Text := 'TSM.BUS_DP_M_PCADataRequest';
    FBUS_DP_M_PCADataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_PCADataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_PCADataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_PCADataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_PCADataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_PCADataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_PCADataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_E60DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_E60DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_E60DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_E60DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_E60DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_E60DataRequest';
    FFAT_DP_R_GAM_E60DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_E60DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_E60DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_E60DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_E60DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_E60DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_E60DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_E65DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_E65DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_E65DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_E65DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_E65DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_E65DataRequest';
    FFAT_DP_R_GAM_E65DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_E65DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_E65DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_E65DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_E65DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_E65DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_E65DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_E80DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_E80DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_E80DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_E80DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_E80DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_E80DataRequest';
    FFAT_DP_R_GAM_E80DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_E80DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_E80DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_E80DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_E80DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_E80DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_E80DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_E85DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_E85DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_E85DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_E85DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_E85DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_E85DataRequest';
    FFAT_DP_R_GAM_E85DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_E85DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_E85DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_E85DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_E85DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_E85DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_E85DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_M_XMLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_M_XMLDataRequestCommand = nil then
  begin
    FFAT_DP_M_XMLDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_XMLDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_XMLDataRequestCommand.Text := 'TSM.FAT_DP_M_XMLDataRequest';
    FFAT_DP_M_XMLDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_XMLDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_XMLDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_XMLDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_XMLDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_M_XMLDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_M_XMLDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_PEDDataRequestCommand = nil then
  begin
    FFAT_DP_R_PEDDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_PEDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_PEDDataRequestCommand.Text := 'TSM.FAT_DP_R_PEDDataRequest';
    FFAT_DP_R_PEDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_PEDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_PEDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_PEDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_PEDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_PEDDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_PEDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_FAT_PCA_PEDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_FAT_PCA_PEDDataRequestCommand = nil then
  begin
    FBUS_DP_M_FAT_PCA_PEDDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.Text := 'TSM.BUS_DP_M_FAT_PCA_PEDDataRequest';
    FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_FES_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_FES_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_FES_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_FES_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_FES_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_FES_INTDataRequest';
    FBUS_DP_M_FES_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_FES_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_FES_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_FES_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_FES_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_FES_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_FES_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_ORC_PLCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_ORC_PLCDataRequestCommand = nil then
  begin
    FBUS_DP_M_ORC_PLCDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_ORC_PLCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_ORC_PLCDataRequestCommand.Text := 'TSM.BUS_DP_M_ORC_PLCDataRequest';
    FBUS_DP_M_ORC_PLCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_ORC_PLCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_ORC_PLCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_ORC_PLCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_ORC_PLCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_ORC_PLCDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_ORC_PLCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CSCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CSCDataRequestCommand = nil then
  begin
    FFIN_DP_R_CSCDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CSCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CSCDataRequestCommand.Text := 'TSM.FIN_DP_R_CSCDataRequest';
    FFIN_DP_R_CSCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CSCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CSCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CSCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CSCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CSCDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CSCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_EXT_CLI_NCRDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_EXT_CLI_NCRDataRequestCommand = nil then
  begin
    FFIN_DP_R_EXT_CLI_NCRDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.Text := 'TSM.FIN_DP_R_EXT_CLI_NCRDataRequest';
    FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ACE_DP_M_IDNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FACE_DP_M_IDNDataRequestCommand = nil then
  begin
    FACE_DP_M_IDNDataRequestCommand := FDBXConnection.CreateCommand;
    FACE_DP_M_IDNDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FACE_DP_M_IDNDataRequestCommand.Text := 'TSM.ACE_DP_M_IDNDataRequest';
    FACE_DP_M_IDNDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FACE_DP_M_IDNDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FACE_DP_M_IDNDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FACE_DP_M_IDNDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FACE_DP_M_IDNDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FACE_DP_M_IDNDataRequestCommand.ExecuteUpdate;
  Result := FACE_DP_M_IDNDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ACE_DP_M_PRODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FACE_DP_M_PRODataRequestCommand = nil then
  begin
    FACE_DP_M_PRODataRequestCommand := FDBXConnection.CreateCommand;
    FACE_DP_M_PRODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FACE_DP_M_PRODataRequestCommand.Text := 'TSM.ACE_DP_M_PRODataRequest';
    FACE_DP_M_PRODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FACE_DP_M_PRODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FACE_DP_M_PRODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FACE_DP_M_PRODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FACE_DP_M_PRODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FACE_DP_M_PRODataRequestCommand.ExecuteUpdate;
  Result := FACE_DP_M_PRODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ACE_DP_M_FILDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FACE_DP_M_FILDataRequestCommand = nil then
  begin
    FACE_DP_M_FILDataRequestCommand := FDBXConnection.CreateCommand;
    FACE_DP_M_FILDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FACE_DP_M_FILDataRequestCommand.Text := 'TSM.ACE_DP_M_FILDataRequest';
    FACE_DP_M_FILDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FACE_DP_M_FILDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FACE_DP_M_FILDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FACE_DP_M_FILDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FACE_DP_M_FILDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FACE_DP_M_FILDataRequestCommand.ExecuteUpdate;
  Result := FACE_DP_M_FILDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ACE_DP_M_EST_DEPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FACE_DP_M_EST_DEPDataRequestCommand = nil then
  begin
    FACE_DP_M_EST_DEPDataRequestCommand := FDBXConnection.CreateCommand;
    FACE_DP_M_EST_DEPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FACE_DP_M_EST_DEPDataRequestCommand.Text := 'TSM.ACE_DP_M_EST_DEPDataRequest';
    FACE_DP_M_EST_DEPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FACE_DP_M_EST_DEPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FACE_DP_M_EST_DEPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FACE_DP_M_EST_DEPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FACE_DP_M_EST_DEPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FACE_DP_M_EST_DEPDataRequestCommand.ExecuteUpdate;
  Result := FACE_DP_M_EST_DEPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ACE_DP_M_EST_FOPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FACE_DP_M_EST_FOPDataRequestCommand = nil then
  begin
    FACE_DP_M_EST_FOPDataRequestCommand := FDBXConnection.CreateCommand;
    FACE_DP_M_EST_FOPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FACE_DP_M_EST_FOPDataRequestCommand.Text := 'TSM.ACE_DP_M_EST_FOPDataRequest';
    FACE_DP_M_EST_FOPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FACE_DP_M_EST_FOPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FACE_DP_M_EST_FOPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FACE_DP_M_EST_FOPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FACE_DP_M_EST_FOPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FACE_DP_M_EST_FOPDataRequestCommand.ExecuteUpdate;
  Result := FACE_DP_M_EST_FOPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ACE_DP_M_VNDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FACE_DP_M_VNDDataRequestCommand = nil then
  begin
    FACE_DP_M_VNDDataRequestCommand := FDBXConnection.CreateCommand;
    FACE_DP_M_VNDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FACE_DP_M_VNDDataRequestCommand.Text := 'TSM.ACE_DP_M_VNDDataRequest';
    FACE_DP_M_VNDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FACE_DP_M_VNDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FACE_DP_M_VNDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FACE_DP_M_VNDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FACE_DP_M_VNDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FACE_DP_M_VNDDataRequestCommand.ExecuteUpdate;
  Result := FACE_DP_M_VNDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ACE_DP_M_CLIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FACE_DP_M_CLIDataRequestCommand = nil then
  begin
    FACE_DP_M_CLIDataRequestCommand := FDBXConnection.CreateCommand;
    FACE_DP_M_CLIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FACE_DP_M_CLIDataRequestCommand.Text := 'TSM.ACE_DP_M_CLIDataRequest';
    FACE_DP_M_CLIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FACE_DP_M_CLIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FACE_DP_M_CLIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FACE_DP_M_CLIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FACE_DP_M_CLIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FACE_DP_M_CLIDataRequestCommand.ExecuteUpdate;
  Result := FACE_DP_M_CLIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.ACE_DP_M_NFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FACE_DP_M_NFEDataRequestCommand = nil then
  begin
    FACE_DP_M_NFEDataRequestCommand := FDBXConnection.CreateCommand;
    FACE_DP_M_NFEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FACE_DP_M_NFEDataRequestCommand.Text := 'TSM.ACE_DP_M_NFEDataRequest';
    FACE_DP_M_NFEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FACE_DP_M_NFEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FACE_DP_M_NFEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FACE_DP_M_NFEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FACE_DP_M_NFEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FACE_DP_M_NFEDataRequestCommand.ExecuteUpdate;
  Result := FACE_DP_M_NFEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_FUN_CRG_GERDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_FUN_CRG_GERDataRequestCommand = nil then
  begin
    FBUS_DP_C_FUN_CRG_GERDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_FUN_CRG_GERDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_FUN_CRG_GERDataRequestCommand.Text := 'TSM.BUS_DP_C_FUN_CRG_GERDataRequest';
    FBUS_DP_C_FUN_CRG_GERDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_FUN_CRG_GERDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_FUN_CRG_GERDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_FUN_CRG_GERDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_FUN_CRG_GERDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_FUN_CRG_GERDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_FUN_CRG_GERDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CTC_DP_M_PRODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCTC_DP_M_PRODataRequestCommand = nil then
  begin
    FCTC_DP_M_PRODataRequestCommand := FDBXConnection.CreateCommand;
    FCTC_DP_M_PRODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCTC_DP_M_PRODataRequestCommand.Text := 'TSM.CTC_DP_M_PRODataRequest';
    FCTC_DP_M_PRODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCTC_DP_M_PRODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCTC_DP_M_PRODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCTC_DP_M_PRODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCTC_DP_M_PRODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCTC_DP_M_PRODataRequestCommand.ExecuteUpdate;
  Result := FCTC_DP_M_PRODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CTC_DP_M_APGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCTC_DP_M_APGDataRequestCommand = nil then
  begin
    FCTC_DP_M_APGDataRequestCommand := FDBXConnection.CreateCommand;
    FCTC_DP_M_APGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCTC_DP_M_APGDataRequestCommand.Text := 'TSM.CTC_DP_M_APGDataRequest';
    FCTC_DP_M_APGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCTC_DP_M_APGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCTC_DP_M_APGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCTC_DP_M_APGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCTC_DP_M_APGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCTC_DP_M_APGDataRequestCommand.ExecuteUpdate;
  Result := FCTC_DP_M_APGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CTC_DP_M_SLMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCTC_DP_M_SLMDataRequestCommand = nil then
  begin
    FCTC_DP_M_SLMDataRequestCommand := FDBXConnection.CreateCommand;
    FCTC_DP_M_SLMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCTC_DP_M_SLMDataRequestCommand.Text := 'TSM.CTC_DP_M_SLMDataRequest';
    FCTC_DP_M_SLMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCTC_DP_M_SLMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCTC_DP_M_SLMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCTC_DP_M_SLMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCTC_DP_M_SLMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCTC_DP_M_SLMDataRequestCommand.ExecuteUpdate;
  Result := FCTC_DP_M_SLMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CTC_DP_R_SLMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCTC_DP_R_SLMDataRequestCommand = nil then
  begin
    FCTC_DP_R_SLMDataRequestCommand := FDBXConnection.CreateCommand;
    FCTC_DP_R_SLMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCTC_DP_R_SLMDataRequestCommand.Text := 'TSM.CTC_DP_R_SLMDataRequest';
    FCTC_DP_R_SLMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCTC_DP_R_SLMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCTC_DP_R_SLMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCTC_DP_R_SLMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCTC_DP_R_SLMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCTC_DP_R_SLMDataRequestCommand.ExecuteUpdate;
  Result := FCTC_DP_R_SLMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_CSU_ITE_PRFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_CSU_ITE_PRFDataRequestCommand = nil then
  begin
    FBUS_DP_C_CSU_ITE_PRFDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.Text := 'TSM.BUS_DP_C_CSU_ITE_PRFDataRequest';
    FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_ITE_PRC_FINDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_ITE_PRC_FINDataRequestCommand = nil then
  begin
    FCAD_DP_R_ITE_PRC_FINDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_ITE_PRC_FINDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_ITE_PRC_FINDataRequestCommand.Text := 'TSM.CAD_DP_R_ITE_PRC_FINDataRequest';
    FCAD_DP_R_ITE_PRC_FINDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_ITE_PRC_FINDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_ITE_PRC_FINDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_ITE_PRC_FINDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_ITE_PRC_FINDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_ITE_PRC_FINDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_ITE_PRC_FINDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_DEZDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_DEZDataRequestCommand = nil then
  begin
    FEST_DP_R_DEZDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_DEZDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_DEZDataRequestCommand.Text := 'TSM.EST_DP_R_DEZDataRequest';
    FEST_DP_R_DEZDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_DEZDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_DEZDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_DEZDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_DEZDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_DEZDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_DEZDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_700DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_700DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_700DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_700DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_700DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_700DataRequest';
    FFAT_DP_R_GAM_700DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_700DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_700DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_700DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_700DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_700DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_700DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_MCH_TOTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_MCH_TOTDataRequestCommand = nil then
  begin
    FFIN_DP_R_MCH_TOTDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_MCH_TOTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_MCH_TOTDataRequestCommand.Text := 'TSM.FIN_DP_R_MCH_TOTDataRequest';
    FFIN_DP_R_MCH_TOTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_MCH_TOTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_MCH_TOTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_MCH_TOTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_MCH_TOTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_MCH_TOTDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_MCH_TOTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_GAM_710DataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_GAM_710DataRequestCommand = nil then
  begin
    FFAT_DP_R_GAM_710DataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_GAM_710DataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_GAM_710DataRequestCommand.Text := 'TSM.FAT_DP_R_GAM_710DataRequest';
    FFAT_DP_R_GAM_710DataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_GAM_710DataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_GAM_710DataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_GAM_710DataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_GAM_710DataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_GAM_710DataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_GAM_710DataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_BCO_SLDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_BCO_SLDDataRequestCommand = nil then
  begin
    FFIN_DP_R_BCO_SLDDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_BCO_SLDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_BCO_SLDDataRequestCommand.Text := 'TSM.FIN_DP_R_BCO_SLDDataRequest';
    FFIN_DP_R_BCO_SLDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_BCO_SLDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_BCO_SLDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_BCO_SLDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_BCO_SLDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_BCO_SLDDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_BCO_SLDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FAT_DP_M_ROMUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFAT_DP_M_ROMUpdateDataCommand = nil then
  begin
    FFAT_DP_M_ROMUpdateDataCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_ROMUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_ROMUpdateDataCommand.Text := 'TSM.FAT_DP_M_ROMUpdateData';
    FFAT_DP_M_ROMUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_ROMUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_ROMUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_ROMUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFAT_DP_M_ROMUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_ROMUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_ROMUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_ROMUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.FIN_DP_R_CXA_DIA_NPDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIA_NPDDataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIA_NPDDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIA_NPDDataRequest';
    FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_CXA_DIA_NFTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_CXA_DIA_NFTDataRequestCommand = nil then
  begin
    FFIN_DP_R_CXA_DIA_NFTDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.Text := 'TSM.FIN_DP_R_CXA_DIA_NFTDataRequest';
    FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_COV_RECDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_COV_RECDataRequestCommand = nil then
  begin
    FFAT_DP_R_COV_RECDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_COV_RECDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_COV_RECDataRequestCommand.Text := 'TSM.FAT_DP_R_COV_RECDataRequest';
    FFAT_DP_R_COV_RECDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_COV_RECDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_COV_RECDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_COV_RECDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_COV_RECDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_COV_RECDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_COV_RECDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FAT_DP_R_COV_FATDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFAT_DP_R_COV_FATDataRequestCommand = nil then
  begin
    FFAT_DP_R_COV_FATDataRequestCommand := FDBXConnection.CreateCommand;
    FFAT_DP_R_COV_FATDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_R_COV_FATDataRequestCommand.Text := 'TSM.FAT_DP_R_COV_FATDataRequest';
    FFAT_DP_R_COV_FATDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_R_COV_FATDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_R_COV_FATDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_R_COV_FATDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_R_COV_FATDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFAT_DP_R_COV_FATDataRequestCommand.ExecuteUpdate;
  Result := FFAT_DP_R_COV_FATDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_GER_PFTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_PFTDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_PFTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_PFTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_PFTDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_PFTDataRequest';
    FBUS_DP_M_CSU_GER_PFTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_PFTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_PFTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_PFTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_PFTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_PFTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_PFTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_GER_PREDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_PREDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_PREDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_PREDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_PREDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_PREDataRequest';
    FBUS_DP_M_CSU_GER_PREDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_PREDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_PREDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_PREDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_PREDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_PREDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_PREDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_GER_PDEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_PDEDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_PDEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_PDEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_PDEDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_PDEDataRequest';
    FBUS_DP_M_CSU_GER_PDEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_PDEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_PDEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_PDEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_PDEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_PDEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_PDEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_GER_PFEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_PFEDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_PFEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_PFEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_PFEDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_PFEDataRequest';
    FBUS_DP_M_CSU_GER_PFEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_PFEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_PFEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_PFEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_PFEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_PFEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_PFEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_GER_PRCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_PRCDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_PRCDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_PRCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_PRCDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_PRCDataRequest';
    FBUS_DP_M_CSU_GER_PRCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_PRCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_PRCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_PRCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_PRCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_PRCDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_PRCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_GER_PPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_PPGDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_PPGDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_PPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_PPGDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_PPGDataRequest';
    FBUS_DP_M_CSU_GER_PPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_PPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_PPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_PPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_PPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_PPGDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_PPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_GER_XRCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_XRCDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_XRCDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_XRCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_XRCDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_XRCDataRequest';
    FBUS_DP_M_CSU_GER_XRCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_XRCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_XRCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_XRCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_XRCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_XRCDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_XRCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_GER_XPGDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_XPGDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_XPGDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_XPGDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_XPGDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_XPGDataRequest';
    FBUS_DP_M_CSU_GER_XPGDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_XPGDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_XPGDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_XPGDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_XPGDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_XPGDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_XPGDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_GER_XCBDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_XCBDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_XCBDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_XCBDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_XCBDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_XCBDataRequest';
    FBUS_DP_M_CSU_GER_XCBDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_XCBDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_XCBDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_XCBDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_XCBDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_XCBDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_XCBDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FIN_DP_M_RECUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FFIN_DP_M_RECUpdateDataCommand = nil then
  begin
    FFIN_DP_M_RECUpdateDataCommand := FDBXConnection.CreateCommand;
    FFIN_DP_M_RECUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_M_RECUpdateDataCommand.Text := 'TSM.FIN_DP_M_RECUpdateData';
    FFIN_DP_M_RECUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_M_RECUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RECUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RECUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FFIN_DP_M_RECUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_M_RECUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_M_RECUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_M_RECUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_M_CSU_GER_PFT_EMPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_PFT_EMPDataRequest';
    FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_OPR_OPP_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_OPR_OPP_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_OPR_OPP_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_OPR_OPP_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_OPR_OPP_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_OPR_OPP_INTDataRequest';
    FBUS_DP_M_OPR_OPP_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_OPR_OPP_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_OPR_OPP_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_OPR_OPP_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_OPR_OPP_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_OPR_OPP_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_OPR_OPP_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_PES_GERDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_PES_GERDataRequestCommand = nil then
  begin
    FEST_DP_R_PES_GERDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_PES_GERDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_PES_GERDataRequestCommand.Text := 'TSM.EST_DP_R_PES_GERDataRequest';
    FEST_DP_R_PES_GERDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_PES_GERDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_PES_GERDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_PES_GERDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_PES_GERDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_PES_GERDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_PES_GERDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.EST_DP_R_PES_ALMDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FEST_DP_R_PES_ALMDataRequestCommand = nil then
  begin
    FEST_DP_R_PES_ALMDataRequestCommand := FDBXConnection.CreateCommand;
    FEST_DP_R_PES_ALMDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_R_PES_ALMDataRequestCommand.Text := 'TSM.EST_DP_R_PES_ALMDataRequest';
    FEST_DP_R_PES_ALMDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_R_PES_ALMDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_R_PES_ALMDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_R_PES_ALMDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_R_PES_ALMDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FEST_DP_R_PES_ALMDataRequestCommand.ExecuteUpdate;
  Result := FEST_DP_R_PES_ALMDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_PEQ_TVPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_PEQ_TVPDataRequest';
    FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_PEQ_CMDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_PEQ_CMDDataRequest';
    FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_PEQ_DPVDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_PEQ_DPVDataRequest';
    FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_PEQ_DPFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_PEQ_DPFDataRequest';
    FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_DRE_RVNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_DRE_RVNDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_DRE_RVNDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_DRE_RVNDataRequest';
    FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_DRE_DVNDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_DRE_DVNDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_DRE_DVNDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_DRE_DVNDataRequest';
    FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_DRE_DPODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_DRE_DPODataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_DRE_DPODataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_DRE_DPODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_DRE_DPODataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_DRE_DPODataRequest';
    FBUS_DP_M_CSU_DRE_DPODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_DRE_DPODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_DRE_DPODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_DRE_DPODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_DRE_DPODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_DRE_DPODataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_DRE_DPODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_DRE_CMDDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_DRE_CMDDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_DRE_CMDDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_DRE_CMDDataRequest';
    FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_CSU_DRE_RNODataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_DRE_RNODataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_DRE_RNODataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_DRE_RNODataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_DRE_RNODataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_DRE_RNODataRequest';
    FBUS_DP_M_CSU_DRE_RNODataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_DRE_RNODataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_DRE_RNODataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_DRE_RNODataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_DRE_RNODataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_DRE_RNODataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_DRE_RNODataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_BR_PREVENDA_DETALHEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand = nil then
  begin
    FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.Text := 'TSM.BUS_DP_BR_PREVENDA_DETALHEDataRequest';
    FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_BR_CUPOM_DETALHEDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand = nil then
  begin
    FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.Text := 'TSM.BUS_DP_BR_CUPOM_DETALHEDataRequest';
    FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_C_FPIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_C_FPIDataRequestCommand = nil then
  begin
    FPCP_DP_C_FPIDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_C_FPIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_C_FPIDataRequestCommand.Text := 'TSM.PCP_DP_C_FPIDataRequest';
    FPCP_DP_C_FPIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_C_FPIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_C_FPIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_C_FPIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_C_FPIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_C_FPIDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_C_FPIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_OPR_ETQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_OPR_ETQDataRequestCommand = nil then
  begin
    FPCP_DP_M_OPR_ETQDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_OPR_ETQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_OPR_ETQDataRequestCommand.Text := 'TSM.PCP_DP_M_OPR_ETQDataRequest';
    FPCP_DP_M_OPR_ETQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_OPR_ETQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_OPR_ETQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_OPR_ETQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_OPR_ETQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_OPR_ETQDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_OPR_ETQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_PED_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_PED_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_PED_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_PED_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_PED_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_PED_INTDataRequest';
    FBUS_DP_M_PED_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_PED_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_PED_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_PED_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_PED_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_PED_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_PED_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_OPR_PED_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_OPR_PED_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_OPR_PED_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_OPR_PED_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_OPR_PED_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_OPR_PED_INTDataRequest';
    FBUS_DP_M_OPR_PED_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_OPR_PED_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_OPR_PED_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_OPR_PED_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_OPR_PED_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_OPR_PED_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_OPR_PED_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.EST_DP_M_MALGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
begin
  if FEST_DP_M_MALGetDataSetPropertiesCommand = nil then
  begin
    FEST_DP_M_MALGetDataSetPropertiesCommand := FDBXConnection.CreateCommand;
    FEST_DP_M_MALGetDataSetPropertiesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEST_DP_M_MALGetDataSetPropertiesCommand.Text := 'TSM.EST_DP_M_MALGetDataSetProperties';
    FEST_DP_M_MALGetDataSetPropertiesCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FEST_DP_M_MALGetDataSetPropertiesCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FEST_DP_M_MALGetDataSetPropertiesCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FEST_DP_M_MALGetDataSetPropertiesCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FEST_DP_M_MALGetDataSetPropertiesCommand.Parameters[1].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FEST_DP_M_MALGetDataSetPropertiesCommand.ExecuteUpdate;
  Properties := FEST_DP_M_MALGetDataSetPropertiesCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.FAT_DP_M_PEDGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
begin
  if FFAT_DP_M_PEDGetDataSetPropertiesCommand = nil then
  begin
    FFAT_DP_M_PEDGetDataSetPropertiesCommand := FDBXConnection.CreateCommand;
    FFAT_DP_M_PEDGetDataSetPropertiesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFAT_DP_M_PEDGetDataSetPropertiesCommand.Text := 'TSM.FAT_DP_M_PEDGetDataSetProperties';
    FFAT_DP_M_PEDGetDataSetPropertiesCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFAT_DP_M_PEDGetDataSetPropertiesCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFAT_DP_M_PEDGetDataSetPropertiesCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFAT_DP_M_PEDGetDataSetPropertiesCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFAT_DP_M_PEDGetDataSetPropertiesCommand.Parameters[1].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FFAT_DP_M_PEDGetDataSetPropertiesCommand.ExecuteUpdate;
  Properties := FFAT_DP_M_PEDGetDataSetPropertiesCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.FIN_DP_R_EXT_CLI_ESTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FFIN_DP_R_EXT_CLI_ESTDataRequestCommand = nil then
  begin
    FFIN_DP_R_EXT_CLI_ESTDataRequestCommand := FDBXConnection.CreateCommand;
    FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.Text := 'TSM.FIN_DP_R_EXT_CLI_ESTDataRequest';
    FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.ExecuteUpdate;
  Result := FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_OPR_OPP_SOPDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_OPR_OPP_SOPDataRequestCommand = nil then
  begin
    FBUS_DP_M_OPR_OPP_SOPDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.Text := 'TSM.BUS_DP_M_OPR_OPP_SOPDataRequest';
    FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_REC_INTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_REC_INTDataRequestCommand = nil then
  begin
    FBUS_DP_M_REC_INTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_REC_INTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_REC_INTDataRequestCommand.Text := 'TSM.BUS_DP_M_REC_INTDataRequest';
    FBUS_DP_M_REC_INTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_REC_INTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_REC_INTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_REC_INTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_REC_INTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_REC_INTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_REC_INTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.PCP_DP_M_OPRGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
begin
  if FPCP_DP_M_OPRGetDataSetPropertiesCommand = nil then
  begin
    FPCP_DP_M_OPRGetDataSetPropertiesCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_OPRGetDataSetPropertiesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_OPRGetDataSetPropertiesCommand.Text := 'TSM.PCP_DP_M_OPRGetDataSetProperties';
    FPCP_DP_M_OPRGetDataSetPropertiesCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_OPRGetDataSetPropertiesCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_OPRGetDataSetPropertiesCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_OPRGetDataSetPropertiesCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_OPRGetDataSetPropertiesCommand.Parameters[1].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FPCP_DP_M_OPRGetDataSetPropertiesCommand.ExecuteUpdate;
  Properties := FPCP_DP_M_OPRGetDataSetPropertiesCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.PCP_DP_M_OPRUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FPCP_DP_M_OPRUpdateDataCommand = nil then
  begin
    FPCP_DP_M_OPRUpdateDataCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_OPRUpdateDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_OPRUpdateDataCommand.Text := 'TSM.PCP_DP_M_OPRUpdateData';
    FPCP_DP_M_OPRUpdateDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_OPRUpdateDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_OPRUpdateDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_OPRUpdateDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FPCP_DP_M_OPRUpdateDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_OPRUpdateDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_OPRUpdateDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_OPRUpdateDataCommand.ExecuteUpdate;
end;

function TSMClient.BUS_DP_M_CSU_GER_PFFDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_CSU_GER_PFFDataRequestCommand = nil then
  begin
    FBUS_DP_M_CSU_GER_PFFDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_CSU_GER_PFFDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_CSU_GER_PFFDataRequestCommand.Text := 'TSM.BUS_DP_M_CSU_GER_PFFDataRequest';
    FBUS_DP_M_CSU_GER_PFFDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_CSU_GER_PFFDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_CSU_GER_PFFDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_CSU_GER_PFFDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_CSU_GER_PFFDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_CSU_GER_PFFDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_CSU_GER_PFFDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_C_ITE_PRCDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_C_ITE_PRCDataRequestCommand = nil then
  begin
    FBUS_DP_C_ITE_PRCDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_C_ITE_PRCDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_C_ITE_PRCDataRequestCommand.Text := 'TSM.BUS_DP_C_ITE_PRCDataRequest';
    FBUS_DP_C_ITE_PRCDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_C_ITE_PRCDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_C_ITE_PRCDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_C_ITE_PRCDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_C_ITE_PRCDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_C_ITE_PRCDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_C_ITE_PRCDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_R_ITE_PRC_MNLDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_R_ITE_PRC_MNLDataRequestCommand = nil then
  begin
    FCAD_DP_R_ITE_PRC_MNLDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.Text := 'TSM.CAD_DP_R_ITE_PRC_MNLDataRequest';
    FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.CAD_DP_C_PAIDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FCAD_DP_C_PAIDataRequestCommand = nil then
  begin
    FCAD_DP_C_PAIDataRequestCommand := FDBXConnection.CreateCommand;
    FCAD_DP_C_PAIDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCAD_DP_C_PAIDataRequestCommand.Text := 'TSM.CAD_DP_C_PAIDataRequest';
    FCAD_DP_C_PAIDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FCAD_DP_C_PAIDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FCAD_DP_C_PAIDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FCAD_DP_C_PAIDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FCAD_DP_C_PAIDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FCAD_DP_C_PAIDataRequestCommand.ExecuteUpdate;
  Result := FCAD_DP_C_PAIDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.PCP_DP_M_OPR_REQDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FPCP_DP_M_OPR_REQDataRequestCommand = nil then
  begin
    FPCP_DP_M_OPR_REQDataRequestCommand := FDBXConnection.CreateCommand;
    FPCP_DP_M_OPR_REQDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPCP_DP_M_OPR_REQDataRequestCommand.Text := 'TSM.PCP_DP_M_OPR_REQDataRequest';
    FPCP_DP_M_OPR_REQDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FPCP_DP_M_OPR_REQDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FPCP_DP_M_OPR_REQDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FPCP_DP_M_OPR_REQDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FPCP_DP_M_OPR_REQDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FPCP_DP_M_OPR_REQDataRequestCommand.ExecuteUpdate;
  Result := FPCP_DP_M_OPR_REQDataRequestCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.BUS_DP_M_LOT_ESTDataRequest(Sender: TObject; Input: OleVariant): OleVariant;
begin
  if FBUS_DP_M_LOT_ESTDataRequestCommand = nil then
  begin
    FBUS_DP_M_LOT_ESTDataRequestCommand := FDBXConnection.CreateCommand;
    FBUS_DP_M_LOT_ESTDataRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBUS_DP_M_LOT_ESTDataRequestCommand.Text := 'TSM.BUS_DP_M_LOT_ESTDataRequest';
    FBUS_DP_M_LOT_ESTDataRequestCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FBUS_DP_M_LOT_ESTDataRequestCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FBUS_DP_M_LOT_ESTDataRequestCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FBUS_DP_M_LOT_ESTDataRequestCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FBUS_DP_M_LOT_ESTDataRequestCommand.Parameters[1].Value.AsVariant := Input;
  FBUS_DP_M_LOT_ESTDataRequestCommand.ExecuteUpdate;
  Result := FBUS_DP_M_LOT_ESTDataRequestCommand.Parameters[2].Value.AsVariant;
end;

procedure TSMClient.AbreBanco;
begin
  if FAbreBancoCommand = nil then
  begin
    FAbreBancoCommand := FDBXConnection.CreateCommand;
    FAbreBancoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAbreBancoCommand.Text := 'TSM.AbreBanco';
    FAbreBancoCommand.Prepare;
  end;
  FAbreBancoCommand.ExecuteUpdate;
end;

procedure TSMClient.GerarSqlTxt(dataset: TSQLDataSet);
begin
  if FGerarSqlTxtCommand = nil then
  begin
    FGerarSqlTxtCommand := FDBXConnection.CreateCommand;
    FGerarSqlTxtCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGerarSqlTxtCommand.Text := 'TSM.GerarSqlTxt';
    FGerarSqlTxtCommand.Prepare;
  end;
  if not Assigned(dataset) then
    FGerarSqlTxtCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FGerarSqlTxtCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FGerarSqlTxtCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(dataset), True);
      if FInstanceOwner then
        dataset.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FGerarSqlTxtCommand.ExecuteUpdate;
end;

function TSMClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TSM.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TSM.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.enValorChave(NomeSeq: string): Integer;
begin
  if FenValorChaveCommand = nil then
  begin
    FenValorChaveCommand := FDBXConnection.CreateCommand;
    FenValorChaveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenValorChaveCommand.Text := 'TSM.enValorChave';
    FenValorChaveCommand.Prepare;
  end;
  FenValorChaveCommand.Parameters[0].Value.SetWideString(NomeSeq);
  FenValorChaveCommand.ExecuteUpdate;
  Result := FenValorChaveCommand.Parameters[1].Value.GetInt32;
end;

function TSMClient.enChaveNItens(NomeSeq: string; QtdeItens: Integer): Integer;
begin
  if FenChaveNItensCommand = nil then
  begin
    FenChaveNItensCommand := FDBXConnection.CreateCommand;
    FenChaveNItensCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenChaveNItensCommand.Text := 'TSM.enChaveNItens';
    FenChaveNItensCommand.Prepare;
  end;
  FenChaveNItensCommand.Parameters[0].Value.SetWideString(NomeSeq);
  FenChaveNItensCommand.Parameters[1].Value.SetInt32(QtdeItens);
  FenChaveNItensCommand.ExecuteUpdate;
  Result := FenChaveNItensCommand.Parameters[2].Value.GetInt32;
end;

function TSMClient.enDataServer: TDateTime;
begin
  if FenDataServerCommand = nil then
  begin
    FenDataServerCommand := FDBXConnection.CreateCommand;
    FenDataServerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenDataServerCommand.Text := 'TSM.enDataServer';
    FenDataServerCommand.Prepare;
  end;
  FenDataServerCommand.ExecuteUpdate;
  Result := FenDataServerCommand.Parameters[0].Value.AsDateTime;
end;

function TSMClient.enHoraServer: TDateTime;
begin
  if FenHoraServerCommand = nil then
  begin
    FenHoraServerCommand := FDBXConnection.CreateCommand;
    FenHoraServerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenHoraServerCommand.Text := 'TSM.enHoraServer';
    FenHoraServerCommand.Prepare;
  end;
  FenHoraServerCommand.ExecuteUpdate;
  Result := FenHoraServerCommand.Parameters[0].Value.AsDateTime;
end;

function TSMClient.enVerifVersao: string;
begin
  if FenVerifVersaoCommand = nil then
  begin
    FenVerifVersaoCommand := FDBXConnection.CreateCommand;
    FenVerifVersaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerifVersaoCommand.Text := 'TSM.enVerifVersao';
    FenVerifVersaoCommand.Prepare;
  end;
  FenVerifVersaoCommand.ExecuteUpdate;
  Result := FenVerifVersaoCommand.Parameters[0].Value.GetWideString;
end;

function TSMClient.enVerifPedDupOrs(id_empresa: string; id_ors: string; id_pedido: string): Boolean;
begin
  if FenVerifPedDupOrsCommand = nil then
  begin
    FenVerifPedDupOrsCommand := FDBXConnection.CreateCommand;
    FenVerifPedDupOrsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerifPedDupOrsCommand.Text := 'TSM.enVerifPedDupOrs';
    FenVerifPedDupOrsCommand.Prepare;
  end;
  FenVerifPedDupOrsCommand.Parameters[0].Value.SetWideString(id_empresa);
  FenVerifPedDupOrsCommand.Parameters[1].Value.SetWideString(id_ors);
  FenVerifPedDupOrsCommand.Parameters[2].Value.SetWideString(id_pedido);
  FenVerifPedDupOrsCommand.ExecuteUpdate;
  Result := FenVerifPedDupOrsCommand.Parameters[3].Value.GetBoolean;
end;

function TSMClient.enVerifNfeDupRom(id_empresa: string; id_romaneio: string; id_fiscal: string): Boolean;
begin
  if FenVerifNfeDupRomCommand = nil then
  begin
    FenVerifNfeDupRomCommand := FDBXConnection.CreateCommand;
    FenVerifNfeDupRomCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerifNfeDupRomCommand.Text := 'TSM.enVerifNfeDupRom';
    FenVerifNfeDupRomCommand.Prepare;
  end;
  FenVerifNfeDupRomCommand.Parameters[0].Value.SetWideString(id_empresa);
  FenVerifNfeDupRomCommand.Parameters[1].Value.SetWideString(id_romaneio);
  FenVerifNfeDupRomCommand.Parameters[2].Value.SetWideString(id_fiscal);
  FenVerifNfeDupRomCommand.ExecuteUpdate;
  Result := FenVerifNfeDupRomCommand.Parameters[3].Value.GetBoolean;
end;

function TSMClient.enVerifCteIteDup(id_empresa: string; id_controle: string; id_item: string; id_cor: string; id_tamanho: string): string;
begin
  if FenVerifCteIteDupCommand = nil then
  begin
    FenVerifCteIteDupCommand := FDBXConnection.CreateCommand;
    FenVerifCteIteDupCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerifCteIteDupCommand.Text := 'TSM.enVerifCteIteDup';
    FenVerifCteIteDupCommand.Prepare;
  end;
  FenVerifCteIteDupCommand.Parameters[0].Value.SetWideString(id_empresa);
  FenVerifCteIteDupCommand.Parameters[1].Value.SetWideString(id_controle);
  FenVerifCteIteDupCommand.Parameters[2].Value.SetWideString(id_item);
  FenVerifCteIteDupCommand.Parameters[3].Value.SetWideString(id_cor);
  FenVerifCteIteDupCommand.Parameters[4].Value.SetWideString(id_tamanho);
  FenVerifCteIteDupCommand.ExecuteUpdate;
  Result := FenVerifCteIteDupCommand.Parameters[5].Value.GetWideString;
end;

function TSMClient.enVerifNfePendente(id_empresa: string; id_funcionario: string): string;
begin
  if FenVerifNfePendenteCommand = nil then
  begin
    FenVerifNfePendenteCommand := FDBXConnection.CreateCommand;
    FenVerifNfePendenteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerifNfePendenteCommand.Text := 'TSM.enVerifNfePendente';
    FenVerifNfePendenteCommand.Prepare;
  end;
  FenVerifNfePendenteCommand.Parameters[0].Value.SetWideString(id_empresa);
  FenVerifNfePendenteCommand.Parameters[1].Value.SetWideString(id_funcionario);
  FenVerifNfePendenteCommand.ExecuteUpdate;
  Result := FenVerifNfePendenteCommand.Parameters[2].Value.GetWideString;
end;

function TSMClient.enExiTitulosBaixado(Empresa: string; ID: string; Rotina: string): Boolean;
begin
  if FenExiTitulosBaixadoCommand = nil then
  begin
    FenExiTitulosBaixadoCommand := FDBXConnection.CreateCommand;
    FenExiTitulosBaixadoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenExiTitulosBaixadoCommand.Text := 'TSM.enExiTitulosBaixado';
    FenExiTitulosBaixadoCommand.Prepare;
  end;
  FenExiTitulosBaixadoCommand.Parameters[0].Value.SetWideString(Empresa);
  FenExiTitulosBaixadoCommand.Parameters[1].Value.SetWideString(ID);
  FenExiTitulosBaixadoCommand.Parameters[2].Value.SetWideString(Rotina);
  FenExiTitulosBaixadoCommand.ExecuteUpdate;
  Result := FenExiTitulosBaixadoCommand.Parameters[3].Value.GetBoolean;
end;

function TSMClient.enExiDebCliente(DiasProtesto: Integer; id_cliente: Integer): Boolean;
begin
  if FenExiDebClienteCommand = nil then
  begin
    FenExiDebClienteCommand := FDBXConnection.CreateCommand;
    FenExiDebClienteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenExiDebClienteCommand.Text := 'TSM.enExiDebCliente';
    FenExiDebClienteCommand.Prepare;
  end;
  FenExiDebClienteCommand.Parameters[0].Value.SetInt32(DiasProtesto);
  FenExiDebClienteCommand.Parameters[1].Value.SetInt32(id_cliente);
  FenExiDebClienteCommand.ExecuteUpdate;
  Result := FenExiDebClienteCommand.Parameters[2].Value.GetBoolean;
end;

function TSMClient.enBuscaMenu(Perfil: Integer; Formulario: string; Acao: Integer): Boolean;
begin
  if FenBuscaMenuCommand = nil then
  begin
    FenBuscaMenuCommand := FDBXConnection.CreateCommand;
    FenBuscaMenuCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenBuscaMenuCommand.Text := 'TSM.enBuscaMenu';
    FenBuscaMenuCommand.Prepare;
  end;
  FenBuscaMenuCommand.Parameters[0].Value.SetInt32(Perfil);
  FenBuscaMenuCommand.Parameters[1].Value.SetWideString(Formulario);
  FenBuscaMenuCommand.Parameters[2].Value.SetInt32(Acao);
  FenBuscaMenuCommand.ExecuteUpdate;
  Result := FenBuscaMenuCommand.Parameters[3].Value.GetBoolean;
end;

function TSMClient.enVerCreditoForn(Fornecedor: string): Currency;
begin
  if FenVerCreditoFornCommand = nil then
  begin
    FenVerCreditoFornCommand := FDBXConnection.CreateCommand;
    FenVerCreditoFornCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerCreditoFornCommand.Text := 'TSM.enVerCreditoForn';
    FenVerCreditoFornCommand.Prepare;
  end;
  FenVerCreditoFornCommand.Parameters[0].Value.SetWideString(Fornecedor);
  FenVerCreditoFornCommand.ExecuteUpdate;
  Result := FenVerCreditoFornCommand.Parameters[1].Value.AsCurrency;
end;

function TSMClient.enVerCreditoCli(Cliente: string; tipo_saldo: Integer): Currency;
begin
  if FenVerCreditoCliCommand = nil then
  begin
    FenVerCreditoCliCommand := FDBXConnection.CreateCommand;
    FenVerCreditoCliCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerCreditoCliCommand.Text := 'TSM.enVerCreditoCli';
    FenVerCreditoCliCommand.Prepare;
  end;
  FenVerCreditoCliCommand.Parameters[0].Value.SetWideString(Cliente);
  FenVerCreditoCliCommand.Parameters[1].Value.SetInt32(tipo_saldo);
  FenVerCreditoCliCommand.ExecuteUpdate;
  Result := FenVerCreditoCliCommand.Parameters[2].Value.AsCurrency;
end;

function TSMClient.enVerSaldoDiaCxa(IdEmpresa: Integer; IdConta: Integer; IdAbertura: Integer): Currency;
begin
  if FenVerSaldoDiaCxaCommand = nil then
  begin
    FenVerSaldoDiaCxaCommand := FDBXConnection.CreateCommand;
    FenVerSaldoDiaCxaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerSaldoDiaCxaCommand.Text := 'TSM.enVerSaldoDiaCxa';
    FenVerSaldoDiaCxaCommand.Prepare;
  end;
  FenVerSaldoDiaCxaCommand.Parameters[0].Value.SetInt32(IdEmpresa);
  FenVerSaldoDiaCxaCommand.Parameters[1].Value.SetInt32(IdConta);
  FenVerSaldoDiaCxaCommand.Parameters[2].Value.SetInt32(IdAbertura);
  FenVerSaldoDiaCxaCommand.ExecuteUpdate;
  Result := FenVerSaldoDiaCxaCommand.Parameters[3].Value.AsCurrency;
end;

function TSMClient.enGerPeqDesp(IdFornecedor: Integer; IdAbertura: Integer; IdLocalTit: Integer; IdFormaPag: Integer; IdCcusto: Integer; IdTipoFinanceiro: Integer; IdEmpresa: Integer; IdPlano: string; Historico: string; DtaEmissao: TDateTime; DtaVencto: TDateTime; DtaOrig: TDateTime; VlrLancto: Currency): string;
begin
  if FenGerPeqDespCommand = nil then
  begin
    FenGerPeqDespCommand := FDBXConnection.CreateCommand;
    FenGerPeqDespCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenGerPeqDespCommand.Text := 'TSM.enGerPeqDesp';
    FenGerPeqDespCommand.Prepare;
  end;
  FenGerPeqDespCommand.Parameters[0].Value.SetInt32(IdFornecedor);
  FenGerPeqDespCommand.Parameters[1].Value.SetInt32(IdAbertura);
  FenGerPeqDespCommand.Parameters[2].Value.SetInt32(IdLocalTit);
  FenGerPeqDespCommand.Parameters[3].Value.SetInt32(IdFormaPag);
  FenGerPeqDespCommand.Parameters[4].Value.SetInt32(IdCcusto);
  FenGerPeqDespCommand.Parameters[5].Value.SetInt32(IdTipoFinanceiro);
  FenGerPeqDespCommand.Parameters[6].Value.SetInt32(IdEmpresa);
  FenGerPeqDespCommand.Parameters[7].Value.SetWideString(IdPlano);
  FenGerPeqDespCommand.Parameters[8].Value.SetWideString(Historico);
  FenGerPeqDespCommand.Parameters[9].Value.AsDateTime := DtaEmissao;
  FenGerPeqDespCommand.Parameters[10].Value.AsDateTime := DtaVencto;
  FenGerPeqDespCommand.Parameters[11].Value.AsDateTime := DtaOrig;
  FenGerPeqDespCommand.Parameters[12].Value.AsCurrency := VlrLancto;
  FenGerPeqDespCommand.ExecuteUpdate;
  Result := FenGerPeqDespCommand.Parameters[13].Value.GetWideString;
end;

function TSMClient.enBusTotPagMed(IdEmpresa: string; PctTipMov: string): Currency;
begin
  if FenBusTotPagMedCommand = nil then
  begin
    FenBusTotPagMedCommand := FDBXConnection.CreateCommand;
    FenBusTotPagMedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenBusTotPagMedCommand.Text := 'TSM.enBusTotPagMed';
    FenBusTotPagMedCommand.Prepare;
  end;
  FenBusTotPagMedCommand.Parameters[0].Value.SetWideString(IdEmpresa);
  FenBusTotPagMedCommand.Parameters[1].Value.SetWideString(PctTipMov);
  FenBusTotPagMedCommand.ExecuteUpdate;
  Result := FenBusTotPagMedCommand.Parameters[2].Value.AsCurrency;
end;

function TSMClient.enBusTotVendMed(Ano: string; MesAtual: string; IdEmpresa: string): Currency;
begin
  if FenBusTotVendMedCommand = nil then
  begin
    FenBusTotVendMedCommand := FDBXConnection.CreateCommand;
    FenBusTotVendMedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenBusTotVendMedCommand.Text := 'TSM.enBusTotVendMed';
    FenBusTotVendMedCommand.Prepare;
  end;
  FenBusTotVendMedCommand.Parameters[0].Value.SetWideString(Ano);
  FenBusTotVendMedCommand.Parameters[1].Value.SetWideString(MesAtual);
  FenBusTotVendMedCommand.Parameters[2].Value.SetWideString(IdEmpresa);
  FenBusTotVendMedCommand.ExecuteUpdate;
  Result := FenBusTotVendMedCommand.Parameters[3].Value.AsCurrency;
end;

function TSMClient.enAtuPrcIte(IdFiscal: string; IdSeqItem: string; IdItem: string; fp_vlr_tot_custo_fix_mens: Currency; fp_vlr_ven_med_mens: Currency; fp_per_cust_ven_mens: Currency; fp_per_icms_ven: Currency; fp_per_simples: Currency; fp_per_comissao: Currency; fp_per_frete_ven: Currency; fp_per_cust_fin_ven: Currency; fp_per_lucro_ven: Currency; fp_per_total_incid: Currency; fp_per_markup_div: Currency; fp_per_markup_mult: Currency; fp_per_prc_prz_ven_prat: Currency; PrcIteCalc: Currency; PrcItePrat: Currency; PrcPrazoItePrat: Currency): string;
begin
  if FenAtuPrcIteCommand = nil then
  begin
    FenAtuPrcIteCommand := FDBXConnection.CreateCommand;
    FenAtuPrcIteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenAtuPrcIteCommand.Text := 'TSM.enAtuPrcIte';
    FenAtuPrcIteCommand.Prepare;
  end;
  FenAtuPrcIteCommand.Parameters[0].Value.SetWideString(IdFiscal);
  FenAtuPrcIteCommand.Parameters[1].Value.SetWideString(IdSeqItem);
  FenAtuPrcIteCommand.Parameters[2].Value.SetWideString(IdItem);
  FenAtuPrcIteCommand.Parameters[3].Value.AsCurrency := fp_vlr_tot_custo_fix_mens;
  FenAtuPrcIteCommand.Parameters[4].Value.AsCurrency := fp_vlr_ven_med_mens;
  FenAtuPrcIteCommand.Parameters[5].Value.AsCurrency := fp_per_cust_ven_mens;
  FenAtuPrcIteCommand.Parameters[6].Value.AsCurrency := fp_per_icms_ven;
  FenAtuPrcIteCommand.Parameters[7].Value.AsCurrency := fp_per_simples;
  FenAtuPrcIteCommand.Parameters[8].Value.AsCurrency := fp_per_comissao;
  FenAtuPrcIteCommand.Parameters[9].Value.AsCurrency := fp_per_frete_ven;
  FenAtuPrcIteCommand.Parameters[10].Value.AsCurrency := fp_per_cust_fin_ven;
  FenAtuPrcIteCommand.Parameters[11].Value.AsCurrency := fp_per_lucro_ven;
  FenAtuPrcIteCommand.Parameters[12].Value.AsCurrency := fp_per_total_incid;
  FenAtuPrcIteCommand.Parameters[13].Value.AsCurrency := fp_per_markup_div;
  FenAtuPrcIteCommand.Parameters[14].Value.AsCurrency := fp_per_markup_mult;
  FenAtuPrcIteCommand.Parameters[15].Value.AsCurrency := fp_per_prc_prz_ven_prat;
  FenAtuPrcIteCommand.Parameters[16].Value.AsCurrency := PrcIteCalc;
  FenAtuPrcIteCommand.Parameters[17].Value.AsCurrency := PrcItePrat;
  FenAtuPrcIteCommand.Parameters[18].Value.AsCurrency := PrcPrazoItePrat;
  FenAtuPrcIteCommand.ExecuteUpdate;
  Result := FenAtuPrcIteCommand.Parameters[19].Value.GetWideString;
end;

procedure TSMClient.enDesfazerFat(IdFiscal: Integer; BUS_CD_M_NFE: TClientDataSet; var FIN_CD_M_CTA: TClientDataSet; var FIN_CD_M_REC: TClientDataSet; var FIN_CD_M_REC_PAG: TClientDataSet; var FIN_CD_M_RCR: TClientDataSet; var FIN_CD_M_CTA_RCR: TClientDataSet; var FAT_CD_M_PED: TClientDataSet; var OFI_CD_M_ORV: TClientDataSet; var EST_CD_M_FES: TClientDataSet; ReabrePed: string);
begin
  if FenDesfazerFatCommand = nil then
  begin
    FenDesfazerFatCommand := FDBXConnection.CreateCommand;
    FenDesfazerFatCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenDesfazerFatCommand.Text := 'TSM.enDesfazerFat';
    FenDesfazerFatCommand.Prepare;
  end;
  FenDesfazerFatCommand.Parameters[0].Value.SetInt32(IdFiscal);
  if not Assigned(BUS_CD_M_NFE) then
    FenDesfazerFatCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FenDesfazerFatCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(BUS_CD_M_NFE), True);
      if FInstanceOwner then
        BUS_CD_M_NFE.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(FIN_CD_M_CTA) then
    FenDesfazerFatCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FenDesfazerFatCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(FIN_CD_M_CTA), True);
      if FInstanceOwner then
        FIN_CD_M_CTA.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(FIN_CD_M_REC) then
    FenDesfazerFatCommand.Parameters[3].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[3].ConnectionHandler).GetJSONMarshaler;
    try
      FenDesfazerFatCommand.Parameters[3].Value.SetJSONValue(FMarshal.Marshal(FIN_CD_M_REC), True);
      if FInstanceOwner then
        FIN_CD_M_REC.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(FIN_CD_M_REC_PAG) then
    FenDesfazerFatCommand.Parameters[4].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[4].ConnectionHandler).GetJSONMarshaler;
    try
      FenDesfazerFatCommand.Parameters[4].Value.SetJSONValue(FMarshal.Marshal(FIN_CD_M_REC_PAG), True);
      if FInstanceOwner then
        FIN_CD_M_REC_PAG.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(FIN_CD_M_RCR) then
    FenDesfazerFatCommand.Parameters[5].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[5].ConnectionHandler).GetJSONMarshaler;
    try
      FenDesfazerFatCommand.Parameters[5].Value.SetJSONValue(FMarshal.Marshal(FIN_CD_M_RCR), True);
      if FInstanceOwner then
        FIN_CD_M_RCR.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(FIN_CD_M_CTA_RCR) then
    FenDesfazerFatCommand.Parameters[6].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[6].ConnectionHandler).GetJSONMarshaler;
    try
      FenDesfazerFatCommand.Parameters[6].Value.SetJSONValue(FMarshal.Marshal(FIN_CD_M_CTA_RCR), True);
      if FInstanceOwner then
        FIN_CD_M_CTA_RCR.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(FAT_CD_M_PED) then
    FenDesfazerFatCommand.Parameters[7].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[7].ConnectionHandler).GetJSONMarshaler;
    try
      FenDesfazerFatCommand.Parameters[7].Value.SetJSONValue(FMarshal.Marshal(FAT_CD_M_PED), True);
      if FInstanceOwner then
        FAT_CD_M_PED.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(OFI_CD_M_ORV) then
    FenDesfazerFatCommand.Parameters[8].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[8].ConnectionHandler).GetJSONMarshaler;
    try
      FenDesfazerFatCommand.Parameters[8].Value.SetJSONValue(FMarshal.Marshal(OFI_CD_M_ORV), True);
      if FInstanceOwner then
        OFI_CD_M_ORV.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(EST_CD_M_FES) then
    FenDesfazerFatCommand.Parameters[9].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[9].ConnectionHandler).GetJSONMarshaler;
    try
      FenDesfazerFatCommand.Parameters[9].Value.SetJSONValue(FMarshal.Marshal(EST_CD_M_FES), True);
      if FInstanceOwner then
        EST_CD_M_FES.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenDesfazerFatCommand.Parameters[10].Value.SetWideString(ReabrePed);
  FenDesfazerFatCommand.ExecuteUpdate;
  if not FenDesfazerFatCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      FIN_CD_M_CTA := TClientDataSet(FUnMarshal.UnMarshal(FenDesfazerFatCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenDesfazerFatCommand.FreeOnExecute(FIN_CD_M_CTA);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FIN_CD_M_CTA := nil;
  if not FenDesfazerFatCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      FIN_CD_M_REC := TClientDataSet(FUnMarshal.UnMarshal(FenDesfazerFatCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenDesfazerFatCommand.FreeOnExecute(FIN_CD_M_REC);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FIN_CD_M_REC := nil;
  if not FenDesfazerFatCommand.Parameters[4].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[4].ConnectionHandler).GetJSONUnMarshaler;
    try
      FIN_CD_M_REC_PAG := TClientDataSet(FUnMarshal.UnMarshal(FenDesfazerFatCommand.Parameters[4].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenDesfazerFatCommand.FreeOnExecute(FIN_CD_M_REC_PAG);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FIN_CD_M_REC_PAG := nil;
  if not FenDesfazerFatCommand.Parameters[5].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[5].ConnectionHandler).GetJSONUnMarshaler;
    try
      FIN_CD_M_RCR := TClientDataSet(FUnMarshal.UnMarshal(FenDesfazerFatCommand.Parameters[5].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenDesfazerFatCommand.FreeOnExecute(FIN_CD_M_RCR);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FIN_CD_M_RCR := nil;
  if not FenDesfazerFatCommand.Parameters[6].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[6].ConnectionHandler).GetJSONUnMarshaler;
    try
      FIN_CD_M_CTA_RCR := TClientDataSet(FUnMarshal.UnMarshal(FenDesfazerFatCommand.Parameters[6].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenDesfazerFatCommand.FreeOnExecute(FIN_CD_M_CTA_RCR);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FIN_CD_M_CTA_RCR := nil;
  if not FenDesfazerFatCommand.Parameters[7].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[7].ConnectionHandler).GetJSONUnMarshaler;
    try
      FAT_CD_M_PED := TClientDataSet(FUnMarshal.UnMarshal(FenDesfazerFatCommand.Parameters[7].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenDesfazerFatCommand.FreeOnExecute(FAT_CD_M_PED);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FAT_CD_M_PED := nil;
  if not FenDesfazerFatCommand.Parameters[8].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[8].ConnectionHandler).GetJSONUnMarshaler;
    try
      OFI_CD_M_ORV := TClientDataSet(FUnMarshal.UnMarshal(FenDesfazerFatCommand.Parameters[8].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenDesfazerFatCommand.FreeOnExecute(OFI_CD_M_ORV);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    OFI_CD_M_ORV := nil;
  if not FenDesfazerFatCommand.Parameters[9].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenDesfazerFatCommand.Parameters[9].ConnectionHandler).GetJSONUnMarshaler;
    try
      EST_CD_M_FES := TClientDataSet(FUnMarshal.UnMarshal(FenDesfazerFatCommand.Parameters[9].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenDesfazerFatCommand.FreeOnExecute(EST_CD_M_FES);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    EST_CD_M_FES := nil;
end;

procedure TSMClient.enGerFinCxaBco(Sender: TObject; origem: Integer; DataSet: TCustomClientDataSet; cdsTit: TDataSet; FIN_CD_M_CTA: TClientDataSet; IdAbertura: Integer);
begin
  if FenGerFinCxaBcoCommand = nil then
  begin
    FenGerFinCxaBcoCommand := FDBXConnection.CreateCommand;
    FenGerFinCxaBcoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenGerFinCxaBcoCommand.Text := 'TSM.enGerFinCxaBco';
    FenGerFinCxaBcoCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FenGerFinCxaBcoCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinCxaBcoCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinCxaBcoCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenGerFinCxaBcoCommand.Parameters[1].Value.SetInt32(origem);
  if not Assigned(DataSet) then
    FenGerFinCxaBcoCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinCxaBcoCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinCxaBcoCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenGerFinCxaBcoCommand.Parameters[3].Value.SetDBXReader(TDBXDataSetReader.Create(cdsTit, FInstanceOwner), True);
  if not Assigned(FIN_CD_M_CTA) then
    FenGerFinCxaBcoCommand.Parameters[4].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinCxaBcoCommand.Parameters[4].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinCxaBcoCommand.Parameters[4].Value.SetJSONValue(FMarshal.Marshal(FIN_CD_M_CTA), True);
      if FInstanceOwner then
        FIN_CD_M_CTA.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenGerFinCxaBcoCommand.Parameters[5].Value.SetInt32(IdAbertura);
  FenGerFinCxaBcoCommand.ExecuteUpdate;
end;

procedure TSMClient.enGerFinRecPag(Sender: TObject; origem: Integer; DataSet: TCustomClientDataSet; var cdsTit: TDataSet; var FIN_CD_M_REC_PAG: TClientDataSet; IdAbertura: Integer; NumeroNfe: string);
begin
  if FenGerFinRecPagCommand = nil then
  begin
    FenGerFinRecPagCommand := FDBXConnection.CreateCommand;
    FenGerFinRecPagCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenGerFinRecPagCommand.Text := 'TSM.enGerFinRecPag';
    FenGerFinRecPagCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FenGerFinRecPagCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinRecPagCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinRecPagCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenGerFinRecPagCommand.Parameters[1].Value.SetInt32(origem);
  if not Assigned(DataSet) then
    FenGerFinRecPagCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinRecPagCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinRecPagCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenGerFinRecPagCommand.Parameters[3].Value.SetDBXReader(TDBXDataSetReader.Create(cdsTit, FInstanceOwner), True);
  if not Assigned(FIN_CD_M_REC_PAG) then
    FenGerFinRecPagCommand.Parameters[4].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinRecPagCommand.Parameters[4].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinRecPagCommand.Parameters[4].Value.SetJSONValue(FMarshal.Marshal(FIN_CD_M_REC_PAG), True);
      if FInstanceOwner then
        FIN_CD_M_REC_PAG.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenGerFinRecPagCommand.Parameters[5].Value.SetInt32(IdAbertura);
  FenGerFinRecPagCommand.Parameters[6].Value.SetWideString(NumeroNfe);
  FenGerFinRecPagCommand.ExecuteUpdate;
  cdsTit := TCustomSQLDataSet.Create(nil, FenGerFinRecPagCommand.Parameters[3].Value.GetDBXReader(False), True);
  cdsTit.Open;
  if FInstanceOwner then
    FenGerFinRecPagCommand.FreeOnExecute(cdsTit);
  if not FenGerFinRecPagCommand.Parameters[4].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenGerFinRecPagCommand.Parameters[4].ConnectionHandler).GetJSONUnMarshaler;
    try
      FIN_CD_M_REC_PAG := TClientDataSet(FUnMarshal.UnMarshal(FenGerFinRecPagCommand.Parameters[4].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenGerFinRecPagCommand.FreeOnExecute(FIN_CD_M_REC_PAG);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FIN_CD_M_REC_PAG := nil;
end;

procedure TSMClient.enGerFinRcr(Sender: TObject; origem: Integer; DataSet: TCustomClientDataSet; var cdsTit: TDataSet; var FIN_CD_M_RCR: TClientDataSet; var FIN_CD_M_CTA_RCR: TClientDataSet; IdAbertura: Integer);
begin
  if FenGerFinRcrCommand = nil then
  begin
    FenGerFinRcrCommand := FDBXConnection.CreateCommand;
    FenGerFinRcrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenGerFinRcrCommand.Text := 'TSM.enGerFinRcr';
    FenGerFinRcrCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FenGerFinRcrCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinRcrCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinRcrCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenGerFinRcrCommand.Parameters[1].Value.SetInt32(origem);
  if not Assigned(DataSet) then
    FenGerFinRcrCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinRcrCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinRcrCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenGerFinRcrCommand.Parameters[3].Value.SetDBXReader(TDBXDataSetReader.Create(cdsTit, FInstanceOwner), True);
  if not Assigned(FIN_CD_M_RCR) then
    FenGerFinRcrCommand.Parameters[4].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinRcrCommand.Parameters[4].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinRcrCommand.Parameters[4].Value.SetJSONValue(FMarshal.Marshal(FIN_CD_M_RCR), True);
      if FInstanceOwner then
        FIN_CD_M_RCR.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(FIN_CD_M_CTA_RCR) then
    FenGerFinRcrCommand.Parameters[5].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenGerFinRcrCommand.Parameters[5].ConnectionHandler).GetJSONMarshaler;
    try
      FenGerFinRcrCommand.Parameters[5].Value.SetJSONValue(FMarshal.Marshal(FIN_CD_M_CTA_RCR), True);
      if FInstanceOwner then
        FIN_CD_M_CTA_RCR.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenGerFinRcrCommand.Parameters[6].Value.SetInt32(IdAbertura);
  FenGerFinRcrCommand.ExecuteUpdate;
  cdsTit := TCustomSQLDataSet.Create(nil, FenGerFinRcrCommand.Parameters[3].Value.GetDBXReader(False), True);
  cdsTit.Open;
  if FInstanceOwner then
    FenGerFinRcrCommand.FreeOnExecute(cdsTit);
  if not FenGerFinRcrCommand.Parameters[4].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenGerFinRcrCommand.Parameters[4].ConnectionHandler).GetJSONUnMarshaler;
    try
      FIN_CD_M_RCR := TClientDataSet(FUnMarshal.UnMarshal(FenGerFinRcrCommand.Parameters[4].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenGerFinRcrCommand.FreeOnExecute(FIN_CD_M_RCR);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FIN_CD_M_RCR := nil;
  if not FenGerFinRcrCommand.Parameters[5].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenGerFinRcrCommand.Parameters[5].ConnectionHandler).GetJSONUnMarshaler;
    try
      FIN_CD_M_CTA_RCR := TClientDataSet(FUnMarshal.UnMarshal(FenGerFinRcrCommand.Parameters[5].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenGerFinRcrCommand.FreeOnExecute(FIN_CD_M_CTA_RCR);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FIN_CD_M_CTA_RCR := nil;
end;

function TSMClient.enBusNovoSldlimCli(IdEmpresa: string; IdCliente: string; VlrLimiteCli: Currency): Currency;
begin
  if FenBusNovoSldlimCliCommand = nil then
  begin
    FenBusNovoSldlimCliCommand := FDBXConnection.CreateCommand;
    FenBusNovoSldlimCliCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenBusNovoSldlimCliCommand.Text := 'TSM.enBusNovoSldlimCli';
    FenBusNovoSldlimCliCommand.Prepare;
  end;
  FenBusNovoSldlimCliCommand.Parameters[0].Value.SetWideString(IdEmpresa);
  FenBusNovoSldlimCliCommand.Parameters[1].Value.SetWideString(IdCliente);
  FenBusNovoSldlimCliCommand.Parameters[2].Value.AsCurrency := VlrLimiteCli;
  FenBusNovoSldlimCliCommand.ExecuteUpdate;
  Result := FenBusNovoSldlimCliCommand.Parameters[3].Value.AsCurrency;
end;

function TSMClient.enVerSldLimAtu(origem: Integer; DataSet: TCustomClientDataSet; cdsTitulos: TDataSet; id_forma_pag_rbx: Integer): Currency;
begin
  if FenVerSldLimAtuCommand = nil then
  begin
    FenVerSldLimAtuCommand := FDBXConnection.CreateCommand;
    FenVerSldLimAtuCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerSldLimAtuCommand.Text := 'TSM.enVerSldLimAtu';
    FenVerSldLimAtuCommand.Prepare;
  end;
  FenVerSldLimAtuCommand.Parameters[0].Value.SetInt32(origem);
  if not Assigned(DataSet) then
    FenVerSldLimAtuCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenVerSldLimAtuCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FenVerSldLimAtuCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenVerSldLimAtuCommand.Parameters[2].Value.SetDBXReader(TDBXDataSetReader.Create(cdsTitulos, FInstanceOwner), True);
  FenVerSldLimAtuCommand.Parameters[3].Value.SetInt32(id_forma_pag_rbx);
  FenVerSldLimAtuCommand.ExecuteUpdate;
  Result := FenVerSldLimAtuCommand.Parameters[4].Value.AsCurrency;
end;

function TSMClient.enFormarObsFiscoNfe(DataSet: TCustomClientDataSet; NfeObsAnt: string; NfeObsAtu: string): string;
begin
  if FenFormarObsFiscoNfeCommand = nil then
  begin
    FenFormarObsFiscoNfeCommand := FDBXConnection.CreateCommand;
    FenFormarObsFiscoNfeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenFormarObsFiscoNfeCommand.Text := 'TSM.enFormarObsFiscoNfe';
    FenFormarObsFiscoNfeCommand.Prepare;
  end;
  if not Assigned(DataSet) then
    FenFormarObsFiscoNfeCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenFormarObsFiscoNfeCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FenFormarObsFiscoNfeCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenFormarObsFiscoNfeCommand.Parameters[1].Value.SetWideString(NfeObsAnt);
  FenFormarObsFiscoNfeCommand.Parameters[2].Value.SetWideString(NfeObsAtu);
  FenFormarObsFiscoNfeCommand.ExecuteUpdate;
  Result := FenFormarObsFiscoNfeCommand.Parameters[3].Value.GetWideString;
end;

function TSMClient.enAtuDadosNF(id_fiscal: string; id_abertura: string; tipo_doc: string): string;
begin
  if FenAtuDadosNFCommand = nil then
  begin
    FenAtuDadosNFCommand := FDBXConnection.CreateCommand;
    FenAtuDadosNFCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenAtuDadosNFCommand.Text := 'TSM.enAtuDadosNF';
    FenAtuDadosNFCommand.Prepare;
  end;
  FenAtuDadosNFCommand.Parameters[0].Value.SetWideString(id_fiscal);
  FenAtuDadosNFCommand.Parameters[1].Value.SetWideString(id_abertura);
  FenAtuDadosNFCommand.Parameters[2].Value.SetWideString(tipo_doc);
  FenAtuDadosNFCommand.ExecuteUpdate;
  Result := FenAtuDadosNFCommand.Parameters[3].Value.GetWideString;
end;

function TSMClient.enProxNroMDFe(id_empresa: string): Integer;
begin
  if FenProxNroMDFeCommand = nil then
  begin
    FenProxNroMDFeCommand := FDBXConnection.CreateCommand;
    FenProxNroMDFeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenProxNroMDFeCommand.Text := 'TSM.enProxNroMDFe';
    FenProxNroMDFeCommand.Prepare;
  end;
  FenProxNroMDFeCommand.Parameters[0].Value.SetWideString(id_empresa);
  FenProxNroMDFeCommand.ExecuteUpdate;
  Result := FenProxNroMDFeCommand.Parameters[1].Value.GetInt32;
end;

function TSMClient.enGerarPreVenda(id_fiscal: string; id_abertura: string; serial_pv: string; ecf_serial: string; ecf_marca: string; ecf_modelo: string; ecf_caixa: string): string;
begin
  if FenGerarPreVendaCommand = nil then
  begin
    FenGerarPreVendaCommand := FDBXConnection.CreateCommand;
    FenGerarPreVendaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenGerarPreVendaCommand.Text := 'TSM.enGerarPreVenda';
    FenGerarPreVendaCommand.Prepare;
  end;
  FenGerarPreVendaCommand.Parameters[0].Value.SetWideString(id_fiscal);
  FenGerarPreVendaCommand.Parameters[1].Value.SetWideString(id_abertura);
  FenGerarPreVendaCommand.Parameters[2].Value.SetWideString(serial_pv);
  FenGerarPreVendaCommand.Parameters[3].Value.SetWideString(ecf_serial);
  FenGerarPreVendaCommand.Parameters[4].Value.SetWideString(ecf_marca);
  FenGerarPreVendaCommand.Parameters[5].Value.SetWideString(ecf_modelo);
  FenGerarPreVendaCommand.Parameters[6].Value.SetWideString(ecf_caixa);
  FenGerarPreVendaCommand.ExecuteUpdate;
  Result := FenGerarPreVendaCommand.Parameters[7].Value.GetWideString;
end;

function TSMClient.enFinalizarCupomCxa(id_fiscal: Integer; NroCupom: Integer; CupomCancelado: Boolean; ecf_prevenda: string; ecf_serial_impressora: string; DtaCaixa: TDateTime; ReabrePed: string): string;
begin
  if FenFinalizarCupomCxaCommand = nil then
  begin
    FenFinalizarCupomCxaCommand := FDBXConnection.CreateCommand;
    FenFinalizarCupomCxaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenFinalizarCupomCxaCommand.Text := 'TSM.enFinalizarCupomCxa';
    FenFinalizarCupomCxaCommand.Prepare;
  end;
  FenFinalizarCupomCxaCommand.Parameters[0].Value.SetInt32(id_fiscal);
  FenFinalizarCupomCxaCommand.Parameters[1].Value.SetInt32(NroCupom);
  FenFinalizarCupomCxaCommand.Parameters[2].Value.SetBoolean(CupomCancelado);
  FenFinalizarCupomCxaCommand.Parameters[3].Value.SetWideString(ecf_prevenda);
  FenFinalizarCupomCxaCommand.Parameters[4].Value.SetWideString(ecf_serial_impressora);
  FenFinalizarCupomCxaCommand.Parameters[5].Value.AsDateTime := DtaCaixa;
  FenFinalizarCupomCxaCommand.Parameters[6].Value.SetWideString(ReabrePed);
  FenFinalizarCupomCxaCommand.ExecuteUpdate;
  Result := FenFinalizarCupomCxaCommand.Parameters[7].Value.GetWideString;
end;

procedure TSMClient.enGerCupomGerConWin(id_abertura: Integer);
begin
  if FenGerCupomGerConWinCommand = nil then
  begin
    FenGerCupomGerConWinCommand := FDBXConnection.CreateCommand;
    FenGerCupomGerConWinCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenGerCupomGerConWinCommand.Text := 'TSM.enGerCupomGerConWin';
    FenGerCupomGerConWinCommand.Prepare;
  end;
  FenGerCupomGerConWinCommand.Parameters[0].Value.SetInt32(id_abertura);
  FenGerCupomGerConWinCommand.ExecuteUpdate;
end;

function TSMClient.enBusFpgEcf(ecf_serial_impressora: string): TDataSet;
begin
  if FenBusFpgEcfCommand = nil then
  begin
    FenBusFpgEcfCommand := FDBXConnection.CreateCommand;
    FenBusFpgEcfCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenBusFpgEcfCommand.Text := 'TSM.enBusFpgEcf';
    FenBusFpgEcfCommand.Prepare;
  end;
  FenBusFpgEcfCommand.Parameters[0].Value.SetWideString(ecf_serial_impressora);
  FenBusFpgEcfCommand.ExecuteUpdate;
  Result := TCustomSQLDataSet.Create(nil, FenBusFpgEcfCommand.Parameters[1].Value.GetDBXReader(False), True);
  Result.Open;
  if FInstanceOwner then
    FenBusFpgEcfCommand.FreeOnExecute(Result);
end;

function TSMClient.enCancelCupom(id_fiscal: Integer; DataSet: TCustomClientDataSet; var CAD_CD_C_CLI: TClientDataSet; var FAT_CD_M_NFE: TClientDataSet): string;
begin
  if FenCancelCupomCommand = nil then
  begin
    FenCancelCupomCommand := FDBXConnection.CreateCommand;
    FenCancelCupomCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenCancelCupomCommand.Text := 'TSM.enCancelCupom';
    FenCancelCupomCommand.Prepare;
  end;
  FenCancelCupomCommand.Parameters[0].Value.SetInt32(id_fiscal);
  if not Assigned(DataSet) then
    FenCancelCupomCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenCancelCupomCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FenCancelCupomCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(CAD_CD_C_CLI) then
    FenCancelCupomCommand.Parameters[2].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenCancelCupomCommand.Parameters[2].ConnectionHandler).GetJSONMarshaler;
    try
      FenCancelCupomCommand.Parameters[2].Value.SetJSONValue(FMarshal.Marshal(CAD_CD_C_CLI), True);
      if FInstanceOwner then
        CAD_CD_C_CLI.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(FAT_CD_M_NFE) then
    FenCancelCupomCommand.Parameters[3].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenCancelCupomCommand.Parameters[3].ConnectionHandler).GetJSONMarshaler;
    try
      FenCancelCupomCommand.Parameters[3].Value.SetJSONValue(FMarshal.Marshal(FAT_CD_M_NFE), True);
      if FInstanceOwner then
        FAT_CD_M_NFE.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenCancelCupomCommand.ExecuteUpdate;
  if not FenCancelCupomCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenCancelCupomCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      CAD_CD_C_CLI := TClientDataSet(FUnMarshal.UnMarshal(FenCancelCupomCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenCancelCupomCommand.FreeOnExecute(CAD_CD_C_CLI);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    CAD_CD_C_CLI := nil;
  if not FenCancelCupomCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FenCancelCupomCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      FAT_CD_M_NFE := TClientDataSet(FUnMarshal.UnMarshal(FenCancelCupomCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FenCancelCupomCommand.FreeOnExecute(FAT_CD_M_NFE);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    FAT_CD_M_NFE := nil;
  Result := FenCancelCupomCommand.Parameters[4].Value.GetWideString;
end;

function TSMClient.enCancelNfe(id_fiscal: Integer; CanStatus: string; CanProtocolo: string; ReabrePed: string; IdAbertura: string): string;
begin
  if FenCancelNfeCommand = nil then
  begin
    FenCancelNfeCommand := FDBXConnection.CreateCommand;
    FenCancelNfeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenCancelNfeCommand.Text := 'TSM.enCancelNfe';
    FenCancelNfeCommand.Prepare;
  end;
  FenCancelNfeCommand.Parameters[0].Value.SetInt32(id_fiscal);
  FenCancelNfeCommand.Parameters[1].Value.SetWideString(CanStatus);
  FenCancelNfeCommand.Parameters[2].Value.SetWideString(CanProtocolo);
  FenCancelNfeCommand.Parameters[3].Value.SetWideString(ReabrePed);
  FenCancelNfeCommand.Parameters[4].Value.SetWideString(IdAbertura);
  FenCancelNfeCommand.ExecuteUpdate;
  Result := FenCancelNfeCommand.Parameters[5].Value.GetWideString;
end;

function TSMClient.enReabrePed(id_fiscal: Integer; ReabrePed: string): string;
begin
  if FenReabrePedCommand = nil then
  begin
    FenReabrePedCommand := FDBXConnection.CreateCommand;
    FenReabrePedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenReabrePedCommand.Text := 'TSM.enReabrePed';
    FenReabrePedCommand.Prepare;
  end;
  FenReabrePedCommand.Parameters[0].Value.SetInt32(id_fiscal);
  FenReabrePedCommand.Parameters[1].Value.SetWideString(ReabrePed);
  FenReabrePedCommand.ExecuteUpdate;
  Result := FenReabrePedCommand.Parameters[2].Value.GetWideString;
end;

function TSMClient.enAproReprPed(IdEmpresa: string; IdPedidos: string; TipoAcao: string; IdFuncionario: string; msgJustificativa: string): string;
begin
  if FenAproReprPedCommand = nil then
  begin
    FenAproReprPedCommand := FDBXConnection.CreateCommand;
    FenAproReprPedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenAproReprPedCommand.Text := 'TSM.enAproReprPed';
    FenAproReprPedCommand.Prepare;
  end;
  FenAproReprPedCommand.Parameters[0].Value.SetWideString(IdEmpresa);
  FenAproReprPedCommand.Parameters[1].Value.SetWideString(IdPedidos);
  FenAproReprPedCommand.Parameters[2].Value.SetWideString(TipoAcao);
  FenAproReprPedCommand.Parameters[3].Value.SetWideString(IdFuncionario);
  FenAproReprPedCommand.Parameters[4].Value.SetWideString(msgJustificativa);
  FenAproReprPedCommand.ExecuteUpdate;
  Result := FenAproReprPedCommand.Parameters[5].Value.GetWideString;
end;

function TSMClient.enGerarNfe(id_fiscal: Integer; id_emitente: Integer): string;
begin
  if FenGerarNfeCommand = nil then
  begin
    FenGerarNfeCommand := FDBXConnection.CreateCommand;
    FenGerarNfeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenGerarNfeCommand.Text := 'TSM.enGerarNfe';
    FenGerarNfeCommand.Prepare;
  end;
  FenGerarNfeCommand.Parameters[0].Value.SetInt32(id_fiscal);
  FenGerarNfeCommand.Parameters[1].Value.SetInt32(id_emitente);
  FenGerarNfeCommand.ExecuteUpdate;
  Result := FenGerarNfeCommand.Parameters[2].Value.GetWideString;
end;

function TSMClient.enFecharCaixa(IdAbertura: Integer; Status: Integer; ExisteCar: Boolean; IdTitulos: string; DataSetCar: TDataSet): string;
begin
  if FenFecharCaixaCommand = nil then
  begin
    FenFecharCaixaCommand := FDBXConnection.CreateCommand;
    FenFecharCaixaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenFecharCaixaCommand.Text := 'TSM.enFecharCaixa';
    FenFecharCaixaCommand.Prepare;
  end;
  FenFecharCaixaCommand.Parameters[0].Value.SetInt32(IdAbertura);
  FenFecharCaixaCommand.Parameters[1].Value.SetInt32(Status);
  FenFecharCaixaCommand.Parameters[2].Value.SetBoolean(ExisteCar);
  FenFecharCaixaCommand.Parameters[3].Value.SetWideString(IdTitulos);
  FenFecharCaixaCommand.Parameters[4].Value.SetDBXReader(TDBXDataSetReader.Create(DataSetCar, FInstanceOwner), True);
  FenFecharCaixaCommand.ExecuteUpdate;
  Result := FenFecharCaixaCommand.Parameters[5].Value.GetWideString;
end;

function TSMClient.enBxaTitRetBco(DataSet_Tit: TDataSet; IdTitulos: string; IdPlano: string; IdConta: Integer; IdResponsavel: Integer; IdFormaPag: Integer; IdCCusto: Integer; IdTipoFinanceiro: Integer): string;
begin
  if FenBxaTitRetBcoCommand = nil then
  begin
    FenBxaTitRetBcoCommand := FDBXConnection.CreateCommand;
    FenBxaTitRetBcoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenBxaTitRetBcoCommand.Text := 'TSM.enBxaTitRetBco';
    FenBxaTitRetBcoCommand.Prepare;
  end;
  FenBxaTitRetBcoCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet_Tit, FInstanceOwner), True);
  FenBxaTitRetBcoCommand.Parameters[1].Value.SetWideString(IdTitulos);
  FenBxaTitRetBcoCommand.Parameters[2].Value.SetWideString(IdPlano);
  FenBxaTitRetBcoCommand.Parameters[3].Value.SetInt32(IdConta);
  FenBxaTitRetBcoCommand.Parameters[4].Value.SetInt32(IdResponsavel);
  FenBxaTitRetBcoCommand.Parameters[5].Value.SetInt32(IdFormaPag);
  FenBxaTitRetBcoCommand.Parameters[6].Value.SetInt32(IdCCusto);
  FenBxaTitRetBcoCommand.Parameters[7].Value.SetInt32(IdTipoFinanceiro);
  FenBxaTitRetBcoCommand.ExecuteUpdate;
  Result := FenBxaTitRetBcoCommand.Parameters[8].Value.GetWideString;
end;

function TSMClient.enAtualMaqNfsTit(IdEmpresa: Integer; IdFiscal: Integer; Data: OleVariant): string;
begin
  if FenAtualMaqNfsTitCommand = nil then
  begin
    FenAtualMaqNfsTitCommand := FDBXConnection.CreateCommand;
    FenAtualMaqNfsTitCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenAtualMaqNfsTitCommand.Text := 'TSM.enAtualMaqNfsTit';
    FenAtualMaqNfsTitCommand.Prepare;
  end;
  FenAtualMaqNfsTitCommand.Parameters[0].Value.SetInt32(IdEmpresa);
  FenAtualMaqNfsTitCommand.Parameters[1].Value.SetInt32(IdFiscal);
  FenAtualMaqNfsTitCommand.Parameters[2].Value.AsVariant := Data;
  FenAtualMaqNfsTitCommand.ExecuteUpdate;
  Result := FenAtualMaqNfsTitCommand.Parameters[3].Value.GetWideString;
end;

function TSMClient.enAtualPedF11(id_empresa: Integer; id_pedido: Integer): Boolean;
begin
  if FenAtualPedF11Command = nil then
  begin
    FenAtualPedF11Command := FDBXConnection.CreateCommand;
    FenAtualPedF11Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FenAtualPedF11Command.Text := 'TSM.enAtualPedF11';
    FenAtualPedF11Command.Prepare;
  end;
  FenAtualPedF11Command.Parameters[0].Value.SetInt32(id_empresa);
  FenAtualPedF11Command.Parameters[1].Value.SetInt32(id_pedido);
  FenAtualPedF11Command.ExecuteUpdate;
  Result := FenAtualPedF11Command.Parameters[2].Value.GetBoolean;
end;

function TSMClient.enVerSldCxaEmAberto(id_empresa: string; id_funcionario: string): string;
begin
  if FenVerSldCxaEmAbertoCommand = nil then
  begin
    FenVerSldCxaEmAbertoCommand := FDBXConnection.CreateCommand;
    FenVerSldCxaEmAbertoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenVerSldCxaEmAbertoCommand.Text := 'TSM.enVerSldCxaEmAberto';
    FenVerSldCxaEmAbertoCommand.Prepare;
  end;
  FenVerSldCxaEmAbertoCommand.Parameters[0].Value.SetWideString(id_empresa);
  FenVerSldCxaEmAbertoCommand.Parameters[1].Value.SetWideString(id_funcionario);
  FenVerSldCxaEmAbertoCommand.ExecuteUpdate;
  Result := FenVerSldCxaEmAbertoCommand.Parameters[2].Value.GetWideString;
end;

function TSMClient.AllApplyUpdates(Delta: OleVariant): Boolean;
begin
  if FAllApplyUpdatesCommand = nil then
  begin
    FAllApplyUpdatesCommand := FDBXConnection.CreateCommand;
    FAllApplyUpdatesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAllApplyUpdatesCommand.Text := 'TSM.AllApplyUpdates';
    FAllApplyUpdatesCommand.Prepare;
  end;
  FAllApplyUpdatesCommand.Parameters[0].Value.AsVariant := Delta;
  FAllApplyUpdatesCommand.ExecuteUpdate;
  Result := FAllApplyUpdatesCommand.Parameters[1].Value.GetBoolean;
end;

function TSMClient.enMD5(texto: string): string;
begin
  if FenMD5Command = nil then
  begin
    FenMD5Command := FDBXConnection.CreateCommand;
    FenMD5Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FenMD5Command.Text := 'TSM.enMD5';
    FenMD5Command.Prepare;
  end;
  FenMD5Command.Parameters[0].Value.SetWideString(texto);
  FenMD5Command.ExecuteUpdate;
  Result := FenMD5Command.Parameters[1].Value.GetWideString;
end;

function TSMClient.enMD5File(fileName: string): string;
begin
  if FenMD5FileCommand = nil then
  begin
    FenMD5FileCommand := FDBXConnection.CreateCommand;
    FenMD5FileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenMD5FileCommand.Text := 'TSM.enMD5File';
    FenMD5FileCommand.Prepare;
  end;
  FenMD5FileCommand.Parameters[0].Value.SetWideString(fileName);
  FenMD5FileCommand.ExecuteUpdate;
  Result := FenMD5FileCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.BuscarConnBanco: TSQLConnection;
begin
  if FBuscarConnBancoCommand = nil then
  begin
    FBuscarConnBancoCommand := FDBXConnection.CreateCommand;
    FBuscarConnBancoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBuscarConnBancoCommand.Text := 'TSM.BuscarConnBanco';
    FBuscarConnBancoCommand.Prepare;
  end;
  FBuscarConnBancoCommand.ExecuteUpdate;
  if not FBuscarConnBancoCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FBuscarConnBancoCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TSQLConnection(FUnMarshal.UnMarshal(FBuscarConnBancoCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FBuscarConnBancoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

procedure TSMClient.enAudInserirCampoPacote(Properties: OleVariant);
begin
  if FenAudInserirCampoPacoteCommand = nil then
  begin
    FenAudInserirCampoPacoteCommand := FDBXConnection.CreateCommand;
    FenAudInserirCampoPacoteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenAudInserirCampoPacoteCommand.Text := 'TSM.enAudInserirCampoPacote';
    FenAudInserirCampoPacoteCommand.Prepare;
  end;
  FenAudInserirCampoPacoteCommand.Parameters[0].Value.AsVariant := Properties;
  FenAudInserirCampoPacoteCommand.ExecuteUpdate;
end;

procedure TSMClient.enAudGravar(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FenAudGravarCommand = nil then
  begin
    FenAudGravarCommand := FDBXConnection.CreateCommand;
    FenAudGravarCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenAudGravarCommand.Text := 'TSM.enAudGravar';
    FenAudGravarCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FenAudGravarCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenAudGravarCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FenAudGravarCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(DataSet) then
    FenAudGravarCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenAudGravarCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FenAudGravarCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenAudGravarCommand.ExecuteUpdate;
end;

function TSMClient.enSgqVefPedRom(id_pedido: string): Integer;
begin
  if FenSgqVefPedRomCommand = nil then
  begin
    FenSgqVefPedRomCommand := FDBXConnection.CreateCommand;
    FenSgqVefPedRomCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenSgqVefPedRomCommand.Text := 'TSM.enSgqVefPedRom';
    FenSgqVefPedRomCommand.Prepare;
  end;
  FenSgqVefPedRomCommand.Parameters[0].Value.SetWideString(id_pedido);
  FenSgqVefPedRomCommand.ExecuteUpdate;
  Result := FenSgqVefPedRomCommand.Parameters[1].Value.GetInt32;
end;

function TSMClient.enSgqPcpImportarPed(tbItensSel: TDataSet; IdEmpresa: string; IdOpr: string; IdResp: string; AlmSel: string; PedSel: string; ItensSel: string; CorSel: string; TamSel: string): OleVariant;
begin
  if FenSgqPcpImportarPedCommand = nil then
  begin
    FenSgqPcpImportarPedCommand := FDBXConnection.CreateCommand;
    FenSgqPcpImportarPedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenSgqPcpImportarPedCommand.Text := 'TSM.enSgqPcpImportarPed';
    FenSgqPcpImportarPedCommand.Prepare;
  end;
  FenSgqPcpImportarPedCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(tbItensSel, FInstanceOwner), True);
  FenSgqPcpImportarPedCommand.Parameters[1].Value.SetWideString(IdEmpresa);
  FenSgqPcpImportarPedCommand.Parameters[2].Value.SetWideString(IdOpr);
  FenSgqPcpImportarPedCommand.Parameters[3].Value.SetWideString(IdResp);
  FenSgqPcpImportarPedCommand.Parameters[4].Value.SetWideString(AlmSel);
  FenSgqPcpImportarPedCommand.Parameters[5].Value.SetWideString(PedSel);
  FenSgqPcpImportarPedCommand.Parameters[6].Value.SetWideString(ItensSel);
  FenSgqPcpImportarPedCommand.Parameters[7].Value.SetWideString(CorSel);
  FenSgqPcpImportarPedCommand.Parameters[8].Value.SetWideString(TamSel);
  FenSgqPcpImportarPedCommand.ExecuteUpdate;
  Result := FenSgqPcpImportarPedCommand.Parameters[9].Value.AsVariant;
end;

procedure TSMClient.enSgqPcpGerarReq(IdOpr: Integer; IdResp: Integer; IdAlmoxarifado: string; PCP_CD_M_OPR_REQ: TClientDataSet; cdsItensOpr: TClientDataSet; PCP_CD_M_OPR_REQ_ITE: TDataSet);
begin
  if FenSgqPcpGerarReqCommand = nil then
  begin
    FenSgqPcpGerarReqCommand := FDBXConnection.CreateCommand;
    FenSgqPcpGerarReqCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenSgqPcpGerarReqCommand.Text := 'TSM.enSgqPcpGerarReq';
    FenSgqPcpGerarReqCommand.Prepare;
  end;
  FenSgqPcpGerarReqCommand.Parameters[0].Value.SetInt32(IdOpr);
  FenSgqPcpGerarReqCommand.Parameters[1].Value.SetInt32(IdResp);
  FenSgqPcpGerarReqCommand.Parameters[2].Value.SetWideString(IdAlmoxarifado);
  if not Assigned(PCP_CD_M_OPR_REQ) then
    FenSgqPcpGerarReqCommand.Parameters[3].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenSgqPcpGerarReqCommand.Parameters[3].ConnectionHandler).GetJSONMarshaler;
    try
      FenSgqPcpGerarReqCommand.Parameters[3].Value.SetJSONValue(FMarshal.Marshal(PCP_CD_M_OPR_REQ), True);
      if FInstanceOwner then
        PCP_CD_M_OPR_REQ.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(cdsItensOpr) then
    FenSgqPcpGerarReqCommand.Parameters[4].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FenSgqPcpGerarReqCommand.Parameters[4].ConnectionHandler).GetJSONMarshaler;
    try
      FenSgqPcpGerarReqCommand.Parameters[4].Value.SetJSONValue(FMarshal.Marshal(cdsItensOpr), True);
      if FInstanceOwner then
        cdsItensOpr.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FenSgqPcpGerarReqCommand.Parameters[5].Value.SetDBXReader(TDBXDataSetReader.Create(PCP_CD_M_OPR_REQ_ITE, FInstanceOwner), True);
  FenSgqPcpGerarReqCommand.ExecuteUpdate;
end;

function TSMClient.enSgqEstatisticaAcr(tipo: Integer; Input: OleVariant): OleVariant;
begin
  if FenSgqEstatisticaAcrCommand = nil then
  begin
    FenSgqEstatisticaAcrCommand := FDBXConnection.CreateCommand;
    FenSgqEstatisticaAcrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenSgqEstatisticaAcrCommand.Text := 'TSM.enSgqEstatisticaAcr';
    FenSgqEstatisticaAcrCommand.Prepare;
  end;
  FenSgqEstatisticaAcrCommand.Parameters[0].Value.SetInt32(tipo);
  FenSgqEstatisticaAcrCommand.Parameters[1].Value.AsVariant := Input;
  FenSgqEstatisticaAcrCommand.ExecuteUpdate;
  Result := FenSgqEstatisticaAcrCommand.Parameters[2].Value.AsVariant;
end;


constructor TSMClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TSMClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TSMClient.Destroy;
begin
  FCAD_DP_C_CNEDataRequestCommand.DisposeOf;
  FCMP_DP_M_SOLDataRequestCommand.DisposeOf;
  FCAD_DP_C_CIDDataRequestCommand.DisposeOf;
  FCAD_DP_C_RAMDataRequestCommand.DisposeOf;
  FCAD_DP_C_CINDataRequestCommand.DisposeOf;
  FCAD_DP_C_PECDataRequestCommand.DisposeOf;
  FCAD_DP_C_PCTDataRequestCommand.DisposeOf;
  FCAD_DP_C_CCUDataRequestCommand.DisposeOf;
  FCAD_DP_C_CTCDataRequestCommand.DisposeOf;
  FCAD_DP_C_LTODataRequestCommand.DisposeOf;
  FCAD_DP_C_TIFDataRequestCommand.DisposeOf;
  FCAD_DP_C_TMEDataRequestCommand.DisposeOf;
  FCAD_DP_C_FPGDataRequestCommand.DisposeOf;
  FCAD_DP_C_CPGDataRequestCommand.DisposeOf;
  FCAD_DP_C_UNDDataRequestCommand.DisposeOf;
  FCAD_DP_C_NCMDataRequestCommand.DisposeOf;
  FCAD_DP_C_INFDataRequestCommand.DisposeOf;
  FCAD_DP_C_NATDataRequestCommand.DisposeOf;
  FCAD_DP_C_CFODataRequestCommand.DisposeOf;
  FCAD_DP_C_GRUDataRequestCommand.DisposeOf;
  FCAD_DP_C_TRIDataRequestCommand.DisposeOf;
  FCAD_DP_C_ECFDataRequestCommand.DisposeOf;
  FCAD_DP_C_FORDataRequestCommand.DisposeOf;
  FCAD_DP_C_FUNDataRequestCommand.DisposeOf;
  FCAD_DP_C_CLIDataRequestCommand.DisposeOf;
  FCAD_DP_C_PESDataRequestCommand.DisposeOf;
  FCAD_DP_C_ALMDataRequestCommand.DisposeOf;
  FPCP_DP_C_CDRDataRequestCommand.DisposeOf;
  FPCP_DP_C_CNFDataRequestCommand.DisposeOf;
  FPCP_DP_C_CRGDataRequestCommand.DisposeOf;
  FPCP_DP_C_DISDataRequestCommand.DisposeOf;
  FPCP_DP_C_ESPDataRequestCommand.DisposeOf;
  FPCP_DP_C_LMEDataRequestCommand.DisposeOf;
  FPCP_DP_C_MTADataRequestCommand.DisposeOf;
  FPCP_DP_C_REGDataRequestCommand.DisposeOf;
  FPCP_DP_C_ROTDataRequestCommand.DisposeOf;
  FPCP_DP_C_TLMDataRequestCommand.DisposeOf;
  FCAD_DP_C_ITEDataRequestCommand.DisposeOf;
  FEST_DP_M_FEADataRequestCommand.DisposeOf;
  FEST_DP_M_FESDataRequestCommand.DisposeOf;
  FCAD_DP_C_CORDataRequestCommand.DisposeOf;
  FBUS_DP_C_PAR_SERDataRequestCommand.DisposeOf;
  FBUS_DP_M_NFE_NFFDataRequestCommand.DisposeOf;
  FBUS_DP_C_TRI_REGDataRequestCommand.DisposeOf;
  FCAD_DP_C_PARDataRequestCommand.DisposeOf;
  FBUS_DP_M_NFEDataRequestCommand.DisposeOf;
  FCAD_DP_C_SETDataRequestCommand.DisposeOf;
  FFAT_DP_M_NFEDataRequestCommand.DisposeOf;
  FBUS_DP_M_POSDataRequestCommand.DisposeOf;
  FFAT_DP_M_POSDataRequestCommand.DisposeOf;
  FBUS_DP_C_ITE_PREDataRequestCommand.DisposeOf;
  FFAT_DP_M_ORCDataRequestCommand.DisposeOf;
  FFAT_DP_M_PEDDataRequestCommand.DisposeOf;
  FEST_DP_M_FES_ALMDataRequestCommand.DisposeOf;
  FCAD_DP_C_TAMDataRequestCommand.DisposeOf;
  FEST_DP_M_CTEDataRequestCommand.DisposeOf;
  FPCP_DP_C_PRPDataRequestCommand.DisposeOf;
  FEST_DP_M_LOTDataRequestCommand.DisposeOf;
  FPCP_DP_C_INSDataRequestCommand.DisposeOf;
  FPCP_DP_M_ACRDataRequestCommand.DisposeOf;
  FPCP_DP_M_RAADataRequestCommand.DisposeOf;
  FPCP_DP_M_PSCDataRequestCommand.DisposeOf;
  FFIN_DP_M_COBDataRequestCommand.DisposeOf;
  FBUS_DP_M_NFE_ITEDataRequestCommand.DisposeOf;
  FFIN_DP_M_RECDataRequestCommand.DisposeOf;
  FFIN_DP_M_RCRDataRequestCommand.DisposeOf;
  FFIN_DP_M_CTADataRequestCommand.DisposeOf;
  FFIN_DP_M_PAGDataRequestCommand.DisposeOf;
  FCMP_DP_M_PEDDataRequestCommand.DisposeOf;
  FFIN_DP_M_RBXDataRequestCommand.DisposeOf;
  FFIN_DP_M_PBXDataRequestCommand.DisposeOf;
  FBUS_DP_M_RAADataRequestCommand.DisposeOf;
  FBUS_DP_M_NFI_RAADataRequestCommand.DisposeOf;
  FEST_DP_M_MALDataRequestCommand.DisposeOf;
  FCSU_DP_M_PSCDataRequestCommand.DisposeOf;
  FBUS_DP_M_PAGDataRequestCommand.DisposeOf;
  FPCP_DP_C_FTEDataRequestCommand.DisposeOf;
  FPCP_DP_M_ORSDataRequestCommand.DisposeOf;
  FPCP_DP_M_ROMDataRequestCommand.DisposeOf;
  FPCP_DP_M_OPRDataRequestCommand.DisposeOf;
  FFIN_DP_R_PAG_ABEDataRequestCommand.DisposeOf;
  FFIN_DP_M_PCRDataRequestCommand.DisposeOf;
  FBUS_DP_C_REPDataRequestCommand.DisposeOf;
  FFIN_DP_M_PBXUpdateDataCommand.DisposeOf;
  FPCP_DP_R_PSCDataRequestCommand.DisposeOf;
  FFAT_DP_R_IQM_ITEDataRequestCommand.DisposeOf;
  FPCP_DP_R_RAADataRequestCommand.DisposeOf;
  FFIN_DP_M_CXADataRequestCommand.DisposeOf;
  FCAD_DP_R_ITEDataRequestCommand.DisposeOf;
  FFIN_DP_M_PAG_PAGDataRequestCommand.DisposeOf;
  FFIN_DP_M_PBX_TIT_INTDataRequestCommand.DisposeOf;
  FBUS_DP_C_LME_DOCDataRequestCommand.DisposeOf;
  FCAD_DP_C_CNEUpdateDataCommand.DisposeOf;
  FdspCustomerGetDataSetPropertiesCommand.DisposeOf;
  FCMP_DP_M_COTDataRequestCommand.DisposeOf;
  FFIN_DP_R_PAG_ABE_PPGDataRequestCommand.DisposeOf;
  FBUS_DP_C_CTCDataRequestCommand.DisposeOf;
  FCAD_DP_C_TDFDataRequestCommand.DisposeOf;
  FPCP_DP_C_MEQDataRequestCommand.DisposeOf;
  FPCP_DP_M_VVEDataRequestCommand.DisposeOf;
  FPCP_DP_M_NCFDataRequestCommand.DisposeOf;
  FCAD_DP_C_VEIDataRequestCommand.DisposeOf;
  FPCP_DP_C_MDEDataRequestCommand.DisposeOf;
  FCAD_DP_C_MVEDataRequestCommand.DisposeOf;
  FFIN_DP_M_CONDataRequestCommand.DisposeOf;
  FPCP_DP_C_PRQDataRequestCommand.DisposeOf;
  FPCP_DP_C_CDPDataRequestCommand.DisposeOf;
  FPCP_DP_C_RPTDataRequestCommand.DisposeOf;
  FPCP_DP_C_TPPDataRequestCommand.DisposeOf;
  FPCP_DP_C_TINDataRequestCommand.DisposeOf;
  FPCP_DP_C_CINDataRequestCommand.DisposeOf;
  FPCP_DP_C_ORIDataRequestCommand.DisposeOf;
  FPCP_DP_M_MCPDataRequestCommand.DisposeOf;
  FPCP_DP_M_RVCDataRequestCommand.DisposeOf;
  FBUS_DP_M_CME_MEQDataRequestCommand.DisposeOf;
  FPCP_DP_M_CMEDataRequestCommand.DisposeOf;
  FFAT_DP_M_NFEUpdateDataCommand.DisposeOf;
  FPCP_DP_M_LPRDataRequestCommand.DisposeOf;
  FPCP_DP_M_CACDataRequestCommand.DisposeOf;
  FPCP_DP_M_CRPDataRequestCommand.DisposeOf;
  FPCP_DP_M_CRQDataRequestCommand.DisposeOf;
  FPCP_DP_M_LBEDataRequestCommand.DisposeOf;
  FPCP_DP_M_OPBDataRequestCommand.DisposeOf;
  FOFI_DP_M_AGEDataRequestCommand.DisposeOf;
  FOFI_DP_M_OCVDataRequestCommand.DisposeOf;
  FOFI_DP_C_TIODataRequestCommand.DisposeOf;
  FOFI_DP_M_ORVDataRequestCommand.DisposeOf;
  FCAD_DP_C_PRGDataRequestCommand.DisposeOf;
  FBUS_DP_M_FTE_ETQDataRequestCommand.DisposeOf;
  FBUS_DP_C_LME_DOC_DPGDataRequestCommand.DisposeOf;
  FPCP_DP_M_IQFDataRequestCommand.DisposeOf;
  FCAD_DP_R_PCTDataRequestCommand.DisposeOf;
  FCAD_DP_R_GRUDataRequestCommand.DisposeOf;
  FPCP_DP_R_PRQDataRequestCommand.DisposeOf;
  FCAD_DP_R_FORDataRequestCommand.DisposeOf;
  FPCP_DP_R_PRPDataRequestCommand.DisposeOf;
  FPCP_DP_R_LMEDataRequestCommand.DisposeOf;
  FCAD_DP_R_FPGDataRequestCommand.DisposeOf;
  FBUS_DP_M_FAT_NFE_CUSDataRequestCommand.DisposeOf;
  FCAD_DP_R_CORDataRequestCommand.DisposeOf;
  FCAD_DP_R_TAMDataRequestCommand.DisposeOf;
  FCAD_DP_R_PRGDataRequestCommand.DisposeOf;
  FEST_DP_R_CTEDataRequestCommand.DisposeOf;
  FPCP_DP_R_ACRDataRequestCommand.DisposeOf;
  FCAD_DP_R_CNEDataRequestCommand.DisposeOf;
  FCAD_DP_R_CFODataRequestCommand.DisposeOf;
  FFAT_DP_M_IQMDataRequestCommand.DisposeOf;
  FBUS_DP_M_IQF_FORDataRequestCommand.DisposeOf;
  FCAD_DP_R_TRI_REGDataRequestCommand.DisposeOf;
  FBUS_DP_M_IQF_NFEDataRequestCommand.DisposeOf;
  FCAD_DP_R_FUNDataRequestCommand.DisposeOf;
  FPCP_DP_R_IQFDataRequestCommand.DisposeOf;
  FEST_DP_R_MOVDataRequestCommand.DisposeOf;
  FPCP_DP_R_CDPDataRequestCommand.DisposeOf;
  FPCP_DP_R_CDRDataRequestCommand.DisposeOf;
  FPCP_DP_R_MEQDataRequestCommand.DisposeOf;
  FPCP_DP_R_CRGDataRequestCommand.DisposeOf;
  FBUS_DP_M_EST_SLD_ANTDataRequestCommand.DisposeOf;
  FEST_DP_R_FICDataRequestCommand.DisposeOf;
  FFAT_DP_M_IQMUpdateDataCommand.DisposeOf;
  FFAT_DP_M_IQM_ITE_INTDataRequestCommand.DisposeOf;
  FBUS_DP_C_FUN_CRGDataRequestCommand.DisposeOf;
  Fctc_dp_c_obrDataRequestCommand.DisposeOf;
  Fctc_dp_c_tprDataRequestCommand.DisposeOf;
  Fctc_dp_m_orcUpdateDataCommand.DisposeOf;
  Fctc_dp_m_orcDataRequestCommand.DisposeOf;
  FCAD_DP_C_FAMDataRequestCommand.DisposeOf;
  Fctc_dp_m_facDataRequestCommand.DisposeOf;
  Fctc_dp_m_avfDataRequestCommand.DisposeOf;
  FBUS_DP_M_RECDataRequestCommand.DisposeOf;
  Fctc_dp_c_epiDataRequestCommand.DisposeOf;
  Fctc_dp_m_cepDataRequestCommand.DisposeOf;
  Fctc_dp_m_cfeDataRequestCommand.DisposeOf;
  Fctc_dp_m_locDataRequestCommand.DisposeOf;
  Fctc_dp_m_ofiDataRequestCommand.DisposeOf;
  FFIN_DP_R_PAG_BXADataRequestCommand.DisposeOf;
  Fctc_dp_m_bdeDataRequestCommand.DisposeOf;
  Fctc_dp_r_bdeDataRequestCommand.DisposeOf;
  FFAT_DP_R_DEV_FORDataRequestCommand.DisposeOf;
  FFIN_DP_R_REC_ABEDataRequestCommand.DisposeOf;
  FFIN_DP_R_REC_ABE_PPGDataRequestCommand.DisposeOf;
  FFIN_DP_R_REC_BXADataRequestCommand.DisposeOf;
  FFIN_DP_M_REC_PAGDataRequestCommand.DisposeOf;
  FFIN_DP_M_RBXUpdateDataCommand.DisposeOf;
  FFIN_DP_M_RBX_TIT_INTDataRequestCommand.DisposeOf;
  FFIN_DP_R_REC_ABE_PRRDataRequestCommand.DisposeOf;
  FFIN_DP_M_MCHDataRequestCommand.DisposeOf;
  FBUS_DP_M_ULT_NFE_ITEDataRequestCommand.DisposeOf;
  FBUS_DP_CSU_ITEDataRequestCommand.DisposeOf;
  FBUS_DP_C_ITE_XMLDataRequestCommand.DisposeOf;
  FBUS_DP_C_PAR_CPGDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_NFE_ITEDataRequestCommand.DisposeOf;
  FBUS_DP_M_FEA_ITEDataRequestCommand.DisposeOf;
  FBUS_DP_M_FOR_SLD_TITDataRequestCommand.DisposeOf;
  FFIN_DP_M_ORCDataRequestCommand.DisposeOf;
  FBUS_DP_M_PAG_DIADataRequestCommand.DisposeOf;
  FBUS_DP_M_REC_DIADataRequestCommand.DisposeOf;
  FFAT_DP_R_PVE_01DataRequestCommand.DisposeOf;
  FBUS_DP_C_PAR_CTRDataRequestCommand.DisposeOf;
  FBUS_DP_C_PAR_NFEDataRequestCommand.DisposeOf;
  FFAT_DP_R_PVE_02DataRequestCommand.DisposeOf;
  FFAT_DP_R_PVE_03DataRequestCommand.DisposeOf;
  FFAT_DP_R_PVE_04DataRequestCommand.DisposeOf;
  FFAT_DP_R_PVE_05DataRequestCommand.DisposeOf;
  FFAT_DP_R_ICM_CSTDataRequestCommand.DisposeOf;
  FFAT_DP_R_ICM_CFODataRequestCommand.DisposeOf;
  FFAT_DP_R_ICM_ITEDataRequestCommand.DisposeOf;
  FFAT_DP_R_PIS_ITEDataRequestCommand.DisposeOf;
  FFAT_DP_R_PIS_CIPDataRequestCommand.DisposeOf;
  FFAT_DP_R_RET_CLIDataRequestCommand.DisposeOf;
  FFAT_DP_R_RET_ITEDataRequestCommand.DisposeOf;
  FBUS_DP_C_ECF_FPGDataRequestCommand.DisposeOf;
  FDP_BR_PREVENDADataRequestCommand.DisposeOf;
  FDP_BR_SEQ_IDDataRequestCommand.DisposeOf;
  FBUS_DP_M_POS_ITEDataRequestCommand.DisposeOf;
  FFAT_DP_M_PEDUpdateDataCommand.DisposeOf;
  FFAT_DP_R_RET_FORDataRequestCommand.DisposeOf;
  FFAT_DP_R_RET_GRUDataRequestCommand.DisposeOf;
  FFAT_DP_R_RET_VNDDataRequestCommand.DisposeOf;
  FEST_DP_M_MALUpdateDataCommand.DisposeOf;
  FBUS_DP_M_MAL_ITE_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_NFE_ITE_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_PED_ITE_INTDataRequestCommand.DisposeOf;
  FFIN_DP_R_CXA_DIADataRequestCommand.DisposeOf;
  FFIN_DP_R_CXA_DIA_SLADataRequestCommand.DisposeOf;
  FFIN_DP_R_CXA_DIA_VNDDataRequestCommand.DisposeOf;
  FFIN_DP_R_CXA_DIA_PAGDataRequestCommand.DisposeOf;
  FFIN_DP_R_CXA_DIA_RECDataRequestCommand.DisposeOf;
  FFIN_DP_R_CXA_DIA_MOPDataRequestCommand.DisposeOf;
  FFIN_DP_R_CXA_DIA_MPLDataRequestCommand.DisposeOf;
  FBUS_DP_BR_PREVENDADataRequestCommand.DisposeOf;
  FBUS_DP_M_NFE_TIT_GRPDataRequestCommand.DisposeOf;
  FCAD_DP_R_ECF_FPGDataRequestCommand.DisposeOf;
  FBUS_DP_M_NFE_TIT_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_PED_TIT_INTDataRequestCommand.DisposeOf;
  FPCP_DP_R_CRP_ITEDataRequestCommand.DisposeOf;
  FEST_DP_R_INVDataRequestCommand.DisposeOf;
  FPCP_DP_R_CRP_ITE_BXIDataRequestCommand.DisposeOf;
  FFAT_DP_R_ABC_CLIDataRequestCommand.DisposeOf;
  FFAT_DP_R_ABC_FORDataRequestCommand.DisposeOf;
  FFAT_DP_R_ABC_GRUDataRequestCommand.DisposeOf;
  FFIN_DP_R_COB_COBDataRequestCommand.DisposeOf;
  FFIN_DP_R_COB_ACODataRequestCommand.DisposeOf;
  FBUS_DP_M_CTE_ITE_INTDataRequestCommand.DisposeOf;
  FFIN_DP_R_EXT_CLI_ABEDataRequestCommand.DisposeOf;
  FFIN_DP_R_EXT_CLI_PAGDataRequestCommand.DisposeOf;
  FFIN_DP_R_EXT_FOR_ABEDataRequestCommand.DisposeOf;
  FFIN_DP_R_EXT_FOR_PAGDataRequestCommand.DisposeOf;
  FFIN_DP_M_CXAUpdateDataCommand.DisposeOf;
  FBUS_DP_M_NFE_DEV_ITE_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_NFE_DEV_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_NFE_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_EXT_ITEDataRequestCommand.DisposeOf;
  FBUS_DP_M_TER_NFEDataRequestCommand.DisposeOf;
  FFAT_DP_R_NFEDataRequestCommand.DisposeOf;
  FFAT_DP_R_NFE_TMEDataRequestCommand.DisposeOf;
  FFAT_DP_R_NFE_CFODataRequestCommand.DisposeOf;
  FDSServerModuleCreateCommand.DisposeOf;
  FDSServerModuleDestroyCommand.DisposeOf;
  FFAT_DP_R_GAM_150DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_E20DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_E25DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_100DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_105DataRequestCommand.DisposeOf;
  FBUS_DP_M_PED_NIPDataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_120DataRequestCommand.DisposeOf;
  FCAD_DP_R_CLIDataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_H30DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_H20DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_H50DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_H60DataRequestCommand.DisposeOf;
  FBUS_DP_M_CXA_RES_CARDataRequestCommand.DisposeOf;
  FBUS_DP_M_CXA_DET_CNFDataRequestCommand.DisposeOf;
  FBUS_DP_M_CXA_DET_CRBDataRequestCommand.DisposeOf;
  FBUS_DP_M_CXA_CARDataRequestCommand.DisposeOf;
  FCAD_DP_R_PESDataRequestCommand.DisposeOf;
  FCAD_DP_R_TMEDataRequestCommand.DisposeOf;
  FFIN_DP_R_MCHDataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_C20DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_300DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_600DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_610DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_200DataRequestCommand.DisposeOf;
  FFIN_DP_M_MCHUpdateDataCommand.DisposeOf;
  FFAT_DP_M_ROMDataRequestCommand.DisposeOf;
  FBUS_DP_M_MCH_CHE_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_REC_HCH_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_CON_CTA_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_CON_GER_INTDataRequestCommand.DisposeOf;
  FFIN_DP_M_CONUpdateDataCommand.DisposeOf;
  FBUS_DP_R_OCVDataRequestCommand.DisposeOf;
  FBUS_DP_M_OCVDataRequestCommand.DisposeOf;
  FBUS_DP_M_CTADataRequestCommand.DisposeOf;
  FBUS_DP_R_ORVDataRequestCommand.DisposeOf;
  FBUS_DP_M_ROM_PEDDataRequestCommand.DisposeOf;
  FBUS_DP_M_ROM_REGDataRequestCommand.DisposeOf;
  FBUS_DP_R_RQVDataRequestCommand.DisposeOf;
  FBUS_DP_C_FUN_MECDataRequestCommand.DisposeOf;
  FOFI_DP_M_ORVUpdateDataCommand.DisposeOf;
  FFAT_DP_R_GAM_190DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_405DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_500DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_510DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_590DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_D_100DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_D_500DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_D_510DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_D_590DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_A_100DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_A_170DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_481DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_485DataRequestCommand.DisposeOf;
  FBUS_DP_M_ORV_PRO_INTDataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_420DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_425DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_490DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_501DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_505DataRequestCommand.DisposeOf;
  FBUS_DP_M_ORV_ITE_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_ORV_TIT_INTDataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_460DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_470DataRequestCommand.DisposeOf;
  FCAD_DP_C_MCTDataRequestCommand.DisposeOf;
  FBUS_DP_M_ORV_TIT_SER_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_CXA_DET_CRCDataRequestCommand.DisposeOf;
  FFIN_DP_R_CXA_DIA_RVEDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_OPR_PEDDataRequestCommand.DisposeOf;
  FOFI_DP_M_POSDataRequestCommand.DisposeOf;
  FOFI_DP_R_POSDataRequestCommand.DisposeOf;
  FOFI_DP_R_OFV_FIVDataRequestCommand.DisposeOf;
  FOFI_DP_R_OFV_POS_001DataRequestCommand.DisposeOf;
  FOFI_DP_R_OFV_POS_002DataRequestCommand.DisposeOf;
  FOFI_DP_R_OFV_COM_001DataRequestCommand.DisposeOf;
  FOFI_DP_R_OFV_COM_002DataRequestCommand.DisposeOf;
  FOFI_DP_R_OFV_ABC_001DataRequestCommand.DisposeOf;
  FOFI_DP_R_OFV_ABC_002DataRequestCommand.DisposeOf;
  FBUS_DP_M_POS_STADataRequestCommand.DisposeOf;
  Fbus_dp_m_ctc_tprDataRequestCommand.DisposeOf;
  FOFI_DP_R_POS_OSPDataRequestCommand.DisposeOf;
  FBUS_DP_M_PNODataRequestCommand.DisposeOf;
  FBUS_DP_M_PNMDataRequestCommand.DisposeOf;
  Fctc_dp_c_eocDataRequestCommand.DisposeOf;
  FEST_DP_R_ABC_VLRDataRequestCommand.DisposeOf;
  FEST_DP_R_ABC_QTDDataRequestCommand.DisposeOf;
  FCTC_DP_R_ORCDataRequestCommand.DisposeOf;
  FCTC_DP_R_COMDataRequestCommand.DisposeOf;
  FEST_DP_R_GIRDataRequestCommand.DisposeOf;
  FPCP_DP_C_CUEDataRequestCommand.DisposeOf;
  FPCP_DP_C_CLEDataRequestCommand.DisposeOf;
  FEST_DP_R_MLTDataRequestCommand.DisposeOf;
  FBUS_DP_R_ORC_ITE_MEDDataRequestCommand.DisposeOf;
  FBUS_DP_C_PAR_CPG_INFDataRequestCommand.DisposeOf;
  FBUS_DP_R_CTE_ITEDataRequestCommand.DisposeOf;
  FBUS_DP_R_CHQDataRequestCommand.DisposeOf;
  FCAD_DP_C_CCRDataRequestCommand.DisposeOf;
  FBUS_DP_M_NFE_TIT_MAQDataRequestCommand.DisposeOf;
  FFIN_DP_R_INDDataRequestCommand.DisposeOf;
  FEST_DP_R_MOV_SPRDataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_0190DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_0400DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_0405DataRequestCommand.DisposeOf;
  FFIN_DP_M_CBXDataRequestCommand.DisposeOf;
  FFIN_DP_M_CBXUpdateDataCommand.DisposeOf;
  FBUS_DP_M_CBX_TITDataRequestCommand.DisposeOf;
  FFIN_DP_R_BCO_EXBDataRequestCommand.DisposeOf;
  FFIN_DP_R_BCO_CCBDataRequestCommand.DisposeOf;
  FFIN_DP_R_BCO_SBCDataRequestCommand.DisposeOf;
  FEST_DP_M_CTEUpdateDataCommand.DisposeOf;
  FBUS_DP_M_CTE_RES_ITE_INTDataRequestCommand.DisposeOf;
  FFAT_DP_R_PIS_NFLDataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_G_600DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_G_610DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_G_615DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_G_605DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_G_620DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_G_625DataRequestCommand.DisposeOf;
  FDP_BR_CUPOM_MESTREDataRequestCommand.DisposeOf;
  FBUS_DP_M_COBDataRequestCommand.DisposeOf;
  FBUS_DP_M_COB_TIT_TITDataRequestCommand.DisposeOf;
  FFIN_DP_M_CTA_INTDataRequestCommand.DisposeOf;
  FFIN_DP_M_CTAUpdateDataCommand.DisposeOf;
  FBUS_DP_C_PCTDataRequestCommand.DisposeOf;
  FEST_DP_M_METDataRequestCommand.DisposeOf;
  FEST_DP_M_METUpdateDataCommand.DisposeOf;
  FBUS_DP_M_MET_ITE_INTDataRequestCommand.DisposeOf;
  FFAT_DP_R_PIS_RPCDataRequestCommand.DisposeOf;
  FPCP_DP_M_ORSUpdateDataCommand.DisposeOf;
  FBUS_DP_M_ORS_ITE_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_ORS_TIT_INTDataRequestCommand.DisposeOf;
  FFIN_DP_M_RCRUpdateDataCommand.DisposeOf;
  FPCP_DP_R_ORSDataRequestCommand.DisposeOf;
  FFAT_DP_M_PCADataRequestCommand.DisposeOf;
  FBUS_DP_M_PCADataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_E60DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_E65DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_E80DataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_E85DataRequestCommand.DisposeOf;
  FFAT_DP_M_XMLDataRequestCommand.DisposeOf;
  FFAT_DP_R_PEDDataRequestCommand.DisposeOf;
  FBUS_DP_M_FAT_PCA_PEDDataRequestCommand.DisposeOf;
  FBUS_DP_M_FES_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_ORC_PLCDataRequestCommand.DisposeOf;
  FFIN_DP_R_CSCDataRequestCommand.DisposeOf;
  FFIN_DP_R_EXT_CLI_NCRDataRequestCommand.DisposeOf;
  FACE_DP_M_IDNDataRequestCommand.DisposeOf;
  FACE_DP_M_PRODataRequestCommand.DisposeOf;
  FACE_DP_M_FILDataRequestCommand.DisposeOf;
  FACE_DP_M_EST_DEPDataRequestCommand.DisposeOf;
  FACE_DP_M_EST_FOPDataRequestCommand.DisposeOf;
  FACE_DP_M_VNDDataRequestCommand.DisposeOf;
  FACE_DP_M_CLIDataRequestCommand.DisposeOf;
  FACE_DP_M_NFEDataRequestCommand.DisposeOf;
  FBUS_DP_C_FUN_CRG_GERDataRequestCommand.DisposeOf;
  FCTC_DP_M_PRODataRequestCommand.DisposeOf;
  FCTC_DP_M_APGDataRequestCommand.DisposeOf;
  FCTC_DP_M_SLMDataRequestCommand.DisposeOf;
  FCTC_DP_R_SLMDataRequestCommand.DisposeOf;
  FBUS_DP_C_CSU_ITE_PRFDataRequestCommand.DisposeOf;
  FCAD_DP_R_ITE_PRC_FINDataRequestCommand.DisposeOf;
  FEST_DP_R_DEZDataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_700DataRequestCommand.DisposeOf;
  FFIN_DP_R_MCH_TOTDataRequestCommand.DisposeOf;
  FFAT_DP_R_GAM_710DataRequestCommand.DisposeOf;
  FFIN_DP_R_BCO_SLDDataRequestCommand.DisposeOf;
  FFAT_DP_M_ROMUpdateDataCommand.DisposeOf;
  FFIN_DP_R_CXA_DIA_NPDDataRequestCommand.DisposeOf;
  FFIN_DP_R_CXA_DIA_NFTDataRequestCommand.DisposeOf;
  FFAT_DP_R_COV_RECDataRequestCommand.DisposeOf;
  FFAT_DP_R_COV_FATDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_PFTDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_PREDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_PDEDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_PFEDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_PRCDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_PPGDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_XRCDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_XPGDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_XCBDataRequestCommand.DisposeOf;
  FFIN_DP_M_RECUpdateDataCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_PFT_EMPDataRequestCommand.DisposeOf;
  FBUS_DP_M_OPR_OPP_INTDataRequestCommand.DisposeOf;
  FEST_DP_R_PES_GERDataRequestCommand.DisposeOf;
  FEST_DP_R_PES_ALMDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_PEQ_TVPDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_PEQ_CMDDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_PEQ_DPVDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_PEQ_DPFDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_DRE_RVNDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_DRE_DVNDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_DRE_DPODataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_DRE_CMDDataRequestCommand.DisposeOf;
  FBUS_DP_M_CSU_DRE_RNODataRequestCommand.DisposeOf;
  FBUS_DP_BR_PREVENDA_DETALHEDataRequestCommand.DisposeOf;
  FBUS_DP_BR_CUPOM_DETALHEDataRequestCommand.DisposeOf;
  FPCP_DP_C_FPIDataRequestCommand.DisposeOf;
  FPCP_DP_M_OPR_ETQDataRequestCommand.DisposeOf;
  FBUS_DP_M_PED_INTDataRequestCommand.DisposeOf;
  FBUS_DP_M_OPR_PED_INTDataRequestCommand.DisposeOf;
  FEST_DP_M_MALGetDataSetPropertiesCommand.DisposeOf;
  FFAT_DP_M_PEDGetDataSetPropertiesCommand.DisposeOf;
  FFIN_DP_R_EXT_CLI_ESTDataRequestCommand.DisposeOf;
  FBUS_DP_M_OPR_OPP_SOPDataRequestCommand.DisposeOf;
  FBUS_DP_M_REC_INTDataRequestCommand.DisposeOf;
  FPCP_DP_M_OPRGetDataSetPropertiesCommand.DisposeOf;
  FPCP_DP_M_OPRUpdateDataCommand.DisposeOf;
  FBUS_DP_M_CSU_GER_PFFDataRequestCommand.DisposeOf;
  FBUS_DP_C_ITE_PRCDataRequestCommand.DisposeOf;
  FCAD_DP_R_ITE_PRC_MNLDataRequestCommand.DisposeOf;
  FCAD_DP_C_PAIDataRequestCommand.DisposeOf;
  FPCP_DP_M_OPR_REQDataRequestCommand.DisposeOf;
  FBUS_DP_M_LOT_ESTDataRequestCommand.DisposeOf;
  FAbreBancoCommand.DisposeOf;
  FGerarSqlTxtCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FenValorChaveCommand.DisposeOf;
  FenChaveNItensCommand.DisposeOf;
  FenDataServerCommand.DisposeOf;
  FenHoraServerCommand.DisposeOf;
  FenVerifVersaoCommand.DisposeOf;
  FenVerifPedDupOrsCommand.DisposeOf;
  FenVerifNfeDupRomCommand.DisposeOf;
  FenVerifCteIteDupCommand.DisposeOf;
  FenVerifNfePendenteCommand.DisposeOf;
  FenExiTitulosBaixadoCommand.DisposeOf;
  FenExiDebClienteCommand.DisposeOf;
  FenBuscaMenuCommand.DisposeOf;
  FenVerCreditoFornCommand.DisposeOf;
  FenVerCreditoCliCommand.DisposeOf;
  FenVerSaldoDiaCxaCommand.DisposeOf;
  FenGerPeqDespCommand.DisposeOf;
  FenBusTotPagMedCommand.DisposeOf;
  FenBusTotVendMedCommand.DisposeOf;
  FenAtuPrcIteCommand.DisposeOf;
  FenDesfazerFatCommand.DisposeOf;
  FenGerFinCxaBcoCommand.DisposeOf;
  FenGerFinRecPagCommand.DisposeOf;
  FenGerFinRcrCommand.DisposeOf;
  FenBusNovoSldlimCliCommand.DisposeOf;
  FenVerSldLimAtuCommand.DisposeOf;
  FenFormarObsFiscoNfeCommand.DisposeOf;
  FenAtuDadosNFCommand.DisposeOf;
  FenProxNroMDFeCommand.DisposeOf;
  FenGerarPreVendaCommand.DisposeOf;
  FenFinalizarCupomCxaCommand.DisposeOf;
  FenGerCupomGerConWinCommand.DisposeOf;
  FenBusFpgEcfCommand.DisposeOf;
  FenCancelCupomCommand.DisposeOf;
  FenCancelNfeCommand.DisposeOf;
  FenReabrePedCommand.DisposeOf;
  FenAproReprPedCommand.DisposeOf;
  FenGerarNfeCommand.DisposeOf;
  FenFecharCaixaCommand.DisposeOf;
  FenBxaTitRetBcoCommand.DisposeOf;
  FenAtualMaqNfsTitCommand.DisposeOf;
  FenAtualPedF11Command.DisposeOf;
  FenVerSldCxaEmAbertoCommand.DisposeOf;
  FAllApplyUpdatesCommand.DisposeOf;
  FenMD5Command.DisposeOf;
  FenMD5FileCommand.DisposeOf;
  FBuscarConnBancoCommand.DisposeOf;
  FenAudInserirCampoPacoteCommand.DisposeOf;
  FenAudGravarCommand.DisposeOf;
  FenSgqVefPedRomCommand.DisposeOf;
  FenSgqPcpImportarPedCommand.DisposeOf;
  FenSgqPcpGerarReqCommand.DisposeOf;
  FenSgqEstatisticaAcrCommand.DisposeOf;
  inherited;
end;

end.

