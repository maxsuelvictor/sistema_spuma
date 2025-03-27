unit FIN_RN_M_RBX;

interface
uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Math,System.Variants,Data.SqlExpr;

procedure FIN_DP_M_RBXUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet;
FIN_DP_M_REC_PAG:TDataSetProvider;
FIN_DP_M_REC:TDataSetProvider;
FIN_DP_M_CTA:TDataSetProvider;
CAD_DP_C_FPG:TDataSetProvider;
CAD_DP_C_CTC:TDataSetProvider;
CAD_DP_C_TIF:TDataSetProvider;
FIN_DP_M_RCR:TDataSetProvider;
FIN_DP_M_RBX_TIT_INT,FIN_DP_M_CXA,BUS_DP_C_PAR_CTR,CAD_DP_C_CLI,BUS_DP_M_RBX_TIT:TDataSetProvider; sm: TSM);

{ TODO -oMariel -cRotina :Regra de Contas a Pagar 15/10/2014 : 08:05 }


implementation


procedure FIN_DP_M_RBXUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet;
FIN_DP_M_REC_PAG:TDataSetProvider;
FIN_DP_M_REC:TDataSetProvider;
FIN_DP_M_CTA:TDataSetProvider;
CAD_DP_C_FPG:TDataSetProvider;
CAD_DP_C_CTC:TDataSetProvider;
CAD_DP_C_TIF:TDataSetProvider;
FIN_DP_M_RCR:TDataSetProvider;
FIN_DP_M_RBX_TIT_INT,FIN_DP_M_CXA,BUS_DP_C_PAR_CTR,CAD_DP_C_CLI,BUS_DP_M_RBX_TIT:TDataSetProvider; sm: TSM
);
var
 cds, cds_rbx_ger, cds_rbx_ppe:TDataSet;
 FIN_CD_M_REC_PAG:TClientdataset;
 FIN_CD_M_REC:TClientdataset;
 FIN_CD_M_REC_CHQ:TClientdataset;
 FIN_CD_M_REC_XXX:TClientdataset;
 FIN_CD_M_RCR:TClientdataset;
 FIN_CD_M_CTA:TClientdataset;
 CAD_CD_C_FPG:TClientdataset;
 CAD_CD_C_CTC:TClientdataset;
 CAD_CD_C_TIF:TClientdataset;
 FIN_CD_M_RBX_TIT:TClientdataset;
 FIN_CD_M_CXA:TClientdataset;
 BUS_CD_C_PAR_CTR:TClientdataset;
 BUS_CD_M_RBX_TIT:TClientdataset;
 CAD_CD_C_CLI,CAD_CD_C_CLI_CRD:TClientdataset;

 lDataBaixaRBX, lPlanoRBX, lIdMaquineta, lInt_DocCnpjCpf: String;
 lIdCliente,lIdbaixa, lTipoFinRBX,lContaRBX,lFormaPagRBX,lCentroCustoRBX, lIdAbertura: Integer;
 lVlrBaixa,lVlrTotalPago: Currency;

 lFazConciliacao: Boolean;


 xIdTitulo,xIdBaixa:Integer;
 NewVlrPago, OldVlrPago, oldVlrJuros, NewVlrJuros,
 oldVlrMulta,NewVlrMulta,oldVlrDesconto,NewVlrDesconto,
 oldVlrCredTit,NewVlrCredTit :currency;
 Newidbaixa, oldidbaixa,xHistorico, xTitulos,newHistoricoTit,oldHistoricoTit:String;
 NewDtaVencimento, oldDtaVencimento:TDateTime;
 oldVlrCredito, newVlrCredito:Currency;
 i, xIdCliente:Integer;
 OldIdRecibo,NewIdRecibo:String;

 xIdControleGer,xCheConta,xCheCheque: integer;
 xVlrPagamento: Currency;
 xDtaVencimentoGer: TDateTime;
 xCheBanco,xCheEmitente,xCheAgencia: String;

 TituloAlterado:Boolean;

 vlrTotalSaldoAnt,vlrTotalSaldoNew:Currency;
begin
   vlrTotalSaldoAnt := 0;
   vlrTotalSaldoNew := 0;
   { TODO -oMaxsuel -cCriação : Método criado por Maxsuel Victor - 16/12/2014 }


  //Procedimentos:
  //--------------------------------------
  //1-Atualiza saldo dos titulos
  //  Deduz o valor de pagamento em cada titulo

  //2-atualiza arquivo de pagamentos
  //  Gera arquivo de pagamento para cada titulo, com detalhamento dos mesmos.

  //3-atualiza credito de fornecedor
  //  Gera destino  de credito
  //  Atauliza credito atual

  //4-atualiza caixa ou banco
  //  Gera caixa ou banco se a opção gera_caixa_banco = true da forma de pagemnto


  //Se ocorrer alteração do registro que seja somente id_recibo, esse if
   //evita que seja executado todo o codigo desse metodo.Responsavel:Luan.Data:19/03/2016
   if dataset.UpdateStatus in [usUnmodified] then
    begin
       OldIdRecibo := dataset.FieldByName('ID_RECIBO').AsString;
       NewIdRecibo := dataset.FieldByName('ID_RECIBO').AsString;

       dataset.next;
       if (trim(dataset.FieldByName('ID_RECIBO').AsString) <> '') then
         begin
          NewIdRecibo := dataset.FieldByName('ID_RECIBO').AsString;
         end;
       dataset.Prior;
       if (NewIdRecibo <> OldIdRecibo) then
         begin
           exit;
         end;
    end;



  FIN_CD_M_REC_PAG :=TClientDataSet.Create(nil);
  FIN_CD_M_REC     :=TClientDataSet.Create(nil);
  FIN_CD_M_REC_XXX :=TClientDataSet.Create(nil);
  FIN_CD_M_REC_CHQ :=TClientDataSet.Create(nil);
  FIN_CD_M_CTA     :=TClientDataSet.Create(nil);
  FIN_CD_M_CXA     :=TClientDataSet.Create(nil);
  CAD_CD_C_FPG     :=TClientDataSet.Create(nil);
  CAD_CD_C_CTC     :=TClientDataSet.Create(nil);
  CAD_CD_C_TIF     :=TClientDataSet.Create(nil);
  FIN_CD_M_RCR     :=TClientDataSet.Create(nil);
  FIN_CD_M_RBX_TIT :=TClientDataSet.Create(nil);
  BUS_CD_C_PAR_CTR :=TClientDataSet.Create(nil);
  CAD_CD_C_CLI     :=TClientDataSet.Create(nil);
  CAD_CD_C_CLI_CRD  :=TClientDataSet.Create(nil);

  xTitulos := '';

  try
    if not (dataset.UpdateStatus in [usDeleted]) then
       begin
         FIN_CD_M_REC_PAG.SetProvider(FIN_DP_M_REC_PAG);
         FIN_CD_M_REC.SetProvider(FIN_DP_M_REC);
         FIN_CD_M_CTA.SetProvider(FIN_DP_M_CTA);
         FIN_CD_M_CXA.SetProvider(FIN_DP_M_CXA);
         FIN_CD_M_RCR.SetProvider(FIN_DP_M_RCR);
         CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
         CAD_CD_C_CTC.SetProvider(CAD_DP_C_CTC);
         CAD_CD_C_TIF.SetProvider(CAD_DP_C_TIF);
         BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);

         BUS_CD_C_PAR_CTR.Close;
         BUS_CD_C_PAR_CTR.Data :=
         BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([dataset.FieldByName('ID_EMPRESA').AsString]));

         lIdCliente      := dataset.FieldByName('ID_CLIENTE').AsInteger;
         lIdbaixa        := dataset.FieldByName('ID_BAIXA').AsInteger;
         lContaRBX       := dataset.FieldByName('ID_CONTA').AsInteger;
         lDataBaixaRBX   := dataset.FieldByName('DTA_BAIXA').AsString;
         lFormaPagRBX    := dataset.FieldByName('ID_FORMA_PAG').AsInteger;
         lTipoFinRBX     := dataset.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;
         lPlanoRBX       := dataset.FieldByName('ID_PLANO').AsString;
         lCentroCustoRBX := dataset.FieldByName('ID_CCUSTO').AsInteger;
         lIdAbertura     := dataset.FieldByName('ID_ABERTURA').AsInteger;
         lIdMaquineta    := dataset.FieldByName('ID_MAQUINETA').AsString;
         lVlrBaixa       := dataset.FieldByName('VLR_BAIXA').AsCurrency;
         lvlrTotalPago   := dataset.FieldByName('VLR_PAGO_GER').AsCurrency;
         lInt_DocCnpjCpf := dataset.FieldByName('INT_DOCCNPJCPF').AsString;
         lFazConciliacao := dataset.FieldByName('faz_conciliacao').AsBoolean;

         newVlrCredito := 0;
         oldVlrCredito := Dataset.FieldByName('vlr_cred_utilizado').AsCurrency;

         if dataset.UpdateStatus in [usUnmodified] then
            begin
              dataset.next;

              if trim(dataset.FieldByName('ID_CONTA').AsString) <> '' then
                 lContaRBX       := dataset.FieldByName('ID_CONTA').AsInteger;

              if trim(dataset.FieldByName('DTA_BAIXA').AsString) <> '' then
                 lDataBaixaRBX   := dataset.FieldByName('DTA_BAIXA').AsString;

              if trim(dataset.FieldByName('ID_FORMA_PAG').AsString) <> '' then
                 lFormaPagRBX    := dataset.FieldByName('ID_FORMA_PAG').AsInteger;

              if trim(dataset.FieldByName('ID_TIPO_FINANCEIRO').AsString) <> '' then
                 lTipoFinRBX     := dataset.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;

              if trim(dataset.FieldByName('ID_PLANO').AsString) <> '' then
                 lPlanoRBX       := dataset.FieldByName('ID_PLANO').AsString;

              if trim(dataset.FieldByName('ID_CCUSTO').AsString) <> '' then
                 lCentroCustoRBX := dataset.FieldByName('ID_CCUSTO').AsInteger;

              if trim(dataset.FieldByName('ID_ABERTURA').AsString) <> '' then
                 lIdAbertura := dataset.FieldByName('ID_ABERTURA').AsInteger;

              if dataset.FieldByName('ID_MAQUINETA').AsString <> '' then
                 lIdMaquineta := dataset.FieldByName('ID_MAQUINETA').AsString;

              if trim(dataset.FieldByName('VLR_BAIXA').AsString) <> '' then
                 lVlrBaixa := dataset.FieldByName('VLR_BAIXA').AsCurrency;

              if trim(dataset.FieldByName('VLR_PAGO_GER').AsString) <> '' then
                 lVlrTotalPago := dataset.FieldByName('VLR_PAGO_GER').AsCurrency;

              if ((trim(dataset.FieldByName('vlr_cred_utilizado').AsString) <> '') and
                 (Dataset.FieldByName('vlr_cred_utilizado').AsCurrency > 0)) then
                  newVlrCredito:= Dataset.FieldByName('vlr_cred_utilizado').AsCurrency;

              if dataset.FieldByName('faz_conciliacao').AsString <> '' then
                 lFazConciliacao := dataset.FieldByName('faz_conciliacao').AsBoolean;

              dataset.Prior;
            end;

         CAD_CD_C_CLI.SetProvider(CAD_DP_C_CLI);
         CAD_CD_C_CLI.Close;
         CAD_CD_C_CLI.Data :=
         CAD_CD_C_CLI.DataRequest(VarArrayOf([0, Dataset.FieldByName('ID_CLIENTE').AsString]));

         CAD_CD_C_CLI_CRD.DataSetField     := TDataSetField(CAD_CD_C_CLI.FieldByName('CAD_SQ_C_CLI_CRD'));

         CAD_CD_C_FPG.Close;
         CAD_CD_C_FPG.Data :=
         CAD_CD_C_FPG.DataRequest(VarArrayOf([0, lFormaPagRBX]));

         CAD_CD_C_CTC.Close;
         CAD_CD_C_CTC.Data :=
         CAD_CD_C_CTC.DataRequest(VarArrayOf([0, lContaRBX]));

         CAD_CD_C_TIF.Close;
         CAD_CD_C_TIF.Data :=
             CAD_CD_C_TIF.DataRequest(VarArrayOf([0, lTipoFinRBX]));

         if lIdAbertura > 0 then
            begin
              FIN_CD_M_CXA.Close;
              FIN_CD_M_CXA.Data :=
                  FIN_CD_M_CXA.DataRequest(VarArrayOf([0, lIdAbertura]));
            end;

         FIN_CD_M_CTA.Close;
         FIN_CD_M_CTA.Data :=
             FIN_CD_M_CTA.DataRequest(VarArrayOf([93, lIdbaixa]));
         {if not (FIN_CD_M_CTA.IsEmpty) then
            begin
              FIN_CD_M_CTA.First;
              while not (FIN_CD_M_CTA.Eof) do
                begin
                  FIN_CD_M_CTA.Delete;
                end;
            end; }

        //Histórico de baixas dos titulos
         FIN_CD_M_REC_PAG.SetProvider(FIN_DP_M_REC_PAG);
         FIN_CD_M_REC_PAG.Close;
         FIN_CD_M_REC_PAG.Data :=
               FIN_CD_M_REC_PAG.DataRequest(
                    VarArrayOf([0,lIdbaixa]));

         // Reuni os títulos do RBX_TIT e RBX_GER
         xTitulos := '';

         cds         := TDataSetField(Dataset.FieldByName('FIN_SQ_M_RBX_TIT')).NestedDataSet;
         cds_rbx_ppe := TDataSetField(Dataset.FieldByName('FIN_SQ_M_RBX_PPE')).NestedDataSet;

         while not (cds.Eof)  do
            begin
               if xTitulos <> '' then
                  begin
                    xTitulos :=
                    xTitulos + ',' +''''+ cds.FieldByName('ID_TITULO').AsString+'''';
                  end;
               if xTitulos = '' then
                  begin
                    xTitulos :=
                    xTitulos +''''+cds.FieldByName('ID_TITULO').AsString+'''';
                  end;
              if cds.UpdateStatus in [usUnmodified] then
                 begin
                   cds.Next;
                 end;
               cds.Next;
            end;
         if (xTitulos <> '') then
            begin
             FIN_CD_M_RCR.Close;
             FIN_CD_M_RCR.Data :=
             FIN_CD_M_RCR.DataRequest(VarArrayOf([92,lIdCliente,lIdBaixa, xTitulos]));
            end
         else
            begin
             FIN_CD_M_RCR.Close;
             FIN_CD_M_RCR.Data :=
             FIN_CD_M_RCR.DataRequest(VarArrayOf([0,'']));
            end;

         cds_rbx_ger := TDataSetField(Dataset.FieldByName('FIN_SQ_M_RBX_GER')).NestedDataSet;
         while not (cds_rbx_ger.Eof)  do
               begin
                  if xTitulos <> '' then
                     begin
                       xTitulos :=
                       xTitulos + ',' +''''+ cds_rbx_ger.FieldByName('ID_CONTROLE').AsString+'''';
                     end;
                  if xTitulos = '' then
                     begin
                       xTitulos :=
                       xTitulos +''''+cds_rbx_ger.FieldByName('ID_CONTROLE').AsString+'''';
                     end;
                  if cds_rbx_ger.UpdateStatus in [usUnmodified] then
                     begin
                       cds_rbx_ger.Next;
                     end;
                  cds_rbx_ger.Next;
               end;

         // Busca os titulos do RBX_TIT e RBX_GER
         if (xTitulos <> '') then
            begin
             FIN_CD_M_REC.Close;
             FIN_CD_M_REC.Data :=
             FIN_CD_M_REC.DataRequest(VarArrayOf([91, xTitulos]));
            end
         else
            begin
             FIN_CD_M_REC.Close;
             FIN_CD_M_REC.Data :=
             FIN_CD_M_REC.DataRequest(VarArrayOf([0,'']));
            end;
         // Este while refere-se a RBX_TIT
         cds.First;
         while not (cds.Eof)  do
           begin
             xIdTitulo  := cds.FieldByName('ID_TITULO').AsInteger;
             newHistoricoTit  := trim(cds.FieldByName('INT_HISTORICO').AsString);
             xIdBaixa   := dataset.FieldByName('ID_BAIXA').AsInteger;

             if  (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 1) or   // Duplicata
                 (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 2) or   // Promissória
                 (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3) or   // Cartão
                 (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 4) or   // Boleto
                 (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6) then // Cheque
                  begin
                    xHistorico  := 'Substituição ref. baixa: '+ inttostr(xIdBaixa)+', do cliente: ' +
                                    'CNPJ/CPF: ' + lInt_DocCnpjCpf + ' - ' +
                                    dataset.FieldByName('int_nomecli').AsString;
                  end
             else
                begin
                  xHistorico  := 'Rec. ref. baixa: '+ inttostr(xIdBaixa)+', do cliente: ' +
                                  'CNPJ/CPF: ' + lInt_DocCnpjCpf + ' - ' +
                                  dataset.FieldByName('int_nomecli').AsString;
                end;

             OldVlrPago        := 0;
             oldVlrJuros       := 0;
             oldVlrCredTit     := 0;
             oldVlrDesconto    := 0;

             newVlrPago        := 0;
             NewVlrJuros       := 0;
             NewVlrCredTit     := 0;
             NewVlrDesconto    := 0;


             vlrTotalSaldoAnt := vlrTotalSaldoAnt + (cds.FieldByName('VLR_PAGAMENTO').AsCurrency +
                                 cds.FieldByName('VLR_DESCONTO').AsCurrency) -
                                 cds.FieldByName('VLR_JUROS').AsCurrency;


             tituloAlterado    := false;
             if cds.UpdateStatus in [usUnmodified] then
                begin
                  tituloAlterado    := true;
                  oldidbaixa        := cds.FieldByName('id_baixa').AsString;
                  oldDtaVencimento  := cds.FieldByName('dta_vencimento').AsDateTime;
                  oldVlrPago        := cds.FieldByName('vlr_pagamento').AsCurrency;
                  oldVlrJuros       := cds.FieldByName('VLR_JUROS').AsCurrency;
                  oldVlrCredTit     := cds.FieldByName('vlr_cred_utilizado').AsCurrency;
                  oldVlrDesconto    := cds.FieldByName('VLR_DESCONTO').AsCurrency;
                  oldHistoricoTit   := trim(cds.FieldByName('INT_HISTORICO').AsString);

                  cds.Next;
                  // Neste momento ele pega os novos valores
                  newIdbaixa       := cds.FieldByName('id_baixa').AsString;
                  newDtaVencimento := cds.FieldByName('dta_vencimento').AsDateTime;
                  newVlrPago       := cds.FieldByName('vlr_pagamento').AsCurrency;
                  NewVlrJuros      := cds.FieldByName('VLR_JUROS').AsCurrency;
                  NewVlrCredTit    := cds.FieldByName('vlr_cred_utilizado').AsCurrency;
                  NewVlrDesconto   := cds.FieldByName('VLR_DESCONTO').AsCurrency;
                  newHistoricoTit  := trim(cds.FieldByName('INT_HISTORICO').AsString);

                  if cds.FieldByName('vlr_pagamento').text = '' then
                     newVlrPago := oldVlrPago;
                  if cds.FieldByName('VLR_JUROS').text = '' then
                     NewVlrJuros :=  oldVlrJuros;
                  if cds.FieldByName('vlr_cred_utilizado').text = '' then
                     NewVlrCredTit := oldVlrCredTit;
                  if cds.FieldByName('VLR_DESCONTO').text = '' then
                     NewVlrDesconto   := oldVlrDesconto;
                  if cds.FieldByName('INT_HISTORICO').text = '' then
                     NewHistoricoTit   := oldHistoricoTit;

                  vlrTotalSaldoNew := vlrTotalSaldoNew + (newVlrPago +
                                 NewVlrDesconto) - NewVlrJuros;
                end;


             if (BUS_CD_C_PAR_CTR.FieldByName('limite_cred_fpg').AsBoolean = true) and
                (not (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger  in [1,2,3,4,6])) then
                begin
                   FIN_CD_M_REC.Locate('ID_TITULO',xIdTitulo,[]);
                   if FIN_CD_M_REC.FieldBYname('INT_DOCIMPRESSO').AsInteger in [1,2,4] then
                      begin
                        if dataset.UpdateStatus in [usInserted] then
                          begin
                            if CAD_CD_C_CLI_CRD.Locate('ID_FORMA_PAG',FIN_CD_M_REC.FieldByName('ID_FORMA_PAG').AsString,[]) then
                              begin
                                 CAD_CD_C_CLI_CRD.Edit;
                                 CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
                                   CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency +
                                      vlrTotalSaldoAnt;
                              end
                            else
                              begin
                                 CAD_CD_C_CLI_CRD.Insert;
                                 CAD_CD_C_CLI_CRD.FieldByName('id_forma_pag').AsInteger :=
                                                   FIN_CD_M_REC.FieldByName('ID_FORMA_PAG').AsInteger;

                                 CAD_CD_C_CLI_CRD.FieldByname('lim_valor').AsCurrency :=0;
                                 CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
                                               sm.enBusNovoSldlimCli(FIN_CD_M_REC.FieldByname('ID_EMPRESA').AsString,
                                                                         FIN_CD_M_REC.FieldByName('ID_CLIENTE').AsString,
                                                                         FIN_CD_M_REC.FieldByName('id_forma_pag').AsString,0);

                                 CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
                                    CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency +
                                        vlrTotalSaldoAnt;
                              end;

                          end
                        else
                          begin
                            if CAD_CD_C_CLI_CRD.Locate('ID_FORMA_PAG',FIN_CD_M_REC.FieldByName('ID_FORMA_PAG').AsString,[]) then
                              begin
                                 CAD_CD_C_CLI_CRD.Edit;
                                 CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
                                   (CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency - vlrTotalSaldoAnt) +
                                      vlrTotalSaldoNew;
                              end
                            else
                              begin
                                 CAD_CD_C_CLI_CRD.Insert;
                                 CAD_CD_C_CLI_CRD.FieldByName('id_forma_pag').AsInteger :=
                                                   FIN_CD_M_REC.FieldByName('ID_FORMA_PAG').AsInteger;
                                 CAD_CD_C_CLI_CRD.FieldByname('lim_valor').AsCurrency :=0;

                                 CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
                                               sm.enBusNovoSldlimCli(FIN_CD_M_REC.FieldByname('ID_EMPRESA').AsString,
                                                                         FIN_CD_M_REC.FieldByName('ID_CLIENTE').AsString,
                                                                         FIN_CD_M_REC.FieldByName('id_forma_pag').AsString,0);

                                 CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
                                   (CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency - vlrTotalSaldoAnt) +
                                      vlrTotalSaldoNew;


                              end;
                          end;
                        CAD_CD_C_CLI_CRD.Post;
                      end;

                end;

             //else
             //   begin
             //     xHistorico:='Recebimento ref. baixa: '+ inttostr(xIdBaixa)+', do Cliente: '+
             //                  dataset.FieldByName('int_nomecli').AsString;
             //  end;

             // Caso o registro de rec_pag já exista
             if FIN_CD_M_REC_PAG.Locate('ID_BAIXA;ID_TITULO',varArrayOf([xIdBaixa,xIdTitulo]),[]) then
                begin
                  if cds.UpdateStatus in [usDeleted] then
                     begin
                       FIN_CD_M_REC_PAG.Delete;
                     end
                  else
                     begin
                       FIN_CD_M_REC_PAG.Edit;
                       FIN_CD_M_REC_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime  :=
                          strtodate(lDataBaixaRBX);//  dataset.FieldByName('dta_baixa').AsDateTime;

                       if cds.FieldByName('VLR_PAGAMENTO').asCurrency > 0 then
                          FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').asCurrency  :=
                                 cds.FieldByName('VLR_PAGAMENTO').asCurrency
                       else
                          FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').asCurrency  := NewVlrPago;
                       FIN_CD_M_REC_PAG.FieldByName('PER_JUROS').AsFloat         := 0;

                       if cds.FieldByName('VLR_JUROS').AsCurrency > 0  then
                             FIN_CD_M_REC_PAG.FieldByName('VLR_JUROS').AsCurrency   := cds.FieldByName('VLR_JUROS').AsCurrency
                       else
                             FIN_CD_M_REC_PAG.FieldByName('VLR_JUROS').AsCurrency   := NewVlrJuros;


                       if cds.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
                          FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').AsCurrency :=
                               cds.FieldByName('VLR_DESCONTO').AsCurrency
                       else
                          FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').AsCurrency   := NewVlrDesconto;


                       if cds.FieldByName('VLR_CRED_UTILIZADO').AsCurrency > 0 then
                          FIN_CD_M_REC_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency :=
                               cds.FieldByName('VLR_CRED_UTILIZADO').AsCurrency
                       else
                          FIN_CD_M_REC_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency := NewVlrCredTit;

                       if (BUS_CD_C_PAR_CTR.FieldByName('rbx_gravar_obs_tit').AsBoolean=true) then
                         FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString       := xHistorico+' - '+NewHistoricoTit
                       else
                         FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString       := xHistorico;

                       FIN_CD_M_REC_PAG.FieldByName('ID_FORMA_PAG').AsInteger    :=
                            lFormaPagRBX; //  xIdFormaPag;

                       FIN_CD_M_REC_PAG.FieldByName('ID_PLANO').AsString         :=
                          Dataset.FieldByName('id_plano').AsString;

                      { if FIN_CD_M_REC.Locate('ID_TITULO',varArrayOf([xIdTitulo]),[]) then
                         FIN_CD_M_REC_PAG.FieldByName('ID_PLANO').AsString    :=
                               FIN_CD_M_REC.FieldByName('id_plano').AsString; }


                       FIN_CD_M_REC_PAG.FieldByName('ID_PLANO_JUROS').Value   := null;
                       if cds.FieldByName('VLR_JUROS').AsCurrency>0 then
                          FIN_CD_M_REC_PAG.FieldByName('ID_PLANO_JUROS').AsString   :=
                                 CAD_CD_C_FPG.FieldByName('pag_id_plano_juros').AsString;

                       FIN_CD_M_REC_PAG.FieldByName('ID_PLANO_DESCONTO').value := null;
                       if cds.FieldByName('VLR_DESCONTO').AsCurrency>0 then
                          FIN_CD_M_REC_PAG.FieldByName('ID_PLANO_DESCONTO').AsString:=
                                CAD_CD_C_FPG.FieldByName('pag_id_plano_desconto').AsString;

                       FIN_CD_M_REC_PAG.FieldByName('ID_RESPONSAVEL').AsInteger  :=
                          Dataset.FieldByName('id_responsavel').AsInteger;
                       FIN_CD_M_REC_PAG.FieldByName('ID_CCUSTO').AsInteger       :=
                          lCentroCustoRBX;

                       FIN_CD_M_REC_PAG.FieldByName('id_empresa_bxa').AsInteger  :=
                          Dataset.FieldByName('id_empresa').AsInteger;

                       FIN_CD_M_REC_PAG.Post;
                     end;
                end
             else
                begin
                  FIN_CD_M_REC_PAG.Append;
                  FIN_CD_M_REC_PAG.FieldByName('ID_TITULO').AsInteger       :=
                     cds.FieldByName('ID_TITULO').AsInteger;
                  FIN_CD_M_REC_PAG.FieldByName('ID_BAIXA').AsInteger        :=
                     cds.FieldByName('ID_BAIXA').AsInteger;
                  FIN_CD_M_REC_PAG.FieldByName('ID_ABERTURA').AsInteger        :=
                     Dataset.FieldByName('ID_ABERTURA').AsInteger;
                  FIN_CD_M_REC_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime  :=
                     strtodate(lDataBaixaRBX);//  dataset.FieldByName('dta_baixa').AsDateTime;
                  FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').asCurrency  :=
                     cds.FieldByName('VLR_PAGAMENTO').asCurrency;
                  FIN_CD_M_REC_PAG.FieldByName('PER_JUROS').AsFloat         := 0;
                  FIN_CD_M_REC_PAG.FieldByName('VLR_JUROS').AsCurrency      :=
                     cds.FieldByName('VLR_JUROS').AsCurrency;
                  FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').AsCurrency   :=
                     cds.FieldByName('VLR_DESCONTO').AsCurrency;
                  FIN_CD_M_REC_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency :=
                     cds.FieldByName('VLR_CRED_UTILIZADO').AsCurrency;

                  if (BUS_CD_C_PAR_CTR.FieldByName('rbx_gravar_obs_tit').AsBoolean=true) then
                      FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString       := xHistorico+' - '+NewHistoricoTit
                  else
                      FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString       := xHistorico;

                  FIN_CD_M_REC_PAG.FieldByName('ID_FORMA_PAG').AsInteger    :=
                    lFormaPagRBX;

                  FIN_CD_M_REC_PAG.FieldByName('ID_PLANO').AsString         :=
                     lPlanoRBX;

                 { if FIN_CD_M_REC.Locate('ID_TITULO',varArrayOf([xIdTitulo]),[]) then
                    FIN_CD_M_REC_PAG.FieldByName('ID_PLANO').AsString    :=
                         FIN_CD_M_REC.FieldByName('id_plano').AsString; }


                  if cds.FieldByName('VLR_JUROS').AsCurrency>0 then
                     FIN_CD_M_REC_PAG.FieldByName('ID_PLANO_JUROS').AsString   :=
                             CAD_CD_C_FPG.FieldByName('pag_id_plano_juros').AsString;
                  if cds.FieldByName('VLR_DESCONTO').AsCurrency>0 then
                     FIN_CD_M_REC_PAG.FieldByName('ID_PLANO_DESCONTO').AsString:=
                           CAD_CD_C_FPG.FieldByName('pag_id_plano_desconto').AsString;
                  FIN_CD_M_REC_PAG.FieldByName('ID_RESPONSAVEL').AsInteger  :=
                     Dataset.FieldByName('id_responsavel').AsInteger;
                  FIN_CD_M_REC_PAG.FieldByName('ID_CCUSTO').AsInteger       :=
                     lCentroCustoRBX;
                  FIN_CD_M_REC_PAG.FieldByName('ORIGEM').AsInteger  := 0;

                  FIN_CD_M_REC_PAG.FieldByName('com_substituicao').AsBoolean := false;
                  // Se for baixa com Duplicata, Promissória, Cartão e Cheque,
                  if (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 1) or   // Duplicata
                     (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 2) or   // Promissória
                     (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3) or   // Cartão
                     (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 4) or   // Boleto
                     (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6) then // Cheque
                      begin
                        FIN_CD_M_REC_PAG.FieldByName('com_substituicao').AsBoolean := true;

                         { FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString       :=
                               'Substituição ref. baixa: '+ inttostr(xIdBaixa)+', do cliente: ' +
                                  dataset.FieldByName('int_nomecli').AsString; }
                      end;

                  FIN_CD_M_REC_PAG.FieldByName('id_empresa_bxa').AsInteger  :=
                          Dataset.FieldByName('id_empresa').AsInteger;

                  FIN_CD_M_REC_PAG.Post;
                end;

             //caixa/banco


              if FIN_CD_M_CTA.Locate('ID_BAIXA_RBX;ID_TITULO_REC',varArrayOf([xIdBaixa,xIdTitulo]),[]) then
                begin
                  if cds.UpdateStatus in [usDeleted] then
                     begin
                       FIN_CD_M_CTA.Delete;
                     end
                  else
                     begin
                        if CAD_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=true then
                          begin
                             FIN_CD_M_CTA.Edit;
                             FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=lIdAbertura;
                             FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                             FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=CAD_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                             if lIdAbertura > 0 then
                                begin
                                  FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime;
                                  FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime;
                                end
                             else
                                begin
                                  FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('dta_baixa').AsDateTime;
                                  FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('dta_baixa').AsDateTime;
                                end;
                             FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_baixa').AsInteger;
                             FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=CAD_CD_C_TIF.FieldByName('natureza').AsInteger;

                             if (BUS_CD_C_PAR_CTR.FieldByName('rbx_gravar_obs_tit').AsBoolean=true) then
                               FIN_CD_M_CTA.FieldByName('HISTORICO').AsString       := xHistorico+' - '+NewHistoricoTit
                             else
                               FIN_CD_M_CTA.FieldByName('HISTORICO').AsString       := xHistorico;

                             if cds.FieldByName('VLR_PAGAMENTO').AsCurrency > 0 then
                                FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   :=cds.FieldByName('VLR_PAGAMENTO').AsCurrency
                             else if NewVlrPago > 0 then
                                  FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := NewVlrPago
                             else FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := oldVlrPago;

                             FIN_CD_M_CTA.FieldByName('origem').AsInteger            := 1; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
                             FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          :=
                                 lContaRBX;
                             FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                                 lTipoFinRBX;
                             FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                                 lPlanoRBX;
                             FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger      := dataset.FieldByName('id_baixa').AsInteger;
                             FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger     := xIdTitulo;
                             FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger      := 0;
                             FIN_CD_M_CTA.FieldByName('id_titulo_pag').AsInteger     := 0;
                             FIN_CD_M_CTA.FieldByName('conciliado').Asboolean        := false;
                             FIN_CD_M_CTA.FieldByName('dta_conciliacao').AsString  := '';
                             if lFazConciliacao = true then
                                begin
                                  FIN_CD_M_CTA.FieldByName('conciliado').Asboolean       := true;
                                  FIN_CD_M_CTA.FieldByName('dta_conciliacao').AsDateTime :=
                                       FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime;
                                end;
                             FIN_CD_M_CTA.Post;
                          end
                        else
                          begin
                             FIN_CD_M_CTA.Delete;
                          end
                     end
                end
              else
                begin
                  if CAD_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=true then
                    begin
                       FIN_CD_M_CTA.Append;
                       FIN_CD_M_CTA.FieldByName('id_controle').AsInteger       :=sm.enValorChave('FIN_TB_M_CTA');
                       FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=lIdAbertura;
                       FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                       FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=CAD_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                       if lIdAbertura > 0 then
                          begin
                            FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime;
                            FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime;
                          end
                       else
                          begin
                            FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('dta_baixa').AsDateTime;
                            FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('dta_baixa').AsDateTime;
                          end;
                       FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_baixa').AsInteger;
                       FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=CAD_CD_C_TIF.FieldByName('natureza').AsInteger;

                       if (BUS_CD_C_PAR_CTR.FieldByName('rbx_gravar_obs_tit').AsBoolean=true) then
                          FIN_CD_M_CTA.FieldByName('HISTORICO').AsString       := xHistorico+' - '+NewHistoricoTit
                       else
                          FIN_CD_M_CTA.FieldByName('HISTORICO').AsString       := xHistorico;

                       if cds.FieldByName('VLR_PAGAMENTO').AsCurrency > 0 then
                          FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   :=cds.FieldByName('VLR_PAGAMENTO').AsCurrency
                       else if NewVlrPago > 0 then
                            FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := NewVlrPago
                       else FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := oldVlrPago;

                       FIN_CD_M_CTA.FieldByName('origem').AsInteger            := 1; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
                       FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          :=
                           lContaRBX;
                       FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                           lTipoFinRBX;
                       FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                           lPlanoRBX;
                       FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger      := dataset.FieldByName('id_baixa').AsInteger;
                       FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger     := xIdTitulo;
                       FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger      := 0;
                       FIN_CD_M_CTA.FieldByName('id_titulo_pag').AsInteger     := 0;

                       FIN_CD_M_CTA.FieldByName('conciliado').Asboolean := false;
                       FIN_CD_M_CTA.FieldByName('dta_conciliacao').AsString := '';

                       if dataset.FieldByName('faz_conciliacao').AsBoolean then
                          begin
                            FIN_CD_M_CTA.FieldByName('conciliado').Asboolean       := true;
                            FIN_CD_M_CTA.FieldByName('dta_conciliacao').AsDateTime :=
                                FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime;
                          end;

                       FIN_CD_M_CTA.Post;
                    end;
                end;


            { if CAD_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=true then
                begin
                   FIN_CD_M_CTA.Append;
                   FIN_CD_M_CTA.FieldByName('id_controle').AsInteger       :=sm.enValorChave('FIN_TB_M_CTA');
                   FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=lIdAbertura;
                   FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                   FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=CAD_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                   if lIdAbertura > 0 then
                      begin
                        FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime;
                        FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime;
                      end
                   else
                      begin
                        FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('dta_baixa').AsDateTime;
                        FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('dta_baixa').AsDateTime;
                      end;
                   FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_baixa').AsInteger;
                   FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=CAD_CD_C_TIF.FieldByName('natureza').AsInteger;
                   FIN_CD_M_CTA.FieldByName('historico').AsString          :=xHistorico;
                   if cds.FieldByName('VLR_PAGAMENTO').AsCurrency > 0 then
                      FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   :=cds.FieldByName('VLR_PAGAMENTO').AsCurrency
                   else if NewVlrPago > 0 then
                        FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := NewVlrPago
                   else FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := oldVlrPago;

                   FIN_CD_M_CTA.FieldByName('origem').AsInteger            := 1; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
                   FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          :=
                       lContaRBX;
                   FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                       lTipoFinRBX;
                   FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                       lPlanoRBX;
                   FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger      := dataset.FieldByName('id_baixa').AsInteger;
                   FIN_CD_M_CTA.FieldByName('conciliado').Asboolean        := false;
                   FIN_CD_M_CTA.Post;
                end;  }


             // Írá atualizar o saldo do título, que está no RBX_TIT.
             if not FIN_CD_M_REC.IsEmpty then
                begin
                  if FIN_CD_M_REC.Locate('ID_TITULO',xIdTitulo,[]) then
                     begin
                        if cds.UpdateStatus in [usDeleted] then
                           begin
                             BUS_CD_M_RBX_TIT :=TClientDataSet.Create(nil);
                             BUS_CD_M_RBX_TIT.SetProvider(BUS_DP_M_RBX_TIT);
                             BUS_CD_M_RBX_TIT.Close;
                             BUS_CD_M_RBX_TIT.Data :=
                             BUS_CD_M_RBX_TIT.DataRequest(VarArrayOf([0,DataSet.FieldByName('ID_BAIXA').AsString,
                                                                        FIN_CD_M_REC.FieldByName('ID_TITULO').AsString]));



                             FIN_CD_M_REC.Edit;
                             FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency    :=
                              RoundTo( (FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency +
                                 cds.FieldByName('VLR_PAGAMENTO').asCurrency +
                                 cds.FieldByName('vlr_desconto').asCurrency
                                 {+cds.FieldByName('vlr_cred_utilizado').asCurrency} -
                                (cds.FieldByName('vlr_juros').asCurrency)
                                ),-2);

                             if (not BUS_CD_M_RBX_TIT.IsEmpty) and (BUS_CD_M_RBX_TIT.FieldByName('int_ult_dta_venc').AsString <>'') then
                               begin
                                 FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                                          BUS_CD_M_RBX_TIT.FieldByName('int_ult_dta_venc').AsDateTime;
                               end
                             else if FIN_CD_M_REC.FieldByName('DTA_VENC_ORIGINAL').AsString <>'' then
                               begin
                                  FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                                            FIN_CD_M_REC.FieldByName('DTA_VENC_ORIGINAL').AsDateTime;
                               end
                             else
                               begin
                                  FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                                            FIN_CD_M_REC.FieldByName('DTA_ORIGINAL').AsDateTime;
                               end;
                             FIN_CD_M_REC.Post;
                           end
                        else
                           begin
                             FIN_CD_M_REC.Edit;

                             if (newVlrPago > 0) or (NewVlrJuros > 0) or
                                (NewVlrCredTit > 0) or
                                (NewVlrDesconto > 0) then  // ser > 0 então houve alteração
                                begin
                                  if (oldVlrPago <> newVlrPago) or ( oldVlrJuros <> NewVlrJuros) or ( oldVlrDesconto <> NewVlrDesconto) then
                                     begin
                                       FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency  :=
                                        RoundTo(   FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency +

                                          ( (OldVlrPago + oldVlrDesconto ) -
                                            (oldVlrJuros)) -

                                          ( (newVlrPago + NewVlrDesconto) -
                                            (NewVlrJuros)) ,-2);
                                     end;
                                end
                             else
                                begin
                                  if cds.FieldByName('VLR_PAGAMENTO').asCurrency > 0 then
                                     begin
                                       FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency  :=
                                       RoundTo(  FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency
                                         - ( (cds.FieldByName('VLR_PAGAMENTO').asCurrency +
                                              cds.FieldByName('VLR_DESCONTO').asCurrency) -

                                              (cds.FieldByName('VLR_JUROS').asCurrency)
                                            ) ,-2);

                                       {if  (FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency >0) THEN
                                          FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime := StrToDateTime(lDataBaixaRBX); }

                                       if  (FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency >0) and
                                           (FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime<StrToDateTime(lDataBaixaRBX))   then
                                          FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime := StrToDateTime(lDataBaixaRBX);
                                     end;
                                end;

                             FIN_CD_M_REC.Post;
                           end;
                     end;
                end;

                 //Atualiza os creditos do cliente
                if oldVlrCredito > 0 then
                  begin
                     if FIN_CD_M_RCR.Locate('ID_TITULO',xIdTitulo,[]) then
                        begin
                          if cds.UpdateStatus in [usDeleted] then
                            begin
                             FIN_CD_M_RCR.Delete;
                            end
                          else
                              if (tituloAlterado = true) then
                                 begin
                                   if (NewVlrCredTit = 0) then
                                     begin
                                       FIN_CD_M_RCR.Delete;
                                     end;
                                   if (NewVlrCredTit > 0) then
                                     begin
                                       FIN_CD_M_RCR.Edit;
                                       FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsCurrency   := NewVlrCredTit;
                                       FIN_CD_M_RCR.Post;
                                     end;
                                 end;
                        end
                     else
                        begin
                          if cds.UpdateStatus in [usInserted] then
                             begin
                               FIN_CD_M_RCR.Insert;
                               FIN_CD_M_RCR.FieldByName('ID_EMPRESA').AsInteger     := dataset.FieldByName('ID_EMPRESA').AsInteger;
                               FIN_CD_M_RCR.FieldByName('ID_CREDITO').AsInteger     := sm.enValorChave('FIN_TB_M_RCR');
                               FIN_CD_M_RCR.FieldByName('ID_CLIENTE').AsInteger     := dataset.FieldByName('ID_CLIENTE').AsInteger;
                               FIN_CD_M_RCR.FieldByName('ID_BAIXA').AsInteger       := xIdBaixa;
                               FIN_CD_M_RCR.FieldByName('ID_TITULO').AsInteger      := xIdTitulo;
                               FIN_CD_M_RCR.FieldByName('DTA_CREDITO').AsDateTime   := dataset.FieldByName('DTA_BAIXA').AsDateTime;
                               FIN_CD_M_RCR.FieldByName('ORIGEM').AsInteger         := 1;
                               FIN_CD_M_RCR.FieldByName('NUM_DOCUMENTO').AsString   := cds.FieldByName('num_parcela').AsString;
                               FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsCurrency   := cds.FieldByName('vlr_cred_utilizado').AsCurrency;
                               FIN_CD_M_RCR.FieldByName('VLR_SALDO').AsCurrency     := 0;
                               FIN_CD_M_RCR.FieldByName('HISTORICO').AsString       :=
                                   'Crédito utilizado na baixa de contas a receber nº ' + inttostr(xIdBaixa);
                               FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger      := 0;
                               FIN_CD_M_RCR.Post;
                             end;
                        end;
                  end;


             cds.Next;
           end;


         // Geração da Duplicata, Promissória , Cartão de crédito e Boleto
         {if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger in [1,2,3,4] then // Baixa com Duplicata, Promissória , Cartão de crédito e Boleto
            begin
              FIN_CD_M_REC_XXX.SetProvider(FIN_DP_M_REC);
              FIN_CD_M_REC_XXX.Close;
              FIN_CD_M_REC_XXX.Data :=
                  FIN_CD_M_REC_XXX.DataRequest(VarArrayOf([95, lIdbaixa]));
              if not FIN_CD_M_REC_XXX.IsEmpty then
                 begin
                   FIN_CD_M_REC_XXX.Delete;
                 end;

              FIN_CD_M_REC_XXX.Insert;
              FIN_CD_M_REC_XXX.FieldByName('id_empresa').AsInteger      := dataset.FieldByName('ID_EMPRESA').AsInteger;
              FIN_CD_M_REC_XXX.FieldByName('ID_TITULO').AsInteger       := sm.enValorChave('FAT_TB_M_NFE_TIT');
              FIN_CD_M_REC_XXX.FieldByName('id_baixa').AsInteger        := lIdbaixa;
              FIN_CD_M_REC_XXX.FieldByName('id_fiscal').AsInteger       := 0;
              FIN_CD_M_REC_XXX.FieldByName('id_plano').AsString         := lPlanoRBX;
              FIN_CD_M_REC_XXX.FieldByName('id_cliente').AsInteger      := dataset.FieldByName('ID_CLIENTE').AsInteger;
              FIN_CD_M_REC_XXX.FieldByName('num_parcela').AsString      := InttoStr(lIdbaixa);
              FIN_CD_M_REC_XXX.FieldByName('dta_emissao').AsDateTime    := strtodate(lDataBaixaRBX);
              FIN_CD_M_REC_XXX.FieldByName('vlr_original').AsCurrency   := lVlrBaixa;
              FIN_CD_M_REC_XXX.FieldByName('dta_vencimento').AsDateTime := strtodate(lDataBaixaRBX);
              FIN_CD_M_REC_XXX.FieldByName('dta_original').AsDateTime   := strtodate(lDataBaixaRBX);
              FIN_CD_M_REC_XXX.FieldByName('vlr_parcela').AsCurrency    := lVlrBaixa;
              FIN_CD_M_REC_XXX.FieldByName('vlr_saldo').AsCurrency      := lVlrBaixa;

              if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 1 then // Baixa com Duplicata
                 FIN_CD_M_REC_XXX.FieldByName('historico').AsString     :=
                                       'Duplicata gerada da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                                        dataset.FieldByName('int_nomecli').AsString;
              if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 2 then // Baixa com Promissória
                 FIN_CD_M_REC_XXX.FieldByName('historico').AsString     :=
                                       'Promissória gerada da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                                        dataset.FieldByName('int_nomecli').AsString;
              if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Baixa com Cartão de crédito
                 FIN_CD_M_REC_XXX.FieldByName('historico').AsString     :=
                                       'Cartão gerado da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                                        dataset.FieldByName('int_nomecli').AsString;
              if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 4 then // Baixa com Boleto
                 FIN_CD_M_REC_XXX.FieldByName('historico').AsString     :=
                                       'Boleto gerado da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                                        dataset.FieldByName('int_nomecli').AsString;
              // Origem
                 // 0 - Manual
                 // 1 - Baixa do contas a receber
                 // 2 - Nota Fiscal de Saída
              FIN_CD_M_REC_XXX.FieldByName('origem').AsInteger           := 1;
              FIN_CD_M_REC_XXX.FieldByName('id_forma_pag').AsInteger     := lFormaPagRBX;
              FIN_CD_M_REC_XXX.FieldByName('id_local_titulo').AsString   := CAD_CD_C_FPG.FieldByName('id_local_titulo').AsString;
              FIN_CD_M_REC_XXX.FieldByName('car_id_maquineta').AsString  := lIdMaquineta;
              // Tipo lançamento
                 // 0 - Manual
                 // 1 - Automática
              FIN_CD_M_REC_XXX.FieldByName('tipo_lancamento').AsInteger := 1;
              FIN_CD_M_REC_XXX.FieldByName('che_banco').AsString        := '';
              FIN_CD_M_REC_XXX.FieldByName('che_agencia').AsString      := '';
              FIN_CD_M_REC_XXX.FieldByName('che_conta').AsString        := '';
              FIN_CD_M_REC_XXX.FieldByName('che_cheque').AsInteger      := 0;
              FIN_CD_M_REC_XXX.FieldByName('che_emitente').AsString     := '';
              FIN_CD_M_REC_XXX.Post;


              //caixa/banco
              if CAD_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=true then
                 begin
                   FIN_CD_M_CTA.Append;
                   FIN_CD_M_CTA.FieldByName('id_controle').AsInteger       := sm.enValorChave('FIN_TB_M_CTA');
                   FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       := lIdAbertura;
                   FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        := dataset.FieldByName('id_empresa').AsInteger;
                   FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   := CAD_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco

                   if lIdAbertura > 0 then
                      begin
                        FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   := FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime;
                        FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    := FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime;
                      end
                   else
                      begin
                        FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   := dataset.FieldByName('dta_baixa').AsDateTime;
                        FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    := dataset.FieldByName('dta_baixa').AsDateTime;
                      end;
                   FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           := dataset.FieldByName('id_baixa').AsInteger;
                   FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           := CAD_CD_C_TIF.FieldByName('natureza').AsInteger;
                   FIN_CD_M_CTA.FieldByName('historico').AsString          :=
                           'Recebimento ref. baixa: '+ inttostr(xIdBaixa)+', do cliente: ' +
                                    dataset.FieldByName('int_nomecli').AsString;
                   FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := lVlrBaixa;

                   FIN_CD_M_CTA.FieldByName('origem').AsInteger            := 1; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
                   FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          :=
                       lContaRBX;
                   FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                       lTipoFinRBX;
                   FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                       lPlanoRBX;
                   FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger      := dataset.FieldByName('id_baixa').AsInteger;
                   FIN_CD_M_CTA.FieldByName('conciliado').Asboolean        := false;
                   FIN_CD_M_CTA.Post;
                 end;
            end;   }


         // Este while refere-se a RBX_GER
         cds_rbx_ger.First;
         while not (cds_rbx_ger.Eof)  do
             begin
               xIdControleGer     := cds_rbx_ger.FieldByName('id_controle').AsInteger;
               xDtaVencimentoGer  := cds_rbx_ger.FieldByName('dta_vencimento').AsDateTime;
               xVlrPagamento      := cds_rbx_ger.FieldByName('vlr_pagamento').AsCurrency;
               xCheConta          := cds_rbx_ger.FieldByName('che_conta').AsInteger;
               xCheCheque         := cds_rbx_ger.FieldByName('che_cheque').AsInteger;
               xCheBanco          := cds_rbx_ger.FieldByName('che_banco').AsString;
               xCheEmitente       := cds_rbx_ger.FieldByName('che_emitente').AsString;
               xCheAgencia        := cds_rbx_ger.FieldByName('che_agencia').AsString;

               if cds_rbx_ger.UpdateStatus in [usUnmodified] then
                  begin

                    cds_rbx_ger.Next;

                    // Neste momento ele pega os novos valores caso tenha
                    if (cds_rbx_ger.FieldByName('id_controle').text <> '')  and
                       (cds_rbx_ger.FieldByName('id_controle').text <> '0') then
                        xIdControleGer     := cds_rbx_ger.FieldByName('id_controle').AsInteger;
                    if cds_rbx_ger.FieldByName('dta_vencimento').text <> '' then
                       xDtaVencimentoGer  := cds_rbx_ger.FieldByName('dta_vencimento').AsDateTime;
                    if (cds_rbx_ger.FieldByName('vlr_pagamento').text <> '')  and
                       (cds_rbx_ger.FieldByName('vlr_pagamento').text <> '0') then
                        xVlrPagamento     := cds_rbx_ger.FieldByName('vlr_pagamento').AsCurrency;
                    if (cds_rbx_ger.FieldByName('che_conta').text <> '')  and
                       (cds_rbx_ger.FieldByName('che_conta').text <> '0') then
                        xCheConta          := cds_rbx_ger.FieldByName('che_conta').AsInteger;
                    if (cds_rbx_ger.FieldByName('che_cheque').text <> '')  and
                       (cds_rbx_ger.FieldByName('che_cheque').text <> '0') then
                        xCheCheque         := cds_rbx_ger.FieldByName('che_cheque').AsInteger;
                    if cds_rbx_ger.FieldByName('che_banco').text <> '' then
                        xCheBanco          := cds_rbx_ger.FieldByName('che_banco').AsString;
                    if cds_rbx_ger.FieldByName('che_emitente').text <> '' then
                       xCheEmitente       := cds_rbx_ger.FieldByName('che_emitente').AsString;
                    if cds_rbx_ger.FieldByName('che_agencia').text <> '' then
                       xCheAgencia        := cds_rbx_ger.FieldByName('che_agencia').AsString;
                  end;

               if FIN_CD_M_REC.Locate('ID_TITULO',xIdControleGer,[]) then
                  begin
                    if cds_rbx_ger.UpdateStatus in [usDeleted] then
                       begin
                         FIN_CD_M_REC.Delete;
                       end
                    else
                       begin
                          FIN_CD_M_REC.edit;
                          FIN_CD_M_REC.FieldByName('id_forma_pag').AsInteger    :=   lFormaPagRBX;
                          FIN_CD_M_REC.FieldByName('num_parcela').AsString      :=   inttostr(xIdControleGer);
                          //FIN_CD_M_REC.FieldByName('historico').AsString        :=
                          //                          'Chq. gerado da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                          //                          dataset.FieldByName('int_nomecli').AsString;
                          FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency    :=   xVlrPagamento;
                          FIN_CD_M_REC.FieldByName('vlr_original').AsCurrency   :=   xVlrPagamento;
                          FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency      :=   xVlrPagamento;
                          FIN_CD_M_REC.FieldByName('dta_emissao').AsString      :=   lDataBaixaRBX;
                          FIN_CD_M_REC.FieldByName('dta_vencimento').AsDateTime :=   xDtaVencimentoGer;
                          FIN_CD_M_REC.FieldByName('dta_original').AsDateTime   :=   xDtaVencimentoGer;
                          FIN_CD_M_REC.FieldByName('id_fiscal').AsInteger       :=   0;
                          FIN_CD_M_REC.FieldByName('origem').AsInteger          :=   1;

                          FIN_CD_M_REC.FieldByName('che_conta').AsInteger       :=   xCheConta;
                          FIN_CD_M_REC.FieldByName('che_cheque').AsInteger      :=   xCheCheque;
                          FIN_CD_M_REC.FieldByName('che_banco').AsString        :=   xCheBanco;
                          FIN_CD_M_REC.FieldByName('che_emitente').AsString     :=   xCheEmitente;

                          FIN_CD_M_REC.FieldByName('che_agencia').AsString      :=   xCheAgencia;
                          FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger :=   1; // Automático
                          FIN_CD_M_REC.FieldByName('id_local_titulo').AsInteger :=   CAD_CD_C_FPG.FieldByName('ID_LOCAL_TITULO').AsInteger;
                          FIN_CD_M_REC.FieldByName('id_plano').AsString         :=   lPlanoRBX;
                          FIN_CD_M_REC.FieldByName('cod_lme').AsString          :=   '';
                          FIN_CD_M_REC.FieldByName('rev_lme').AsString          :=   '';

                          if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6 then // Cheque
                             FIN_CD_M_REC.FieldByName('situacao_chq').AsInteger :=   1;

                          FIN_CD_M_REC.Post;
                       end;
                  end
                else
                    begin
                      FIN_CD_M_REC.Insert;
                      FIN_CD_M_REC.FieldByName('id_empresa').AsInteger         := dataset.FieldByName('ID_EMPRESA').AsInteger;
                      FIN_CD_M_REC.FieldByName('dta_emissao').AsDateTime       := dataset.FieldByName('DTA_BAIXA').AsDateTime;
                      FIN_CD_M_REC.FieldByName('id_cliente').AsInteger         := dataset.FieldByName('ID_CLIENTE').AsInteger;
                      FIN_CD_M_REC.FieldByName('id_titulo').AsInteger          := xIdControleGer;
                      FIN_CD_M_REC.FieldByName('id_forma_pag').AsInteger       := lFormaPagRBX;
                      FIN_CD_M_REC.FieldByName('num_parcela').AsString         :=   inttostr(xIdControleGer);

                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 1 then // Baixa com Duplicata
                         FIN_CD_M_REC.FieldByName('historico').AsString     :=
                                               'Duplicata gerada da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                                                dataset.FieldByName('int_nomecli').AsString;
                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 2 then // Baixa com Promissória
                         FIN_CD_M_REC.FieldByName('historico').AsString     :=
                                               'Promissória gerada da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                                                dataset.FieldByName('int_nomecli').AsString;
                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Baixa com Cartão de crédito
                         FIN_CD_M_REC.FieldByName('historico').AsString     :=
                                               'Cartão gerado da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                                                dataset.FieldByName('int_nomecli').AsString;
                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 4 then // Baixa com Boleto
                         FIN_CD_M_REC.FieldByName('historico').AsString     :=
                                               'Boleto gerado da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                                                dataset.FieldByName('int_nomecli').AsString;
                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6 then // Cheque
                         FIN_CD_M_REC.FieldByName('historico').AsString        :=
                                               'Chq. gerado da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                                                dataset.FieldByName('int_nomecli').AsString;

                      FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency    :=   xVlrPagamento;
                      FIN_CD_M_REC.FieldByName('vlr_original').AsCurrency   :=   xVlrPagamento;
                      FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency      :=   xVlrPagamento;
                      FIN_CD_M_REC.FieldByName('dta_emissao').AsString      :=   lDataBaixaRBX;
                      FIN_CD_M_REC.FieldByName('dta_vencimento').AsDateTime :=   xDtaVencimentoGer;
                      FIN_CD_M_REC.FieldByName('dta_original').AsDateTime   :=   xDtaVencimentoGer;
                      FIN_CD_M_REC.FieldByName('id_fiscal').AsInteger       :=   0;
                      FIN_CD_M_REC.FieldByName('origem').AsInteger          :=   1;

                      FIN_CD_M_REC.FieldByName('che_conta').AsInteger       :=   xCheConta;
                      FIN_CD_M_REC.FieldByName('che_cheque').AsInteger      :=   xCheCheque;
                      FIN_CD_M_REC.FieldByName('che_banco').AsString        :=   xCheBanco;
                      FIN_CD_M_REC.FieldByName('che_emitente').AsString     :=   xCheEmitente;

                      FIN_CD_M_REC.FieldByName('che_agencia').AsString      :=   xCheAgencia;
                      FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger :=   1; // Automático
                      FIN_CD_M_REC.FieldByName('id_local_titulo').AsInteger :=   CAD_CD_C_FPG.FieldByName('ID_LOCAL_TITULO').AsInteger;
                      FIN_CD_M_REC.FieldByName('id_baixa').AsInteger        :=   lIdbaixa;
                      FIN_CD_M_REC.FieldByName('id_plano').AsString         :=   lPlanoRBX;
                      FIN_CD_M_REC.FieldByName('cod_lme').AsString          :=   '';
                      FIN_CD_M_REC.FieldByName('rev_lme').AsString          :=   '';

                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6 then // Cheque
                         FIN_CD_M_REC.FieldByName('situacao_chq').AsInteger :=   1;
                    end;
               cds_rbx_ger.Next;
             end;

             //Gera Nota de Credito caso total pago dos novos titulos for maior que o total a pagar dos titulos baixados
             if (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6) then  //Cheque
                begin
                  FIN_CD_M_RCR  :=TClientDataSet.Create(nil);
                  FIN_CD_M_RCR.SetProvider(FIN_DP_M_RCR);
                  FIN_CD_M_RCR.Close;
                  FIN_CD_M_RCR.Data :=
                        FIN_CD_M_RCR.DataRequest(VarArrayOf([91, Dataset.FieldByName('ID_BAIXA').AsString,
                                                         Dataset.FieldByName('ID_CLIENTE').AsString]));

                  if not FIN_CD_M_RCR.IsEmpty then
                    begin
                      if lvlrBaixa < lvlrTotalPago then
                        begin
                          FIN_CD_M_RCR.Edit;
                          FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsCurrency := lvlrTotalPago - lvlrBaixa;
                          FIN_CD_M_RCR.Post;
                        end
                      else
                        begin
                          FIN_CD_M_RCR.Delete;
                        end;
                    end
                  else
                    begin
                       if (lvlrBaixa < lvlrTotalPago) then
                       begin
                          FIN_CD_M_RCR.Insert;
                          FIN_CD_M_RCR.FieldByName('ID_EMPRESA').AsInteger     := dataset.FieldByName('ID_EMPRESA').AsInteger;
                          FIN_CD_M_RCR.FieldByName('ID_CREDITO').AsInteger     := sm.enValorChave('FIN_TB_M_RCR');
                          FIN_CD_M_RCR.FieldByName('ID_CLIENTE').AsInteger     := dataset.FieldByName('ID_CLIENTE').AsInteger;
                          FIN_CD_M_RCR.FieldByName('ID_BAIXA').AsInteger       :=  Dataset.FieldByName('ID_BAIXA').AsInteger;
                          FIN_CD_M_RCR.FieldByName('ID_FORMA_PAG').AsInteger   := BUS_CD_C_PAR_CTR.FieldByName('RCR_ID_FORMA_PAG').AsInteger;
                          FIN_CD_M_RCR.FieldByName('DTA_CREDITO').AsDateTime   := dataset.FieldByName('DTA_BAIXA').AsDateTime;
                          FIN_CD_M_RCR.FieldByName('ORIGEM').AsInteger         := 1;
                          FIN_CD_M_RCR.FieldByName('NUM_DOCUMENTO').AsInteger :=  Dataset.FieldByName('ID_BAIXA').AsInteger;
                          FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsCurrency   := lvlrTotalPago - lvlrBaixa;
                          FIN_CD_M_RCR.FieldByName('VLR_SALDO').AsCurrency     := 0;
                          FIN_CD_M_RCR.FieldByName('HISTORICO').AsString       :=
                                   'Crédito gerado na baixa de contas a receber nº ' + Dataset.FieldByName('ID_BAIXA').AsString;
                               FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger      := 1;

                          FIN_CD_M_RCR.Post;
                       end;
                    end;
                end;




         // Credito do Cliente
         {xIdCliente    := dataset.FieldByName('ID_CLIENTE').AsInteger;
         newVlrCredito := 0;
         oldVlrCredito := Dataset.FieldByName('vlr_cred_utilizado').AsCurrency;

         if dataset.UpdateStatus in [usUnmodified] then
            begin
              dataset.Next;
              if dataset.UpdateStatus in [usModified] then
                 begin
                   if Dataset.FieldByName('vlr_cred_utilizado').AsCurrency > 0 then
                      newVlrCredito:= Dataset.FieldByName('vlr_cred_utilizado').AsCurrency;
                 end;
              dataset.Prior;
            end;

         if oldVlrCredito > 0 then
            begin
               FIN_CD_M_RCR.SetProvider(FIN_DP_M_RCR);
               FIN_CD_M_RCR.Close;
                    FIN_CD_M_RCR.Data :=
                        FIN_CD_M_RCR.DataRequest(VarArrayOf([4,xIdBaixa,xIdTitulo]));

               if not FIN_CD_M_RCR.IsEmpty then
                  begin
                     if (newVlrCredito > 0) and (oldVlrCredito <> newVlrCredito) then
                         begin
                           FIN_CD_M_RCR.Edit;
                           FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsCurrency   := NewVlrCredTit;
                           FIN_CD_M_RCR.Post;
                         end;
                   end
               else
                   begin
                     FIN_CD_M_RCR.Insert;
                     FIN_CD_M_RCR.FieldByName('ID_EMPRESA').AsInteger     := dataset.FieldByName('ID_EMPRESA').AsInteger;
                     FIN_CD_M_RCR.FieldByName('ID_CREDITO').AsInteger     := sm.enValorChave('FIN_TB_M_RCR');
                     FIN_CD_M_RCR.FieldByName('ID_CLIENTE').AsInteger     := dataset.FieldByName('ID_CLIENTE').AsInteger;
                     FIN_CD_M_RCR.FieldByName('ID_BAIXA').AsInteger       := xIdBaixa;
                     FIN_CD_M_RCR.FieldByName('ID_TITULO').AsInteger      := xIdTitulo;
                     FIN_CD_M_RCR.FieldByName('DTA_CREDITO').AsDateTime   := dataset.FieldByName('DTA_BAIXA').AsDateTime;
                     FIN_CD_M_RCR.FieldByName('ORIGEM').AsInteger         := 1;
                     FIN_CD_M_RCR.FieldByName('NUM_DOCUMENTO').AsString   := cds.FieldByName('num_parcela').AsString;
                     FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsCurrency   := oldVlrCredito;
                     FIN_CD_M_RCR.FieldByName('HISTORICO').AsString       :=
                         'Crédito utilizado na baixa de contas a receber nº ' + inttostr(xIdBaixa);
                     FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger      := 0;
                     FIN_CD_M_RCR.Post;
                   end;
            end;}

         if CAD_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=false then
            begin
               //Deleta Conta Corrente
               FIN_CD_M_CTA.Free;

               FIN_CD_M_CTA    :=TClientDataSet.Create(nil);
               FIN_CD_M_CTA.SetProvider(FIN_DP_M_CTA);

               FIN_CD_M_CTA.Close;
               FIN_CD_M_CTA.Data :=
                   FIN_CD_M_CTA.DataRequest(VarArrayOf([93, lIdbaixa]));


               if not (FIN_CD_M_CTA.IsEmpty) then
                  begin
                    while not (FIN_CD_M_CTA.Eof)  do
                      begin
                        FIN_CD_M_CTA.Delete;
                      end;
                  end;
            end;

         if not (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger  in [1,2,3,4,6]) then
            begin
              { CAD_CD_C_CLI.SetProvider(CAD_DP_C_CLI);
               CAD_CD_C_CLI.Close;
               CAD_CD_C_CLI.Data :=
               CAD_CD_C_CLI.DataRequest(VarArrayOf([0, Dataset.FieldByName('ID_CLIENTE').AsString])); }

               if dataset.UpdateStatus in [usInserted] then
                  begin
                    CAD_CD_C_CLI.Edit;
                    CAD_CD_C_CLI.FieldByName('lim_saldo').AsCurrency :=
                        CAD_CD_C_CLI.FieldByName('lim_saldo').AsCurrency + vlrTotalSaldoAnt;
                    CAD_CD_C_CLI.Post;
                  end
               else
                  begin
                    CAD_CD_C_CLI.Edit;
                    CAD_CD_C_CLI.FieldByName('lim_saldo').AsCurrency :=
                        (CAD_CD_C_CLI.FieldByName('lim_saldo').AsCurrency - vlrTotalSaldoAnt)+vlrTotalSaldoNew;
                    CAD_CD_C_CLI.Post;
                  end;

               if not (CAD_CD_C_CLI.ApplyUpdates(0) = 0) then
                  raise Exception.Create('Erro ao tentar atualizar a tabela de cliente.');
            end;
       end
    else
       begin
         BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);

         BUS_CD_C_PAR_CTR.Close;
         BUS_CD_C_PAR_CTR.Data :=
         BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([dataset.FieldByName('ID_EMPRESA').AsString]));

         CAD_CD_C_CLI.SetProvider(CAD_DP_C_CLI);
         CAD_CD_C_CLI.Close;
         CAD_CD_C_CLI.Data :=
         CAD_CD_C_CLI.DataRequest(VarArrayOf([0, Dataset.FieldByName('ID_CLIENTE').AsString]));

         CAD_CD_C_CLI_CRD.DataSetField     := TDataSetField(CAD_CD_C_CLI.FieldByName('CAD_SQ_C_CLI_CRD'));

         CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
         CAD_CD_C_FPG.Close;
         CAD_CD_C_FPG.Data :=
         CAD_CD_C_FPG.DataRequest(VarArrayOf([0,Dataset.FieldByName('id_forma_pag').AsString]));

         FIN_CD_M_REC.SetProvider(FIN_DP_M_REC);
         //FIN_CD_M_REC.IndexFieldNames:='ID_TITULO';
         //FIN_CD_M_REC.Open;

         newVlrCredito:= Dataset.FieldByName('vlr_cred_utilizado').AsCurrency;

         FIN_CD_M_RBX_TIT.SetProvider(FIN_DP_M_RBX_TIT_INT);
         FIN_CD_M_RBX_TIT.Close;
             FIN_CD_M_RBX_TIT.Data :=
                  FIN_CD_M_RBX_TIT.DataRequest(VarArrayOf([0, Dataset.FieldByName('ID_BAIXA').AsString]));
         if not (FIN_CD_M_RBX_TIT.IsEmpty) then
            begin

              // Reuni os títulos do RBX_TIT
              xTitulos := '';
              while not (FIN_CD_M_RBX_TIT.Eof)  do
                 begin
                    if xTitulos <> '' then
                       begin
                         xTitulos :=
                         xTitulos + ',' +''''+ FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString+'''';
                       end;
                    if xTitulos = '' then
                       begin
                         xTitulos :=
                         xTitulos +''''+FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString+'''';
                       end;
                    FIN_CD_M_RBX_TIT.Next;
                 end;

              FIN_CD_M_RBX_TIT.First;

              FIN_CD_M_REC.Close;
              FIN_CD_M_REC.Data :=
                  FIN_CD_M_REC.DataRequest(VarArrayOf([91, xTitulos]));


              while not (FIN_CD_M_RBX_TIT.Eof)  do
                begin
                  OldVlrPago     := FIN_CD_M_RBX_TIT.FieldByName('VLR_PAGAMENTO').asCurrency;
                  oldVlrJuros    := FIN_CD_M_RBX_TIT.FieldByName('VLR_JUROS').asCurrency;
                  oldVlrDesconto := FIN_CD_M_RBX_TIT.FieldByName('VLR_DESCONTO').asCurrency;
                  oldVlrCredTit  := FIN_CD_M_RBX_TIT.FieldByName('vlr_cred_utilizado').asCurrency;

                  vlrTotalSaldoAnt :=  vlrTotalSaldoAnt + (OldVlrPago +oldVlrDesconto) - oldVlrJuros;

                  xIdTitulo  :=FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').asInteger;

                  //Recalcula saldo dos titulos
                  FIN_CD_M_REC.First;
                  if FIN_CD_M_REC.locate('ID_TITULO',xIdTitulo,[]) then
                     begin


                        if (BUS_CD_C_PAR_CTR.FieldByName('limite_cred_fpg').AsBoolean = true) and
                            (not (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger  in [1,2,3,4,6])) then
                            begin

                               if FIN_CD_M_REC.FieldBYname('INT_DOCIMPRESSO').AsInteger in [1,2,4] then
                                  begin
                                    if CAD_CD_C_CLI_CRD.Locate('ID_FORMA_PAG',FIN_CD_M_REC.FieldByName('ID_FORMA_PAG').AsString,[]) then
                                      begin
                                         CAD_CD_C_CLI_CRD.Edit;
                                         CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
                                           CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency -
                                              vlrTotalSaldoAnt;
                                      end
                                    else
                                      begin
                                         CAD_CD_C_CLI_CRD.Insert;
                                         CAD_CD_C_CLI_CRD.FieldByName('id_forma_pag').AsInteger :=
                                                           FIN_CD_M_REC.FieldByName('ID_FORMA_PAG').AsInteger;

                                         CAD_CD_C_CLI_CRD.FieldByname('lim_valor').AsCurrency :=0;
                                         CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
                                                       sm.enBusNovoSldlimCli(FIN_CD_M_REC.FieldByname('ID_EMPRESA').AsString,
                                                                                 FIN_CD_M_REC.FieldByName('ID_CLIENTE').AsString,
                                                                                 FIN_CD_M_REC.FieldByName('id_forma_pag').AsString,0);

                                         CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
                                            CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency -
                                                vlrTotalSaldoAnt;
                                      end;


                                   CAD_CD_C_CLI_CRD.Post;
                                  end;

                            end;



                        BUS_CD_M_RBX_TIT :=TClientDataSet.Create(nil);
                        BUS_CD_M_RBX_TIT.SetProvider(BUS_DP_M_RBX_TIT);
                        BUS_CD_M_RBX_TIT.Close;
                        BUS_CD_M_RBX_TIT.Data :=
                        BUS_CD_M_RBX_TIT.DataRequest(VarArrayOf([0,DataSet.FieldByName('ID_BAIXA').AsString,
                                                                        FIN_CD_M_REC.FieldByName('ID_TITULO').AsString]));



                       FIN_CD_M_REC.Edit;
                       FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency  :=
                        RoundTo(  (FIN_CD_M_REC.FieldByName('VLR_SALDO').asCurrency +
                          OldVlrPago + oldVlrDesconto {+ oldVlrCredTit} ) - oldVlrJuros ,-2);

                       if (not BUS_CD_M_RBX_TIT.IsEmpty) and (BUS_CD_M_RBX_TIT.FieldByName('int_ult_dta_venc').AsString <>'')  then
                           begin
                             FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                                      BUS_CD_M_RBX_TIT.FieldByName('int_ult_dta_venc').AsDateTime;
                           end
                       else if FIN_CD_M_REC.FieldByName('DTA_VENC_ORIGINAL').AsString <>'' then
                           begin
                              FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                                        FIN_CD_M_REC.FieldByName('DTA_VENC_ORIGINAL').AsDateTime;
                           end
                       else
                           begin
                              FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                                        FIN_CD_M_REC.FieldByName('DTA_ORIGINAL').AsDateTime;
                           end;

                       FIN_CD_M_REC.Post;
                     end;

                  FIN_CD_M_RBX_TIT.Next;
                end;
            end;


          if not (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger  in [1,2,3,4,6]) then
            begin
             {  CAD_CD_C_CLI.SetProvider(CAD_DP_C_CLI);
               CAD_CD_C_CLI.Close;
               CAD_CD_C_CLI.Data :=
               CAD_CD_C_CLI.DataRequest(VarArrayOf([0, Dataset.FieldByName('ID_CLIENTE').AsString])); }

               CAD_CD_C_CLI.Edit;
               CAD_CD_C_CLI.FieldByName('lim_saldo').AsCurrency :=
                        CAD_CD_C_CLI.FieldByName('lim_saldo').AsCurrency - vlrTotalSaldoAnt;
               CAD_CD_C_CLI.Post;

               if not (CAD_CD_C_CLI.ApplyUpdates(0) = 0) then
                  raise Exception.Create('Erro ao tentar atualizar a tabela de cliente.');
            end;

         //Deleta Historico de pagamento
         FIN_CD_M_REC_PAG.SetProvider(FIN_DP_M_REC_PAG);
         FIN_CD_M_REC_PAG.Close;
         FIN_CD_M_REC_PAG.Data :=
         FIN_CD_M_REC_PAG.DataRequest(VarArrayOf([0, Dataset.FieldByName('ID_BAIXA').AsString]));
         if not (FIN_CD_M_REC_PAG.IsEmpty) then
           begin
             while not (FIN_CD_M_REC_PAG.Eof)  do
               begin
                 FIN_CD_M_REC_PAG.Delete;
               end;
           end;

        //Deleta Conta Corrente
        FIN_CD_M_CTA.SetProvider(FIN_DP_M_CTA);
        FIN_CD_M_CTA.Close;
        FIN_CD_M_CTA.Data :=
        FIN_CD_M_CTA.DataRequest(VarArrayOf([93, Dataset.FieldByName('ID_BAIXA').AsString]));
        if not (FIN_CD_M_CTA.IsEmpty) then
           begin
             while not (FIN_CD_M_CTA.Eof)  do
               begin
                 FIN_CD_M_CTA.Delete;
               end;
           end;

        //Deleta Crédito
        FIN_CD_M_RCR.SetProvider(FIN_DP_M_RCR);
        FIN_CD_M_RCR.Close;
            FIN_CD_M_RCR.Data :=
                 FIN_CD_M_RCR.DataRequest(VarArrayOf([91, Dataset.FieldByName('ID_BAIXA').AsString,
                                                         Dataset.FieldByName('ID_CLIENTE').AsString]));
        if not (FIN_CD_M_RCR.IsEmpty) then
           begin
             while not (FIN_CD_M_RCR.Eof)  do
               begin
                 FIN_CD_M_RCR.Delete;
               end;
           end;

        //Deleta os títulos que foram gerados pela baixa do contas a receber.
        FIN_CD_M_REC_XXX.SetProvider(FIN_DP_M_REC);
        FIN_CD_M_REC_XXX.Close;
        FIN_CD_M_REC_XXX.Data :=
            FIN_CD_M_REC_XXX.DataRequest(VarArrayOf([95, Dataset.FieldByName('ID_BAIXA').AsString]));
        if not FIN_CD_M_REC_XXX.IsEmpty then
           begin
             while not FIN_CD_M_REC_XXX.eof do
                begin
                   if FIN_CD_M_REC_XXX.FieldByName('VLR_PARCELA').asCurrency <>
                      FIN_CD_M_REC_XXX.FieldByName('VLR_SALDO').asCurrency then
                      begin
                        FIN_CD_M_REC_XXX.Close;
                        raise Exception.Create('Existe títulos gerado por essa baixa que já foram movimentados.');
                      end;
                   FIN_CD_M_REC_XXX.Delete;
                end;
           end;
       end;
    //Grava no banco

  if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
     raise Exception.Create('Erro ao tentar atualizar a tabela de recebimentos.');

  if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
     raise Exception.Create('Erro ao tentar atualizar a tabela de títulos.');

  if FIN_CD_M_REC_XXX.active=true then
     if not (FIN_CD_M_REC_XXX.ApplyUpdates(0) = 0) then
        raise Exception.Create('Erro ao tentar atualizar a tabela de títulos na geração do cartão.');


  if FIN_CD_M_CTA.Active=true then
     if not (FIN_CD_M_CTA.ApplyUpdates(0) = 0) then
        raise Exception.Create('Erro ao tentar atualizar a tabela de movimentação de caixa/banco.');

  if FIN_CD_M_RCR.Active=true then
     if not (FIN_CD_M_RCR.ApplyUpdates(0) = 0) then
        raise Exception.Create('Erro ao tentar atualizar a tabela de nota de crédito.');

  finally
    { TODO -oMariel -cProcedure : Definir uma função para Log. }
    //sm.dspUpdateData(Sender, DataSet);
    FIN_CD_M_REC_PAG.Free;
    FIN_CD_M_REC_XXX.Free;
    FIN_CD_M_REC.Free;
    FIN_CD_M_CTA.Free;
    FIN_CD_M_CXA.Free;
    CAD_CD_C_FPG.Free;
    CAD_CD_C_TIF.Free;
    CAD_CD_C_CTC.Free;
    FIN_CD_M_RCR.Free;
    FIN_CD_M_RBX_TIT.Free;
    BUS_CD_C_PAR_CTR.Free;
    CAD_CD_C_CLI.Free;
    CAD_CD_C_CLI_CRD.Free;
    BUS_CD_M_RBX_TIT.Free;
  end;
end;







end.
