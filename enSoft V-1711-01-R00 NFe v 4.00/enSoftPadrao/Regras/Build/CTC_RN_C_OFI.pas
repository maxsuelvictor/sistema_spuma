unit CTC_RN_C_OFI;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcNovoOfi(DataSet: TDataSet);
procedure CtcNovoOfiIte(DataSet:TDataSet);
procedure CtcValidaOfi(DataSet:TDataSet);
procedure CtcValidaOfiIte(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc;
var
xMensErro:String;

procedure CtcNovoOfi(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_OFI.FieldByName('ID_OFI').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_OFI');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_M_OFI.FieldByName('data').AsDateTime := xDataSis;
end;

procedure CtcNovoOfiIte(DataSet:TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_OFI_ITE.FieldByName('sequencia').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_OFI_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure CtcValidaOfi(DataSet:TDataSet);
begin
  xMensErro:='';

  if (dmCtc.CTC_CD_M_OFI.FieldByName('id_veiculo').AsString=null) or
     (dmCtc.CTC_CD_M_OFI.FieldByName('id_veiculo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Veículo deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_OFI.FieldByName('km_veiculo').AsString=null) or
     (dmCtc.CTC_CD_M_OFI.FieldByName('km_veiculo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Kilometragem deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_OFI.FieldByName('id_fornecedor').AsString=null) or
     (dmCtc.CTC_CD_M_OFI.FieldByName('id_fornecedor').AsString='') then
     begin
       xMensErro:= xMensErro + '.Fornecedor deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_OFI.FieldByName('problema').AsString=null) or
     (dmCtc.CTC_CD_M_OFI.FieldByName('problema').AsString='') then
     begin
       xMensErro:= xMensErro + '.Problema deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_OFI.FieldByName('id_solicitante').AsString=null) or
     (dmCtc.CTC_CD_M_OFI.FieldByName('id_solicitante').AsString='') then
     begin
       xMensErro:= xMensErro + '.Solicitante deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_OFI.FieldByName('observacao').AsString=null) or
     (dmCtc.CTC_CD_M_OFI.FieldByName('observacao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Observação deve ser informada.'+ #13;
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

  if Dataset.FieldByName('id_solicitante').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_FUN.Close;
       dmGeral.BUS_CD_C_FUN.Data :=
       dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_solicitante').asstring]));
       dmGeral.BUS_CD_C_FUN.Open;
       if (dmGeral.BUS_CD_C_FUN.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Solicitante não cadastrado.'+ #13;
          end;
       end;
  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CtcValidaOfiIte(DataSet:TDataSet);
begin
xMensErro:='';

  if (dmCtc.CTC_CD_M_OFI_ITE.FieldByName('descricao').AsString=null) or
     (dmCtc.CTC_CD_M_OFI_ITE.FieldByName('descricao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Descrição deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_OFI_ITE.FieldByName('qtde').AsString=null) or
     (dmCtc.CTC_CD_M_OFI_ITE.FieldByName('qtde').AsString='') then
     begin
       xMensErro:= xMensErro + '.Quantidade deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_OFI_ITE.FieldByName('vlr_unitario').AsString=null) or
     (dmCtc.CTC_CD_M_OFI_ITE.FieldByName('vlr_unitario').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor Unitário deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_OFI_ITE.FieldByName('vlr_total').AsString=null) or
     (dmCtc.CTC_CD_M_OFI_ITE.FieldByName('vlr_total').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor Total deve ser informado.'+ #13;
     end;

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
