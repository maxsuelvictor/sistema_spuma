unit FIN_RN_M_PRC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaPrc(DataSet:TDataSet);
procedure FinMascaraPrc(DataSet:TDataSet);
procedure FinNovoPrc(DataSet: TDataSet);
procedure FinDeletePrc(DataSet: TDataSet);
procedure FinEditaPrc(DataSet: TDataSet);

procedure FinValidaPrcDet(DataSet:TDataSet);
procedure FinMascaraPrcDet(DataSet:TDataSet);
procedure FinNovoPrcDet(DataSet: TDataSet);
procedure FinDeletePrcDet(DataSet: TDataSet);
procedure FinEditaPrcDet(DataSet: TDataSet);

procedure FinCalulaVlrTotPago;

implementation
Uses uDmGeral,enConstantes, uProxy, enFunc;



procedure FinDeletePrcDet(DataSet: TDataSet);
VAR
   mens:String;
begin
   mens :='';
   if (dmgeral.FIN_CD_M_PRC.State in [dsEdit]) and ((dmGeral.FIN_CD_M_PRC_DET.FieldBYName('ID_CONTA').AsString<>'') and
      (dmGeral.FIN_CD_M_PRC_DET.FieldBYName('ID_CONTA').AsInteger>0)) then
      begin
       dmGeral.BusContaCorr(0,dmGeral.FIN_CD_M_PRC_DET.FieldBYName('ID_CONTA').AsString);
       if dmGeral.BUS_CD_C_CTC.FieldByName('TIPO').AsInteger=0 then
        begin
          dmGeral.BUS_CD_M_CXA.Close;
          dmGeral.BUS_CD_M_CXA.Data :=
          dmGeral.BUS_CD_M_CXA.DataRequest(
                VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));  // Busca o caixa aberto para o funcionário especificado.

          if not dmGeral.BUS_CD_M_CXA.EOF then
            begin
            if dmGeral.BUS_CD_M_CXA.FieldByName('ID_CONTA').AsInteger <>
               dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_CONTA').AsInteger then
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
                VarArrayOf([106,dmGeral.CAD_CD_C_PAR.FieldBYName('ID_EMPRESA').AsString,
                                dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_PRC').AsString,
                                dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_SEQUENCIA').AsString]));


      if not dmGeral.BUS_CD_M_CTA_CXA.IsEmpty then
        begin
          if dmGeral.BUS_CD_M_CTA_CXA.FieldBYName('CONCILIADO').AsBoolean = true then
            begin
             mens :=mens+ 'Há registro movimentação de conta conciliado.'+#13+#10;
            end;
        end;
      end;

  if mens <> '' then
    begin
     ShowMessage(mens);
     abort;
    end;
end;


procedure FinEditaPrcDet(DataSet: TDataSet);
VAR
   mens:String;
begin
   mens :='';
   if (dmgeral.FIN_CD_M_PRC.State in [dsEdit]) and ((dmGeral.FIN_CD_M_PRC_DET.FieldBYName('ID_CONTA').AsString<>'') and
      (dmGeral.FIN_CD_M_PRC_DET.FieldBYName('ID_CONTA').AsInteger>0)) then
      begin
       dmGeral.BusContaCorr(0,dmGeral.FIN_CD_M_PRC_DET.FieldBYName('ID_CONTA').AsString);
       if dmGeral.BUS_CD_C_CTC.FieldByName('TIPO').AsInteger=0 then
        begin
          dmGeral.BUS_CD_M_CXA.Close;
          dmGeral.BUS_CD_M_CXA.Data :=
          dmGeral.BUS_CD_M_CXA.DataRequest(
                VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));  // Busca o caixa aberto para o funcionário especificado.

          if not dmGeral.BUS_CD_M_CXA.EOF then
            begin
            if dmGeral.BUS_CD_M_CXA.FieldByName('ID_CONTA').AsInteger <>
               dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_CONTA').AsInteger then
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
                VarArrayOf([106,dmGeral.CAD_CD_C_PAR.FieldBYName('ID_EMPRESA').AsString,
                                dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_PRC').AsString,
                                dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_SEQUENCIA').AsString]));


      if not dmGeral.BUS_CD_M_CTA_CXA.IsEmpty then
        begin
          if dmGeral.BUS_CD_M_CTA_CXA.FieldBYName('CONCILIADO').AsBoolean = true then
            begin
             mens :=mens+ 'Há registro movimentação de conta conciliado.'+#13+#10;
            end;
        end;
      end;

  if mens <> '' then
    begin
     ShowMessage(mens);
     abort;
    end;
end;


procedure FinCalulaVlrTotPago;
begin
  dmGeral.FIN_CD_M_PRC.FieldByName('VLR_TOTAL_PRC').AsCurrency :=
     Tenorth.Soma(dmGeral.FIN_CD_M_PRC_DET,'vlr_prestacao');
end;

procedure FinValidaPrc(DataSet:TDataSet);
var
  mens: String;
begin

   mens := '';


  if ((dmGeral.FIN_CD_M_PRC.FieldByName('ID_LMF').AsString = '') or
      (dmGeral.FIN_CD_M_PRC.FieldByName('ID_LMF').AsInteger = 0)) then
     begin
       mens := mens + '.Código de Lançamento do Movimento' + #13;
     end;


  if mens <> '' then
   begin
     raise Exception.Create(enConstantes.MensErro + #13 + mens);
   end;
end;

procedure FinMascaraPrc(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_PRCvlr_total_prc.DisplayFormat     := CMascaraValor;
  dmGeral.FIN_CD_M_PRCint_vlr_mov.DisplayFormat     := CMascaraValor;
  dmGeral.FIN_CD_M_PRCint_vlr_saldo.DisplayFormat     := CMascaraValor;
end;

procedure FinNovoPrc(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_PRC').AsInteger := dmGeral.BuscarSeq('FIN_TB_M_PRC');
  DataSet.FieldByName('id_empresa').AsInteger    := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  DataSet.FieldByName('dta_prestacao').AsDateTime    := xDataSis;
  DataSet.FieldByName('vlr_total_prc').AsCurrency := 0;
end;

procedure FinDeletePrc(DataSet: TDataSet);
VAR
   deletar:Boolean;
begin
   deletar :=true;
   dmGeral.FIN_CD_M_PRC_DET.First;
   while  (deletar=true) and (not dmGeral.FIN_CD_M_PRC_DET.EOF) do
     begin
       if ((dmGeral.FIN_CD_M_PRC_DET.FieldBYName('ID_CONTA').AsString<>'') and
          (dmGeral.FIN_CD_M_PRC_DET.FieldBYName('ID_CONTA').AsInteger>0)) then
          begin
             dmGeral.BusContaCorr(0,dmGeral.FIN_CD_M_PRC_DET.FieldBYName('ID_CONTA').AsString);
             if dmGeral.BUS_CD_C_CTC.FieldByName('TIPO').AsInteger=0 then
              begin
                dmGeral.BUS_CD_M_CXA.Close;
                dmGeral.BUS_CD_M_CXA.Data :=
                dmGeral.BUS_CD_M_CXA.DataRequest(
                      VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));  // Busca o caixa aberto para o funcionário especificado.

                if not dmGeral.BUS_CD_M_CXA.EOF then
                  begin
                  if dmGeral.BUS_CD_M_CXA.FieldByName('ID_CONTA').AsInteger <>
                     dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_CONTA').AsInteger then
                     begin
                        deletar:=false
                     end;
                  end
                else
                  begin
                      deletar:=false
                  end;
              end;


            dmGeral.BUS_CD_M_CTA_CXA.Close;
            dmGeral.BUS_CD_M_CTA_CXA.Data :=
            dmGeral.BUS_CD_M_CTA_CXA.DataRequest(
                      VarArrayOf([106,dmGeral.CAD_CD_C_PAR.FieldBYName('ID_EMPRESA').AsString,
                                      dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_PRC').AsString,
                                      dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_SEQUENCIA').AsString]));


            if not dmGeral.BUS_CD_M_CTA_CXA.IsEmpty then
              begin
                if dmGeral.BUS_CD_M_CTA_CXA.FieldBYName('CONCILIADO').AsBoolean = true then
                  begin
                   deletar:=false
                  end;
              end;
          end;
       dmGeral.FIN_CD_M_PRC_DET.Next;
      end;
  dmGeral.FIN_CD_M_PRC_DET.First;
  if deletar=false then
    begin
     ShowMessage('Exclusão não permitida, pois o caixa está fechado ou há registro movimentação de conta conciliado. ');
     abort;
    end;

end;

procedure FinEditaPrc(DataSet: TDataSet);
begin

end;


procedure FinValidaPrcDet(DataSet:TDataSet);
var
  mens: String;
begin

   mens := '';

   dmgeral.BusTipoFin(0,dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_FINANCEIRO').AsString);

   if ((dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_FINANCEIRO').AsString = '') or
      (dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_FINANCEIRO').AsInteger = 0)) then
     begin
       mens := mens + '.Tipo Financeiro' + #13;
     end;


   if not dmGeral.BUS_CD_C_TIF.EOF then
     begin
       if dmGeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsInteger = 0 then
         begin
           if ((dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_TITULO').AsString = '') or
              (dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_TITULO').AsInteger = 0)) then
             begin
               mens := mens + '.Tipo de Título' + #13;
             end;
         end;

       if dmGeral.BUS_CD_C_TIF.FieldByName('GERA_DEB_CRE').AsBoolean = true then
         begin
           if ((dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_FINANCEIRO_CP').AsString = '') or
              (dmGeral.FIN_CD_M_PRC_DET.FieldByName('ID_TIPO_FINANCEIRO_CP').AsInteger = 0)) then
             begin
               mens := mens + '.Tipo Financeiro C/ Partida' + #13;
             end;
         end;
     end;


  if TRIM(dmGeral.FIN_CD_M_PRC_DET.FieldByName('HISTORICO').AsString) = '' then
     begin
       mens := mens + '.Histórico' + #13;
     end;

  if (dmGeral.FIN_CD_M_PRC_DET.FieldByName('VLR_PRESTACAO').AsString = '') or
     (dmGeral.FIN_CD_M_PRC_DET.FieldByName('VLR_PRESTACAO').AsCurrency = 0) then
     begin
       mens := mens + '.Valor Prestação' + #13;
     end;


  if mens <> '' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + mens);
     end;
end;

procedure FinMascaraPrcDet(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_PRC_DETvlr_prestacao.DisplayFormat     := CMascaraValor;
end;


procedure FinNovoPrcDet(DataSet: TDataSet);
begin
   DataSet.FieldByName('ID_SEQUENCIA').AsInteger := 0;
   DataSet.FieldByName('vlr_prestacao').AsInteger := 0;
   DataSet.FieldByName('id_tipo_financeiro_cp').AsInteger := 0;
   DataSet.FieldByName('id_tipo_titulo').AsInteger := 0;
   DataSet.FieldByName('id_conta').AsInteger := 0;
end;




end.
