unit CTC_RN_M_CEP;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcNovoCep(DataSet: TDataSet);
procedure CtcNovoCepEpi(DataSet:TDataSet);
procedure CtcValidaCep(DataSet:TDataSet);
procedure CtcValidaCepEpi(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc;
VAR
xMensErro:String;

procedure CtcNovoCep(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_CEP.FieldByName('ID_CEP').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_CEP');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_M_CEP.FieldByName('data').AsDateTime := xdatasis;

  dmGeral.BusCodigoRevListMestre(true,false,'CTC_TB_M_CEP',xCodLme,xRevLme,dmCtc.CTC_CD_M_CEP);
End;

procedure CtcNovoCepEpi(DataSet:TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_CEP_EPI.FieldByName('sequencia').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_CEP_EPI');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'CTC_TB_M_CEP_EPI',xCodLme,xRevLme,dmCtc.CTC_CD_M_CEP_EPI);
End;

procedure CtcValidaCep(DataSet:TDataSet);
Begin
xMensErro:='';
  if (dmCtc.CTC_CD_M_CEP.FieldByName('id_responsavel').AsString=null) or
     (dmCtc.CTC_CD_M_CEP.FieldByName('id_responsavel').AsString='') then
     begin
       xMensErro:= xMensErro + '.Funcionário deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_CEP.FieldByName('resp_tecnico').AsString=null) or
     (dmCtc.CTC_CD_M_CEP.FieldByName('resp_tecnico').AsString='') then
     begin
       xMensErro:= xMensErro + '.Responsavel Técnico deve ser informado.'+ #13;
     end;

  if Dataset.FieldByName('id_responsavel').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_FUN.Close;
       dmGeral.BUS_CD_C_FUN.Data :=
       dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_responsavel').asstring]));
       dmGeral.BUS_CD_C_FUN.Open;
       if (dmGeral.BUS_CD_C_FUN.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Responsavel não cadastrado.'+ #13;
          end;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
procedure CtcValidaCepEpi(DataSet:TDataSet);
Begin
xMensErro:='';
  if (dmCtc.CTC_CD_M_CEP_EPI.FieldByName('id_epi').AsString=null) or
     (dmCtc.CTC_CD_M_CEP_EPI.FieldByName('id_epi').AsString='') then
     begin
       xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_CEP_EPI.FieldByName('marca').AsString=null) or
     (dmCtc.CTC_CD_M_CEP_EPI.FieldByName('marca').AsString='') then
     begin
       xMensErro:= xMensErro + '.Marca deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_CEP_EPI.FieldByName('modelo').AsString=null) or
     (dmCtc.CTC_CD_M_CEP_EPI.FieldByName('modelo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Modelo deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_CEP_EPI.FieldByName('ca').AsString=null) or
     (dmCtc.CTC_CD_M_CEP_EPI.FieldByName('ca').AsString='') then
     begin
       xMensErro:= xMensErro + '.C.A deve ser informado.'+ #13;
     end;

  if Dataset.FieldByName('id_epi').asstring<>'' then
     begin
       dmgeral.BUS_CD_C_ITE.Close;
       dmgeral.BUS_CD_C_ITE.Data :=
       dmgeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([94, Dataset.FieldByName('id_epi').asstring]));
       dmgeral.BUS_CD_C_ITE.Open;
       if (dmgeral.BUS_CD_C_ITE.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Item não cadastrado.'+ #13;
          end;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
end.
