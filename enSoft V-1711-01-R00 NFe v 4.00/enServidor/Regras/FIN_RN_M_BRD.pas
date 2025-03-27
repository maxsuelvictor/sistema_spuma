unit FIN_RN_M_BRD;

interface

uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr;

procedure FIN_DP_M_BRDUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet; SM: TSM);


implementation

procedure FIN_DP_M_BRDUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet; SM: TSM);
var
  FIN_CD_M_PAG_PAG, FIN_CD_M_PAG,CAD_CD_C_TIF,
  FIN_CD_M_PAG_XXX, FIN_CD_M_CTA, CAD_CD_C_CTC,
  CAD_CD_C_FPG, BUS_CD_M_BRD_TIT_INT: TClientDataSet;

  cds: TDataSet;

  Status_Bxa, Status_Canc, Status_Lib: Boolean;

  xTitulos, Historico, IdBordero,IdAbertura: String;
  IdBaixa: Integer;

  DtaBxa: TDateTime;

  IdRespBxa: Integer;
begin


  { TODO -oMaxsuel -cCriação :
    Criado em: 26/09/2016

    Método responsável pela regra de negócio do borderô.
    - Baixar o título;
    - Gerar o pag_pag;
    - Gerar o Cta; }


  if dataset.UpdateStatus in [usUnmodified] then
     begin
        Status_Lib     := dataset.FieldByName('liberado').AsBoolean;

        Status_Bxa := dataset.FieldByName('baixado').AsBoolean;
        Status_Canc    := dataset.FieldByName('cancelado').AsBoolean;

        dataset.next;
        if dataset.UpdateStatus in [usModified] then
           begin
              if dataset.FieldByName('baixado').AsString <> '' then
                 begin
                   Status_Bxa := dataset.FieldByName('baixado').AsBoolean;
                 end;

              if dataset.FieldByName('cancelado').AsString <> '' then
                 begin
                   Status_Canc := dataset.FieldByName('cancelado').AsBoolean;
                 end;

              if dataset.FieldByName('liberado').AsString <> '' then
                 begin
                   Status_Lib := dataset.FieldByName('liberado').AsBoolean;
                 end;

              if dataset.FieldByName('dta_bxa').AsString <> '' then
                 begin
                   DtaBxa := dataset.FieldByName('dta_bxa').AsDateTime;
                 end;

              if Dataset.FieldByName('id_resp_bxa').AsString <> '' then
                 begin
                   IdRespBxa := Dataset.FieldByName('id_resp_bxa').AsInteger;
                 end;

              if Dataset.FieldByName('id_abertura').AsString <> '' then
                 begin
                   IdAbertura := Dataset.FieldByName('id_abertura').AsString;
                 end;
           end;
        dataset.Prior;

        if Status_Lib and Status_Bxa then
           begin
             try
              // Comentado por Maxsuel Victor, em 25/08/2017 pois será usado o Self (enSm)
              //SM := TSM.Create(nil);

              xTitulos := '';


              FIN_CD_M_PAG_PAG      := TClientDataSet.Create(nil);
              FIN_CD_M_PAG          := TClientDataSet.Create(nil);
              FIN_CD_M_PAG_XXX      := TClientDataSet.Create(nil);
              FIN_CD_M_CTA          := TClientDataSet.Create(nil);
              CAD_CD_C_FPG          := TClientDataSet.Create(nil);
              CAD_CD_C_CTC          := TClientDataSet.Create(nil);
              CAD_CD_C_TIF          := TClientDataSet.Create(nil);
              BUS_CD_M_BRD_TIT_INT  := TClientDataSet.Create(nil);


              BUS_CD_M_BRD_TIT_INT.SetProvider(sm.BUS_DP_M_BRD_TIT_INT);
              FIN_CD_M_PAG.SetProvider(sm.FIN_DP_M_PAG);
              FIN_CD_M_PAG_PAG.SetProvider(sm.FIN_DP_M_PAG_PAG);
              FIN_CD_M_CTA.SetProvider(sm.FIN_DP_M_CTA);
              CAD_CD_C_FPG.SetProvider(sm.CAD_DP_C_FPG);
              CAD_CD_C_CTC.SetProvider(sm.CAD_DP_C_CTC);
              CAD_CD_C_TIF.SetProvider(sm.CAD_DP_C_TIF);


              CAD_CD_C_CTC.Close;
              CAD_CD_C_CTC.Data :=
                  CAD_CD_C_CTC.DataRequest(VarArrayOf([0, dataset.FieldByName('id_conta').AsInteger]));

              CAD_CD_C_TIF.Close;
              CAD_CD_C_TIF.Data :=
                  CAD_CD_C_TIF.DataRequest(VarArrayOf([0, dataset.FieldByName('id_tipo_financeiro').AsInteger]));

              CAD_CD_C_FPG.Close;
              CAD_CD_C_FPG.Data :=
                  CAD_CD_C_FPG.DataRequest(VarArrayOf([0, dataset.FieldByName('id_forma_pag').AsInteger]));



              // Busca os títulos do Borderô
              BUS_CD_M_BRD_TIT_INT.Close;
                BUS_CD_M_BRD_TIT_INT.Data :=
                    BUS_CD_M_BRD_TIT_INT.DataRequest(VarArrayOf([0, dataset.FieldByName('id_brd').AsInteger]));

              BUS_CD_M_BRD_TIT_INT.First;
              while not BUS_CD_M_BRD_TIT_INT.eof do
                 begin
                    if xTitulos <> '' then
                       begin
                         xTitulos :=
                         xTitulos + ',' +'''' + BUS_CD_M_BRD_TIT_INT.FieldByName('id_titulo').AsString+'''';
                       end;
                    if xTitulos = '' then
                       begin
                         xTitulos :=
                         xTitulos +'''' + BUS_CD_M_BRD_TIT_INT.FieldByName('id_titulo').AsString+'''';
                       end;
                   BUS_CD_M_BRD_TIT_INT.Next;
                 end;

               BUS_CD_M_BRD_TIT_INT.First;


               FIN_CD_M_CTA.Close;
               FIN_CD_M_CTA.Data :=
                   FIN_CD_M_CTA.DataRequest(VarArrayOf([103, dataset.FieldByName('id_brd').AsInteger]));

               FIN_CD_M_PAG.Close;
               FIN_CD_M_PAG.Data :=
                   FIN_CD_M_PAG.DataRequest(VarArrayOf([93, xTitulos]));

               FIN_CD_M_PAG_PAG.SetProvider(sm.FIN_DP_M_PAG_PAG);
               FIN_CD_M_PAG_PAG.Close;
               FIN_CD_M_PAG_PAG.Data :=
                     FIN_CD_M_PAG_PAG.DataRequest(
                          VarArrayOf([91,dataset.FieldByName('id_brd').AsInteger]));

               IdBaixa := sm.enValorChave('FIN_TB_M_RBX');
               IdBordero := dataset.FieldByName('id_brd').AsString;

               if Status_Canc then
                  begin
                     while not FIN_CD_M_CTA.eof do
                           FIN_CD_M_CTA.delete;

                     while not FIN_CD_M_PAG_PAG.eof do
                           FIN_CD_M_PAG_PAG.delete;


                     if Status_Bxa then
                        begin
                           BUS_CD_M_BRD_TIT_INT.First;
                           while not BUS_CD_M_BRD_TIT_INT.eof do
                               begin
                                 if FIN_CD_M_PAG.Locate('ID_TITULO',BUS_CD_M_BRD_TIT_INT.FieldByName('id_titulo').AsInteger,[]) then
                                    begin
                                       FIN_CD_M_PAG.Edit;
                                       FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency    :=
                                         (FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency +
                                          BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_PAGAMENTO').asCurrency +
                                          BUS_CD_M_BRD_TIT_INT.FieldByName('vlr_desconto').asCurrency  {+
                                          cds.FieldByName('vlr_credito_utilizado').asCurrency} -
                                          (BUS_CD_M_BRD_TIT_INT.FieldByName('vlr_juros').asCurrency +
                                           BUS_CD_M_BRD_TIT_INT.FieldByName('vlr_multa').asCurrency)
                                          );
                                       FIN_CD_M_PAG.Post;
                                    end;
                                 BUS_CD_M_BRD_TIT_INT.Next;
                               end;
                        end;
                     BUS_CD_M_BRD_TIT_INT.Close;
                  end
               else
                  begin
                     BUS_CD_M_BRD_TIT_INT.First;
                     while not BUS_CD_M_BRD_TIT_INT.eof do
                        begin
                          // Gerando o PAG_PAG

                          FIN_CD_M_PAG_PAG.Append;

                          FIN_CD_M_PAG_PAG.FieldByName('ID_TITULO').AsInteger       :=
                             BUS_CD_M_BRD_TIT_INT.FieldByName('ID_TITULO').AsInteger;

                          FIN_CD_M_PAG_PAG.FieldByName('ID_BAIXA').AsInteger        :=
                             IdBaixa;

                          FIN_CD_M_PAG_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime  :=
                             DtaBxa;

                          FIN_CD_M_PAG_PAG.FieldByName('VLR_PAGAMENTO').asCurrency  :=
                             BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_PAGAMENTO').asCurrency;

                          //FIN_CD_M_PAG_PAG.FieldByName('PER_JUROS').AsFloat :=
                          //   BUS_CD_M_BRD_TIT_INT.FieldByName('PER_JUROS').AsFloat;

                          FIN_CD_M_PAG_PAG.FieldByName('VLR_JUROS').AsCurrency      :=
                             BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_JUROS').AsCurrency;

                          FIN_CD_M_PAG_PAG.FieldByName('VLR_MULTA').AsCurrency      :=
                             BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_MULTA').AsCurrency;

                          FIN_CD_M_PAG_PAG.FieldByName('VLR_DESCONTO').AsCurrency   :=
                             BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_DESCONTO').AsCurrency;

                          //FIN_CD_M_PAG_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency :=
                          //   cds.FieldByName('VLR_CREDITO_UTILIZADO').AsCurrency;

                          Historico :=
                              'Pagamento ref. borderô: '+ IdBordero+', do fornecedor: ' +
                                         BUS_CD_M_BRD_TIT_INT.FieldByName('int_nomefor').AsString;

                          FIN_CD_M_PAG_PAG.FieldByName('HISTORICO').AsString        := Historico;


                          FIN_CD_M_PAG_PAG.FieldByName('ID_FORMA_PAG').AsInteger    :=
                             dataset.FieldByName('id_forma_pag').AsInteger;

                          FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO').AsString         :=
                             BUS_CD_M_BRD_TIT_INT.FieldByName('ID_PLANO').AsString;

                          if BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_JUROS').AsCurrency>0 then
                             FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO_JUROS').AsString   :=
                                     CAD_CD_C_FPG.FieldByName('pag_id_plano_juros').AsString;

                          if BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_DESCONTO').AsCurrency>0 then
                             FIN_CD_M_PAG_PAG.FieldByName('ID_PLANO_DESCONTO').AsString:=
                                   CAD_CD_C_FPG.FieldByName('pag_id_plano_desconto').AsString;

                          FIN_CD_M_PAG_PAG.FieldByName('ID_RESPONSAVEL').AsInteger  :=
                             IdRespBxa;

                          FIN_CD_M_PAG_PAG.FieldByName('ID_CCUSTO').AsInteger       :=
                             BUS_CD_M_BRD_TIT_INT.FieldByName('ID_CCUSTO').AsInteger;

                          FIN_CD_M_PAG_PAG.FieldByName('chp_vlr_anterior').AsCurrency := 0;

                          //FIN_CD_M_PAG_PAG.FieldByName('origem').AsCurrency := 0;

                          FIN_CD_M_PAG_PAG.FieldByName('com_substituicao').AsBoolean := false;
                          {// Se for baixa com Duplicata, Promissória, Cartão e Cheque,
                          if (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 1) or   // Duplicata
                             (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 2) or   // Promissória
                             (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 3) or   // Cartão
                             (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 4) or   // Boleto
                             (CAD_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6) then // Cheque
                              begin
                                FIN_CD_M_PAG_PAG.FieldByName('com_substituicao').AsBoolean := true;
                                FIN_CD_M_PAG_PAG.FieldByName('HISTORICO').AsString         :=
                                       'Substituição ref. baixa: '+ inttostr(xIdBaixa)+', do fornecedor: ' +
                                          dataset.FieldByName('int_nomefor').AsString;
                              end; }

                          FIN_CD_M_PAG_PAG.FieldByName('id_empresa_bxa').AsInteger  :=
                              Dataset.FieldByName('id_empresa').AsInteger;

                          FIN_CD_M_PAG_PAG.FieldByName('id_brd').AsInteger          :=
                              dataset.FieldByName('id_brd').AsInteger;

                          FIN_CD_M_PAG_PAG.Post;

                          // Fim o PAG_PAG;


                          // Gerando Cta;
                          FIN_CD_M_CTA.Append;
                          FIN_CD_M_CTA.FieldByName('id_controle').AsInteger       := sm.enValorChave('FIN_TB_M_CTA');
                          FIN_CD_M_CTA.FieldByName('id_abertura').AsString       := IdAbertura;
                          FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        := dataset.FieldByName('id_empresa').AsInteger;
                          FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   := CAD_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                          FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   := DtaBxa;
                          FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    := DtaBxa;
                          FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           := dataset.FieldByName('id_brd').AsInteger;
                          FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           := CAD_CD_C_TIF.FieldByName('natureza').AsInteger;
                          FIN_CD_M_CTA.FieldByName('historico').AsString          := Historico;
                          FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency   := BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_PAGAMENTO').AsCurrency;

                          FIN_CD_M_CTA.FieldByName('origem').AsInteger             := 13; // Baixa por borderô
                          FIN_CD_M_CTA.FieldByName('id_conta').AsInteger           := dataset.FieldByName('id_conta').AsInteger;
                          FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger := dataset.FieldByName('id_tipo_financeiro').AsInteger;
                          FIN_CD_M_CTA.FieldByName('id_plano').AsString            := BUS_CD_M_BRD_TIT_INT.FieldByName('id_plano').AsString;
                          FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger       := 0;
                          FIN_CD_M_CTA.FieldByName('id_titulo_pag').AsInteger      := BUS_CD_M_BRD_TIT_INT.FieldByName('id_titulo').AsInteger;

                          FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger      := 0;
                          FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger         := 0;
                          FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger     := 0;
                          FIN_CD_M_CTA.FieldByName('id_credito').AsInteger        := 0;
                          FIN_CD_M_CTA.FieldByName('conciliado').Asboolean        := false;
                          FIN_CD_M_CTA.FieldByName('id_cbx').AsInteger            := 0;
                          FIN_CD_M_CTA.FieldByName('id_obra').AsInteger           := 0;
                          FIN_CD_M_CTA.FieldByName('id_brd').AsInteger            := dataset.FieldByName('id_brd').AsInteger;
                          FIN_CD_M_CTA.Post;

                          // Fim Cta;

                          // Irá atualizar o saldo do título
                          FIN_CD_M_PAG.First;
                          if FIN_CD_M_PAG.Locate('ID_TITULO',BUS_CD_M_BRD_TIT_INT.FieldByName('id_titulo').AsInteger,[]) then
                             begin
                                if Status_Canc then
                                   begin
                                     FIN_CD_M_PAG.Edit;
                                     FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency    :=
                                       (FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency +
                                        BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_PAGAMENTO').asCurrency +
                                        BUS_CD_M_BRD_TIT_INT.FieldByName('vlr_desconto').asCurrency  {+
                                        cds.FieldByName('vlr_credito_utilizado').asCurrency} -
                                        (BUS_CD_M_BRD_TIT_INT.FieldByName('vlr_juros').asCurrency +
                                         BUS_CD_M_BRD_TIT_INT.FieldByName('vlr_multa').asCurrency)
                                        );
                                     FIN_CD_M_PAG.Post;
                                   end
                                else
                                   begin
                                     FIN_CD_M_PAG.Edit;

                                     FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency  :=
                                         FIN_CD_M_PAG.FieldByName('VLR_SALDO').asCurrency
                                         - ( (BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_PAGAMENTO').asCurrency +
                                              BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_DESCONTO').asCurrency {+
                                              cds.FieldByName('vlr_credito_utilizado').asCurrency}) -

                                              (BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_JUROS').asCurrency +
                                               BUS_CD_M_BRD_TIT_INT.FieldByName('VLR_MULTA').asCurrency)
                                            );

                                     FIN_CD_M_PAG.Post;
                                   end;
                             end;
                          BUS_CD_M_BRD_TIT_INT.Next;
                        end;
                  end;

                  BUS_CD_M_BRD_TIT_INT.Close;

                  try
                     if FIN_CD_M_PAG_PAG <> nil then
                        if FIN_CD_M_PAG_PAG.ChangeCount > 0 then
                             FIN_CD_M_PAG_PAG.ApplyUpdates(0);

                     if FIN_CD_M_CTA <> nil then
                        if FIN_CD_M_CTA.ChangeCount > 0 then
                             FIN_CD_M_CTA.ApplyUpdates(0);

                     if FIN_CD_M_PAG <> nil then
                        if FIN_CD_M_PAG.ChangeCount > 0 then
                             FIN_CD_M_PAG.ApplyUpdates(0);

                  except
                     on e: exception do
                        begin
                           raise Exception.Create('Erro: ' + #13 + e.Message);
                        end;
                  end;
             finally
                 // Comentado por Maxsuel Victor, em 25/08/2017 pois será usado o Self (enSm)
                //FreeAndNil(SM);
                FreeAndNil(BUS_CD_M_BRD_TIT_INT);
                FreeAndNil(FIN_CD_M_PAG_PAG);
                FreeAndNil(FIN_CD_M_PAG);
                FreeAndNil(FIN_CD_M_CTA);
                FreeAndNil(CAD_CD_C_FPG);
                FreeAndNil(CAD_CD_C_TIF);
                FreeAndNil(CAD_CD_C_CTC);
           end;
        end;
     end;
end;

end.
