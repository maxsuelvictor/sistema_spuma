program enSoftPadrao;

















































































uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form3},
  UApplayClassProxy in 'Biblioteca\UApplayClassProxy.pas',
  uProxy in 'Biblioteca\uProxy.pas',
  uDmGeral in 'DataModule\uDmGeral.pas' {dmGeral: TDataModule},
  CAD_RN_C_PES in 'Regras\CAD_RN_C_PES.pas',
  CMP_RN_M_PED in 'Regras\CMP_RN_M_PED.pas',
  CTC_RN_M_AVF in 'Regras\CTC_RN_M_AVF.pas',
  CTC_RN_M_FAC in 'Regras\CTC_RN_M_FAC.pas',
  EST_RN_M_CTE in 'Regras\EST_RN_M_CTE.pas',
  FAT_RN_M_NFE in 'Regras\FAT_RN_M_NFE.pas',
  FAT_RN_M_ORC in 'Regras\FAT_RN_M_ORC.pas',
  FAT_RN_M_PED in 'Regras\FAT_RN_M_PED.pas',
  FIN_RN_M_CAR in 'Regras\FIN_RN_M_CAR.pas',
  FIN_RN_M_CHE in 'Regras\FIN_RN_M_CHE.pas',
  FIN_RN_M_COB in 'Regras\FIN_RN_M_COB.pas',
  FIN_RN_M_CTA_CXA in 'Regras\FIN_RN_M_CTA_CXA.pas',
  FIN_RN_M_CTA_BCO in 'Regras\FIN_RN_M_CTA_BCO.pas',
  FIN_RN_M_CTA_CON in 'Regras\FIN_RN_M_CTA_CON.pas',
  FIN_RN_M_CXA in 'Regras\FIN_RN_M_CXA.pas',
  FIN_RN_M_PAG in 'Regras\FIN_RN_M_PAG.pas',
  FIN_RN_M_PBX in 'Regras\FIN_RN_M_PBX.pas',
  FIN_RN_M_RBX in 'Regras\FIN_RN_M_RBX.pas',
  FIN_RN_M_RCR in 'Regras\FIN_RN_M_RCR.pas',
  FIN_RN_M_REC in 'Regras\FIN_RN_M_REC.pas',
  uValidacoes in 'Regras\uValidacoes.pas',
  uExceptions in 'Common\uExceptions.pas',
  uResourceString in 'Common\uResourceString.pas',
  enConstantes in 'Padrao\enConstantes.pas',
  PAD_UN_X_PAD in 'Padrao\PAD_UN_X_PAD.pas' {PAD_FM_X_PAD},
  PAD_UN_X_PSQ in 'Padrao\PAD_UN_X_PSQ.pas' {PAD_FM_X_PSQ},
  PAD_UN_X_REL in 'Padrao\PAD_UN_X_REL.pas' {PAD_FM_X_REL},
  SEG_UN_X_SEN in 'Padrao\SEG_UN_X_SEN.pas' {SEG_FM_X_SEN},
  Vcl.RecError in 'Padrao\Vcl.RecError.pas' {ReconcileErrorForm},
  enFunc in 'Padrao\enFunc.pas',
  CMP_RN_M_SOL in 'Regras\CMP_RN_M_SOL.pas',
  CMP_RN_M_COT in 'Regras\CMP_RN_M_COT.pas',
  PCP_RN_C_CDP in 'Regras\PCP_RN_C_CDP.pas',
  CTC_RN_C_OBR in 'Regras\CTC_RN_C_OBR.pas',
  OFI_RN_C_TIO in 'Regras\OFI_RN_C_TIO.pas',
  OFI_RN_M_AGE in 'Regras\OFI_RN_M_AGE.pas',
  OFI_RN_M_OCV in 'Regras\OFI_RN_M_OCV.pas',
  OFI_RN_M_ORV in 'Regras\OFI_RN_M_ORV.pas',
  OFI_RN_M_RQV in 'Regras\OFI_RN_M_RQV.pas',
  PCP_RN_M_IQF in 'Regras\PCP_RN_M_IQF.pas',
  PCP_RN_M_ACR in 'Regras\PCP_RN_M_ACR.pas',
  PCP_RN_M_ORS in 'Regras\PCP_RN_M_ORS.pas',
  PCP_RN_M_RAA in 'Regras\PCP_RN_M_RAA.pas',
  PCP_RN_M_ROM in 'Regras\PCP_RN_M_ROM.pas',
  FAT_RN_M_IQM in 'Regras\FAT_RN_M_IQM.pas',
  PSQ_UN_X_ALM in 'Cadastros\Consultas\PSQ_UN_X_ALM.pas' {PSQ_FM_X_ALM},
  PSQ_UN_X_CFO in 'Cadastros\Consultas\PSQ_UN_X_CFO.pas' {PSQ_FM_X_CFO},
  PSQ_UN_X_CID in 'Cadastros\Consultas\PSQ_UN_X_CID.pas' {PSQ_FM_X_CID},
  PSQ_UN_X_CLI in 'Cadastros\Consultas\PSQ_UN_X_CLI.pas' {PSQ_FM_X_CLI},
  PSQ_UN_X_CNE in 'Cadastros\Consultas\PSQ_UN_X_CNE.pas' {PSQ_FM_X_CNE},
  PSQ_UN_X_CNF in 'Cadastros\Consultas\PSQ_UN_X_CNF.pas' {PSQ_FM_X_CNF},
  PSQ_UN_X_COR in 'Cadastros\Consultas\PSQ_UN_X_COR.pas' {PSQ_FM_X_COR},
  PSQ_UN_X_CPG in 'Cadastros\Consultas\PSQ_UN_X_CPG.pas' {PSQ_FM_X_CPG},
  PSQ_UN_X_CRG in 'Cadastros\Consultas\PSQ_UN_X_CRG.pas' {PSQ_FM_X_CRG},
  PSQ_UN_X_CTC in 'Cadastros\Consultas\PSQ_UN_X_CTC.pas' {PSQ_FM_X_CTC},
  PSQ_UN_X_DIS in 'Cadastros\Consultas\PSQ_UN_X_DIS.pas' {PSQ_FM_X_DIS},
  PSQ_UN_X_ESP in 'Cadastros\Consultas\PSQ_UN_X_ESP.pas' {PSQ_FM_X_ESP},
  PSQ_UN_X_ETQ in 'Cadastros\Consultas\PSQ_UN_X_ETQ.pas' {PSQ_FM_X_ETQ},
  PSQ_UN_X_FOR in 'Cadastros\Consultas\PSQ_UN_X_FOR.pas' {PSQ_FM_X_FOR},
  PSQ_UN_X_FPG in 'Cadastros\Consultas\PSQ_UN_X_FPG.pas' {PSQ_FM_X_FPG},
  PSQ_UN_X_FUN in 'Cadastros\Consultas\PSQ_UN_X_FUN.pas' {PSQ_FM_X_FUN},
  PSQ_UN_X_GRU in 'Cadastros\Consultas\PSQ_UN_X_GRU.pas' {PSQ_FM_X_GRU},
  PSQ_UN_X_INF in 'Cadastros\Consultas\PSQ_UN_X_INF.pas' {PSQ_FM_X_INF},
  PSQ_UN_X_INS in 'Cadastros\Consultas\PSQ_UN_X_INS.pas' {PSQ_FM_X_INS},
  PSQ_UN_X_ITE in 'Cadastros\Consultas\PSQ_UN_X_ITE.pas' {PSQ_FM_X_ITE},
  PSQ_UN_X_LME in 'Cadastros\Consultas\PSQ_UN_X_LME.pas' {PSQ_FM_X_LME},
  PSQ_UN_X_MEQ in 'Cadastros\Consultas\PSQ_UN_X_MEQ.pas' {PSQ_FM_X_MEQ},
  PSQ_UN_X_NCM in 'Cadastros\Consultas\PSQ_UN_X_NCM.pas' {PSQ_FM_X_NCM},
  PSQ_UN_X_NFE in 'Cadastros\Consultas\PSQ_UN_X_NFE.pas' {PSQ_FM_X_NFE},
  PSQ_UN_X_NRA in 'Cadastros\Consultas\PSQ_UN_X_NRA.pas' {PSQ_FM_X_NRA},
  PSQ_UN_X_PAR in 'Cadastros\Consultas\PSQ_UN_X_PAR.pas' {PSQ_FM_X_PAR},
  PSQ_UN_X_PBX_TIT in 'Cadastros\Consultas\PSQ_UN_X_PBX_TIT.pas' {PSQ_FM_X_PBX_TIT},
  PSQ_UN_X_PCT in 'Cadastros\Consultas\PSQ_UN_X_PCT.pas' {PSQ_FM_X_PCT},
  PSQ_UN_X_PEC in 'Cadastros\Consultas\PSQ_UN_X_PEC.pas' {PSQ_FM_X_PEC},
  PSQ_UN_X_PRG in 'Cadastros\Consultas\PSQ_UN_X_PRG.pas' {PSQ_FM_X_PRG},
  PSQ_UN_X_REC in 'Cadastros\Consultas\PSQ_UN_X_REC.pas' {PSQ_FM_X_REC},
  PSQ_UN_X_ROT in 'Cadastros\Consultas\PSQ_UN_X_ROT.pas' {PSQ_FM_X_ROT},
  PSQ_UN_X_RUA in 'Cadastros\Consultas\PSQ_UN_X_RUA.pas' {PSQ_FM_X_RUA},
  PSQ_UN_X_SET in 'Cadastros\Consultas\PSQ_UN_X_SET.pas' {PSQ_FM_X_SET},
  PSQ_UN_X_TDF in 'Cadastros\Consultas\PSQ_UN_X_TDF.pas' {PSQ_FM_X_TDF},
  PSQ_UN_X_TIF in 'Cadastros\Consultas\PSQ_UN_X_TIF.pas' {PSQ_FM_X_TIF},
  PSQ_UN_X_TME in 'Cadastros\Consultas\PSQ_UN_X_TME.pas' {PSQ_FM_X_TME},
  PSQ_UN_X_TRI in 'Cadastros\Consultas\PSQ_UN_X_TRI.pas' {PSQ_FM_X_TRI},
  PSQ_UN_X_UND in 'Cadastros\Consultas\PSQ_UN_X_UND.pas' {PSQ_FM_X_UND},
  PSQ_UN_X_VEI in 'Cadastros\Consultas\PSQ_UN_X_VEI.pas' {PSQ_FM_X_VEI},
  CTC_RN_M_ORC in 'Regras\CTC_RN_M_ORC.pas',
  CAD_RN_C_ITE in 'Regras\CAD_RN_C_ITE.pas',
  CTC_RN_M_CFE in 'Regras\CTC_RN_M_CFE.pas',
  CTC_RN_M_CEP in 'Regras\CTC_RN_M_CEP.pas',
  CAD_UN_R_ALM in 'Relatorios\Cadastros\CAD_UN_R_ALM.pas' {CAD_FM_R_ALM},
  CAD_UN_R_CCU in 'Relatorios\Cadastros\CAD_UN_R_CCU.pas' {CAD_FM_R_CCU},
  CAD_UN_R_CFO in 'Relatorios\Cadastros\CAD_UN_R_CFO.pas' {CAD_FM_R_CFO},
  CAD_UN_R_CID in 'Relatorios\Cadastros\CAD_UN_R_CID.pas' {CAD_FM_R_CID},
  CAD_UN_R_CNE in 'Relatorios\Cadastros\CAD_UN_R_CNE.pas' {CAD_FM_R_CNE},
  CAD_UN_R_COR in 'Relatorios\Cadastros\CAD_UN_R_COR.pas' {CAD_FM_R_COR},
  CAD_UN_R_CRG in 'Relatorios\Cadastros\CAD_UN_R_CRG.pas' {CAD_FM_R_CRG},
  CAD_UN_R_CTC in 'Relatorios\Cadastros\CAD_UN_R_CTC.pas' {CAD_FM_R_CTC},
  CAD_UN_R_FOR in 'Relatorios\Cadastros\CAD_UN_R_FOR.pas' {CAD_FM_R_FOR},
  CAD_UN_R_FPG in 'Relatorios\Cadastros\CAD_UN_R_FPG.pas' {CAD_FM_R_FPG},
  CAD_UN_R_FUN in 'Relatorios\Cadastros\CAD_UN_R_FUN.pas' {CAD_FM_R_FUN},
  CAD_UN_R_GRU in 'Relatorios\Cadastros\CAD_UN_R_GRU.pas' {CAD_FM_R_GRU},
  CAD_UN_R_INF in 'Relatorios\Cadastros\CAD_UN_R_INF.pas' {CAD_FM_R_INF},
  CAD_UN_R_ITE in 'Relatorios\Cadastros\CAD_UN_R_ITE.pas' {CAD_FM_R_ITE},
  CAD_UN_R_LTO in 'Relatorios\Cadastros\CAD_UN_R_LTO.pas' {CAD_FM_R_LTO},
  CAD_UN_R_MVE in 'Relatorios\Cadastros\CAD_UN_R_MVE.pas' {CAD_FM_R_MVE},
  CAD_UN_R_NCM in 'Relatorios\Cadastros\CAD_UN_R_NCM.pas' {CAD_FM_R_NCM},
  CAD_UN_R_PCT in 'Relatorios\Cadastros\CAD_UN_R_PCT.pas' {CAD_FM_R_PCT},
  CAD_UN_R_PEC in 'Relatorios\Cadastros\CAD_UN_R_PEC.pas' {CAD_FM_R_PEC},
  CAD_UN_R_PRG in 'Relatorios\Cadastros\CAD_UN_R_PRG.pas' {CAD_FM_R_PRG},
  CAD_UN_R_RAM in 'Relatorios\Cadastros\CAD_UN_R_RAM.pas' {CAD_FM_R_RAM},
  CAD_UN_R_SET in 'Relatorios\Cadastros\CAD_UN_R_SET.pas' {CAD_FM_R_SET},
  CAD_UN_R_TAM in 'Relatorios\Cadastros\CAD_UN_R_TAM.pas' {CAD_FM_R_TAM},
  CAD_UN_R_TDF in 'Relatorios\Cadastros\CAD_UN_R_TDF.pas' {CAD_FM_R_TDF},
  CAD_UN_R_TIF in 'Relatorios\Cadastros\CAD_UN_R_TIF.pas' {CAD_FM_R_TIF},
  CAD_UN_R_TRI in 'Relatorios\Cadastros\CAD_UN_R_TRI.pas' {CAD_FM_R_TRI},
  OFI_UN_R_TIO in 'Relatorios\Cadastros\OFI_UN_R_TIO.pas' {OFI_FM_R_TIO},
  EST_UN_R_ABC_PRO in 'Relatorios\Movimentações\EST_UN_R_ABC_PRO.pas' {EST_FM_R_ABC_PRO},
  EST_UN_R_CTE in 'Relatorios\Movimentações\EST_UN_R_CTE.pas' {EST_FM_R_CTE},
  EST_UN_R_DEV in 'Relatorios\Movimentações\EST_UN_R_DEV.pas' {EST_FM_R_DEV},
  EST_UN_R_FIC in 'Relatorios\Movimentações\EST_UN_R_FIC.pas' {EST_FM_R_FIC},
  EST_UN_R_GIR in 'Relatorios\Movimentações\EST_UN_R_GIR.pas' {EST_FM_R_GIR},
  EST_UN_R_INV in 'Relatorios\Movimentações\EST_UN_R_INV.pas' {EST_FM_R_INV},
  EST_UN_R_MOV in 'Relatorios\Movimentações\EST_UN_R_MOV.pas' {EST_FM_R_MOV},
  EST_UN_R_PVE in 'Relatorios\Movimentações\EST_UN_R_PVE.pas' {EST_FM_R_PVE},
  FAT_UN_R_ABC_FAT in 'Relatorios\Movimentações\FAT_UN_R_ABC_FAT.pas' {FAT_FM_R_ABC_FAT},
  FAT_UN_R_COV in 'Relatorios\Movimentações\FAT_UN_R_COV.pas' {FAT_FM_R_COV},
  FAT_UN_R_IQM in 'Relatorios\Movimentações\FAT_UN_R_IQM.pas' {FAT_FM_R_IQM},
  FAT_UN_R_NFE in 'Relatorios\Movimentações\FAT_UN_R_NFE.pas' {FAT_FM_R_NFE},
  FAT_UN_R_NFE_ITE_IQM in 'Relatorios\Movimentações\FAT_UN_R_NFE_ITE_IQM.pas' {FAT_FM_R_NFE_ITE_IQM},
  FAT_UN_R_PIC in 'Relatorios\Movimentações\FAT_UN_R_PIC.pas' {FAT_FM_R_PIC},
  FAT_UN_R_POS in 'Relatorios\Movimentações\FAT_UN_R_POS.pas' {FAT_FM_R_POS},
  FAT_UN_R_PPC in 'Relatorios\Movimentações\FAT_UN_R_PPC.pas' {FAT_FM_R_PPC},
  FAT_UN_R_REN in 'Relatorios\Movimentações\FAT_UN_R_REN.pas' {FAT_FM_R_REN},
  FIN_UN_R_PAG in 'Relatorios\Movimentações\FIN_UN_R_PAG.pas' {FIN_FM_R_PAG},
  FIN_UN_R_REC in 'Relatorios\Movimentações\FIN_UN_R_REC.pas' {FIN_FM_R_REC},
  FIN_RN_M_ORC in 'Regras\FIN_RN_M_ORC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TdmGeral, dmGeral);
  Application.CreateForm(TPAD_FM_X_PAD, PAD_FM_X_PAD);
  Application.CreateForm(TPAD_FM_X_PSQ, PAD_FM_X_PSQ);
  Application.CreateForm(TPAD_FM_X_REL, PAD_FM_X_REL);
  Application.CreateForm(TSEG_FM_X_SEN, SEG_FM_X_SEN);
  Application.CreateForm(TPSQ_FM_X_ALM, PSQ_FM_X_ALM);
  Application.CreateForm(TPSQ_FM_X_CFO, PSQ_FM_X_CFO);
  Application.CreateForm(TPSQ_FM_X_CID, PSQ_FM_X_CID);
  Application.CreateForm(TPSQ_FM_X_CLI, PSQ_FM_X_CLI);
  Application.CreateForm(TPSQ_FM_X_CNE, PSQ_FM_X_CNE);
  Application.CreateForm(TPSQ_FM_X_CNF, PSQ_FM_X_CNF);
  Application.CreateForm(TPSQ_FM_X_COR, PSQ_FM_X_COR);
  Application.CreateForm(TPSQ_FM_X_CPG, PSQ_FM_X_CPG);
  Application.CreateForm(TPSQ_FM_X_CRG, PSQ_FM_X_CRG);
  Application.CreateForm(TPSQ_FM_X_CTC, PSQ_FM_X_CTC);
  Application.CreateForm(TPSQ_FM_X_DIS, PSQ_FM_X_DIS);
  Application.CreateForm(TPSQ_FM_X_ESP, PSQ_FM_X_ESP);
  Application.CreateForm(TPSQ_FM_X_ETQ, PSQ_FM_X_ETQ);
  Application.CreateForm(TPSQ_FM_X_FOR, PSQ_FM_X_FOR);
  Application.CreateForm(TPSQ_FM_X_FPG, PSQ_FM_X_FPG);
  Application.CreateForm(TPSQ_FM_X_FUN, PSQ_FM_X_FUN);
  Application.CreateForm(TPSQ_FM_X_GRU, PSQ_FM_X_GRU);
  Application.CreateForm(TPSQ_FM_X_INF, PSQ_FM_X_INF);
  Application.CreateForm(TPSQ_FM_X_INS, PSQ_FM_X_INS);
  Application.CreateForm(TPSQ_FM_X_ITE, PSQ_FM_X_ITE);
  Application.CreateForm(TPSQ_FM_X_LME, PSQ_FM_X_LME);
  Application.CreateForm(TPSQ_FM_X_MEQ, PSQ_FM_X_MEQ);
  Application.CreateForm(TPSQ_FM_X_NCM, PSQ_FM_X_NCM);
  Application.CreateForm(TPSQ_FM_X_NFE, PSQ_FM_X_NFE);
  Application.CreateForm(TPSQ_FM_X_NRA, PSQ_FM_X_NRA);
  Application.CreateForm(TPSQ_FM_X_PAR, PSQ_FM_X_PAR);
  Application.CreateForm(TPSQ_FM_X_PBX_TIT, PSQ_FM_X_PBX_TIT);
  Application.CreateForm(TPSQ_FM_X_PCT, PSQ_FM_X_PCT);
  Application.CreateForm(TPSQ_FM_X_PEC, PSQ_FM_X_PEC);
  Application.CreateForm(TPSQ_FM_X_PRG, PSQ_FM_X_PRG);
  Application.CreateForm(TPSQ_FM_X_REC, PSQ_FM_X_REC);
  Application.CreateForm(TPSQ_FM_X_ROT, PSQ_FM_X_ROT);
  Application.CreateForm(TPSQ_FM_X_RUA, PSQ_FM_X_RUA);
  Application.CreateForm(TPSQ_FM_X_SET, PSQ_FM_X_SET);
  Application.CreateForm(TPSQ_FM_X_TDF, PSQ_FM_X_TDF);
  Application.CreateForm(TPSQ_FM_X_TIF, PSQ_FM_X_TIF);
  Application.CreateForm(TPSQ_FM_X_TME, PSQ_FM_X_TME);
  Application.CreateForm(TPSQ_FM_X_TRI, PSQ_FM_X_TRI);
  Application.CreateForm(TPSQ_FM_X_UND, PSQ_FM_X_UND);
  Application.CreateForm(TPSQ_FM_X_VEI, PSQ_FM_X_VEI);
  Application.CreateForm(TCAD_FM_R_ALM, CAD_FM_R_ALM);
  Application.CreateForm(TCAD_FM_R_CCU, CAD_FM_R_CCU);
  Application.CreateForm(TCAD_FM_R_CFO, CAD_FM_R_CFO);
  Application.CreateForm(TCAD_FM_R_CID, CAD_FM_R_CID);
  Application.CreateForm(TCAD_FM_R_CNE, CAD_FM_R_CNE);
  Application.CreateForm(TCAD_FM_R_COR, CAD_FM_R_COR);
  Application.CreateForm(TCAD_FM_R_CRG, CAD_FM_R_CRG);
  Application.CreateForm(TCAD_FM_R_CTC, CAD_FM_R_CTC);
  Application.CreateForm(TCAD_FM_R_FOR, CAD_FM_R_FOR);
  Application.CreateForm(TCAD_FM_R_FPG, CAD_FM_R_FPG);
  Application.CreateForm(TCAD_FM_R_FUN, CAD_FM_R_FUN);
  Application.CreateForm(TCAD_FM_R_GRU, CAD_FM_R_GRU);
  Application.CreateForm(TCAD_FM_R_INF, CAD_FM_R_INF);
  Application.CreateForm(TCAD_FM_R_ITE, CAD_FM_R_ITE);
  Application.CreateForm(TCAD_FM_R_LTO, CAD_FM_R_LTO);
  Application.CreateForm(TCAD_FM_R_MVE, CAD_FM_R_MVE);
  Application.CreateForm(TCAD_FM_R_NCM, CAD_FM_R_NCM);
  Application.CreateForm(TCAD_FM_R_PCT, CAD_FM_R_PCT);
  Application.CreateForm(TCAD_FM_R_PEC, CAD_FM_R_PEC);
  Application.CreateForm(TCAD_FM_R_PRG, CAD_FM_R_PRG);
  Application.CreateForm(TCAD_FM_R_RAM, CAD_FM_R_RAM);
  Application.CreateForm(TCAD_FM_R_SET, CAD_FM_R_SET);
  Application.CreateForm(TCAD_FM_R_TAM, CAD_FM_R_TAM);
  Application.CreateForm(TCAD_FM_R_TDF, CAD_FM_R_TDF);
  Application.CreateForm(TCAD_FM_R_TIF, CAD_FM_R_TIF);
  Application.CreateForm(TCAD_FM_R_TRI, CAD_FM_R_TRI);
  Application.CreateForm(TOFI_FM_R_TIO, OFI_FM_R_TIO);
  Application.CreateForm(TEST_FM_R_ABC_PRO, EST_FM_R_ABC_PRO);
  Application.CreateForm(TEST_FM_R_CTE, EST_FM_R_CTE);
  Application.CreateForm(TEST_FM_R_DEV, EST_FM_R_DEV);
  Application.CreateForm(TEST_FM_R_FIC, EST_FM_R_FIC);
  Application.CreateForm(TEST_FM_R_GIR, EST_FM_R_GIR);
  Application.CreateForm(TEST_FM_R_INV, EST_FM_R_INV);
  Application.CreateForm(TEST_FM_R_MOV, EST_FM_R_MOV);
  Application.CreateForm(TEST_FM_R_PVE, EST_FM_R_PVE);
  Application.CreateForm(TFAT_FM_R_ABC_FAT, FAT_FM_R_ABC_FAT);
  Application.CreateForm(TFAT_FM_R_COV, FAT_FM_R_COV);
  Application.CreateForm(TFAT_FM_R_IQM, FAT_FM_R_IQM);
  Application.CreateForm(TFAT_FM_R_NFE, FAT_FM_R_NFE);
  Application.CreateForm(TFAT_FM_R_NFE_ITE_IQM, FAT_FM_R_NFE_ITE_IQM);
  Application.CreateForm(TFAT_FM_R_PIC, FAT_FM_R_PIC);
  Application.CreateForm(TFAT_FM_R_POS, FAT_FM_R_POS);
  Application.CreateForm(TFAT_FM_R_PPC, FAT_FM_R_PPC);
  Application.CreateForm(TFAT_FM_R_REN, FAT_FM_R_REN);
  Application.CreateForm(TFIN_FM_R_PAG, FIN_FM_R_PAG);
  Application.CreateForm(TFIN_FM_R_REC, FIN_FM_R_REC);
  Application.Run;
end.
