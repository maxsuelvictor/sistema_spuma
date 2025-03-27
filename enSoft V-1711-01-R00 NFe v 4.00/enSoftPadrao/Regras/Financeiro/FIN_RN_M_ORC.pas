unit FIN_RN_M_ORC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;
procedure FinNovoOrcamento(DataSet: TDataSet);
procedure FinValidaOrcamento(DataSet:TDataSet);
procedure FinValidaOrcamentoPlc(DataSet:TDataSet);
procedure FinMascaraOrcamento;
procedure FinMascaraOrcamentoPlc;
procedure CalTotal;
procedure CalcOrcametario;
implementation
Uses uDmGeral,enConstantes, uProxy;

procedure FinNovoOrcamento(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_ORC.FieldByName('ID_ORC').AsInteger :=
         SMPrincipal.enValorChave('FIN_TB_M_ORC');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.FIN_CD_M_ORC.FieldByName('VLR_ORCAMENTO').AsCurrency := 0;
end;
procedure FinValidaOrcamento(DataSet:TDataSet);
Var
xMensErro:string;
begin
  xMensErro:='';

  if ((dmgeral.FIN_CD_M_ORC.FieldByName('ANO').IsNull) or
     (dmgeral.FIN_CD_M_ORC.FieldByName('ANO').AsString = '')) then
     begin
       xMensErro:= xMensErro + '.Ano deve ser informado.'+ #13;
     end;

  if ((dmgeral.FIN_CD_M_ORC.FieldByName('ID_EMPRESA').IsNull) or
     (dmgeral.FIN_CD_M_ORC.FieldByName('ID_EMPRESA').AsString = '')) then
     begin
       xMensErro:= xMensErro + '.Filial deve ser informado.'+ #13;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;
procedure FinValidaOrcamentoPlc(DataSet:TDataSet);
begin
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JAN').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JAN').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_FEV').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_FEV').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_MAR').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_MAR').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_ABR').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_ABR').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_MAI').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_MAI').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JUN').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JUN').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JUL').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_JUL').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_AGO').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_AGO').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_SET').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_SET').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_OUT').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_OUT').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_NOV').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_NOV').AsCurrency := 0;
    end;
  if (dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_DEZ').AsString = '') then
    begin
      dmGeral.FIN_CD_M_ORC_PLC.FieldByName('PREV_DEZ').AsCurrency := 0;
    end;

  CalTotal;
end;
procedure CalTotal;
begin
  dmgeral.FIN_CD_M_ORC_PLCprev_total.AsFloat :=  dmgeral.FIN_CD_M_ORC_PLCprev_jan.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_fev.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_mar.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_abr.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_mai.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_jun.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_jul.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_ago.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_set.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_out.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_nov.AsFloat +
                                                 dmgeral.FIN_CD_M_ORC_PLCprev_dez.AsFloat;
end;

procedure CalcOrcametario;
var
ValorOrc: Currency;
begin
  ValorOrc := 0;
  dmgeral.FIN_CD_M_ORC_PLC.First;
  while not dmgeral.FIN_CD_M_ORC_PLC.Eof do
    begin
      ValorOrc := ValorOrc + dmgeral.FIN_CD_M_ORC_PLCprev_total.AsCurrency;
      dmgeral.FIN_CD_M_ORC_PLC.Next;
    end;

  dmgeral.FIN_CD_M_ORCvlr_orcamento.AsCurrency := ValorOrc;
end;

procedure FinMascaraOrcamento;
begin
  dmgeral.FIN_CD_M_ORCvlr_orcamento.DisplayFormat := CMascaraValor;
end;


procedure FinMascaraOrcamentoPlc;
begin
  dmgeral.FIN_CD_M_ORC_PLCprev_jan.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_fev.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_mar.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_abr.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_mai.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_jun.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_jul.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_ago.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_set.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_out.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_nov.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_dez.DisplayFormat   := CMascaraValor;
  dmgeral.FIN_CD_M_ORC_PLCprev_total.DisplayFormat := CMascaraValor;
end;

end.
