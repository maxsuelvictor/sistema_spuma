unit FAT_RN_M_PED;

interface

uses Classes,
     DBXCommon,
     SysUtils,
     Dialogs,
     enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr, Math;

function FatGerarNovoPed(id_pedido_novo_ger: string; Pai_DataSet, Ite_DataSet, Tit_DataSet: TDataSet;
                         BUS_FAT_CD_M_PED,BUS_FAT_CD_M_PED_ITE,BUS_FAT_CD_M_PED_TIT,BUS_CD_M_OPR_PED_INT: TClientDataSet;  SmAtual: TSM): String;


var
  sm:Tsm;

implementation

function FatGerarNovoPed(id_pedido_novo_ger: string; Pai_DataSet, Ite_DataSet, Tit_DataSet: TDataSet;
                          BUS_FAT_CD_M_PED,BUS_FAT_CD_M_PED_ITE,BUS_FAT_CD_M_PED_TIT,BUS_CD_M_OPR_PED_INT: TClientDataSet;  SmAtual: TSM): String;
var
  i: integer;
  qtde_ite_ant, qtde_ite_atual, qtde, vlr_desconto, vlr_desconto_ite, desc_unitario: Currency;

  vlr_total_bruto, vlr_total_liq, vlr_parcela, vlr_ult_parcela, qtde_reg, soma_parcelas: Currency;

  IdOpr, SeqIte, SeqTit: integer;

  qry, qryTabelaIte, qryTabelaTit:TSqlQuery;
  cubagem: currency;
begin

   SM := SmAtual;

   qry := TSqlQuery.Create(nil);
   qry.SQLConnection := sm.Conexao;

   qryTabelaIte := TSqlQuery.Create(nil);
   qryTabelaIte.SQLConnection := sm.Conexao;

   qryTabelaTit := TSqlQuery.Create(nil);
   qryTabelaTit.SQLConnection := sm.Conexao;


   SeqIte := 0;
   SeqTit := 0;

   qryTabelaIte.Close;
   qryTabelaIte.SQL.Clear;
   qryTabelaIte.SQL.Add('Select SEQUENCIA from CAD_TB_C_SEQ where ID_TABELA = ''FAT_TB_M_NFE_ITE'' ');
   qryTabelaIte.Open;

   SeqIte := qryTabelaIte.FieldByName('Sequencia').AsInteger;


   qryTabelaTit.Close;
   qryTabelaTit.SQL.Clear;
   qryTabelaTit.SQL.Add('Select SEQUENCIA from CAD_TB_C_SEQ where ID_TABELA = ''FAT_TB_M_NFE_TIT'' ');
   qryTabelaTit.Open;

   SeqTit := qryTabelaTit.FieldByName('Sequencia').AsInteger;


   IdOpr := Pai_DataSet.FieldByName('pcp_id_opr').AsInteger;

   BUS_FAT_CD_M_PED.Insert;
   for i := 0 to Pai_DataSet.FieldCount - 1 do
      begin
        if (Pai_DataSet.Fields[i].FieldName <> 'FAT_SQ_M_PED_ITE') and
           (Pai_DataSet.Fields[i].FieldName <> 'FAT_SQ_M_PED_TIT') and
           (Pai_DataSet.Fields[i].FieldName <> 'FAT_SQ_M_PED_TIT_SER') then
            begin
              BUS_FAT_CD_M_PED.FieldByName(Pai_DataSet.Fields[i].FieldName).AsString :=  Pai_DataSet.Fields[i].AsString;
            end;
      end;

   BUS_FAT_CD_M_PED.FieldByName('pedido_origem_aut').AsInteger :=  BUS_FAT_CD_M_PED.FieldByName('id_pedido').AsInteger;
   BUS_FAT_CD_M_PED.FieldByName('id_pedido').AsString :=  id_pedido_novo_ger;
   if trim(BUS_FAT_CD_M_PED.FieldByName('obs').AsString) <> '' then
      BUS_FAT_CD_M_PED.FieldByName('obs').AsString :=  BUS_FAT_CD_M_PED.FieldByName('obs').AsString +
                                                   '. Pedido gerado a partir do pedido: '  +
                                                   BUS_FAT_CD_M_PED.FieldByName('pedido_origem_aut').AsString
   else
      BUS_FAT_CD_M_PED.FieldByName('obs').AsString :=
         'Pedido gerado a partir do pedido: ' + BUS_FAT_CD_M_PED.FieldByName('pedido_origem_aut').AsString;

      //  BUS_FAT_CD_M_PED.FieldByName('dta_pedido').AsDateTime :=  date;
      //  BUS_FAT_CD_M_PED.FieldByName('hor_pedido').AsDateTime :=  time;
   BUS_FAT_CD_M_PED.FieldByName('pedido_automatico').AsBoolean :=  true;

   vlr_desconto    := 0;
   vlr_total_liq   := 0;
   vlr_total_bruto := 0;
   Cubagem         := 0;


   Ite_DataSet.First;
   while not (Ite_DataSet.Eof) do
       begin
         if (Ite_DataSet.UpdateStatus in [usUnmodified]) then
             begin
               vlr_desconto_ite := Ite_DataSet.FieldByName('vlr_desconto').AsCurrency;

               Ite_DataSet.Next;
               if (Ite_DataSet.UpdateStatus in [usModified]) then
                   begin
                     if Ite_DataSet.FieldByName('qtde').AsString <> '' then
                        begin
                          qtde_ite_atual := Ite_DataSet.FieldByName('qtde').AsCurrency;

                          if Ite_DataSet.FieldByName('vlr_desconto').AsString <> '' then
                             begin
                               vlr_desconto_ite := Ite_DataSet.FieldByName('vlr_desconto').AsCurrency;
                             end;

                          Ite_DataSet.prior;

                          qtde_ite_ant := Ite_DataSet.FieldByName('qtde').AsCurrency;

                          // A criação do novo pedido de venda só irá funcionar para os itens que tiveram a qtde
                          // alterada para MENOR.

                          if qtde_ite_atual < qtde_ite_ant then
                             begin
                                BUS_FAT_CD_M_PED_ITE.Insert;
                                for i := 0 to Ite_DataSet.FieldCount - 1 do
                                    begin
                                      if Ite_DataSet.Fields[i].FieldName <> '' then
                                         if BUS_FAT_CD_M_PED_ITE.FieldByName(Ite_DataSet.Fields[i].FieldName).AsString <> 'id_pedido' then
                                            BUS_FAT_CD_M_PED_ITE.FieldByName(Ite_DataSet.Fields[i].FieldName).AsString :=  Ite_DataSet.Fields[i].AsString;
                                    end;

                                Ite_DataSet.Next;

                                qtde :=  qtde_ite_ant - qtde_ite_atual;

                                if vlr_desconto_ite > 0 then
                                   desc_unitario := roundTo(vlr_desconto_ite / qtde_ite_atual,-2);

                                BUS_FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsString := id_pedido_novo_ger;

                                SeqIte := SeqIte + 1;
                                BUS_FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger := SeqIte;

                                qry.Close;
                                qry.SQL.Clear;
                                qry.SQL.Add('select * from cad_tb_c_ite where id_item = ' + BUS_FAT_CD_M_PED_ITE.FieldByName('id_item').AsString);
                                qry.Open;

                                BUS_FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency       :=  qtde;
                                BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency  :=
                                   BUS_FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency *
                                   BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsCurrency;

                                cubagem := cubagem +
                                  (qry.FieldByName('CUBAGEM').AsFloat * BUS_FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat);

                                if vlr_desconto_ite > 0 then
                                   BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency :=  qtde * desc_unitario;

                                BUS_FAT_CD_M_PED_ITE.FieldByName('per_desconto').AsCurrency  :=
                                      roundTo((BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency /
                                               BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency) * 100,-4);

                                BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency :=
                                   BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency -
                                       BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;

                                BUS_FAT_CD_M_PED_ITE.FieldByName('per_desc_basico').AsCurrency  :=
                                     BUS_FAT_CD_M_PED_ITE.FieldByName('per_desconto').AsCurrency;

                                BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desc_basico').AsCurrency  :=
                                     BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;

                                BUS_FAT_CD_M_PED.FieldByName('per_desc_especial').AsCurrency  := 0;
                                BUS_FAT_CD_M_PED.FieldByName('vlr_desc_especial').AsCurrency  := 0;

                                vlr_desconto    := vlr_desconto    + BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;
                                vlr_total_bruto := vlr_total_bruto + BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency;
                                vlr_total_liq   := vlr_total_liq   + BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency;

                                BUS_FAT_CD_M_PED_ITE.Post;
                             end;
                        end;
                   end;
             end;

          if (Ite_DataSet.UpdateStatus in [usDeleted]) then
             begin

                BUS_FAT_CD_M_PED_ITE.Insert;
                for i := 0 to Ite_DataSet.FieldCount - 1 do
                    begin
                      if Ite_DataSet.Fields[i].FieldName <> '' then
                         if BUS_FAT_CD_M_PED_ITE.FieldByName(Ite_DataSet.Fields[i].FieldName).AsString <> 'id_pedido' then
                            BUS_FAT_CD_M_PED_ITE.FieldByName(Ite_DataSet.Fields[i].FieldName).AsString :=  Ite_DataSet.Fields[i].AsString;
                    end;

                qtde :=  Ite_DataSet.FieldByName('qtde').AsCurrency;

                BUS_FAT_CD_M_PED_ITE.FieldByName('id_pedido').AsString := id_pedido_novo_ger;

                SeqIte := SeqIte + 1;

                BUS_FAT_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger := SeqIte;

                qry.Close;
                qry.SQL.Clear;
                qry.SQL.Add('select * from cad_tb_c_ite where id_item = ' + BUS_FAT_CD_M_PED_ITE.FieldByName('id_item').AsString);
                qry.Open;

                BUS_FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency       :=  qtde;
                BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency  :=
                   BUS_FAT_CD_M_PED_ITE.FieldByName('qtde').AsCurrency *
                   BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_unitario').AsCurrency;

                cubagem := cubagem +
                  (qry.FieldByName('CUBAGEM').AsFloat * BUS_FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat);

                BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency  :=
                         Ite_DataSet.FieldByName('vlr_desconto').AsCurrency;

                BUS_FAT_CD_M_PED_ITE.FieldByName('per_desconto').AsCurrency  :=
                         Ite_DataSet.FieldByName('per_desconto').AsCurrency;

                BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency :=
                   BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency -
                       BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;

                BUS_FAT_CD_M_PED_ITE.FieldByName('per_desc_basico').AsCurrency  :=
                     BUS_FAT_CD_M_PED_ITE.FieldByName('per_desconto').AsCurrency;

                BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desc_basico').AsCurrency  :=
                     BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;

                BUS_FAT_CD_M_PED.FieldByName('per_desc_especial').AsCurrency  := 0;
                BUS_FAT_CD_M_PED.FieldByName('vlr_desc_especial').AsCurrency  := 0;

                vlr_desconto    := vlr_desconto    + BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;
                vlr_total_bruto := vlr_total_bruto + BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency;
                vlr_total_liq   := vlr_total_liq   + BUS_FAT_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency;

                BUS_FAT_CD_M_PED_ITE.Post;

             end;
         Ite_DataSet.Next;
       end;
  Ite_DataSet.First;


  BUS_FAT_CD_M_PED.FieldByName('cubagem').AsCurrency  := cubagem;
  BUS_FAT_CD_M_PED.FieldByName('vlr_desconto').AsCurrency  := vlr_desconto;
  BUS_FAT_CD_M_PED.FieldByName('vlr_bruto').AsCurrency     := vlr_total_bruto;
  BUS_FAT_CD_M_PED.FieldByName('per_desconto').AsCurrency  :=
      roundTo((BUS_FAT_CD_M_PED.FieldByName('vlr_desconto').AsCurrency /
               BUS_FAT_CD_M_PED.FieldByName('vlr_bruto').AsCurrency) * 100,-4);

  BUS_FAT_CD_M_PED.FieldByName('per_desc_basico').AsCurrency  :=
       BUS_FAT_CD_M_PED.FieldByName('per_desconto').AsCurrency;

  BUS_FAT_CD_M_PED.FieldByName('vlr_desc_basico').AsCurrency  :=
       BUS_FAT_CD_M_PED.FieldByName('vlr_desconto').AsCurrency;

  BUS_FAT_CD_M_PED.FieldByName('per_desc_especial').AsCurrency  := 0;
  BUS_FAT_CD_M_PED.FieldByName('vlr_desc_especial').AsCurrency  := 0;

  BUS_FAT_CD_M_PED.FieldByName('vlr_liquido').AsCurrency   := vlr_total_liq;

  //vlr_total_liq, vlr_parcela, vlr_ult_parcela: Currency;


  Tit_DataSet.First;
  while not (Tit_DataSet.Eof) do
      begin
        if (Tit_DataSet.UpdateStatus in [usInserted]) or  (Tit_DataSet.UpdateStatus in [usUnmodified]) then
            begin

              BUS_FAT_CD_M_PED_TIT.Insert;

              for i := 0 to Tit_DataSet.FieldCount - 1 do
                 begin
                   if Tit_DataSet.Fields[i].FieldName <> '' then
                      if BUS_FAT_CD_M_PED_TIT.FieldByName(Tit_DataSet.Fields[i].FieldName).AsString <> 'id_pedido' then
                          BUS_FAT_CD_M_PED_TIT.FieldByName(Tit_DataSet.Fields[i].FieldName).AsString :=  Tit_DataSet.Fields[i].AsString;
                 end;

              if (Tit_DataSet.UpdateStatus in [usUnmodified]) then
                  begin
                    Tit_DataSet.Next;
                    if not (Tit_DataSet.UpdateStatus in [usModified]) then
                       Tit_DataSet.Prior;
                  end;

              BUS_FAT_CD_M_PED_TIT.FieldByName('id_pedido').AsString := id_pedido_novo_ger;

              SeqTit := SeqTit + 1;
              BUS_FAT_CD_M_PED_TIT.FieldByName('id_titulo').AsInteger := SeqTit;

              BUS_FAT_CD_M_PED_TIT.Post;
            end;


        Tit_DataSet.Next;
      end;

   qtde_reg    := BUS_FAT_CD_M_PED_TIT.RecordCount;

   if qtde_reg > 0 then // if colocado 29-06-23, devido erro ao pedido não ter nenhum título .
      begin
         if qtde_reg = 1 then
            begin
              BUS_FAT_CD_M_PED_TIT.edit;
              BUS_FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency := vlr_total_liq;
              BUS_FAT_CD_M_PED_TIT.Post;
            end
         else
            begin
               BUS_FAT_CD_M_PED_TIT.IndexFieldNames := 'DTA_VENCIMENTO';
               BUS_FAT_CD_M_PED_TIT.First;
               vlr_parcela :=  trunc(vlr_total_liq/qtde_reg);

               vlr_ult_parcela := vlr_total_liq - ( vlr_parcela *  ( qtde_reg - 1) );
               i := 0;
               soma_parcelas := 0;
               while not BUS_FAT_CD_M_PED_TIT.eof do
                   begin
                     i := i + 1;
                     BUS_FAT_CD_M_PED_TIT.edit;
                     if i < qtde_reg then
                        begin
                          BUS_FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency := vlr_parcela;
                          soma_parcelas := soma_parcelas + vlr_parcela;
                        end
                     else
                        BUS_FAT_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency  :=  vlr_total_liq - soma_parcelas;

                     BUS_FAT_CD_M_PED_TIT.Post;
                     BUS_FAT_CD_M_PED_TIT.Next;
                   end;
            end;
      end;

   qryTabelaIte.Close;
   qryTabelaIte.SQL.Clear;
   qryTabelaIte.SQL.Add('update CAD_TB_C_SEQ set SEQUENCIA='''+inttostr(SeqIte)+''' ');
   qryTabelaIte.SQL.Add('where ID_TABELA=''FAT_TB_M_NFE_ITE'' ');
   qryTabelaIte.ExecSQL;

   qryTabelaTit.Close;
   qryTabelaTit.SQL.Clear;
   qryTabelaTit.SQL.Add('update CAD_TB_C_SEQ set SEQUENCIA='''+inttostr(SeqTit)+''' ');
   qryTabelaTit.SQL.Add('where ID_TABELA=''FAT_TB_M_NFE_TIT'' ');
   qryTabelaTit.ExecSQL;

   BUS_CD_M_OPR_PED_INT.Insert;
   BUS_CD_M_OPR_PED_INT.FieldByName('id_opr').AsInteger    := IdOpr;
   BUS_CD_M_OPR_PED_INT.FieldByName('id_pedido').AsInteger :=
                BUS_FAT_CD_M_PED.FieldByName('id_pedido').AsInteger;
   BUS_CD_M_OPR_PED_INT.FieldByName('remanejado').AsBoolean := false;
   BUS_CD_M_OPR_PED_INT.FieldByName('origem_insercao').AsInteger := 1;  // Por pedido automático.
   BUS_CD_M_OPR_PED_INT.Post;

   FreeAndNil(qryTabelaIte);
   FreeAndNil(qryTabelaTit);
   FreeAndNil(qry);

end;

end.
