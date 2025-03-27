unit FIN_RN_M_BRD;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,enFunc;


procedure finNovoBrd;
procedure FinMascaraBrdTit;
procedure FinPermiteAltBrd;

procedure finBrdCalcTotalTitulo;

procedure FinNovoBrdTit;
procedure FinValidaBrdTit;
procedure FIN_CD_M_BRD_TITvlr_jurosChange;
procedure FIN_RN_M_BRD_TITvlr_multaChange;

procedure FIN_CD_M_BRD_TITper_descontoChange;
procedure FIN_CD_M_BRD_TITvlr_descontoChange;

procedure FinOutrasValRrd;





implementation
Uses uDmGeral,enConstantes, uProxy, FIN_UN_M_BRD;


procedure FIN_CD_M_BRD_TITvlr_jurosChange;
begin
  finBrdCalcTotalTitulo;
end;

procedure FIN_RN_M_BRD_TITvlr_multaChange;
begin
  finBrdCalcTotalTitulo;
end;

procedure finBrdCalcTotalTitulo;
begin
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_a_pagar').AsCurrency  :=
    FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency -
     FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_desconto').AsCurrency +
      FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_juros').AsCurrency +
        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_multa').AsCurrency;


  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_RESTANTE').AsCurrency:=
    RoundTo( (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_A_PAGAR').AsCurrency-
      FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_pagamento').AsCurrency),-2);
end;


procedure FIN_CD_M_BRD_TITper_descontoChange;
begin
  if FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('PER_DESCONTO').AsCurrency > 0 then
      begin
        if FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_TITULO').AsCurrency > 0 then
           begin
              FIN_FM_M_BRD.FIN_CD_M_BRD_TITVLR_DESCONTO.OnChange := nil;
              FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTO.OnChange := nil;

              FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_DESCONTO').AsCurrency :=
                 (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_TITULO').AsCurrency *
                  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('PER_DESCONTO').AsCurrency) / 100;
              FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('PER_DESCONTO').AsCurrency :=
                 (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_TITULO').AsCurrency;

              FIN_FM_M_BRD.FIN_CD_M_BRD_TITVLR_DESCONTO.OnChange := FIN_FM_M_BRD.FIN_CD_M_BRD_TITVLR_DESCONTOChange;
              FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTO.OnChange := FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTOChange;
           end;
      end
   else
      begin
        FIN_FM_M_BRD.FIN_CD_M_BRD_TITVLR_DESCONTO.OnChange := nil;
        FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTO.OnChange := nil;

        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('PER_DESCONTO').AsCurrency := 0;
        FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_DESCONTO').AsCurrency := 0;

        FIN_FM_M_BRD.FIN_CD_M_BRD_TITVLR_DESCONTO.OnChange := FIN_FM_M_BRD.FIN_CD_M_BRD_TITVLR_DESCONTOChange;
        FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTO.OnChange := FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTOChange;
      end;
  finBrdCalcTotalTitulo;
end;

procedure FIN_CD_M_BRD_TITvlr_descontoChange;
begin
  if FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
     begin
       if FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_TITULO').AsCurrency > 0 then
          begin
             FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTO.OnChange := nil;

             FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('PER_DESCONTO').AsCurrency :=
                   (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                    FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_TITULO').AsCurrency;

             FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTO.OnChange := FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTOChange;
          end;
     end
  else
     begin
       FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTO.OnChange := nil;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TITVLR_DESCONTO.OnChange := nil;

       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('PER_DESCONTO').AsCurrency := 0;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_DESCONTO').AsCurrency := 0;

       FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTO.OnChange := FIN_FM_M_BRD.FIN_CD_M_BRD_TITPER_DESCONTOChange;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TITVLR_DESCONTO.OnChange := FIN_FM_M_BRD.FIN_CD_M_BRD_TITVLR_DESCONTOChange;
     end;
  finBrdCalcTotalTitulo;
end;

procedure FinOutrasValRrd;
var
  xMensErro,codTit: String;
  TotPgtoTit,TotPgtoNovoTit:currency;
begin
  xMensErro := '';

  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.cancel;
  if FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.IsEmpty then
     begin
       xMensErro := xMensErro + 'Nenhum título foi inserido na baixa' + #13;
     end;

  codTit := '';
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.First;
  while not FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.eof do
    begin
      if (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_pagamento').IsNull) or
         (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_pagamento').AsCurrency=0) then
         begin
           if codTit='' then
             codTit := FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').AsString
           else
             codTit := codTit+','+FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').AsString;


         end;
      FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.Next
    end;


  if codTit <> '' then
    begin
       xMensErro:= xMensErro + '.Valor de pagamento deve ser informado no seguintes titulos: '+codTit+ #13;
    end;



  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
       abort;
     end;
end;

procedure finNovoBrd;
var
  SMPrincipal: TSMClient;
begin

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  try
    FIN_FM_M_BRD.FIN_CD_M_BRD.fieldByName('id_brd').AsInteger:=
      SMPrincipal.enValorChave('FIN_TB_M_BRD');

    FIN_FM_M_BRD.FIN_CD_M_BRD.fieldByName('hor_criacao').AsDateTime :=
                 SMPrincipal.enHoraServer;
  finally
    FreeAndNil(SMPrincipal);
  end;

  FIN_FM_M_BRD.FIN_CD_M_BRD.fieldByName('id_empresa').AsInteger :=
        dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  FIN_FM_M_BRD.FIN_CD_M_BRD.fieldByName('id_resp_criacao').AsInteger := xFuncionario;
  FIN_FM_M_BRD.FIN_CD_M_BRD.fieldByName('dta_criacao').AsDateTime := xDataSis;

  FIN_FM_M_BRD.FIN_CD_M_BRD.fieldByName('liberado').AsBoolean := false;
  FIN_FM_M_BRD.FIN_CD_M_BRD.fieldByName('cancelado').AsBoolean := false;
  FIN_FM_M_BRD.FIN_CD_M_BRD.fieldByName('baixado').AsBoolean := false;


end;

procedure FinMascaraBrdTit;
begin
  FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_pagamento.DisplayFormat         :=CMascaraValor;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_juros.DisplayFormat             :=CMascaraValor;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_desconto.DisplayFormat          :=CMascaraValor;
//  FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_credito_utilizado.DisplayFormat :=CMascaraValor;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_a_pagar.DisplayFormat           :=CMascaraValor;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_restante.DisplayFormat          :=CMascaraValor;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_titulo.DisplayFormat            :=CMascaraValor;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TITvlr_multa.DisplayFormat             :=CMascaraValor;
end;

procedure FinNovoBrdTit;
begin
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency := 0;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_JUROS').AsCurrency     := 0;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_DESCONTO').AsCurrency  := 0;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('PER_DESCONTO').AsCurrency := 0;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_A_PAGAR').AsCurrency  := 0;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_RESTANTE').AsCurrency := 0;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('VLR_MULTA').AsCurrency    := 0;
  FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('ATRASO').AsInteger        := 0;
end;


procedure FinValidaBrdTit;
var
  xMensErro:string;
begin
  xMensErro:='';

  if (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').AsString=null) or
     (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Titulo deve ser informado.'+ #13;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_M_PAG_TIT.Close;
       dmGeral.BUS_CD_M_PAG_TIT.Data :=
       dmGeral.BUS_CD_M_PAG_TIT.DataRequest(
         VarArrayOf([0, FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').AsString]));
       if dmGeral.BUS_CD_M_PAG_TIT.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Titulo não cadastrado.'+ #13;
            FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').FocusControl;
          end;
     end;

  if (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_pagamento').IsNull) or
     (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_pagamento').AsCurrency=0) then
     begin
       xMensErro:= xMensErro + '.Valor de pagamento deve ser informado.'+ #13;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_juros').AsCurrency>=
     FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor do juros não pode ser igual ou maior que o valor do titulo.'+ #13;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_multa').AsCurrency>=
     FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor da multa não pode ser igual ou maior que o valor do titulo.'+ #13;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_multa').AsCurrency>=
     FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor da multa não pode ser igual ou maior que o valor do titulo.'+ #13;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_desconto').AsCurrency>
     FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor do desconto não pode ser maior que o valor do titulo.'+ #13;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_pagamento').AsCurrency>
     FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_a_pagar').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor do pagamento não pode ser maior que o valor a pagar.'+ #13;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_a_pagar').FocusControl;
     end;

  if (FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_pagamento').AsCurrency <
       ( FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_juros').AsCurrency +
         FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_multa').AsCurrency) ) then
     begin
       xMensErro:= xMensErro + '.Valor do pagamento não pode ser menor que o valor de (juros + multa).'+ #13;
       FIN_FM_M_BRD.FIN_CD_M_BRD_TIT.FieldByName('vlr_a_pagar').FocusControl;
     end;


 { if dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_credito_utilizado').AsCurrency>0 then
     begin
       if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_pagamento').AsCurrency<>
          dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_credito_utilizado').AsCurrency) then
          begin
            xMensErro:= xMensErro + '.Quando utlizado crédito, o valor pago deve ser igual ao valor do crédito.'+ #13;
            dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
          end;
     end; }



  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure FinPermiteAltBrd;
var
  xMensErro:string;
begin

  xMensErro := '';

  if FIN_FM_M_BRD.FIN_CD_M_BRD.FieldByName('cancelado').AsBoolean then
     begin
       xMensErro := '.Borderô já cancelado';
     end;

  {if FIN_FM_M_BRD.FIN_CD_M_BRD.FieldByName('baixado').AsBoolean then
     begin
       xMensErro := '.Borderô já baixado';
     end;

  if FIN_FM_M_BRD.FIN_CD_M_BRD.FieldByName('liberado').AsBoolean then
     begin
       xMensErro := '.Borderô já liberado';
     end; }

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
