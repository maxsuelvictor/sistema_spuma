unit FIN_RN_M_PBX;

interface
uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr;


function FinBxaPeqDespPbx( FIN_DP_M_CXA,
                           FIN_DP_M_PAG,FIN_DP_M_PAG_PAG, FIN_DP_M_CTA:TDataSetProvider;
                           IdFornecedor, IdAbertura, IdLocalTit, IdFormaPag,
                           IdCcusto, IdEmpresa: Integer; IdPlano, Historico: String;
                           DtaEmissao,DtaVencto, DtaOrig: TDate; VlrLancto: Currency;Conn: TSQLConnection): String;

procedure FIN_DP_M_PBXUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet;
 FIN_DP_M_PAG_PAG:TDataSetProvider;
 FIN_DP_M_PAG:TDataSetProvider;
 FIN_DP_M_CTA:TDataSetProvider;
 CAD_DP_C_FPG:TDataSetProvider;
 CAD_DP_C_CTC:TDataSetProvider;
 CAD_DP_C_TIF:TDataSetProvider;
 FIN_DP_M_PCR:TDataSetProvider;
 FIN_DP_M_PBX_TIT_INT:TDataSetProvider;
 BUS_DP_C_PAR_CTR:TDataSetProvider;sm: TSM
);

{ TODO -oMariel -cRotina :Regra de Contas a Pagar 15/10/2014 : 08:05 }


implementation

uses uServer;


function FinBxaPeqDespPbx( FIN_DP_M_CXA,FIN_DP_M_PAG,
                           FIN_DP_M_PAG_PAG,FIN_DP_M_CTA:TDataSetProvider;
                           IdFornecedor, IdAbertura, IdLocalTit, IdFormaPag,
                           IdCcusto, IdEmpresa: Integer; IdPlano,Historico: String;
                           DtaEmissao,DtaVencto, DtaOrig: TDate; VlrLancto: Currency;Conn: TSQLConnection): String;
//var
//  FIN_CD_M_CXA, FIN_CD_M_PAG, FIN_CD_M_PAG_PAG:TClientdataset;
//  Vtran: TDBXTransaction;
begin



   { TODO -oMaxsuel -cInclusão :
     Método criado em 12/05/2015
     Tem a função de gerar o título (PAG_TB_M_PAG) e a sua baixa na tabela
     PAG_TB_M_PAG_PAG. }

   // Maxsuel Victor em 03/12/2015
   // Essa rotina foi para o FIN_DP_M_PBXUpdateData por causa do método enGerFinCxaBco

   {FIN_CD_M_CXA     := TClientDataSet.Create(nil);
   FIN_CD_M_CXA.SetProvider(FIN_DP_M_CXA);
   FIN_CD_M_CXA.Close;
   FIN_CD_M_CXA.Data :=
          FIN_CD_M_CXA.DataRequest(VarArrayOf([0, IdAbertura]));


   FIN_CD_M_PAG := TClientDataSet.Create(nil);
   FIN_CD_M_PAG.SetProvider(FIN_DP_M_PAG);
   FIN_CD_M_PAG.Data :=
              FIN_CD_M_PAG.DataRequest(VarArrayOf([0,'']));

   FIN_CD_M_PAG_PAG := TClientDataSet.Create(nil);
   FIN_CD_M_PAG_PAG.SetProvider(FIN_DP_M_PAG_PAG);
   FIN_CD_M_PAG_PAG.Data :=
             FIN_CD_M_PAG_PAG.DataRequest(VarArrayOf([2,'']));

   // Registrando o título
   FIN_CD_M_PAG.Insert;
   FIN_CD_M_PAG.FieldByName('id_titulo').AsInteger       := sm.enValorChave('FIN_TB_M_PAG');
   FIN_CD_M_PAG.FieldByName('id_fornecedor').AsInteger   := IdFornecedor;
   FIN_CD_M_PAG.FieldByName('id_abertura').AsInteger     := IdAbertura;
   FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime    := DtaEmissao;
   FIN_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime := DtaVencto;
   FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime   := DtaOrig;
   FIN_CD_M_PAG.FieldByName('origem').AsInteger          := 2; //Pequenas despesas
   FIN_CD_M_PAG.FieldByName('id_local_titulo').AsInteger := IdLocalTit;
   FIN_CD_M_PAG.FieldByName('id_forma_pag').AsInteger    := IdFormaPag;
   FIN_CD_M_PAG.FieldByName('id_ccusto').AsInteger       := IdCcusto;
   FIN_CD_M_PAG.FieldByName('id_empresa').AsInteger      := IdEmpresa;
   FIN_CD_M_PAG.FieldByName('vlr_original').AsCurrency   := VlrLancto;
   FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency    := VlrLancto;
   FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency      := 0;
   FIN_CD_M_PAG.FieldByName('NUM_PARCELA').AsString      := '1/1';
   FIN_CD_M_PAG.FieldByName('HISTORICO').AsString        := Historico;
   FIN_CD_M_PAG.FieldByName('VLR_ORIGINAL').AsCurrency   := VlrLancto;
   FIN_CD_M_PAG.FieldByName('ID_FISCAL').AsInteger       := 0;
   FIN_CD_M_PAG.FieldByName('ORIGEM').AsInteger          := 2;
   FIN_CD_M_PAG.FieldByName('PRE_CONTA').AsInteger       := 0;
   FIN_CD_M_PAG.FieldByName('PRE_CHEQUE').AsString       := '0';
   FIN_CD_M_PAG.FieldByName('PRE_BANCO').AsString        := '';
   FIN_CD_M_PAG.FieldByName('PRE_EMITENTE').AsString     := '';
   FIN_CD_M_PAG.FieldByName('PRE_AGENCIA').AsString      := '';
   FIN_CD_M_PAG.FieldByName('TIPO_LANCAMENTO').AsInteger := 0;
   FIN_CD_M_PAG.FieldByName('ID_PLANO').AsString         := IdPlano;
   FIN_CD_M_PAG.FieldByName('per_multa').AsFloat         := 0;
   FIN_CD_M_PAG.FieldByName('per_juros').AsFloat         := 0;
   FIN_CD_M_PAG.Post;


   // Registrando o pagamento
   FIN_CD_M_PAG_PAG.Append;
   FIN_CD_M_PAG_PAG.FieldByName('ID_TITULO').AsInteger         :=
       FIN_CD_M_PAG.FieldByName('ID_TITULO').asInteger;
   FIN_CD_M_PAG_PAG.FieldByName('ID_BAIXA').AsInteger          :=
       sm.enValorChave('FIN_TB_M_PBX');
   FIN_CD_M_PAG_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime    :=
       FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime;
   FIN_CD_M_PAG_PAG.FieldByName('VLR_PAGAMENTO').asCurrency    :=
       FIN_CD_M_PAG.FieldByName('VLR_PARCELA').asCurrency;
   FIN_CD_M_PAG_PAG.FieldByName('PER_JUROS').AsFloat           := 0;
   FIN_CD_M_PAG_PAG.FieldByName('VLR_JUROS').AsCurrency        := 0;
   FIN_CD_M_PAG_PAG.FieldByName('VLR_MULTA').AsCurrency        := 0;
   FIN_CD_M_PAG_PAG.FieldByName('VLR_DESCONTO').AsCurrency     := 0;
   FIN_CD_M_PAG_PAG.FieldByName('HISTORICO').AsString          :=
       FIN_CD_M_PAG.FieldByName('HISTORICO').AsString;
   FIN_CD_M_PAG_PAG.FieldByName('ID_FORMA_PAG').AsInteger      :=
       FIN_CD_M_PAG.FieldByName('id_forma_pag').AsInteger;
   FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO').AsString           :=
       FIN_CD_M_PAG.FieldByName('id_plano').AsString;
   FIN_CD_M_PAG_PAG.FieldByName('ID_ABERTURA').AsInteger    :=
       IdAbertura;
   FIN_CD_M_PAG_PAG.FieldByName('ID_RESPONSAVEL').AsInteger    :=
       FIN_CD_M_CXA.FieldByName('id_funcionario').AsInteger;
   FIN_CD_M_PAG_PAG.FieldByName('ID_CCUSTO').AsInteger         :=
       FIN_CD_M_PAG.FieldByName('id_ccusto').AsInteger;
   FIN_CD_M_PAG_PAG.FieldByName('chp_vlr_anterior').AsCurrency := 0;


   FIN_CD_M_PAG_PAG.Post;

   try
       Vtran := Conn.BeginTransaction;
       result := 'OK';
       try
         if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
            begin
              result := 'Erro ao tentar gerar o título do contas a pagar!';
            end;

         if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
            begin
              result := 'Erro ao tentar gerar a baixa da pequena despesa!';
            end;
       except
         on e: exception do
            begin
              result := result + #13 + e.Message;
            end;
       end;
      Conn.CommitFreeAndNil(Vtran);
   finally
      Conn.RollbackIncompleteFreeAndNil(Vtran);
      FIN_CD_M_PAG.Free;
      FIN_CD_M_CXA.Free;
      FIN_CD_M_PAG_PAG.Free;
   end;  }
end;

procedure FIN_DP_M_PBXUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet;
FIN_DP_M_PAG_PAG:TDataSetProvider;
FIN_DP_M_PAG:TDataSetProvider;
FIN_DP_M_CTA:TDataSetProvider;
CAD_DP_C_FPG:TDataSetProvider;
CAD_DP_C_CTC:TDataSetProvider;
CAD_DP_C_TIF:TDataSetProvider;
FIN_DP_M_PCR:TDataSetProvider;
FIN_DP_M_PBX_TIT_INT:TDataSetProvider;
BUS_DP_C_PAR_CTR:TDataSetProvider;sm: TSM
);
var
 cds,cds_pbx_ger,cds_pbx:TDataSet;
 FIN_CD_M_PAG_PAG:TClientdataset;
 FIN_CD_M_PAG:TClientdataset;
 FIN_CD_M_PCR:TClientdataset;
 FIN_CD_M_PAG_XXX:TClientdataset;
 FIN_CD_M_CTA:TClientdataset;
 CAD_CD_C_FPG:TClientdataset;
 CAD_CD_C_CTC:TClientdataset;
 CAD_CD_C_TIF:TClientdataset;
 FIN_CD_M_PBX_TIT:TClientdataset;
 BUS_CD_C_PAR_CTR:TClientdataset;

 lDataBaixaPBX, lPlanoPBX : String;
 lIdbaixa,lIdFornecedor, lTipoFinPBX,lContaPBX,lFormaPagPBX,lCentroCustoPBX: Integer;


 //xIdFormaPag:integer;
 //xIdConta:Integer;
 //xIdTipoFinanceiro:integer;
 xIdTitulo,xIdBaixa:Integer;
 NewVlrPago, OldVlrPago, oldVlrJuros, NewVlrJuros,
 oldVlrMulta,NewVlrMulta,oldVlrDesconto,NewVlrDesconto,
 oldVlrCredTit,NewVlrCredTit :currency;
 Newidbaixa, oldidbaixa,xHistorico,xTitulos,newHistoricoTit,oldHistoricoTit:String;
 NewDtaVencimento, oldDtaVencimento:TDateTime;
 oldVlrCredito, newVlrCredito:Currency;
 xIdFornecedor:Integer;
 OldIdRecibo,NewIdRecibo:String;

 xIdControleGer:integer;
 xDtaVencimentoGer:TDateTime;
 xVlrPagamento:currency;

 TituloAlterado:Boolean;
begin



  //Procedimentos:
  //--------------------------------------
  //1-Atualiza saldo dos titulos
  //  Deduz o valor de pagamento em cada titulo

  //2-atualiza arquivo de pagamentos
  //  Gera arquivo de pagamento para cada titulo, com detalhamento dos mesmos.

  //3-atauliza credito de fornecedor
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


  FIN_CD_M_PAG_PAG:=TClientDataSet.Create(nil);
  FIN_CD_M_PAG    :=TClientDataSet.Create(nil);
  FIN_CD_M_PAG_XXX :=TClientDataSet.Create(nil);
  FIN_CD_M_CTA    :=TClientDataSet.Create(nil);
  CAD_CD_C_FPG    :=TClientDataSet.Create(nil);
  CAD_CD_C_CTC    :=TClientDataSet.Create(nil);
  CAD_CD_C_TIF    :=TClientDataSet.Create(nil);
  FIN_CD_M_PCR    :=TClientDataSet.Create(nil);
  FIN_CD_M_PBX_TIT:=TClientDataSet.Create(nil);
  BUS_CD_C_PAR_CTR :=TClientDataSet.Create(nil);

  xTitulos := '';
  try
    if not (dataset.UpdateStatus in [usDeleted]) then
       begin
         FIN_CD_M_PAG_PAG.SetProvider(FIN_DP_M_PAG_PAG);
         FIN_CD_M_PAG.SetProvider(FIN_DP_M_PAG);

         FIN_CD_M_CTA.SetProvider(FIN_DP_M_CTA);
         FIN_CD_M_PCR.SetProvider(FIN_DP_M_PCR);
         CAD_CD_C_FPG.SetProvider(CAD_DP_C_FPG);
         CAD_CD_C_CTC.SetProvider(CAD_DP_C_CTC);
         CAD_CD_C_TIF.SetProvider(CAD_DP_C_TIF);
         BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);

         BUS_CD_C_PAR_CTR.Close;
         BUS_CD_C_PAR_CTR.Data :=
         BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([dataset.FieldByName('ID_EMPRESA').AsString]));


         lIdbaixa        := dataset.FieldByName('ID_BAIXA').AsInteger;
         lIdFornecedor   := dataset.FieldByName('ID_FORNECEDOR').AsInteger;
         lContaPBX       := dataset.FieldByName('ID_CONTA').AsInteger;
         lDataBaixaPBX   := dataset.FieldByName('DTA_BAIXA').AsString;
         lFormaPagPBX    := dataset.FieldByName('ID_FORMA_PAG').AsInteger;
         lTipoFinPBX     := dataset.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;
         lPlanoPBX       := dataset.FieldByName('ID_PLANO').AsString;
         lCentroCustoPBX := dataset.FieldByName('ID_CCUSTO').AsInteger;

         newVlrCredito := 0;
         oldVlrCredito := Dataset.FieldByName('vlr_credito_utilizado').AsCurrency;

         if dataset.UpdateStatus in [usUnmodified] then
            begin
              dataset.next;

              if trim(dataset.FieldByName('ID_CONTA').AsString) <> '' then
                 lContaPBX       := dataset.FieldByName('ID_CONTA').AsInteger;

              if trim(dataset.FieldByName('DTA_BAIXA').AsString) <> '' then
                 lDataBaixaPBX   := dataset.FieldByName('DTA_BAIXA').AsString;

              if trim(dataset.FieldByName('ID_FORMA_PAG').AsString) <> '' then
                 lFormaPagPBX    := dataset.FieldByName('ID_FORMA_PAG').AsInteger;

              if trim(dataset.FieldByName('ID_TIPO_FINANCEIRO').AsString) <> '' then
                 lTipoFinPBX     := dataset.FieldByName('ID_TIPO_FINANCEIRO').AsInteger;

              if trim(dataset.FieldByName('ID_PLANO').AsString) <> '' then
                 lPlanoPBX       := dataset.FieldByName('ID_PLANO').AsString;

              if trim(dataset.FieldByName('ID_CCUSTO').AsString) <> '' then
                 lCentroCustoPBX := dataset.FieldByName('ID_CCUSTO').AsInteger;

              if ((trim(dataset.FieldByName('vlr_credito_utilizado').AsString) <> '') and
                 (Dataset.FieldByName('vlr_credito_utilizado').AsCurrency > 0)) then
                  newVlrCredito:= Dataset.FieldByName('vlr_credito_utilizado').AsCurrency;

              dataset.Prior;
            end;



         CAD_CD_C_FPG.Close;
         CAD_CD_C_FPG.Data :=
         CAD_CD_C_FPG.DataRequest(VarArrayOf([0, lFormaPagPBX]));

         CAD_CD_C_CTC.Close;
         CAD_CD_C_CTC.Data :=
         CAD_CD_C_CTC.DataRequest(VarArrayOf([0, lContaPBX]));

         CAD_CD_C_TIF.Close;
         CAD_CD_C_TIF.Data :=
         CAD_CD_C_TIF.DataRequest(VarArrayOf([0, lTipoFinPBX]));

         // FIN_CD_M_CTA.SetProvider(FIN_DP_M_CTA);
         FIN_CD_M_CTA.Close;
         FIN_CD_M_CTA.Data :=
         FIN_CD_M_CTA.DataRequest(VarArrayOf([91, lIdbaixa]));
        { if not (FIN_CD_M_CTA.IsEmpty) then
            begin
              FIN_CD_M_CTA.First;
              while not (FIN_CD_M_CTA.Eof) do
                begin
                  FIN_CD_M_CTA.Delete;
                end;
            end;}

        //Historico de baixas dos titulos
         FIN_CD_M_PAG_PAG.SetProvider(FIN_DP_M_PAG_PAG);
         FIN_CD_M_PAG_PAG.Close;
         FIN_CD_M_PAG_PAG.Data :=
               FIN_CD_M_PAG_PAG.DataRequest(
                    VarArrayOf([0,lIdbaixa]));



         cds:= TDataSetField(Dataset.FieldByName('FIN_SQ_M_PBX_TIT')).NestedDataSet;
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
             //Busca os registros de creditos do fornecedor
             FIN_CD_M_PCR.Close;
             FIN_CD_M_PCR.Data :=
                      FIN_CD_M_PCR.DataRequest(VarArrayOf([90,lIdFornecedor,lIdBaixa,xTitulos]));
            end
          else
            begin
             //Busca os registros de creditos do fornecedor
             FIN_CD_M_PCR.Close;
             FIN_CD_M_PCR.Data :=
                      FIN_CD_M_PCR.DataRequest(VarArrayOf([0,'']));
            end;

          cds_pbx_ger := TDataSetField(Dataset.FieldByName('FIN_SQ_M_PBX_GER')).NestedDataSet;
          while not (cds_pbx_ger.Eof)  do
             begin
                if xTitulos <> '' then
                   begin
                     xTitulos :=
                     xTitulos + ',' +''''+ cds_pbx_ger.FieldByName('ID_CONTROLE').AsString+'''';
                   end;
                if xTitulos = '' then
                   begin
                     xTitulos :=
                     xTitulos +''''+cds_pbx_ger.FieldByName('ID_CONTROLE').AsString+'''';
                   end;
                if cds_pbx_ger.UpdateStatus in [usUnmodified] then
                   begin
                     cds_pbx_ger.Next;
                   end;
                cds_pbx_ger.Next;
             end;

         if (xTitulos <> '') then
            begin
             // Busca os titulos do PBX_TIT e PBX_GER
             FIN_CD_M_PAG.Close;
             FIN_CD_M_PAG.Data :=
                 FIN_CD_M_PAG.DataRequest(VarArrayOf([93, xTitulos]));
            end
         else
            begin
             FIN_CD_M_PAG.Close;
             FIN_CD_M_PAG.Data :=
                 FIN_CD_M_PAG.DataRequest(VarArrayOf([0,'']));
            end;

         cds.First;
         while not (cds.Eof)  do
           begin
             xIdTitulo  := cds.FieldByName('ID_TITULO').AsInteger;
             newHistoricoTit  := trim(cds.FieldByName('INT_HISTORICO').AsString);
             xIdBaixa   := dataset.FieldByName('ID_BAIXA').AsInteger;

             {if  (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 1) or   // Duplicata
                 (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 2) or   // Promissória
                 (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3) or   // Cartão
                 (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 4) or   // Boleto
                 (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6) then // Cheque
                  begin
                    xHistorico  := 'Substituição ref. baixa: '+ inttostr(xIdBaixa)+', do fornecedor: ' +
                                    dataset.FieldByName('int_nomefor').AsString + ' - ' ;
                  end
             else
                begin
                  xHistorico  := 'Pagamento ref. baixa: '+ inttostr(xIdBaixa)+', do fornecedor: ' +
                                  dataset.FieldByName('int_nomefor').AsString;
                end;}

             xHistorico  := dataset.FieldByName('observacao').AsString;

             OldVlrPago        := 0;
             oldVlrJuros       := 0;
             oldVlrMulta       := 0;
             oldVlrCredTit     := 0;
             oldVlrDesconto    := 0;

             newVlrPago       := 0;
             NewVlrJuros      := 0;
             NewVlrMulta      := 0;
             NewVlrCredTit    := 0;
             NewVlrDesconto   := 0;

             tituloAlterado    := false;
             if cds.UpdateStatus in [usUnmodified] then
                begin
                  tituloAlterado    := true;
                  oldidbaixa        := cds.FieldByName('id_baixa').AsString;
                  oldDtaVencimento  := cds.FieldByName('dta_vencimento').AsDateTime;
                  oldVlrPago        := cds.FieldByName('vlr_pagamento').AsCurrency;
                  oldVlrJuros       := cds.FieldByName('VLR_JUROS').AsCurrency;
                  oldVlrMulta       := cds.FieldByName('VLR_MULTA').AsCurrency;
                  oldVlrCredTit     := cds.FieldByName('vlr_credito_utilizado').AsCurrency;
                  oldVlrDesconto    := cds.FieldByName('VLR_DESCONTO').AsCurrency;
                  oldHistoricoTit   := trim(cds.FieldByName('INT_HISTORICO').AsString);

                  cds.Next;
                  // Neste momento ele pega os novos valores
                  newIdbaixa       := cds.FieldByName('id_baixa').AsString;
                  newDtaVencimento := cds.FieldByName('dta_vencimento').AsDateTime;
                  newVlrPago       := cds.FieldByName('vlr_pagamento').AsCurrency;
                  NewVlrJuros      := cds.FieldByName('VLR_JUROS').AsCurrency;
                  NewVlrMulta      := cds.FieldByName('VLR_MULTA').AsCurrency;
                  NewVlrCredTit    := cds.FieldByName('vlr_credito_utilizado').AsCurrency;
                  NewVlrDesconto   := cds.FieldByName('VLR_DESCONTO').AsCurrency;
                  newHistoricoTit  := trim(cds.FieldByName('INT_HISTORICO').AsString);

                  if cds.FieldByName('vlr_pagamento').text = '' then
                     newVlrPago := oldVlrPago;
                  if cds.FieldByName('VLR_JUROS').text = '' then
                     NewVlrJuros :=  oldVlrJuros;
                  if cds.FieldByName('VLR_MULTA').text = '' then
                     NewVlrMulta :=  oldVlrMulta;
                  if cds.FieldByName('vlr_credito_utilizado').text = '' then
                     NewVlrCredTit := oldVlrCredTit;
                  if cds.FieldByName('VLR_DESCONTO').text = '' then
                     NewVlrDesconto   := oldVlrDesconto;

                end;
            // else
               // begin
                //  xHistorico:='Pagamento ref. baixa '+cds.FieldByName('id_baixa').AsString+' do fornecedor '+
                //              dataset.FieldByName('int_nomefor').AsString;
              //  end;

             //if FIN_CD_M_PAG_PAG.FindKey([xIdTitulo,xIdBaixa]) then
             if FIN_CD_M_PAG_PAG.Locate('ID_BAIXA;ID_TITULO',varArrayOf([xIdBaixa,xIdTitulo]),[]) then
                begin
                  if cds.UpdateStatus in [usDeleted] then
                     begin
                       FIN_CD_M_PAG_PAG.Delete;
                     end
                  else
                     begin
                       FIN_CD_M_PAG_PAG.Edit;
                       FIN_CD_M_PAG_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime  :=
                          strtodate(lDataBaixaPBX);//  dataset.FieldByName('dta_baixa').AsDateTime;

                       if cds.FieldByName('VLR_PAGAMENTO').asCurrency > 0 then
                          FIN_CD_M_PAG_PAG.FieldByName('VLR_PAGAMENTO').asCurrency  :=
                                 cds.FieldByName('VLR_PAGAMENTO').asCurrency
                       else //if NewVlrPago > 0 then
                          FIN_CD_M_PAG_PAG.FieldByName('VLR_PAGAMENTO').asCurrency  := NewVlrPago;
                       FIN_CD_M_PAG_PAG.FieldByName('PER_JUROS').AsFloat         := 0;

                       if cds.FieldByName('VLR_JUROS').AsCurrency > 0  then
                             FIN_CD_M_PAG_PAG.FieldByName('VLR_JUROS').AsCurrency   := cds.FieldByName('VLR_JUROS').AsCurrency
                       else //if NewVlrJuros > 0 then
                             FIN_CD_M_PAG_PAG.FieldByName('VLR_JUROS').AsCurrency   := NewVlrJuros;

                       if cds.FieldByName('VLR_MULTA').AsCurrency > 0  then
                             FIN_CD_M_PAG_PAG.FieldByName('VLR_MULTA').AsCurrency   := cds.FieldByName('VLR_MULTA').AsCurrency
                       else //if NewVlrMulta > 0 then
                             FIN_CD_M_PAG_PAG.FieldByName('VLR_MULTA').AsCurrency   := NewVlrMulta;

                       if cds.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
                          FIN_CD_M_PAG_PAG.FieldByName('VLR_DESCONTO').AsCurrency :=
                               cds.FieldByName('VLR_DESCONTO').AsCurrency
                       else // if NewVlrDesconto > 0 then
                          FIN_CD_M_PAG_PAG.FieldByName('VLR_DESCONTO').AsCurrency   := NewVlrDesconto;


                       if cds.FieldByName('VLR_CREDITO_UTILIZADO').AsCurrency > 0 then
                          FIN_CD_M_PAG_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency :=
                               cds.FieldByName('VLR_CREDITO_UTILIZADO').AsCurrency
                       else
                          FIN_CD_M_PAG_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency := NewVlrCredTit;

                       if (BUS_CD_C_PAR_CTR.FieldByName('pbx_gravar_obs_tit').AsBoolean=true) then
                         FIN_CD_M_PAG_PAG.FieldByName('HISTORICO').AsString       := xHistorico+' - '+NewHistoricoTit
                       else
                         FIN_CD_M_PAG_PAG.FieldByName('HISTORICO').AsString       := xHistorico;


                       FIN_CD_M_PAG_PAG.FieldByName('ID_FORMA_PAG').AsInteger    :=
                            lFormaPagPBX; //  xIdFormaPag;

                      if FIN_CD_M_PAG.Locate('ID_TITULO',xIdTitulo,[]) then
                            FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO').AsString         :=
                                      FIN_CD_M_PAG.FieldByName('ID_PLANO').AsString;

                       {FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO').AsString         :=
                            Dataset.FieldByName('id_plano').AsString;  }

                       FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO_JUROS').Value   := null;
                       if cds.FieldByName('VLR_JUROS').AsCurrency>0 then
                          FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO_JUROS').AsString   :=
                                 CAD_CD_C_FPG.FieldByName('pag_id_plano_juros').AsString;

                       FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO_DESCONTO').value := null;
                       if cds.FieldByName('VLR_DESCONTO').AsCurrency>0 then
                          FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO_DESCONTO').AsString:=
                                CAD_CD_C_FPG.FieldByName('pag_id_plano_desconto').AsString;

                       FIN_CD_M_PAG_PAG.FieldByName('ID_RESPONSAVEL').AsInteger  :=
                          Dataset.FieldByName('id_responsavel').AsInteger;

                       FIN_CD_M_PAG_PAG.FieldByName('ID_CCUSTO').AsInteger       :=
                          lCentroCustoPBX;//   Dataset.FieldByName('id_ccusto').AsInteger;

                       FIN_CD_M_PAG_PAG.FieldByName('id_empresa_bxa').AsInteger  :=
                          Dataset.FieldByName('id_empresa').AsInteger;

                       FIN_CD_M_PAG_PAG.Post;
                     end;
                end
             else
                begin
                  FIN_CD_M_PAG_PAG.Append;
                  FIN_CD_M_PAG_PAG.FieldByName('ID_TITULO').AsInteger       :=
                     cds.FieldByName('ID_TITULO').AsInteger;
                  FIN_CD_M_PAG_PAG.FieldByName('ID_BAIXA').AsInteger        :=
                     cds.FieldByName('ID_BAIXA').AsInteger;
                  FIN_CD_M_PAG_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime  :=
                     strtodate(lDataBaixaPBX);//  dataset.FieldByName('dta_baixa').AsDateTime;
                  FIN_CD_M_PAG_PAG.FieldByName('VLR_PAGAMENTO').asCurrency  :=
                     cds.FieldByName('VLR_PAGAMENTO').asCurrency;
                  FIN_CD_M_PAG_PAG.FieldByName('PER_JUROS').AsFloat         := 0;
                  FIN_CD_M_PAG_PAG.FieldByName('VLR_JUROS').AsCurrency      :=
                     cds.FieldByName('VLR_JUROS').AsCurrency;
                  FIN_CD_M_PAG_PAG.FieldByName('VLR_MULTA').AsCurrency      :=
                     cds.FieldByName('VLR_MULTA').AsCurrency;
                  FIN_CD_M_PAG_PAG.FieldByName('VLR_DESCONTO').AsCurrency   :=
                     cds.FieldByName('VLR_DESCONTO').AsCurrency;

                  FIN_CD_M_PAG_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency :=
                     cds.FieldByName('VLR_CREDITO_UTILIZADO').AsCurrency;

                  if (BUS_CD_C_PAR_CTR.FieldByName('pbx_gravar_obs_tit').AsBoolean=true) then
                     FIN_CD_M_PAG_PAG.FieldByName('HISTORICO').AsString       :=  xHistorico+' - '+NewHistoricoTit
                  else
                     FIN_CD_M_PAG_PAG.FieldByName('HISTORICO').AsString       := xHistorico;


                  FIN_CD_M_PAG_PAG.FieldByName('ID_FORMA_PAG').AsInteger    :=
                    lFormaPagPBX;//     xIdFormaPag;

                  if FIN_CD_M_PAG.Locate('ID_TITULO',xIdTitulo,[]) then
                            FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO').AsString         :=
                                      FIN_CD_M_PAG.FieldByName('ID_PLANO').AsString;

                  { FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO').AsString         :=
                     lPlanoPBX; //  Dataset.FieldByName('id_plano').AsString;  }


                  if cds.FieldByName('VLR_JUROS').AsCurrency>0 then
                     FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO_JUROS').AsString   :=
                             CAD_CD_C_FPG.FieldByName('pag_id_plano_juros').AsString;
                  if cds.FieldByName('VLR_DESCONTO').AsCurrency>0 then
                     FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO_DESCONTO').AsString:=
                           CAD_CD_C_FPG.FieldByName('pag_id_plano_desconto').AsString;
                  FIN_CD_M_PAG_PAG.FieldByName('ID_RESPONSAVEL').AsInteger  :=
                     Dataset.FieldByName('id_responsavel').AsInteger;
                  FIN_CD_M_PAG_PAG.FieldByName('ID_CCUSTO').AsInteger       :=
                     lCentroCustoPBX;//  Dataset.FieldByName('id_ccusto').AsInteger;
                  FIN_CD_M_PAG_PAG.FieldByName('chp_vlr_anterior').AsCurrency := 0;

                  //FIN_CD_M_PAG_PAG.FieldByName('origem').AsCurrency := 0;

                  FIN_CD_M_PAG_PAG.FieldByName('com_substituicao').AsBoolean := false;
                  // Se for baixa com Duplicata, Promissória, Cartão e Cheque,
                  if (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 1) or   // Duplicata
                     (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 2) or   // Promissória
                     (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3) or   // Cartão
                     (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 4) or   // Boleto
                     (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6) then // Cheque
                      begin
                        FIN_CD_M_PAG_PAG.FieldByName('com_substituicao').AsBoolean := true;
                        {FIN_CD_M_PAG_PAG.FieldByName('HISTORICO').AsString         :=
                               'Substituição ref. baixa: '+ inttostr(xIdBaixa)+', do fornecedor: ' +
                                  dataset.FieldByName('int_nomefor').AsString;}
                      end;

                  FIN_CD_M_PAG_PAG.FieldByName('id_empresa_bxa').AsInteger  :=
                      Dataset.FieldByName('id_empresa').AsInteger;

                  FIN_CD_M_PAG_PAG.Post;
                end;

             //caixa/banco
              if FIN_CD_M_CTA.Locate('ID_BAIXA_PBX;ID_TITULO_PAG',varArrayOf([xIdBaixa,xIdTitulo]),[]) then
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

                             FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=dataset.FieldByName('id_abertura').AsInteger;
                             FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                             FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=CAD_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                             FIN_CD_M_CTA.FieldByName('dta_lancamento').AsString     :=lDataBaixaPBX;
                             FIN_CD_M_CTA.FieldByName('dta_movimento').AsString      :=lDataBaixaPBX;
                             FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_baixa').AsInteger;
                             FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=CAD_CD_C_TIF.FieldByName('natureza').AsInteger;

                             if (BUS_CD_C_PAR_CTR.FieldByName('pbx_gravar_obs_tit').AsBoolean=true) then
                               FIN_CD_M_CTA.FieldByName('HISTORICO').AsString       :=  xHistorico+' - '+NewHistoricoTit
                             else
                               FIN_CD_M_CTA.FieldByName('HISTORICO').AsString       := xHistorico;



                             if cds.FieldByName('VLR_PAGAMENTO').AsCurrency > 0 then
                                FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   :=cds.FieldByName('VLR_PAGAMENTO').AsCurrency
                             else if NewVlrPago > 0 then
                                  FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := NewVlrPago
                             else FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := oldVlrPago;

                             FIN_CD_M_CTA.FieldByName('origem').AsInteger            :=2; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
                             FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          :=
                                 lContaPBX;//dataset.FieldByName('id_conta').AsInteger;
                             FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                                 lTipoFinPBX; //   dataset.FieldByName('id_tipo_financeiro').AsInteger;


                             if FIN_CD_M_PAG.Locate('ID_TITULO',xIdTitulo,[]) then
                                FIN_CD_M_CTA.FieldByName('ID_PLANO').AsString         :=
                                      FIN_CD_M_PAG.FieldByName('ID_PLANO').AsString;

                             {FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                                 lPlanoPBX; //  Dataset.FieldByName('id_plano').AsString; }

                             FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger      :=dataset.FieldByName('id_baixa').AsInteger;
                             FIN_CD_M_CTA.FieldByName('id_titulo_pag').AsInteger     :=xIdTitulo;

                             FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger   := 0;
                             FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger      := 0;
                             FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger  := 0;
                             FIN_CD_M_CTA.FieldByName('id_credito').AsInteger     := 0;
                             FIN_CD_M_CTA.FieldByName('conciliado').Asboolean     := false;
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
                       FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=dataset.FieldByName('id_abertura').AsInteger;
                       FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                       FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=CAD_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                       FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('dta_baixa').AsDateTime;
                       FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('dta_baixa').AsDateTime;
                       FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_baixa').AsInteger;
                       FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=CAD_CD_C_TIF.FieldByName('natureza').AsInteger;

                       if (BUS_CD_C_PAR_CTR.FieldByName('pbx_gravar_obs_tit').AsBoolean=true) then
                         FIN_CD_M_CTA.FieldByName('HISTORICO').AsString       := NewHistoricoTit + ' - ' + xHistorico
                       else
                         FIN_CD_M_CTA.FieldByName('HISTORICO').AsString       := xHistorico;

                       if cds.FieldByName('VLR_PAGAMENTO').AsCurrency > 0 then
                          FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   :=cds.FieldByName('VLR_PAGAMENTO').AsCurrency
                       else if NewVlrPago > 0 then
                            FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := NewVlrPago
                       else FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := oldVlrPago;

                       FIN_CD_M_CTA.FieldByName('origem').AsInteger            :=2; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
                       FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          :=
                           lContaPBX;//dataset.FieldByName('id_conta').AsInteger;
                       FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                           lTipoFinPBX; //   dataset.FieldByName('id_tipo_financeiro').AsInteger;

                       if FIN_CD_M_PAG.Locate('ID_TITULO',xIdTitulo,[]) then
                                FIN_CD_M_CTA.FieldByName('ID_PLANO').AsString         :=
                                      FIN_CD_M_PAG.FieldByName('ID_PLANO').AsString;

                       {FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                           lPlanoPBX; //  Dataset.FieldByName('id_plano').AsString;}

                       FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger      :=dataset.FieldByName('id_baixa').AsInteger;
                       FIN_CD_M_CTA.FieldByName('id_titulo_pag').AsInteger     :=xIdTitulo;

                       FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger   := 0;
                       FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger      := 0;
                       FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger  := 0;
                       FIN_CD_M_CTA.FieldByName('id_credito').AsInteger     := 0;
                       FIN_CD_M_CTA.FieldByName('conciliado').Asboolean     := false;
                       FIN_CD_M_CTA.Post;
                    end;
                end;



             {
             if CAD_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=true then
                begin

                       FIN_CD_M_CTA.Append;
                       FIN_CD_M_CTA.FieldByName('id_controle').AsInteger       :=sm.enValorChave('FIN_TB_M_CTA');
                       FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=dataset.FieldByName('id_abertura').AsInteger;
                       FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                       FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=CAD_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                       FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('dta_baixa').AsDateTime;
                       FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('dta_baixa').AsDateTime;
                       FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_baixa').AsInteger;
                       FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=CAD_CD_C_TIF.FieldByName('natureza').AsInteger;
                       FIN_CD_M_CTA.FieldByName('historico').AsString          :=xHistorico;
                       if cds.FieldByName('VLR_PAGAMENTO').AsCurrency > 0 then
                          FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   :=cds.FieldByName('VLR_PAGAMENTO').AsCurrency
                       else if NewVlrPago > 0 then
                            FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := NewVlrPago
                       else FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := oldVlrPago;

                       FIN_CD_M_CTA.FieldByName('origem').AsInteger            :=2; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
                       FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          :=
                           lContaPBX;//dataset.FieldByName('id_conta').AsInteger;
                       FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                           lTipoFinPBX; //   dataset.FieldByName('id_tipo_financeiro').AsInteger;
                       FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                           lPlanoPBX; //  Dataset.FieldByName('id_plano').AsString;
                       FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger      :=dataset.FieldByName('id_baixa').AsInteger;


                       FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger   := 0;
                       FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger      := 0;
                       FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger  := 0;
                       FIN_CD_M_CTA.FieldByName('id_credito').AsInteger     := 0;
                       FIN_CD_M_CTA.FieldByName('conciliado').Asboolean     := false;
                       FIN_CD_M_CTA.Post;
                end;}


             //Recalcula saldo dos titulos
             FIN_CD_M_PAG.First;
             if FIN_CD_M_PAG.Locate('ID_TITULO',xIdTitulo,[]) then
                begin
                  if cds.UpdateStatus in [usDeleted] then
                     begin
                       FIN_CD_M_PAG.Edit;
                       FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency    :=
                         (FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency +
                          cds.FieldByName('VLR_PAGAMENTO').asCurrency +
                          cds.FieldByName('vlr_desconto').asCurrency  {+
                          cds.FieldByName('vlr_credito_utilizado').asCurrency} -
                          (cds.FieldByName('vlr_juros').asCurrency +
                           cds.FieldByName('vlr_multa').asCurrency)
                          );
                       FIN_CD_M_PAG.Post;
                     end
                  else
                     begin
                       FIN_CD_M_PAG.Edit;

                       if (newVlrPago > 0) or (NewVlrJuros > 0) or
                          (NewVlrMulta > 0) or (NewVlrCredTit > 0) or
                          (NewVlrDesconto > 0) then  // ser > 0 então houve alteração
                          begin
                            if (oldVlrPago <> newVlrPago) or ( oldVlrJuros <> NewVlrJuros) or ( oldVlrMulta <> NewVlrMulta) or
                               (oldVlrCredTit <> NewVlrCredTit) or ( oldVlrDesconto <> NewVlrDesconto) then
                               begin
                                 {FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency  :=
                                     FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency +

                                    ( (OldVlrPago + oldVlrDesconto + oldVlrCredTit) -
                                      (oldVlrMulta+oldVlrJuros)) -

                                    ( (newVlrPago + NewVlrCredTit + NewVlrDesconto) -
                                      (NewVlrMulta+NewVlrJuros));  }

                                  FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency  :=
                                     FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency +

                                    ( (OldVlrPago + oldVlrDesconto) -
                                      (oldVlrMulta+oldVlrJuros)) -

                                    ( (newVlrPago + NewVlrDesconto) -
                                      (NewVlrMulta+NewVlrJuros));
                               end;
                          end
                       else
                          begin
                            if cds.FieldByName('VLR_PAGAMENTO').asCurrency > 0 then
                               begin
                                 FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency  :=
                                   FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency
                                   - ( (cds.FieldByName('VLR_PAGAMENTO').asCurrency +
                                        cds.FieldByName('VLR_DESCONTO').asCurrency {+
                                        cds.FieldByName('vlr_credito_utilizado').asCurrency}) -

                                        (cds.FieldByName('VLR_JUROS').asCurrency +
                                         cds.FieldByName('VLR_MULTA').asCurrency)
                                      );
                               end;
                          end;
                       FIN_CD_M_PAG.Post;
                     end;
                end;

                if oldVlrCredito > 0 then
                  begin
                     if FIN_CD_M_PCR.Locate('ID_TITULO',xIdTitulo,[]) then
                        begin
                          if cds.UpdateStatus in [usDeleted] then
                            begin
                             FIN_CD_M_PCR.Delete;
                            end
                          else
                              if (tituloAlterado = true) then
                                 begin
                                   if (NewVlrCredTit = 0) then
                                     begin
                                       FIN_CD_M_PCR.Delete;
                                     end;
                                   if (NewVlrCredTit > 0) then
                                     begin
                                       FIN_CD_M_PCR.Edit;
                                       FIN_CD_M_PCR.FieldByName('VLR_CREDITO').AsCurrency   := NewVlrCredTit;
                                       FIN_CD_M_PCR.Post;
                                     end;
                                 end;
                        end
                     else
                        begin
                          if cds.UpdateStatus in [usInserted] then
                             begin
                               FIN_CD_M_PCR.Insert;
                               FIN_CD_M_PCR.FieldByName('ID_EMPRESA').AsInteger     := dataset.FieldByName('ID_EMPRESA').AsInteger;
                               FIN_CD_M_PCR.FieldByName('ID_CREDITO').AsInteger     := sm.enValorChave('FIN_TB_M_PCR');
                               FIN_CD_M_PCR.FieldByName('ID_FORNECEDOR').AsInteger  := dataset.FieldByName('ID_FORNECEDOR').AsInteger;
                               FIN_CD_M_PCR.FieldByName('ID_BAIXA').AsInteger       := xIdBaixa;
                               FIN_CD_M_PCR.FieldByName('ID_TITULO').AsInteger      := xIdTitulo;
                               FIN_CD_M_PCR.FieldByName('DTA_CREDITO').AsDateTime   := dataset.FieldByName('DTA_BAIXA').AsDateTime;
                               FIN_CD_M_PCR.FieldByName('ORIGEM').AsInteger         := 1;
                               FIN_CD_M_PCR.FieldByName('NUM_DOCUMENTO').AsString   := cds.FieldByName('num_parcela').AsString;
                               FIN_CD_M_PCR.FieldByName('VLR_CREDITO').AsCurrency   := cds.FieldByName('vlr_credito_utilizado').AsCurrency;
                               FIN_CD_M_PCR.FieldByName('VLR_SALDO').AsCurrency     := 0;
                               FIN_CD_M_PCR.FieldByName('HISTORICO').AsString       :=
                                   'Crédito utilizado na baixa de contas a pagar nº ' + inttostr(xIdBaixa);
                               FIN_CD_M_PCR.FieldByName('DEB_CRE').AsInteger      := 0;
                               FIN_CD_M_PCR.Post;
                             end;
                        end;
                  end;

             cds.Next;
           end;


         // Este while refere-se a PBX_GER
         cds_pbx_ger.First;
         while not (cds_pbx_ger.Eof)  do
             begin
               xIdControleGer     := cds_pbx_ger.FieldByName('id_controle').AsInteger;
               xDtaVencimentoGer  := cds_pbx_ger.FieldByName('dta_vencimento').AsDateTime;
               xVlrPagamento      := cds_pbx_ger.FieldByName('vlr_pagamento').AsCurrency;



               if cds_pbx_ger.UpdateStatus in [usUnmodified] then
                  begin

                    cds_pbx_ger.Next;

                    // Neste momento ele pega os novos valores caso tenha
                    if (cds_pbx_ger.FieldByName('id_controle').text <> '')  and
                       (cds_pbx_ger.FieldByName('id_controle').text <> '0') then
                        xIdControleGer := cds_pbx_ger.FieldByName('id_controle').AsInteger;
                    if cds_pbx_ger.FieldByName('dta_vencimento').text <> '' then
                       xDtaVencimentoGer := cds_pbx_ger.FieldByName('dta_vencimento').AsDateTime;
                    if (cds_pbx_ger.FieldByName('vlr_pagamento').text <> '')  and
                       (cds_pbx_ger.FieldByName('vlr_pagamento').text <> '0') then
                        xVlrPagamento := cds_pbx_ger.FieldByName('vlr_pagamento').AsCurrency;
                  end;

               if FIN_CD_M_PAG.Locate('ID_TITULO',xIdControleGer,[]) then
                  begin
                    if cds_pbx_ger.UpdateStatus in [usDeleted] then
                       begin
                         FIN_CD_M_PAG.Delete;
                       end
                    else
                       begin
                          FIN_CD_M_PAG.edit;
                          FIN_CD_M_PAG.FieldByName('id_forma_pag').AsInteger    :=   lFormaPagPBX;
                          FIN_CD_M_PAG.FieldByName('num_parcela').AsString      :=   inttostr(xIdControleGer);
                          //FIN_CD_M_PAG.FieldByName('historico').AsString        :=
                          //                          'Chq. gerado da baixa: '+ inttostr(lIdbaixa)+', do Cliente: '+
                          //                          dataset.FieldByName('int_nomecli').AsString;
                          FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency    :=   xVlrPagamento;
                          FIN_CD_M_PAG.FieldByName('vlr_original').AsCurrency   :=   xVlrPagamento;
                          FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency      :=   xVlrPagamento;
                          FIN_CD_M_PAG.FieldByName('dta_emissao').AsString      :=   lDataBaixaPBX;
                          FIN_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime :=   xDtaVencimentoGer;
                          FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime   :=   xDtaVencimentoGer;

                          FIN_CD_M_PAG.FieldByName('pre_cheque').AsInteger   :=   cds_pbx_ger.FieldByName('che_numero').AsInteger;
                          FIN_CD_M_PAG.FieldByName('id_fiscal').AsInteger       :=   0;
                          FIN_CD_M_PAG.FieldByName('origem').AsInteger          :=   3;


                          FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger :=   1; // Automático
                          FIN_CD_M_PAG.FieldByName('id_local_titulo').AsInteger :=   CAD_CD_C_FPG.FieldByName('ID_LOCAL_TITULO').AsInteger;
                          FIN_CD_M_PAG.FieldByName('id_plano').AsString         :=   lPlanoPBX;
                          FIN_CD_M_PAG.FieldByName('cod_lme').AsString          :=   '';
                          FIN_CD_M_PAG.FieldByName('rev_lme').AsString          :=   '';
                          FIN_CD_M_PAG.Post;
                       end;
                  end
                else
                    begin
                      FIN_CD_M_PAG.Insert;
                      FIN_CD_M_PAG.FieldByName('id_empresa').AsInteger         := dataset.FieldByName('ID_EMPRESA').AsInteger;
                      FIN_CD_M_PAG.FieldByName('dta_lancamento').AsDateTime    := date;
                      FIN_CD_M_PAG.FieldByName('dta_emissao').AsDateTime       := dataset.FieldByName('DTA_BAIXA').AsDateTime;
                      FIN_CD_M_PAG.FieldByName('id_fornecedor').AsInteger         := dataset.FieldByName('ID_FORNECEDOR').AsInteger;
                      FIN_CD_M_PAG.FieldByName('id_titulo').AsInteger          := xIdControleGer;
                      FIN_CD_M_PAG.FieldByName('id_forma_pag').AsInteger       := lFormaPagPBX;
                      FIN_CD_M_PAG.FieldByName('num_parcela').AsString         :=   inttostr(xIdControleGer);

                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 1 then // Baixa com Duplicata
                         FIN_CD_M_PAG.FieldByName('historico').AsString     :=
                                               'Duplicata gerada da baixa: '+ inttostr(lIdbaixa)+', do Fornecedor: '+
                                                dataset.FieldByName('int_nomefor').AsString;
                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 2 then // Baixa com Promissória
                         FIN_CD_M_PAG.FieldByName('historico').AsString     :=
                                               'Promissória gerada da baixa: '+ inttostr(lIdbaixa)+', do Fornecedor: '+
                                                dataset.FieldByName('int_nomefor').AsString;
                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3 then // Baixa com Cartão de crédito
                         FIN_CD_M_PAG.FieldByName('historico').AsString     :=
                                               'Cartão gerado da baixa: '+ inttostr(lIdbaixa)+', do Fornecedor: '+
                                                dataset.FieldByName('int_nomefor').AsString;
                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 4 then // Baixa com Boleto
                         FIN_CD_M_PAG.FieldByName('historico').AsString     :=
                                               'Boleto gerado da baixa: '+ inttostr(lIdbaixa)+', do Fornecedor: '+
                                                dataset.FieldByName('int_nomefor').AsString;
                      if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6 then // Cheque
                         FIN_CD_M_PAG.FieldByName('historico').AsString        :=
                                               'Chq. gerado da baixa: '+ inttostr(lIdbaixa)+', do Fornecedor: '+
                                                dataset.FieldByName('int_nomefor').AsString;

                      FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency    :=   xVlrPagamento;
                      FIN_CD_M_PAG.FieldByName('vlr_original').AsCurrency   :=   xVlrPagamento;
                      FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency      :=   xVlrPagamento;
                      FIN_CD_M_PAG.FieldByName('dta_emissao').AsString      :=   lDataBaixaPBX;
                      FIN_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime :=   xDtaVencimentoGer;
                      FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime   :=   xDtaVencimentoGer;
                      FIN_CD_M_PAG.FieldByName('pre_cheque').AsInteger   :=   cds_pbx_ger.FieldByName('che_numero').AsInteger;
                      FIN_CD_M_PAG.FieldByName('id_fiscal').AsInteger       :=   0;
                      FIN_CD_M_PAG.FieldByName('origem').AsInteger          :=   3;


                      FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger :=   1; // Automático
                      FIN_CD_M_PAG.FieldByName('id_local_titulo').AsInteger :=   CAD_CD_C_FPG.FieldByName('ID_LOCAL_TITULO').AsInteger;
                      FIN_CD_M_PAG.FieldByName('id_baixa').AsInteger        :=   lIdbaixa;
                      FIN_CD_M_PAG.FieldByName('id_plano').AsString         :=   lPlanoPBX;
                      FIN_CD_M_PAG.FieldByName('cod_lme').AsString          :=   '';
                      FIN_CD_M_PAG.FieldByName('rev_lme').AsString          :=   '';

                      //if CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6 then // Cheque
                         //FIN_CD_M_PAG.FieldByName('situacao_chq').AsInteger :=   1;
                    end;
               cds_pbx_ger.Next;
             end;


       end
    else
       begin
         FIN_CD_M_PAG.SetProvider(FIN_DP_M_PAG);
         {FIN_CD_M_PAG.IndexFieldNames:='ID_TITULO';
         FIN_CD_M_PAG.Open;}

         {FIN_CD_M_PAG.Close;
         FIN_CD_M_PAG.Data :=
         FIN_CD_M_PAG.DataRequest(VarArrayOf([93, xTitulos]));}

         newVlrCredito:= Dataset.FieldByName('vlr_credito_utilizado').AsCurrency;

         FIN_CD_M_PBX_TIT.SetProvider(FIN_DP_M_PBX_TIT_INT);
         FIN_CD_M_PBX_TIT.Close;
         FIN_CD_M_PBX_TIT.Data :=
         FIN_CD_M_PBX_TIT.DataRequest(VarArrayOf([0, Dataset.FieldByName('ID_BAIXA').AsString]));
         if not (FIN_CD_M_PBX_TIT.IsEmpty) then
            begin

               // Reuni os títulos do RBX_TIT
              xTitulos := '';
              while not (FIN_CD_M_PBX_TIT.Eof)  do
                 begin
                    if xTitulos <> '' then
                       begin
                         xTitulos :=
                         xTitulos + ',' +''''+ FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString+'''';
                       end;
                    if xTitulos = '' then
                       begin
                         xTitulos :=
                         xTitulos +''''+FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString+'''';
                       end;
                    FIN_CD_M_PBX_TIT.Next;
                 end;

              FIN_CD_M_PBX_TIT.First;

              FIN_CD_M_PAG.Close;
              FIN_CD_M_PAG.Data :=
                  FIN_CD_M_PAG.DataRequest(VarArrayOf([93, xTitulos]));



              while not (FIN_CD_M_PBX_TIT.Eof)  do
                begin
                  //OldVlrPago :=FIN_CD_M_PBX_TIT.FieldByName('VLR_PAGAMENTO').asCurrency;
                  xIdTitulo  :=FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').asInteger;
                  //Recalcula saldo dos titulos
                  FIN_CD_M_PAG.First;
                  if  FIN_CD_M_PAG.locate('ID_TITULO',xIdTitulo,[])  then
                     begin
                       FIN_CD_M_PAG.Edit;
                       FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency  :=
                          (FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency +

                                     ( (FIN_CD_M_PBX_TIT.FieldByName('VLR_PAGAMENTO').asCurrency +
                                        FIN_CD_M_PBX_TIT.FieldByName('VLR_DESCONTO').asCurrency {+
                                        FIN_CD_M_PBX_TIT.FieldByName('vlr_credito_utilizado').asCurrency}) -

                                        (FIN_CD_M_PBX_TIT.FieldByName('VLR_JUROS').asCurrency +
                                         FIN_CD_M_PBX_TIT.FieldByName('VLR_MULTA').asCurrency)
                                      )
                          );
                       FIN_CD_M_PAG.Post;
                     end;

                  FIN_CD_M_PBX_TIT.Next;
                end;
            end;




         //Deleta Historico de pagamento
         FIN_CD_M_PAG_PAG.SetProvider(FIN_DP_M_PAG_PAG);
         FIN_CD_M_PAG_PAG.Close;
         FIN_CD_M_PAG_PAG.Data :=
         FIN_CD_M_PAG_PAG.DataRequest(VarArrayOf([0, Dataset.FieldByName('ID_BAIXA').AsString]));
         if not (FIN_CD_M_PAG_PAG.IsEmpty) then
           begin
             while not (FIN_CD_M_PAG_PAG.Eof)  do
               begin
                 FIN_CD_M_PAG_PAG.Delete;
               end;
           end;

        //Deleta Conta Corrente
        FIN_CD_M_CTA.SetProvider(FIN_DP_M_CTA);
        FIN_CD_M_CTA.Close;
        FIN_CD_M_CTA.Data :=
        FIN_CD_M_CTA.DataRequest(VarArrayOf([91, Dataset.FieldByName('ID_BAIXA').AsString]));
        if not (FIN_CD_M_CTA.IsEmpty) then
           begin
             while not (FIN_CD_M_CTA.Eof)  do
               begin
                 FIN_CD_M_CTA.Delete;
               end;
           end;



         //Deleta Crédito
        FIN_CD_M_PCR.SetProvider(FIN_DP_M_PCR);
        FIN_CD_M_PCR.Close;
            FIN_CD_M_PCR.Data :=
                 FIN_CD_M_PCR.DataRequest(VarArrayOf([91, Dataset.FieldByName('ID_FORNECEDOR').AsString,
                                                         Dataset.FieldByName('ID_BAIXA').AsString]));
        if not (FIN_CD_M_PCR.IsEmpty) then
           begin
             while not (FIN_CD_M_PCR.Eof)  do
               begin
                 FIN_CD_M_PCR.Delete;
               end;
           end;


        //Deleta os títulos que foram gerados pela baixa do contas a receber.
        FIN_CD_M_PAG_XXX.SetProvider(FIN_DP_M_PAG);
        FIN_CD_M_PAG_XXX.Close;
        FIN_CD_M_PAG_XXX.Data :=
            FIN_CD_M_PAG_XXX.DataRequest(VarArrayOf([92, Dataset.FieldByName('ID_BAIXA').AsString]));
        if not FIN_CD_M_PAG_XXX.IsEmpty then
           begin
             while not FIN_CD_M_PAG_XXX.eof do
                begin
                   if FIN_CD_M_PAG_XXX.FieldByName('VLR_PARCELA').asCurrency <>
                      FIN_CD_M_PAG_XXX.FieldByName('VLR_SALDO').asCurrency then
                      begin
                        FIN_CD_M_PAG_XXX.Close;
                        raise Exception.Create('Existe títulos gerado por essa baixa que já foram movimentados.');
                      end;
                   FIN_CD_M_PAG_XXX.Delete;
                end;
           end;

       end;
    //Grava no banco
    if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
       abort;
    if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
       abort;


    if FIN_CD_M_PAG_XXX.active=true then
     if not (FIN_CD_M_PAG_XXX.ApplyUpdates(0) = 0) then
        raise Exception.Create('Erro ao tentar atualizar a tabela de títulos na geração do cartão.');


    if FIN_CD_M_CTA.Active=true then
       if not (FIN_CD_M_CTA.ApplyUpdates(0) = 0) then
          abort;


    if FIN_CD_M_PCR.Active=true then
       if not (FIN_CD_M_PCR.ApplyUpdates(0) = 0) then
          abort;



  finally
    { TODO -oMariel -cProcedure : Definir uma função para Log. }
    //sm.dspUpdateData(Sender, DataSet);
    FIN_CD_M_PAG_PAG.Free;
    FIN_CD_M_PAG.Free;
    FIN_CD_M_PAG_XXX.Free;
    FIN_CD_M_CTA.Free;
    CAD_CD_C_FPG.Free;
    CAD_CD_C_TIF.Free;
    CAD_CD_C_CTC.Free;
    FIN_CD_M_PCR.Free;
    FIN_CD_M_PBX_TIT.Free;
    BUS_CD_C_PAR_CTR.Free;
  end;
end;

end.
