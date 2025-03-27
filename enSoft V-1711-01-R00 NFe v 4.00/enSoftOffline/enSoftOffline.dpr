program enSoftOffline;

uses
  Vcl.Forms,
  Vcl.Controls,
  Vcl.Dialogs,
  System.SysUtils,
  System.Variants,
  SEG_UN_X_SEN in 'SEG_UN_X_SEN.pas' {SEG_FM_X_SEN},
  uDmGeral in 'uDmGeral.pas' {dmGeral: TDataModule},
  uDmGeralSer in 'uDmGeralSer.pas' {dmGeralSer: TDataModule},
  PAD_UN_X_PAD in 'Padrao\PAD_UN_X_PAD.pas' {PAD_FM_X_PAD},
  PAD_UN_X_PSQ in 'Padrao\PAD_UN_X_PSQ.pas' {PAD_FM_X_PSQ},
  SEG_UN_X_IMP in 'SEG_UN_X_IMP.pas' {SEG_FM_X_IMP},
  PSQ_UN_X_CLI in 'Cadastros\Consultas\PSQ_UN_X_CLI.pas' {PSQ_FM_X_CLI},
  PSQ_UN_X_FPG in 'Cadastros\Consultas\PSQ_UN_X_FPG.pas' {PSQ_FM_X_FPG},
  PSQ_UN_X_ITE in 'Cadastros\Consultas\PSQ_UN_X_ITE.pas' {PSQ_FM_X_ITE},
  enConstantes in 'Padrao\enConstantes.pas',
  FAT_UN_M_PED in 'Movimentacoes\Comercial\FAT_UN_M_PED.pas' {FAT_FM_M_PED},
  FAT_RN_M_PED in 'Regras\Faturamento\FAT_RN_M_PED.pas',
  enFunc in 'Padrao\enFunc.pas',
  FAT_UN_M_PED_RTC in 'Movimentacoes\Comercial\FAT_UN_M_PED_RTC.pas' {FAT_FM_M_PED_RTC},
  FAT_UN_M_PED_IRG in 'Movimentacoes\Comercial\FAT_UN_M_PED_IRG.pas' {FAT_FM_M_PED_IRG},
  uProxy in 'Padrao\uProxy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;




  Application.CreateForm(TdmGeral, dmGeral);
  Application.CreateForm(TdmGeralSer, dmGeralSer);
  dmGeral.CAD_CD_C_FUN.Close;
  dmGeral.CAD_CD_C_FUN.Data :=
  dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([1,'%']));

  if not dmGeral.CAD_CD_C_FUN.IsEmpty then
    begin
      Application.CreateForm(TSEG_FM_X_SEN, SEG_FM_X_SEN);

      if (SEG_FM_X_SEN.ShowModal = mrOK) then
        begin
         FreeAndNil(SEG_FM_X_SEN);

         Application.CreateForm(TFAT_FM_M_PED, FAT_FM_M_PED);
         Application.Run;
        end;
    end
  else
    if  MessageDlg('Não existe usuário na sua base de dados!'+#13+#10+
                   'Deseja conectar-se com a base de dados principal?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
         dmGeralSer.AcessarBancoRemoto;
         SEG_FM_X_IMP:=TSEG_FM_X_IMP.Create(Application);
         if (SEG_FM_X_IMP.ShowModal = mrOK) then
           begin
            SEG_FM_X_IMP.Free;
            Application.CreateForm(TSEG_FM_X_SEN, SEG_FM_X_SEN);
            if (SEG_FM_X_SEN.ShowModal = mrOK) then
                begin
                 FreeAndNil(SEG_FM_X_SEN);
                 Application.CreateForm(TFAT_FM_M_PED, FAT_FM_M_PED);
                end;
           end;
         dmGeralSer.Conexao.Close;
         dmGeralSer.Conexao.CloseDataSets;
         dmGeralSer.Conexao.Params.Clear;
      end;

  Application.Run;
end.
