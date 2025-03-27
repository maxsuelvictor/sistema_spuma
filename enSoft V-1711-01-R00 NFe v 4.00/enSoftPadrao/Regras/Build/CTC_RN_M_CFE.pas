unit CTC_RN_M_CFE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcNovoCfe(DataSet: TDataSet);
procedure CtcValidaCfe(DataSet:TDataSet);
procedure CtcNovoCfeFer(DataSet: TDataSet);
procedure CtcValidaCfeFer(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc;
var
xMensErro:String;

procedure CtcNovoCfe(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_CFE.FieldByName('ID_CFE').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_CFE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_M_CFE.FieldByName('data').AsDateTime := xDataSis;

  dmGeral.BusCodigoRevListMestre(true,false,'CTC_TB_M_CFE',xCodLme,xRevLme,dmCtc.CTC_CD_M_CFE);
end;

procedure CtcValidaCfe(DataSet:TDataSet);
begin
xMensErro:='';


  if (dmCtc.CTC_CD_M_CFE.FieldByName('id_funcionario').AsString=null) or
     (dmCtc.CTC_CD_M_CFE.FieldByName('id_funcionario').AsString='') then
     begin
       xMensErro:= xMensErro + '.Funcionário deve ser informado.'+ #13;
     end;

  if Dataset.FieldByName('id_funcionario').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_FUN.Close;
       dmGeral.BUS_CD_C_FUN.Data :=
       dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_funcionario').asstring]));
       dmGeral.BUS_CD_C_FUN.Open;
       if (dmGeral.BUS_CD_C_FUN.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Funcionário não cadastrado.'+ #13;
          end;
      end;
  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
procedure CtcNovoCfeFer(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  {SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_CFE_FER.FieldByName('ID_MEQ').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_CFE_FER');
  finally
    FreeAndNil(SMPrincipal);
  end; }
  end;
procedure CtcValidaCfeFer(DataSet:TDataSet);
begin
xMensErro:='';

  if (dmCtc.CTC_CD_M_CFE_FER.FieldByName('id_meq').AsString=null) or
     (dmCtc.CTC_CD_M_CFE_FER.FieldByName('id_meq').AsString='') then
     begin
       xMensErro:= xMensErro + '.Equipamento deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_CFE_FER.FieldByName('qtde').AsString=null) or
     (dmCtc.CTC_CD_M_CFE_FER.FieldByName('qtde').AsString='') then
     begin
       xMensErro:= xMensErro + '.Quantidade deve ser informada.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_CFE_FER.FieldByName('vlr_unitario').AsString=null) or
     (dmCtc.CTC_CD_M_CFE_FER.FieldByName('vlr_unitario').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor Unitário deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_CFE_FER.FieldByName('vlr_total').AsString=null) or
     (dmCtc.CTC_CD_M_CFE_FER.FieldByName('vlr_total').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor Total deve ser informado.'+ #13;
     end;

  if (dmCtc.CTC_CD_M_CFE_FER.FieldByName('dta_devolucao').AsString=null) or
     (dmCtc.CTC_CD_M_CFE_FER.FieldByName('dta_devolucao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data de Devolução deve ser informado.'+ #13;
     end;

  if Dataset.FieldByName('id_meq').asstring<>'' then
     begin
       dmGeral.BUS_CD_C_ITE.Close;
       dmGeral.BUS_CD_C_ITE.Data :=
       dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, Dataset.FieldByName('id_meq').asstring]));
       dmGeral.BUS_CD_C_ITE.Open;
       if (dmGeral.BUS_CD_C_ITE.IsEmpty) then
          begin
            xMensErro:= xMensErro + '.Equipamento não cadastrado.'+ #13;
          end;
      end;
  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
end.
