unit PCP_RN_C_CDP;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure cdpModificaMediaComp(Sender: TField);
procedure cdpModificaMediaLarg(Sender: TField);
procedure cdpModificaMediaAltu(Sender: TField);
procedure cdpMascara(DataSet:TDataSet);


implementation
Uses uDmGeral,enConstantes, uProxy, uDmSgq;

procedure cdpMascara(DataSet:TDataSet);
begin
  dmSgq.PCP_CD_C_CDPmed_comp_media.DisplayFormat       :=CMascaraPerc;
  dmSgq.PCP_CD_C_CDPmed_largura_media.DisplayFormat    :=CMascaraPerc;
  dmSgq.PCP_CD_C_CDPmed_altura_media.DisplayFormat     :=CMascaraPerc;

end;


procedure cdpModificaMediaComp(Sender: TField);
begin
  dmSgq.PCP_CD_C_CDP.FieldByName('MED_COMP_MEDIA').AsFloat:=
     (dmSgq.PCP_CD_C_CDP.FieldByName('MED_COMP_01').AsFloat+
      dmSgq.PCP_CD_C_CDP.FieldByName('MED_COMP_02').AsFloat+
      dmSgq.PCP_CD_C_CDP.FieldByName('MED_COMP_03').AsFloat)/3;
end;

procedure cdpModificaMediaLarg(Sender: TField);
begin
  dmSgq.PCP_CD_C_CDP.FieldByName('MED_LARGURA_MEDIA').AsFloat:=
     (dmSgq.PCP_CD_C_CDP.FieldByName('MED_LARGURA_01').AsFloat+
      dmSgq.PCP_CD_C_CDP.FieldByName('MED_LARGURA_02').AsFloat+
      dmSgq.PCP_CD_C_CDP.FieldByName('MED_LARGURA_03').AsFloat)/3;
end;

procedure cdpModificaMediaAltu(Sender: TField);
begin
  dmSgq.PCP_CD_C_CDP.FieldByName('MED_ALTURA_MEDIA').AsFloat:=
     (dmSgq.PCP_CD_C_CDP.FieldByName('MED_ALTURA_01').AsFloat+
      dmSgq.PCP_CD_C_CDP.FieldByName('MED_ALTURA_02').AsFloat+
      dmSgq.PCP_CD_C_CDP.FieldByName('MED_ALTURA_03').AsFloat)/3;
end;


end.
