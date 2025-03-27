unit CTC_RN_M_SLM;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcNovoSlm(DataSet: TDataSet);
procedure CtcValidaSlm(DataSet:TDataSet);
procedure CtcNovoSlmIte(DataSet: TDataSet);
procedure CtcValidaLocSlmIte(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy,uDmCtc;
var
xMensErro:String;

procedure CtcNovoSlm(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_SLM.FieldByName('ID_CONTROLE').AsInteger :=
      SMPrincipal.enValorChave('CTC_TB_M_SLM');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmCtc.CTC_CD_M_SLM.FieldByName('ID_EMPRESA').AsInteger := dmgeral.CAD_CD_C_PARid_empresa.AsInteger;
  dmCtc.CTC_CD_M_SLM.FieldByName('DATA').AsDateTime := xDataSis;
end;
procedure CtcValidaSlm(DataSet:TDataSet);
begin
  xMensErro:= '';
  if (dmCtc.CTC_CD_M_SLM.FieldByName('ID_OBRA').AsString=null) or
     (dmCtc.CTC_CD_M_SLM.FieldByName('ID_OBRA').AsString='') then
     begin
       xMensErro:= xMensErro + '.Obra deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_SLM.FieldByName('ID_RESPONSAVEL').AsString=null) or
     (dmCtc.CTC_CD_M_SLM.FieldByName('ID_RESPONSAVEL').AsString='') then
     begin
       xMensErro:= xMensErro + '.Responsavel deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_SLM.FieldByName('OBSERVACAO').AsString=null) or
     (dmCtc.CTC_CD_M_SLM.FieldByName('OBSERVACAO').AsString='') then
     begin
       xMensErro:= xMensErro + '.Observação deve ser informada.'+ #13;
     end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;
procedure CtcNovoSlmIte(DataSet: TDataSet);
begin
  dmCtc.CTC_CD_M_SLM_ITE.FieldByName('ID_CONTROLE').AsInteger :=
    dmCtc.CTC_CD_M_SLM.FieldByName('ID_CONTROLE').AsInteger;
end;
procedure CtcValidaLocSlmIte(DataSet:TDataSet);
begin
  xMensErro:= '';
  if (dmCtc.CTC_CD_M_SLM_ITE.FieldByName('ID_ITEM').AsString=null) or
     (dmCtc.CTC_CD_M_SLM_ITE.FieldByName('ID_ITEM').AsString='') then
     begin
       xMensErro:= xMensErro + '.Item deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_SLM_ITE.FieldByName('QTDE').AsString=null) or
     (dmCtc.CTC_CD_M_SLM_ITE.FieldByName('QTDE').AsString='') then
     begin
       xMensErro:= xMensErro + '.Quantidade deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_SLM_ITE.FieldByName('OBSERVACAO').AsString=null) or
     (dmCtc.CTC_CD_M_SLM_ITE.FieldByName('OBSERVACAO').AsString='') then
     begin
       xMensErro:= xMensErro + '.Observação deve ser informada.'+ #13;
     end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
