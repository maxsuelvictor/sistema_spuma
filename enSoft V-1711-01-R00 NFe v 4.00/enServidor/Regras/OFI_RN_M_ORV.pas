unit OFI_RN_M_ORV;

interface
uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr,System.Math;


{ TODO -oMariel -cRotina :Regra de Banco 02/11/2014 : 08:11 }

procedure OFI_DP_M_M_ORVUpdateData(DataSet: TCustomClientDataSet; Sender: TObject;OFI_DP_M_OCV,
                                   CAD_DP_C_ITE,CAD_DP_C_TME, CAD_DP_C_FPG,
                                   FAT_DP_M_NFE, BUS_DP_M_NFE_ITE_INT, BUS_DP_M_NFE_TIT_INT,
                                   BUS_DP_M_ORV_PRO_INT, BUS_DP_M_ORV_ITE_INT,BUS_DP_M_ORV_TIT_INT,
                                   BUS_DP_M_ORV_TIT_SER_INT,
                                   CAD_DP_C_PAR, BUS_DP_C_PAR_CTR,
                                   EST_DP_M_FEA, EST_DP_M_FES, EST_DP_M_FES_ALM,EST_DP_M_LOT,
                                   BUS_DP_M_FAT_NFE_CUS,BUS_DP_M_PED_ITE_INT,BUS_DP_M_PED_TIT_INT,
                                   BUS_DP_C_CLI, BUS_DP_C_RAM,OFI_DP_C_TIO, BUS_DP_C_TRI_REG,DP_BR_CUPOM_MESTRE: TDataSetProvider;
                                   Conn: TSQLConnection; SmAtual: TSM);

procedure GarantiaGerarNFs(DataSet: TCustomClientDataSet; Conn: TSQLConnection;SmAtual: TSM);
procedure GerarNotas(DataSet: TCustomClientDataSet; Conn: TSQLConnection; smAtual: TSM);

procedure FatCalculaTotalPai(FAT_CD_M_NFE,FAT_CD_M_NFE_ITE: TClientDataSet);
procedure FatCalculaFrePercentual(FAT_CD_M_NFE,FAT_CD_M_NFE_ITE: TClientDataSet);
procedure FatRatNfd(FAT_CD_M_NFE,FAT_CD_M_NFE_ITE: TClientDataSet; campo:string);

function CalculaPIS(smAtual: TSM;BUS_CD_C_PAR,BUS_CD_C_PAR_CTR,BUS_CD_C_CFO,
                   BUS_CD_C_TME,BUS_CD_C_GRU,cdsNfe,CdsNfeIte: TClientDataSet): Boolean;

function CalculaCofins(smAtual: TSM;BUS_CD_C_PAR,BUS_CD_C_PAR_CTR,BUS_CD_C_CFO,
                       BUS_CD_C_TME,BUS_CD_C_GRU,cdsNfe,CdsNfeIte: TClientDataSet): Boolean;

function CalculaIPI(BUS_CD_C_GRU,CdsNfe,CdsNfeIte: TClientDataSet): Boolean;


procedure SetarNovaRefEstFea(Sender: TObject;SmAtual: TSM; Pai_DataSet: TCustomClientDataSet;Status_ant,Status:Integer);



implementation

uses enConstantes, FAT_RN_M_EST;



procedure SetarNovaRefEstFea(Sender: TObject;SmAtual: TSM;Pai_DataSet: TCustomClientDataSet;Status_ant,Status:Integer);
var
  Ite_DataSet: TDataSet;
  EST_CD_M_FEA,BUS_CD_M_ORV: TClientDataSet;
  codOrdSub:String;
  iteCancelado:Boolean;
begin


   if (Status=4) then
     begin
       EST_CD_M_FEA := TClientDataSet.Create(nil);
       EST_CD_M_FEA.SetProvider(SmAtual.EST_DP_M_FEA);
       EST_CD_M_FEA.Close;
       EST_CD_M_FEA.Data :=
       EST_CD_M_FEA.DataRequest(VarArrayOf([9,
                              Pai_DataSet.FieldByName('ID_EMPRESA').AsString,
                              Pai_DataSet.FieldByName('ID_ORDEM').AsString]));

       EST_CD_M_FEA.First;
       while not EST_CD_M_FEA.EOF do
         begin
           if codOrdSub = '' then
             codOrdSub := codOrdSub +''''+EST_CD_M_FEA.FieldByName('ID_ORDEM').AsString+''''
           else
             codOrdSub := codOrdSub +','+''''+EST_CD_M_FEA.FieldByName('ID_ORDEM').AsString+'''';
           EST_CD_M_FEA.Edit;
           EST_CD_M_FEA.FieldByName('ID_ORDEM_ASUB').AsString :='';
           EST_CD_M_FEA.FieldByName('DOCUMENTO').AsString :=EST_CD_M_FEA.FieldByName('ID_ORDEM').AsString;
           EST_CD_M_FEA.Post;
           EST_CD_M_FEA.Next;
         end;

       BUS_CD_M_ORV := TClientDataSet.Create(nil);
       BUS_CD_M_ORV.SetProvider(SmAtual.BUS_DP_M_ORV);
       BUS_CD_M_ORV.Close;
       BUS_CD_M_ORV.Data :=
               BUS_CD_M_ORV.DataRequest(VarArrayOf([0,codOrdsub]));

       BUS_CD_M_ORV.First;
       WHILE not BUS_CD_M_ORV.eof do
        begin
          BUS_CD_M_ORV.Edit;
          BUS_CD_M_ORV.FieldByName('STATUS').AsInteger :=0;
          BUS_CD_M_ORV.Post;
          BUS_CD_M_ORV.Next;
        end;
     end
   else
     if (Status_ant = 0) and (Status = 0) then
       begin
         Ite_DataSet := TDataSetField(Pai_DataSet.FieldByName('OFI_SQ_M_ORV_ITE')).NestedDataSet;
         Ite_DataSet.First;
         codOrdSub :='';
         while not Ite_DataSet.eof do
           begin
               if codOrdSub='' then
                 codOrdSub := codOrdSub +''''+Ite_DataSet.FieldByName('ID_ORDEM_SUBST').AsString+''''
               else
                 codOrdSub := codOrdSub +','+''''+Ite_DataSet.FieldByName('ID_ORDEM_SUBST').AsString+'''';

              if Ite_DataSet.UpdateStatus in [usUnmodified] then
                BEGIN
                  Ite_DataSet.Next;
                END;
              Ite_DataSet.Next;
           end;

         BUS_CD_M_ORV := TClientDataSet.Create(nil);
         BUS_CD_M_ORV.SetProvider(SmAtual.BUS_DP_M_ORV);
         BUS_CD_M_ORV.Close;
         BUS_CD_M_ORV.Data :=
                 BUS_CD_M_ORV.DataRequest(VarArrayOf([0,codOrdsub]));


         EST_CD_M_FEA := TClientDataSet.Create(nil);
         EST_CD_M_FEA.SetProvider(SmAtual.EST_DP_M_FEA);
         EST_CD_M_FEA.Close;
         EST_CD_M_FEA.Data :=
                 EST_CD_M_FEA.DataRequest(VarArrayOf([4,Pai_DataSet.FieldByName('ID_EMPRESA').AsString,codOrdsub,
                                              Pai_DataSet.FieldByName('ID_ALMOXARIFADO').AsString]));

         Ite_DataSet.First;
         while not Ite_DataSet.eof do
           begin
               try
                 EST_CD_M_FEA.Filtered := true;
                 EST_CD_M_FEA.Filter := 'ID_ORDEM='+Ite_DataSet.FieldByName('ID_ORDEM_SUBST').AsString+
                                         ' AND (ID_SEQ_COJ='+Ite_DataSet.FieldByName('ID_SEQUENCIA').AsString+
                                         ' OR ID_SEQ_ITEM='+Ite_DataSet.FieldByName('ID_SEQUENCIA').AsString+')';
                 EST_CD_M_FEA.First;
                 if Ite_DataSet.UpdateStatus in [usInserted] then
                   BEGIN
                     while not EST_CD_M_FEA.EOF do
                       begin
                          EST_CD_M_FEA.Edit;
                          EST_CD_M_FEA.FieldByName('ID_ORDEM_ASUB').AsInteger := Ite_DataSet.FieldByName('ID_ORDEM').AsInteger;
                          EST_CD_M_FEA.FieldByName('DOCUMENTO').AsInteger := Ite_DataSet.FieldByName('ID_ORDEM').AsInteger;
                          EST_CD_M_FEA.Post;
                          EST_CD_M_FEA.Next;
                       end;
                     if BUS_CD_M_ORV.Locate('ID_ORDEM',VarArrayOf([Ite_DataSet.FieldByName('ID_ORDEM_SUBST').AsString]),[]) then
                       begin
                         BUS_CD_M_ORV.Edit;
                         BUS_CD_M_ORV.FieldByName('STATUS').AsInteger := 5;
                         BUS_CD_M_ORV.Post;
                       end;
                   END;
                 if Ite_DataSet.UpdateStatus in [usDeleted] then
                   BEGIN
                      while not EST_CD_M_FEA.EOF do
                       begin
                          EST_CD_M_FEA.Edit;
                          EST_CD_M_FEA.FieldByName('ID_ORDEM_ASUB').AsString := '';
                          EST_CD_M_FEA.FieldByName('DOCUMENTO').AsString := EST_CD_M_FEA.FieldByName('ID_ORDEM').AsString;
                          EST_CD_M_FEA.Post;
                          EST_CD_M_FEA.Next;
                       end;
                      if BUS_CD_M_ORV.Locate('ID_ORDEM',VarArrayOf([Ite_DataSet.FieldByName('ID_ORDEM_SUBST').AsString]),[]) then
                       begin
                         BUS_CD_M_ORV.Edit;
                         BUS_CD_M_ORV.FieldByName('STATUS').AsInteger := 0;
                         BUS_CD_M_ORV.Post;
                       end;
                   END;

                 if Ite_DataSet.UpdateStatus in [usUnmodified] then
                   BEGIN
                     iteCancelado := false;
                     Ite_DataSet.Next;
                     if Ite_DataSet.FieldByName('CANCELADO').AsString <>'' then
                        iteCancelado := Ite_DataSet.FieldByName('CANCELADO').AsBoolean;

                     if iteCancelado=true then
                       begin
                         while not EST_CD_M_FEA.EOF do
                           begin
                              EST_CD_M_FEA.Edit;
                              EST_CD_M_FEA.FieldByName('ID_ORDEM_ASUB').AsString := '';
                              EST_CD_M_FEA.FieldByName('DOCUMENTO').AsString := EST_CD_M_FEA.FieldByName('ID_ORDEM').AsString;
                              EST_CD_M_FEA.Post;
                              EST_CD_M_FEA.Next;
                           end;
                         if BUS_CD_M_ORV.Locate('ID_ORDEM',VarArrayOf([Ite_DataSet.FieldByName('ID_ORDEM_SUBST').AsString]),[]) then
                           begin
                             BUS_CD_M_ORV.Edit;
                             BUS_CD_M_ORV.FieldByName('STATUS').AsInteger := 0;
                             BUS_CD_M_ORV.Post;
                           end;
                       end;
                   END;

               finally
                 EST_CD_M_FEA.Filtered := false;
               end;

              Ite_DataSet.Next;
           end;
       end;

   if EST_CD_M_FEA <> nil then
      if EST_CD_M_FEA.ChangeCount > 0 then
        if not (EST_CD_M_FEA.ApplyUpdates(0) = 0) then
          raise Exception.Create('Erro ao atualizar referência do ficha de estoque.');


   if BUS_CD_M_ORV <> nil then
      if BUS_CD_M_ORV.ChangeCount > 0 then
        if not (BUS_CD_M_ORV.ApplyUpdates(0) = 0) then
           raise Exception.Create('Erro ao atualizar status das ordens de serviços substituídas.');

   EST_CD_M_FEA.Free;
   BUS_CD_M_ORV.Free;
end;

function CalculaIPI(BUS_CD_C_GRU,CdsNfe,CdsNfeIte: TClientDataSet): Boolean;
begin

  CdsNfeIte.FieldByName('IPI_BASE').AsCurrency     := 0;
  CdsNfeIte.FieldByName('IPI_VALOR').AsCurrency    := 0;


  CdsNfeIte.FieldByName('IPI_ALIQUOTA').AsCurrency :=
    BUS_CD_C_GRU.FieldByName('per_ipi').AsCurrency;

  if trim(CdsNfeIte.FieldByName('ID_ST_IPI').AsString) = '' then
     begin
       CdsNfeIte.FieldByName('ID_ST_IPI').AsString :=
                 trim(BUS_CD_C_GRU.FieldByName('id_st_ipi_saida').AsString);
     end;

  if pos(CdsNfeIte.FieldByName('ID_ST_IPI').AsString,'50') <> 0 then
     begin
       if BUS_CD_C_GRU.FieldByName('PER_IPI').AsCurrency > 0 then
          begin
            CdsNfeIte.FieldByName('IPI_BASE').AsCurrency  := CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency;
            CdsNfeIte.FieldByName('IPI_VALOR').AsCurrency :=
                      roundTo( ((CdsNfeIte.FieldByName('VLR_MERCADORIA').AsCurrency *
                      CdsNfeIte.FieldByName('IPI_ALIQUOTA').AsCurrency) / 100),-2);
          end;
     end;

end;




function CalculaCofins(smAtual: TSM;BUS_CD_C_PAR,BUS_CD_C_PAR_CTR,BUS_CD_C_CFO,
                       BUS_CD_C_TME,BUS_CD_C_GRU,cdsNfe,CdsNfeIte: TClientDataSet): Boolean;
begin


   CdsNfeIte.FieldByName('COF_BASE').AsCurrency     := 0;
   CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat    := 0;
   CdsNfeIte.FieldByName('COF_VALOR').AsCurrency    := 0;
   CdsNfeIte.FieldByName('COF_VALOR_ST').AsCurrency := 0;


  { Ramo de atividade dos parâmetros
      0 - SimplesNacional,  1 - LucroPresumido, 2 - LucroReal }

  // SP10 -> VENDA
  // SP70 -> PRESTAÇÃO DE SERVIÇO
  // SP99 -> OUTRAS SAIDAS/PRESTACOES

  CdsNfeIte.FieldByName('ID_ST_COF').AsString    :=
            BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text;

  if (BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2) and // Transferencia
      (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1]) then // 1 - LucroPresumido
       begin
          CdsNfeIte.FieldByName('ID_ST_COF').AsString    := '49';
          CdsNfeIte.FieldByName('COF_BASE').AsCurrency   := 0;
          CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat  := 0;
          CdsNfeIte.FieldByName('COF_VALOR').AsCurrency  := 0;
       end;

  if (BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and // Normal
     (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2]) then // 1 - LucroPresumido, 2 - LucroReal
      begin
         // Comentado por Maxsuel Victor, 14/04/2016
           // Devido ter nova alteração


         if (BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and // Normal
            (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2]) then // 1 - LucroPresumido, 2 - LucroReal
             begin
                if (BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP10') or
                   (BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP70') or
                   (BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP99') then
                   begin
                     // ****** Calcular COFINS ---------------------------------------------------
                     //'01 - Operação Tributável com Alíquota Básica.';
                     //'02 - Operação Tributável com Alíquota Diferenciada';
                     //'03 - Operação Tributável com Alíquota por Unidade de Medida de Produto';
                     //'05 - Operação Tributável por Substituição Tributária';

                     if (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 1) then // 1 - LucroPresumido
                         begin
                           if BUS_CD_C_PAR_CTR.FieldByName('per_cofins_l_presumido').AsFloat > 0 then
                              begin
                                 if pos(BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text,'01-03-05') <> 0 then
                                    begin
                                      CdsNfeIte.FieldByName('COF_BASE').AsCurrency   :=
                                                CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency;
                                      CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat  :=
                                                BUS_CD_C_PAR_CTR.FieldByName('per_cofins_l_presumido').AsFloat;
                                      CdsNfeIte.FieldByName('COF_VALOR').AsCurrency  :=
                                                roundTo(((CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat *
                                                CdsNfeIte.FieldByName('COF_BASE').AsCurrency) / 100),-2);
                                    end;
                              end;
                         end;

                     if (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 2) then // 2 - LucroReal
                         begin
                           if BUS_CD_C_PAR_CTR.FieldByName('per_cofins_l_real').AsFloat > 0 then
                              begin
                                 if pos(BUS_CD_C_GRU.FieldByName('ID_ST_COF_SAIDA').Text,'01-03-05') <> 0 then
                                    begin
                                      CdsNfeIte.FieldByName('COF_BASE').AsCurrency   :=
                                                CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency;
                                      CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat  :=
                                                BUS_CD_C_PAR_CTR.FieldByName('per_cofins_l_real').AsFloat;
                                      CdsNfeIte.FieldByName('COF_VALOR').AsCurrency  :=
                                                roundTo(((CdsNfeIte.FieldByName('COF_ALIQUOTA').AsFloat *
                                                CdsNfeIte.FieldByName('COF_BASE').AsCurrency) / 100),-2);
                                    end;
                              end;
                        end;

                   end;
             end;
      end;

end;




function CalculaPIS(smAtual: TSM;BUS_CD_C_PAR,BUS_CD_C_PAR_CTR,BUS_CD_C_CFO,
                   BUS_CD_C_TME,BUS_CD_C_GRU,cdsNfe,CdsNfeIte: TClientDataSet): Boolean;

begin


   CdsNfeIte.FieldByName('PIS_BASE').AsCurrency     := 0;
   CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat    := 0;
   CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency    := 0;
   CdsNfeIte.FieldByName('PIS_VALOR_ST').AsCurrency := 0;




   { Ramo de atividade dos parâmetros
      0 - SimplesNacional,  1 - LucroPresumido, 2 - LucroReal }

   // SP10 -> VENDA
   // SP70 -> PRESTAÇÃO DE SERVIÇO
   // SP99 -> OUTRAS SAIDAS/PRESTACOES




   CdsNfeIte.FieldByName('ID_ST_PIS').AsString    :=
             BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text;

   if (BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2) and // Transferencia
      (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1]) then // 1 - LucroPresumido
       begin
          CdsNfeIte.FieldByName('ID_ST_PIS').AsString    := '49';
          CdsNfeIte.FieldByName('PIS_BASE').AsCurrency   := 0;
          CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat  := 0;
          CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency  := 0;
       end;

   if (BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0) and // Normal
      (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2]) then // 1 - LucroPresumido, 2 - LucroReal
       begin
         if (BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP10') or
            (BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP70') or
            (BUS_CD_C_CFO.FieldByName('ID_CLASSE').AsString = 'SP99') then
           begin
             // Operações para Vendas
             // ****** Calcular PIS ------------------------------------------------------
             //'01 - Operação Tributável com Alíquota Básica.';
             //'02 - Operação Tributável com Alíquota Diferenciada';
             //'03 - Operação Tributável com Alíquota por Unidade de Medida de Produto';
             //'05 - Operação Tributável por Substituição Tributária';

             if (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 1) then // 1 - LucroPresumido
                 begin
                    if BUS_CD_C_PAR_CTR.FieldByName('per_pis_l_presumido').AsFloat > 0 then
                      begin
                         if pos(BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text,'01-03-05') <> 0 then
                            begin
                              CdsNfeIte.FieldByName('PIS_BASE').AsCurrency   :=
                                        CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency;
                              CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat  :=
                                        BUS_CD_C_PAR_CTR.FieldByName('per_pis_l_presumido').AsFloat;
                              CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency  :=
                                        roundTo(((CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat *
                                        CdsNfeIte.FieldByName('PIS_BASE').AsCurrency) / 100),-2);
                            end;
                      end;
                 end;

             if (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 2) then // 2 - LucroReal
                begin
                   if BUS_CD_C_PAR_CTR.FieldByName('per_pis_l_real').AsFloat > 0 then
                      begin
                         if pos(BUS_CD_C_GRU.FieldByName('ID_ST_PIS_SAIDA').Text,'01-03-05') <> 0 then
                            begin
                              CdsNfeIte.FieldByName('PIS_BASE').AsCurrency   :=
                                        CdsNfeIte.FieldByName('VLR_LIQUIDO').AsCurrency;
                              CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat  :=
                                        BUS_CD_C_PAR_CTR.FieldByName('per_pis_l_real').AsFloat;
                              CdsNfeIte.FieldByName('PIS_VALOR').AsCurrency  :=
                                        roundTo(((CdsNfeIte.FieldByName('PIS_ALIQUOTA').AsFloat *
                                        CdsNfeIte.FieldByName('PIS_BASE').AsCurrency) / 100),-2);
                            end;
                      end;
                end;
           end;
       end;


end;






procedure OFI_DP_M_M_ORVUpdateData(DataSet: TCustomClientDataSet; Sender: TObject;
                                   OFI_DP_M_OCV,CAD_DP_C_ITE,CAD_DP_C_TME,CAD_DP_C_FPG,
                                   FAT_DP_M_NFE, BUS_DP_M_NFE_ITE_INT, BUS_DP_M_NFE_TIT_INT,
                                   BUS_DP_M_ORV_PRO_INT, BUS_DP_M_ORV_ITE_INT,BUS_DP_M_ORV_TIT_INT,
                                   BUS_DP_M_ORV_TIT_SER_INT,
                                   CAD_DP_C_PAR,BUS_DP_C_PAR_CTR,
                                   EST_DP_M_FEA, EST_DP_M_FES, EST_DP_M_FES_ALM,EST_DP_M_LOT,
                                   BUS_DP_M_FAT_NFE_CUS,BUS_DP_M_PED_ITE_INT,BUS_DP_M_PED_TIT_INT,
                                   BUS_DP_C_CLI, BUS_DP_C_RAM,OFI_DP_C_TIO,BUS_DP_C_TRI_REG,DP_BR_CUPOM_MESTRE: TDataSetProvider;
                                   Conn: TSQLConnection; SmAtual: TSM);
var
  OFI_CD_M_OCV: TClientDataSet;
  CAD_CD_C_TME: TClientDataSet;
  BUS_CD_C_PAR_CTR,CAD_CD_C_PAR,CAD_CD_C_PAR_MOD: TClientDataSet;
  FIN_CD_M_REC: TClientDataSet;
  BUS_CD_M_NFE: TClientDataSet;
  BUS_CD_C_FPG: TClientDataSet;
  BUS_CD_C_PAR_MOD: TDataSet;
  IdOrcamento,tipo_ordem,status_ant,status: Integer;
  OrdemSubs:Boolean;
begin

  { TODO -oMaxsuel -cCriação : Método criado em 05/08/2015 }
  try

  // O IF abaixo deve ser retirado quando a rotina EntGravaEst for remanejado para
  // a camada SERVIDOR.

  CAD_CD_C_PAR := TClientDataSet.Create(nil);
  CAD_CD_C_PAR.SetProvider(BUS_DP_C_PAR_CTR);
  CAD_CD_C_PAR.Close;
  CAD_CD_C_PAR.Data :=
      CAD_CD_C_PAR.DataRequest(VarArrayOf([0,DataSet.FieldByName('id_empresa').AsString]));




  BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
  BUS_CD_C_PAR_CTR.SetProvider(BUS_DP_C_PAR_CTR);
  BUS_CD_C_PAR_CTR.Close;
  BUS_CD_C_PAR_CTR.Data :=
      BUS_CD_C_PAR_CTR.DataRequest(VarArrayOf([DataSet.FieldByName('id_empresa').AsString]));

  BUS_CD_C_PAR_MOD := TDataSetField(BUS_CD_C_PAR_CTR.FieldByName('BUS_SQ_C_PAR_MOD')).NestedDataSet;


  CAD_CD_C_TME := TClientDataSet.Create(nil);
  CAD_CD_C_TME.SetProvider(CAD_DP_C_TME);
  CAD_CD_C_TME.Close;
  CAD_CD_C_TME.Data :=
      CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('orv_id_tipo_mov_estoque').AsString]));

  tipo_ordem :=  DataSet.FieldByName('int_tipo_os').AsInteger;

  status :=  DataSet.FieldByName('status').AsInteger;
  status_ant := DataSet.FieldByName('status').AsInteger;
  OrdemSubs :=  DataSet.FieldByName('ordem_substituicao').AsBoolean;


   if (DataSet.UpdateStatus in [usInserted]) then
       begin

         if DataSet.FieldByName('id_orcamento').AsInteger > 0 then
            begin
               OFI_CD_M_OCV := TClientDataSet.Create(nil);
               OFI_CD_M_OCV.SetProvider(OFI_DP_M_OCV);
               OFI_CD_M_OCV.Close;
               OFI_CD_M_OCV.Data :=
                   OFI_CD_M_OCV.DataRequest(
                       VarArrayOf([0,dataset.FieldByName('id_orcamento').AsInteger]));
               if not OFI_CD_M_OCV.IsEmpty then
                  begin
                    OFI_CD_M_OCV.edit;
                    OFI_CD_M_OCV.FieldByName('STATUS').AsInteger := 1;  // Importado
                    if OFI_CD_M_OCV.FieldByName('ID_CLIENTE').Text = '' then
                       OFI_CD_M_OCV.FieldByName('ID_CLIENTE').AsInteger :=
                           DataSet.FieldByName('id_cliente').AsInteger;
                    OFI_CD_M_OCV.post;
                  end;
            end;
       end
   else
       begin
          if (DataSet.UpdateStatus in [usUnmodified]) then
             begin
               DataSet.Next;
               if DataSet.FieldByName('status').AsString <> '' then
                 begin
                   status :=  DataSet.FieldByName('status').AsInteger;
                 end;
               if DataSet.FieldByName('int_tipo_os').AsString <> '' then
                 begin
                   tipo_ordem :=  DataSet.FieldByName('int_tipo_os').AsInteger;
                 end;
               DataSet.Prior;

               if DataSet.FieldByName('id_orcamento').AsInteger > 0 then
                  begin
                    IdOrcamento :=  DataSet.FieldByName('id_orcamento').AsInteger;

                    DataSet.Next;
                    if (DataSet.UpdateStatus in [usModified]) then
                         begin
                           if DataSet.FieldByName('status').AsString <> '' then
                              begin
                                if DataSet.FieldByName('status').AsInteger = 4 then
                                   begin
                                     OFI_CD_M_OCV := TClientDataSet.Create(nil);
                                     OFI_CD_M_OCV.SetProvider(OFI_DP_M_OCV);
                                     OFI_CD_M_OCV.Close;
                                     OFI_CD_M_OCV.Data :=
                                         OFI_CD_M_OCV.DataRequest(
                                             VarArrayOf([0,IdOrcamento]));
                                     if not OFI_CD_M_OCV.IsEmpty then
                                        begin
                                          OFI_CD_M_OCV.edit;
                                          OFI_CD_M_OCV.FieldByName('STATUS').AsInteger := 2; // Cancelado;
                                          OFI_CD_M_OCV.post;
                                        end;
                                   end;
                              end;
                         end;
                    DataSet.Prior;
                  end;


             end;
       end;




    if ((not (BUS_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=true)) and
       (BUS_CD_C_PAR_CTR.FieldByName('gerar_nota_fechamento_os').AsBoolean=true)) then
      begin
        if (tipo_ordem = 1) then  //Garantia
          GarantiaGerarNFs(DataSet, Conn,SmAtual);


        FAT_RN_M_EST.FatGerNfs(1,DataSet,CAD_DP_C_PAR, BUS_DP_C_PAR_CTR,CAD_DP_C_ITE,CAD_DP_C_TME,CAD_DP_C_FPG,
                                FAT_DP_M_NFE,BUS_DP_M_NFE_ITE_INT, BUS_DP_M_NFE_TIT_INT,
                                BUS_DP_M_ORV_ITE_INT,BUS_DP_M_ORV_TIT_INT,BUS_DP_M_ORV_TIT_SER_INT,BUS_DP_M_PED_ITE_INT,
                                BUS_DP_M_PED_TIT_INT,BUS_DP_C_CLI, BUS_DP_C_RAM, BUS_DP_C_TRI_REG,DP_BR_CUPOM_MESTRE,Conn,SmAtual);
      end;

    if (CAD_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 1) and // Saída
       (CAD_CD_C_TME.FieldByName('INDICADOR').AsInteger = 0)   then // Normal
        begin
          if (not (OrdemSubs = true)) or ((OrdemSubs = true) and ((status_ant in [2,3]) and (status=4)))  then
             FAT_RN_M_EST.FAT_DP_M_NFEUpdateData(sender,9,
                                              DataSet.FieldByName('ID_ORDEM').AsInteger,
                                              DataSet,
                                              BUS_DP_M_ORV_PRO_INT,
                                              CAD_DP_C_TME,
                                              BUS_DP_C_PAR_CTR,EST_DP_M_FEA,EST_DP_M_FES,
                                              EST_DP_M_FES_ALM,EST_DP_M_LOT,BUS_DP_M_FAT_NFE_CUS,BUS_DP_M_PED_ITE_INT,false,SmAtual)
          else
            SetarNovaRefEstFea(sender,SmAtual,DataSet,status_ant,status);

        end;


    if OFI_CD_M_OCV <> nil then
       if OFI_CD_M_OCV.ChangeCount > 0 then
          if not (OFI_CD_M_OCV.ApplyUpdates(0) = 0) then
             raise Exception.Create('Erro ao tentar atualizar o orçamento.');
   finally
      OFI_CD_M_OCV.Free;
      CAD_CD_C_TME.Free;
      BUS_CD_C_PAR_CTR.Free;
   end;
end;

procedure GarantiaGerarNFs(DataSet: TCustomClientDataSet; Conn: TSQLConnection;smAtual: TSM);
var
  FAT_CD_M_NFE, FAT_CD_M_NFE_DEV: TClientDataSet;
begin
  { TODO -oMaxsuel -cCriação :
    05/01/2017
    Tem a função de gerar as notas fiscais quando se Fecha a O.S de Garantia. }



  // Gerar a nota fiscal de substituição
     GerarNotas(DataSet,Conn,smAtual);
  // Gerar a nota fiscal de devolução

  // Gerar a nota fiscal de Remessa de Garantia ( P/ o Fornecedor )

  // Gerar a nota fiscal de Garantia (Do cliente)

end;

procedure GerarNotas(DataSet: TCustomClientDataSet; Conn: TSQLConnection; smAtual: TSM);
var
   qryECF: TSqlQuery;

   BUS_CD_C_CLI,BUS_CD_M_NFE_ECF, BUS_CD_M_NFE_ITE_ECF,
   BUS_CD_C_PAR, BUS_CD_C_PAR_CTR, BUS_CD_C_PAR_MOD, BUS_CD_C_TME, BUS_CD_C_TRI_REG,BUS_CD_C_FOR,CAD_CD_C_TME,BUS_CD_C_GRU: TClientDataSet;

   BUS_CD_C_ITE,BUS_CD_C_CFO,BUS_CD_C_RAM,BUS_CD_M_NFE_NFE,BUS_CD_M_NFE_ITE_NFE: TClientDataSet;

   BUS_CD_M_NFE_INT,BUS_CD_M_NFE_ITE_INT,BUS_CD_M_ORV_ITE_INT: TClientDataSet;

   FAT_CD_M_NFE,FAT_CD_M_NFE_ITE,FAT_CD_M_NFE_DEV,FAT_CD_M_NFE_DEV_ITE: TClientDataSet;

   i,IdFiscalNovo,id_fiscal_orig: Integer;
   CFOP: String;
    VlrCustoMedio:Currency;

   id_fornecedor_atual,id_fornecedor_prox:Integer;
   StatusOS_Ant,StatusOS_Atual:Integer;
   id_seqFat:Integer;
   EmpRegimeSimples:Boolean;
begin


   if (DataSet.UpdateStatus in [usUnmodified]) then
      begin
        StatusOS_Ant   := DataSet.FieldByName('status').AsInteger;
        StatusOS_Atual := DataSet.FieldByName('status').AsInteger;

        DataSet.Next;
        if DataSet.FieldByName('status').text <> '' then
           begin
             StatusOS_Atual := DataSet.FieldByName('status').AsInteger;
           end;

        DataSet.Prior;
      end;


  try
     if (DataSet.UpdateStatus in [usUnmodified]) and ( StatusOS_Atual = 2)  then   // Se for alteração no ORV e Status = 2 (Fechado)
        begin


      id_seqFat := 1;
      // Busca os itens da OS da Garantia.
      BUS_CD_M_ORV_ITE_INT := TClientDataSet.Create(nil);
      BUS_CD_M_ORV_ITE_INT.SetProvider(smAtual.BUS_DP_M_ORV_ITE_INT);
      BUS_CD_M_ORV_ITE_INT.Close;
      BUS_CD_M_ORV_ITE_INT.Data :=
            BUS_CD_M_ORV_ITE_INT.DataRequest(VarArrayOf([DataSet.FieldByName('ID_ORDEM').AsString]));
      // ---------------------------------


      BUS_CD_C_PAR := TClientDataSet.Create(nil);
      BUS_CD_C_PAR.SetProvider(smAtual.CAD_DP_C_PAR);
      BUS_CD_C_PAR.Close;
      BUS_CD_C_PAR.Data :=
            BUS_CD_C_PAR.DataRequest(VarArrayOf([0,DataSet.FieldByName('ID_EMPRESA').AsString]));


      BUS_CD_C_PAR_MOD := TClientDataSet.Create(nil);
      BUS_CD_C_PAR_MOD.DataSetField := TDataSetField(BUS_CD_C_PAR.FieldByName('CAD_SQ_C_PAR_MOD'));


      // Buscar dados do parâmetros de controle
      BUS_CD_C_PAR_CTR := TClientDataSet.Create(nil);
      BUS_CD_C_PAR_CTR.DataSetField := TDataSetField(BUS_CD_C_PAR.FieldByName('CAD_SQ_C_PAR_CTR'));


    // Ponto1: Responsável pela geração da nota fiscal partindo de um cupom fiscal
      qryECF := TSqlQuery.Create(nil);
      qryECF.SQLConnection := smAtual.conexao;

      // Buscar dados do CUPOM FISCAL
      qryECF.Close;
      qryECF.SQL.Clear;
      qryECF.SQL.Add(' Select * from fat_tb_m_nfe nfe ' +
                     ' where nfe.id_ordem = ' + DataSet.FieldByName('id_ordem_orig_gar').AsString +
                     '   and nfe.nfe_cod_sit = ''00'' ' +
                     '   and nfe.nfe_ecf in (1,2)');
      qryECF.Open;
      if not qryECF.IsEmpty then
         begin
           BUS_CD_M_NFE_ECF := TClientDataSet.Create(nil);
           BUS_CD_M_NFE_ECF.SetProvider(smAtual.FAT_DP_M_NFE);
           BUS_CD_M_NFE_ECF.Close;
           BUS_CD_M_NFE_ECF.Data :=
               BUS_CD_M_NFE_ECF.DataRequest(VarArrayOf([0,qryECF.FieldByName('id_empresa').AsString ,
                                                          qryECF.FieldByName('tipo_nf').AsString,
                                                          qryECF.FieldByName('id_fiscal').AsString]));

           BUS_CD_M_NFE_ITE_ECF := TClientDataSet.Create(nil);
           BUS_CD_M_NFE_ITE_ECF.DataSetField := TDataSetField(BUS_CD_M_NFE_ECF.FieldByName('FAT_SQ_M_NFE_ITE'));

           // Gerar a nota Nfe
           try
             FAT_CD_M_NFE := TClientDataSet.Create(nil);
             FAT_CD_M_NFE.SetProvider(smAtual.FAT_DP_M_NFE);
             FAT_CD_M_NFE.Close;
             FAT_CD_M_NFE.Data :=
                FAT_CD_M_NFE.DataRequest(VarArrayOf([0,'']));
             smAtual.FAT_DP_M_NFE.OnUpdateData := nil;

             FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
             FAT_CD_M_NFE_ITE.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_ITE'));


             // Buscar dados tipo de estoque
             BUS_CD_C_TME := TClientDataSet.Create(nil);
             BUS_CD_C_TME.SetProvider(smAtual.CAD_DP_C_TME);
             BUS_CD_C_TME.Close;
             BUS_CD_C_TME.Data :=
                    BUS_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('nfe_ecf_tipo_estoque').AsInteger]));


             // Buscar dados do cliente
             BUS_CD_C_CLI := TClientDataSet.Create(nil);
             BUS_CD_C_CLI.SetProvider(smAtual.CAD_DP_C_CLI);
             BUS_CD_C_CLI.Close;
             BUS_CD_C_CLI.Data :=
                    BUS_CD_C_CLI.DataRequest(VarArrayOf([0,BUS_CD_M_NFE_ECF.FieldByName('ID_EMITENTE').AsInteger]));

            if BUS_CD_C_CLI.FieldByName('PESSOA').AsInteger = 0 then // Física
               begin
                  if BUS_CD_M_NFE_ECF.FieldByName('UF_EMITENTE').AsString =
                     BUS_CD_M_NFE_ECF.FieldByName('UF_EMPRESA').AsString then
                     begin
                        CFOP := BUS_CD_C_TME.FieldByName('CFO_INTERNO_PF').AsString
                     end
                  else
                     CFOP := BUS_CD_C_TME.FieldByName('CFO_EXTERNO_PF').AsString
               end;

            if BUS_CD_C_CLI.FieldByName('PESSOA').AsInteger = 1 then // Física
               begin
                  if BUS_CD_M_NFE_ECF.FieldByName('UF_EMITENTE').AsString =
                     BUS_CD_M_NFE_ECF.FieldByName('UF_EMPRESA').AsString then
                     begin
                        CFOP := BUS_CD_C_TME.FieldByName('CFO_INTERNO_PJ').AsString
                     end
                  else
                     CFOP := BUS_CD_C_TME.FieldByName('CFO_EXTERNO_PJ').AsString
               end;




             IdFiscalNovo := 0;
             //IdFiscalNovo := sm.enValorChave('FAT_TB_M_NFE');
             IdFiscalNovo := smAtual.enValorChave('FAT_TB_M_NFE');
             id_fiscal_orig := IdFiscalNovo;
             FAT_CD_M_NFE.Insert;
             for i := 0 to BUS_CD_M_NFE_ECF.FieldCount - 1   do
                 begin
                   FAT_CD_M_NFE.Fields[i].AsVariant := BUS_CD_M_NFE_ECF.Fields[i].AsVariant;
                 end;

             FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger              := IdFiscalNovo;
             FAT_CD_M_NFE.FieldByName('IND_NF').AsInteger                 := 1;
             FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger            := DataSet.FieldByName('id_cliente').AsInteger;
             FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                  := CFOP;
             FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                 := 0;
             FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString        := '1';
             FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString       := '';
             FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean               := false;
             FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                 := 0;
             FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean               := false;
             FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                := 0;
             FAT_CD_M_NFE.FieldByName('SERIE').AsString                   := BUS_CD_M_NFE_ECF.FieldByName('SERIE').AsString;
             FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString               := '';
             FAT_CD_M_NFE.FieldByName('MODELO').AsString                  := '55';
             FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString               := '';
             FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger        := BUS_CD_C_PAR_CTR.FieldByName('nfe_ecf_id_condicao_pag').AsInteger;
             FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger    := BUS_CD_C_PAR_CTR.FieldByName('nfe_ecf_tipo_estoque').AsInteger;
             FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger := BUS_CD_M_NFE_ITE_ECF.FieldByName('id_fiscal').AsInteger;
             FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString               := 'C';
             FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                 :=
                      'Nota Fiscal emitida em substituição do cupom fiscal nº ' + BUS_CD_M_NFE_ECF.FieldByName('NUMERO').AsString +' emitido em ' +
                       BUS_CD_M_NFE_ECF.FieldByName('DTA_EMISSAO').AsString+', pela ECF '+BUS_CD_M_NFE_ECF.FieldByName('ECF_SERIAL_IMPRESSORA').AsString;
             FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency        := 0;
             //FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency        := BUS_CD_M_NFE_ECF.FieldByName('vlr_mercadoria').AsCurrency;
             FAT_CD_M_NFE.FieldByName('iss_base').AsCurrency     := 0;
             FAT_CD_M_NFE.FieldByName('iss_valor').AsCurrency    := 0;
             FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency   := 0;
             FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency  := 0;
             FAT_CD_M_NFE.FieldByName('icm_s_base').AsCurrency   := 0;
             FAT_CD_M_NFE.FieldByName('icm_s_valor').AsCurrency  := 0;

             FAT_CD_M_NFE.FieldByName('ipi_base').AsCurrency    := 0;
             FAT_CD_M_NFE.FieldByName('ipi_valor').AsCurrency   := 0;

             FAT_CD_M_NFE.FieldByName('pis_base').AsCurrency    := 0;
             FAT_CD_M_NFE.FieldByName('pis_valor').AsCurrency   := 0;

             FAT_CD_M_NFE.FieldByName('cof_base').AsCurrency    := 0;
             FAT_CD_M_NFE.FieldByName('cof_valor').AsCurrency   := 0;
             FAT_CD_M_NFE.FieldByName('PIS_VALOR_ST').AsCurrency   := 0;
             FAT_CD_M_NFE.FieldByName('COF_VALOR_ST').AsCurrency   := 0;
             FAT_CD_M_NFE.FieldByName('TRI_VALOR').AsCurrency      := 0;

             FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger     := 0;
             FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime    := Date;
             FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime  := Date;
             FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime  := Date;
             FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger := 0;
             FAT_CD_M_NFE.FieldByName('ID_ORDEM_GAR').AsInteger := DataSet.FieldByName('id_ordem').AsInteger;
             FAT_CD_M_NFE.FieldByName('ID_SEQ_FAT_GAR').AsInteger := id_seqFat;

             FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency   := 0;
             FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency := 0;
             FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency   := 0;
             {FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency   :=
                 BUS_CD_M_NFE_ECF.FieldByName('VLR_MERCADORIA').AsCurrency
                    - BUS_CD_M_NFE_ECF.FieldByName('VLR_DESCONTO').AsCurrency;}
             //FAT_CD_M_NFE.Post;


             try
               BUS_CD_M_NFE_ITE_ECF.Filtered := true;
               BUS_CD_M_NFE_ITE_ECF.Filter := 'INT_TIPO_ITEM<>''09''';

             BUS_CD_M_NFE_ITE_ECF.First;
             while not BUS_CD_M_NFE_ITE_ECF.eof do
                begin
                   FAT_CD_M_NFE_ITE.Insert;
                   for i := 0 to BUS_CD_M_NFE_ITE_ECF.FieldCount - 1   do
                       begin
                         FAT_CD_M_NFE_ITE.Fields[i].AsVariant := BUS_CD_M_NFE_ITE_ECF.Fields[i].AsVariant;
                       end;
                  FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').AsInteger    := IdFiscalNovo;
                  FAT_CD_M_NFE_ITE.FieldByName('id_fiscal_dev').AsInteger        := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('vlr_outras').AsCurrency       := BUS_CD_M_NFE_ITE_ECF.FieldByName('vlr_mercadoria').AsCurrency;
                  FAT_CD_M_NFE_ITE.FieldByName('fre_valor').AsCurrency        := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('vlr_seguro').AsCurrency       := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('vlr_outras_desp').AsCurrency  := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency     := 0;


                  FAT_CD_M_NFE_ITE.FieldByName('id_cfo').AsString             := CFOP;

                  FAT_CD_M_NFE_ITE.FieldByName('icm_n_aliquota').AsCurrency   := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('icm_per_reducao').AsCurrency  :=  0;

                  FAT_CD_M_NFE_ITE.FieldByName('icm_n_base').AsCurrency           := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('icm_n_valor').AsCurrency          := 0;

                  FAT_CD_M_NFE_ITE.FieldByName('icm_s_base').AsCurrency     := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('icm_s_valor').AsCurrency := 0;

                  FAT_CD_M_NFE_ITE.FieldByName('ipi_base').AsCurrency     := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('ipi_valor').AsCurrency := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('ipi_aliquota').AsCurrency := 0;

                  FAT_CD_M_NFE_ITE.FieldByName('pis_base').AsCurrency     := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('pis_valor').AsCurrency := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('pis_aliquota').AsCurrency := 0;

                  FAT_CD_M_NFE_ITE.FieldByName('cof_base').AsCurrency     := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('cof_valor').AsCurrency := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('cof_aliquota').AsCurrency := 0;

                  FAT_CD_M_NFE_ITE.FieldByName('iss_base').AsCurrency     := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('iss_valor').AsCurrency := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('iss_aliquota').AsCurrency := 0;

                  FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR_ST').AsCurrency   := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR_ST').AsCurrency   := 0;
                  FAT_CD_M_NFE_ITE.FieldByName('TRI_VALOR').AsCurrency      := 0;



                  if ((not BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').IsNull) and
                       (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 0)) then
                    begin
                        FAT_CD_M_NFE_ITE.FieldByName('id_st_icm').AsString := '400';
                    end
                  else
                    begin
                        FAT_CD_M_NFE_ITE.FieldByName('id_st_icm').AsString := '41';
                    end;

                   FAT_CD_M_NFE_ITE.FieldByName('id_st_ipi').AsString := '99';
                   FAT_CD_M_NFE_ITE.FieldByName('id_st_pis').AsString := '49';
                   FAT_CD_M_NFE_ITE.FieldByName('id_st_cof').AsString := '49';


                   FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency   :=
                     BUS_CD_M_NFE_ITE_ECF.FieldByName('VLR_MERCADORIA').AsCurrency
                         - BUS_CD_M_NFE_ITE_ECF.FieldByName('VLR_DESCONTO').AsCurrency;


                   FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency   :=
                     FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency  +
                          FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;

                   FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency   :=
                     FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency  +
                          FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;


                   FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency        :=
                             FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency +
                             FAT_CD_M_NFE_ITE.FieldByName('vlr_outras').AsCurrency;

                   FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency   :=
                           FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency +
                           FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;


                   FAT_CD_M_NFE_ITE.Post;
                   BUS_CD_M_NFE_ITE_ECF.Next;
                end;
             finally
                 BUS_CD_M_NFE_ITE_ECF.Filtered := false;
             end;
               FAT_CD_M_NFE.Post;


             try
               BUS_CD_M_NFE_ITE_ECF.Filtered := true;
               BUS_CD_M_NFE_ITE_ECF.Filter := 'INT_TIPO_ITEM=''09''';


               if BUS_CD_M_NFE_ITE_ECF.RecordCount >0 then
                 begin
                   IdFiscalNovo := 0;
                   //IdFiscalNovo := sm.enValorChave('FAT_TB_M_NFE');
                   IdFiscalNovo := smAtual.enValorChave('FAT_TB_M_NFE');
                   FAT_CD_M_NFE.Insert;
                   for i := 0 to BUS_CD_M_NFE_ECF.FieldCount - 1   do
                       begin
                         FAT_CD_M_NFE.Fields[i].AsVariant := BUS_CD_M_NFE_ECF.Fields[i].AsVariant;
                       end;

                   FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger              := IdFiscalNovo;
                   FAT_CD_M_NFE.FieldByName('IND_NF').AsInteger                 := 2;
                   FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger            := DataSet.FieldByName('id_cliente').AsInteger;

                   if BUS_CD_M_NFE_ECF.FieldByName('UF_EMITENTE').AsString =
                      BUS_CD_M_NFE_ECF.FieldByName('UF_EMPRESA').AsString then
                     CFOP := BUS_CD_C_TME.FieldByName('cfo_servico_dentro').AsString
                   else
                      CFOP := BUS_CD_C_TME.FieldByName('cfo_servico_fora').AsString;

                   FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                  := CFOP;
                   FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                 := 0;
                   FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString        := '1';
                   FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString       := '';
                   FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean               := false;
                   FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                 := 0;
                   FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean               := false;
                   FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                := 0;
                   FAT_CD_M_NFE.FieldByName('SERIE').AsString                   := BUS_CD_M_NFE_ECF.FieldByName('SERIE').AsString;
                   FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString               := '';
                   FAT_CD_M_NFE.FieldByName('MODELO').AsString                  := '55';
                   FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString               := '';
                   FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger        := BUS_CD_C_PAR_CTR.FieldByName('nfe_ecf_id_condicao_pag').AsInteger;
                   FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger    := BUS_CD_C_PAR_CTR.FieldByName('nfe_ecf_tipo_estoque').AsInteger;
                   FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger := BUS_CD_M_NFE_ITE_ECF.FieldByName('id_fiscal').AsInteger;
                   FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString               := 'C';
                   FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                 :=
                            'Nota Fiscal emitida em substituição do cupom fiscal nº ' + BUS_CD_M_NFE_ECF.FieldByName('NUMERO').AsString +' emitido em ' +
                             BUS_CD_M_NFE_ECF.FieldByName('DTA_EMISSAO').AsString+', pela ECF '+BUS_CD_M_NFE_ECF.FieldByName('ECF_SERIAL_IMPRESSORA').AsString;

                  // FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency        := BUS_CD_M_NFE_ECF.FieldByName('vlr_mercadoria').AsCurrency;
                   FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency       := 0;
                   FAT_CD_M_NFE.FieldByName('iss_base').AsCurrency     := 0;
                   FAT_CD_M_NFE.FieldByName('iss_valor').AsCurrency    := 0;
                   FAT_CD_M_NFE.FieldByName('icm_n_base').AsCurrency   := 0;
                   FAT_CD_M_NFE.FieldByName('icm_n_valor').AsCurrency  := 0;
                   FAT_CD_M_NFE.FieldByName('icm_s_base').AsCurrency   := 0;
                   FAT_CD_M_NFE.FieldByName('icm_s_valor').AsCurrency  := 0;

                   FAT_CD_M_NFE.FieldByName('ipi_base').AsCurrency    := 0;
                   FAT_CD_M_NFE.FieldByName('ipi_valor').AsCurrency   := 0;

                   FAT_CD_M_NFE.FieldByName('pis_base').AsCurrency    := 0;
                   FAT_CD_M_NFE.FieldByName('pis_valor').AsCurrency   := 0;

                   FAT_CD_M_NFE.FieldByName('cof_base').AsCurrency    := 0;
                   FAT_CD_M_NFE.FieldByName('cof_valor').AsCurrency   := 0;
                   FAT_CD_M_NFE.FieldByName('PIS_VALOR_ST').AsCurrency   := 0;
                   FAT_CD_M_NFE.FieldByName('COF_VALOR_ST').AsCurrency   := 0;
                   FAT_CD_M_NFE.FieldByName('TRI_VALOR').AsCurrency      := 0;

                   FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger     := 0;
                   FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime    := Date;
                   FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime  := Date;
                   FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime  := Date;
                   FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger := 0;
                   FAT_CD_M_NFE.FieldByName('ID_ORDEM_GAR').AsInteger := DataSet.FieldByName('id_ordem').AsInteger;
                   FAT_CD_M_NFE.FieldByName('ID_SEQ_FAT_GAR').AsInteger := id_seqFat;

                  { FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency   :=
                       BUS_CD_M_NFE_ECF.FieldByName('VLR_MERCADORIA').AsCurrency
                          - BUS_CD_M_NFE_ECF.FieldByName('VLR_DESCONTO').AsCurrency;   }
                  FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency   := 0;
                  FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency   := 0;
                  FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency   := 0;


                   while not BUS_CD_M_NFE_ITE_ECF.eof do
                    begin
                       FAT_CD_M_NFE_ITE.Insert;
                       for i := 0 to BUS_CD_M_NFE_ITE_ECF.FieldCount - 1   do
                           begin
                             FAT_CD_M_NFE_ITE.Fields[i].AsVariant := BUS_CD_M_NFE_ITE_ECF.Fields[i].AsVariant;
                           end;
                      FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').AsInteger    := IdFiscalNovo;
                      FAT_CD_M_NFE_ITE.FieldByName('id_fiscal_dev').AsInteger        := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('vlr_outras').AsCurrency       := BUS_CD_M_NFE_ITE_ECF.FieldByName('vlr_mercadoria').AsCurrency;
                      FAT_CD_M_NFE_ITE.FieldByName('fre_valor').AsCurrency        := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('vlr_seguro').AsCurrency       := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('vlr_outras_desp').AsCurrency  := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('vlr_icm_desc').AsCurrency     := 0;

                      FAT_CD_M_NFE_ITE.FieldByName('id_cfo').AsString             := CFOP;

                      FAT_CD_M_NFE_ITE.FieldByName('icm_n_aliquota').AsCurrency   := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('icm_per_reducao').AsCurrency  :=  0;

                      FAT_CD_M_NFE_ITE.FieldByName('icm_n_base').AsCurrency           := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('icm_n_valor').AsCurrency          := 0;

                      FAT_CD_M_NFE_ITE.FieldByName('icm_s_base').AsCurrency     := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('icm_s_valor').AsCurrency := 0;

                      FAT_CD_M_NFE_ITE.FieldByName('ipi_base').AsCurrency     := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('ipi_valor').AsCurrency := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('ipi_aliquota').AsCurrency := 0;

                      FAT_CD_M_NFE_ITE.FieldByName('pis_base').AsCurrency     := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('pis_valor').AsCurrency := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('pis_aliquota').AsCurrency := 0;

                      FAT_CD_M_NFE_ITE.FieldByName('cof_base').AsCurrency     := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('cof_valor').AsCurrency := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('cof_aliquota').AsCurrency := 0;

                      FAT_CD_M_NFE_ITE.FieldByName('iss_base').AsCurrency     := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('iss_valor').AsCurrency := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('iss_aliquota').AsCurrency := 0;

                      FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR_ST').AsCurrency   := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR_ST').AsCurrency   := 0;
                      FAT_CD_M_NFE_ITE.FieldByName('TRI_VALOR').AsCurrency      := 0;



                      if ((not BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').IsNull) and
                           (BUS_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger = 0)) then
                        begin
                            FAT_CD_M_NFE_ITE.FieldByName('id_st_icm').AsString := '400';
                        end
                      else
                        begin
                            FAT_CD_M_NFE_ITE.FieldByName('id_st_icm').AsString := '41';
                        end;

                       FAT_CD_M_NFE_ITE.FieldByName('id_st_ipi').AsString := '99';
                       FAT_CD_M_NFE_ITE.FieldByName('id_st_pis').AsString := '49';
                       FAT_CD_M_NFE_ITE.FieldByName('id_st_cof').AsString := '49';

                       FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency   :=
                         BUS_CD_M_NFE_ITE_ECF.FieldByName('VLR_MERCADORIA').AsCurrency
                             - BUS_CD_M_NFE_ITE_ECF.FieldByName('VLR_DESCONTO').AsCurrency;

                       FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency   :=
                         FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency  +
                           FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;

                       FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency   :=
                         FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency  +
                           FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;


                       FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency        :=
                             FAT_CD_M_NFE.FieldByName('vlr_outras').AsCurrency +
                             FAT_CD_M_NFE_ITE.FieldByName('vlr_outras').AsCurrency;

                       FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency   :=
                           FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency +
                           FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;



                       FAT_CD_M_NFE_ITE.Post;
                       BUS_CD_M_NFE_ITE_ECF.Next;
                    end;
                    FAT_CD_M_NFE.Post;
                end;
             finally
               BUS_CD_M_NFE_ITE_ECF.Filtered := false;
             end;
              BUS_CD_C_CLI.Close;
              BUS_CD_C_TME.Close;


             if FAT_CD_M_NFE <> nil then
               if FAT_CD_M_NFE.ChangeCount > 0 then
                  if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                     begin
                       raise Exception.Create('Erro ao tentar gerar nota fiscal para substituição do cupom.');
                     end;
              INC(id_seqFat);
           finally
             smAtual.FAT_DP_M_NFE.OnUpdateData := smAtual.FAT_DP_M_NFEUpdateData;
           end;
         end
       else
         begin
            BUS_CD_M_NFE_INT := TClientDataSet.Create(nil);
            BUS_CD_M_NFE_INT.SetProvider(smAtual.BUS_DP_M_NFE_INT);
            BUS_CD_M_NFE_INT.Close;
            BUS_CD_M_NFE_INT.Data :=
                BUS_CD_M_NFE_INT.DataRequest(VarArrayOf([90,DataSet.FieldBYname('id_ordem_orig_gar').AsString]));

           if (not BUS_CD_M_NFE_INT.IsEmpty) then
             begin
               id_fiscal_orig := BUS_CD_M_NFE_INT.FieldByName('ID_FISCAL').AsInteger;
             end;

         end;

       // Ponto2: Responsável pela geração da nota fiscal de devolução de cliente
       try

          BUS_CD_C_CLI := TClientDataSet.Create(nil);
          BUS_CD_C_CLI.SetProvider(smAtual.CAD_DP_C_CLI);
          BUS_CD_C_CLI.Close;
          BUS_CD_C_CLI.Data :=
                    BUS_CD_C_CLI.DataRequest(VarArrayOf([0,dataset.FieldByName('id_cliente').AsInteger]));


          FAT_CD_M_NFE := TClientDataSet.Create(nil);
          FAT_CD_M_NFE.SetProvider(smAtual.FAT_DP_M_NFE);
          FAT_CD_M_NFE.Close;
          FAT_CD_M_NFE.Data :=
                FAT_CD_M_NFE.DataRequest(VarArrayOf([0,'']));

          FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
          FAT_CD_M_NFE_ITE.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_ITE'));
          FAT_CD_M_NFE_DEV := TClientDataSet.Create(nil);
          FAT_CD_M_NFE_DEV.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_DEV'));
          FAT_CD_M_NFE_DEV_ITE := TClientDataSet.Create(nil);
          FAT_CD_M_NFE_DEV_ITE.DataSetField := TDataSetField(FAT_CD_M_NFE_DEV.FieldByName('FAT_SQ_M_NFE_DEV_ITE'));

          FAT_CD_M_NFE.Insert;
          FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger := sm.enValorChave('FAT_TB_M_NFE');
          FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString := 'R';

          FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger := 0;
          FAT_CD_M_NFE.FieldByName('SERIE').AsString := '0';
          FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString := '0';
          FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsString :=
                 BUS_CD_C_PAR_CTR.FieldByName('RCR_ID_CONDICAO_PAG').AsString;

          FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger :=
                 dataset.FieldByName('id_empresa').AsInteger;

          FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger :=
                 dataset.FieldByName('id_cliente').AsInteger;

          FAT_CD_M_NFE.FieldByName('uf_emitente').AsString :=
              BUS_CD_C_CLI.FieldByName('int_uf').AsString;

          FAT_CD_M_NFE.FieldByName('uf_empresa').AsString :=
             BUS_CD_C_PAR.FieldByName('int_uf').AsString;


          FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString :=
                 BUS_CD_C_PAR_CTR.FieldByName('orv_id_tme_dev_cli_gar').AsString;

          CAD_CD_C_TME := TClientDataSet.Create(nil);
              CAD_CD_C_TME.SetProvider(smAtual.CAD_DP_C_TME);
              CAD_CD_C_TME.Close;
              CAD_CD_C_TME.Data :=
                    CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('orv_id_tme_dev_cli_gar').AsString]));


          if  BUS_CD_C_PAR.FieldByName('int_uf').AsString = BUS_CD_C_CLI.FieldByName('int_uf').AsString then
             begin
               if  BUS_CD_C_CLI.FieldByName('pessoa').AsInteger = 0 then
                  begin
                    Cfop := CAD_CD_C_TME.FieldByName('cfo_interno_pf').Text;
                  end
               else
                  begin
                    if  BUS_CD_C_CLI.FieldByName('pessoa').AsInteger = 1 then
                       begin
                         Cfop := CAD_CD_C_TME.FieldByName('cfo_interno_pj').Text;
                       end
                  end;
             end
          else if ((BUS_CD_C_PAR.FieldByName('int_uf').AsString <> BUS_CD_C_CLI.FieldByName('int_uf').AsString) and (trim(BUS_CD_C_CLI.FieldByName('int_uf').AsString)<>'EX')) then
             begin
                if BUS_CD_C_CLI.FieldByName('pessoa').AsInteger = 0 then
                  begin
                    Cfop :=  CAD_CD_C_TME.FieldByName('cfo_externo_pf').Text;
                  end
               else
                  begin
                    if BUS_CD_C_CLI.FieldByName('pessoa').AsInteger = 1 then
                       begin
                         Cfop := CAD_CD_C_TME.FieldByName('cfo_externo_pj').Text;
                       end
                  end;
             end
          else if ((BUS_CD_C_PAR.FieldByName('int_uf').AsString <> BUS_CD_C_CLI.FieldByName('int_uf').AsString) and (trim(BUS_CD_C_CLI.FieldByName('int_uf').AsString)='EX')) then
             begin
                if BUS_CD_C_CLI.FieldByName('pessoa').AsInteger = 0 then
                  begin
                    Cfop := CAD_CD_C_TME.FieldByName('cfo_exterior_pf').Text;
                  end
               else
                  begin
                    if BUS_CD_C_CLI.FieldByName('pessoa').AsInteger = 1 then
                       begin
                         Cfop := CAD_CD_C_TME.FieldByName('cfo_exterior_pj').Text;
                       end
                  end;
             end;


          FAT_CD_M_NFE.FieldByName('ID_CFO').AsString :=  Cfop;
          FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime   := Date;
          FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime := Date;
          FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime := Date;
          FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger      := 1;
          FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger   := 0;
          FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger   := 0;
          FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger :=
                dataset.FieldByName('id_responsavel').AsInteger;
          FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString       := 'C';
          FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency     := 0;
          FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsString := '';
          FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger := 4;
          FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
          FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := '';
          FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := ' ';
          FAT_CD_M_NFE.FieldByName('STATUS').AsInteger := 0;
          FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean := false;
          FAT_CD_M_NFE.FieldByName('POSVENDA').AsBoolean := false;
          FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString := '00';
          FAT_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
          FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 0;
          FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := 0;
          FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := 0;


          FAT_CD_M_NFE.FieldByName('MODELO').AsString := '55';
          FAT_CD_M_NFE.FieldByName('ID_ORDEM_GAR').AsInteger := DataSet.FieldByName('id_ordem').AsInteger;

          if ((BUS_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) or
             (BUS_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True)) and
              BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
           begin
            FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                   BUS_CD_C_PAR_CTR.FieldByName('ID_ALM_PADRAO').AsInteger;
           end;
          FAT_CD_M_NFE.FieldByName('ID_SEQ_FAT_GAR').AsInteger := id_seqFat;


          FAT_CD_M_NFE_DEV.Insert;
          FAT_CD_M_NFE_DEV.FieldBYName('ID_FISCAL').AsInteger :=
                                       FAT_CD_M_NFE.FieldBYName('ID_FISCAL').AsInteger;
          FAT_CD_M_NFE_DEV.FieldBYName('ID_FISCAL_DEV').AsInteger := id_fiscal_orig;
        //  FAT_CD_M_NFE_DEV.Post;


          BUS_CD_M_NFE_ITE_INT := TClientDataSet.Create(nil);
          BUS_CD_M_NFE_ITE_INT.SetProvider(smAtual.BUS_DP_M_NFE_ITE_INT);
          BUS_CD_M_NFE_ITE_INT.Close;
          BUS_CD_M_NFE_ITE_INT.Data :=
            BUS_CD_M_NFE_ITE_INT.DataRequest(VarArrayOf([id_fiscal_orig]));


          BUS_CD_M_ORV_ITE_INT.First;
          while not (BUS_CD_M_ORV_ITE_INT.EOF) do
            begin
              if BUS_CD_M_NFE_ITE_INT.Locate('id_sequencia',BUS_CD_M_ORV_ITE_INT.FieldByName('ID_SEQUENCIA').asInteger,[]) then
               begin
                 FAT_CD_M_NFE_DEV_ITE.Insert;
                 FAT_CD_M_NFE_DEV_ITE.FieldBYName('ID_FISCAL').AsInteger :=
                                         FAT_CD_M_NFE.FieldBYName('ID_FISCAL').AsInteger;

                 FAT_CD_M_NFE_DEV_ITE.FieldBYName('ID_FISCAL_DEV').AsInteger := id_fiscal_orig;

                 FAT_CD_M_NFE_DEV_ITE.FieldBYName('ID_SEQUENCIA').AsInteger :=
                                         BUS_CD_M_NFE_ITE_INT.FieldBYName('ID_SEQUENCIA').AsInteger;

                 FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_ITEM').AsCurrency :=
                     BUS_CD_M_NFE_ITE_INT.FieldByName('ID_ITEM').AsCurrency;

                 FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_COR').AsCurrency :=
                     BUS_CD_M_NFE_ITE_INT.FieldByName('ID_COR').AsCurrency;

                 FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_TAMANHO').AsCurrency :=
                     BUS_CD_M_NFE_ITE_INT.FieldByName('ID_TAMANHO').AsCurrency;

                 FAT_CD_M_NFE_DEV_ITE.FieldByName('ID_ST_ICM').AsString :=
                     BUS_CD_M_NFE_ITE_INT.FieldByName('ID_ST_ICM').AsString;

                 FAT_CD_M_NFE_DEV_ITE.FieldByName('QTDE').AsCurrency :=
                     BUS_CD_M_ORV_ITE_INT.FieldByName('QTDE').AsCurrency;

                 FAT_CD_M_NFE_DEV_ITE.Post;
               end;
               BUS_CD_M_ORV_ITE_INT.Next;
            end;


         BUS_CD_M_ORV_ITE_INT.First;
         while not BUS_CD_M_ORV_ITE_INT.Eof do
            begin
               if BUS_CD_M_NFE_ITE_INT.Locate('id_sequencia',BUS_CD_M_ORV_ITE_INT.FieldByName('ID_SEQUENCIA').asInteger,[]) then
                  begin
                     FAT_CD_M_NFE_ITE.Insert;
                     FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').AsCurrency :=
                            FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsInteger := id_fiscal_orig;

                     FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').asInteger :=
                            BUS_CD_M_NFE_ITE_INT.FieldByName('ID_SEQUENCIA').asInteger;

                     FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsCurrency :=
                            BUS_CD_M_NFE_ITE_INT.FieldByName('ID_ITEM').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsCurrency :=
                            FAT_CD_M_NFE.FieldByName('ID_CFO').AsCurrency;


                     BUS_CD_C_ITE := TClientDataSet.Create(nil);
                     BUS_CD_C_ITE.SetProvider(smAtual.CAD_DP_C_ITE);
                     BUS_CD_C_ITE.Close;
                     BUS_CD_C_ITE.Data :=
                         BUS_CD_C_ITE.DataRequest(VarArrayOf([0,BUS_CD_M_NFE_ITE_INT.FieldByName('id_item').AsString]));

                     BUS_CD_C_GRU := TClientDataSet.Create(nil);
                     BUS_CD_C_GRU.SetProvider(smAtual.CAD_DP_C_GRU);
                     BUS_CD_C_GRU.Close;
                     BUS_CD_C_GRU.Data :=
                         BUS_CD_C_GRU.DataRequest(VarArrayOf([0,BUS_CD_C_ITE.FieldByName('id_grupo').AsString]));


                     if (not BUS_CD_C_GRU.IsEmpty) then
                      begin
                       FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString :=
                          BUS_CD_C_GRU.FieldByName('ID_ST_PIS_ENTRADA').AsString;

                       FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString :=
                           BUS_CD_C_GRU.FieldByName('ID_ST_COF_ENTRADA').AsString;
                      end;

                     FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString :=
                            BUS_CD_M_NFE_ITE_INT.FieldByName('ID_ST_IPI').AsString;

                     FAT_CD_M_NFE_ITE.FieldByname('ID_ST_ICM').AsString :=
                            BUS_CD_M_NFE_ITE_INT.FieldByName('ID_ST_ICM').AsString;

                     FAT_CD_M_NFE_ITE.FieldByName('QTDE_DEVOLVIDA').AsCurrency := 0;
                     FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency :=
                         BUS_CD_M_ORV_ITE_INT.FieldByName('QTDE').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                            BUS_CD_M_NFE_ITE_INT.FieldByName('VLR_UNITARIO').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency :=
                           FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency*
                               FAT_CD_M_NFE_ITE.FieldByname('VLR_UNITARIO').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                              BUS_CD_M_NFE_ITE_INT.FieldByName('PER_DESCONTO').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                            (BUS_CD_M_NFE_ITE_INT.FieldByName('VLR_DESCONTO').AsCurrency/
                             BUS_CD_M_NFE_ITE_INT.FieldByName('QTDE').AsCurrency)*
                                 FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                            FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency-
                                FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsFloat :=
                            BUS_CD_M_NFE_ITE_INT.FieldByName('ICM_N_ALIQUOTA').AsFloat;

                     FAT_CD_M_NFE_ITE.FieldByName('ICM_PER_REDUCAO').AsFloat :=
                            BUS_CD_M_NFE_ITE_INT.FieldByName('ICM_PER_REDUCAO').AsFloat;

                     FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency :=
                          RoundTo( (BUS_CD_M_NFE_ITE_INT.FieldByName('ICM_N_BASE').AsCurrency /
                             BUS_CD_M_NFE_ITE_INT.FieldByName('QTDE').AsCurrency)      *
                             FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                     FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency :=
                        RoundTo(   (FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency *
                                    FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency)/100.0,-2);


                     FAT_CD_M_NFE_ITE.FieldByName('ICM_S_BASE').AsCurrency :=
                      RoundTo((BUS_CD_M_NFE_ITE_INT.FieldByName('ICM_S_BASE').AsCurrency /
                               BUS_CD_M_NFE_ITE_INT.FieldByName('QTDE').AsCurrency)*
                               FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                     FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency :=
                      RoundTo((BUS_CD_M_NFE_ITE_INT.FieldByName('ICM_S_VALOR').AsCurrency /
                               BUS_CD_M_NFE_ITE_INT.FieldByName('QTDE').AsCurrency)*
                               FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);


                     FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency :=
                        RoundTo((BUS_CD_M_NFE_ITE_INT.FieldByName('IPI_BASE').AsCurrency /
                                 BUS_CD_M_NFE_ITE_INT.FieldByName('QTDE').AsCurrency)*
                                     FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);

                     FAT_CD_M_NFE_ITE.FieldByName('IPI_ALIQUOTA').AsCurrency :=
                                 BUS_CD_M_NFE_ITE_INT.FieldByName('IPI_ALIQUOTA').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency :=
                        RoundTo((BUS_CD_M_NFE_ITE_INT.FieldByName('IPI_VALOR').AsCurrency /
                                 BUS_CD_M_NFE_ITE_INT.FieldByName('QTDE').AsCurrency) *
                                     FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency,-2);


                     FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsCurrency :=
                        BUS_CD_M_NFE_ITE_INT.FieldByName('PIS_ALIQUOTA').AsCurrency;

                     if (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString <> '') and
                        (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsInteger >= 50) and
                        (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsInteger <= 66)  then
                        begin
                           FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency :=
                                   FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;

                           FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR').AsCurrency :=
                                   roundTo(((FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency*
                                   (FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsCurrency)/100.0)),-2);
                        end;

                     if (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString <> '') and
                        (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsInteger >= 67 ) and
                        (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsInteger <= 99) then
                         begin
                           FAT_CD_M_NFE_ITE.FieldByName('PIS_ALIQUOTA').AsCurrency := 0;
                         end;

                     FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsCurrency :=
                              BUS_CD_M_NFE_ITE_INT.FieldByName('COF_ALIQUOTA').AsCurrency;

                     if (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString <> '') and
                        (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsInteger >= 50) and
                        (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsInteger <= 66)  then
                         begin
                            FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency :=
                                    FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;

                            FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR').AsCurrency :=
                                    RoundTo((FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency*
                                     FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsCurrency)/100.0,-2);
                        end;

                     if (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString <> '') and
                        (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsInteger >= 67) and
                        (FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsInteger <= 99)  then
                         begin
                           FAT_CD_M_NFE_ITE.FieldByName('COF_ALIQUOTA').AsCurrency := 0;
                         end;

                     if pos(FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').Text,'30-40-41-50') <> 0 then
                        begin
                          FAT_CD_M_NFE_ITE.FieldByName('VLR_ISENTA').AsCurrency :=
                                  FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                                  FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency;
                            end;


                     if pos(FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').Text,'10-60-90') <> 0 then
                        begin
                          FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS').AsCurrency :=
                                  FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency -
                                  FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency;
                        end;

                     FAT_CD_M_NFE_ITE.FieldByName('NUM_LOTE').AsString :=
                             BUS_CD_M_NFE_ITE_INT.FieldByName('NUM_LOTE').AsString;


                     if trim(BUS_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                        begin
                          FAT_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsFloat :=
                               BUS_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                     FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                        end;
                     if trim(BUS_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                        begin
                           FAT_CD_M_NFE_ITE.FieldByName('PESO_BRUTO').AsFloat :=
                               BUS_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                      FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                        end;


                    // FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString :=
                        //    BUS_CD_M_NFE_ITE_INT.FieldByName('INT_DESC_ITEM').AsString;

                    // FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString :=
                        //    BUS_CD_M_NFE_ITE_INT.FieldByName('INT_UND_VENDA').AsString;

                     FAT_CD_M_NFE_ITE.FieldByName('ORIGEM_MERCADORIA').AsString :=
                             BUS_CD_M_NFE_ITE_INT.FieldByName('ORIGEM_MERCADORIA').AsString;


                     FAT_CD_M_NFE_ITE.FieldByName('ICM_S_PER_MVA').AsCurrency :=
                             BUS_CD_M_NFE_ITE_INT.FieldByName('ICM_S_PER_MVA').AsCurrency;


                     FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VLR_MVA').AsCurrency :=
                             BUS_CD_M_NFE_ITE_INT.FieldByName('ICM_S_VLR_MVA').AsCurrency;

                     FAT_CD_M_NFE_ITE.FieldByName('ID_COR').AsInteger :=
                             BUS_CD_M_NFE_ITE_INT.FieldByName('ID_COR').AsInteger;

                    // FAT_CD_M_NFE_ITE.FieldByName('INT_NOMECOR').AsString :=
                        //     BUS_CD_M_NFE_ITE_INT.FieldByName('INT_NOMECOR').AsString;

                     FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsInteger :=
                             BUS_CD_M_NFE_ITE_INT.FieldByName('ID_TAMANHO').AsInteger;

                    // FAT_CD_M_NFE_ITE.FieldByName('INT_NOMETAM').AsString :=
                         //    BUS_CD_M_NFE_ITE_INT.FieldByName('INT_NOMETAM').AsString;

                     FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
                             BUS_CD_M_NFE_ITE_INT.FieldByName('ID_BUSCA_ITEM').AsString;

                     FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
                             BUS_CD_M_NFE_ITE_INT.FieldByName('INT_TIPO_ITEM').AsString;

                     FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency := 0;

                     FAT_CD_M_NFE_ITE.FieldByName('ID_INF_FISCO').AsString :=
                              BUS_CD_M_NFE_ITE_INT.FieldByName('ID_INF_FISCO').AsString;

                     FAT_CD_M_NFE_ITE.Post;

                     FatCalculaTotalPai(FAT_CD_M_NFE,FAT_CD_M_NFE_ITE);

                     FatCalculaFrePercentual(FAT_CD_M_NFE,FAT_CD_M_NFE_ITE);

                     FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                     FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency   -
                     FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency     +
                     FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency      +
                     FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency        +
                     FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency       +
                     FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency  +
                     FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency        +
                     FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency        +
                     FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency;
                end;
               BUS_CD_M_ORV_ITE_INT.Next;
            end;

            FAT_CD_M_NFE.Post;


            if FAT_CD_M_NFE <> nil then
               if FAT_CD_M_NFE.ChangeCount > 0 then
                  if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                     begin
                       raise Exception.Create('Erro ao tentar gerar nota fiscal devolução de cliente.');
                     end;
            INC(id_seqFat);
       finally
           //  smAtual.FAT_DP_M_NFE.OnUpdateData := smAtual.FAT_DP_M_NFEUpdateData;
       end;





       // Ponto3: Responsável pela geração da nota fiscal de devolução fornceddor (NF de remessa)
       try
         EmpRegimeSimples := false;

         BUS_CD_C_RAM := TClientDataSet.Create(nil);
         BUS_CD_C_RAM.SetProvider(smAtual.CAD_DP_C_RAM);
         BUS_CD_C_RAM.Close;
         BUS_CD_C_RAM.Data :=
                BUS_CD_C_RAM.DataRequest(VarArrayOf([0,BUS_CD_C_PAR.FieldByName('id_ramo').AsString]));
         if not BUS_CD_C_RAM.IsEmpty then
            if BUS_CD_C_RAM.FieldByName('regime_tributario').AsInteger = 0 then
               EmpRegimeSimples := true;
         BUS_CD_C_RAM.Close;

        // smAtual.FAT_DP_M_NFE.OnUpdateData := nil;
         FAT_CD_M_NFE := TClientDataSet.Create(nil);
         FAT_CD_M_NFE.SetProvider(smAtual.FAT_DP_M_NFE);
         FAT_CD_M_NFE.Close;
         FAT_CD_M_NFE.Data :=
                FAT_CD_M_NFE.DataRequest(VarArrayOf([0,'']));

         FAT_CD_M_NFE_ITE := TClientDataSet.Create(nil);
         FAT_CD_M_NFE_ITE.DataSetField := TDataSetField(FAT_CD_M_NFE.FieldByName('FAT_SQ_M_NFE_ITE'));


         BUS_CD_M_NFE_NFE := TClientDataSet.Create(nil);
         BUS_CD_M_NFE_NFE.SetProvider(smAtual.BUS_DP_M_NFE_INT);
         BUS_CD_M_NFE_NFE.Close;
         BUS_CD_M_NFE_NFE.Data :=
                         BUS_CD_M_NFE_NFE.DataRequest(VarArrayOf([0,DataSet.FieldByName('id_fiscal_ref_entrada').AsString]));


         BUS_CD_M_NFE_ITE_NFE := TClientDataSet.Create(nil);
         BUS_CD_M_NFE_ITE_NFE.SetProvider(smAtual.BUS_DP_M_NFE_ITE_INT);
         BUS_CD_M_NFE_ITE_NFE.Close;
         BUS_CD_M_NFE_ITE_NFE.Data :=
                         BUS_CD_M_NFE_ITE_NFE.DataRequest(VarArrayOf([0,DataSet.FieldByName('id_fiscal_ref_entrada').AsString]));


         BUS_CD_C_FOR := TClientDataSet.Create(nil);
         BUS_CD_C_FOR.SetProvider(smAtual.CAD_DP_C_FOR);
         BUS_CD_C_FOR.Close;
         BUS_CD_C_FOR.Data :=
                BUS_CD_C_FOR.DataRequest(VarArrayOf([0,BUS_CD_M_NFE_NFE.FieldByName('ID_EMITENTE').AsString]));


         //BUS_CD_M_ORV_ITE_INT.IndexFieldNames := 'INT_CODFOR';
         BUS_CD_M_ORV_ITE_INT.First;



         while not BUS_CD_M_ORV_ITE_INT.Eof do
           begin
            { BUS_CD_C_FOR := TClientDataSet.Create(nil);
             BUS_CD_C_FOR.SetProvider(smAtual.CAD_DP_C_FOR);
             BUS_CD_C_FOR.Close;
             BUS_CD_C_FOR.Data :=
                BUS_CD_C_FOR.DataRequest(VarArrayOf([0,BUS_CD_M_NFE_NFE.FieldByName('ID_EMITENTE').AsString]));}


             FAT_CD_M_NFE.Insert;
             FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger := sm.enValorChave('FAT_TB_M_NFE');
             FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString := 'D';



             FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsInteger :=
                      dataset.FieldByName('id_empresa').AsInteger;

              FAT_CD_M_NFE.FieldByName('uf_empresa').AsString :=
                 BUS_CD_C_PAR.FieldByName('int_uf').AsString;

             FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime   := Date;
             FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime := Date;
             FAT_CD_M_NFE.FieldByName('DTA_MOVIMENTO').AsDateTime  := Date;


             FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString :=
                     BUS_CD_C_PAR_CTR.FieldByName('orv_id_tme_dev_gar').AsString;


             // Buscar dados do tipo de movimento de estoque
              CAD_CD_C_TME := TClientDataSet.Create(nil);
              CAD_CD_C_TME.SetProvider(smAtual.CAD_DP_C_TME);
              CAD_CD_C_TME.Close;
              CAD_CD_C_TME.Data :=
                    CAD_CD_C_TME.DataRequest(VarArrayOf([0,BUS_CD_C_PAR_CTR.FieldByName('orv_id_tme_dev_gar').AsString]));

              // Buscar o CFOP

               if BUS_CD_C_FOR.FieldByName('int_uf').AsString =
                  BUS_CD_C_PAR.FieldByName('int_uf').AsString then
                  begin
                      Cfop := CAD_CD_C_TME.FieldByName('CFO_INTERNO_PF').AsString
                  end
               else if BUS_CD_C_FOR.FieldByName('int_uf').AsString ='EX' then
                  begin
                      Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERIOR_PF').AsString
                  end
               else if BUS_CD_C_FOR.FieldByName('int_uf').AsString <>
                       BUS_CD_C_PAR.FieldByName('int_uf').AsString  then
                  begin
                     Cfop := CAD_CD_C_TME.FieldByName('CFO_EXTERNO_PF').AsString
                  end;

               BUS_CD_C_CFO := TClientDataSet.Create(nil);
               BUS_CD_C_CFO.SetProvider(smAtual.CAD_DP_C_CFO);
               BUS_CD_C_CFO.Close;
               BUS_CD_C_CFO.Data :=
                    BUS_CD_C_CFO.DataRequest(VarArrayOf([0,Cfop]));


              FAT_CD_M_NFE.FieldByName('ID_CFO').AsString := Cfop;

              FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsString :=
                     BUS_CD_C_PAR_CTR.FieldByName('DEV_FOR_ID_CONDICAO_PAG').AsString;



             FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger :=
                     DataSet.FieldByName('id_responsavel').AsInteger;

             FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger :=
                    BUS_CD_M_NFE_NFE.FieldByName('ID_EMITENTE').AsInteger;
                   //  BUS_CD_M_ORV_ITE_INT.FieldByName('int_codfor').AsInteger;

             FAT_CD_M_NFE.FieldByName('uf_emitente').AsString :=
                    BUS_CD_C_FOR.FieldByName('int_uf').AsString;



              FAT_CD_M_NFE.FieldByName('ID_PEDIDO_VENDA').AsInteger         := 0;
              FAT_CD_M_NFE.FieldByName('id_pedido_compra').AsInteger        := 0;
              FAT_CD_M_NFE.FieldByName('ID_ORDEM').AsInteger                := 0;
              FAT_CD_M_NFE.FieldByName('ID_ORDEM_GAR').AsInteger            := DataSet.FieldByName('ID_ORDEM').AsInteger;
              FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := 0;
              FAT_CD_M_NFE.FieldByName('NRO_TERMO').AsInteger               := 0;
              FAT_CD_M_NFE.FieldByName('id_transportadora').AsInteger       := 0;
              FAT_CD_M_NFE.FieldByName('UF_EMPRESA').AsString               := BUS_CD_C_PAR.FieldByName('int_uf').AsString;
              FAT_CD_M_NFE.FieldByName('PREVENDA').AsBoolean                := false;
              FAT_CD_M_NFE.FieldByName('ECF_PREVENDA').AsInteger            := 0;
              FAT_CD_M_NFE.FieldByName('ID_FISCAL_REFERENCIADO').AsInteger  := 0;
              FAT_CD_M_NFE.FieldByName('CANC_MOTIVO').AsString              := '';
              FAT_CD_M_NFE.FieldByName('CANC_USUARIO').AsString             := '';


              FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsFloat              := 0;
              FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsFloat                := 0;
              FAT_CD_M_NFE.FieldByName('NFE_OBS').AsString                  := '';
              FAT_CD_M_NFE.FieldByName('NFE_PROTOCOLO').AsString            := '';
              FAT_CD_M_NFE.FieldByName('NFE_RECIBO').AsString               := '';
              FAT_CD_M_NFE.FieldByName('NFE_CANC_PROTOCOLO').AsString       := '';
              FAT_CD_M_NFE.FieldByName('NFE_CANC_STATUS').AsString          := '';



             FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger      := 1;
             FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger   := 0;
             FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString       := 'C';
             FAT_CD_M_NFE.FieldByName('IMP_VALOR').AsCurrency     := 0;
             FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsString := '';
             FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger := 1;

             if ((BUS_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) or
                 (BUS_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True)) and
                  BUS_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
               begin
                FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                       BUS_CD_C_PAR_CTR.FieldByName('ID_ALM_PADRAO').AsInteger;
               end;


              FAT_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString              := '00';
              FAT_CD_M_NFE.FieldByName('NFE_TIPO_EMISSAO').AsString         := '1';
              FAT_CD_M_NFE.FieldByName('NFE_TIPO_AMBIENTE').AsString        := 'A';
              FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsInteger            := 1;
              FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsInteger            := 0;
              FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger               := 0;
              FAT_CD_M_NFE.FieldByName('POSVENDA').AsBoolean                := false;
              FAT_CD_M_NFE.FieldByName('FATURADA').AsBoolean                := false;
              FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  := 0;
              FAT_CD_M_NFE.FieldByName('SITUACAO_INSPECAO').AsInteger       := 0;
              FAT_CD_M_NFE.FieldByName('NFE_ECF').AsInteger                 := 0;

              FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := DataSet.FieldByName('int_cpfcnpj').AsString;
              FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := 0;
              FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := BUS_CD_C_PAR_CTR.FieldByName('serie_nf').AsString;
              FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := ' ';
              FAT_CD_M_NFE.FieldByName('MODELO').AsString                   := ' ';
              FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := ' ';
              FAT_CD_M_NFE.FieldByName('ID_ABERTURA').AsInteger             := 0;


              FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency          := 0;
              FAT_CD_M_NFE.FieldByName('vlr_outras_desp').AsCurrency        := 0;
              FAT_CD_M_NFE.FieldByName('ind_nf').AsInteger                  := 1;


              FAT_CD_M_NFE.FieldByName('vlr_mercadoria').AsCurrency :=  0;

              FAT_CD_M_NFE.FieldByName('vlr_desconto').AsCurrency    :=  0;

              FAT_CD_M_NFE.FieldByName('vlr_liquido').AsCurrency     := 0;

              FAT_CD_M_NFE.FieldByName('ID_ORDEM_GAR').AsInteger := DataSet.FieldByName('id_ordem').AsInteger;
              FAT_CD_M_NFE.FieldByName('ID_SEQ_FAT_GAR').AsInteger := id_seqFat;

            // id_fornecedor_atual := BUS_CD_M_ORV_ITE_INT.FieldByName('int_codfor').AsInteger;
             id_fornecedor_atual := BUS_CD_M_NFE_NFE.FieldByName('id_emitente').AsInteger;
             id_fornecedor_prox := id_fornecedor_atual;
             while ((not BUS_CD_M_ORV_ITE_INT.Eof) and (id_fornecedor_atual=id_fornecedor_prox)) do
                begin
                   if BUS_CD_M_NFE_ITE_INT.Locate('id_sequencia',BUS_CD_M_ORV_ITE_INT.FieldByName('ID_SEQUENCIA').asInteger,[]) then
                      begin
                         FAT_CD_M_NFE_ITE.Insert;
                         FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL').AsInteger :=
                                FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger;

                         FAT_CD_M_NFE_ITE.FieldByName('ID_FISCAL_DEV').AsInteger :=0;

                         FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').asInteger :=
                                BUS_CD_M_NFE_ITE_INT.FieldByName('ID_SEQUENCIA').asInteger;

                         FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsInteger :=
                                BUS_CD_M_NFE_ITE_INT.FieldByName('ID_ITEM').AsInteger;

                         FAT_CD_M_NFE_ITE.FieldByName('ID_CFO').AsString :=
                                FAT_CD_M_NFE.FieldByName('ID_CFO').AsString;


                         BUS_CD_C_ITE := TClientDataSet.Create(nil);
                         BUS_CD_C_ITE.SetProvider(smAtual.CAD_DP_C_ITE);
                         BUS_CD_C_ITE.Close;
                         BUS_CD_C_ITE.Data :=
                             BUS_CD_C_ITE.DataRequest(VarArrayOf([0,FAT_CD_M_NFE_ITE.FieldByName('id_item').AsString]));


                         BUS_CD_C_GRU := TClientDataSet.Create(nil);
                         BUS_CD_C_GRU.SetProvider(smAtual.CAD_DP_C_GRU);
                         BUS_CD_C_GRU.Close;
                         BUS_CD_C_GRU.Data :=
                             BUS_CD_C_GRU.DataRequest(VarArrayOf([0,BUS_CD_C_ITE.FieldByName('id_grupo').AsString]));



                         FAT_CD_M_NFE_ITE.FieldByName('QTDE_DEVOLVIDA').AsCurrency := 0;
                         FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency :=
                             BUS_CD_M_ORV_ITE_INT.FieldByName('QTDE').AsCurrency;

                         FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;
                         if BUS_CD_M_NFE_ITE_NFE.Locate('id_item',BUS_CD_M_ORV_ITE_INT.FieldByName('ID_ITEM').asInteger,[]) then
                           begin
                             FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                                    BUS_CD_M_NFE_ITE_NFE.FieldByName('VLR_UNITARIO').AsCurrency;


                             FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                                (BUS_CD_M_NFE_ITE_NFE.FieldByName('VLR_DESCONTO').AsCurrency/
                                 BUS_CD_M_NFE_ITE_NFE.FieldByName('QTDE').AsCurrency)*
                                     FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                           end;

                         FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency :=
                               FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency*
                                   FAT_CD_M_NFE_ITE.FieldByname('VLR_UNITARIO').AsCurrency;

                         FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                                  (FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency /
                                   FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency)*100;

                        { FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                                  BUS_CD_M_NFE_ITE_INT.FieldByName('PER_DESCONTO').AsCurrency;

                         FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                                (BUS_CD_M_NFE_ITE_INT.FieldByName('VLR_DESCONTO').AsCurrency/
                                 BUS_CD_M_NFE_ITE_INT.FieldByName('QTDE').AsCurrency)*
                                     FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency; }

                         FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                                FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency-
                                    FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;


                         FAT_CD_M_NFE_ITE.FieldByName('ID_COR').AsInteger :=
                                 BUS_CD_M_NFE_ITE_INT.FieldByName('ID_COR').AsInteger;

                        // FAT_CD_M_NFE_ITE.FieldByName('INT_NOMECOR').AsString :=
                             //    BUS_CD_M_NFE_ITE_INT.FieldByName('INT_NOMECOR').AsString;

                         FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsInteger :=
                                 BUS_CD_M_NFE_ITE_INT.FieldByName('ID_TAMANHO').AsInteger;

                        // FAT_CD_M_NFE_ITE.FieldByName('INT_NOMETAM').AsString :=
                              //   BUS_CD_M_NFE_ITE_INT.FieldByName('INT_NOMETAM').AsString;

                         FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
                                 BUS_CD_M_NFE_ITE_INT.FieldByName('ID_BUSCA_ITEM').AsString;

                         FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
                                 BUS_CD_M_NFE_ITE_INT.FieldByName('INT_TIPO_ITEM').AsString;

                         FAT_CD_M_NFE_ITE.FieldByName('IMP_VALOR').AsCurrency := 0;

                         FAT_CD_M_NFE_ITE.FieldByName('ID_INF_FISCO').AsString :=
                                  BUS_CD_M_NFE_ITE_INT.FieldByName('ID_INF_FISCO').AsString;

                         FAT_CD_M_NFE_ITE.FieldByName('ORIGEM_MERCADORIA').AsString :=
                             BUS_CD_M_NFE_ITE_INT.FieldByName('ORIGEM_MERCADORIA').AsString;


                         if trim(BUS_CD_C_ITE.FieldByName('PES_LIQUIDO').Text) <> '' then
                             begin
                                FAT_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsFloat :=
                                    BUS_CD_C_ITE.FieldByName('PES_LIQUIDO').AsFloat *
                                         FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                             end;

                          if trim(BUS_CD_C_ITE.FieldByName('PES_BRUTO').Text) <> '' then
                             begin
                               FAT_CD_M_NFE_ITE.FieldByName('PESO_BRUTO').AsFloat :=
                                    BUS_CD_C_ITE.FieldByName('PES_BRUTO').AsFloat *
                                        FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat;
                             end;

                         FAT_CD_M_NFE_ITE.FieldByName('dre_perc_out_ded_ven').AsFloat   :=
                                BUS_CD_C_ITE.FieldByName('INT_DRE_PERC_OUT_DED_VEN').AsFloat;

                         FAT_CD_M_NFE_ITE.FieldByName('dre_perc_ircs').AsFloat  :=
                                BUS_CD_C_ITE.FieldByName('INT_DRE_PERC_IRCS').AsFloat;




                         FAT_CD_M_NFE_ITE.FieldByName('id_inf_fisco').AsInteger         := 0;
                         FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString             := '49';
                         FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString             := '49';
                         FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString             := '99';
                         FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString             := ' ';



                         FreeAndNil(BUS_CD_C_TRI_REG);
                         BUS_CD_C_TRI_REG := TClientDataSet.Create(nil);
                         BUS_CD_C_TRI_REG.data := FatBusTriReg(smAtual.BUS_DP_C_TRI_REG, BUS_CD_C_ITE.FieldByName('INT_TRIBUTO').AsString,
                                                          FAT_CD_M_NFE.FieldByName('id_tipo_mov_estoque').AsString,BUS_CD_C_FOR.FieldByName('INT_UF').AsString,DataSet.FieldByName('id_empresa').AsString);


                         if ((trim(BUS_CD_C_FOR.FieldByName('DOC_IE').AsString) <> '') and (trim(BUS_CD_C_FOR.FieldByName('DOC_IE').AsString) <> 'ISENTO')) then
                           begin
                             if EmpRegimeSimples then
                                FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString  :=
                                          trim(BUS_CD_C_TRI_REG.FieldByName('cnt_csosn').Text)
                             else
                                FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString  :=
                                          trim(BUS_CD_C_TRI_REG.FieldByName('cnt_id_st_icm').Text);
                           end
                         else
                           begin
                             if EmpRegimeSimples then
                                FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=
                                          trim(BUS_CD_C_TRI_REG.FieldByName('nct_csosn').Text)
                             else
                                FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=
                                          trim(BUS_CD_C_TRI_REG.FieldByName('nct_id_st_icm').Text);
                           end;



                         if ((trim(BUS_CD_C_FOR.FieldByName('DOC_IE').AsString) <> '') and (trim(BUS_CD_C_FOR.FieldByName('DOC_IE').AsString) <> 'ISENTO')) then
                           begin
                              FAT_CD_M_NFE_ITE.FieldByName('icm_per_reducao').AsCurrency     :=
                                             BUS_CD_C_TRI_REG.FieldByName('CNT_REDUCAO').AsCurrency;
                           end
                         else
                           begin
                              FAT_CD_M_NFE_ITE.FieldByName('icm_per_reducao').AsCurrency  :=
                                             BUS_CD_C_TRI_REG.FieldByName('NCT_REDUCAO').AsCurrency;
                           end;

                         BUS_CD_C_TRI_REG.close;
                         BUS_CD_C_ITE.close;



                         VlrCustoMedio := 0;
                         FatBusCustoMedItemEst(FAT_CD_M_NFE.FieldByName('ID_EMPRESA').AsString,
                                                  FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsString,
                                                  FAT_CD_M_NFE_ITE.FieldByName('ID_COR').AsString,
                                                  FAT_CD_M_NFE_ITE.FieldByName('ID_TAMANHO').AsString,
                                                  BUS_CD_C_PAR_CTR,smAtual.EST_DP_M_FES,
                                                  VlrCustoMedio);
                         FAT_CD_M_NFE_ITE.FieldByName('vlr_custo').AsCurrency           := VlrCustoMedio;



                         FAT_CD_M_NFE_ITE.Post;


                         FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency :=
                           FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency +
                           FAT_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsCurrency;

                         FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency :=
                           FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency +
                           FAT_CD_M_NFE_ITE.FieldByName('PESO_BRUTO').AsCurrency;


                         FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency :=
                            FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency+
                            FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;

                         FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency :=
                            FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency+
                            FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                         FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                            FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency+
                            FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;


                    end;
                   BUS_CD_M_ORV_ITE_INT.Next;
                   if not BUS_CD_M_ORV_ITE_INT.eof then
                      id_fornecedor_prox := BUS_CD_M_NFE_NFE.FieldByname('ID_EMITENTE').AsInteger;
                    //  id_fornecedor_prox := BUS_CD_M_ORV_ITE_INT.FieldByname('INT_CODFOR').AsInteger;
                end;


              if FAT_CD_M_NFE <> nil then
               if FAT_CD_M_NFE.ChangeCount > 0 then
                  if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                     begin
                       raise Exception.Create('Erro ao tentar gerar nota fiscal de remmessa.');
                     end;
           end;


       finally
         //    smAtual.FAT_DP_M_NFE.OnUpdateData := smAtual.FAT_DP_M_NFEUpdateData;
       end;
      end
   else if (DataSet.UpdateStatus in [usDeleted]) or ( (StatusOS_Ant = 2) and (StatusOS_Atual = 1) ) or
           (StatusOS_Atual = 4)   then
      begin
          FAT_CD_M_NFE := TClientDataSet.Create(nil);
          FAT_CD_M_NFE.SetProvider(smAtual.FAT_DP_M_NFE);
          FAT_CD_M_NFE.Close;
          FAT_CD_M_NFE.Data :=
                   FAT_CD_M_NFE.DataRequest(VarArrayOf([116,DataSet.FieldByName('ID_EMPRESA').AsString,DataSet.FieldByName('ID_ORDEM').AsString]));

          try
            FAT_CD_M_NFE.Filtered := true;
            FAT_CD_M_NFE.Filter := 'NUMERO=0';

            while (not FAT_CD_M_NFE.IsEmpty) do
              begin
                FAT_CD_M_NFE.delete;

                if FAT_CD_M_NFE <> nil then
                 if FAT_CD_M_NFE.ChangeCount > 0 then
                  if not (FAT_CD_M_NFE.ApplyUpdates(0) = 0) then
                     begin
                       raise Exception.Create('Erro ao tentar deletar nota fiscal de garantia de cód. fiscal '+FAT_CD_M_NFE.FieldByname('ID_FISCAL').AsString);
                     end;
              end;

          finally
            FAT_CD_M_NFE.Filtered := false;
          end;
      end;


   finally
     BUS_CD_C_CLI.Free;
     BUS_CD_M_NFE_ECF.Free;
     BUS_CD_M_NFE_ITE_ECF.Free;
     FAT_CD_M_NFE.Free;
     FAT_CD_M_NFE_ITE.Free;
     FAT_CD_M_NFE_DEV.Free;
     FAT_CD_M_NFE_DEV_ITE.Free;
     BUS_CD_C_PAR_CTR.Free;
     BUS_CD_C_PAR.Free;
     BUS_CD_C_TME.Free;
     BUS_CD_C_RAM.Free;
     BUS_CD_M_NFE_ITE_NFE.Free;
     BUS_CD_M_NFE_NFE.Free;
   end;
end;

procedure FatCalculaTotalPai(FAT_CD_M_NFE,FAT_CD_M_NFE_ITE: TClientDataSet);
begin
  { TODO -oMaxsuel -cCriação :
    Criado em 09/01/2017
    Método responsável por preencher os campos do pai. }

  FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency := 0;
  //FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency := 0;

  FAT_CD_M_NFE.FieldByName('ICM_N_VALOR').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('ICM_N_BASE').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('ICM_S_BASE').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('IPI_BASE').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency := 0;

  FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('ISS_VALOR').AsCurrency := 0;
 // FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency := 0;

  FAT_CD_M_NFE.FieldByName('PIS_VALOR').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('PIS_VALOR_ST').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('COF_VALOR').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('COF_VALOR_ST').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('VLR_ISENTA').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('VLR_OUTRAS').AsCurrency := 0;
  //FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('COF_BASE').AsCurrency := 0;
  FAT_CD_M_NFE.FieldByName('PIS_BASE').AsCurrency := 0;


  FAT_CD_M_NFE_ITE.Cancel;

  FAT_CD_M_NFE_ITE.First;
  while not FAT_CD_M_NFE_ITE.EOF do
    begin
      FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('PESO_LIQUIDO').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('PESO_LIQUIDO').AsCurrency;

      FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('PESO_BRUTO').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('PESO_BRUTO').AsCurrency;

      FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency;

      FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('VLR_DESCONTO').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

     { FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('VLR_ACRESCIMO').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('VLR_ACRESCIMO').AsCurrency; }

     { FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS_DESP').AsCurrency;   }

      FAT_CD_M_NFE.FieldByName('ICM_N_VALOR').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('ICM_N_VALOR').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency;

      FAT_CD_M_NFE.FieldByName('ICM_N_BASE').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('ICM_N_BASE').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency;

      FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('ICM_S_VALOR').AsCurrency;

      FAT_CD_M_NFE.FieldByName('ICM_S_BASE').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('ICM_S_BASE').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('ICM_S_BASE').AsCurrency;

      FAT_CD_M_NFE.FieldByName('IPI_BASE').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('IPI_BASE').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('IPI_BASE').AsCurrency;

      FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('IPI_VALOR').AsCurrency;

      FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('ISS_BASE').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('ISS_BASE').AsCurrency;

      FAT_CD_M_NFE.FieldByName('ISS_VALOR').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('ISS_VALOR').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('ISS_VALOR').AsCurrency;


     { FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('FRE_VALOR').AsCurrency; }

      if FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'D' then
         begin
           FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency :=
                  FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency +
                  FAT_CD_M_NFE_ITE.FieldByName('FRE_CUSTO').AsCurrency;
         end;

      FAT_CD_M_NFE.FieldByName('PIS_VALOR').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('PIS_VALOR').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR').AsCurrency;

      FAT_CD_M_NFE.FieldByName('PIS_VALOR_ST').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('PIS_VALOR_ST').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('PIS_VALOR_ST').AsCurrency;

      FAT_CD_M_NFE.FieldByName('COF_VALOR').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('COF_VALOR').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR').AsCurrency;

      FAT_CD_M_NFE.FieldByName('COF_VALOR_ST').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('COF_VALOR_ST').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('COF_VALOR_ST').AsCurrency;

      FAT_CD_M_NFE.FieldByName('VLR_ISENTA').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('VLR_ISENTA').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('VLR_ISENTA').AsCurrency;

      FAT_CD_M_NFE.FieldByName('VLR_OUTRAS').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('VLR_OUTRAS').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('VLR_OUTRAS').AsCurrency;

     { FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('VLR_SEGURO').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('VLR_SEGURO').AsCurrency; }

      FAT_CD_M_NFE.FieldByName('COF_BASE').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('COF_BASE').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('COF_BASE').AsCurrency;

      FAT_CD_M_NFE.FieldByName('PIS_BASE').AsCurrency :=
              FAT_CD_M_NFE.FieldByName('PIS_BASE').AsCurrency +
              FAT_CD_M_NFE_ITE.FieldByName('PIS_BASE').AsCurrency;

      FAT_CD_M_NFE_ITE.Next;
    end;

end;

procedure FatCalculaFrePercentual(FAT_CD_M_NFE,FAT_CD_M_NFE_ITE: TClientDataSet);
var
   lPercAcum:currency;
   lPosReg,lnumReg:integer;
begin

   { TODO -oMaxsuel -cCriação :
     Criado em 09/01/2017
     Método responsável por calcular o percentual de frete.}


   FAT_CD_M_NFE_ITE.Cancel;
   FAT_CD_M_NFE_ITE.First;
   lnumReg   := FAT_CD_M_NFE_ITE.RecordCount;
   lPosReg   := 1;
   lPercAcum := 0;


   while not FAT_CD_M_NFE_ITE.EOF do
     begin
       FAT_CD_M_NFE_ITE.Edit;

       if lnumReg>lPosReg then
         begin
           FAT_CD_M_NFE_ITE.FieldByName('FRE_PERCENTUAL').AsCurrency :=
                       roundTo((100 * FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency) /
                                FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency,-2);
         end
       else
         begin
           FAT_CD_M_NFE_ITE.FieldByName('FRE_PERCENTUAL').AsCurrency := 100 - lPercAcum;
         end;
       lPercAcum := lPercAcum + FAT_CD_M_NFE_ITE.FieldByName('FRE_PERCENTUAL').AsCurrency;
       lPosReg := lPosReg + 1;
       FAT_CD_M_NFE_ITE.Post;
       FAT_CD_M_NFE_ITE.Next;
     end;
end;

procedure FatRatNfd(FAT_CD_M_NFE,FAT_CD_M_NFE_ITE: TClientDataSet; campo:string);
begin
  { TODO -oMaxsuel -cCriação :
    Criado em 09/01/2017
    Método responsável por retear o valor do campo pai para o filho }

  if FAT_CD_M_NFE.FieldByName(campo).AsCurrency>0 then
     begin
        FAT_CD_M_NFE_ITE.First;
        while not FAT_CD_M_NFE_ITE.EOF do
          begin
            FAT_CD_M_NFE_ITE.Edit;
            FAT_CD_M_NFE_ITE.FieldByName(campo).AsCurrency :=
                    (FAT_CD_M_NFE_ITE.FieldByName('FRE_PERCENTUAL').AsCurrency/100.0)*
                     FAT_CD_M_NFE.FieldByName(campo).AsCurrency;
            FAT_CD_M_NFE_ITE.Post;
            FAT_CD_M_NFE_ITE.Next;
          end;
     end
   else
     begin
       FAT_CD_M_NFE_ITE.First;
       while not FAT_CD_M_NFE_ITE.EOF do
         begin
           FAT_CD_M_NFE_ITE.Edit;
           FAT_CD_M_NFE_ITE.FieldByName(campo).AsCurrency := 0;
           FAT_CD_M_NFE_ITE.Post;
           FAT_CD_M_NFE_ITE.Next;
         end;
     end;

end;


end.
