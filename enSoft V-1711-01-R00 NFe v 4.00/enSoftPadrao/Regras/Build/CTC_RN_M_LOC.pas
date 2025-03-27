unit CTC_RN_M_LOC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcNovoLoc(DataSet: TDataSet);
procedure CtcValidaLoc(DataSet:TDataSet);
procedure CtcNovoLocMeq(DataSet: TDataSet);
procedure CtcValidaLocMeq(DataSet:TDataSet);
procedure CtcMascaraLoc(DataSet:TDataSet);
procedure CtcMascaraLocMeq(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy,uDmCtc;
var
xMensErro:String;

procedure CtcNovoLoc(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_LOC.FieldByName('ID_LOC').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_LOC');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_M_LOC.FieldByName('dta_locacao').AsDateTime := xDataSis;
end;

procedure CtcValidaLoc(DataSet:TDataSet);
begin
  xMensErro:= '';
  if (dmCtc.CTC_CD_M_LOC.FieldByName('num_contrato').AsString=null) or
     (dmCtc.CTC_CD_M_LOC.FieldByName('num_contrato').AsString='') then
     begin
       xMensErro:= xMensErro + '.Contrato deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_LOC.FieldByName('num_documento').AsString=null) or
     (dmCtc.CTC_CD_M_LOC.FieldByName('num_documento').AsString='') then
     begin
       xMensErro:= xMensErro + '.Documento deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_LOC.FieldByName('id_obra').AsString=null) or
     (dmCtc.CTC_CD_M_LOC.FieldByName('id_obra').AsString='') then
     begin
       xMensErro:= xMensErro + '.Obra deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_LOC.FieldByName('id_fornecedor').AsString=null) or
     (dmCtc.CTC_CD_M_LOC.FieldByName('id_fornecedor').AsString='') then
     begin
       xMensErro:= xMensErro + '.Fornecedor deve ser informado.'+ #13;
     end;

  if Dataset.FieldByName('id_obra').asstring<>'' then
     begin
       dmCtc.BUS_CD_C_OBR.Close;
       dmCtc.BUS_CD_C_OBR.Data :=
       dmCtc.BUS_CD_C_OBR.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_obra').asstring, 'True']));
       dmCtc.BUS_CD_C_OBR.Open;
       if (dmCtc.BUS_CD_C_OBR.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Obra não cadastrada.'+ #13;
          end;
     end;

  if Dataset.FieldByName('id_fornecedor').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_FOR.Close;
       dmGeral.BUS_CD_C_FOR.Data :=
       dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_fornecedor').asstring]));
       dmGeral.BUS_CD_C_FOR.Open;
       if (dmGeral.BUS_CD_C_FOR.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Fornecedor não cadastrada.'+ #13;
          end;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcNovoLocMeq(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  {SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('ID_LOC').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_LOC');
  finally
    FreeAndNil(SMPrincipal);
  end;}
end;
procedure CtcValidaLocMeq(DataSet:TDataSet);
begin
  if (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('id_veiculo').AsString=null) or
     (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('id_veiculo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Veículo deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('qtde').AsString=null) or
     (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('qtde').AsString='') then
     begin
       xMensErro:= xMensErro + '.Quantidade deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('vlr_unitario').AsString=null) or
     (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('vlr_unitario').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor Unitário deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('dta_inicial').AsString=null) or
     (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('dta_inicial').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data Inicial deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('dta_final').AsString=null) or
     (dmCtc.CTC_CD_M_LOC_MEQ.FieldByName('dta_final').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data Final deve ser informada.'+ #13;
     end;

  if Dataset.FieldByName('id_veiculo').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_VEI.Close;
       dmGeral.BUS_CD_C_VEI.Data :=
       dmGeral.BUS_CD_C_VEI.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_veiculo').asstring]));
       dmGeral.BUS_CD_C_VEI.Open;
       if (dmGeral.BUS_CD_C_VEI.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Veículo não cadastrado.'+ #13;
          end;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcMascaraLoc(DataSet:TDataSet);
begin
  dmCtc.ctc_cd_m_locvlr_frete.DisplayFormat       :=CMascaraValor;
  dmCtc.ctc_cd_m_locvlr_desconto.DisplayFormat       :=CMascaraValor;
  dmCtc.ctc_cd_m_locvlr_total.DisplayFormat       :=CMascaraValor;
end;

procedure CtcMascaraLocMeq(DataSet:TDataSet);
begin
  dmCtc.ctc_cd_m_loc_meqvlr_unitario.DisplayFormat       :=CMascaraValor;
  dmCtc.ctc_cd_m_loc_meqtotal.DisplayFormat       :=CMascaraValor;
end;

end.
