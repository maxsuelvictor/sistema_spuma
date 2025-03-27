unit FIN_RN_M_CXA;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaCxa(DataSet:TDataSet);
procedure FinMascaraCxa(DataSet:TDataSet);
procedure FinNovoCxa(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;

procedure FinValidaCxa(DataSet:TDataSet);
Var
xMensErro:string;
begin

  if (dmGeral.FIN_CD_M_CXA.FieldByName('id_conta').AsString=null) or
     (dmGeral.FIN_CD_M_CXA.FieldByName('id_conta').AsString='') then
     begin
       xMensErro:= xMensErro + '.Conta deve ser informada.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_CXA.State in [dsInsert]) then
     begin
       dmGeral.BUS_CD_M_CXA.Close;
       dmGeral.BUS_CD_M_CXA.Data :=
       dmGeral.BUS_CD_M_CXA.DataRequest(
               VarArrayOf([91, IntToStr(xFuncionario),
                               dmGeral.FIN_CD_M_CXA.FieldByName('id_conta').AsInteger,
                               dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime,
                               dmGeral.FIN_CD_M_CXA.FieldByName('id_empresa').AsInteger ]));
       if not dmGeral.BUS_CD_M_CXA.IsEmpty then
          begin
            xMensErro:= xMensErro + '.ja existe um caixa para este usuario.'+ #13;
          end;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

procedure FinMascaraCxa(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_CXAvlr_suprimento.DisplayFormat:=CMascaraValor;
end;

procedure FinNovoCxa(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_CXA.fieldByName('id_abertura').AsInteger:=
      SMPrincipal.enValorChave('FIN_TB_M_CXA');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FIN_CD_M_CXA.FieldByName('id_empresa').AsInteger      :=
          dmgeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger;
  dmGeral.FIN_CD_M_CXA.FieldByName('id_funcionario').AsInteger  := xFuncionario;
  dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime   := xDataSis;
  dmGeral.FIN_CD_M_CXA.FieldByName('status').AsInteger          := 0;
  dmGeral.FIN_CD_M_CXA.FieldByName('vlr_suprimento').AsCurrency := 0;

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));

  dmGeral.FIN_CD_M_CXA.FieldByName('int_nomefun').AsString:=
          dmGeral.BUS_CD_C_FUN.FieldByName('Nome').AsString;

  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(
          VarArrayOf([1, IntToStr(dmGeral.FIN_CD_M_CXA.FieldByName('id_empresa').AsInteger)]));

  dmGeral.FIN_CD_M_CXA.FieldByName('int_nomepar').AsString:=
          dmGeral.BUS_CD_C_PAR.FieldByName('emp_razao').AsString;

  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_CXA',xCodLme,xRevLme,dmGeral.FIN_CD_M_CXA);

end;

end.
