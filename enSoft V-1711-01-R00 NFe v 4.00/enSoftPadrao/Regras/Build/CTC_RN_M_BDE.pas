unit CTC_RN_M_BDE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcNovoBde(DataSet: TDataSet);
procedure CtcNovoBdeOco(DataSet: TDataSet);
procedure CtcValidaBde(DataSet:TDataSet);
procedure CtcValidaBdeOco(DataSet:TDataSet);
procedure CtcMascaraBde(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy,uDmCtc;

VAR
xMensErro:String;

procedure CtcNovoBde(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_BDE.FieldByName('ID_BDE').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_BDE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_M_BDE.FieldByName('dta_bde').AsDateTime := xDataSis;
end;

procedure CtcNovoBdeOco(DataSet: TDataSet);
begin
  dmCtc.CTC_CD_M_BDE_OCO.FieldByName('id_bde').AsInteger :=
    dmCtc.CTC_CD_M_BDE.FieldByName('id_bde').AsInteger;
end;

procedure CtcValidaBde(DataSet:TDataSet);
begin
  xMensErro:='';

  if (dmCtc.CTC_CD_M_BDE.FieldByName('nro_bde').AsString=null) or
     (dmCtc.CTC_CD_M_BDE.FieldByName('nro_bde').AsString='') then
     begin
       xMensErro:= xMensErro + '.Numero do Boletim deve ser informado.'+ #13;
     end;
  if (dmCtc.CTC_CD_M_BDE.FieldByName('id_cliente').AsString=null) or
     (dmCtc.CTC_CD_M_BDE.FieldByName('id_cliente').AsString='') then
     begin
       xMensErro:= xMensErro + '.Cliente deve ser informada.'+ #13;
     end;
  if (dmCtc.CTC_CD_M_BDE.FieldByName('id_obra').AsString=null) or
     (dmCtc.CTC_CD_M_BDE.FieldByName('id_obra').AsString='') then
     begin
       xMensErro:= xMensErro + '.Obra deve ser informada.'+ #13;
     end;
  if (dmCtc.CTC_CD_M_BDE.FieldByName('id_meq').AsString=null) or
     (dmCtc.CTC_CD_M_BDE.FieldByName('id_meq').AsString='') then
     begin
       xMensErro:= xMensErro + '.Equipamento deve ser informada.'+ #13;
     end;
  if (dmCtc.CTC_CD_M_BDE.FieldByName('id_operador').AsString=null) or
     (dmCtc.CTC_CD_M_BDE.FieldByName('id_operador').AsString='') then
     begin
       xMensErro:= xMensErro + '.Operador deve ser informada.'+ #13;
     end;

  if Dataset.FieldByName('id_cliente').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_cliente').asstring]));
       dmGeral.BUS_CD_C_CLI.Open;
       if (dmGeral.BUS_CD_C_CLI.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Cliente não cadastrado.'+ #13;
          end;
     end;

  if Dataset.FieldByName('id_obra').asstring<>'' then
     begin
       dmCtc.BUS_CD_C_OBR.Close;
       dmCtc.BUS_CD_C_OBR.Data :=
       dmCtc.BUS_CD_C_OBR.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_obra').asstring,'True']));
       dmCtc.BUS_CD_C_OBR.Open;
       if (dmCtc.BUS_CD_C_OBR.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Obra não cadastrado.'+ #13;
          end;
     end;

  if Dataset.FieldByName('id_meq').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_MEQ.Close;
       dmGeral.BUS_CD_C_MEQ.Data :=
       dmGeral.BUS_CD_C_MEQ.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_meq').asstring]));
       dmGeral.BUS_CD_C_MEQ.Open;
       if (dmGeral.BUS_CD_C_MEQ.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Equipamento não cadastrado.'+ #13;
          end;
     end;

  if Dataset.FieldByName('id_operador').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_FUN.Close;
       dmGeral.BUS_CD_C_FUN.Data :=
       dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_operador').asstring]));
       dmGeral.BUS_CD_C_FUN.Open;
       if (dmGeral.BUS_CD_C_FUN.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Operador não cadastrado.'+ #13;
          end;
     end;


   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcValidaBdeOco(DataSet:TDataSet);
begin
  xMensErro:='';
  if (dmCtc.CTC_CD_M_BDE_OCO.FieldByName('id_ocorrencia').AsString=null) or
     (dmCtc.CTC_CD_M_BDE_OCO.FieldByName('id_ocorrencia').AsString='') then
     begin
       xMensErro:= xMensErro + '.Ocorrencia deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_BDE_OCO.FieldByName('qtde').AsString=null) or
     (dmCtc.CTC_CD_M_BDE_OCO.FieldByName('qtde').AsString='') then
     begin
       xMensErro:= xMensErro + '.Quantidade deve ser informada.'+ #13;
     end;

  if Dataset.FieldByName('id_ocorrencia').asstring<>'' then
     begin
       dmCtc.BUS_CD_C_OCO.Close;
       dmCtc.BUS_CD_C_OCO.Data :=
       dmCtc.BUS_CD_C_OCO.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_ocorrencia').asstring]));
       dmCtc.BUS_CD_C_OCO.Open;
       if (dmCtc.BUS_CD_C_OCO.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Ocorrencia não cadastrada.'+ #13;
          end;
     end;
  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcMascaraBde(DataSet:TDataSet);
begin
  dmCtc.ctc_cd_m_bdevlr_desconto.DisplayFormat    :=CMascaraValor;
  dmCtc.ctc_cd_m_bdevlr_acrescimo.DisplayFormat   :=CMascaraValor;
  dmCtc.ctc_cd_m_bdevlr_servicos.DisplayFormat    :=CMascaraValor;
  dmCtc.ctc_cd_m_bdevlr_comissao.DisplayFormat    :=CMascaraValor;
  dmCtc.ctc_cd_m_bdevlr_combustivel.DisplayFormat :=CMascaraValor;
  dmCtc.ctc_cd_m_bdevlr_bruto.DisplayFormat       :=CMascaraValor;
end;

end.
