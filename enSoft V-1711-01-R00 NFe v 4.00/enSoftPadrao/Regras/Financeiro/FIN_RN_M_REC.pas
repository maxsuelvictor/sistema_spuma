unit FIN_RN_M_REC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaRec(DataSet:TDataSet);
procedure FinMascaraRec(DataSet:TDataSet);
procedure FinMascaraBusRec;
procedure FatNovoRec(DataSet: TDataSet);
procedure FinModificaVlrParcelaRec;
function  FinPermiteAltRec: Integer;
function  FinPermiteExcRec: Boolean;
procedure FIN_CD_M_RECche_chequeChange;
procedure FIN_CD_M_RECche_contaChange;
procedure FIN_CD_M_RECdta_originalChange;

implementation
Uses uDmGeral,enConstantes, uProxy;

procedure FinValidaRec(DataSet:TDataSet);
Var
xMensErro:string;
xHistorico:Integer;
begin
  xMensErro:='';

  if (dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean) and (
     (dmGeral.FIN_CD_M_REC.FieldByName('id_obra').AsString=null) or
     (dmGeral.FIN_CD_M_REC.FieldByName('id_obra').AsString='') ) then
     begin
       xMensErro:= xMensErro + '.Obra deve ser informada.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('id_cliente').AsString=null) or
     (dmGeral.FIN_CD_M_REC.FieldByName('id_cliente').AsString='') then
     begin
       xMensErro:= xMensErro + '.Cliente deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_REC.FieldByName('id_cliente').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('id_cliente').AsString<>'') then
      begin
       dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(
           VarArrayOf([0,dmGeral.FIN_CD_M_REC.FieldByName('ID_CLIENTE').AsString]));
       if dmGeral.BUS_CD_C_CLI.IsEmpty then
         begin
           xMensErro:= xMensErro + '.Cliente não cadastrado.'+ #13;
         end;
       if dmGeral.BUS_CD_C_CLI.FieldByName('ATIVO').AsBoolean=false then
        begin
           xMensErro:= xMensErro + '.Cliente inativo.'+ #13;
        end;
      end;


  if dmGeral.FIN_CD_M_REC.FieldByName('dta_emissao').AsDateTime=0 then
     begin
       xMensErro:= xMensErro + '.Data de emissão deve ser informada.'+ #13;
     end;
  if dmGeral.FIN_CD_M_REC.FieldByName('dta_original').AsDateTime=0 then
     begin
       xMensErro:= xMensErro + '.Data de vencimento deve ser informada.'+ #13;
     end;
  if dmGeral.FIN_CD_M_REC.FieldByName('dta_vencimento').AsDateTime=0 then
     begin
       xMensErro:= xMensErro + '.Previsão de baixa deve ser informada.'+ #13;
     end;
  if dmGeral.FIN_CD_M_REC.FieldByName('Historico').AsString='' then
     begin
       xMensErro:= xMensErro + '.Histórico deve ser informado.'+ #13;
     end;

  {xHistorico :=Length(Trim(dmGeral.FIN_CD_M_REC.FieldByName('Historico').AsString));

  if (xHistorico<10) then
     begin
       xMensErro:= xMensErro + 'Histórico deve ter no minimo 10 caracteres.'+ #13;
     end;}

  if (dmGeral.FIN_CD_M_REC.FieldByName('id_local_titulo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Local do titulo deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_REC.FieldByName('id_local_titulo').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('id_forma_pag').AsString=null) or
     (dmGeral.FIN_CD_M_REC.FieldByName('id_forma_pag').AsString='') then
     begin
       xMensErro:= xMensErro + '.Forma de pagamento deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_REC.FieldByName('id_forma_pag').FocusControl;
     end;

  if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger=6 then
     begin
       if (dmGeral.FIN_CD_M_REC.FieldByName('che_conta').AsString='') or
          (dmGeral.FIN_CD_M_REC.FieldByName('che_cheque').AsString='') or
          (dmGeral.FIN_CD_M_REC.FieldByName('che_banco').AsString='') or
          (dmGeral.FIN_CD_M_REC.FieldByName('che_emitente').AsString='') or
          (dmGeral.FIN_CD_M_REC.FieldByName('che_agencia').AsString='') then
           xMensErro:= xMensErro + '.Você deve informa os dados do cheque.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('id_plano').AsString=null) or
     (dmGeral.FIN_CD_M_REC.FieldByName('id_plano').AsString='') then
     begin
       xMensErro:= xMensErro + '.Plano de contas deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_REC.FieldByName('id_plano').FocusControl;
     end;

  if dmGeral.BUS_CD_C_PCT.FieldByName('Tipo').AsInteger=1 then
     begin
       xMensErro:= xMensErro + '.Plano de contas deve ser analitico'+ #13;
     end;
  if dmGeral.BUS_CD_C_PCT.FieldByName('Tipo_desp').AsInteger in [0,3,4] then
     begin
       xMensErro:= xMensErro + '.Plano de contas deve ser do tipo Receita ou Sem fluxo'+ #13;
     end;

  if dmGeral.FIN_CD_M_REC.FieldByName('VLR_PARCELA').AsCurrency= 0 then
     begin
       xMensErro:= xMensErro + '.Valor Parcial deve ser informado.'+ #13;
     end;

  if dmGeral.FIN_CD_M_REC.FieldByName('VLR_ORIGINAL').AsCurrency= 0 then
     begin
       xMensErro:= xMensErro + '.Valor do título deve ser informado.'+ #13;
     end;

  if dmGeral.FIN_CD_M_REC.FieldByName('VLR_PARCELA').AsCurrency < 0 then
     begin
       xMensErro:= xMensErro + '.Valor Parcial não pode ter valor negativo.'+ #13;
     end;

   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro)
   else
      begin

        if (dmGeral.FIN_CD_M_REC.FieldByName('DTA_EMISSAO').AsDateTime - xDataSis)< -365  then
            begin
             xMensErro:= xMensErro + '.Data de emissão não pode ser menor em mais de 1 ano da data atual.'+ #13;
            end;

        if dmGeral.FIN_CD_M_REC.FieldByName('dta_emissao').AsDateTime >
           dmGeral.FIN_CD_M_REC.FieldByName('dta_original').AsDateTime  then
           begin
             xMensErro:= xMensErro + '.Data de emissão não pode ser maior que a data de vencimento.'+ #13;
           end;

        if dmGeral.FIN_CD_M_REC.FieldByName('dta_original').AsDateTime >
           dmGeral.FIN_CD_M_REC.FieldByName('dta_vencimento').AsDateTime then
           begin
             xMensErro:= xMensErro + '.Data de vencimento não pode ser maior que a data da previsão da baixa.'+ #13;
           end;

        if (abs(dmGeral.FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime -
            dmGeral.FIN_CD_M_REC.FieldByName('DTA_EMISSAO').AsDateTime)> 1825)  then
           begin
              xMensErro:= xMensErro +'.Data de previsão de baixa não pode ser menor ou maior em mais de 5 anos da data de emissão.'+ #13;
           end;


        if xMensErro<>'' then
           raise Exception.Create(enConstantes.MensErro + #13 + xMensErro)
      end;
end;

procedure FinMascaraRec(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_RECvlr_parcela.DisplayFormat      := CMascaraValor;
  dmGeral.FIN_CD_M_RECvlr_original.DisplayFormat   := CMascaraValor;
  dmGeral.FIN_CD_M_RECvlr_saldo.DisplayFormat      := CMascaraValor;
end;

procedure FinMascaraBusRec;
begin
  //dmGeral.BUS_CD_M_RECvlr_parcela.DisplayFormat    := CMascaraValor;
  //dmGeral.BUS_CD_M_RECvlr_saldo.DisplayFormat      := CMascaraValor;

  dmGeral.BUS_CD_M_RECvlr_saldo.DisplayFormat     :=CMascaraValor;
  dmGeral.BUS_CD_M_RECvlr_parcela.DisplayFormat   :=CMascaraValor;
  dmGeral.BUS_CD_M_RECvlr_original.DisplayFormat  :=CMascaraValor;

  dmGeral.BUS_CD_M_RECint_vlr_corrigido.DisplayFormat :=CMascaraValor;
  dmGeral.BUS_CD_M_RECint_vlr_juros.DisplayFormat     :=CMascaraValor;


end;

procedure FatNovoRec(DataSet: TDataSet);
begin
   dmGeral.FIN_CD_M_REC.FieldByName('ID_FISCAL').AsInteger := 0;

  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_REC',xCodLme,xRevLme,dmGeral.FIN_CD_M_REC);
end;


function  FinPermiteAltRec: Integer;
var
  xMensErro:string;
begin
  xMensErro:='';

  // Result = 0 - Não permite alterar o título
  // Result = 1 - Permite alterar apenas a data de vencimento
  // Result = 2 - Não permite alterar o campo ID_CLIENTE e NUM_PARCELA
  // Result = 3 - Permite alterar apenas a data de vencimento, previsao de baixa e valor saldo


  if (dmGeral.FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger in [0,1]) and
     (dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency = 0) then
      begin
        result := 0;
        xMensErro:= xMensErro + '.Título já foi quitado'+ #13;
      end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger = 1) and
     (dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency > 0) then
      begin
        Result := 1;
      end;

   //Para atender Teresina agricola.Resp:Luan.Data:06/09/2017
  if (dmGeral.FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger = 1) and
     (dmGeral.FIN_CD_M_REC.FieldByName('origem').AsInteger <> 2) and //Não pode ser originada de nota
     (dmGeral.FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency =
      dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency) then
      begin
        Result := 3;
      end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger = 0) and
     (dmGeral.FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency =
      dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency) then
      begin
        Result := 2;
      end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger = 0) and
     ((dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency > 0) and
      (dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency <
       dmGeral.FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency)) then
      begin
        Result := 1;
      end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;



function  FinPermiteExcRec: Boolean;
var
  xMensErro: String;
begin

  result := true;
  xMensErro := '';

  //INSERI A ESTRUTURA IF-ELSE PARA TRATAR CHEQUES QUE NÃO ESTEJAM EM ABERTO. RESPONSAVEL: LUAN;DATA:18/07/2015
  dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_REC.FieldByName('ID_FORMA_PAG').AsString);
  if ((dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
      (dmGeral.FIN_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger <> 1))  then
      begin
        result    := false;
        xMensErro := xMensErro + '.Título já movimentado.'+ #13;
      end
  else
    begin
      if (dmGeral.FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger = 0) and
         (dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency <
          dmGeral.FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency) then
         begin
           result    := false;
           xMensErro := xMensErro + '.Título já movimentado.'+ #13;
         end;

      if (dmGeral.FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger = 1)  then
          begin
           Result := false;
           xMensErro := xMensErro + '.Título gerado automaticamente.'+ #13;
          end;
     end;
  if xMensErro <> '' then
     raise Exception.Create('Título não pode ser excluído.' + #13 + xMensErro);
end;

procedure FinModificaVlrParcelaRec;
begin
  try
   dmGeral.FIN_CD_M_RECVLR_SALDO.ReadOnly  := false;

   //Verificar esta rotina quando o valor do saldo for diferente do valor da parcela -- Com pagamento Parcial
   dmGeral.FIN_CD_M_REC.FieldByName('vlr_original').AsCurrency:=
     dmGeral.FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency;

   dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency:=
     dmGeral.FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency;

  finally
     dmGeral.FIN_CD_M_RECVLR_SALDO.ReadOnly  := true;
  end;

end;


procedure FIN_CD_M_RECdta_originalChange;
begin
  if trim(dmGeral.FIN_CD_M_REC.FieldByName('dta_vencimento').text) = '' then
     dmGeral.FIN_CD_M_REC.FieldByName('dta_vencimento').AsDateTime :=
             dmGeral.FIN_CD_M_REC.FieldByName('dta_original').AsDateTime;
end;

procedure FIN_CD_M_RECche_chequeChange;
var
  xMensErro:string;
begin
  xMensErro:='';

  if dmGeral.FIN_CD_M_REC.FieldByName('che_cheque').AsInteger < 0 then
     xMensErro := 'Nº do cheque não pode ser menor que 0.';

  if xMensErro <> '' then
     raise Exception.Create(xMensErro);
end;

procedure FIN_CD_M_RECche_contaChange;
var
  xMensErro:string;
begin
  xMensErro:='';

  if dmGeral.FIN_CD_M_REC.FieldByName('che_conta').AsInteger < 0 then
     xMensErro := 'Conta corrente do cheque não pode ser menor que 0.';

  if xMensErro <> '' then
     raise Exception.Create(xMensErro);
end;


end.
