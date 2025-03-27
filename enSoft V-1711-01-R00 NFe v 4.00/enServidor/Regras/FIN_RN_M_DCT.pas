unit FIN_RN_M_DCT;

interface
uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Math,System.Variants,Data.SqlExpr;



procedure FIN_DP_M_DCTUpdateData(DataSet: TCustomClientDataSet; Sender: TObject;
                            Conn: TSQLConnection; SmAtual: TSM);

implementation


procedure FIN_DP_M_DCTUpdateData(DataSet: TCustomClientDataSet; Sender: TObject;
                            Conn: TSQLConnection; SmAtual: TSM);
var
  datasetTit:TDataSet;
  BUS_CD_C_PAR_CTR,FIN_CD_M_CTA, FIN_CD_M_REC,FIN_CD_M_REC_PAG: TClientDataSet;
  BUS_CD_C_CTC,BUS_CD_C_TIF,BUS_CD_M_DCT_TIT: TClientDataSet;

  xTitulosRec:String;
  xOperacao:Integer;
  xCancelado:Boolean;

begin

    TRY
      BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
      BUS_CD_C_PAR_CTR.SetProvider(SmAtual.BUS_DP_C_PAR_CTR);
      BUS_CD_C_PAR_CTR.Close;
      BUS_CD_C_PAR_CTR.Data :=
      BUS_CD_C_PAR_CTR.DataRequest( VarArrayOf([dataset.FieldByname('id_empresa').AsString]));

      xOperacao := dataSet.FieldByname('TIPO_OPERACAO').AsInteger;
      if (xOperacao = 0) then
         begin
          FIN_CD_M_CTA := TClientDataSet.Create(nil);
          FIN_CD_M_CTA.SetProvider(SmAtual.FIN_DP_M_CTA);
          FIN_CD_M_CTA.Close;
          FIN_CD_M_CTA.Data :=
          FIN_CD_M_CTA.DataRequest( VarArrayOf([110,dataSet.FieldByname('ID_DCT').AsString]));
      end else if (xOperacao = 2) then
         begin
          FIN_CD_M_CTA := TClientDataSet.Create(nil);
          FIN_CD_M_CTA.SetProvider(SmAtual.FIN_DP_M_CTA);
          FIN_CD_M_CTA.Close;
          FIN_CD_M_CTA.Data :=
          FIN_CD_M_CTA.DataRequest( VarArrayOf([111,dataSet.FieldByname('ID_DCT').AsString]));
         end
      else
         begin
          FIN_CD_M_CTA := TClientDataSet.Create(nil);
          FIN_CD_M_CTA.SetProvider(SmAtual.FIN_DP_M_CTA);
          FIN_CD_M_CTA.Close;
          FIN_CD_M_CTA.Data :=
          FIN_CD_M_CTA.DataRequest( VarArrayOf([0,'']));

         end;


      FIN_CD_M_REC_PAG := TClientDataSet.Create(nil);
      FIN_CD_M_REC_PAG.SetProvider(SmAtual.FIN_DP_M_REC_PAG);
      FIN_CD_M_REC_PAG.Close;
      FIN_CD_M_REC_PAG.Data :=
      FIN_CD_M_REC_PAG.DataRequest( VarArrayOf([6,dataSet.FieldByname('ID_DCT').AsString]));

      datasetTit := TDataSetField(Dataset.FieldByName('FIN_SQ_M_DCT_TIT')).NestedDataSet;


      xTitulosRec := '';
      datasetTit.First;
      while not datasetTit.eof do
        begin
          if xTitulosRec <> '' then
            begin
             xTitulosRec :=
             xTitulosRec + ',' +''''+  datasetTit.FieldByName('ID_TITULO').AsString+'''';
            end
          else
            begin
             xTitulosRec :=
             xTitulosRec +''''+ datasetTit.FieldByName('ID_TITULO').AsString+'''';
            end;

          datasetTit.Next;
        end;
      datasetTit.First;

      FIN_CD_M_REC_PAG.First;
      while not FIN_CD_M_REC_PAG.eof do
        begin
          if xTitulosRec <> '' then
            begin
             xTitulosRec :=
             xTitulosRec + ',' +''''+  FIN_CD_M_REC_PAG.FieldByName('ID_TITULO').AsString+'''';
            end
          else
            begin
             xTitulosRec :=
             xTitulosRec +''''+ FIN_CD_M_REC_PAG.FieldByName('ID_TITULO').AsString+'''';
            end;

          FIN_CD_M_REC_PAG.Next;
        end;
      FIN_CD_M_REC_PAG.First;


      FIN_CD_M_REC := TClientDataSet.Create(nil);
      FIN_CD_M_REC.SetProvider(SmAtual.FIN_DP_M_REC);
      FIN_CD_M_REC.Close;
      FIN_CD_M_REC.Data :=
      FIN_CD_M_REC.DataRequest( VarArrayOf([91,xTitulosRec]));





      if xOperacao = 0 then
        begin
               if dataset.UpdateStatus in [usInserted] then
                 begin

                   BUS_CD_C_CTC := TClientDataSet.Create(nil);
                   BUS_CD_C_CTC.SetProvider(SmAtual.CAD_DP_C_CTC);
                   BUS_CD_C_CTC.Close;
                   BUS_CD_C_CTC.Data :=
                   BUS_CD_C_CTC.DataRequest( VarArrayOf([0,dataSet.FieldByname('ID_CONTA').AsString]));


                   while not datasetTit.eof do
                      begin
                        if FIN_CD_M_REC.Locate('ID_TITULO',varArrayOf([datasetTit.FieldByName('id_titulo').AsInteger]),[]) then
                           begin
                             FIN_CD_M_REC.Edit;

                             FIN_CD_M_REC.FieldByName('dct_id_desc').AsInteger := dataset.FieldByName('id_dct').AsInteger;
                             FIN_CD_M_REC.FieldByName('dct_id_conta').AsInteger := dataset.FieldByName('id_conta').AsInteger;
                             FIN_CD_M_REC.FieldByName('dct_id_local_titulo').AsInteger := dataset.FieldByName('id_local_titulo').AsInteger;
                             FIN_CD_M_REC.FieldByName('dct_dta_descontado').AsDateTime :=  dataset.FieldByName('data_operacao').AsDateTime;
                             FIN_CD_M_REC.Post;
                           end;
                        datasetTit.Next;
                      end;


                   BUS_CD_C_TIF := TClientDataSet.Create(nil);
                   BUS_CD_C_TIF.SetProvider(SmAtual.CAD_DP_C_TIF);
                   BUS_CD_C_TIF.Close;
                   BUS_CD_C_TIF.Data :=
                   BUS_CD_C_TIF.DataRequest( VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByname('dct_id_tipo_financeiro_cred').AsString]));



                   FIN_CD_M_CTA.Insert;
                   FIN_CD_M_CTA.FieldByName('id_controle').AsInteger       :=smAtual.enValorChave('FIN_TB_M_CTA');
                   FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=0;
                   FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                   FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=BUS_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                   FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('data_operacao').AsDateTime;
                   FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('data_operacao').AsDateTime;
                   FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_dct').AsInteger;
                   FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=BUS_CD_C_TIF.FieldByName('natureza').AsInteger;
                   FIN_CD_M_CTA.FieldByName('historico').AsString          :=
                               'Ref. desconto de títulos: '+ inttostr(dataset.FieldByName('id_dct').AsInteger);


                   FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency := dataset.FieldByName('vlr_total_titulos').AsCurrency;


                    FIN_CD_M_CTA.FieldByName('origem').AsInteger            := 16;
                    FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          := dataset.FieldByName('id_conta').AsInteger;
                    FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                              BUS_CD_C_PAR_CTR.FieldByName('dct_id_tipo_financeiro_cred').AsInteger;
                    FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                              BUS_CD_C_PAR_CTR.FieldByName('dct_id_plano_cred').AsString;

                    FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger      :=0;
                    FIN_CD_M_CTA.FieldByName('id_titulo_pag').AsInteger     :=0;

                    FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger   := 0;
                    FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger      := 0;
                    FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger  := 0;
                    FIN_CD_M_CTA.FieldByName('id_credito').AsInteger     := 0;
                    FIN_CD_M_CTA.FieldByName('id_dct_desc').AsInteger    := dataset.FieldByName('id_dct').AsInteger;
                    FIN_CD_M_CTA.FieldByName('id_dct_canc').AsInteger    := 0;
                    FIN_CD_M_CTA.FieldByName('conciliado').Asboolean     := false;
                    FIN_CD_M_CTA.Post;




                    if  dataSet.FieldByname('vlr_taxa_desc').AsCurrency > 0 then
                       begin

                         BUS_CD_C_TIF := TClientDataSet.Create(nil);
                         BUS_CD_C_TIF.SetProvider(SmAtual.CAD_DP_C_TIF);
                         BUS_CD_C_TIF.Close;
                         BUS_CD_C_TIF.Data :=
                         BUS_CD_C_TIF.DataRequest( VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByname('dct_id_tipo_financeiro_desc_taxa').AsString]));


                         FIN_CD_M_CTA.Insert;
                         FIN_CD_M_CTA.FieldByName('id_controle').AsInteger       :=smAtual.enValorChave('FIN_TB_M_CTA');
                         FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=0;
                         FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                         FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=BUS_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                         FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('data_operacao').AsDateTime;
                         FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('data_operacao').AsDateTime;
                         FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_dct').AsInteger;
                         FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=BUS_CD_C_TIF.FieldByName('natureza').AsInteger;
                         FIN_CD_M_CTA.FieldByName('historico').AsString          :=
                                     'Ref. taxa de desconto de título: '+ inttostr(dataset.FieldByName('id_dct').AsInteger);



                         FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency := dataset.FieldByName('vlr_taxa_desc').AsCurrency;


                         FIN_CD_M_CTA.FieldByName('origem').AsInteger            := 16;
                         FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          := dataset.FieldByName('id_conta').AsInteger;
                         FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                                    BUS_CD_C_PAR_CTR.FieldByName('dct_id_tipo_financeiro_desc_taxa').AsInteger;
                         FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                                    BUS_CD_C_PAR_CTR.FieldByName('dct_id_plano_desc_taxa').AsString;

                         FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger      :=0;
                         FIN_CD_M_CTA.FieldByName('id_titulo_pag').AsInteger     :=0;

                         FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger   := 0;
                         FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger      := 0;
                         FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger  := 0;
                         FIN_CD_M_CTA.FieldByName('id_credito').AsInteger     := 0;
                         FIN_CD_M_CTA.FieldByName('id_dct_desc').AsInteger    := dataset.FieldByName('id_dct').AsInteger;
                         FIN_CD_M_CTA.FieldByName('id_dct_canc').AsInteger    := 0;
                         FIN_CD_M_CTA.FieldByName('conciliado').Asboolean     := false;
                         FIN_CD_M_CTA.Post;

                       end;


                 end;
          end;





     if xOperacao = 1 then
        begin
          if dataset.UpdateStatus in [usInserted] then
             begin
                while (not datasetTit.eof) do
                    begin
                      if FIN_CD_M_REC.Locate('ID_TITULO',varArrayOf([datasetTit.FieldByName('id_titulo').AsInteger]),[]) then
                         begin
                             BUS_CD_M_DCT_TIT := TClientDataSet.Create(nil);
                             BUS_CD_M_DCT_TIT.SetProvider(SmAtual.BUS_DP_M_DCT_TIT);
                             BUS_CD_M_DCT_TIT.Close;
                             BUS_CD_M_DCT_TIT.Data :=
                             BUS_CD_M_DCT_TIT.DataRequest( VarArrayOf([dataset.FieldByname('ID_EMPRESA').AsString,
                                                                       FIN_CD_M_REC.FieldByName('DCT_ID_DESC').AsString,
                                                                       datasetTit.FieldByName('ID_TITULO').AsString]));


                             FIN_CD_M_REC.Edit;

                             FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency :=
                                   FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency -
                                   FIN_CD_M_REC.FieldByName('VLR_PARCELA').AsCurrency;

                             FIN_CD_M_REC.Post;

                              FIN_CD_M_REC_PAG.Insert;
                              FIN_CD_M_REC_PAG.FieldByName('ID_TITULO').AsInteger       :=
                                 datasetTit.FieldByName('ID_TITULO').AsInteger;
                              FIN_CD_M_REC_PAG.FieldByName('ID_BAIXA').AsInteger        := smAtual.enValorChave('FIN_TB_M_RBX');

                              FIN_CD_M_REC_PAG.FieldByName('ID_ABERTURA').AsInteger        := 0;

                              FIN_CD_M_REC_PAG.FieldByName('DTA_PAGAMENTO').AsDateTime  :=
                                    dataset.FieldByName('data_operacao').AsDateTime;



                              FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').asCurrency  :=
                                 FIN_CD_M_REC.FieldByName('VLR_PARCELA').asCurrency -
                                 BUS_CD_M_DCT_TIT.FieldByName('VLR_TAXA_DESC').AsCurrency;



                              FIN_CD_M_REC_PAG.FieldByName('PER_JUROS').AsFloat         := 0;
                              FIN_CD_M_REC_PAG.FieldByName('VLR_JUROS').AsCurrency      := 0;

                              FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').AsCurrency   :=
                                            BUS_CD_M_DCT_TIT.FieldByName('VLR_TAXA_DESC').AsCurrency;



                              FIN_CD_M_REC_PAG.FieldByName('VLR_CRED_UTILIZADO').AsCurrency := 0;

                              FIN_CD_M_REC_PAG.FieldByName('HISTORICO').AsString        :=
                                                      'Ref. baixa desconto de título: '+ inttostr(dataset.FieldByName('id_dct').AsInteger);


                              FIN_CD_M_REC_PAG.FieldByName('ID_FORMA_PAG').AsInteger    :=
                                BUS_CD_C_PAR_CTR.FieldByName('dct_id_forma_pag').AsInteger;

                              FIN_CD_M_REC_PAG.FieldByName('ID_PLANO').AsString         :=
                                  BUS_CD_C_PAR_CTR.FieldByName('dct_id_plano_cred').AsString;


                              FIN_CD_M_REC_PAG.FieldByName('ID_RESPONSAVEL').AsInteger  :=
                                 Dataset.FieldByName('id_responsavel').AsInteger;

                              FIN_CD_M_REC_PAG.FieldByName('ORIGEM').AsInteger  := 5;//Desconto de titulos

                              FIN_CD_M_REC_PAG.FieldByName('com_substituicao').AsBoolean := false;


                              FIN_CD_M_REC_PAG.FieldByName('id_empresa_bxa').AsInteger  :=
                                      Dataset.FieldByName('id_empresa').AsInteger;

                              FIN_CD_M_REC_PAG.FieldByName('id_dct_bxa').AsInteger  :=
                                      dataset.FieldByName('id_dct').AsInteger;

                              FIN_CD_M_REC_PAG.Post;

                         end;

                      datasetTit.Next;


                    end;

             end;

           if  dataset.UpdateStatus in [usUnmodified]  then
             begin
               xCancelado := dataset.FieldByName('CANCELADO').AsBoolean;
               dataset.Next;
               if dataset.FieldByName('CANCELADO').AsString <>'' then
                 begin
                    xCancelado := dataset.FieldByName('CANCELADO').AsBoolean;
                 end;

               if xCancelado=true then
                 begin
                   FIN_CD_M_REC.First;
                   while not FIN_CD_M_REC.eof do
                     begin
                       if FIN_CD_M_REC_PAG.Locate('ID_TITULO',varArrayOf([FIN_CD_M_REC.FieldByName('id_titulo').AsInteger]),[]) then
                          begin
                               FIN_CD_M_REC.Edit;

                               FIN_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency :=
                                      FIN_CD_M_REC_PAG.FieldByName('VLR_PAGAMENTO').AsCurrency +
                                      FIN_CD_M_REC_PAG.FieldByName('VLR_DESCONTO').AsCurrency;

                               FIN_CD_M_REC.Post;
                               FIN_CD_M_REC_PAG.Delete;
                          end;
                       FIN_CD_M_REC.Next;
                     end;

                   if FIN_CD_M_REC_PAG <> nil then
                      if FIN_CD_M_REC_PAG.ChangeCount > 0 then
                         if not (FIN_CD_M_REC_PAG.ApplyUpdates(0) = 0) then
                               raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber.');


                   if FIN_CD_M_REC <> nil then
                      if FIN_CD_M_REC.ChangeCount > 0 then
                         if not (FIN_CD_M_REC.ApplyUpdates(0) = 0) then
                               raise Exception.Create('Erro ao tentar atualizar os títulos de contas a receber .');


                 end;
             end;

        end;



      if xOperacao = 2 then
        begin

               if dataset.UpdateStatus in [usInserted] then
                 begin

                   while not datasetTit.eof do
                     begin
                       if FIN_CD_M_REC.Locate('ID_TITULO',varArrayOf([datasetTit.FieldByName('id_titulo').AsInteger]),[]) then
                           begin
                             BUS_CD_C_CTC := TClientDataSet.Create(nil);
                             BUS_CD_C_CTC.SetProvider(smAtual.CAD_DP_C_CTC);
                             BUS_CD_C_CTC.Close;
                             BUS_CD_C_CTC.Data :=
                             BUS_CD_C_CTC.DataRequest( VarArrayOf([0,FIN_CD_M_REC.FieldByName('dct_id_conta').AsString]));

                             BUS_CD_C_TIF := TClientDataSet.Create(nil);
                             BUS_CD_C_TIF.SetProvider(smAtual.CAD_DP_C_TIF);
                             BUS_CD_C_TIF.Close;
                             BUS_CD_C_TIF.Data :=
                             BUS_CD_C_TIF.DataRequest( VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByname('dct_id_tipo_financeiro_canc').AsString]));


                             FIN_CD_M_CTA.Insert;
                             FIN_CD_M_CTA.FieldByName('id_controle').AsInteger       :=smAtual.enValorChave('FIN_TB_M_CTA');
                             FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=0;
                             FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                             FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=BUS_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                             FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('data_operacao').AsDateTime;
                             FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('data_operacao').AsDateTime;
                             FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_dct').AsInteger;
                             FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=BUS_CD_C_TIF.FieldByName('natureza').AsInteger;
                             FIN_CD_M_CTA.FieldByName('historico').AsString          :=
                                         'Ref. cancelamento do desconto de título: '+ inttostr(dataset.FieldByName('id_dct').AsInteger);


                             FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency := datasetTit.FieldByName('int_vlr_parcela').AsCurrency;


                             FIN_CD_M_CTA.FieldByName('origem').AsInteger            := 16;
                             FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          := FIN_CD_M_REC.FieldByName('dct_id_conta').AsInteger;
                             FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                                        BUS_CD_C_PAR_CTR.FieldByName('dct_id_tipo_financeiro_canc').AsInteger;
                             FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                                        BUS_CD_C_PAR_CTR.FieldByName('dct_id_plano_canc').AsString;

                             FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger      :=0;
                             FIN_CD_M_CTA.FieldByName('id_titulo_pag').AsInteger     :=0;

                             FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger   := 0;
                             FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger      := 0;
                             FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger  := datasetTit.FieldByName('id_titulo').AsInteger;
                             FIN_CD_M_CTA.FieldByName('id_credito').AsInteger     := 0;
                             FIN_CD_M_CTA.FieldByName('id_dct_canc').AsInteger    := dataset.FieldByName('id_dct').AsInteger;
                             FIN_CD_M_CTA.FieldByName('id_dct_desc').AsInteger    := 0;
                             FIN_CD_M_CTA.FieldByName('conciliado').Asboolean     := false;
                             FIN_CD_M_CTA.Post;


                             if  (dataSetTit.FieldByname('vlr_cobrado_canc_desc').AsCurrency > 0) then
                               begin
                                 FIN_CD_M_CTA.Insert;
                                 FIN_CD_M_CTA.FieldByName('id_controle').AsInteger       :=smAtual.enValorChave('FIN_TB_M_CTA');
                                 FIN_CD_M_CTA.FieldByName('id_abertura').AsInteger       :=0;
                                 FIN_CD_M_CTA.FieldByName('id_empresa').AsInteger        :=dataset.FieldByName('id_empresa').AsInteger;
                                 FIN_CD_M_CTA.FieldByName('tipo_lancamento').AsInteger   :=BUS_CD_C_CTC.FieldByName('TIPO').AsInteger;   //0-caixa 1-banco
                                 FIN_CD_M_CTA.FieldByName('dta_lancamento').AsDateTime   :=dataset.FieldByName('data_operacao').AsDateTime;
                                 FIN_CD_M_CTA.FieldByName('dta_movimento').AsDateTime    :=dataset.FieldByName('data_operacao').AsDateTime;
                                 FIN_CD_M_CTA.FieldByName('num_doc').AsInteger           :=dataset.FieldByName('id_dct').AsInteger;
                                 FIN_CD_M_CTA.FieldByName('deb_cre').AsInteger           :=BUS_CD_C_TIF.FieldByName('natureza').AsInteger;
                                 FIN_CD_M_CTA.FieldByName('historico').AsString          :=
                                             'Ref. taxa de cancelamento do desconto de título: '+ inttostr(dataset.FieldByName('id_dct').AsInteger);


                                 FIN_CD_M_CTA.FieldByName('vlr_lancamento').AsCurrency := datasetTit.FieldByName('vlr_cobrado_canc_desc').AsCurrency;


                                 FIN_CD_M_CTA.FieldByName('origem').AsInteger            := 16;
                                 FIN_CD_M_CTA.FieldByName('id_conta').AsInteger          := FIN_CD_M_REC.FieldByName('dct_id_conta').AsInteger;
                                 FIN_CD_M_CTA.FieldByName('id_tipo_financeiro').AsInteger:=
                                            BUS_CD_C_PAR_CTR.FieldByName('dct_id_tipo_financeiro_canc').AsInteger;
                                 FIN_CD_M_CTA.FieldByName('id_plano').AsString           :=
                                            BUS_CD_C_PAR_CTR.FieldByName('dct_id_plano_canc').AsString;

                                 FIN_CD_M_CTA.FieldByName('id_baixa_pbx').AsInteger      :=0;
                                 FIN_CD_M_CTA.FieldByName('id_titulo_pag').AsInteger     :=0;

                                 FIN_CD_M_CTA.FieldByName('id_baixa_rbx').AsInteger   := 0;
                                 FIN_CD_M_CTA.FieldByName('id_fiscal').AsInteger      := 0;
                                 FIN_CD_M_CTA.FieldByName('id_titulo_rec').AsInteger  := datasetTit.FieldByName('id_titulo').AsInteger;
                                 FIN_CD_M_CTA.FieldByName('id_credito').AsInteger     := 0;
                                 FIN_CD_M_CTA.FieldByName('id_dct_canc').AsInteger      := dataset.FieldByName('id_dct').AsInteger;
                                 FIN_CD_M_CTA.FieldByName('id_dct_desc').AsInteger      := 0;
                                 FIN_CD_M_CTA.FieldByName('conciliado').Asboolean     := false;
                                 FIN_CD_M_CTA.Post;
                               end;

                             FIN_CD_M_REC.Edit;
                             FIN_CD_M_REC.FieldByName('dct_id_desc').AsString := '';
                             FIN_CD_M_REC.FieldByName('dct_id_conta').AsString := '';
                             FIN_CD_M_REC.FieldByName('dct_id_local_titulo').AsString := '';
                             FIN_CD_M_REC.FieldByName('dct_dta_descontado').AsString :=  '';
                             FIN_CD_M_REC.Post;

                           end;
                      datasetTit.Next;
                     end;

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


      if FIN_CD_M_CTA <> nil then
          if FIN_CD_M_CTA.ChangeCount > 0 then
             if not (FIN_CD_M_CTA.ApplyUpdates(0) = 0) then
                   raise Exception.Create('Erro ao tentar atualizar as movimentações de conta.');

   FINALLY
     FIN_CD_M_REC.Free;
     FIN_CD_M_REC_PAG.Free;
     FIN_CD_M_CTA.Free;
     BUS_CD_C_CTC.Free;
     BUS_CD_C_TIF.Free;
     BUS_CD_M_DCT_TIT.Free;
   END;
end;

end.
