unit EST_RN_M_CTE;

{ TODO -oMaxsuel -cCriação : Função: Gerar o estoque do inventário em 20/01/2016; }

interface

uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,
     Datasnap.DBClient,Datasnap.Provider,enSM,Data.DBXCommon,Data.SqlExpr, uServer;


procedure EST_DP_M_CTEUpdateData(Pai_DataSet: TCustomClientDataSet;
                                 BUS_DP_M_CTE_ITE_INT,
                                 BUS_DP_M_CTE_RES_ITE_INT,
                                 BUS_DP_C_PAR_CTR,EST_DP_M_FEA,EST_DP_M_FES,
                                 EST_DP_M_FES_ALM,EST_DP_M_LOT: TDataSetProvider;SmAtual: TSM);

procedure CorrigirCustoMedio(Pai_DataSet: TCustomClientDataSet; BUS_CD_C_PAR_CTR,EST_CD_M_FEA,
                             BUS_CD_M_CTE_ITE_INT,BUS_CD_M_CTE_RES_ITE_INT: TClientDataSet;
                             EST_DP_M_FES: TDataSetProvider;SmAtual: TSM);


implementation

uses FAT_RN_M_EST;

procedure EST_DP_M_CTEUpdateData(Pai_DataSet: TCustomClientDataSet;
                                 BUS_DP_M_CTE_ITE_INT,
                                 BUS_DP_M_CTE_RES_ITE_INT,
                                 BUS_DP_C_PAR_CTR,EST_DP_M_FEA,EST_DP_M_FES,
                                 EST_DP_M_FES_ALM,EST_DP_M_LOT: TDataSetProvider;SmAtual: TSM);
var
  BUS_CD_C_PAR_CTR,BUS_CD_M_CTE_ITE_INT, BUS_CD_M_CTE_RES_ITE_INT,
  EST_CD_M_FES,EST_CD_M_FES_ALM, EST_CD_M_LOT, EST_CD_M_FEA: TClientDataSet;
  Itens_Sel, Cores_Sel,Tam_Sel, Lotes_Sel: String;
  lIndex: integer;
  AchouRegFes,AchouRegFesAlm,AchouRegLot, AtualizaFesAlm,AtualizaLot: Boolean;
  id_empresa: String;
  DtaMovimento: TDate;
  QtdeEntradas,QtdeSaida, SaldoFisico: Currency;
  n:Integer;
begin
  { TODO -oMaxsuel -cCriação : Criado em 20/01/2016 }

  // Buscar dados do parâmetros de controle
   BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
   BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);
   BUS_CD_C_PAR_CTR.Close;
   BUS_CD_C_PAR_CTR.Data :=
       BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('ID_EMPRESA').AsString]));

   EST_CD_M_FEA := TClientDataSet.Create(nil);
   EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
   EST_CD_M_FEA.Close;
   EST_CD_M_FEA.Data :=
           EST_CD_M_FEA.DataRequest(VarArrayOf([0,'']));

   // Busca todos os itens da contagem.
   BUS_CD_M_CTE_ITE_INT := TClientDataSet.Create(nil);
   BUS_CD_M_CTE_ITE_INT.SetProvider(BUS_DP_M_CTE_ITE_INT);
   BUS_CD_M_CTE_ITE_INT.Close;
   BUS_CD_M_CTE_ITE_INT.Data :=
           BUS_CD_M_CTE_ITE_INT.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('id_controle').AsInteger]));

   // Busca faz um SUM em cima do campo CONTAGEM, com ID_EMPRESA,ID_ITEM,ID_COR,ID_TAMANHO
   BUS_CD_M_CTE_RES_ITE_INT := TClientDataSet.Create(nil);
   BUS_CD_M_CTE_RES_ITE_INT.SetProvider(BUS_DP_M_CTE_RES_ITE_INT);
   BUS_CD_M_CTE_RES_ITE_INT.Close;
   BUS_CD_M_CTE_RES_ITE_INT.Data :=
           BUS_CD_M_CTE_RES_ITE_INT.DataRequest(VarArrayOf([Pai_DataSet.FieldByName('id_controle').AsInteger]));

   if Pai_DataSet.UpdateStatus in [usUnmodified] then
      begin
        Pai_DataSet.Next;
        if Pai_DataSet.UpdateStatus in [usModified] then
           begin
             DtaMovimento := Pai_DataSet.FieldByName('DTA_MOVIMENTO').AsDateTime;
           end;
        Pai_DataSet.Prior;
      end;


   if Pai_DataSet.FieldByName('corrigir_custo_medio').AsBoolean then
      begin
        CorrigirCustoMedio(Pai_DataSet,BUS_CD_C_PAR_CTR,EST_CD_M_FEA,BUS_CD_M_CTE_ITE_INT,
                           BUS_CD_M_CTE_RES_ITE_INT,EST_DP_M_FES, SmAtual);
        exit;
        // o código abaixo não é preciso ser exetutado.
      end;


   Itens_Sel    := '';
   Cores_Sel     := '';
   Tam_Sel := '';
   Lotes_Sel    := '';

   // Aninha todos os itens da contagem
   if not BUS_CD_M_CTE_ITE_INT.IsEmpty then
      begin
        BUS_CD_M_CTE_ITE_INT.First;
        while not BUS_CD_M_CTE_ITE_INT.eof do
           begin
            lIndex := 7;

            // busca os itens
            if Itens_Sel <> '' then
               begin
                 Itens_Sel :=
                 Itens_Sel + ',' +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').AsString+'''';
               end;
            if Itens_Sel = '' then
               begin
                 Itens_Sel :=
                 Itens_Sel +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').AsString+'''';
               end;

            // busca as cores dos itens

            if BUS_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean= true then
               begin
                  lIndex := 4;

                  if BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text <> '' then
                     begin
                       if not pos(BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text,Cores_Sel) <> 0 then
                          begin
                            if Cores_Sel <> '' then
                               begin
                                 Cores_Sel :=
                                 Cores_Sel + ',' +''''+BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').AsString+'''';
                               end;
                            if Cores_Sel = '' then
                               begin
                                 Cores_Sel :=
                                 Cores_Sel +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').AsString+'''';
                               end;
                          end;
                     end;
               end;

            // busca os tamanhos dos itens
            if BUS_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = true then
               begin
                  lIndex := 5;

                  if BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text <> '' then
                     begin
                       if not pos(BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text,Tam_Sel) <> 0 then
                          begin
                            if Tam_Sel <> '' then
                               begin
                                 Tam_Sel :=
                                 Tam_Sel + ',' +''''+BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').AsString+'''';
                               end;
                            if Tam_Sel = '' then
                               begin
                                 Tam_Sel :=
                                 Tam_Sel +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').AsString+'''';
                               end;
                          end;
                     end;
               end;

            if BUS_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean = true then
               begin
                  if BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text <> '' then
                     begin
                       if not pos(BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text,Lotes_Sel) <> 0 then
                          begin
                            if Lotes_Sel <> '' then
                               begin
                                 Lotes_Sel :=
                                 Lotes_Sel + ',' +''''+BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').AsString+'''';
                               end;
                            if Lotes_Sel = '' then
                               begin
                                 Lotes_Sel :=
                                 Lotes_Sel +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').AsString+'''';
                               end;
                          end;
                     end;
               end;
               BUS_CD_M_CTE_ITE_INT.Next;
           end;
      end;
  // Fim -----------------------


  // Criando a FICHA DE ESTOQUE

  EST_CD_M_FEA := TClientDataSet.Create(nil);
  EST_CD_M_FEA.SetProvider(EST_DP_M_FEA);
  EST_CD_M_FEA.Close;
  EST_CD_M_FEA.Data :=
  EST_CD_M_FEA.DataRequest(VarArrayOf([4, Pai_DataSet.FieldByName('ID_EMPRESA').text, Pai_DataSet.FieldByName('ID_CONTROLE').text]));


  BUS_CD_M_CTE_ITE_INT.Filtered := true;
  BUS_CD_M_CTE_ITE_INT.Filter   := ' TIPO_DIFERENCA <> 0 ';

  n := SmAtual.enChaveNItens('EST_TB_M_FEA',BUS_CD_M_CTE_ITE_INT.RecordCount);

  BUS_CD_M_CTE_ITE_INT.Filtered := false;


  { BUSCAR A MOVIMENTAÇÃO DO ESTOQUE}
  BUS_CD_M_CTE_ITE_INT.First;
  while not BUS_CD_M_CTE_ITE_INT.Eof do
      begin
        if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger <> 0 then
           begin
               // Criando a Ficha de Estoque
               EST_CD_M_FEA.Insert;

               //EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger              := sm.enValorChave('EST_TB_M_FEA');;
               EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger     := n;
               inc(n);

               EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger :=
                       Pai_DataSet.FieldByName('ID_EMPRESA').AsInteger;

               EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger :=
                       BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').AsInteger;

               EST_CD_M_FEA.FieldByName('ID_COR').text :=
                       BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text;

               EST_CD_M_FEA.FieldByName('ID_TAMANHO').text :=
                       BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text;

               EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat :=
                       BUS_CD_M_CTE_ITE_INT.FieldByName('ID_SEQ_ITEM').Asfloat;

               EST_CD_M_FEA.FieldByName('DATA').AsDateTime :=
                       DtaMovimento;


               if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger = 1 then
                  EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger :=
                       BUS_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_sai').AsInteger;
               if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger = 2 then
                  EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger :=
                       BUS_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_ent').AsInteger;


               EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger := 4;

               if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                  begin
                    EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                       Pai_DataSet.FieldByName('id_almoxarifado').AsInteger;
                  end;


               EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger   := Pai_DataSet.FieldByName('ID_CONTROLE').AsInteger;
               EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger := 0;
               EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger      := 0;
               EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger   := 0;
               EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency := 0;
               EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency    := 0;
               EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency    := 0;
               EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency := 0;


               EST_CD_M_FEA.FieldByName('NUM_LOTE').text            :=
                             BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text;
               //EST_CD_M_FEA.FieldByName('ID_PEDIDO').AsInteger   := 0;


               EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger  :=  Pai_DataSet.FieldByName('ID_CONTROLE').AsInteger;


               EST_CD_M_FEA.FieldByName('QTDE').AsCurrency :=  BUS_CD_M_CTE_ITE_INT.FieldByName('DIFERENCA').AsCurrency;

               EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency :=
                            BUS_CD_M_CTE_ITE_INT.FieldByName('VLR_CUSTO').AsCurrency;

               EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency :=
                   roundTo(BUS_CD_M_CTE_ITE_INT.FieldByName('DIFERENCA').AsCurrency *
                            BUS_CD_M_CTE_ITE_INT.FieldByName('VLR_CUSTO').AsCurrency,-2);
               EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency :=
                            EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;

               EST_CD_M_FEA.Post;
           end;
         BUS_CD_M_CTE_ITE_INT.Next;
      end;
   BUS_CD_M_CTE_ITE_INT.First;

   // Fim -------------------------

   id_empresa := Pai_DataSet.FieldByName('ID_EMPRESA').AsString;

   // Buscará todos os saldos dos itens do documento em questão
   EST_CD_M_FES := TClientDataSet.Create(nil);
   EST_CD_M_FES.SetProvider(EST_DP_M_FES);
   EST_CD_M_FES.Close;
   EST_CD_M_FES.Data :=
           EST_CD_M_FES.DataRequest(VarArrayOf([lIndex, id_empresa, Itens_Sel,Cores_Sel, Tam_Sel]));

   AtualizaFesAlm := false;

   if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
      begin
        AtualizaFesAlm := true;

        // Buscará todos os saldos do almoxarifados dos itens do documento em questão

        EST_CD_M_FES_ALM := TClientDataSet.Create(nil);
        EST_CD_M_FES_ALM.SetProvider(EST_DP_M_FES_ALM);
        EST_CD_M_FES_ALM.close;
        if lIndex = 7 then
           EST_CD_M_FES_ALM.Data :=
                EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, id_empresa, Itens_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]));

        if lIndex = 4 then
           EST_CD_M_FES_ALM.Data :=
               EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, id_empresa, Itens_Sel,Cores_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]));

        if lIndex = 5 then
           EST_CD_M_FES_ALM.Data :=
                EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, id_empresa, Itens_Sel,Tam_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]));

        if lIndex = 6 then
           EST_CD_M_FES_ALM.Data :=
                EST_CD_M_FES_ALM.DataRequest(VarArrayOf([lIndex, id_empresa, Itens_Sel,Cores_Sel,Tam_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]));
      end;

   AtualizaLot := false;
   if trim(Lotes_Sel) <> '' then
      begin
         AtualizaLot := true;
         { Filtros do EST_CD_M_LOT
           8-  impresa + in(num lote) + in(item)
           9-  impresa + in(num lote) + in(item) + in(cor)
           10- impresa + in(num lote) + in(item) + in(cor) + in(tamanho)
           11- impresa + in(num lote) + in(item) + in(tam)

           12- impresa + in(num lote) + in(item) + almoxarifado
           13- impresa + in(num lote) + in(item) + in(cor) + almoxarifado
           14- impresa + in(num lote) + in(item) + in(tam) + almoxarifado
           15- impresa + in(num lote) + in(item) + in(cor) + in(tam) + almoxarifado
         }

         // Buscará todos os saldos do almoxarifados dos itens do documento em questão
         EST_CD_M_LOT := TClientDataSet.Create(nil);
         EST_CD_M_LOT.SetProvider(EST_DP_M_LOT);
         EST_CD_M_LOT.Close;
         if lIndex = 7 then
            if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
               EST_CD_M_LOT.Data :=
                   EST_CD_M_LOT.DataRequest(VarArrayOf([12, id_empresa, Lotes_Sel,Itens_Sel,
                                                            Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]))
            else
               EST_CD_M_LOT.Data :=
                   EST_CD_M_LOT.DataRequest(VarArrayOf([8, id_empresa,Lotes_Sel,Itens_Sel]));


         if lIndex = 4 then
            if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
               EST_CD_M_LOT.Data :=
                   EST_CD_M_LOT.DataRequest(VarArrayOf([13, id_empresa,
                                                            Lotes_Sel,Itens_Sel,Cores_Sel,
                                                            Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]))
            else
               EST_CD_M_LOT.Data :=
                   EST_CD_M_LOT.DataRequest(VarArrayOf([9, id_empresa,Lotes_Sel,Itens_Sel,Cores_Sel]));

         if lIndex = 5 then
            if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
               EST_CD_M_LOT.Data :=
                   EST_CD_M_LOT.DataRequest(VarArrayOf([14, id_empresa,
                                                            Lotes_Sel,Itens_Sel,Tam_Sel,
                                                            Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]))
            else
               EST_CD_M_LOT.Data :=
                   EST_CD_M_LOT.DataRequest(VarArrayOf([11, id_empresa,Lotes_Sel,Itens_Sel,Tam_Sel]));

         if lIndex = 6 then
            if BUS_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
               EST_CD_M_LOT.Data :=
                   EST_CD_M_LOT.DataRequest(VarArrayOf([15, id_empresa, Lotes_Sel,Itens_Sel,Cores_Sel,Tam_Sel,Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text]))
            else
               EST_CD_M_LOT.Data :=
                   EST_CD_M_LOT.DataRequest(VarArrayOf([10, id_empresa, Lotes_Sel,Itens_Sel,Cores_Sel,Tam_Sel]));
      end;
   // Fim ----------------------



   // Atualiza o saldo
   if AtualizaLot then
      begin
        // Se a empresa atualiza LOTE então, a atualização do saldo do FES e FES_ALM será por esse metódo.
         if not BUS_CD_M_CTE_RES_ITE_INT.IsEmpty then
            begin
              BUS_CD_M_CTE_RES_ITE_INT.First;
              while not BUS_CD_M_CTE_RES_ITE_INT.eof do
                 begin
                   if (BUS_CD_M_CTE_RES_ITE_INT.FieldByName('TOTAL_SAIDA').AsCurrency   > 0) OR
                      (BUS_CD_M_CTE_RES_ITE_INT.FieldByName('TOTAL_ENTRADA').AsCurrency > 0) then
                      begin
                        AchouRegFes :=  localizar_FES(lIndex, id_empresa, BUS_CD_M_CTE_RES_ITE_INT.FieldByName('ID_ITEM').text,
                                                BUS_CD_M_CTE_RES_ITE_INT.FieldByName('ID_COR').text, BUS_CD_M_CTE_RES_ITE_INT.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);

                        // Caso utiliza o almoxarifado
                        if AtualizaFesAlm then
                           begin
                             // Caso a tabela de saldo do produto por almoxarifado já exista
                             AchouRegFesAlm := localizar_FES_ALM(lIndex, id_empresa,
                                                                 BUS_CD_M_CTE_RES_ITE_INT.FieldByName('ID_ITEM').text,
                                                                 Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                                 BUS_CD_M_CTE_RES_ITE_INT.FieldByName('ID_COR').text,
                                                                 BUS_CD_M_CTE_RES_ITE_INT.FieldByName('ID_TAMANHO').text,
                                                                 EST_CD_M_FES_ALM);
                           end;

                        if AchouRegFes then
                           begin
                             // Atualiza o saldo do item
                             EST_CD_M_FES.Edit;

                             EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime  :=  DtaMovimento;
                             EST_CD_M_FES.FieldByName('data_ult_inventario').AsDateTime :=  DtaMovimento;

                             EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency     :=
                                          BUS_CD_M_CTE_RES_ITE_INT.FieldByName('VLR_CUSTO').AsCurrency;

                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                          EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +
                                                 BUS_CD_M_CTE_RES_ITE_INT.FieldByName('TOTAL_SAIDA').AsCurrency;

                             EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                          EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                 BUS_CD_M_CTE_RES_ITE_INT.FieldByName('TOTAL_ENTRADA').AsCurrency;

                             EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                             EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                             EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                             EST_CD_M_FES.Post;


                             if AtualizaFesAlm then
                                begin
                                   EST_CD_M_FES_ALM.Edit;

                                   // O motivo de usar ...AsCurrency, é devido em algum momento quando
                                   // o sistema tentava subtrair dois números grandes,com decimais e iguais, ao
                                   // invés de resultar o valor 0 , o sitema resultava um valor errado.

                                   EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                         BUS_CD_M_CTE_RES_ITE_INT.FieldByName('TOTAL_ENTRADA').AsCurrency +
                                              EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency ;

                                   EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                         BUS_CD_M_CTE_RES_ITE_INT.FieldByName('TOTAL_SAIDA').AsCurrency +
                                               EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;

                                   EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                         EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                         EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;
                                   EST_CD_M_FES_ALM.post;
                                end;
                           end;
                      end
                    else
                      begin
                        AchouRegFes :=  localizar_FES(lIndex, id_empresa, BUS_CD_M_CTE_RES_ITE_INT.FieldByName('ID_ITEM').text,
                                                      BUS_CD_M_CTE_RES_ITE_INT.FieldByName('ID_COR').text, BUS_CD_M_CTE_RES_ITE_INT.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);
                        if AchouRegFes then
                           begin
                             // Atualiza o saldo do item
                             EST_CD_M_FES.Edit;

                             EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime  := DtaMovimento;
                             EST_CD_M_FES.FieldByName('data_ult_inventario').AsDateTime := DtaMovimento;

                             EST_CD_M_FES.Post;
                           end;
                      end;
                    BUS_CD_M_CTE_RES_ITE_INT.Next;
                 end;
            end;
      end;
   BUS_CD_M_CTE_RES_ITE_INT.Close;

   // Atualiza saldo
   if not BUS_CD_M_CTE_ITE_INT.IsEmpty then
      begin
        BUS_CD_M_CTE_ITE_INT.First;
        while not BUS_CD_M_CTE_ITE_INT.eof do
           begin
              AchouRegFes :=  localizar_FES(lIndex, id_empresa, BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').text,
                                            BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text, BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);

              // Caso utiliza o almoxarifado
              if AtualizaFesAlm then
                 begin
                   // Caso a tabela de saldo do produto por almoxarifado já exista
                   AchouRegFesAlm := localizar_FES_ALM(lIndex, id_empresa,
                                                       BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').text,
                                                       Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                       BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text,
                                                       BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text,
                                                       EST_CD_M_FES_ALM);
                 end;


              // Caso utiliza lote
              if AtualizaLot then
                 begin
                  AchouRegLot := false;
                  if (trim(BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text) <> '') and
                     (trim(BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text) <> '0') then
                      begin
                        AchouRegLot :=  localizar_LOT(lIndex, id_empresa,
                                                      BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').text,
                                                      BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text,
                                                      Pai_DataSet.FieldByName('ID_ALMOXARIFADO').text,
                                                      BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text,
                                                      BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text,
                                                      BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean,
                                                      EST_CD_M_LOT);
                      end;
                 end;

              if AchouRegFes then
                 begin
                   if not AtualizaLot then
                      begin
                         // Atualiza o saldo do item

                         EST_CD_M_FES.Edit;
                         if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger <> 0 then
                            begin
                               EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime  :=  DtaMovimento;
                               EST_CD_M_FES.FieldByName('data_ult_inventario').AsDateTime :=  DtaMovimento;
                               EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency     :=
                                            BUS_CD_M_CTE_ITE_INT.FieldByName('VLR_CUSTO').AsCurrency;

                               if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger = 1 then
                                  begin
                                    EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency :=
                                            EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency +
                                                   BUS_CD_M_CTE_ITE_INT.FieldByName('DIFERENCA').AsCurrency;

                                    EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                               EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                               EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;

                                  end;

                               if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger = 2 then
                                  begin
                                    EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                            EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                   BUS_CD_M_CTE_ITE_INT.FieldByName('DIFERENCA').AsCurrency;

                                    EST_CD_M_FES.FieldByName('SALDO_FISICO').AsCurrency :=
                                               EST_CD_M_FES.FieldByName('QTDE_ENTRADA').AsCurrency -
                                               EST_CD_M_FES.FieldByName('QTDE_SAIDA').AsCurrency;
                                  end;
                               EST_CD_M_FES.Post;


                               if AtualizaFesAlm then
                                  begin
                                     EST_CD_M_FES_ALM.Edit;


                                     if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger = 1 then
                                        begin
                                          EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                         EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency +
                                                         BUS_CD_M_CTE_ITE_INT.FieldByName('DIFERENCA').AsCurrency;;
                                        end;

                                     if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger = 2 then
                                        begin
                                          EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                 EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                         BUS_CD_M_CTE_ITE_INT.FieldByName('DIFERENCA').AsCurrency;
                                        end;


                                     EST_CD_M_FES_ALM.FieldByName('SALDO_FISICO').AsCurrency :=
                                           EST_CD_M_FES_ALM.FieldByName('QTDE_ENTRADA').AsCurrency -
                                           EST_CD_M_FES_ALM.FieldByName('QTDE_SAIDA').AsCurrency;
                                     EST_CD_M_FES_ALM.post;
                                  end;
                            end
                         else
                            begin
                              EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime  :=  DtaMovimento;
                              EST_CD_M_FES.FieldByName('data_ult_inventario').AsDateTime :=  DtaMovimento;

                              EST_CD_M_FES.Post;
                            end;
                      end;

                    // Caso utiliza lote
                    if AtualizaLot then
                       begin
                         if AchouRegLot then
                            begin
                              if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger <> 0 then
                                 begin
                                   EST_CD_M_LOT.Edit;

                                   EST_CD_M_LOT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                                                      BUS_CD_M_CTE_ITE_INT.FieldByName('DTA_VENCIMENTO').AsDateTime;


                                   if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger = 1 then
                                      begin
                                        EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency :=
                                                      EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency +
                                                      BUS_CD_M_CTE_ITE_INT.FieldByName('DIFERENCA').AsCurrency;
                                      end;

                                   if BUS_CD_M_CTE_ITE_INT.FieldByName('TIPO_DIFERENCA').AsInteger = 2 then
                                      begin
                                        EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency :=
                                                EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency +
                                                BUS_CD_M_CTE_ITE_INT.FieldByName('DIFERENCA').AsCurrency;
                                      end;

                                   EST_CD_M_LOT.FieldByName('QTDE_ATUAL').AsCurrency :=
                                     EST_CD_M_LOT.FieldByName('QTDE_ENTRADA').AsCurrency -
                                        EST_CD_M_LOT.FieldByName('QTDE_SAIDA').AsCurrency;

                                   EST_CD_M_LOT.post;
                                 end;
                            end;
                       end;

                 end;
             BUS_CD_M_CTE_ITE_INT.Next;
           end;
      end;

    BUS_CD_M_CTE_ITE_INT.Close;


    if EST_CD_M_FEA <> nil then
       if not EST_CD_M_FEA.IsEmpty then
          if not (EST_CD_M_FEA.ApplyUpdates(0) = 0) then
                  abort;

    if EST_CD_M_FES <> nil then
       if not EST_CD_M_FES.IsEmpty then
          if not (EST_CD_M_FES.ApplyUpdates(0) = 0) then
                  abort;

    if EST_CD_M_FES_ALM <> nil then
       if not EST_CD_M_FES_ALM.IsEmpty then
          if not (EST_CD_M_FES_ALM.ApplyUpdates(0) = 0) then
                  abort;

    if EST_CD_M_LOT <> nil then
       if not EST_CD_M_LOT.IsEmpty then
          if not (EST_CD_M_LOT.ApplyUpdates(0) = 0) then
                  abort;

    FreeAndNil(BUS_CD_C_PAR_CTR);
    FreeAndNil(EST_CD_M_FEA);
    FreeAndNil(EST_CD_M_FES);
    FreeAndNil(EST_CD_M_FES_ALM);
    FreeAndNil(EST_CD_M_LOT);
    FreeAndNil(BUS_CD_M_CTE_ITE_INT);
    FreeAndNil(BUS_CD_M_CTE_RES_ITE_INT);
end;

procedure CorrigirCustoMedio(Pai_DataSet: TCustomClientDataSet;BUS_CD_C_PAR_CTR,EST_CD_M_FEA,
                             BUS_CD_M_CTE_ITE_INT,BUS_CD_M_CTE_RES_ITE_INT: TClientDataSet;
                             EST_DP_M_FES: TDataSetProvider;SmAtual: TSM);
var
  n: integer;
  DtaMovimento: TDate;
  id_empresa: String;
  Itens_Sel, Cores_Sel, Tam_Sel, Lotes_Sel: String;
  lIndex: integer;
  EST_CD_M_FES: TClientDataSet;
  AchouRegFes: boolean;
begin

  { TODO -oMaxsuel -cCriação :
    Criado em 28/11/2016
    Tem a função de corrigir o custo médio do item
    O método só vale para itens que tem saldo.
    O sistema irá ZERAR o saldo , e gerar o mesmo saldo
    com o NOVO custo médio }


  try

      if Pai_DataSet.UpdateStatus in [usUnmodified] then
         begin
           Pai_DataSet.Next;
           if Pai_DataSet.UpdateStatus in [usModified] then
              begin
                DtaMovimento := Pai_DataSet.FieldByName('DTA_MOVIMENTO').AsDateTime;
              end;
           Pai_DataSet.Prior;
         end;


      id_empresa := Pai_DataSet.FieldByName('ID_EMPRESA').AsString;
      Itens_Sel  := '';
      Cores_Sel  := '';
      Tam_Sel    := '';
      Lotes_Sel  := '';

      // Aninha todos os itens da contagem
      if not BUS_CD_M_CTE_ITE_INT.IsEmpty then
         begin
            BUS_CD_M_CTE_ITE_INT.First;
            while not BUS_CD_M_CTE_ITE_INT.eof do
               begin
                lIndex := 7;

                // busca os itens
                if Itens_Sel <> '' then
                   begin
                     Itens_Sel :=
                     Itens_Sel + ',' +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').AsString+'''';
                   end;
                if Itens_Sel = '' then
                   begin
                     Itens_Sel :=
                     Itens_Sel +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').AsString+'''';
                   end;

                // busca as cores dos itens

                if BUS_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean= true then
                   begin
                      lIndex := 4;

                      if BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text <> '' then
                         begin
                           if not pos(BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text,Cores_Sel) <> 0 then
                              begin
                                if Cores_Sel <> '' then
                                   begin
                                     Cores_Sel :=
                                     Cores_Sel + ',' +''''+BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').AsString+'''';
                                   end;
                                if Cores_Sel = '' then
                                   begin
                                     Cores_Sel :=
                                     Cores_Sel +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').AsString+'''';
                                   end;
                              end;
                         end;
                   end;

                // busca os tamanhos dos itens
                if BUS_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = true then
                   begin
                      lIndex := 5;

                      if BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text <> '' then
                         begin
                           if not pos(BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text,Tam_Sel) <> 0 then
                              begin
                                if Tam_Sel <> '' then
                                   begin
                                     Tam_Sel :=
                                     Tam_Sel + ',' +''''+BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').AsString+'''';
                                   end;
                                if Tam_Sel = '' then
                                   begin
                                     Tam_Sel :=
                                     Tam_Sel +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').AsString+'''';
                                   end;
                              end;
                         end;
                   end;

                if BUS_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean = true then
                   begin
                      if BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text <> '' then
                         begin
                           if not pos(BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text,Lotes_Sel) <> 0 then
                              begin
                                if Lotes_Sel <> '' then
                                   begin
                                     Lotes_Sel :=
                                     Lotes_Sel + ',' +''''+BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').AsString+'''';
                                   end;
                                if Lotes_Sel = '' then
                                   begin
                                     Lotes_Sel :=
                                     Lotes_Sel +''''+ BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').AsString+'''';
                                   end;
                              end;
                         end;
                   end;
                   BUS_CD_M_CTE_ITE_INT.Next;
               end;
         end;
      // Fim -----------------------


      // Buscará todos os saldos dos itens do documento em questão
      EST_CD_M_FES := TClientDataSet.Create(nil);
      EST_CD_M_FES.SetProvider(EST_DP_M_FES);
      EST_CD_M_FES.Close;
      EST_CD_M_FES.Data :=
          EST_CD_M_FES.DataRequest(VarArrayOf([lIndex, id_empresa, Itens_Sel,Cores_Sel, Tam_Sel]));


      // Multiplica-se por 2 , por que para cada registro do CTE_ITE, existirá
      // um registro para ZERAR o estoque, e outro para VOLTAR o estoque com o novo custo medio.

      n := SmAtual.enChaveNItens('EST_TB_M_FEA',BUS_CD_M_CTE_ITE_INT.RecordCount*2);

      { BUSCAR A MOVIMENTAÇÃO DO ESTOQUE}
      BUS_CD_M_CTE_ITE_INT.First;
      while not BUS_CD_M_CTE_ITE_INT.Eof do
          begin
            AchouRegFes :=  localizar_FES(lIndex, id_empresa, BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').text,
                                         BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text, BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text,EST_CD_M_FES);

            if AchouRegFes then
               begin
                 if EST_CD_M_FES.FieldByName('saldo_fisico').AsCurrency > 0 then
                    begin
                       // Parte 1
                       // Gera o registro de estoque que zera o saldo
                       EST_CD_M_FEA.Insert;
                       EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger     := n;
                       inc(n);

                       EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger :=
                               Pai_DataSet.FieldByName('ID_EMPRESA').AsInteger;

                       EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger :=
                               BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').AsInteger;

                       EST_CD_M_FEA.FieldByName('ID_COR').text :=
                               BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text;

                       EST_CD_M_FEA.FieldByName('ID_TAMANHO').text :=
                               BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text;

                       EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat :=
                               BUS_CD_M_CTE_ITE_INT.FieldByName('ID_SEQ_ITEM').Asfloat;

                       EST_CD_M_FEA.FieldByName('DATA').AsDateTime :=
                               DtaMovimento;
                       // 28/11/2016
                       // Como o sentido é ZERAR o Estoque, então o tipo de movimento de estoque
                       // deve ser sempre de SAÍDA.
                       EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger :=
                           BUS_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_sai').AsInteger;

                       EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger := 4;

                       if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                          begin
                            EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                               Pai_DataSet.FieldByName('id_almoxarifado').AsInteger;
                          end;
                       EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger     := Pai_DataSet.FieldByName('ID_CONTROLE').AsInteger;
                       EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger   := 0;
                       EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger        := 0;
                       EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger     := 0;
                       EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency := 0;
                       EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency    := 0;
                       EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency    := 0;
                       EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                       EST_CD_M_FEA.FieldByName('NUM_LOTE').text            :=
                                     BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text;
                       EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger  :=  Pai_DataSet.FieldByName('ID_CONTROLE').AsInteger;
                       EST_CD_M_FEA.FieldByName('QTDE').AsCurrency :=  EST_CD_M_FES.FieldByName('saldo_fisico').AsCurrency;
                       EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency :=
                                    EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency;
                       EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency :=
                           roundTo(EST_CD_M_FES.FieldByName('saldo_fisico').AsCurrency *
                                   EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency,-2);
                       EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency :=
                                    EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                       EST_CD_M_FEA.Post;
                       // Fim do registro que zera o estoque


                       // Parte 2
                       // Gera o registro de estoque que volta o saldo com o novo custo médio
                       EST_CD_M_FEA.Insert;
                       EST_CD_M_FEA.FieldByName('ID_FEA').AsInteger     := n;
                       inc(n);
                       EST_CD_M_FEA.FieldByName('ID_EMPRESA').AsInteger :=
                               Pai_DataSet.FieldByName('ID_EMPRESA').AsInteger;

                       EST_CD_M_FEA.FieldByName('ID_ITEM').AsInteger :=
                               BUS_CD_M_CTE_ITE_INT.FieldByName('ID_ITEM').AsInteger;

                       EST_CD_M_FEA.FieldByName('ID_COR').text :=
                               BUS_CD_M_CTE_ITE_INT.FieldByName('ID_COR').text;

                       EST_CD_M_FEA.FieldByName('ID_TAMANHO').text :=
                               BUS_CD_M_CTE_ITE_INT.FieldByName('ID_TAMANHO').text;

                       EST_CD_M_FEA.FieldByName('ID_SEQ_ITEM').Asfloat :=
                               BUS_CD_M_CTE_ITE_INT.FieldByName('ID_SEQ_ITEM').Asfloat;

                       EST_CD_M_FEA.FieldByName('DATA').AsDateTime :=
                               DtaMovimento;

                       // 28/11/2016
                       // Como o sentido é voltar o Estoque, então o tipo de movimento de estoque
                       // deve ser sempre de ENTRADA.
                       EST_CD_M_FEA.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger :=
                           BUS_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_ent').AsInteger;

                       EST_CD_M_FEA.FieldByName('ORIGEM').AsInteger := 4;

                       if BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
                          begin
                            EST_CD_M_FEA.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                               Pai_DataSet.FieldByName('id_almoxarifado').AsInteger;
                          end;

                       EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger     := Pai_DataSet.FieldByName('ID_CONTROLE').AsInteger;
                       EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger   := 0;
                       EST_CD_M_FEA.FieldByName('ID_MAL').AsInteger        := 0;
                       EST_CD_M_FEA.FieldByName('ID_FISCAL').AsInteger     := 0;
                       EST_CD_M_FEA.FieldByName('PER_DESCONTO').AsCurrency := 0;
                       EST_CD_M_FEA.FieldByName('PER_FRETE').AsCurrency    := 0;
                       EST_CD_M_FEA.FieldByName('VLR_FRETE').AsCurrency    := 0;
                       EST_CD_M_FEA.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                       EST_CD_M_FEA.FieldByName('NUM_LOTE').text            :=
                                     BUS_CD_M_CTE_ITE_INT.FieldByName('NUM_LOTE').text;
                       EST_CD_M_FEA.FieldByName('ID_CONTROLE').AsInteger  :=  Pai_DataSet.FieldByName('ID_CONTROLE').AsInteger;
                       EST_CD_M_FEA.FieldByName('QTDE').AsCurrency :=  EST_CD_M_FES.FieldByName('saldo_fisico').AsCurrency;
                       EST_CD_M_FEA.FieldByName('VLR_CUSTO').AsCurrency :=
                                    BUS_CD_M_CTE_ITE_INT.FieldByName('VLR_CUSTO').AsCurrency;
                       EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency :=
                           roundTo(EST_CD_M_FES.FieldByName('saldo_fisico').AsCurrency *
                                   BUS_CD_M_CTE_ITE_INT.FieldByName('VLR_CUSTO').AsCurrency,-2);
                       EST_CD_M_FEA.FieldByName('VLR_MOVIMENTO').AsCurrency :=
                                    EST_CD_M_FEA.FieldByName('VLR_BRUTO').AsCurrency;
                       EST_CD_M_FEA.Post;
                       // Fim do registro que volta o saldo do estoque com o novo custo médio
                    end;
                 EST_CD_M_FES.Edit;
                 EST_CD_M_FES.FieldByName('data_ult_movimento').AsDateTime  :=  DtaMovimento;
                 EST_CD_M_FES.FieldByName('data_ult_inventario').AsDateTime :=  DtaMovimento;
                 EST_CD_M_FES.FieldByName('vlr_custo_medio').AsCurrency     :=  BUS_CD_M_CTE_ITE_INT.FieldByName('VLR_CUSTO').AsCurrency;
                 EST_CD_M_FES.Post;

               end;
             BUS_CD_M_CTE_ITE_INT.Next;
          end;
       BUS_CD_M_CTE_ITE_INT.First;

       try
         if EST_CD_M_FEA <> nil then
            if EST_CD_M_FEA.ChangeCount > 0 then
               EST_CD_M_FEA.ApplyUpdates(0);

         if EST_CD_M_FES <> nil then
            if EST_CD_M_FES.ChangeCount > 0 then
                EST_CD_M_FES.ApplyUpdates(0);
       except
          on e: exception do
             begin
                raise Exception.Create('Erro ao tentar corrigir o custo médio do item: ' + #13 + e.Message);
             end;
       end;
  finally
    FreeAndNil(EST_CD_M_FES);
  end;
end;



end.
