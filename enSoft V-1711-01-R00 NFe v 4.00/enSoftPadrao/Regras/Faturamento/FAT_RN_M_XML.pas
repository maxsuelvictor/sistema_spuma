unit FAT_RN_M_XML;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient;



procedure FatNovoXml;
procedure FatNovoXmlIte;
procedure FatNovoXmlTit;

procedure FatMascaraXml(DataSet:TDataSet);
procedure FatMascaraXmlIte(DataSet:TDataSet);
procedure FatMascaraXmlTit(DataSet:TDataSet);

procedure FatValidaXml(cdsNota, cdsItens, cdsTitulos: TClientDataSet);
procedure FatValidaXmlIte(cdsItens: TClientDataSet);
procedure FatValidaXmlTit(cdsTitulos: TClientDataSet);
procedure FatValidaXmlLote(cdsItens,cdsLote: TClientDataSet);



procedure GravarDadosNaNfe(cdsPai,cdsItens,cdsItensLot,cdsTitulos: TClientDataSet);
function FAT_CD_M_XML_ITEid_itemChange:Boolean;
function FAT_CD_M_XML_TITid_forma_pagChange:Boolean;
procedure TesteXmlNfe;

procedure GerarFatItensLote(cdsPai,cdsItens,cdsItensLot: TClientDataSet;freCusto:Currency);


implementation

uses uDmGeral,enConstantes,uProxy, FAT_RN_M_NFE;


procedure GerarFatItensLote(cdsPai,cdsItens,cdsItensLot: TClientDataSet;freCusto:Currency);
var
  SMPrincipal : TSMClient;
  vlrFreCustoAcum:Currency;
  vlrMercAcum,vlrLiqAcum,vlrIcmNBaseAcum,vlrIcmNValorAcum,vlrIcmSBaseAcum,vlrIcmSValorAcum,vlrOutrasdespAcum,
  vlrOutrasAcum,vlrIPIBaseAcum,vlrIPIValorAcum,vlrPISBaseAcum,vlrPISValorAcum,vlrFreValorAcum,
  vlrCofBaseAcum,vlrCofValorAcum,vlrIcmDescAcum:Currency;
  qtdeRegIte,i:Integer;
begin
      vlrFreCustoAcum := 0;vlrMercAcum := 0;vlrLiqAcum := 0;vlrIcmNBaseAcum :=0;
      vlrIcmNValorAcum :=0;vlrIcmSBaseAcum :=0;vlrIcmSValorAcum :=0;vlrOutrasdespAcum := 0;
      vlrOutrasAcum := 0;vlrIPIBaseAcum := 0;vlrIPIValorAcum := 0;vlrPISBaseAcum :=0;
      vlrPISValorAcum := 0;vlrFreValorAcum :=0;vlrCofBaseAcum:=0;vlrCofValorAcum:=0;vlrIcmDescAcum:=0;

      dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFEid_tipo_mov_estoque.AsString);

      qtdeRegIte := cdsItensLot.RecordCount;
      i := 0;
      cdsItensLot.First;
      while not cdsItensLot.eof do
        begin
         dmGeral.BusItens(0,cdsItens.FieldByName('ID_ITEM').AsString);
         dmGeral.FAT_CD_M_NFE_ITE.Insert;

         //Busca sequencia no servidor
         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
         try
           dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger  :=
                         SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
         finally
           FreeAndNil(SMPrincipal);
         end;


         dmGeral.FAT_CD_M_NFE_ITEid_item.AsInteger               := cdsItens.FieldByName('ID_ITEM').AsInteger;
         dmGeral.FAT_CD_M_NFE_ITEid_busca_item.AsString          := cdsItens.FieldByName('ID_BUSCA_ITEM').AsString;
         dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_xml.AsInteger  := cdsItens.FieldByName('SEQ').AsInteger;
         dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_iqm.AsInteger  := cdsItens.FieldByName('id_sequencia_ite_iqm').AsInteger;
         dmGeral.FAT_CD_M_NFE_ITEID_ST_ICM.AsString              := cdsItens.FieldByName('ID_CST_ICMS').AsString;
         dmGeral.FAT_CD_M_NFE_ITEid_cfo.AsString                 := cdsItens.FieldByName('ID_CFOP').AsString;


         if (not dmGeral.BUS_CD_C_ITE.IsEmpty) and
            (trim(dmGeral.BUS_CD_C_ITE.FieldByName('id_und_compra').AsString) = trim(cdsItens.FieldByName('UND').AsString)) and
            (dmGeral.BUS_CD_C_ITE.FieldByName('emb_compra').AsString <> '') and (dmGeral.BUS_CD_C_ITE.FieldByName('emb_compra').AsCurrency >0) and
            (dmGeral.BUS_CD_C_ITE.FieldByName('emb_venda').AsString <> '') and (dmGeral.BUS_CD_C_ITE.FieldByName('emb_venda').AsCurrency >0)   then
            begin
              dmGeral.FAT_CD_M_NFE_ITEqtde.AsCurrency := RoundTo((cdsItensLot.FieldByName('QTDE').AsCurrency*dmGeral.BUS_CD_C_ITE.FieldByName('emb_compra').AsCurrency)/
                                                                              dmGeral.BUS_CD_C_ITE.FieldByName('emb_venda').AsCurrency,-4);
            end
         else
            begin
               dmGeral.FAT_CD_M_NFE_ITEqtde.AsCurrency  := cdsItensLot.FieldByName('QTDE').AsCurrency;
            end;

         dmGeral.FAT_CD_M_NFE_ITEvlr_unitario.AsCurrency := RoundTo(cdsItens.FieldByName('VLR_BRUTO').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency,-4);

         if (i = (qtdeRegIte-1)) then
             begin
               dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency       := cdsItens.FieldByName('VLR_BRUTO').AsCurrency-
                                                                            vlrMercAcum;
               dmGeral.FAT_CD_M_NFE_ITEvlr_liquido.AsCurrency          := cdsItens.FieldByName('VLR_LIQUIDO').AsCurrency-
                                                                            vlrLiqAcum;
             end
         else
             begin
               dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency       := RoundTo(cdsItens.FieldByName('VLR_BRUTO').AsCurrency*
                                                                       (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

               vlrMercAcum := vlrMercAcum + dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency;
               dmGeral.FAT_CD_M_NFE_ITEvlr_liquido.AsCurrency          := RoundTo(cdsItens.FieldByName('VLR_LIQUIDO').AsCurrency*
                                                                       (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

               vlrLiqAcum := vlrLiqAcum + dmGeral.FAT_CD_M_NFE_ITEvlr_liquido.AsCurrency;
             end;

         dmGeral.FAT_CD_M_NFE_ITEint_tipo_item.AsString          := dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;
         dmGeral.FAT_CD_M_NFE_ITEorigem_mercadoria.AsString      := cdsItens.FieldByName('origem_mercadoria').AsString;//dmGeral.BUS_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
         dmGeral.FAT_CD_M_NFE_ITEint_origem.AsString             := cdsItens.FieldByName('origem_mercadoria').AsString;
         dmGeral.FAT_CD_M_NFE_ITEid_cor.AsInteger                := cdsItens.FieldByName('ID_COR').AsInteger;
         dmGeral.FAT_CD_M_NFE_ITEid_tamanho.AsInteger            := cdsItens.FieldByName('ID_TAMANHO').AsInteger;
         dmGeral.FAT_CD_M_NFE_ITEnum_lote.AsString               := cdsItensLot.FieldByName('NUM_LOTE').AsString;
         dmGeral.FAT_CD_M_NFE_ITEdta_vencimento.AsDateTime       := cdsItensLot.FieldByName('DTA_VENCIMENTO').AsDateTime;
         dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.AsCurrency         := RoundTo(cdsItens.FieldByName('VLR_DESCONTO').AsCurrency*
                                                                       (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

        { if dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.AsCurrency <> cdsItens.FieldByName('VLR_DESCONTO').AsCurrency then
          begin
            Showmessage('Erro na hora de importar "valor de desconto".');
            abort;
          end; }



         //dmGeral.BusItens(0,dmGeral.FAT_CD_M_NFE_ITEid_item.AsString);


         if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
           begin
             dmGeral.FAT_CD_M_NFE_ITEid_st_ipi.AsString :=
                          dmGeral.BUS_CD_C_ITE.FieldByName('INT_IPI_ENTRADA').AsString;


             if dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2 then
              begin
               dmGeral.FAT_CD_M_NFE_ITEid_st_pis.AsString := '99';
               dmGeral.FAT_CD_M_NFE_ITEid_st_cof.AsString := '99';
              end
             else
              begin
               dmGeral.FAT_CD_M_NFE_ITEid_st_pis.AsString :=
                     dmGeral.BUS_CD_C_ITE.FieldByName('INT_PIS_ENTRADA').AsString;
               dmGeral.FAT_CD_M_NFE_ITEid_st_cof.AsString :=
                     dmGeral.BUS_CD_C_ITE.FieldByName('INT_COF_ENTRADA').AsString;
              end;
           end;

         if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
           begin
             dmGeral.FAT_CD_M_NFE_ITEid_st_ipi.AsString := '49';
             dmGeral.FAT_CD_M_NFE_ITEid_st_pis.AsString := '99';
             dmGeral.FAT_CD_M_NFE_ITEid_st_cof.AsString := '99';
           end;

          dmGeral.FAT_CD_M_NFE_ITEICM_N_ALIQUOTA.AsCurrency      := cdsItens.FieldByName('icm_n_aliquota').AsCurrency;
          dmGeral.FAT_CD_M_NFE_ITEicm_per_reducao.AsCurrency     := cdsItens.FieldByName('icm_per_reducao').AsCurrency;
          dmGeral.FAT_CD_M_NFE_ITEipi_aliquota.AsCurrency        := cdsItens.FieldByName('ipi_aliquota').AsCurrency;
          dmGeral.FAT_CD_M_NFE_ITEpis_aliquota.AsCurrency        := cdsItens.FieldByName('pis_aliquota').AsCurrency;
          dmGeral.FAT_CD_M_NFE_ITEcof_aliquota.AsCurrency        := cdsItens.FieldByName('cof_aliquota').AsCurrency;

          if (i = (qtdeRegIte-1)) then
             begin
              dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency          := cdsItens.FieldByName('icm_n_base').AsCurrency-
                                                                         vlrIcmNBaseAcum;
              dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency         := cdsItens.FieldByName('icm_n_valor').AsCurrency-
                                                                         vlrIcmNValorAcum;
              dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency          := cdsItens.FieldByName('icm_s_base').AsCurrency-
                                                                          vlrIcmSBaseAcum;
              dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency         := cdsItens.FieldByName('icm_s_valor').AsCurrency-
                                                                          vlrIcmSValorAcum;

              dmGeral.FAT_CD_M_NFE_ITEvlr_outras_desp.AsCurrency     := cdsItens.FieldByName('vlr_outras_desp').AsCurrency-
                                                                          vlrOutrasdespAcum;
              dmGeral.FAT_CD_M_NFE_ITEvlr_outras.AsCurrency          := cdsItens.FieldByName('vlr_outras').AsCurrency-
                                                                          vlrOutrasAcum;

              dmGeral.FAT_CD_M_NFE_ITEipi_base.AsCurrency            := cdsItens.FieldByName('ipi_base').AsCurrency-
                                                                          vlrIPIBaseAcum;

              dmGeral.FAT_CD_M_NFE_ITEipi_valor.AsCurrency           := cdsItens.FieldByName('ipi_valor').AsCurrency-
                                                                          vlrIPIValorAcum;

              dmGeral.FAT_CD_M_NFE_ITEpis_base.AsCurrency            := cdsItens.FieldByName('pis_base').AsCurrency-
                                                                          vlrPISBaseAcum;

              dmGeral.FAT_CD_M_NFE_ITEpis_valor.AsCurrency           := cdsItens.FieldByName('pis_valor').AsCurrency-
                                                                          vlrPISValorAcum;
              dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency           := cdsItens.FieldByName('fre_valor').AsCurrency-
                                                                          vlrFreValorAcum;

              dmGeral.FAT_CD_M_NFE_ITEcof_base.AsCurrency            := cdsItens.FieldByName('cof_base').AsCurrency-
                                                                          vlrCofBaseAcum;

              dmGeral.FAT_CD_M_NFE_ITEcof_valor.AsCurrency           := cdsItens.FieldByName('cof_valor').AsCurrency-
                                                                          vlrCofValorAcum;

              dmGeral.FAT_CD_M_NFE_ITEvlr_icm_desc.AsCurrency        := cdsItens.FieldByName('vlr_icm_desc').AsCurrency-
                                                                          vlrIcmDescAcum;

            end
          else
            begin
              dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency          := RoundTo(cdsItens.FieldByName('icm_n_base').AsCurrency*
                                                                          (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);
              vlrIcmNBaseAcum :=  vlrIcmNBaseAcum + dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency         := RoundTo(cdsItens.FieldByName('icm_n_valor').AsCurrency*
                                                                          (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrIcmNValorAcum := vlricmNValorAcum + dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency          := RoundTo(cdsItens.FieldByName('icm_s_base').AsCurrency*
                                                                          (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrIcmSBaseAcum := vlrIcmSBaseAcum + dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency         := RoundTo(cdsItens.FieldByName('icm_s_valor').AsCurrency*
                                                                          (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrIcmSValorAcum := vlrIcmSValorAcum +  dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEvlr_outras_desp.AsCurrency     := RoundTo(cdsItens.FieldByName('vlr_outras_desp').AsCurrency*
                                                                          (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrOutrasdespAcum := vlrOutrasDespAcum +  dmGeral.FAT_CD_M_NFE_ITEvlr_outras_desp.AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEvlr_outras.AsCurrency          := RoundTo(cdsItens.FieldByName('vlr_outras').AsCurrency*
                                                                          (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrOutrasAcum := vlrOutrasAcum +  dmGeral.FAT_CD_M_NFE_ITEvlr_outras.AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEipi_base.AsCurrency            := RoundTo(cdsItens.FieldByName('ipi_base').AsCurrency*
                                                                         (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrIPIBaseAcum := vlrIPIBaseAcum + dmGeral.FAT_CD_M_NFE_ITEipi_base.AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEipi_valor.AsCurrency           := RoundTo(cdsItens.FieldByName('ipi_valor').AsCurrency*
                                                                         (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrIPIValorAcum := vlrIPIvalorAcum + dmGeral.FAT_CD_M_NFE_ITEipi_valor.AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEpis_base.AsCurrency            := RoundTo(cdsItens.FieldByName('pis_base').AsCurrency*
                                                                        (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrPISBaseAcum := vlrPISBaseAcum +  dmGeral.FAT_CD_M_NFE_ITEpis_base.AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEpis_valor.AsCurrency           := RoundTo(cdsItens.FieldByName('pis_valor').AsCurrency*
                                                                        (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrPISValorAcum := vlrPISValorAcum + dmGeral.FAT_CD_M_NFE_ITEpis_valor.AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency           := RoundTo(cdsItens.FieldByName('fre_valor').AsCurrency*
                                                                       (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrFreValorAcum := vlrFreValorAcum + dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEcof_base.AsCurrency            := RoundTo(cdsItens.FieldByName('cof_base').AsCurrency*
                                                                        (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrCofBaseAcum := vlrCofBaseAcum + dmGeral.FAT_CD_M_NFE_ITEcof_base.AsCurrency;


              dmGeral.FAT_CD_M_NFE_ITEcof_valor.AsCurrency           := RoundTo(cdsItens.FieldByName('cof_valor').AsCurrency*
                                                                         (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrCofValorAcum := vlrCofValorAcum + dmGeral.FAT_CD_M_NFE_ITEcof_valor.AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEvlr_icm_desc.AsCurrency        := RoundTo(cdsItens.FieldByName('vlr_icm_desc').AsCurrency*
                                                                        (cdsItensLot.FieldByName('QTDE').AsCurrency/cdsItens.FieldByName('QTDE').AsCurrency),-2);

              vlrIcmDescAcum := vlrIcmdescAcum + dmGeral.FAT_CD_M_NFE_ITEvlr_icm_desc.AsCurrency;
            end;
          dmGeral.FAT_CD_M_NFE_ITEpis_valor_st.AsCurrency        := 0;

          dmGeral.FAT_CD_M_NFE_ITEiss_base.AsCurrency            := 0;
          dmGeral.FAT_CD_M_NFE_ITEiss_aliquota.AsCurrency        := 0;
          dmGeral.FAT_CD_M_NFE_ITEiss_valor.AsCurrency           := 0;

          dmGeral.FAT_CD_M_NFE_ITEfre_base.AsCurrency            := 0;
          dmGeral.FAT_CD_M_NFE_ITEfre_percentual.AsCurrency      := 0;
          dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           := 0;


          if (freCusto >0) then
            begin
               dmGeral.FAT_CD_M_NFE_ITEfre_percentual.AsCurrency :=
                             (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency/
                              dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency)*100;
              if (i = (qtdeRegIte-1)) then
                 begin
                   dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           :=
                                         freCusto - vlrFreCustoAcum;
                 end
              else
                 begin
                   dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           :=
                                         RoundTo(freCusto*
                                         (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('fre_percentual').AsCurrency/100),-2);
                   vlrFreCustoAcum := vlrFreCustoAcum + dmGeral.FAT_CD_M_NFE_ITE.FieldByName('fre_custo').AsCurrency;
                 end;

            end;


          dmGeral.FAT_CD_M_NFE_ITEfre_dif_aliq_icm.AsFloat       := 0;
          dmGeral.FAT_CD_M_NFE_ITEfre_vlr_dif_icm.AsCurrency     := 0;


          dmGeral.FAT_CD_M_NFE_ITEcof_valor_st.AsCurrency        := 0;


          dmGeral.FAT_CD_M_NFE_ITEmotivo_icms_des.AsString      := cdsItens.FieldByName('motivo_icms_des').AsString;


          dmGeral.BUS_CD_C_ITE.Close;

          CalcPesoItem(dmGeral.FAT_CD_M_NFE_ITE);


          dmGeral.FAT_CD_M_NFE_ITE.Post;

          cdsItensLot.Next;
          inc(i);
        end;

end;

procedure FatNovoXml;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FAT_CD_M_XML.FieldByName('ID_CONTROLE').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_XML');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FAT_CD_M_XML.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.FAT_CD_M_XML.FieldByName('ID_FISCAL').AsInteger := 0;
end;

procedure FatNovoXmlIte;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_XML_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure FatNovoXmlTit;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_TITULO').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_XML_TIT');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

function FAT_CD_M_XML_ITEid_itemChange:Boolean;
begin
   if dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString <> '' then
      begin
        dmGeral.BUS_CD_C_ITE.Data :=
                dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString]));

        if dmGeral.BUS_CD_C_ITE.IsEmpty then
           begin
             ShowMessage('Item não encontrado.');
             dmGeral.FAT_CD_M_XML_ITEid_item.OnChange := nil;
             dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString := '';
             dmGeral.FAT_CD_M_XML_ITEid_item.OnChange := dmGeral.FAT_CD_M_XML_ITEid_itemChange;
             dmGeral.BUS_CD_C_ITE.close;
             exit;
           end;

        dmGeral.BusFornecedor(2,dmGeral.FAT_CD_M_XML.FieldByName('CNPJ_EMITENTE').AsString);

        dmGeral.BUS_CD_C_ITE_XML_2.Close;
        dmGeral.BUS_CD_C_ITE_XML_2.Data :=
        dmGeral.BUS_CD_C_ITE_XML_2.DataRequest(VarArrayOf([0,
                dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString,dmGeral.FAT_CD_M_XML_ITE.FieldByName('COD_FABRICA').AsString]));
        if dmGeral.BUS_CD_C_ITE_XML_2.IsEmpty then
           begin
            if not dmGeral.BUS_CD_C_ITE_XML.Locate('ID_EMITENTE;ID_FABRICA', VarArrayOf([trim(dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString),
                                                                                        trim(dmGeral.FAT_CD_M_XML_ITE.FieldByName('COD_FABRICA').AsString)]),[]) then
               begin
                 dmGeral.BUS_CD_C_ITE_XML.Insert;
                 dmGeral.BUS_CD_C_ITE_XMLid_item.AsInteger     := dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsInteger;
                 dmGeral.BUS_CD_C_ITE_XMLid_emitente.AsInteger := dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
                 dmGeral.BUS_CD_C_ITE_XMLid_fabrica.AsString   := dmGeral.FAT_CD_M_XML_ITE.FieldByName('COD_FABRICA').AsString;
                 dmGeral.BUS_CD_C_ITE_XML.Post;
               end;
           end;
        dmGeral.BUS_CD_C_ITE_XML_2.Close;
      end;
end;

procedure FatMascaraXml(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_XMLvlr_bruto.DisplayFormat       := CMascaraValor;
  dmGeral.FAT_CD_M_XMLvlr_liquido.DisplayFormat     := CMascaraValor;
  dmGeral.FAT_CD_M_XMLvlr_icm_desc.DisplayFormat    := CMascaraValor;
  dmGeral.FAT_CD_M_XMLfre_valor.DisplayFormat       := CMascaraValor;
  dmGeral.FAT_CD_M_XMLvlr_desconto.DisplayFormat    := CMascaraValor;
  dmGeral.FAT_CD_M_XMLvlr_Base.DisplayFormat        := CMascaraValor;
  dmGeral.FAT_CD_M_XMLvlr_icms.DisplayFormat        := CMascaraValor;
end;

procedure FatMascaraXmlIte(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_XML_ITEvlr_unitario.DisplayFormat    := CMascaraVlrMerc;
  dmGeral.FAT_CD_M_XML_ITEvlr_desconto.DisplayFormat    := CMascaraValor;
  dmGeral.FAT_CD_M_XML_ITEvlr_liquido.DisplayFormat     := CMascaraValor;
  dmGeral.FAT_CD_M_XML_ITEicm_n_base.DisplayFormat      := CMascaraValor;
  dmGeral.FAT_CD_M_XML_ITEicm_n_aliquota.DisplayFormat  := CMascaraValor;
  dmGeral.FAT_CD_M_XML_ITEicm_n_valor.DisplayFormat     := CMascaraValor;
  dmGeral.FAT_CD_M_XML_ITEicm_s_base.DisplayFormat      := CMascaraValor;
  dmGeral.FAT_CD_M_XML_ITEicm_s_valor.DisplayFormat     := CMascaraValor;
  dmGeral.FAT_CD_M_XML_ITEipi_valor.DisplayFormat       := CMascaraValor;
  dmGeral.FAT_CD_M_XML_ITEpis_valor.DisplayFormat       := CMascaraValor;
  dmGeral.FAT_CD_M_XML_ITEcof_valor.DisplayFormat       := CMascaraValor;
end;

procedure FatMascaraXmlTit(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_XML_TITvlr_titulo.DisplayFormat    := CMascaraValor;
end;



function FAT_CD_M_XML_TITid_forma_pagChange:Boolean;
begin
  if (dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_FORMA_PAG').AsString <> '') then
     begin
       dmGeral.FAT_CD_M_XML_TIT.FieldByName('INT_NOMEFPG').Text := '';
       dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_PLANO').AsString := '';

       dmGeral.BUS_CD_C_FPG.Data :=
               dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_FORMA_PAG').Text]));
       if dmGeral.BUS_CD_C_FPG.IsEmpty then
          begin
            ShowMessage('Forma de pagamento não encontrada.');
            dmGeral.FAT_CD_M_XML_TITid_forma_pag.OnChange := nil;
            dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_FORMA_PAG').Text := '';
            dmGeral.FAT_CD_M_XML_TITid_forma_pag.OnChange := dmGeral.FAT_CD_M_XML_TITid_forma_pagChange;
            exit;
          end;

       if not dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
         begin
           ShowMessage('Só é permitido forma de pagamento do tipo "A prazo".');
           dmGeral.FAT_CD_M_XML_TITid_forma_pag.OnChange := nil;
           dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_FORMA_PAG').text := '';
           dmGeral.FAT_CD_M_XML_TITid_forma_pag.OnChange := dmGeral.FAT_CD_M_XML_TITid_forma_pagChange;
           exit;
          end;

       if not (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,4]) then
         begin
           ShowMessage('Só é permitido forma de pagamento do tipo: Duplicata, Promissória ou Boleto.');
           dmGeral.FAT_CD_M_XML_TITid_forma_pag.OnChange := nil;
           dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_FORMA_PAG').text := '';
           dmGeral.FAT_CD_M_XML_TITid_forma_pag.OnChange := dmGeral.FAT_CD_M_XML_TITid_forma_pagChange;
           exit;
         end;

       dmGeral.FAT_CD_M_XML_TIT.FieldByName('INT_NOMEFPG').AsString    :=
              dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
       dmGeral.FAT_CD_M_XML_TIT.FieldByName('ID_PLANO').AsString := trim(dmGeral.BUS_CD_C_FPG.FieldByName('COM_ID_PLANO').AsString);
       dmGeral.BUS_CD_C_FPG.Close;
     end;
end;


procedure FatValidaXml(cdsNota, cdsItens, cdsTitulos: TClientDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  if trim(cdsNota.FieldByName('CFOP').AsString)='' then
     begin
       xMensErro:= xMensErro + '.CFOP deve ser informado.'+ #13;
     end;

  if trim(cdsNota.FieldByName('ID_TIPO_ESTOQUE').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Tipo de estoque deve ser informado.'+ #13;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
        if (cdsNota.FieldByName('ID_ALMOXARIFADO').IsNull) or
           (cdsNota.FieldByName('ID_ALMOXARIFADO').AsInteger = 0) then
           begin
             xMensErro := xMensErro + '.Almoxarifado deve ser informado' + #13;
           end;
     end;

  if trim(cdsNota.FieldByName('ID_CONDICAO_PAG').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Condição de pagamento deve ser informado.'+ #13;
     end
  else
     begin
       dmGeral.BusCondPgto(0,cdsNota.FieldByName('ID_CONDICAO_PAG').AsString);
       if (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger in [0,1]) then
          begin
            if cdsTitulos.RecordCount = 0 then
               begin
                 xMensErro:= xMensErro + '.Nenhum título foi informado.'+ #13;
               end;
          end
       else
          begin
            if cdsTitulos.RecordCount > 0  then
              begin
               xMensErro:= xMensErro + '.Condição de pagamento não permite títulos na nota.'+ #13;
              end;
          end;
     end;

  if (cdsNota.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
     begin
       dmGeral.BUS_CD_M_NFE.Close;
       dmGeral.BUS_CD_M_NFE.Data :=
       dmGeral.BUS_CD_M_NFE.DataRequest(
                          VarArrayOf([93, '0',cdsNota.FieldByName('NREF_CHAVE').AsString,cdsNota.FieldByName('ID_EMPRESA').AsString]));

       if dmGeral.BUS_CD_M_NFE.IsEmpty then
         xMensErro := xMensErro +'Não foi encontrada nota de referência de nº chave '+cdsNota.FieldByName('NREF_CHAVE').AsString+#13;
       dmGeral.BUS_CD_M_NFE.Close;
     end;

  if cdsItens.RecordCount = 0 then
     begin
       xMensErro := xMensErro + '.Nenhum item foi informado na nota.'+ #13;
     end;

  dmGeral.BUS_CD_C_CPG.Close;

  if xMensErro <> '' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure FatValidaXmlIte(cdsItens: TClientDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  cdsItens.First;
  while not cdsItens.eof do
     begin
       if ((cdsItens.FieldByName('VLR_BRUTO').AsCurrency > 0) and
          (trim(cdsItens.FieldByName('ID_ITEM').AsString) = '')) then
          begin
            xMensErro:= xMensErro + '.Existe item sem código.'+ #13;
          end;

       if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
          begin
             if (trim(cdsItens.FieldByName('ID_COR').AsString) = '') or
                (cdsItens.FieldByName('ID_COR').AsInteger = 0) then
                begin
                  xMensErro:= xMensErro + '.Existe item sem COR informada.'+ #13;
                end;
          end;

       if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
          begin
             if (trim(cdsItens.FieldByName('ID_TAMANHO').AsString) = '') or
                (cdsItens.FieldByName('ID_TAMANHO').AsInteger = 0) then
                begin
                  xMensErro:= xMensErro + '.Existe item sem TAMANHO informado.'+ #13;
                end;
          end;

       cdsItens.Next;
     end;

  cdsItens.First;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure FatValidaXmlTit(cdsTitulos: TClientDataSet);
var
  xMensErro:string;
begin

  xMensErro := '';
  cdsTitulos.First;
  while ((not cdsTitulos.eof) and (xMensErro = '')) do
    begin
      if trim(cdsTitulos.FieldByName('ID_FORMA_PAG').AsString) = '' then
         begin
           xMensErro:= xMensErro + '.Existe título sem forma de pagamento.'+ #13;
         end;
    cdsTitulos.Next;
  end;

  cdsTitulos.First;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;



procedure FatValidaXmlLote(cdsItens,cdsLote: TClientDataSet);
var
  xMensErro:string;
  valor:Currency;
begin

  xMensErro := '';
  cdsItens.First;
  while (not cdsItens.eof) do
    begin

     if (cdsItens.FieldByname('INT_UTILIZA_LOTE').AsBoolean) then
       begin
         valor := 0;
         cdsLote.First;
         while (not cdsLote.eof) do
           begin
              valor := valor + cdsLote.FieldByname('QTDE').AsCurrency;
             cdsLote.Next;
           end;

         if  (cdsItens.FieldByname('qtde').AsCurrency<> valor) then
           begin
               xMensErro := xMensErro + 'Seq '+cdsItens.FieldByName('seq').AsString+' - '+
                ' XML:'+cdsItens.FieldByname('qtde').AsString +'  Lote:'+CurrToStr(valor) +#13;
           end;
       end;

     cdsItens.Next;
   end;



  if xMensErro<>'' then
    begin
     xMensErro := 'Os seguintes itens apresentam diferença no somátorio da qtde nos lotes com qtde do XML:'+#13+xMensErro;
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
    end;
end;


procedure GravarDadosNaNfe(cdsPai,cdsItens,cdsItensLot,cdsTitulos: TClientDataSet);
var
  codigo:string;
  SMPrincipal : TSMClient;
  i,qtdeRegIte: integer;
  vlrFreCustoAcum:Currency;
begin

  dmGeral.BusFornecedor(2,cdsPai.FieldByName('CNPJ_EMITENTE').AsString);

  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
  dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([0, '']));

  dmGeral.FAT_CD_M_NFE.Insert;

  dmGeral.BusCodigoRevListMestre(true,false,'EST_FM_M_NFE',xCodLme,xRevLme,dmGeral.FAT_CD_M_NFE);

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_CFO').AsString                   := cdsPai.FieldByName('CFOP').Asstring;
  dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString                  := 'E';
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_RESPONSAVEL').AsInteger          := xFuncionario;

  dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime            := cdsPai.FieldByName('DTA_EMISSAO').AsDateTime;

  dmGeral.FAT_CD_M_NFE.FieldByName('DTA_DOCUMENTO').AsDateTime          := xDataSis;

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsInteger         := cdsPai.FieldByName('ID_CONDICAO_PAG').AsInteger;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger     := cdsPai.FieldByName('ID_TIPO_ESTOQUE').AsInteger;;

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_IQM').AsInteger                  := cdsPai.FieldByName('ID_IQM').AsInteger;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_ALMOXARIFADO').AsString          := cdsPai.FieldByName('ID_ALMOXARIFADO').AsString;
  dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsInteger             := dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
  dmGeral.FAT_CD_M_NFE.FieldByName('UF_EMITENTE').AsString              := dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').AsString;
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_EMITENTE').AsString             := '1';   // Nota de Terceiros
  dmGeral.FAT_CD_M_NFE.FieldByName('STATUS').AsInteger                  :=  1;    // Encerrada
  dmGeral.FAT_CD_M_NFE.FieldByName('ORIGEM_NF').AsString                := 'X';
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_OPERACAO').AsString             := '0';
  dmGeral.FAT_CD_M_NFE.FieldByName('CPF_CNPJ').AsString                 := dmGeral.BUS_CD_C_FOR.FieldByName('DOC_CNPJ').AsString;;
  dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').AsInteger                  := cdsPai.FieldByName('NOTA_FISCAL').AsInteger;
  dmGeral.FAT_CD_M_NFE.FieldByName('SERIE').AsString                    := cdsPai.FieldByName('SERIE').AsString;
  dmGeral.FAT_CD_M_NFE.FieldByName('SUB_SERIE').AsString                := '';
  dmGeral.FAT_CD_M_NFE.FieldByName('MODELO').AsString                   := '55';
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_CHAVE').AsString                := cdsPai.FieldByName('CHAVE').AsString;

  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency         := cdsPai.FieldByName('VLR_BRUTO').AsCurrency;
  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_ICM_DESC').AsCurrency           := cdsPai.FieldByName('VLR_ICM_DESC').AsCurrency;
  dmGeral.FAT_CD_M_NFE.FieldByName('FRE_VALOR').AsCurrency              := cdsPai.FieldByName('FRE_VALOR').AsCurrency;
  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS').AsCurrency             := cdsPai.FieldByName('VLR_OUTRAS').AsCurrency;
  dmGeral.FAT_CD_M_NFE.FieldByName('VLR_OUTRAS_DESP').AsCurrency        := cdsPai.FieldByName('VLR_OUTRAS_DESP').AsCurrency;
  dmGeral.FAT_CD_M_NFE.FieldByName('IPI_VALOR').AsCurrency              := cdsPai.FieldByName('IPI_VALOR').AsCurrency;
  dmGeral.FAT_CD_M_NFE.FieldByName('ICM_S_VALOR').AsCurrency            := cdsPai.FieldByName('ICM_S_VALOR').AsCurrency;
  dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger          := cdsPai.FieldByName('NFE_FINALIDADE').AsInteger;

  dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_FRETE').AsInteger := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency      := 0;
  dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger       := 1;



  if (cdsPai.FieldByName('NOTA_FISCAL').AsInteger>0) then
     begin
      dmGeral.BusConhecimento(cdsPai.FieldByName('ID_EMPRESA').AsString,
                                    cdsPai.FieldByName('NOTA_FISCAL').AsString,
                                    dmGeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString);
      if not dmGeral.BUS_CD_M_NFE_NFF.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_FRETE').AsInteger := dmGeral.BUS_CD_M_NFE_NFF.FieldByName('ID_FISCAL').AsInteger;
           dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency      := dmGeral.BUS_CD_M_NFE_NFF.FieldByName('VLR_FRETE').AsCurrency;
           dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger       := dmGeral.BUS_CD_M_NFE_NFF.FieldByName('IND_FRETE').AsInteger;
         end
      else
         begin
           dmGeral.FAT_CD_M_NFE.FieldByName('IND_FRETE').AsInteger       := 1;
         end;
      dmGeral.BUS_CD_M_NFE_NFF.close;
     end;

  if (cdsPai.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
     begin
       dmGeral.BUS_CD_M_NFE.Close;
       dmGeral.BUS_CD_M_NFE.Data :=
       dmGeral.BUS_CD_M_NFE.DataRequest(
                          VarArrayOf([93, '0',cdsPai.FieldByName('NREF_CHAVE').AsString,cdsPai.FieldByName('ID_EMPRESA').AsString]));

       if not dmGeral.BUS_CD_M_NFE.IsEmpty then
         dmGeral.FAT_CD_M_NFE.FieldByName('id_fiscal_ref_comp').AsInteger := dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger;
       dmGeral.BUS_CD_M_NFE.Close;
     end;


  cdsItens.First;
  qtdeRegIte := cdsItens.RecordCount;
  vlrFreCustoAcum := 0;
  i := 0;
  while not cdsItens.eof do
     begin
       if (((cdsItens.FieldByName('VLR_BRUTO').AsCurrency >0) and (cdsPai.FieldByName('NFE_FINALIDADE').AsInteger=1)) or
          ((cdsPai.FieldByName('NFE_FINALIDADE').AsInteger =2) AND
           ((cdsItens.FieldByName('QTDE').AsCurrency>0) or
            (cdsItens.FieldByName('VLR_BRUTO').AsCurrency>0) or
            (cdsItens.FieldByName('icm_n_valor').AsCurrency>0)))) then
            begin
              if (cdsItensLot.RecordCount=0) or   (not (cdsItens.FieldByName('INT_UTILIZA_LOTE').AsBoolean=true))  then
                begin
                   dmGeral.FAT_CD_M_NFE_ITE.Insert;

                   //Busca sequencia no servidor
                   SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                   try
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger  :=
                                   SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
                   finally
                     FreeAndNil(SMPrincipal);
                   end;
                   dmGeral.BusItens(0,cdsItens.FieldByName('ID_ITEM').AsString);

                   dmGeral.FAT_CD_M_NFE_ITEid_item.AsInteger               := cdsItens.FieldByName('ID_ITEM').AsInteger;
                   dmGeral.FAT_CD_M_NFE_ITEid_busca_item.AsString          := cdsItens.FieldByName('ID_BUSCA_ITEM').AsString;
                   dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_xml.AsInteger  := cdsItens.FieldByName('SEQ').AsInteger;
                   dmGeral.FAT_CD_M_NFE_ITEid_sequencia_ite_iqm.AsInteger  := cdsItens.FieldByName('id_sequencia_ite_iqm').AsInteger;
                   dmGeral.FAT_CD_M_NFE_ITEID_ST_ICM.AsString              := cdsItens.FieldByName('ID_CST_ICMS').AsString;
                   dmGeral.FAT_CD_M_NFE_ITEid_cfo.AsString                 := cdsItens.FieldByName('ID_CFOP').AsString;


                   if (not dmGeral.BUS_CD_C_ITE.IsEmpty) and
                      (trim(dmGeral.BUS_CD_C_ITE.FieldByName('id_und_compra').AsString) = trim(cdsItens.FieldByName('UND').AsString)) and
                      (dmGeral.BUS_CD_C_ITE.FieldByName('emb_compra').AsString <> '') and (dmGeral.BUS_CD_C_ITE.FieldByName('emb_compra').AsCurrency >0) and
                      (dmGeral.BUS_CD_C_ITE.FieldByName('emb_venda').AsString <> '') and (dmGeral.BUS_CD_C_ITE.FieldByName('emb_venda').AsCurrency >0)   then
                      begin
                        dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat := RoundTo((cdsItens.FieldByName('QTDE').AsFloat*dmGeral.BUS_CD_C_ITE.FieldByName('emb_compra').AsFloat)/
                                                                                        dmGeral.BUS_CD_C_ITE.FieldByName('emb_venda').AsFloat,-4);
                      end
                   else
                      begin
                         dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat  := cdsItens.FieldByName('QTDE').AsFloat;
                      end;

                   dmGeral.FAT_CD_M_NFE_ITEvlr_unitario.AsCurrency := RoundTo(cdsItens.FieldByName('VLR_BRUTO').AsCurrency/dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat,-4);


                   dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency       := cdsItens.FieldByName('VLR_BRUTO').AsCurrency;
                   dmGeral.FAT_CD_M_NFE_ITEvlr_liquido.AsCurrency          := cdsItens.FieldByName('VLR_LIQUIDO').AsCurrency;
                   dmGeral.FAT_CD_M_NFE_ITEint_tipo_item.AsString          := dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;
                   dmGeral.FAT_CD_M_NFE_ITEorigem_mercadoria.AsString      := cdsItens.FieldByName('origem_mercadoria').AsString;//dmGeral.BUS_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;
                   dmGeral.FAT_CD_M_NFE_ITEint_origem.AsString             := cdsItens.FieldByName('origem_mercadoria').AsString;
                   dmGeral.FAT_CD_M_NFE_ITEid_cor.AsInteger                := cdsItens.FieldByName('ID_COR').AsInteger;
                   dmGeral.FAT_CD_M_NFE_ITEid_tamanho.AsInteger            := cdsItens.FieldByName('ID_TAMANHO').AsInteger;
                   dmGeral.FAT_CD_M_NFE_ITEnum_lote.AsString               := cdsItens.FieldByName('NUM_LOTE').AsString;
                   dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.AsCurrency         := cdsItens.FieldByName('VLR_DESCONTO').AsCurrency;

                   if dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.AsCurrency <> cdsItens.FieldByName('VLR_DESCONTO').AsCurrency then
                    begin
                      Showmessage('Erro na hora de importar "valor de desconto".');
                      abort;
                    end;



                   //dmGeral.BusItens(0,dmGeral.FAT_CD_M_NFE_ITEid_item.AsString);
                   dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFEid_tipo_mov_estoque.AsString);

                   if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 1) then
                     begin
                       dmGeral.FAT_CD_M_NFE_ITEid_st_ipi.AsString :=
                                    dmGeral.BUS_CD_C_ITE.FieldByName('INT_IPI_ENTRADA').AsString;


                       if dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger = 2 then
                        begin
                         dmGeral.FAT_CD_M_NFE_ITEid_st_pis.AsString := '99';
                         dmGeral.FAT_CD_M_NFE_ITEid_st_cof.AsString := '99';
                        end
                       else
                        begin
                         dmGeral.FAT_CD_M_NFE_ITEid_st_pis.AsString :=
                               dmGeral.BUS_CD_C_ITE.FieldByName('INT_PIS_ENTRADA').AsString;
                         dmGeral.FAT_CD_M_NFE_ITEid_st_cof.AsString :=
                               dmGeral.BUS_CD_C_ITE.FieldByName('INT_COF_ENTRADA').AsString;
                        end;
                     end;

                   if (dmGeral.FAT_CD_M_NFE.FieldByName('NFE_FINALIDADE').AsInteger = 2) then
                     begin
                       dmGeral.FAT_CD_M_NFE_ITEid_st_ipi.AsString := '49';
                       dmGeral.FAT_CD_M_NFE_ITEid_st_pis.AsString := '99';
                       dmGeral.FAT_CD_M_NFE_ITEid_st_cof.AsString := '99';
                     end;

                    dmGeral.FAT_CD_M_NFE_ITEICM_N_ALIQUOTA.AsCurrency      := cdsItens.FieldByName('icm_n_aliquota').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEicm_per_reducao.AsCurrency     := cdsItens.FieldByName('icm_per_reducao').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency          := cdsItens.FieldByName('icm_n_base').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency         := cdsItens.FieldByName('icm_n_valor').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency          := cdsItens.FieldByName('icm_s_base').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency         := cdsItens.FieldByName('icm_s_valor').AsCurrency;

                    dmGeral.FAT_CD_M_NFE_ITEvlr_outras_desp.AsCurrency     := cdsItens.FieldByName('vlr_outras_desp').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEvlr_outras.AsCurrency          := cdsItens.FieldByName('vlr_outras').AsCurrency;

                    dmGeral.FAT_CD_M_NFE_ITEipi_base.AsCurrency            := cdsItens.FieldByName('ipi_base').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEipi_aliquota.AsCurrency        := cdsItens.FieldByName('ipi_aliquota').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEipi_valor.AsCurrency           := cdsItens.FieldByName('ipi_valor').AsCurrency;

                    dmGeral.FAT_CD_M_NFE_ITEpis_base.AsCurrency            := cdsItens.FieldByName('pis_base').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEpis_aliquota.AsCurrency        := cdsItens.FieldByName('pis_aliquota').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEpis_valor.AsCurrency           := cdsItens.FieldByName('pis_valor').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEpis_valor_st.AsCurrency        := 0;

                    dmGeral.FAT_CD_M_NFE_ITEiss_base.AsCurrency            := 0;
                    dmGeral.FAT_CD_M_NFE_ITEiss_aliquota.AsCurrency        := 0;
                    dmGeral.FAT_CD_M_NFE_ITEiss_valor.AsCurrency           := 0;

                    dmGeral.FAT_CD_M_NFE_ITEfre_base.AsCurrency            := 0;
                    dmGeral.FAT_CD_M_NFE_ITEfre_percentual.AsCurrency      := 0;
                    dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           := 0;
                    dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency           := cdsItens.FieldByName('fre_valor').AsCurrency;


                    if (dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency >0) then
                      begin
                         dmGeral.FAT_CD_M_NFE_ITEfre_percentual.AsCurrency :=
                                       (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency/
                                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency)*100;
                        if (i = (qtdeRegIte-1)) then
                           begin
                             dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           :=
                                                   dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency - vlrFreCustoAcum;
                           end
                        else
                           begin
                             dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           :=
                                                   RoundTo(dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency*
                                                   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('fre_percentual').AsCurrency/100),-2);
                             vlrFreCustoAcum := vlrFreCustoAcum + dmGeral.FAT_CD_M_NFE_ITE.FieldByName('fre_custo').AsCurrency;
                           end;
                        i := i + 1;
                      end;


                    dmGeral.FAT_CD_M_NFE_ITEfre_dif_aliq_icm.AsFloat       := 0;
                    dmGeral.FAT_CD_M_NFE_ITEfre_vlr_dif_icm.AsCurrency     := 0;

                    dmGeral.FAT_CD_M_NFE_ITEcof_base.AsCurrency            := cdsItens.FieldByName('cof_base').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEcof_aliquota.AsCurrency        := cdsItens.FieldByName('cof_aliquota').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEcof_valor.AsCurrency           := cdsItens.FieldByName('cof_valor').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEcof_valor_st.AsCurrency        := 0;

                    dmGeral.FAT_CD_M_NFE_ITEvlr_icm_desc.AsCurrency        := cdsItens.FieldByName('vlr_icm_desc').AsCurrency;
                    dmGeral.FAT_CD_M_NFE_ITEmotivo_icms_des.AsString      := cdsItens.FieldByName('motivo_icms_des').AsString;


                    dmGeral.BUS_CD_C_ITE.Close;

                    CalcPesoItem(dmGeral.FAT_CD_M_NFE_ITE);


                    dmGeral.FAT_CD_M_NFE_ITE.Post;
                end;

              if (cdsItensLot.RecordCount>0) and
                 ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean = true ) and
                 (dmGeral.FAT_CD_M_XML_ITE.FieldByname('INT_UTILIZA_LOTE').AsBoolean=true)) then
                 begin
                     if (dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency >0) then
                      begin
                         dmGeral.FAT_CD_M_NFE_ITEfre_percentual.AsCurrency :=
                                       (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency/
                                        dmGeral.FAT_CD_M_NFE.FieldByName('VLR_MERCADORIA').AsCurrency)*100;
                        if (i = (qtdeRegIte-1)) then
                           begin
                             dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           :=
                                                   dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency - vlrFreCustoAcum;
                           end
                        else
                           begin
                             dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           :=
                                                   RoundTo(dmGeral.FAT_CD_M_NFE.FieldByName('FRE_CUSTO').AsCurrency*
                                                   (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('fre_percentual').AsCurrency/100),-2);
                             vlrFreCustoAcum := vlrFreCustoAcum + dmGeral.FAT_CD_M_NFE_ITE.FieldByName('fre_custo').AsCurrency;
                           end;
                        i := i + 1;
                      end;
                     GerarFatItensLote(cdsPai,cdsItens,cdsItensLot,dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency);
                 end;



           end;
       cdsItens.Next;
     end;
  cdsTitulos.First;
  while not cdsTitulos.eof do
     begin
       dmGeral.FAT_CD_M_NFE_TIT.Insert;

       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         dmGeral.FAT_CD_M_NFE_TITid_nfe_tit.AsInteger :=
              SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
       finally
         FreeAndNil(SMPrincipal);
       end;

       dmGeral.FAT_CD_M_NFE_TITid_forma_pag.AsInteger  := cdsTitulos.FieldByName('ID_FORMA_PAG').AsInteger;
       dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').Text);
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_CCUSTO').Text := dmGeral.BUS_CD_C_FPG.FieldByName('ID_CCUSTO').Text;
       dmGeral.FAT_CD_M_NFE_TITid_plano.AsString         := cdsTitulos.FieldByName('ID_PLANO').AsString;
       dmGeral.FAT_CD_M_NFE_TITdta_vencimento.AsDateTime := cdsTitulos.FieldByName('DTA_VENCIMENTO').AsDateTime;
       dmGeral.FAT_CD_M_NFE_TITnum_parcela.AsString      := '0';
       dmGeral.FAT_CD_M_NFE_TITdias.AsInteger            :=
               dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                       dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsVariant;
       dmGeral.FAT_CD_M_NFE_TITvlr_titulo.AsCurrency     := cdsTitulos.FieldByName('VLR_TITULO').AsCurrency;

       dmGeral.FAT_CD_M_NFE_TIT.Post;
       cdsTitulos.Next;
     end;

  FAT_RN_M_NFE.FatGravarNumParcNfe(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_TIT);

  if not dmGeral.BUS_CD_C_ITE_XML.IsEmpty then
     begin
       try
         dmGeral.BUS_CD_C_ITE_XML.ApplyUpdates(0);
       except
         on e: exception do
            begin
              Showmessage('Erro ao atualizar a tabela CAD_TB_C_ITE_XML. ' + #13 + e.Message);
            end;
       end;
     end;

  TesteXmlNfe;

  codigo:=dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
  DmGeral.Grava(dmGeral.FAT_CD_M_NFE);
  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
             dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                                                            'E',codigo]));
end;

procedure TesteXmlNfe;
var
  xMensErro,codSeq:string;
  vlrLiq:Currency;
begin
  xMensErro := '';

  if (abs(dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsCurrency -
    dmGeral.FAT_CD_M_XML.FieldByName('VLR_LIQUIDO').AsCurrency)>0.03) then
    begin
      xMensErro := '.O valor liquido de importação difere do valor liquido da nota fiscal ' + #13 +
                   'Valor líquido NF-e: ' + dmGeral.FAT_CD_M_NFE.FieldByName('VLR_LIQUIDO').AsString + #13 +
                   'Valor líquido XML: ' + dmGeral.FAT_CD_M_XML.FieldByName('VLR_LIQUIDO').AsString + #13;
    end;

  dmgeral.FAT_CD_M_NFE_ITE.IndexFieldNames := 'id_sequencia_ite_xml';
  dmGeral.FAT_CD_M_NFE_ITE.First;

  while not dmGeral.FAT_CD_M_NFE_ITE.eof do
    begin


      if dmGeral.FAT_CD_M_XML_ITE.Locate('SEQ', trim(dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_sequencia_ite_xml').AsString),[]) then
        begin
          if (dmgeral.FAT_CD_M_XML_ITE_LOT.RecordCount>0) then
            begin
               vlrLiq := 0;
               CodSeq := dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_sequencia_ite_xml').AsString;
               while ((not dmGeral.FAT_CD_M_NFE_ITE.eof)  and
                     (codSeq =dmGeral.FAT_CD_M_NFE_ITE.FieldByName('id_sequencia_ite_xml').AsString))  do
                  begin
                   vlrLiq := vlrLiq + dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                   dmGeral.FAT_CD_M_NFE_ITE.Next;
                  end;
               if ( vlrLiq <> dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_LIQUIDO').AsCurrency) then
                begin
                  xMensErro := '.O valor liquido do itens Nº '+
                  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString+
                  ' de importação difere do valor liquido do item da nota fiscal, ' + #13 +
                  ' Valor líquido item na NF-e: ' + CurrToStr(vlrLiq) + #13 +
                  ' Valor líquido item no XML: ' + dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_LIQUIDO').AsString + #13;
                end;
            end
          else
            begin
              if (dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency <>
                dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_LIQUIDO').AsCurrency) then
                begin
                  xMensErro := '.O valor liquido do itens Nº '+
                  dmGeral.FAT_CD_M_XML_ITE.FieldByName('ID_ITEM').AsString+
                  ' de importação difere do valor liquido do item da nota fiscal, ' + #13 +
                  ' Valor líquido item na NF-e: ' + dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsString + #13 +
                  ' Valor líquido item no XML: ' + dmGeral.FAT_CD_M_XML_ITE.FieldByName('VLR_LIQUIDO').AsString + #13;
                end;
               dmGeral.FAT_CD_M_NFE_ITE.Next;
            end;
        end
      else
        begin
         dmGeral.FAT_CD_M_NFE_ITE.Next;
        end;
    end;

  if xMensErro <> '' then
    begin
      dmGeral.FAT_CD_M_NFE.Cancel;
      raise Exception.Create(xMensErro);
    end;
end;


end.
