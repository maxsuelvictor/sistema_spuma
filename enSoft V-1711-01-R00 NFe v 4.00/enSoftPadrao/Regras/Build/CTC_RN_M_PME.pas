unit CTC_RN_M_PME;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcNovoPme;
procedure CtcValidaPme;

implementation
Uses uDmGeral,enConstantes, uProxy, CTC_UN_M_PME;
var
xMensErro:String;

procedure CtcNovoPme;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('ID_PME').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_PME');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure CtcValidaPme;
begin
  xMensErro:='';

  if (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('tipo_equip').AsString=null) or
     (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('tipo_equip').AsString='') then
     begin
       xMensErro:= xMensErro + '.Tipo de equipamento deve ser informado.'+ #13;
     end;

  if (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('tipo_cont').AsString=null) or
     (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('tipo_cont').AsString='') then
     begin
       xMensErro:= xMensErro + '.Tipo de período deve ser informado.'+ #13;
     end;

  if (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('id_equip').AsString=null) or
     (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('id_equip').AsString='') then
     begin
       if CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('tipo_equip').AsString = '2' then
        xMensErro:= xMensErro + '.Veículo deve ser informado.'+ #13
       else
         xMensErro:= xMensErro + '.Equipamento deve ser informado.'+ #13
     end;

  if (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('modelo').AsString=null) or
     (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('modelo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Modelo deve ser informado.'+ #13;
     end;

  if (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('ult_manu').AsString=null) or
     (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('ult_manu').AsString='') then
     begin
       xMensErro:= xMensErro + '.Ultima manutemção deve ser informada.'+ #13;
     end;

  if (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('atual_manu').AsString=null) or
     (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('atual_manu').AsString='') then
     begin
       xMensErro:= xMensErro + '.Manutenção atual deve ser informada.'+ #13;
     end;

  if (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('prox_manu').AsString=null) or
     (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('prox_manu').AsString='') then
     begin
       xMensErro:= xMensErro + '.Proxima manutemção deve ser informada.'+ #13;
     end;

  if (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('local').AsString=null) or
     (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('local').AsString='') then
     begin
       xMensErro:= xMensErro + '.Local deve ser informada.'+ #13;
     end;

  {if (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('observacao').AsString=null) or
     (CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('observacao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Observação deve ser informada.'+ #13;
     end; }

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
