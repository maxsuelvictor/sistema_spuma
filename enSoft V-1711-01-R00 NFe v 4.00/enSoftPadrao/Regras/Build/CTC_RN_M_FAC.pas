unit CTC_RN_M_FAC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcValidaFac(DataSet:TDataSet);
procedure CtcMascaraFac(DataSet:TDataSet);
procedure CtcNovoFac(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc;
VAR
xMensErro:String;
procedure CtcValidaFac(DataSet:TDataSet);
begin
xMensErro:='';
  if (dmCtc.CTC_CD_M_FAC.FieldByName('pro_acao').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('pro_acao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Ação deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_FAC.FieldByName('pro_origem').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('pro_origem').AsString='') then
     begin
       xMensErro:= xMensErro + '.Origem deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_FAC.FieldByName('pro_descricao').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('pro_descricao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_FAC.FieldByName('aci_descricao').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('aci_descricao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Ação Imediata deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_FAC.FieldByName('ava_avaliacao').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('ava_avaliacao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Tipo de Avaliação deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_FAC.FieldByName('cap_descricao').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('cap_descricao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Causa deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_FAC.FieldByName('pro_data').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('pro_data').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('aci_data').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('aci_data').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('ava_data').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('ava_data').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('cap_data').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('cap_data').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_data_01').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_data_01').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_data_02').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_data_02').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_data_03').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_data_03').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_data_04').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_data_04').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_FAC.FieldByName('pro_id_responsavel').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('pro_id_responsavel').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('aci_id_responsavel').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('aci_id_responsavel').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('ava_id_responsavel').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('ava_id_responsavel').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('cap_id_responsavel').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('cap_id_responsavel').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_01').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_01').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_02').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_02').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_03').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_03').AsString='') or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_04').AsString=null) or
     (dmCtc.CTC_CD_M_FAC.FieldByName('acp_id_resp_04').AsString='') then
     begin
       xMensErro:= xMensErro + '.Os Responsáveis deve ser informada.'+ #13;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcMascaraFac(DataSet:TDataSet);
begin

end;

procedure CtcNovoFac(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_FAC.FieldByName('ID_FAC').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_CFE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_M_FAC.FieldByName('dta_abertura').AsDateTime := xDataSis;

  dmGeral.BusCodigoRevListMestre(true,false,'CTC_TB_M_FAC',xCodLme,xRevLme,dmCtc.CTC_CD_M_CFE);
end;
end.
