unit FIN_RN_M_LMF;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaLmf(DataSet:TDataSet);
procedure FinMascaraLmf(DataSet:TDataSet);
procedure FinNovoLmf(DataSet: TDataSet);
procedure FinDeleteLmf(DataSet: TDataSet);
procedure FinEditaLMf(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;


procedure FinValidaLmf(DataSet:TDataSet);
var
  mens: String;
begin

  mens := '';

   if dmGeral.FIN_CD_M_LMF.FieldByName('DTA_MOVIMENTO').AsString = '' then
     begin
       mens := mens + '.Data de Movimento' + #13;
     end;


   if dmGeral.FIN_CD_M_LMF.FieldByName('ID_FUNCIONARIO').AsString = '' then
     begin
       mens := mens + '.Funcionário' + #13;
     end;

   if dmGeral.FIN_CD_M_LMF.FieldByName('ID_PLANO').AsString = '' then
     begin
       mens := mens + '.Plano' + #13;
     end;

  if dmGeral.FIN_CD_M_LMF.FieldByName('ID_TIPO_FINANCEIRO').AsString = '' then
     begin
       mens := mens + '.Tipo Financeiro' + #13;
     end;



  if dmGeral.FIN_CD_M_LMF.FieldByName('ID_CONTA').AsString = '' then
     begin
       mens := mens + '.Conta' + #13;
     end;

  if TRIM(dmGeral.FIN_CD_M_LMF.FieldByName('HISTORICO').AsString) = '' then
     begin
       mens := mens + '.Histórico' + #13;
     end;

  if (dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsString = '') or
     (dmGeral.FIN_CD_M_LMF.FieldByName('VLR_MOVIMENTO').AsCurrency = 0) then
     begin
       mens := mens + '.Valor Lançamento' + #13;
     end;


  if mens <> '' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + mens);
     end;
end;

procedure FinMascaraLmf(DataSet:TDataSet);
begin
   dmGeral.FIN_CD_M_LMFvlr_movimento.DisplayFormat := CMascaraValor;
   dmGeral.FIN_CD_M_LMFvlr_saldo.DisplayFormat     := CMascaraValor;
end;

procedure FinNovoLmf(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_LMF').AsInteger := dmGeral.BuscarSeq('FIN_TB_M_LMF');
  DataSet.FieldByName('id_empresa').AsInteger    := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  DataSet.FieldByName('STATUS').AsInteger := 0;
  DataSet.FieldByName('dta_movimento').AsDateTime    := xDataSis;

  DataSet.FieldByName('vlr_movimento').AsCurrency := 0;
  DataSet.FieldByName('vlr_saldo').AsCurrency := 0;
  DataSet.FieldByName('vlr_pago').AsCurrency := 0;
  DataSet.FieldByName('ID_OBRA').AsInteger := 0;

end;

procedure FinDeleteLmf(DataSet: TDataSet);
var
  mens:String;
begin
  mens := '';

  if  dmGeral.FIN_CD_M_LMF.FieldByName('STATUS').AsInteger <>0 then
    begin
      dmGeral.BUS_CD_M_PRC.Close;
      dmGeral.BUS_CD_M_PRC.Data :=
      dmGeral.BUS_CD_M_PRC.DataRequest(
          VarArrayOf([2,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                  dmGeral.FIN_CD_M_LMF.FieldByName('ID_LMF').AsString]));
      if not dmGeral.BUS_CD_M_PRC.eof then
        begin
          if dmGeral.FIN_CD_M_LMF.FieldByName('STATUS').AsInteger = 1 then
            begin
             mens :=  mens+ 'Movimento está em andamento na prestação de contas.'+#13+#10;
            end;
          if dmGeral.FIN_CD_M_LMF.FieldByName('STATUS').AsInteger = 2 then
            begin
             mens := mens+ 'Movimento está encerrado na prestação de contas.'+#13+#10;
            end;
        end;
    end;

   dmGeral.BusContaCorr(0,dmGeral.FIN_CD_M_LMF.FieldBYName('ID_CONTA').AsString);
  if dmGeral.BUS_CD_C_CTC.FieldByName('TIPO').AsInteger=0 then
    begin
      dmGeral.BUS_CD_M_CXA.Close;
      dmGeral.BUS_CD_M_CXA.Data :=
      dmGeral.BUS_CD_M_CXA.DataRequest(
            VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));  // Busca o caixa aberto para o funcionário especificado.

      if not dmGeral.BUS_CD_M_CXA.EOF then
        begin
        if dmGeral.BUS_CD_M_CXA.FieldByName('ID_CONTA').AsInteger <>
           dmGeral.FIN_CD_M_LMF.FieldByName('ID_CONTA').AsInteger then
           begin
             mens := mens + 'A conta do caixa é diferente da conta do lançamento do movimento.'+#13+#10;
           end;
        end
      else
        begin
           mens := mens + 'O caixa está fechado.'+#13+#10;
        end;
    end;



  dmGeral.BUS_CD_M_CTA_CXA.Close;
  dmGeral.BUS_CD_M_CTA_CXA.Data :=
  dmGeral.BUS_CD_M_CTA_CXA.DataRequest(
            VarArrayOf([105,dmGeral.CAD_CD_C_PAR.FieldBYName('ID_EMPRESA').AsString,
                            dmGeral.FIN_CD_M_LMF.FieldByName('ID_LMF').AsString]));


  if not dmGeral.BUS_CD_M_CTA_CXA.IsEmpty then
    begin
      if dmGeral.BUS_CD_M_CTA_CXA.FieldBYName('CONCILIADO').AsBoolean = true then
        begin
         mens :=  mens+ 'Há registro movimentação de conta conciliado.'+#13+#10;
        end;
    end;

  if mens <> '' then
    begin
     ShowMessage(mens);
     abort;
    end;
end;

procedure FinEditaLMf(DataSet: TDataSet);
var
  mens:String;
begin
  mens := '';

  if  dmGeral.FIN_CD_M_LMF.FieldByName('STATUS').AsInteger <>0 then
    begin
      dmGeral.BUS_CD_M_PRC.Close;
      dmGeral.BUS_CD_M_PRC.Data :=
      dmGeral.BUS_CD_M_PRC.DataRequest(
          VarArrayOf([2,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                  dmGeral.FIN_CD_M_LMF.FieldByName('ID_LMF').AsString]));
      if not dmGeral.BUS_CD_M_PRC.IsEmpty then
        begin
          if dmGeral.FIN_CD_M_LMF.FieldByName('STATUS').AsInteger = 1 then
            begin
             mens :=  mens+ 'Movimento está em andamento na prestação de contas.'+#13+#10;
            end;
          if dmGeral.FIN_CD_M_LMF.FieldByName('STATUS').AsInteger = 2 then
            begin
             mens := mens+ 'Movimento está encerrado na prestação de contas.'+#13+#10;
            end;
        end;
    end;

  dmGeral.BusContaCorr(0,dmGeral.FIN_CD_M_LMF.FieldBYName('ID_CONTA').AsString);
  if dmGeral.BUS_CD_C_CTC.FieldByName('TIPO').AsInteger=0 then
    begin
      dmGeral.BUS_CD_M_CXA.Close;
      dmGeral.BUS_CD_M_CXA.Data :=
      dmGeral.BUS_CD_M_CXA.DataRequest(
            VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));  // Busca o caixa aberto para o funcionário especificado.

      if not dmGeral.BUS_CD_M_CXA.IsEmpty then
        begin
        if dmGeral.BUS_CD_M_CXA.FieldByName('ID_CONTA').AsInteger <>
           dmGeral.FIN_CD_M_LMF.FieldByName('ID_CONTA').AsInteger then
           begin
             mens := mens + 'A conta do caixa é diferente da conta do lançamento do movimento.'+#13+#10;
           end;
        end
      else
        begin
           mens := mens + 'O caixa está fechado.'+#13+#10;
        end;
    end;




  dmGeral.BUS_CD_M_CTA_CXA.Close;
  dmGeral.BUS_CD_M_CTA_CXA.Data :=
  dmGeral.BUS_CD_M_CTA_CXA.DataRequest(
            VarArrayOf([105,dmGeral.CAD_CD_C_PAR.FieldBYName('ID_EMPRESA').AsString,
                            dmGeral.FIN_CD_M_LMF.FieldByName('ID_LMF').AsString]));


  if not dmGeral.BUS_CD_M_CTA_CXA.IsEmpty then
    begin
      if dmGeral.BUS_CD_M_CTA_CXA.FieldBYName('CONCILIADO').AsBoolean = true then
        begin
         mens :=mens+ 'Há registro movimentação de conta conciliado.'+#13+#10;
        end;
    end;

  if mens <> '' then
    begin
     ShowMessage(mens);
     abort;
    end;

end;




end.
