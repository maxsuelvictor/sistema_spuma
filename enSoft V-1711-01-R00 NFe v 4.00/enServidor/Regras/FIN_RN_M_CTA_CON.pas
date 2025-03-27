unit FIN_RN_M_CTA_CON;

interface
uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr;

  procedure FIN_DP_M_CTA_CONUpdateData(DataSet: TCustomClientDataSet; CAD_DP_C_FPG,CAD_DP_C_CTC, CAD_DP_C_TIF,
          FIN_DP_M_CTA,BUS_DP_M_CTA,BUS_DP_M_CON_CTA_INT, BUS_DP_M_CON_GER_INT: TDataSetProvider;SmAtual: TSM);
  procedure GerarRecCta(tipo_geracao:Integer;DataSet: TCustomClientDataSet;ConCxbDet_DataSet: TDataSet;dtaMovExt:TDateTime;FIN_CD_M_REC,FIN_CD_M_REC_PAG,FIN_CD_M_REC_CTA,BUS_CD_C_PAR_CTR:TClientDataSet;SmAtual: TSM);
  procedure GerarPagCta(tipo_geracao:Integer;DataSet: TCustomClientDataSet;ConCxbDet_DataSet: TDataSet;dtaMovExt:TDateTime;FIN_CD_M_PAG,FIN_CD_M_PAG_PAG,FIN_CD_M_PAG_CTA,BUS_CD_C_PAR_CTR:TClientDataSet;SmAtual: TSM);
{var
 sm:Tsm; }

implementation

uses uDmApoio;



 procedure GerarPagCta(tipo_geracao:Integer;DataSet: TCustomClientDataSet;ConCxbDet_DataSet: TDataSet;dtaMovExt:TDateTime;FIN_CD_M_PAG,FIN_CD_M_PAG_PAG,FIN_CD_M_PAG_CTA,BUS_CD_C_PAR_CTR:TClientDataSet;SmAtual: TSM);
 var
    BUS_CD_C_FPG, BUS_CD_C_CTC, BUS_CD_C_TIF: TClientDataSet;
 begin

    if tipo_geracao = 0 then
      begin
        if FIN_CD_M_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
           begin
              FIN_CD_M_PAG.Edit;
              FIN_CD_M_PAG.FieldByName('VLR_SALDO').AsCurrency :=
                  FIN_CD_M_PAG.FieldByName('VLR_SALDO').AsCurrency -
                  (ConCxbDet_DataSet.FieldByName('VLR_LANCAMENTO').AsCurrency -
                    ConCxbDet_DataSet.FieldByName('VLR_JUROS').AsCurrency+
                    ConCxbDet_DataSet.FieldByName('VLR_DESCONTO').AsCurrency);

              FIN_CD_M_PAG.Post;

              FIN_CD_M_PAG_PAG.Insert;

              FIN_CD_M_PAG_PAG.FieldByName('id_titulo').AsInteger  := ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger;
              // Retirado o dmApoio para sm da maneira correta, por Maxsuel em 09/04/2018
              FIN_CD_M_PAG_PAG.FieldByName('ID_BAIXA').AsInteger   := SmAtual.enValorChave('FIN_TB_M_PBX');//smAtual.enValorChave('FIN_TB_M_PBX');
              FIN_CD_M_PAG_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime    := DataSet.FieldByName('DTA_CONCILIACAO').AsDateTime;//smAtual.enDataServer;
              FIN_CD_M_PAG_PAG.FieldByName('VLR_PAGAMENTO').asCurrency    := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;

              FIN_CD_M_PAG_PAG.FieldByName('PER_JUROS').AsFloat           := 0;
              FIN_CD_M_PAG_PAG.FieldByName('VLR_JUROS').AsCurrency        := ConCxbDet_DataSet.FieldByName('VLR_JUROS').asCurrency;
              FIN_CD_M_PAG_PAG.FieldByName('VLR_MULTA').AsCurrency        := 0;
              FIN_CD_M_PAG_PAG.FieldByName('VLR_DESCONTO').AsCurrency     := ConCxbDet_DataSet.FieldByName('VLR_DESCONTO').asCurrency;

              FIN_CD_M_PAG_PAG.FieldByName('HISTORICO').AsString          := 'Pagamento ref. conciliacao: '+ dataset.FieldByName('ID_CONCILIACAO').AsString+', do fornecedor: ' +
                                                                               ConCxbDet_DataSet.FieldByName('id_emitente').AsString;

              FIN_CD_M_PAG_PAG.FieldByName('COM_SUBSTITUICAO').AsBoolean  := false;
              FIN_CD_M_PAG_PAG.FieldByName('ID_FORMA_PAG').AsInteger      := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_PAG').AsInteger;
              FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO').AsString           := ConCxbDet_DataSet.FieldByName('ID_PLANO').AsString;
              FIN_CD_M_PAG_PAG.FieldByName('ID_ABERTURA').AsInteger       := 0;

              FIN_CD_M_PAG_PAG.Post;


              BUS_CD_C_FPG := TClientDataSet.Create(nil);
              BUS_CD_C_FPG.SetProvider(smAtual.CAD_DP_C_FPG);
              BUS_CD_C_FPG.Close;
              BUS_CD_C_FPG.Data :=
                   BUS_CD_C_FPG.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_PAG').AsInteger]));

              BUS_CD_C_CTC := TClientDataSet.Create(nil);
              BUS_CD_C_CTC.SetProvider(smAtual.CAD_DP_C_CTC);
              BUS_CD_C_CTC.Close;
              BUS_CD_C_CTC.Data :=
                   BUS_CD_C_CTC.DataRequest(VarArrayOf([0,dataset.FieldByName('id_conta').AsString]));

              BUS_CD_C_TIF.Free;
              BUS_CD_C_TIF := TClientDataSet.Create(nil);
              BUS_CD_C_TIF.SetProvider(smAtual.CAD_DP_C_TIF);
              BUS_CD_C_TIF.Close;
              BUS_CD_C_TIF.Data :=
                    BUS_CD_C_TIF.DataRequest(VarArrayOf([0,ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger]));



              if BUS_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=true then
                begin
                   FIN_CD_M_PAG_CTA.Insert;
                   // Retirado o dmApoio para sm da maneira correta, por Maxsuel em 09/04/2018
                   FIN_CD_M_PAG_CTA.FieldByName('id_controle').AsInteger       := smAtual.enValorChave('FIN_TB_M_CTA');//smAtual.enValorChave('FIN_TB_M_CTA');
                   FIN_CD_M_PAG_CTA.FieldByName('id_abertura').AsInteger       :=0;
                   FIN_CD_M_PAG_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                   FIN_CD_M_PAG_CTA.FieldByName('tipo_lancamento').AsInteger   :=BUS_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco

                   FIN_CD_M_PAG_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('dta_conciliacao').AsDateTime;
                   FIN_CD_M_PAG_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('dta_conciliacao').AsDateTime;

                   FIN_CD_M_PAG_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_conciliacao').AsInteger;
                   FIN_CD_M_PAG_CTA.FieldByName('deb_cre').AsInteger           :=BUS_CD_C_TIF.FieldByName('natureza').AsInteger;

                   // Comentado por Maxsuel Victor , 30/01/2024
                      //FIN_CD_M_PAG_CTA.FieldByName('historico').AsString          :='Mov. gerado pela conciliação: ' + dataset.FieldByName('id_conciliacao').AsString;
                      // código inserido para melhorar a informação no relatório do banco
                   FIN_CD_M_PAG_CTA.FieldByName('historico').AsString           := 'Conciliação: ' + dataset.FieldByName('id_conciliacao').AsString + ', ' +
                                                                                    ConCxbDet_DataSet.FieldByName('historico').AsString;


                   FIN_CD_M_PAG_CTA.FieldByName('vlr_lancamento').AsCurrency   := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;


                   FIN_CD_M_PAG_CTA.FieldByName('origem').AsInteger            := 10; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
                   FIN_CD_M_PAG_CTA.FieldByName('id_conta').AsInteger          := dataset.FieldByName('id_conta').AsInteger;

                   FIN_CD_M_PAG_CTA.FieldByName('id_tipo_financeiro').AsInteger:=ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger;
                   FIN_CD_M_PAG_CTA.FieldByName('id_plano').AsString           :=ConCxbDet_DataSet.FieldByName('id_plano').AsString;

                   FIN_CD_M_PAG_CTA.FieldByName('conciliado').Asboolean         := true;
                   FIN_CD_M_PAG_CTA.FieldByName('id_fiscal').AsInteger          := 0;
                   FIN_CD_M_PAG_CTA.FieldByName('id_titulo_rec').AsInteger      := 0;
                   FIN_CD_M_PAG_CTA.FieldByName('id_titulo_pag').AsInteger      :=  ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger;
                   FIN_CD_M_PAG_CTA.FieldByName('id_credito').AsInteger         := 0;
                   FIN_CD_M_PAG_CTA.FieldByName('id_baixa_pbx').AsInteger       := 0;
                   FIN_CD_M_PAG_CTA.FieldByName('id_baixa_rbx').AsInteger       := 0;
                   FIN_CD_M_PAG_CTA.FieldByName('id_mch').AsInteger             := 0;
                   FIN_CD_M_PAG_CTA.FieldByName('id_conciliacao').AsInteger     := ConCxbDet_DataSet.FieldByName('id_conciliacao').AsInteger;
                   FIN_CD_M_PAG_CTA.FieldByName('dta_conciliacao').AsDateTime   := ConCxbDet_DataSet.FieldByName('dta_mov_cxb').AsDateTime;

                   FIN_CD_M_PAG_CTA.Post;
               end;
          end;
       end
     else
       begin
         FIN_CD_M_PAG.Insert;
         FIN_CD_M_PAG.fieldByName('id_titulo').AsInteger :=  ConCxbDet_DataSet.FieldByName('id_titulo_pag').AsInteger;
         FIN_CD_M_PAG.FieldByName('ID_EMPRESA').AsInteger :=
                       DataSet.FieldByName('ID_EMPRESA').AsInteger;
         FIN_CD_M_PAG.FieldByName('ORIGEM').AsInteger := 8;

         FIN_CD_M_PAG.FieldByName('id_fornecedor').AsInteger   :=  ConCxbDet_DataSet.FieldByName('id_emitente').AsInteger;
         FIN_CD_M_PAG.FieldByName('id_abertura').AsInteger     := 0;
         FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime    := smAtual.enDataServer;
         FIN_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime := smAtual.enDataServer;
         FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime   := smAtual.enDataServer;
         FIN_CD_M_PAG.FieldByName('id_forma_pag').AsInteger    := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_PAG').AsInteger;
         FIN_CD_M_PAG.FieldByName('vlr_original').AsCurrency   := ConCxbDet_DataSet.FieldByName('vlr_titulo').AsCurrency;
         FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency    := ConCxbDet_DataSet.FieldByName('vlr_titulo').AsCurrency;
         FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency      := 0;

         if trim(ConCxbDet_DataSet.FieldByName('historico').AsString) = '' then
             FIN_CD_M_PAG.FieldByName('historico').AsString           := 'Pagamento ref. conciliacao: '+ dataset.FieldByName('ID_CONCILIACAO').AsString+', do fornecedor: ' +
                                                                                                        ConCxbDet_DataSet.FieldByName('id_emitente').AsString
         else
            FIN_CD_M_PAG.FieldByName('historico').AsString        := ConCxbDet_DataSet.FieldByName('historico').AsString;


         FIN_CD_M_PAG.FieldByName('id_plano').AsString         := ConCxbDet_DataSet.FieldByName('id_plano').AsString;
         FIN_CD_M_PAG.FieldByName('id_local_titulo').AsInteger := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_LOCAL_TITULO_PAG').AsInteger;
         FIN_CD_M_PAG.FieldByName('id_ccusto').AsInteger       := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_CCUSTO_PAG').AsInteger;

         FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger := 1;
         FIN_CD_M_PAG.FieldByName('id_conciliacao').AsInteger  := dataset.FieldByName('ID_CONCILIACAO').AsInteger;

         FIN_CD_M_PAG.Post;


         FIN_CD_M_PAG_PAG.Insert;

          FIN_CD_M_PAG_PAG.FieldByName('id_titulo').AsInteger  :=  FIN_CD_M_PAG.FieldByName('ID_TITULO').AsInteger;
          // Retirado o dmApoio para sm da maneira correta, por Maxsuel em 09/04/2018
          FIN_CD_M_PAG_PAG.FieldByName('ID_BAIXA').AsInteger   := SmAtual.enValorChave('FIN_TB_M_PBX');//smAtual.enValorChave('FIN_TB_M_PBX');
          FIN_CD_M_PAG_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime    := DataSet.FieldByName('DTA_CONCILIACAO').AsDateTime;;//smAtual.enDataServer;
          FIN_CD_M_PAG_PAG.FieldByName('VLR_PAGAMENTO').asCurrency    := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;

          FIN_CD_M_PAG_PAG.FieldByName('PER_JUROS').AsFloat           := 0;
          FIN_CD_M_PAG_PAG.FieldByName('VLR_JUROS').AsCurrency        := ConCxbDet_DataSet.FieldByName('VLR_JUROS').asCurrency;
          FIN_CD_M_PAG_PAG.FieldByName('VLR_MULTA').AsCurrency        := 0;
          FIN_CD_M_PAG_PAG.FieldByName('VLR_DESCONTO').AsCurrency     := ConCxbDet_DataSet.FieldByName('VLR_DESCONTO').asCurrency;


          FIN_CD_M_PAG_PAG.FieldByName('historico').AsString           := 'Pagamento ref. conciliacao: '+ dataset.FieldByName('ID_CONCILIACAO').AsString+', do fornecedor: ' +
                                                                                                        ConCxbDet_DataSet.FieldByName('id_emitente').AsString;

          FIN_CD_M_PAG_PAG.FieldByName('COM_SUBSTITUICAO').AsBoolean  := false;
          FIN_CD_M_PAG_PAG.FieldByName('ID_FORMA_PAG').AsInteger      := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_PAG').AsInteger;
          FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO').AsString           := ConCxbDet_DataSet.FieldByName('ID_PLANO').AsString;
          FIN_CD_M_PAG_PAG.FieldByName('ID_ABERTURA').AsInteger       := 0;

          FIN_CD_M_PAG_PAG.Post;


          BUS_CD_C_FPG := TClientDataSet.Create(nil);
          BUS_CD_C_FPG.SetProvider(smAtual.CAD_DP_C_FPG);
          BUS_CD_C_FPG.Close;
          BUS_CD_C_FPG.Data :=
               BUS_CD_C_FPG.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_PAG').AsInteger]));

          BUS_CD_C_CTC := TClientDataSet.Create(nil);
          BUS_CD_C_CTC.SetProvider(smAtual.CAD_DP_C_CTC);
          BUS_CD_C_CTC.Close;
          BUS_CD_C_CTC.Data :=
               BUS_CD_C_CTC.DataRequest(VarArrayOf([0,dataset.FieldByName('id_conta').AsString]));

          BUS_CD_C_TIF.Free;
          BUS_CD_C_TIF := TClientDataSet.Create(nil);
          BUS_CD_C_TIF.SetProvider(smAtual.CAD_DP_C_TIF);
          BUS_CD_C_TIF.Close;
          BUS_CD_C_TIF.Data :=
                BUS_CD_C_TIF.DataRequest(VarArrayOf([0,ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger]));



          if BUS_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=true then
            begin
               FIN_CD_M_PAG_CTA.Insert;
               // Retirado o dmApoio para sm da maneira correta, por Maxsuel em 09/04/2018
               FIN_CD_M_PAG_CTA.FieldByName('id_controle').AsInteger       := SmAtual.enValorChave('FIN_TB_M_CTA');//smAtual.enValorChave('FIN_TB_M_CTA');
               FIN_CD_M_PAG_CTA.FieldByName('id_abertura').AsInteger       :=0;
               FIN_CD_M_PAG_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
               FIN_CD_M_PAG_CTA.FieldByName('tipo_lancamento').AsInteger   :=BUS_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco

               FIN_CD_M_PAG_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('dta_conciliacao').AsDateTime;
               FIN_CD_M_PAG_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('dta_conciliacao').AsDateTime;

               FIN_CD_M_PAG_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_conciliacao').AsInteger;
               FIN_CD_M_PAG_CTA.FieldByName('deb_cre').AsInteger           :=BUS_CD_C_TIF.FieldByName('natureza').AsInteger;

               // Comentado por Maxsuel Victor , 30/01/2024
                  // código inserido para melhorar a informação no relatório do banco

                  //FIN_CD_M_PAG_CTA.FieldByName('historico').AsString          :='Mov. gerado pela conciliação: ' + dataset.FieldByName('id_conciliacao').AsString;
               FIN_CD_M_PAG_CTA.FieldByName('historico').AsString           := 'Conciliação: ' + dataset.FieldByName('id_conciliacao').AsString + ', ' +
                                                                                ConCxbDet_DataSet.FieldByName('historico').AsString;



               FIN_CD_M_PAG_CTA.FieldByName('vlr_lancamento').AsCurrency   := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;


               FIN_CD_M_PAG_CTA.FieldByName('origem').AsInteger            := 10; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
               FIN_CD_M_PAG_CTA.FieldByName('id_conta').AsInteger          := dataset.FieldByName('id_conta').AsInteger;

               FIN_CD_M_PAG_CTA.FieldByName('id_tipo_financeiro').AsInteger:=ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger;
               FIN_CD_M_PAG_CTA.FieldByName('id_plano').AsString           :=ConCxbDet_DataSet.FieldByName('id_plano').AsString;

               FIN_CD_M_PAG_CTA.FieldByName('conciliado').Asboolean         := true;
               FIN_CD_M_PAG_CTA.FieldByName('id_fiscal').AsInteger          := 0;
               FIN_CD_M_PAG_CTA.FieldByName('id_titulo_rec').AsInteger      := 0;
               FIN_CD_M_PAG_CTA.FieldByName('id_titulo_pag').AsInteger      :=  FIN_CD_M_PAG.fieldByName('id_titulo').AsInteger;
               FIN_CD_M_PAG_CTA.FieldByName('id_credito').AsInteger         := 0;
               FIN_CD_M_PAG_CTA.FieldByName('id_baixa_pbx').AsInteger       := 0;
               FIN_CD_M_PAG_CTA.FieldByName('id_baixa_rbx').AsInteger       := 0;
               FIN_CD_M_PAG_CTA.FieldByName('id_mch').AsInteger             := 0;
               FIN_CD_M_PAG_CTA.FieldByName('id_conciliacao').AsInteger     := ConCxbDet_DataSet.FieldByName('id_conciliacao').AsInteger;
               FIN_CD_M_PAG_CTA.FieldByName('dta_conciliacao').AsDateTime   := ConCxbDet_DataSet.FieldByName('dta_mov_cxb').AsDateTime;

               FIN_CD_M_PAG_CTA.Post;
            end;
       end;
 end;



procedure GerarRecCta(tipo_geracao:Integer;DataSet: TCustomClientDataSet;ConCxbDet_DataSet: TDataSet;dtaMovExt:TDateTime;FIN_CD_M_REC,FIN_CD_M_REC_PAG,FIN_CD_M_REC_CTA,BUS_CD_C_PAR_CTR:TClientDataSet;SmAtual: TSM);
var
   BUS_CD_C_FPG, BUS_CD_C_CTC, BUS_CD_C_TIF: TClientDataSet;

begin

  if tipo_geracao = 0 then
    begin
       if FIN_CD_M_REC.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
           begin

              FIN_CD_M_REC.Edit;
              FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency :=
                  FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency -
                  (ConCxbDet_DataSet.FieldByName('VLR_LANCAMENTO').AsCurrency -
                    ConCxbDet_DataSet.FieldByName('VLR_JUROS').AsCurrency+
                    ConCxbDet_DataSet.FieldByName('VLR_DESCONTO').asCurrency +
                    ConCxbDet_DataSet.FieldByName('VLR_DESCONTO_OPE').asCurrency);

              if (FIN_CD_M_REC.FieldByName('INT_DOCIMPRESSO').AsInteger = 6) then
                 FIN_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger := 2;

              FIN_CD_M_REC.Post;


              FIN_CD_M_REC_PAG.Insert;

              FIN_CD_M_REC_PAG.FieldByName('id_titulo').AsInteger  := ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger;
              // Retirado o dmApoio para sm da maneira correta, por Maxsuel em 09/04/2018
              FIN_CD_M_REC_PAG.FieldByName('ID_BAIXA').AsInteger   := SmAtual.enValorChave('FIN_TB_M_RBX');//smAtual.enValorChave('FIN_TB_M_RBX');
              FIN_CD_M_REC_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime    := DataSet.FieldByName('DTA_CONCILIACAO').AsDateTime;//smAtual.enDataServer;
              FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').asCurrency    := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;

              FIN_CD_M_REC_PAG.FieldByName('PER_JUROS').AsFloat           := 0;
              FIN_CD_M_REC_PAG.FieldByName('VLR_JUROS').AsCurrency        := ConCxbDet_DataSet.FieldByName('VLR_JUROS').asCurrency;
              FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').AsCurrency     := ConCxbDet_DataSet.FieldByName('VLR_DESCONTO').asCurrency +
                                                                             ConCxbDet_DataSet.FieldByName('VLR_DESCONTO_OPE').asCurrency;
              FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString          := 'Recebimento ref. conciliacao: '+ dataset.FieldByName('ID_CONCILIACAO').AsString+', do cliente: ' +
                                                                               ConCxbDet_DataSet.FieldByName('id_emitente').AsString;
              FIN_CD_M_REC_PAG.FieldByName('COM_SUBSTITUICAO').AsBoolean  := false;
              FIN_CD_M_REC_PAG.FieldByName('ID_FORMA_PAG').AsInteger      := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_REC').AsInteger;
              FIN_CD_M_REC_PAG.FieldByName('ID_PLANO').AsString           := ConCxbDet_DataSet.FieldByName('ID_PLANO').AsString;
              FIN_CD_M_REC_PAG.FieldByName('ID_ABERTURA').AsInteger       := 0;

              FIN_CD_M_REC_PAG.Post;


              BUS_CD_C_FPG := TClientDataSet.Create(nil);
              BUS_CD_C_FPG.SetProvider(smAtual.CAD_DP_C_FPG);
              BUS_CD_C_FPG.Close;
              BUS_CD_C_FPG.Data :=
                   BUS_CD_C_FPG.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_REC').AsInteger]));

              BUS_CD_C_CTC := TClientDataSet.Create(nil);
              BUS_CD_C_CTC.SetProvider(smAtual.CAD_DP_C_CTC);
              BUS_CD_C_CTC.Close;
              BUS_CD_C_CTC.Data :=
                   BUS_CD_C_CTC.DataRequest(VarArrayOf([0,dataset.FieldByName('id_conta').AsString]));

              BUS_CD_C_TIF.Free;
              BUS_CD_C_TIF := TClientDataSet.Create(nil);
              BUS_CD_C_TIF.SetProvider(smAtual.CAD_DP_C_TIF);
              BUS_CD_C_TIF.Close;
              BUS_CD_C_TIF.Data :=
                    BUS_CD_C_TIF.DataRequest(VarArrayOf([0,ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger]));



              if BUS_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=true then
                begin
                   FIN_CD_M_REC_CTA.Insert;
                   // Retirado o dmApoio para sm da maneira correta, por Maxsuel em 09/04/2018
                   FIN_CD_M_REC_CTA.FieldByName('id_controle').AsInteger       :=SmAtual.enValorChave('FIN_TB_M_CTA');//smAtual.enValorChave('FIN_TB_M_CTA');
                   FIN_CD_M_REC_CTA.FieldByName('id_abertura').AsInteger       :=0;
                   FIN_CD_M_REC_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                   FIN_CD_M_REC_CTA.FieldByName('tipo_lancamento').AsInteger   :=BUS_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco

                   FIN_CD_M_REC_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('dta_conciliacao').AsDateTime;
                   FIN_CD_M_REC_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('dta_conciliacao').AsDateTime;

                   FIN_CD_M_REC_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_conciliacao').AsInteger;
                   FIN_CD_M_REC_CTA.FieldByName('deb_cre').AsInteger           :=BUS_CD_C_TIF.FieldByName('natureza').AsInteger;
                   FIN_CD_M_REC_CTA.FieldByName('historico').AsString          :='Mov. gerado pela conciliação: ' + dataset.FieldByName('id_conciliacao').AsString;

                   FIN_CD_M_REC_CTA.FieldByName('vlr_lancamento').AsCurrency   := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;


                   FIN_CD_M_REC_CTA.FieldByName('origem').AsInteger            := 10; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
                   FIN_CD_M_REC_CTA.FieldByName('id_conta').AsInteger          := dataset.FieldByName('id_conta').AsInteger;

                   FIN_CD_M_REC_CTA.FieldByName('id_tipo_financeiro').AsInteger:=ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger;
                   FIN_CD_M_REC_CTA.FieldByName('id_plano').AsString           :=ConCxbDet_DataSet.FieldByName('id_plano').AsString;

                   FIN_CD_M_REC_CTA.FieldByName('conciliado').Asboolean         := true;
                   FIN_CD_M_REC_CTA.FieldByName('id_fiscal').AsInteger          := 0;
                   FIN_CD_M_REC_CTA.FieldByName('id_titulo_rec').AsInteger      := ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger;
                   FIN_CD_M_REC_CTA.FieldByName('id_titulo_pag').AsInteger      := 0;
                   FIN_CD_M_REC_CTA.FieldByName('id_credito').AsInteger         := 0;
                   FIN_CD_M_REC_CTA.FieldByName('id_baixa_pbx').AsInteger       := 0;
                   FIN_CD_M_REC_CTA.FieldByName('id_baixa_rbx').AsInteger       := 0;
                   FIN_CD_M_REC_CTA.FieldByName('id_mch').AsInteger             := 0;
                   FIN_CD_M_REC_CTA.FieldByName('id_conciliacao').AsInteger     := ConCxbDet_DataSet.FieldByName('id_conciliacao').AsInteger;
                   FIN_CD_M_REC_CTA.FieldByName('dta_conciliacao').AsDateTime   := ConCxbDet_DataSet.FieldByName('dta_mov_cxb').AsDateTime;

                   FIN_CD_M_REC_CTA.Post;
               end;
          end;
    end
  else
    begin
       FIN_CD_M_REC.Insert;
       FIN_CD_M_REC.fieldByName('id_titulo').AsInteger :=  ConCxbDet_DataSet.FieldByName('id_titulo_rec').AsInteger;
       FIN_CD_M_REC.FieldByName('ID_EMPRESA').AsInteger :=
                     DataSet.FieldByName('ID_EMPRESA').AsInteger;
       FIN_CD_M_REC.FieldByName('NUM_PARCELA').AsString := '0';
       FIN_CD_M_REC.FieldByName('ORIGEM').AsInteger := 4;

       FIN_CD_M_REC.FieldByName('id_cliente').AsInteger   :=  ConCxbDet_DataSet.FieldByName('id_emitente').AsInteger;
       FIN_CD_M_REC.FieldByName('DTA_EMISSAO').AsDateTime    := smAtual.enDataServer;
       FIN_CD_M_REC.FieldByName('dta_vencimento').AsDateTime := smAtual.enDataServer;
       FIN_CD_M_REC.FieldByName('dta_original').AsDateTime   := smAtual.enDataServer;
       FIN_CD_M_REC.FieldByName('id_forma_pag').AsInteger    := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_REC').AsInteger;
       FIN_CD_M_REC.FieldByName('vlr_original').AsCurrency   := ConCxbDet_DataSet.FieldByName('vlr_titulo').AsCurrency;
       FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency    := ConCxbDet_DataSet.FieldByName('vlr_titulo').AsCurrency;
       FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency      := 0;

       if trim(ConCxbDet_DataSet.FieldByName('historico').AsString) = '' then
             FIN_CD_M_REC.FieldByName('historico').AsString           := 'Recebimneto ref. conciliacao: '+ dataset.FieldByName('ID_CONCILIACAO').AsString+', do cliente: ' +
                                                                                                        ConCxbDet_DataSet.FieldByName('id_emitente').AsString
       else
            FIN_CD_M_REC.FieldByName('historico').AsString        := ConCxbDet_DataSet.FieldByName('historico').AsString;


       FIN_CD_M_REC.FieldByName('id_plano').AsString         := ConCxbDet_DataSet.FieldByName('id_plano').AsString;
       FIN_CD_M_REC.FieldByName('id_local_titulo').AsInteger := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_LOCAL_TITULO_REC').AsInteger;
      // FIN_CD_M_REC.FieldByName('id_ccusto').AsInteger       := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_CCUSTO').AsInteger;

       FIN_CD_M_REC.FieldByName('tipo_lancamento').AsInteger := 1;
       FIN_CD_M_REC.FieldByName('id_conciliacao').AsInteger  := dataset.FieldByName('ID_CONCILIACAO').AsInteger;

       FIN_CD_M_REC.Post;


       FIN_CD_M_REC_PAG.Insert;

       FIN_CD_M_REC_PAG.FieldByName('id_titulo').AsInteger  := FIN_CD_M_REC.FieldByName('id_titulo').AsInteger;
       // Retirado o dmApoio para sm da maneira correta, por Maxsuel em 09/04/2018
       FIN_CD_M_REC_PAG.FieldByName('ID_BAIXA').AsInteger   := SmAtual.enValorChave('FIN_TB_M_RBX');//smAtual.enValorChave('FIN_TB_M_RBX');
       FIN_CD_M_REC_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime    := DataSet.FieldByName('DTA_CONCILIACAO').AsDateTime;// smAtual.enDataServer;
       FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').asCurrency    := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;

       FIN_CD_M_REC_PAG.FieldByName('PER_JUROS').AsFloat           := 0;
       FIN_CD_M_REC_PAG.FieldByName('VLR_JUROS').AsCurrency        := ConCxbDet_DataSet.FieldByName('VLR_JUROS').asCurrency;
       FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').AsCurrency     := ConCxbDet_DataSet.FieldByName('VLR_DESCONTO').asCurrency +
                                                                      ConCxbDet_DataSet.FieldByName('VLR_DESCONTO_OPE').asCurrency;
       FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString          := 'Recebimento ref. conciliacao: '+ dataset.FieldByName('ID_CONCILIACAO').AsString+', do cliente: ' +
                                                                       ConCxbDet_DataSet.FieldByName('id_emitente').AsString;
       FIN_CD_M_REC_PAG.FieldByName('COM_SUBSTITUICAO').AsBoolean  := false;
       FIN_CD_M_REC_PAG.FieldByName('ID_FORMA_PAG').AsInteger      := BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_REC').AsInteger;
       FIN_CD_M_REC_PAG.FieldByName('ID_PLANO').AsString           := ConCxbDet_DataSet.FieldByName('ID_PLANO').AsString;
       FIN_CD_M_REC_PAG.FieldByName('ID_ABERTURA').AsInteger       := 0;

       FIN_CD_M_REC_PAG.Post;


       BUS_CD_C_FPG := TClientDataSet.Create(nil);
       BUS_CD_C_FPG.SetProvider(smAtual.CAD_DP_C_FPG);
       BUS_CD_C_FPG.Close;
       BUS_CD_C_FPG.Data :=
           BUS_CD_C_FPG.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldBYName('CON_ID_FORMA_PAG_REC').AsInteger]));

       BUS_CD_C_CTC := TClientDataSet.Create(nil);
       BUS_CD_C_CTC.SetProvider(smAtual.CAD_DP_C_CTC);
       BUS_CD_C_CTC.Close;
       BUS_CD_C_CTC.Data :=
           BUS_CD_C_CTC.DataRequest(VarArrayOf([0,dataset.FieldByName('id_conta').AsString]));

       BUS_CD_C_TIF.Free;
       BUS_CD_C_TIF := TClientDataSet.Create(nil);
       BUS_CD_C_TIF.SetProvider(smAtual.CAD_DP_C_TIF);
       BUS_CD_C_TIF.Close;
       BUS_CD_C_TIF.Data :=
            BUS_CD_C_TIF.DataRequest(VarArrayOf([0,ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger]));



      if BUS_CD_C_FPG.FieldByName('gera_caixa_banco').AsBoolean=true then
        begin
           FIN_CD_M_REC_CTA.Insert;
           // Retirado o dmApoio para sm da maneira correta, por Maxsuel em 09/04/2018
           FIN_CD_M_REC_CTA.FieldByName('id_controle').AsInteger       := SmAtual.enValorChave('FIN_TB_M_CTA');//smAtual.enValorChave('FIN_TB_M_CTA');
           FIN_CD_M_REC_CTA.FieldByName('id_abertura').AsInteger       :=0;
           FIN_CD_M_REC_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
           FIN_CD_M_REC_CTA.FieldByName('tipo_lancamento').AsInteger   :=BUS_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco

           FIN_CD_M_REC_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('dta_conciliacao').AsDateTime;
           FIN_CD_M_REC_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('dta_conciliacao').AsDateTime;

           FIN_CD_M_REC_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_conciliacao').AsInteger;
           FIN_CD_M_REC_CTA.FieldByName('deb_cre').AsInteger           :=BUS_CD_C_TIF.FieldByName('natureza').AsInteger;
           FIN_CD_M_REC_CTA.FieldByName('historico').AsString          :='Mov. gerado pela conciliação: ' + dataset.FieldByName('id_conciliacao').AsString;

           FIN_CD_M_REC_CTA.FieldByName('vlr_lancamento').AsCurrency   := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;


           FIN_CD_M_REC_CTA.FieldByName('origem').AsInteger            := 10; // 0-Manual, 1-Baixa de Conta a Receber, 2-Baixa de Contas a Pagar, 3-Devolução de vendas
           FIN_CD_M_REC_CTA.FieldByName('id_conta').AsInteger          := dataset.FieldByName('id_conta').AsInteger;

           FIN_CD_M_REC_CTA.FieldByName('id_tipo_financeiro').AsInteger:=ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger;
           FIN_CD_M_REC_CTA.FieldByName('id_plano').AsString           :=ConCxbDet_DataSet.FieldByName('id_plano').AsString;

           FIN_CD_M_REC_CTA.FieldByName('conciliado').Asboolean         := true;
           FIN_CD_M_REC_CTA.FieldByName('id_fiscal').AsInteger          := 0;
           FIN_CD_M_REC_CTA.FieldByName('id_titulo_rec').AsInteger      := FIN_CD_M_REC.FieldByName('id_titulo').AsInteger;
           FIN_CD_M_REC_CTA.FieldByName('id_titulo_pag').AsInteger      := 0;
           FIN_CD_M_REC_CTA.FieldByName('id_credito').AsInteger         := 0;
           FIN_CD_M_REC_CTA.FieldByName('id_baixa_pbx').AsInteger       := 0;
           FIN_CD_M_REC_CTA.FieldByName('id_baixa_rbx').AsInteger       := 0;
           FIN_CD_M_REC_CTA.FieldByName('id_mch').AsInteger             := 0;
           FIN_CD_M_REC_CTA.FieldByName('id_conciliacao').AsInteger     := ConCxbDet_DataSet.FieldByName('id_conciliacao').AsInteger;
           FIN_CD_M_REC_CTA.FieldByName('dta_conciliacao').AsDateTime   := ConCxbDet_DataSet.FieldByName('dta_mov_cxb').AsDateTime;

           FIN_CD_M_REC_CTA.Post;
       end;
    end;

end;







procedure FIN_DP_M_CTA_CONUpdateData(DataSet: TCustomClientDataSet; CAD_DP_C_FPG, CAD_DP_C_CTC, CAD_DP_C_TIF, FIN_DP_M_CTA,
          BUS_DP_M_CTA,  BUS_DP_M_CON_CTA_INT, BUS_DP_M_CON_GER_INT: TDataSetProvider;SmAtual: TSM);
var
  ConCxb_DataSet, ConCxbDet_DataSet: TDataSet;

  //ConGer_DataSet, ConCxb_DataSet: TDataSet;
  CAD_CD_C_CTC,CAD_CD_C_TIF, FIN_CD_M_CTA_CCO, FIN_CD_M_CTA_NCO,FIN_CD_M_CTA_NCG, FIN_CD_M_CTA_GER: TClientDataSet;
  BUS_CD_M_CON_CTA_INT, BUS_CD_M_CON_GER_INT: TClientDataSet;

  BUS_CD_C_PAR_CTR: TClientDataSet;
  FIN_CD_M_REC,FIN_CD_M_REC_PAG,FIN_CD_M_REC_CTA:TClientDataSet;
  FIN_CD_M_PAG,FIN_CD_M_PAG_PAG,FIN_CD_M_PAG_CTA:TClientDataSet;

  FIN_CD_M_REC_GER,FIN_CD_M_REC_PAG_GER,FIN_CD_M_REC_CTA_GER:TClientDataSet;
  FIN_CD_M_PAG_GER,FIN_CD_M_PAG_PAG_GER,FIN_CD_M_PAG_CTA_GER:TClientDataSet;

  xMovto, xMovtoDelCta, xMovtoDelGer: String;
  DtaConcMovCxb: TDate;
  jurosNew,descontoNew,descontoOpeNew, vlrLancamentoNew:Currency;
  xTitulosRec,xTitulosPag,xTitulosRecGer,xTitulosPagGer:String;
  tipoTitulo,codTitulo:Integer;
begin
  try

  if not (DataSet.UpdateStatus in [usDeleted]) then
     begin
        ConCxb_DataSet    := TDataSetField(DataSet.FieldByName('FIN_SQ_M_CON_CXB')).NestedDataSet;
        ConCxbDet_DataSet := TDataSetField(ConCxb_DataSet.FieldByName('FIN_SQ_M_CON_CXB_DET')).NestedDataSet;
        //ConCta_DataSet := TDataSetField(DataSet.FieldByName('FIN_SQ_M_CON_CTA')).NestedDataSet;
        //ConGer_DataSet := TDataSetField(DataSet.FieldByName('FIN_SQ_M_CON_GER')).NestedDataSet;


        CAD_CD_C_CTC := TClientDataSet.Create(nil);
        CAD_CD_C_CTC.SetProvider(CAD_DP_C_CTC);
        CAD_CD_C_CTC.Close;
        CAD_CD_C_CTC.Data :=
            CAD_CD_C_CTC.DataRequest(VarArrayOf([0,DataSet.FieldByName('id_conta').AsInteger]));

        FIN_CD_M_CTA_GER := TClientDataSet.Create(nil);
        FIN_CD_M_CTA_GER.SetProvider(FIN_DP_M_CTA);
        FIN_CD_M_CTA_GER.Close;
            FIN_CD_M_CTA_GER.Data :=
                FIN_CD_M_CTA_GER.DataRequest(VarArrayOf([0,'']));


        BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
        BUS_CD_C_PAR_CTR.SetProvider(smAtual.BUS_DP_C_PAR_CTR);
        BUS_CD_C_PAR_CTR.Close;
            BUS_CD_C_PAR_CTR.Data :=
                BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([DataSet.FieldByName('id_empresa').AsInteger]));

        xTitulosRec := '';
        xTitulosPag := '';
        while (not ConCxb_DataSet.eof) do
         begin
            while (not ConCxbDet_DataSet.eof) do
               begin
                 if ConCxbDet_DataSet.UpdateStatus in [usInserted] then
                   begin
                      if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                        begin
                          if xTitulosRec <> '' then
                            begin
                             xTitulosRec :=
                             xTitulosRec + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsString+'''';
                            end
                          else
                            begin
                             xTitulosRec :=
                             xTitulosRec +''''+ ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsString+'''';
                            end;
                        end;

                      if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                        begin
                          if xTitulosPag <> '' then
                            begin
                             xTitulosPag :=
                             xTitulosPag + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsString+'''';
                            end
                          else
                            begin
                             xTitulosPag :=
                             xTitulosPag +''''+ ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsString+'''';
                            end;
                        end;
                   end;

                 if ConCxbDet_DataSet.UpdateStatus in [usUnmodified] then
                   begin
                      ConCxbDet_DataSet.Next;
                   end;
                 ConCxbDet_DataSet.Next;
               end;
            ConCxbDet_DataSet.First;
            if ConCxb_DataSet.UpdateStatus in [usUnmodified] then
              begin
                ConCxb_DataSet.Next;
              end;
            ConCxb_DataSet.Next;
         end;
        ConCxb_DataSet.First;



        FIN_CD_M_REC_CTA := TClientDataSet.Create(nil);
        FIN_CD_M_REC_CTA.SetProvider(smAtual.FIN_DP_M_CTA);
        FIN_CD_M_REC_CTA.Close;
        FIN_CD_M_REC_CTA.Data :=
                FIN_CD_M_REC_CTA.DataRequest(VarArrayOf([107,DataSet.FieldByName('id_conciliacao').AsInteger,'']));




        while not (FIN_CD_M_REC_CTA.Eof)  do
          begin
            if xTitulosRec <> '' then
              begin
               xTitulosRec :=
               xTitulosRec + ',' +''''+  FIN_CD_M_REC_CTA.FieldByName('ID_TITULO_REC').AsString+'''';
              end
            else
              begin
               xTitulosRec :=
               xTitulosRec +''''+ FIN_CD_M_REC_CTA.FieldByName('ID_TITULO_REC').AsString+'''';
              end;
            FIN_CD_M_REC_CTA.Next;
          end;



        if xTitulosRec <> '' then
          begin
            FIN_CD_M_REC := TClientDataSet.Create(nil);
            FIN_CD_M_REC.SetProvider(smAtual.FIN_DP_M_REC);
            FIN_CD_M_REC.Close;
            FIN_CD_M_REC.Data :=
                FIN_CD_M_REC.DataRequest(VarArrayOf([91,xTitulosRec]));

            FIN_CD_M_REC_PAG := TClientDataSet.Create(nil);
            FIN_CD_M_REC_PAG.SetProvider(smAtual.FIN_DP_M_REC_PAG);
            FIN_CD_M_REC_PAG.Close;
            FIN_CD_M_REC_PAG.Data :=
                FIN_CD_M_REC_PAG.DataRequest(VarArrayOf([90,xTitulosRec]));

          end
        else
          begin
           FIN_CD_M_REC := TClientDataSet.Create(nil);
           FIN_CD_M_REC.SetProvider(smAtual.FIN_DP_M_REC);
           FIN_CD_M_REC.Close;
            FIN_CD_M_REC.Data :=
                FIN_CD_M_REC.DataRequest(VarArrayOf([0,'']));


           FIN_CD_M_REC_PAG := TClientDataSet.Create(nil);
           FIN_CD_M_REC_PAG.SetProvider(smAtual.FIN_DP_M_REC_PAG);
           FIN_CD_M_REC_PAG.Close;
           FIN_CD_M_REC_PAG.Data :=
                FIN_CD_M_REC_PAG.DataRequest(VarArrayOf([0,'0']));

          end;

        FIN_CD_M_PAG_CTA := TClientDataSet.Create(nil);
        FIN_CD_M_PAG_CTA.SetProvider(smAtual.FIN_DP_M_CTA);
        FIN_CD_M_PAG_CTA.Close;
        FIN_CD_M_PAG_CTA.Data :=
                FIN_CD_M_PAG_CTA.DataRequest(VarArrayOf([108,DataSet.FieldByName('id_conciliacao').AsInteger,'']));



        while not (FIN_CD_M_PAG_CTA.Eof)  do
          begin
            if xTitulosPag <> '' then
              begin
               xTitulosPag :=
               xTitulosPag + ',' +''''+  FIN_CD_M_PAG_CTA.FieldByName('ID_TITULO_PAG').AsString+'''';
              end
            else
              begin
               xTitulosPag :=
               xTitulosPag +''''+ FIN_CD_M_PAG_CTA.FieldByName('ID_TITULO_PAG').AsString+'''';
              end;
            FIN_CD_M_PAG_CTA.Next;
          end;



        if xTitulosPag <> '' then
          begin
            FIN_CD_M_PAG := TClientDataSet.Create(nil);
            FIN_CD_M_PAG.SetProvider(smAtual.FIN_DP_M_PAG);
            FIN_CD_M_PAG.Close;
            FIN_CD_M_PAG.Data :=
                FIN_CD_M_PAG.DataRequest(VarArrayOf([93,xTitulosPag]));

            FIN_CD_M_PAG_PAG := TClientDataSet.Create(nil);
            FIN_CD_M_PAG_PAG.SetProvider(smAtual.FIN_DP_M_PAG_PAG);
            FIN_CD_M_PAG_PAG.Close;
            FIN_CD_M_PAG_PAG.Data :=
                FIN_CD_M_PAG_PAG.DataRequest(VarArrayOf([92,xTitulosPag]));
          end
        else
          begin
           FIN_CD_M_PAG := TClientDataSet.Create(nil);
           FIN_CD_M_PAG.SetProvider(smAtual.FIN_DP_M_PAG);
           FIN_CD_M_PAG.Close;
            FIN_CD_M_PAG.Data :=
                FIN_CD_M_PAG.DataRequest(VarArrayOf([0,'']));


           FIN_CD_M_PAG_PAG := TClientDataSet.Create(nil);
           FIN_CD_M_PAG_PAG.SetProvider(smAtual.FIN_DP_M_PAG_PAG);
           FIN_CD_M_PAG_PAG.Close;
           FIN_CD_M_PAG_PAG.Data :=
                FIN_CD_M_PAG_PAG.DataRequest(VarArrayOf([0,'0']));
          end;




        // Essa data pode ser de qualquer movimento do fin_tb_m_con_cxb , pois todos terão a mesma data.
        DtaConcMovCxb := ConCxb_DataSet.FieldByName('DTA_MOVIMENTO').AsDateTime;

        if (DataSet.UpdateStatus in [usInserted]) then
           begin
             while not (ConCxb_DataSet.Eof)  do
                 begin
                   if ConCxb_DataSet.FieldByName('STATUS').AsString = 'F' then
                      begin
                        while not (ConCxbDet_DataSet.Eof)  do
                           begin
                             if ConCxbDet_DataSet.FieldByName('MOV_GERADO').AsBoolean = false then
                                begin
                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                      begin
                                        if xMovto <> '' then
                                           begin
                                              xMovto :=
                                              xMovto + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                           end;
                                        if xMovto = '' then
                                           begin
                                             xMovto :=
                                             xMovto +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                           end;
                                      end;


                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                      begin
                                        GerarRecCta(0,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_REC,FIN_CD_M_REC_PAG,FIN_CD_M_REC_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                      end;

                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                      begin
                                        GerarPagCta(0,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_PAG,FIN_CD_M_PAG_PAG,FIN_CD_M_PAG_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                      end;

                                end
                             else
                                begin
                                    CAD_CD_C_TIF.Free;
                                    CAD_CD_C_TIF := TClientDataSet.Create(nil);
                                    CAD_CD_C_TIF.SetProvider(CAD_DP_C_TIF);
                                    CAD_CD_C_TIF.Close;
                                    CAD_CD_C_TIF.Data :=
                                          CAD_CD_C_TIF.DataRequest(VarArrayOf([0,ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger]));


                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                      begin

                                        FIN_CD_M_CTA_GER.Insert;
                                        FIN_CD_M_CTA_GER.FieldByName('id_controle').AsInteger        := ConCxbDet_DataSet.FieldByName('id_controle').AsInteger;
                                        FIN_CD_M_CTA_GER.FieldByName('id_abertura').AsInteger        := 0;
                                        FIN_CD_M_CTA_GER.FieldByName('id_empresa').AsInteger         := dataset.FieldByName('id_empresa').AsInteger;
                                        FIN_CD_M_CTA_GER.FieldByName('tipo_lancamento').AsInteger    := CAD_CD_C_CTC.FieldByName('tipo').AsInteger;   //0-caixa 1-banco
                                        FIN_CD_M_CTA_GER.FieldByName('dta_lancamento').AsDateTime    := dataset.FieldByName('dta_conciliacao').AsDateTime;
                                        FIN_CD_M_CTA_GER.FieldByName('dta_movimento').AsDateTime     := dataset.FieldByName('dta_conciliacao').AsDateTime;

                                        if trim(ConCxbDet_DataSet.FieldByName('num_doc').AsString) = '' then
                                           FIN_CD_M_CTA_GER.FieldByName('num_doc').AsInteger         := dataset.FieldByName('id_conciliacao').AsInteger
                                        else
                                           FIN_CD_M_CTA_GER.FieldByName('num_doc').AsInteger         := ConCxbDet_DataSet.FieldByName('num_doc').AsInteger;

                                        // Comentado por Maxsuel Victor, 30/01/24
                                           // if trim(ConCxbDet_DataSet.FieldByName('historico').AsString) = '' then
                                           //    FIN_CD_M_CTA_GER.FieldByName('historico').AsString           := 'Mov. gerado pela conciliação: ' + dataset.FieldByName('id_conciliacao').AsString
                                           // else
                                        FIN_CD_M_CTA_GER.FieldByName('historico').AsString           :=  'Conciliação: ' + dataset.FieldByName('id_conciliacao').AsString + ', ' +
                                                                                                          ConCxbDet_DataSet.FieldByName('historico').AsString;

                                        FIN_CD_M_CTA_GER.FieldByName('vlr_lancamento').AsCurrency    := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;
                                        FIN_CD_M_CTA_GER.FieldByName('origem').AsInteger             := 10; // Conciliação bancária
                                        FIN_CD_M_CTA_GER.FieldByName('id_conta').AsInteger           := ConCxbDet_DataSet.FieldByName('id_conta').AsInteger;
                                        FIN_CD_M_CTA_GER.FieldByName('id_tipo_financeiro').AsInteger := ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger;
                                        FIN_CD_M_CTA_GER.FieldByName('deb_cre').AsInteger            := CAD_CD_C_TIF.FieldByName('natureza').AsInteger;;
                                        FIN_CD_M_CTA_GER.FieldByName('id_plano').AsString            := ConCxbDet_DataSet.FieldByName('id_plano').AsString;
                                        FIN_CD_M_CTA_GER.FieldByName('conciliado').Asboolean         := true;
                                        FIN_CD_M_CTA_GER.FieldByName('id_fiscal').AsInteger          := 0;
                                        FIN_CD_M_CTA_GER.FieldByName('id_titulo_rec').AsInteger      := 0;
                                        FIN_CD_M_CTA_GER.FieldByName('id_titulo_pag').AsInteger      := 0;
                                        FIN_CD_M_CTA_GER.FieldByName('id_credito').AsInteger         := 0;
                                        FIN_CD_M_CTA_GER.FieldByName('id_baixa_pbx').AsInteger       := 0;
                                        FIN_CD_M_CTA_GER.FieldByName('id_baixa_rbx').AsInteger       := 0;
                                        FIN_CD_M_CTA_GER.FieldByName('id_mch').AsInteger             := 0;
                                        FIN_CD_M_CTA_GER.FieldByName('id_conciliacao').AsInteger     := ConCxbDet_DataSet.FieldByName('id_conciliacao').AsInteger;
                                        FIN_CD_M_CTA_GER.FieldByName('dta_conciliacao').AsDateTime   := ConCxbDet_DataSet.FieldByName('dta_mov_cxb').AsDateTime;
                                        FIN_CD_M_CTA_GER.Post;
                                      end;


                                    if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                      begin
                                        GerarRecCta(1,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_REC,FIN_CD_M_REC_PAG,FIN_CD_M_REC_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                      end;

                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                      begin
                                        GerarPagCta(1,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_PAG,FIN_CD_M_PAG_PAG,FIN_CD_M_PAG_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                      end;


                                end;

                              ConCxbDet_DataSet.Next;
                           end;
                      end;
                    ConCxb_DataSet.Next;
                 end;
           end;

        if (DataSet.UpdateStatus in [usUnmodified]) then
            begin
              while not (ConCxb_DataSet.Eof)  do  // FIN_TB_M_CON_CXB
                 begin
                   // Se houver alteração no FIN_TB_M_CON_CXB
                   if (ConCxb_DataSet.UpdateStatus in [usUnmodified]) then
                      begin
                        ConCxb_DataSet.Next;
                        if (ConCxb_DataSet.UpdateStatus in [usModified]) then
                            begin
                              if ConCxb_DataSet.FieldByName('STATUS').AsString <> '' then
                                 begin
                                    if ConCxb_DataSet.FieldByName('STATUS').AsString = 'F' then
                                       begin
                                         ConCxb_DataSet.Prior;
                                         while not (ConCxbDet_DataSet.Eof)  do
                                           begin
                                             if ConCxbDet_DataSet.FieldByName('MOV_GERADO').AsBoolean = false then
                                                begin
                                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                                      begin
                                                        if xMovto <> '' then
                                                           begin
                                                              xMovto :=
                                                              xMovto + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                           end;
                                                        if xMovto = '' then
                                                           begin
                                                             xMovto :=
                                                             xMovto +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                           end;
                                                      end;

                                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                                      begin
                                                        GerarRecCta(0,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_REC,FIN_CD_M_REC_PAG,FIN_CD_M_REC_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                                      end;

                                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                                      begin
                                                        GerarPagCta(0,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_PAG,FIN_CD_M_PAG_PAG,FIN_CD_M_PAG_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                                      end;

                                                end
                                             else
                                                begin
                                                    CAD_CD_C_TIF.Free;
                                                    CAD_CD_C_TIF := TClientDataSet.Create(nil);
                                                    CAD_CD_C_TIF.SetProvider(CAD_DP_C_TIF);
                                                    CAD_CD_C_TIF.Close;
                                                    CAD_CD_C_TIF.Data :=
                                                          CAD_CD_C_TIF.DataRequest(VarArrayOf([0,ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger]));


                                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                                      begin

                                                        FIN_CD_M_CTA_GER.Insert;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_controle').AsInteger        := ConCxbDet_DataSet.FieldByName('id_controle').AsInteger;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_abertura').AsInteger        := 0;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_empresa').AsInteger         := dataset.FieldByName('id_empresa').AsInteger;
                                                        FIN_CD_M_CTA_GER.FieldByName('tipo_lancamento').AsInteger    := CAD_CD_C_CTC.FieldByName('tipo').AsInteger;   //0-caixa 1-banco
                                                        FIN_CD_M_CTA_GER.FieldByName('dta_lancamento').AsDateTime    := dataset.FieldByName('dta_conciliacao').AsDateTime;
                                                        FIN_CD_M_CTA_GER.FieldByName('dta_movimento').AsDateTime     := dataset.FieldByName('dta_conciliacao').AsDateTime;

                                                        if trim(ConCxbDet_DataSet.FieldByName('num_doc').AsString) = '' then
                                                           FIN_CD_M_CTA_GER.FieldByName('num_doc').AsInteger         := dataset.FieldByName('id_conciliacao').AsInteger
                                                        else
                                                           FIN_CD_M_CTA_GER.FieldByName('num_doc').AsInteger         := ConCxbDet_DataSet.FieldByName('num_doc').AsInteger;

                                                        // Comentado por Maxsuel Victor, 30/01/24
                                                           //if trim(ConCxbDet_DataSet.FieldByName('historico').AsString) = '' then
                                                           //   FIN_CD_M_CTA_GER.FieldByName('historico').AsString           := 'Mov. gerado pela conciliação: ' + dataset.FieldByName('id_conciliacao').AsString
                                                           //else
                                                        FIN_CD_M_CTA_GER.FieldByName('historico').AsString           := 'Conciliação: ' + dataset.FieldByName('id_conciliacao').AsString + ', ' +
                                                                                                                        ConCxbDet_DataSet.FieldByName('historico').AsString;

                                                        FIN_CD_M_CTA_GER.FieldByName('vlr_lancamento').AsCurrency    := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;
                                                        FIN_CD_M_CTA_GER.FieldByName('origem').AsInteger             := 10; // Conciliação bancária
                                                        FIN_CD_M_CTA_GER.FieldByName('id_conta').AsInteger           := ConCxbDet_DataSet.FieldByName('id_conta').AsInteger;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_tipo_financeiro').AsInteger := ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger;
                                                        FIN_CD_M_CTA_GER.FieldByName('deb_cre').AsInteger            := CAD_CD_C_TIF.FieldByName('natureza').AsInteger;;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_plano').AsString            := ConCxbDet_DataSet.FieldByName('id_plano').AsString;
                                                        FIN_CD_M_CTA_GER.FieldByName('conciliado').Asboolean         := true;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_fiscal').AsInteger          := 0;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_titulo_rec').AsInteger      := 0;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_titulo_pag').AsInteger      := 0;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_credito').AsInteger         := 0;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_baixa_pbx').AsInteger       := 0;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_baixa_rbx').AsInteger       := 0;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_mch').AsInteger             := 0;
                                                        FIN_CD_M_CTA_GER.FieldByName('id_conciliacao').AsInteger     := ConCxbDet_DataSet.FieldByName('id_conciliacao').AsInteger;
                                                        FIN_CD_M_CTA_GER.FieldByName('dta_conciliacao').AsDateTime   := ConCxbDet_DataSet.FieldByName('dta_mov_cxb').AsDateTime;
                                                        FIN_CD_M_CTA_GER.Post;
                                                      end;


                                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                                      begin
                                                       GerarRecCta(1,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_REC,FIN_CD_M_REC_PAG,FIN_CD_M_REC_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                                      end;

                                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                                      begin
                                                        GerarPagCta(1,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_PAG,FIN_CD_M_PAG_PAG,FIN_CD_M_PAG_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                                      end;


                                                end;

                                              ConCxbDet_DataSet.Next;
                                           end;

                                           if FIN_CD_M_REC <> nil then
                                              if FIN_CD_M_REC.ChangeCount > 0 then
                                                 if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
                                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');


                                           if FIN_CD_M_REC_PAG <> nil then
                                             if FIN_CD_M_REC_PAG.ChangeCount > 0 then
                                               if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
                                                     raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');

                                           if FIN_CD_M_PAG <> nil then
                                              if FIN_CD_M_PAG.ChangeCount > 0 then
                                                 if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
                                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar .');

                                           if FIN_CD_M_PAG_PAG <> nil then
                                              if FIN_CD_M_PAG_PAG.ChangeCount > 0 then
                                                 if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
                                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar.');


                                          ConCxb_DataSet.Next;
                                       end
                                    else
                                        begin
                                          ConCxb_DataSet.Prior;
                                          while not (ConCxbDet_DataSet.Eof)  do
                                               begin
                                                 if ConCxbDet_DataSet.FieldByName('MOV_GERADO').AsBoolean = False then
                                                    begin
                                                        if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                                           begin
                                                             if xMovtoDelCta <> '' then
                                                                 begin
                                                                    xMovtoDelCta :=
                                                                    xMovtoDelCta + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                                 end;
                                                             if xMovtoDelCta = '' then
                                                                begin
                                                                  xMovtoDelCta :=
                                                                  xMovtoDelCta + ''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                                end;
                                                           end;

                                                        if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                                           begin
                                                            if FIN_CD_M_REC.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                               begin
                                                                 FIN_CD_M_REC.Edit;
                                                                 FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency := FIN_CD_M_REC.FieldByname('VLR_PARCELA').AsCurrency;
                                                                 FIN_CD_M_REC.Post;
                                                                 if FIN_CD_M_REC_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                                    begin
                                                                      FIN_CD_M_REC_PAG.Delete;
                                                                    end;
                                                               end;


                                                              if FIN_CD_M_REC_CTA.Locate('ID_TITULO_REC',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                                 begin
                                                                  FIN_CD_M_REC_CTA.Delete;
                                                                 end;

                                                            end;

                                                        if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                                           begin
                                                              if FIN_CD_M_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                                 begin
                                                                   FIN_CD_M_PAG.Edit;
                                                                   FIN_CD_M_PAG.FieldByName('VLR_SALDO').AsCurrency := FIN_CD_M_PAG.FieldByname('VLR_PARCELA').AsCurrency;
                                                                   FIN_CD_M_PAG.Post;
                                                                   if FIN_CD_M_PAG_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                                      begin
                                                                        FIN_CD_M_PAG_PAG.Delete;
                                                                      end;
                                                                 end;


                                                                if FIN_CD_M_PAG_CTA.Locate('ID_TITULO_PAG',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                                   begin
                                                                    FIN_CD_M_PAG_CTA.Delete;
                                                                   end;
                                                           end;

                                                    end
                                                 else
                                                    begin
                                                       if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                                           begin
                                                              if xMovtoDelGer <> '' then
                                                                 begin
                                                                    xMovtoDelGer :=
                                                                    xMovtoDelGer + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                                 end;
                                                              if xMovtoDelGer = '' then
                                                                 begin
                                                                   xMovtoDelGer :=
                                                                   xMovtoDelGer + ''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                                 end;
                                                           end;

                                                       if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                                         begin
                                                            if FIN_CD_M_REC.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                               begin
                                                                 FIN_CD_M_REC.Delete;
                                                                 if FIN_CD_M_REC_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                                    begin
                                                                      FIN_CD_M_REC_PAG.Delete;
                                                                    end;
                                                               end;


                                                              if FIN_CD_M_REC_CTA.Locate('ID_TITULO_REC',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                                 begin
                                                                  FIN_CD_M_REC_CTA.Delete;
                                                                 end;

                                                         end;

                                                       if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                                         begin
                                                            if FIN_CD_M_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                               begin
                                                                 FIN_CD_M_PAG.Delete;
                                                                 if FIN_CD_M_PAG_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                                    begin
                                                                      FIN_CD_M_PAG_PAG.Delete;
                                                                    end;
                                                               end;


                                                              if FIN_CD_M_PAG_CTA.Locate('ID_TITULO_PAG',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                                 begin
                                                                  FIN_CD_M_PAG_CTA.Delete;
                                                                 end;
                                                         end;
                                                    end;
                                                 ConCxbDet_DataSet.Next;
                                               end;


                                          if FIN_CD_M_REC_PAG <> nil then
                                             if FIN_CD_M_REC_PAG.ChangeCount > 0 then
                                                if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
                                                    raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');

                                          if FIN_CD_M_REC <> nil then
                                             if FIN_CD_M_REC.ChangeCount > 0 then
                                                if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
                                                    raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');


                                          if FIN_CD_M_PAG_PAG <> nil then
                                             if FIN_CD_M_PAG_PAG.ChangeCount > 0 then
                                                if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
                                                    raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar.');

                                          if FIN_CD_M_PAG <> nil then
                                             if FIN_CD_M_PAG.ChangeCount > 0 then
                                                if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
                                                    raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar .');






                                          ConCxb_DataSet.Next;
                                        end
                                 end;
                           // end;
                           end
                           else
                             begin


                                ////inicio////////////

                               if ConCxb_DataSet.FieldByName('STATUS').AsString = 'F' then
                                 begin
                                  ConCxbDet_DataSet.Prior;
                                  while not (ConCxbDet_DataSet.Eof)  do
                                    begin
                                      if (ConCxbDet_DataSet.UpdateStatus in [usInserted]) then
                                        begin
                                          if ConCxbDet_DataSet.FieldByName('MOV_GERADO').AsBoolean = false then
                                            begin
                                               if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                                  begin
                                                    if xMovto <> '' then
                                                       begin
                                                          xMovto :=
                                                          xMovto + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                       end;
                                                    if xMovto = '' then
                                                       begin
                                                         xMovto :=
                                                         xMovto +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                       end;
                                                  end;

                                               if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                                  begin
                                                    GerarRecCta(0,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_REC,FIN_CD_M_REC_PAG,FIN_CD_M_REC_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                                  end;

                                               if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                                  begin
                                                    GerarPagCta(0,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_PAG,FIN_CD_M_PAG_PAG,FIN_CD_M_PAG_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                                  end;
                                            end
                                          else
                                           begin
                                              CAD_CD_C_TIF.Free;
                                              CAD_CD_C_TIF := TClientDataSet.Create(nil);
                                              CAD_CD_C_TIF.SetProvider(CAD_DP_C_TIF);
                                              CAD_CD_C_TIF.Close;
                                              CAD_CD_C_TIF.Data :=
                                                    CAD_CD_C_TIF.DataRequest(VarArrayOf([0,ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger]));


                                              if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                                begin

                                                  FIN_CD_M_CTA_GER.Insert;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_controle').AsInteger        := ConCxbDet_DataSet.FieldByName('id_controle').AsInteger;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_abertura').AsInteger        := 0;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_empresa').AsInteger         := dataset.FieldByName('id_empresa').AsInteger;
                                                  FIN_CD_M_CTA_GER.FieldByName('tipo_lancamento').AsInteger    := CAD_CD_C_CTC.FieldByName('tipo').AsInteger;   //0-caixa 1-banco
                                                  FIN_CD_M_CTA_GER.FieldByName('dta_lancamento').AsDateTime    := dataset.FieldByName('dta_conciliacao').AsDateTime;
                                                  FIN_CD_M_CTA_GER.FieldByName('dta_movimento').AsDateTime     := dataset.FieldByName('dta_conciliacao').AsDateTime;

                                                  if trim(ConCxbDet_DataSet.FieldByName('num_doc').AsString) = '' then
                                                     FIN_CD_M_CTA_GER.FieldByName('num_doc').AsInteger         := dataset.FieldByName('id_conciliacao').AsInteger
                                                  else
                                                     FIN_CD_M_CTA_GER.FieldByName('num_doc').AsInteger         := ConCxbDet_DataSet.FieldByName('num_doc').AsInteger;

                                                  // Comentado por Maxsuel Victor, 30/01/2024
                                                  //if trim(ConCxbDet_DataSet.FieldByName('historico').AsString) = '' then
                                                  //   FIN_CD_M_CTA_GER.FieldByName('historico').AsString           := 'Mov. gerado pela conciliação: ' + dataset.FieldByName('id_conciliacao').AsString
                                                  //else

                                                  FIN_CD_M_CTA_GER.FieldByName('historico').AsString           :=  'Conciliação: ' + dataset.FieldByName('id_conciliacao').AsString + ', ' +
                                                                                                                    ConCxbDet_DataSet.FieldByName('historico').AsString;

                                                  FIN_CD_M_CTA_GER.FieldByName('vlr_lancamento').AsCurrency    := ConCxbDet_DataSet.FieldByName('vlr_lancamento').AsCurrency;
                                                  FIN_CD_M_CTA_GER.FieldByName('origem').AsInteger             := 10; // Conciliação bancária
                                                  FIN_CD_M_CTA_GER.FieldByName('id_conta').AsInteger           := ConCxbDet_DataSet.FieldByName('id_conta').AsInteger;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_tipo_financeiro').AsInteger := ConCxbDet_DataSet.FieldByName('id_tipo_financeiro').AsInteger;
                                                  FIN_CD_M_CTA_GER.FieldByName('deb_cre').AsInteger            := CAD_CD_C_TIF.FieldByName('natureza').AsInteger;;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_plano').AsString            := ConCxbDet_DataSet.FieldByName('id_plano').AsString;
                                                  FIN_CD_M_CTA_GER.FieldByName('conciliado').Asboolean         := true;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_fiscal').AsInteger          := 0;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_titulo_rec').AsInteger      := 0;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_titulo_pag').AsInteger      := 0;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_credito').AsInteger         := 0;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_baixa_pbx').AsInteger       := 0;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_baixa_rbx').AsInteger       := 0;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_mch').AsInteger             := 0;
                                                  FIN_CD_M_CTA_GER.FieldByName('id_conciliacao').AsInteger     := ConCxbDet_DataSet.FieldByName('id_conciliacao').AsInteger;
                                                  FIN_CD_M_CTA_GER.FieldByName('dta_conciliacao').AsDateTime   := ConCxbDet_DataSet.FieldByName('dta_mov_cxb').AsDateTime;
                                                  FIN_CD_M_CTA_GER.Post;
                                                end;

                                               if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                                  begin
                                                    GerarRecCta(1,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_REC,FIN_CD_M_REC_PAG,FIN_CD_M_REC_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                                  end;

                                               if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                                  begin
                                                    GerarPagCta(1,DataSet,ConCxbDet_DataSet,DtaConcMovCxb,FIN_CD_M_PAG,FIN_CD_M_PAG_PAG,FIN_CD_M_PAG_CTA,BUS_CD_C_PAR_CTR,SmAtual);
                                                  end;

                                           end;


                                           if FIN_CD_M_REC <> nil then
                                              if FIN_CD_M_REC.ChangeCount > 0 then
                                                 if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
                                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');


                                           if FIN_CD_M_REC_PAG <> nil then
                                             if FIN_CD_M_REC_PAG.ChangeCount > 0 then
                                               if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
                                                     raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');

                                           if FIN_CD_M_PAG <> nil then
                                              if FIN_CD_M_PAG.ChangeCount > 0 then
                                                 if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
                                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar .');

                                           if FIN_CD_M_PAG_PAG <> nil then
                                              if FIN_CD_M_PAG_PAG.ChangeCount > 0 then
                                                 if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
                                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar.');


                                        end;

                                      if (ConCxbDet_DataSet.UpdateStatus in [usUnmodified]) then
                                        begin

                                          tipoTitulo := ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger;
                                          if tipoTitulo =1 then
                                            codTitulo := ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger;
                                          if tipoTitulo =2 then
                                            codTitulo := ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger;


                                          jurosNew := ConCxbDet_DataSet.FieldByName('VLR_JUROS').AsCurrency;
                                          descontoNew := ConCxbDet_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;
                                          descontoOpeNew := ConCxbDet_DataSet.FieldByName('VLR_DESCONTO_OPE').AsCurrency;
                                          vlrLancamentoNew := ConCxbDet_DataSet.FieldByName('VLR_LANCAMENTO').AsCurrency;
                                          ConCxbDet_DataSet.Next;

                                          if ConCxbDet_DataSet.FieldByName('VLR_JUROS').AsString <> '' then
                                            jurosNew := ConCxbDet_DataSet.FieldByName('VLR_JUROS').AsCurrency;


                                          if ConCxbDet_DataSet.FieldByName('VLR_DESCONTO').AsString <> '' then
                                            descontoNew := ConCxbDet_DataSet.FieldByName('VLR_DESCONTO').AsCurrency;

                                          if ConCxbDet_DataSet.FieldByName('VLR_DESCONTO_OPE').AsString <> '' then
                                            descontoOpeNew := ConCxbDet_DataSet.FieldByName('VLR_DESCONTO_OPE').AsCurrency;


                                          if ConCxbDet_DataSet.FieldByName('VLR_LANCAMENTO').AsString <> '' then
                                            vlrLancamentoNew := ConCxbDet_DataSet.FieldByName('VLR_LANCAMENTO').AsCurrency;

                                          if (tipoTitulo = 1) then
                                             begin
                                              if FIN_CD_M_REC_PAG.Locate('ID_TITULO',codTitulo,[]) then
                                                 begin
                                                   FIN_CD_M_REC_PAG.Edit;
                                                   FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').asCurrency    := vlrLancamentoNew;
                                                   FIN_CD_M_REC_PAG.FieldByName('VLR_JUROS').asCurrency        := jurosNew;
                                                   FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').asCurrency     := descontoNew +
                                                                                                                  descontoOpeNew;
                                                   FIN_CD_M_REC_PAG.Post;
                                                 end;

                                              if FIN_CD_M_REC_CTA.Locate('ID_TITULO_REC',codTitulo,[]) then
                                                 begin
                                                   FIN_CD_M_REC_CTA.Edit;
                                                   FIN_CD_M_REC_CTA.FieldByName('VLR_LANCAMENTO').asCurrency    := vlrLancamentoNew;
                                                   FIN_CD_M_REC_CTA.Post;
                                                 end;
                                             end;

                                          if (tipoTitulo = 2) then
                                             begin
                                               if FIN_CD_M_PAG_PAG.Locate('ID_TITULO',codTitulo,[]) then
                                                 begin
                                                   FIN_CD_M_PAG_PAG.Edit;
                                                   FIN_CD_M_PAG_PAG.FieldByName('VLR_PAGAMENTO').asCurrency    := vlrLancamentoNew;
                                                   FIN_CD_M_PAG_PAG.FieldByName('VLR_JUROS').asCurrency        := jurosNew;
                                                   FIN_CD_M_PAG_PAG.FieldByName('VLR_DESCONTO').asCurrency     := descontoNew;
                                                   FIN_CD_M_PAG_PAG.Post;
                                                 end;

                                               if FIN_CD_M_PAG_CTA.Locate('ID_TITULO_PAG',codTitulo,[]) then
                                                 begin
                                                   FIN_CD_M_PAG_CTA.Edit;
                                                   FIN_CD_M_PAG_CTA.FieldByName('VLR_LANCAMENTO').asCurrency    := vlrLancamentoNew;
                                                   FIN_CD_M_PAG_CTA.Post;
                                                 end;
                                             end;


                                          if FIN_CD_M_REC <> nil then
                                              if FIN_CD_M_REC.ChangeCount > 0 then
                                                 if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
                                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');


                                           if FIN_CD_M_REC_PAG <> nil then
                                             if FIN_CD_M_REC_PAG.ChangeCount > 0 then
                                               if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
                                                     raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');

                                           if FIN_CD_M_PAG <> nil then
                                              if FIN_CD_M_PAG.ChangeCount > 0 then
                                                 if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
                                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar .');

                                           if FIN_CD_M_PAG_PAG <> nil then
                                              if FIN_CD_M_PAG_PAG.ChangeCount > 0 then
                                                 if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
                                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar.');


                                        end;

                                      if (ConCxbDet_DataSet.UpdateStatus in [usDeleted]) then
                                        begin
                                           if ConCxbDet_DataSet.FieldByName('MOV_GERADO').AsBoolean = false then
                                              begin
                                                 if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                                   begin
                                                     if xMovtoDelCta <> '' then
                                                         begin
                                                            xMovtoDelCta :=
                                                            xMovtoDelCta + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                         end;
                                                     if xMovtoDelCta = '' then
                                                        begin
                                                          xMovtoDelCta :=
                                                          xMovtoDelCta + ''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                        end;
                                                   end;
                                                 if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                                   begin
                                                      if FIN_CD_M_REC.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                         begin
                                                           FIN_CD_M_REC.Edit;
                                                           FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency := FIN_CD_M_REC.FieldByname('VLR_PARCELA').AsCurrency;
                                                           FIN_CD_M_REC.Post;
                                                           if FIN_CD_M_REC_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                              begin
                                                                FIN_CD_M_REC_PAG.Delete;
                                                              end;
                                                         end;


                                                        if FIN_CD_M_REC_CTA.Locate('ID_TITULO_REC',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                           begin
                                                            FIN_CD_M_REC_CTA.Delete;
                                                           end;

                                                   end;
                                                 if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                                   begin
                                                      if FIN_CD_M_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                         begin
                                                           FIN_CD_M_PAG.Edit;
                                                           FIN_CD_M_PAG.FieldByName('VLR_SALDO').AsCurrency := FIN_CD_M_PAG.FieldByname('VLR_PARCELA').AsCurrency;
                                                           FIN_CD_M_PAG.Post;
                                                           if FIN_CD_M_PAG_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                              begin
                                                                FIN_CD_M_PAG_PAG.Delete;
                                                              end;
                                                         end;


                                                        if FIN_CD_M_PAG_CTA.Locate('ID_TITULO_PAG',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                           begin
                                                            FIN_CD_M_PAG_CTA.Delete;
                                                           end;
                                                   end;

                                              end
                                           else
                                              begin
                                                 if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                                   begin
                                                      if xMovtoDelGer <> '' then
                                                         begin
                                                            xMovtoDelGer :=
                                                            xMovtoDelGer + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                         end;
                                                      if xMovtoDelGer = '' then
                                                         begin
                                                           xMovtoDelGer :=
                                                           xMovtoDelGer + ''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                                         end;
                                                   end;

                                                 if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                                   begin
                                                      if FIN_CD_M_REC.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                         begin
                                                           FIN_CD_M_REC.Delete;
                                                           if FIN_CD_M_REC_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                              begin
                                                                FIN_CD_M_REC_PAG.Delete;
                                                              end;
                                                         end;


                                                        if FIN_CD_M_REC_CTA.Locate('ID_TITULO_REC',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                           begin
                                                            FIN_CD_M_REC_CTA.Delete;
                                                           end;

                                                   end;
                                                 if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                                   begin
                                                      if FIN_CD_M_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                         begin
                                                           FIN_CD_M_PAG.Delete;
                                                           if FIN_CD_M_PAG_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                              begin
                                                                FIN_CD_M_PAG_PAG.Delete;
                                                              end;
                                                         end;


                                                        if FIN_CD_M_PAG_CTA.Locate('ID_TITULO_PAG',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                           begin
                                                            FIN_CD_M_PAG_CTA.Delete;
                                                           end;
                                                   end;
                                              end;

                                             if FIN_CD_M_REC_PAG <> nil then
                                                if FIN_CD_M_REC_PAG.ChangeCount > 0 then
                                                   if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
                                                         raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');

                                             if FIN_CD_M_REC <> nil then
                                                if FIN_CD_M_REC.ChangeCount > 0 then
                                                   if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
                                                         raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');


                                             if FIN_CD_M_PAG_PAG <> nil then
                                                if FIN_CD_M_PAG_PAG.ChangeCount > 0 then
                                                   if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
                                                         raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar.');

                                             if FIN_CD_M_PAG <> nil then
                                                if FIN_CD_M_PAG.ChangeCount > 0 then
                                                   if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
                                                         raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar .');


                                        end;

                                        ConCxbDet_DataSet.Next;
                                    end;

                                    /////fim///////



                                  end;


                             end;
                      end;

                   if ConCxb_DataSet.UpdateStatus in [usDeleted] then
                      begin
                        while not (ConCxbDet_DataSet.Eof)  do
                           begin
                             if ConCxbDet_DataSet.FieldByName('MOV_GERADO').AsBoolean = false then
                                begin
                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                     begin
                                       if xMovtoDelCta <> '' then
                                           begin
                                              xMovtoDelCta :=
                                              xMovtoDelCta + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                           end;
                                       if xMovtoDelCta = '' then
                                          begin
                                            xMovtoDelCta :=
                                            xMovtoDelCta + ''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                          end;
                                     end;
                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                     begin
                                        if FIN_CD_M_REC.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                           begin
                                             FIN_CD_M_REC.Edit;
                                             FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency := FIN_CD_M_REC.FieldByname('VLR_PARCELA').AsCurrency;
                                             FIN_CD_M_REC.Post;
                                             if FIN_CD_M_REC_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                begin
                                                  FIN_CD_M_REC_PAG.Delete;
                                                end;
                                           end;


                                          if FIN_CD_M_REC_CTA.Locate('ID_TITULO_REC',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                             begin
                                              FIN_CD_M_REC_CTA.Delete;
                                             end;

                                     end;
                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                     begin
                                        if FIN_CD_M_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                           begin
                                             FIN_CD_M_PAG.Edit;
                                             FIN_CD_M_PAG.FieldByName('VLR_SALDO').AsCurrency := FIN_CD_M_REC.FieldByname('VLR_PARCELA').AsCurrency;
                                             FIN_CD_M_PAG.Post;
                                             if FIN_CD_M_PAG_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                begin
                                                  FIN_CD_M_PAG_PAG.Delete;
                                                end;
                                           end;


                                          if FIN_CD_M_PAG_CTA.Locate('ID_TITULO_PAG',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                             begin
                                              FIN_CD_M_PAG_CTA.Delete;
                                             end;
                                     end;

                                end
                             else
                                begin
                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 0) then
                                     begin
                                        if xMovtoDelGer <> '' then
                                           begin
                                              xMovtoDelGer :=
                                              xMovtoDelGer + ',' +''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                           end;
                                        if xMovtoDelGer = '' then
                                           begin
                                             xMovtoDelGer :=
                                             xMovtoDelGer + ''''+ ConCxbDet_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                                           end;
                                     end;

                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 1) then
                                     begin
                                        if FIN_CD_M_REC.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                           begin
                                             FIN_CD_M_REC.Delete;
                                             if FIN_CD_M_REC_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                                begin
                                                  FIN_CD_M_REC_PAG.Delete;
                                                end;
                                           end;


                                          if FIN_CD_M_REC_CTA.Locate('ID_TITULO_REC',ConCxbDet_DataSet.FieldByName('ID_TITULO_REC').AsInteger,[]) then
                                             begin
                                              FIN_CD_M_REC_CTA.Delete;
                                             end;

                                     end;
                                   if (ConCxbDet_DataSet.FieldByName('TIPO_TITULO').AsInteger = 2) then
                                     begin
                                        if FIN_CD_M_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                           begin
                                             FIN_CD_M_PAG.Delete;
                                             if FIN_CD_M_PAG_PAG.Locate('ID_TITULO',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                                begin
                                                  FIN_CD_M_PAG_PAG.Delete;
                                                end;
                                           end;


                                          if FIN_CD_M_PAG_CTA.Locate('ID_TITULO_PAG',ConCxbDet_DataSet.FieldByName('ID_TITULO_PAG').AsInteger,[]) then
                                             begin
                                              FIN_CD_M_PAG_CTA.Delete;
                                             end;
                                     end;


                                end;
                             ConCxbDet_DataSet.Next;
                           end;


                           if FIN_CD_M_REC_PAG <> nil then
                              if FIN_CD_M_REC_PAG.ChangeCount > 0 then
                                 if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');

                           if FIN_CD_M_REC <> nil then
                              if FIN_CD_M_REC.ChangeCount > 0 then
                                 if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');


                           if FIN_CD_M_PAG_PAG <> nil then
                              if FIN_CD_M_PAG_PAG.ChangeCount > 0 then
                                 if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar.');

                           if FIN_CD_M_PAG <> nil then
                              if FIN_CD_M_PAG.ChangeCount > 0 then
                                 if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
                                       raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar .');


                      end;
                   ConCxb_DataSet.Next;
                 end;

              {while not (ConGer_DataSet.Eof)  do
                 begin
                   if (ConGer_DataSet.UpdateStatus in [usInserted]) then
                      begin
                        if xMovto <> '' then
                           begin
                              xMovto :=
                              xMovto + ',' +''''+ ConGer_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                           end;
                        if xMovto = '' then
                           begin
                             xMovto :=
                             xMovto +''''+ ConGer_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                           end;
                      end;

                   if ConGer_DataSet.UpdateStatus in [usDeleted] then
                      begin
                        if xMovtoDelGer <> '' then
                           begin
                              xMovtoDelGer :=
                              xMovtoDelGer + ',' +''''+ ConGer_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                           end;
                        if xMovtoDelGer = '' then
                           begin
                             xMovtoDelGer :=
                             xMovtoDelGer + ''''+ ConGer_DataSet.FieldByName('ID_CONTROLE').AsString+'''';
                           end;
                      end;
                   ConGer_DataSet.Next;
                 end;  }

            end;


        if xMovto <> '' then
           begin
              FIN_CD_M_CTA_CCO := TClientDataSet.Create(nil);
              FIN_CD_M_CTA_CCO.SetProvider(FIN_DP_M_CTA);
              FIN_CD_M_CTA_CCO.Close;
              FIN_CD_M_CTA_CCO.Data :=
                  FIN_CD_M_CTA_CCO.DataRequest(VarArrayOf([100,xMovto]));

              FIN_CD_M_CTA_CCO.First;
              while not FIN_CD_M_CTA_CCO.eof do
                 begin
                   FIN_CD_M_CTA_CCO.edit;
                   FIN_CD_M_CTA_CCO.FieldByName('CONCILIADO').AsBoolean       := true;
                   FIN_CD_M_CTA_CCO.FieldByName('id_conciliacao').AsInteger   := DataSet.FieldByName('id_conciliacao').AsInteger;
                   FIN_CD_M_CTA_CCO.FieldByName('dta_conciliacao').AsDateTime := DtaConcMovCxb;  // Data da conciliação no extrato do banco
                   FIN_CD_M_CTA_CCO.Post;

                   FIN_CD_M_CTA_CCO.Next;
                 end;
           end
        else
           begin
              FIN_CD_M_CTA_CCO := TClientDataSet.Create(nil);
              FIN_CD_M_CTA_CCO.SetProvider(FIN_DP_M_CTA);
              FIN_CD_M_CTA_CCO.Close;
              FIN_CD_M_CTA_CCO.Data :=
                  FIN_CD_M_CTA_CCO.DataRequest(VarArrayOf([0,'']));
           end;



        if (xMovtoDelCta <> '') then
           begin
              FIN_CD_M_CTA_NCO := TClientDataSet.Create(nil);
              FIN_CD_M_CTA_NCO.SetProvider(FIN_DP_M_CTA);
              FIN_CD_M_CTA_NCO.Close;
              FIN_CD_M_CTA_NCO.Data :=
                  FIN_CD_M_CTA_NCO.DataRequest(VarArrayOf([100,xMovtoDelCta]));

              FIN_CD_M_CTA_NCO.First;
              while not FIN_CD_M_CTA_NCO.eof do
                 begin
                   FIN_CD_M_CTA_NCO.edit;
                   FIN_CD_M_CTA_NCO.FieldByName('CONCILIADO').AsBoolean     := False;
                   FIN_CD_M_CTA_NCO.FieldByName('id_conciliacao').AsInteger := 0;
                   FIN_CD_M_CTA_NCO.FieldByName('dta_conciliacao').text     := '';
                   FIN_CD_M_CTA_NCO.Post;
                   FIN_CD_M_CTA_NCO.Next;
                 end;
           end;

        if xMovtoDelGer <> '' then
           begin
              FIN_CD_M_CTA_NCG := TClientDataSet.Create(nil);
              FIN_CD_M_CTA_NCG.SetProvider(BUS_DP_M_CTA);
              FIN_CD_M_CTA_NCG.Close;
              FIN_CD_M_CTA_NCG.Data :=
                  FIN_CD_M_CTA_NCG.DataRequest(VarArrayOf([100,xMovtoDelGer]));

              FIN_CD_M_CTA_NCG.First;
              while not FIN_CD_M_CTA_NCG.eof do
                 begin
                   FIN_CD_M_CTA_NCG.delete;
                 end;
           end;




       { if xRec <> '' then
           begin
              FIN_CD_M_REC_CCO := TClientDataSet.Create(nil);
              FIN_CD_M_REC_CCO.SetProvider(FIN_DP_M_REC);
              FIN_CD_M_REC_CCO.Close;
              FIN_CD_M_REC_CCO.Data :=
                  FIN_CD_M_REC_CCO.DataRequest(VarArrayOf([100,xRec]));

              FIN_CD_M_REC_CCO.First;
              while not FIN_CD_M_REC_CCO.eof do
                 begin
                   FIN_CD_M_REC_CCO.edit;
                   FIN_CD_M_REC_CCO.FieldByName('VLR_SALDO').AsCurrency      := 0;

                   FIN_CD_M_REC_CCO.Post;

                   FIN_CD_M_REC_CCO.Next;
                 end;
           end
        else
           begin
              FIN_CD_M_REC_CCO := TClientDataSet.Create(nil);
              FIN_CD_M_REC_CCO.SetProvider(FIN_DP_M_REC);
              FIN_CD_M_REC_CCO.Close;
              FIN_CD_M_REC_CCO.Data :=
                  FIN_CD_M_REC_CCO.DataRequest(VarArrayOf([0,'']));
           end;



        if (xMovtoDelCta <> '') then
           begin
              FIN_CD_M_CTA_NCO := TClientDataSet.Create(nil);
              FIN_CD_M_CTA_NCO.SetProvider(FIN_DP_M_CTA);
              FIN_CD_M_CTA_NCO.Close;
              FIN_CD_M_CTA_NCO.Data :=
                  FIN_CD_M_CTA_NCO.DataRequest(VarArrayOf([100,xMovtoDelCta]));

              FIN_CD_M_CTA_NCO.First;
              while not FIN_CD_M_CTA_NCO.eof do
                 begin
                   FIN_CD_M_CTA_NCO.edit;
                   FIN_CD_M_CTA_NCO.FieldByName('CONCILIADO').AsBoolean     := False;
                   FIN_CD_M_CTA_NCO.FieldByName('id_conciliacao').AsInteger := 0;
                   FIN_CD_M_CTA_NCO.FieldByName('dta_conciliacao').text     := '';
                   FIN_CD_M_CTA_NCO.Post;
                   FIN_CD_M_CTA_NCO.Next;
                 end;
           end;

        if xMovtoDelGer <> '' then
           begin
              FIN_CD_M_CTA_NCG := TClientDataSet.Create(nil);
              FIN_CD_M_CTA_NCG.SetProvider(BUS_DP_M_CTA);
              FIN_CD_M_CTA_NCG.Close;
              FIN_CD_M_CTA_NCG.Data :=
                  FIN_CD_M_CTA_NCG.DataRequest(VarArrayOf([100,xMovtoDelGer]));

              FIN_CD_M_CTA_NCG.First;
              while not FIN_CD_M_CTA_NCG.eof do
                 begin
                   FIN_CD_M_CTA_NCG.delete;
                 end;
           end;}


     end
  else
     begin

       xMovto       := '';
       xMovtoDelGer := '';

       xTitulosRec := '';
       xTitulosPag := '';
       xTitulosRecGer := '';
       xTitulosPagGer := '';

       BUS_CD_M_CON_CTA_INT := TClientDataSet.Create(nil);
       BUS_CD_M_CON_CTA_INT.SetProvider(BUS_DP_M_CON_CTA_INT);
       BUS_CD_M_CON_CTA_INT.Close;
       BUS_CD_M_CON_CTA_INT.Data :=
            BUS_CD_M_CON_CTA_INT.DataRequest(VarArrayOf([dataset.FieldByName('id_conciliacao').AsInteger]));


       BUS_CD_M_CON_GER_INT := TClientDataSet.Create(nil);
       BUS_CD_M_CON_GER_INT.SetProvider(BUS_DP_M_CON_GER_INT);
       BUS_CD_M_CON_GER_INT.Close;
       BUS_CD_M_CON_GER_INT.Data :=
            BUS_CD_M_CON_GER_INT.DataRequest(VarArrayOf([dataset.FieldByName('id_conciliacao').AsInteger]));




        while not (BUS_CD_M_CON_CTA_INT.Eof)  do
           begin
            if (BUS_CD_M_CON_CTA_INT.FieldByName('TIPO_TITULO').AsInteger = 0) then
              begin
                if xMovto <> '' then
                   begin
                      xMovto :=
                      xMovto + ',' +''''+ BUS_CD_M_CON_CTA_INT.FieldByName('ID_CONTROLE').AsString+'''';
                   end;
                if xMovto = '' then
                   begin
                     xMovto :=
                     xMovto +''''+ BUS_CD_M_CON_CTA_INT.FieldByName('ID_CONTROLE').AsString+'''';
                   end;
              end;
            if (BUS_CD_M_CON_CTA_INT.FieldByName('TIPO_TITULO').AsInteger = 2) then
              begin
                 if xTitulosPag <> '' then
                    begin
                     xTitulosPag :=
                     xTitulosPag + ',' +''''+  BUS_CD_M_CON_CTA_INT.FieldByName('ID_TITULO_PAG').AsString+'''';
                    end
                 else
                    begin
                     xTitulosPag :=
                     xTitulosPag +''''+ BUS_CD_M_CON_CTA_INT.FieldByName('ID_TITULO_PAG').AsString+'''';
                    end;
              end;

            if (BUS_CD_M_CON_CTA_INT.FieldByName('TIPO_TITULO').AsInteger = 1) then
              begin
                  if xTitulosRec <> '' then
                    begin
                     xTitulosRec :=
                     xTitulosRec + ',' +''''+  BUS_CD_M_CON_CTA_INT.FieldByName('ID_TITULO_REC').AsString+'''';
                    end
                 else
                    begin
                     xTitulosRec :=
                     xTitulosRec +''''+ BUS_CD_M_CON_CTA_INT.FieldByName('ID_TITULO_REC').AsString+'''';
                    end;
              end;

              BUS_CD_M_CON_CTA_INT.Next;
           end;
        BUS_CD_M_CON_CTA_INT.close;

         while not (BUS_CD_M_CON_GER_INT.Eof)  do
           begin
             if (BUS_CD_M_CON_GER_INT.FieldByName('TIPO_TITULO').AsInteger = 0) then
               begin
                 if xMovtoDelGer <> '' then
                   begin
                      xMovtoDelGer :=
                      xMovtoDelGer + ',' +''''+ BUS_CD_M_CON_GER_INT.FieldByName('ID_CONTROLE').AsString+'''';
                   end;
                 if xMovtoDelGer = '' then
                   begin
                     xMovtoDelGer :=
                     xMovtoDelGer +''''+ BUS_CD_M_CON_GER_INT.FieldByName('ID_CONTROLE').AsString+'''';
                   end;
               end;

             if (BUS_CD_M_CON_GER_INT.FieldByName('TIPO_TITULO').AsInteger = 2) then
              begin
                 if xTitulosPagGer <> '' then
                    begin
                     xTitulosPagGer :=
                     xTitulosPagGer + ',' +''''+  BUS_CD_M_CON_GER_INT.FieldByName('ID_TITULO_PAG').AsString+'''';
                    end
                 else
                    begin
                     xTitulosPagGer :=
                     xTitulosPagGer +''''+ BUS_CD_M_CON_GER_INT.FieldByName('ID_TITULO_PAG').AsString+'''';
                    end;
              end;

            if (BUS_CD_M_CON_GER_INT.FieldByName('TIPO_TITULO').AsInteger = 1) then
              begin
                  if xTitulosRecGer <> '' then
                    begin
                     xTitulosRecGer :=
                     xTitulosRecGer + ',' +''''+  BUS_CD_M_CON_GER_INT.FieldByName('ID_TITULO_REC').AsString+'''';
                    end
                 else
                    begin
                     xTitulosRecGer :=
                     xTitulosRecGer +''''+ BUS_CD_M_CON_GER_INT.FieldByName('ID_TITULO_REC').AsString+'''';
                    end;
              end;

              BUS_CD_M_CON_GER_INT.next;
           end;
         BUS_CD_M_CON_GER_INT.close;

         if xMovto <> '' then
            begin
               FIN_CD_M_CTA_NCO := TClientDataSet.Create(nil);
               FIN_CD_M_CTA_NCO.SetProvider(FIN_DP_M_CTA);
               FIN_CD_M_CTA_NCO.Close;
               FIN_CD_M_CTA_NCO.Data :=
                    FIN_CD_M_CTA_NCO.DataRequest(VarArrayOf([100,xMovto]));

               FIN_CD_M_CTA_NCO.First;
               while not FIN_CD_M_CTA_NCO.eof do
                  begin
                    FIN_CD_M_CTA_NCO.edit;
                    FIN_CD_M_CTA_NCO.FieldByName('CONCILIADO').AsBoolean     := False;
                    FIN_CD_M_CTA_NCO.FieldByName('id_conciliacao').AsInteger := 0;
                    FIN_CD_M_CTA_NCO.FieldByName('dta_conciliacao').text     := '';
                    FIN_CD_M_CTA_NCO.Post;
                    FIN_CD_M_CTA_NCO.Next;
                  end;
            end;

        if xMovtoDelGer <> '' then
           begin
              FIN_CD_M_CTA_NCG := TClientDataSet.Create(nil);
              FIN_CD_M_CTA_NCG.SetProvider(BUS_DP_M_CTA);
              FIN_CD_M_CTA_NCG.Close;
              FIN_CD_M_CTA_NCG.Data :=
                  FIN_CD_M_CTA_NCG.DataRequest(VarArrayOf([100,xMovtoDelGer]));

              FIN_CD_M_CTA_NCG.First;
              while not FIN_CD_M_CTA_NCG.eof do
                 begin
                   FIN_CD_M_CTA_NCG.delete;
                 end;
           end;


        if  xTitulosRec <> '' then
           begin
              FIN_CD_M_REC := TClientDataSet.Create(nil);
              FIN_CD_M_REC.SetProvider(smAtual.FIN_DP_M_REC);
              FIN_CD_M_REC.Close;
              FIN_CD_M_REC.Data :=
                  FIN_CD_M_REC.DataRequest(VarArrayOf([91,xTitulosRec]));

              FIN_CD_M_REC_PAG := TClientDataSet.Create(nil);
              FIN_CD_M_REC_PAG.SetProvider(smAtual.FIN_DP_M_REC_PAG);
              FIN_CD_M_REC_PAG.Close;
              FIN_CD_M_REC_PAG.Data :=
                  FIN_CD_M_REC_PAG.DataRequest(VarArrayOf([90,xTitulosRec]));


              FIN_CD_M_REC_CTA := TClientDataSet.Create(nil);
              FIN_CD_M_REC_CTA.SetProvider(FIN_DP_M_CTA);
              FIN_CD_M_REC_CTA.Close;
              FIN_CD_M_REC_CTA.Data :=
                  FIN_CD_M_REC_CTA.DataRequest(VarArrayOf([107,dataset.FieldByName('id_conciliacao').AsInteger,xTitulosRec]));


              FIN_CD_M_REC.First;
              while not FIN_CD_M_REC.eof do
                 begin
                   FIN_CD_M_REC.Edit;
                   FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency := FIN_CD_M_REC.FieldByname('VLR_PARCELA').AsCurrency;
                   FIN_CD_M_REC.Post;
                   if FIN_CD_M_REC_PAG.Locate('ID_TITULO',FIN_CD_M_REC.FieldByName('ID_TITULO').AsInteger,[]) then
                     begin
                       FIN_CD_M_REC_PAG.Delete;
                     end;

                  if FIN_CD_M_REC_CTA.Locate('ID_TITULO_REC',FIN_CD_M_REC.FieldByName('ID_TITULO').AsInteger,[]) then
                     begin
                      FIN_CD_M_REC_CTA.Delete;
                     end;

                   FIN_CD_M_REC.Next;
                 end;
           end;



        if  xTitulosPag <> '' then
           begin
              FIN_CD_M_PAG := TClientDataSet.Create(nil);
              FIN_CD_M_PAG.SetProvider(smAtual.FIN_DP_M_PAG);
              FIN_CD_M_PAG.Close;
              FIN_CD_M_PAG.Data :=
                  FIN_CD_M_PAG.DataRequest(VarArrayOf([93,xTitulosPag]));

              FIN_CD_M_PAG_PAG := TClientDataSet.Create(nil);
              FIN_CD_M_PAG_PAG.SetProvider(smAtual.FIN_DP_M_PAG_PAG);
              FIN_CD_M_PAG_PAG.Close;
              FIN_CD_M_PAG_PAG.Data :=
                  FIN_CD_M_PAG_PAG.DataRequest(VarArrayOf([92,xTitulosPag]));


              FIN_CD_M_PAG_CTA := TClientDataSet.Create(nil);
              FIN_CD_M_PAG_CTA.SetProvider(FIN_DP_M_CTA);
              FIN_CD_M_PAG_CTA.Close;
              FIN_CD_M_PAG_CTA.Data :=
                  FIN_CD_M_PAG_CTA.DataRequest(VarArrayOf([108,dataset.FieldByName('id_conciliacao').AsInteger,xTitulosPag]));


              FIN_CD_M_PAG.First;
              while not FIN_CD_M_PAG.eof do
                 begin
                   FIN_CD_M_PAG.Edit;
                   FIN_CD_M_PAG.FieldByName('VLR_SALDO').AsCurrency := FIN_CD_M_PAG.FieldByname('VLR_PARCELA').AsCurrency;
                   FIN_CD_M_PAG.Post;
                   if FIN_CD_M_PAG_PAG.Locate('ID_TITULO',FIN_CD_M_PAG.FieldByName('ID_TITULO').AsInteger,[]) then
                     begin
                       FIN_CD_M_PAG_PAG.Delete;
                     end;

                  if FIN_CD_M_PAG_CTA.Locate('ID_TITULO_PAG',FIN_CD_M_PAG.FieldByName('ID_TITULO').AsInteger,[]) then
                     begin
                      FIN_CD_M_PAG_CTA.Delete;
                     end;

                   FIN_CD_M_PAG.Next;
                 end;
           end;



       if  xTitulosRecGer <> '' then
           begin
              FIN_CD_M_REC_GER := TClientDataSet.Create(nil);
              FIN_CD_M_REC_GER.SetProvider(smAtual.FIN_DP_M_REC);
              FIN_CD_M_REC_GER.Close;
              FIN_CD_M_REC_GER.Data :=
                  FIN_CD_M_REC_GER.DataRequest(VarArrayOf([91,xTitulosRecGer]));

              FIN_CD_M_REC_PAG_GER := TClientDataSet.Create(nil);
              FIN_CD_M_REC_PAG_GER.SetProvider(smAtual.FIN_DP_M_REC_PAG);
              FIN_CD_M_REC_PAG_GER.Close;
              FIN_CD_M_REC_PAG_GER.Data :=
                  FIN_CD_M_REC_PAG_GER.DataRequest(VarArrayOf([90,xTitulosRecGer]));


              FIN_CD_M_REC_CTA_GER := TClientDataSet.Create(nil);
              FIN_CD_M_REC_CTA_GER.SetProvider(FIN_DP_M_CTA);
              FIN_CD_M_REC_CTA_GER.Close;
              FIN_CD_M_REC_CTA_GER.Data :=
                  FIN_CD_M_REC_CTA_GER.DataRequest(VarArrayOf([107,dataset.FieldByName('id_conciliacao').AsInteger,xTitulosRecGer]));


              FIN_CD_M_REC_GER.First;
              while not FIN_CD_M_REC_GER.IsEmpty do
                 begin
                   if FIN_CD_M_REC_PAG_GER.Locate('ID_TITULO',FIN_CD_M_REC_GER.FieldByName('ID_TITULO').AsInteger,[]) then
                     begin
                       FIN_CD_M_REC_PAG_GER.Delete;
                     end;

                   if FIN_CD_M_REC_CTA_GER.Locate('ID_TITULO_REC',FIN_CD_M_REC_GER.FieldByName('ID_TITULO').AsInteger,[]) then
                     begin
                      FIN_CD_M_REC_CTA_GER.Delete;
                     end;

                   FIN_CD_M_REC_GER.Delete;
                 end;
           end;



        if  xTitulosPagGer <> '' then
           begin
              FIN_CD_M_PAG_GER := TClientDataSet.Create(nil);
              FIN_CD_M_PAG_GER.SetProvider(smAtual.FIN_DP_M_PAG);
              FIN_CD_M_PAG_GER.Close;
              FIN_CD_M_PAG_GER.Data :=
                  FIN_CD_M_PAG_GER.DataRequest(VarArrayOf([93,xTitulosPagGer]));

              FIN_CD_M_PAG_PAG_GER := TClientDataSet.Create(nil);
              FIN_CD_M_PAG_PAG_GER.SetProvider(smAtual.FIN_DP_M_PAG_PAG);
              FIN_CD_M_PAG_PAG_GER.Close;
              FIN_CD_M_PAG_PAG_GER.Data :=
                  FIN_CD_M_PAG_PAG_GER.DataRequest(VarArrayOf([92,xTitulosPagGer]));


              FIN_CD_M_PAG_CTA_GER := TClientDataSet.Create(nil);
              FIN_CD_M_PAG_CTA_GER.SetProvider(FIN_DP_M_CTA);
              FIN_CD_M_PAG_CTA_GER.Close;
              FIN_CD_M_PAG_CTA_GER.Data :=
                  FIN_CD_M_PAG_CTA_GER.DataRequest(VarArrayOf([108,dataset.FieldByName('id_conciliacao').AsInteger,xTitulosPagGer]));


              FIN_CD_M_PAG_GER.First;
              while not FIN_CD_M_PAG_GER.IsEmpty do
                 begin
                   if FIN_CD_M_PAG_PAG_GER.Locate('ID_TITULO',FIN_CD_M_PAG_GER.FieldByName('ID_TITULO').AsInteger,[]) then
                     begin
                       FIN_CD_M_PAG_PAG_GER.Delete;
                     end;

                  if FIN_CD_M_PAG_CTA_GER.Locate('ID_TITULO_PAG',FIN_CD_M_PAG_GER.FieldByName('ID_TITULO').AsInteger,[]) then
                     begin
                      FIN_CD_M_PAG_CTA_GER.Delete;
                     end;

                  FIN_CD_M_PAG_GER.Delete;
                 end;
           end;






       if FIN_CD_M_REC_PAG <> nil then
          if FIN_CD_M_REC_PAG.ChangeCount > 0 then
             if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
                   raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');

       if FIN_CD_M_REC <> nil then
          if FIN_CD_M_REC.ChangeCount > 0 then
             if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
                   raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');

       if FIN_CD_M_PAG_PAG <> nil then
          if FIN_CD_M_PAG_PAG.ChangeCount > 0 then
             if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
                   raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar.');

       if FIN_CD_M_PAG <> nil then
          if FIN_CD_M_PAG.ChangeCount > 0 then
             if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
                   raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar .');



       if FIN_CD_M_REC_PAG_GER <> nil then
          if FIN_CD_M_REC_PAG_GER.ChangeCount > 0 then
             if not (FIN_CD_M_REC_PAG_GER.ApplyUpdates(0) = 0) then
                   raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');

       if FIN_CD_M_REC_GER <> nil then
          if FIN_CD_M_REC_GER.ChangeCount > 0 then
             if not (FIN_CD_M_REC_GER.ApplyUpdates(0) = 0) then
                   raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');

       if FIN_CD_M_PAG_PAG_GER <> nil then
          if FIN_CD_M_PAG_PAG_GER.ChangeCount > 0 then
             if not (FIN_CD_M_PAG_PAG_GER.ApplyUpdates(0) = 0) then
                   raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar.');

       if FIN_CD_M_PAG_GER <> nil then
          if FIN_CD_M_PAG_GER.ChangeCount > 0 then
             if not (FIN_CD_M_PAG_GER.ApplyUpdates(0) = 0) then
                   raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar .');



     end;


   if FIN_CD_M_CTA_CCO <> nil then
      if not FIN_CD_M_CTA_CCO.IsEmpty then
         if not (FIN_CD_M_CTA_CCO.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar as movimentações.');

   if FIN_CD_M_CTA_NCO <> nil then
      if FIN_CD_M_CTA_NCO.ChangeCount > 0 then
         if not (FIN_CD_M_CTA_NCO.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar as movimentações.');

   if FIN_CD_M_CTA_GER <> nil then
      if FIN_CD_M_CTA_GER.ChangeCount > 0 then
         if not (FIN_CD_M_CTA_GER.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar as movimentações.');


   if FIN_CD_M_CTA_NCG <> nil then
      if FIN_CD_M_CTA_NCG.ChangeCount > 0 then
         if not (FIN_CD_M_CTA_NCG.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar as movimentações.');

   if FIN_CD_M_REC <> nil then
      if FIN_CD_M_REC.ChangeCount > 0 then
         if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');

   if FIN_CD_M_REC_PAG <> nil then
      if FIN_CD_M_REC_PAG.ChangeCount > 0 then
         if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');

   if FIN_CD_M_PAG <> nil then
      if FIN_CD_M_PAG.ChangeCount > 0 then
         if not (FIN_CD_M_PAG.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar .');

   if FIN_CD_M_PAG_PAG <> nil then
      if FIN_CD_M_PAG_PAG.ChangeCount > 0 then
         if not (FIN_CD_M_PAG_PAG.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar os títulos de contas a pagar.');

   if FIN_CD_M_REC_CTA <> nil then
      if FIN_CD_M_REC_CTA.ChangeCount > 0 then
         if not (FIN_CD_M_REC_CTA.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar as movimentações relacionados com títulos de contas a receber.');

   if FIN_CD_M_PAG_CTA <> nil then
      if FIN_CD_M_PAG_CTA.ChangeCount > 0 then
         if not (FIN_CD_M_PAG_CTA.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar as movimentações relacionados com títulos de contas a pagar.');


   if FIN_CD_M_REC_CTA_GER <> nil then
      if FIN_CD_M_REC_CTA_GER.ChangeCount > 0 then
         if not (FIN_CD_M_REC_CTA_GER.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar as movimentações relacionados com títulos de contas a receber  .');

   if FIN_CD_M_PAG_CTA_GER <> nil then
      if FIN_CD_M_PAG_CTA_GER.ChangeCount > 0 then
         if not (FIN_CD_M_PAG_CTA_GER.ApplyUpdates(0) = 0) then
               raise Exception.Create('Erro ao tentar atualizar as movimentações relacionados com títulos de contas a pagar  .');





   finally
      CAD_CD_C_CTC.free;
      CAD_CD_C_TIF.free;
      FIN_CD_M_CTA_CCO.free;
      FIN_CD_M_CTA_NCO.free;
      FIN_CD_M_CTA_NCG.free;
      BUS_CD_M_CON_CTA_INT.free;
      BUS_CD_M_CON_GER_INT.free;

      BUS_CD_C_PAR_CTR.Free;
      FIN_CD_M_REC.Free;
      FIN_CD_M_REC_PAG.Free;
      FIN_CD_M_PAG.Free;
      FIN_CD_M_PAG_PAG.Free;
      FIN_CD_M_REC_CTA.Free;
      FIN_CD_M_PAG_CTA.Free;


      FIN_CD_M_REC_GER.Free;
      FIN_CD_M_REC_PAG_GER.Free;
      FIN_CD_M_PAG_GER.Free;
      FIN_CD_M_PAG_PAG_GER.Free;
      FIN_CD_M_REC_CTA_GER.Free;
      FIN_CD_M_PAG_CTA_GER.Free;



   end;
end;




end.
