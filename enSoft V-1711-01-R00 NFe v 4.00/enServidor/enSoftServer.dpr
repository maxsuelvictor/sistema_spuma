program enSoftServer;

uses
  Vcl.Forms,
  uServer in 'uServer.pas' {CMServerForm},
  enSM in 'enSM.pas' {SM: TDSServerModule},
  uExceptions in '..\enSoftPadrao\Common\uExceptions.pas',
  uResourceString in '..\enSoftPadrao\Common\uResourceString.pas',
  uTDataSetHelper in '..\enSoftPadrao\Common\uTDataSetHelper.pas',
  enFunc in '..\enSoftPadrao\Padrao\enFunc.pas',
  enConstantes in '..\enSoftPadrao\Padrao\enConstantes.pas',
  FIN_RN_M_PBX in 'Regras\FIN_RN_M_PBX.pas',
  CTC_RN_M_ORC in 'Regras\CTC_RN_M_ORC.pas',
  FIN_RN_M_RBX in 'Regras\FIN_RN_M_RBX.pas',
  FAT_RN_M_POS in 'Regras\FAT_RN_M_POS.pas',
  FIN_RN_M_CTA_BCO in 'Regras\FIN_RN_M_CTA_BCO.pas',
  FIN_RN_M_CTA_CXA in 'Regras\FIN_RN_M_CTA_CXA.pas',
  FIN_RN_M_CTA_CTA in 'Regras\FIN_RN_M_CTA_CTA.pas',
  OFI_RN_M_ORV in 'Regras\OFI_RN_M_ORV.pas',
  OFI_RN_M_OCV in 'Regras\OFI_RN_M_OCV.pas',
  FIN_RN_M_MCH in 'Regras\FIN_RN_M_MCH.pas',
  FIN_RN_M_COB in 'Regras\FIN_RN_M_COB.pas',
  FIN_RN_M_PAG in 'Regras\FIN_RN_M_PAG.pas',
  FAT_RN_M_CXA in 'Regras\FAT_RN_M_CXA.pas',
  FAT_RN_M_EST in 'Regras\FAT_RN_M_EST.pas',
  enSC in 'enSC.pas' {SC: TDataModule},
  CAD_RN_C_CAD in 'Regras\CAD_RN_C_CAD.pas',
  FIN_RN_M_CTA_CON in 'Regras\FIN_RN_M_CTA_CON.pas',
  EST_RN_M_CTE in 'Regras\EST_RN_M_CTE.pas',
  PCP_RN_M_ROM in 'Regras\PCP_RN_M_ROM.pas',
  enConstantesServer in '..\enSoftPadrao\Padrao\enConstantesServer.pas',
  FAT_RN_M_ROM in 'Regras\FAT_RN_M_ROM.pas',
  PCP_RN_M_OPR in 'Regras\PCP_RN_M_OPR.pas',
  FIN_RN_M_BRD in 'Regras\FIN_RN_M_BRD.pas',
  FAT_RN_M_MKT in 'Regras\FAT_RN_M_MKT.pas',
  uDmApoio in 'uDmApoio.pas' {DmApoio: TDataModule},
  FIN_RN_M_DCT in 'Regras\FIN_RN_M_DCT.pas',
  thBackup in 'Thread\thBackup.pas',
  thDesativarCliente in 'Thread\thDesativarCliente.pas',
  thInventario in 'Thread\thInventario.pas',
  thBloqSistema in 'Thread\thBloqSistema.pas',
  enFR in 'enFR.pas' {FR: TDataModule},
  thEnvioRelatorio in 'Thread\thEnvioRelatorio.pas',
  FAT_RN_M_PED in 'Regras\FAT_RN_M_PED.pas',
  thCancelaPedidoDigitado in 'Thread\thCancelaPedidoDigitado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCMServerForm, CMServerForm);
  Application.CreateForm(TSC, SC);
  //Application.CreateForm(TDmApoio, DmApoio);
  Application.CreateForm(TFR, FR);
  Application.Run;
end.

