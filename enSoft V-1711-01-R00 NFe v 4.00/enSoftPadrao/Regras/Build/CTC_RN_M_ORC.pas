unit CTC_RN_M_ORC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcNovoOrc(DataSet: TDataSet);
procedure CtcNovoOrcIte(DataSet: TDataSet);
procedure CtcValidaOrc(DataSet:TDataSet);
procedure CtcValidaOrcIte(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc;
VAR
xMensErro:String;

procedure CtcNovoOrc(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_ORC.FieldByName('ID_ORC').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_ORC');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'CTC_FM_M_ORC',xCodLme,xRevLme,dmCtc.CTC_CD_M_ORC);
end;

procedure CtcNovoOrcIte(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_ORC_ITE.FieldByName('id_sequencia').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_ORC_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'CTC_TB_M_ORC_ITE',xCodLme,xRevLme,dmCtc.CTC_CD_M_ORC_ITE);
End;

procedure CtcValidaOrc(DataSet:TDataSet);
begin
xMensErro:='';
  if (dmCtc.CTC_CD_M_ORC.FieldByName('id_obra').AsString=null) or
     (dmCtc.CTC_CD_M_ORC.FieldByName('id_obra').AsString='') then
     begin
       xMensErro:= xMensErro + '.Obra deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_ORC.FieldByName('dta_orc').AsString=null) or
     (dmCtc.CTC_CD_M_ORC.FieldByName('dta_orc').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data deve ser informado.'+ #13;
     end;
  if Dataset.FieldByName('id_obra').asstring<>'' then
     begin
       dmCtc.BUS_CD_C_OBR.Close;
       dmCtc.BUS_CD_C_OBR.Data :=
       dmCtc.BUS_CD_C_OBR.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_obra').asstring]));
       dmCtc.BUS_CD_C_OBR.Open;
       if (dmCtc.BUS_CD_C_OBR.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Obra não cadastrado.'+ #13;
          end;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
procedure CtcValidaOrcIte(DataSet:TDataSet);
begin
xMensErro:='';
  if (dmCtc.CTC_CD_M_ORC_ITE.FieldByName('id_item').AsString=null) or
     (dmCtc.CTC_CD_M_ORC_ITE.FieldByName('id_item').AsString='') then
     begin
       xMensErro:= xMensErro + '.Item deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_ORC_ITE.FieldByName('qtde').AsString=null) or
     (dmCtc.CTC_CD_M_ORC_ITE.FieldByName('qtde').AsString='') then
     begin
       xMensErro:= xMensErro + '.Quantidade deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_unitario').AsString=null) or
     (dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_unitario').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor Unitário deve ser informado.'+ #13;
     end;

  if Dataset.FieldByName('id_item').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_ITE.Close;
       dmGeral.BUS_CD_C_ITE.Data :=
       dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_item').asstring]));
       dmGeral.BUS_CD_C_ITE.Open;
       if (dmGeral.BUS_CD_C_ITE.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Item não cadastrado.'+ #13;
          end;
     end;
   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
end.
