unit FIN_RN_M_RCR;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaRcr(DataSet:TDataSet);
procedure FinMascaraRcr(DataSet:TDataSet);
procedure FinNovoRcr(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;

procedure FinValidaRcr(DataSet:TDataSet);
Var
xMensErro:string;
begin
  xMensErro:='';

  if (dmGeral.FIN_CD_M_RCR.FieldByName('id_cliente').IsNull) or
     (dmGeral.FIN_CD_M_RCR.FieldByName('id_cliente').AsString='') then
     begin
       xMensErro:= xMensErro + '.Cliente deve ser informado.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_RCR.FieldByName('historico').IsNull) or
     (dmGeral.FIN_CD_M_RCR.FieldByName('historico').AsString='') then
     begin
       xMensErro:= xMensErro + '.Histórico deve ser informado.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_RCR.FieldByName('vlr_credito').IsNull) or
           (dmGeral.FIN_CD_M_RCR.FieldByName('vlr_credito').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor Lançamento deve ser informado.'+ #13;
     end;

  if  ((dmGeral.FIN_CD_M_RCR.FieldByName('vlr_credito').AsString <> '') and
      (dmGeral.FIN_CD_M_RCR.FieldByName('vlr_credito').AsCurrency <= 0))  then
     begin
       xMensErro:= xMensErro + '.Valor Lançamento deve ser maior que zero.'+ #13;
     end;

  if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').IsNull) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').AsBoolean = True) and
      (dmGeral.FIN_CD_M_RCR.FieldByName('deb_cre').AsInteger = 1)) then
     begin
        if (dmGeral.FIN_CD_M_RCR.FieldByName('id_forma_pag').IsNull) or
           (dmGeral.FIN_CD_M_RCR.FieldByName('id_forma_pag').AsString='') then
           begin
             xMensErro:= xMensErro + '.Forma de Pagamento deve ser informado.'+ #13;
           end;

        if ((dmGeral.FIN_CD_M_RCR.FieldByName('int_docimpresso').AsString <> '6') and
           (dmGeral.FIN_CD_M_RCR.FieldByName('id_conta').AsString='')) then
           begin
             xMensErro:= xMensErro + '.Conta Corrente deve ser informado.'+ #13;
           end;


        if (dmGeral.FIN_CD_M_RCR.FieldByName('car_parcelas').IsNull) or
           (dmGeral.FIN_CD_M_RCR.FieldByName('car_parcelas').AsString='') then
           begin
             xMensErro:= xMensErro + '.Parcelas do cartão deve ser informado.'+ #13;
           end;


        if ((dmGeral.FIN_CD_M_RCR.FieldByName('dta_vencimento').IsNull) or
            (dmGeral.FIN_CD_M_RCR.FieldByName('dta_vencimento').AsString='  /  /    ')) then
           begin
             xMensErro:= xMensErro + '.Vencimento deve ser informado.'+ #13;
           end;

        if ((dmGeral.FIN_CD_M_RCR.FieldByName('int_docimpresso').AsString = '3') and
           (dmGeral.FIN_CD_M_RCR.FieldByName('id_maquineta').AsString='')) then
           begin
             xMensErro:= xMensErro + '.Maquineta deve ser informado.'+ #13;
           end;

        if ((dmGeral.FIN_CD_M_RCR.FieldByName('int_docimpresso').AsString = '6') and
             ((dmGeral.FIN_CD_M_RCR.FieldByName('pre_banco').AsString='') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_banco').AsString='0') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_agencia').AsString='') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_agencia').AsString='0') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_agencia').AsString='') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_agencia').AsString='0') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_conta').AsString='') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_conta').AsString='0') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_cheque').AsString='') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_cheque').AsString='0') or
              (dmGeral.FIN_CD_M_RCR.FieldByName('pre_emitente').AsString=''))  ) then
           begin
             xMensErro:= xMensErro + '.Os dados do cheque devem ser informados.'+ #13;
           end;
      end;
   {if (((dmGeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsString = '3') OR
      (dmGeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsString = '6')) AND
      (dmGeral.FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger = 0)) then
     begin
       xMensErro := xMensErro + '.A forma de pagamento selecionado é aceito somente para operação crédito.'+ #13;
     end;}




  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro)



end;

procedure FinMascaraRcr(DataSet:TDataSet);
begin
    dmGeral.FIN_CD_M_RCRvlr_credito.DisplayFormat  := CMascaraValor;
end;

procedure FinNovoRcr(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_RCR.fieldByName('id_credito').AsInteger:=
      SMPrincipal.enValorChave('FIN_TB_M_RCR');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FIN_CD_M_RCR.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.FIN_CD_M_RCR.FieldByName('dta_credito').AsDateTime := xDataSis;
  dmGeral.FIN_CD_M_RCR.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;

  dmGeral.FIN_CD_M_RCR.FieldByName('ORIGEM').AsInteger          := 0;
  dmGeral.FIN_CD_M_RCR.FieldByName('NUM_DOCUMENTO').AsInteger   := 0;
  dmGeral.FIN_CD_M_RCR.FieldByName('VLR_SALDO').AsInteger       := 0;
  dmGeral.FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsInteger     := 0;
  dmGeral.FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger         := 0;
  dmGeral.FIN_CD_M_RCR.FieldByName('id_abertura').AsInteger := 0;

  dmGeral.FIN_CD_M_RCR.FieldByName('PRE_BANCO').AsString        := '0';
  dmGeral.FIN_CD_M_RCR.FieldByName('PRE_AGENCIA').AsString      := '0';
  dmGeral.FIN_CD_M_RCR.FieldByName('PRE_CONTA').AsString        := '0';
  dmGeral.FIN_CD_M_RCR.FieldByName('PRE_CHEQUE').AsString       := '0';
  dmGeral.FIN_CD_M_RCR.FieldByName('CANCELADO').AsBoolean      := false;


  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_RCR',xCodLme,xRevLme,dmGeral.FIN_CD_M_RCR);
end;


end.
