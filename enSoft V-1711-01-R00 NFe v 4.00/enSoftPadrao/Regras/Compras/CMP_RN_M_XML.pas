unit CMP_RN_M_XML;

interface

uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,
     Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms,Datasnap.DBClient,ACBrNFe;

procedure GravarDadosNaNfe(origem:integer;cdsPai,cdsItens,cdsTitulos: TClientDataSet; NFE: TACBrNFe);
procedure CmpValidaNfe(cdsNota, cdsItens, cdsTitulos: TClientDataSet);

procedure CmpValidaNfeIte(cdsItens: TClientDataSet);
procedure CmpValidaNfeTit(cdsTitulos: TClientDataSet);

implementation

Uses uDmGeral,enConstantes, uProxy, FAT_RN_M_NFE;

procedure GravarDadosNaNfe(origem:integer;cdsPai,cdsItens,cdsTitulos: TClientDataSet;NFE: TACBrNFe);
var
  codigo:string;
  SMPrincipal : TSMClient;
  i: integer;
begin

  {Origem
    0 - CMP_FM_M_XML
    1 - EST_FM_M_XML
  }


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

  cdsItens.First;
  while not cdsItens.eof do
     begin
       dmGeral.FAT_CD_M_NFE_ITE.Insert;

       //Busca sequencia no servidor
       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger := SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
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
       dmGeral.FAT_CD_M_NFE_ITEqtde.AsFloat                    := cdsItens.FieldByName('QTDE').AsFloat;
       dmGeral.FAT_CD_M_NFE_ITEvlr_unitario.AsCurrency         := cdsItens.FieldByName('VLR_UNITARIO').AsCurrency;
       dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.AsCurrency         := cdsItens.FieldByName('VLR_DESCONTO').AsCurrency;
       dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.AsCurrency       := cdsItens.FieldByName('VLR_BRUTO').AsCurrency;
       dmGeral.FAT_CD_M_NFE_ITEvlr_liquido.AsCurrency          := cdsItens.FieldByName('VLR_LIQUIDO').AsCurrency;
       dmGeral.FAT_CD_M_NFE_ITEint_tipo_item.AsString          := dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;
       dmGeral.FAT_CD_M_NFE_ITEorigem_mercadoria.AsString      := dmGeral.BUS_CD_C_ITE.FieldByName('INT_ORIGEM').AsString;

       dmGeral.FAT_CD_M_NFE_ITEid_cor.AsInteger                := cdsItens.FieldByName('ID_COR').AsInteger;
       dmGeral.FAT_CD_M_NFE_ITEid_tamanho.AsInteger            := cdsItens.FieldByName('ID_TAMANHO').AsInteger;
       dmGeral.FAT_CD_M_NFE_ITEnum_lote.AsString               := cdsItens.FieldByName('NUM_LOTE').AsString;


       dmGeral.BusItens(0,dmGeral.FAT_CD_M_NFE_ITEid_item.AsString);
       dmGeral.BusTipoEstoque(0,dmGeral.FAT_CD_M_NFEid_tipo_mov_estoque.AsString);

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

       if (origem = 0) then
          begin
             for i := 0 to NFE.NotasFiscais.Items[0].NFe.Det.Count - 1 do
                begin

                  if dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA_ITE_XML').AsInteger = NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.nItem then
                     begin
                        //dmGeral.FAT_CD_M_NFE_ITE.Edit;

                        dmGeral.FAT_CD_M_NFE_ITEICM_N_ALIQUOTA.AsCurrency      := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.pICMS;
                        dmGeral.FAT_CD_M_NFE_ITEicm_per_reducao.AsCurrency     := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.pRedBC;
                        dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency          := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vBC;
                        dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency         := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vICMS;
                        dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency          := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vBCST;
                        dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency         := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vICMSST;

                        dmGeral.FAT_CD_M_NFE_ITEvlr_outras_desp.AsCurrency     := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vOutro;

                        dmGeral.FAT_CD_M_NFE_ITEipi_base.AsCurrency            := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.IPI.vBC;
                        dmGeral.FAT_CD_M_NFE_ITEipi_aliquota.AsCurrency        := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.IPI.pIPI;
                        dmGeral.FAT_CD_M_NFE_ITEipi_valor.AsCurrency           := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.IPI.vIPI;

                        dmGeral.FAT_CD_M_NFE_ITEpis_base.AsCurrency            := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.PIS.vBC;
                        dmGeral.FAT_CD_M_NFE_ITEpis_aliquota.AsCurrency        := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.PIS.pPIS;
                        dmGeral.FAT_CD_M_NFE_ITEpis_valor.AsCurrency           := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.PIS.vPIS;
                        dmGeral.FAT_CD_M_NFE_ITEpis_valor_st.AsCurrency        := 0;

                        dmGeral.FAT_CD_M_NFE_ITEiss_base.AsCurrency            := 0;
                        dmGeral.FAT_CD_M_NFE_ITEiss_aliquota.AsCurrency        := 0;
                        dmGeral.FAT_CD_M_NFE_ITEiss_valor.AsCurrency           := 0;

                        dmGeral.FAT_CD_M_NFE_ITEfre_base.AsCurrency            := 0;
                        dmGeral.FAT_CD_M_NFE_ITEfre_percentual.AsCurrency      := 0;
                        dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency           := NFE.NotasFiscais.Items[0].NFe.Det[i].Prod.vFrete;

                        dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           := 0;

                        dmGeral.FAT_CD_M_NFE_ITEfre_dif_aliq_icm.AsFloat       := 0;
                        dmGeral.FAT_CD_M_NFE_ITEfre_vlr_dif_icm.AsCurrency     := 0;

                        dmGeral.FAT_CD_M_NFE_ITEcof_base.AsCurrency            := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.COFINS.vBC;
                        dmGeral.FAT_CD_M_NFE_ITEcof_aliquota.AsCurrency        := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.COFINS.pCOFINS;
                        dmGeral.FAT_CD_M_NFE_ITEcof_valor.AsCurrency           := NFE.NotasFiscais.Items[0].NFe.Det[i].Imposto.COFINS.vCOFINS;
                        dmGeral.FAT_CD_M_NFE_ITEcof_valor_st.AsCurrency        := 0;

                     end;
                end;
            end;

         if (origem = 1) then
           begin
              dmGeral.FAT_CD_M_NFE_ITEICM_N_ALIQUOTA.AsCurrency      := cdsItens.FieldByName('icm_n_aliquota').AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEicm_per_reducao.AsCurrency     := cdsItens.FieldByName('icm_per_reducao').AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEicm_n_base.AsCurrency          := cdsItens.FieldByName('icm_n_base').AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEicm_n_valor.AsCurrency         := cdsItens.FieldByName('icm_n_valor').AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEicm_s_base.AsCurrency          := cdsItens.FieldByName('icm_s_base').AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEicm_s_valor.AsCurrency         := cdsItens.FieldByName('icm_s_valor').AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEvlr_outras_desp.AsCurrency     := cdsItens.FieldByName('vlr_outras_desp').AsCurrency;

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
              dmGeral.FAT_CD_M_NFE_ITEfre_valor.AsCurrency           := cdsItens.FieldByName('fre_valor').AsCurrency;

              dmGeral.FAT_CD_M_NFE_ITEfre_custo.AsCurrency           := 0;

              dmGeral.FAT_CD_M_NFE_ITEfre_dif_aliq_icm.AsFloat       := 0;
              dmGeral.FAT_CD_M_NFE_ITEfre_vlr_dif_icm.AsCurrency     := 0;

              dmGeral.FAT_CD_M_NFE_ITEcof_base.AsCurrency            := cdsItens.FieldByName('cof_base').AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEcof_aliquota.AsCurrency        := cdsItens.FieldByName('cof_aliquota').AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEcof_valor.AsCurrency           := cdsItens.FieldByName('cof_valor').AsCurrency;
              dmGeral.FAT_CD_M_NFE_ITEcof_valor_st.AsCurrency        := 0;
           end;

       dmGeral.BUS_CD_C_ITE.Close;

       // 09/03/2016  esse código foi colocado no BeforePost do FAT_CD_M_NFE_ITE.
         // por Maxsuel Victor
       //dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_CUSTO').AsCurrency :=
       //        FAT_RN_M_NFE.CalcVlrCustoIteEntrada(dmGeral.FAT_CD_M_NFE_ITE);


       dmGeral.FAT_CD_M_NFE_ITE.Post;
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
  codigo:=dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
  DmGeral.Grava(dmGeral.FAT_CD_M_NFE);
  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
             dmGeral.FAT_CD_M_NFE.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                                                            'E',codigo]));
end;

procedure CmpValidaNfe(cdsNota, cdsItens, cdsTitulos: TClientDataSet);
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


  if cdsItens.RecordCount = 0 then
     begin
       xMensErro := xMensErro + '.Nenhum item foi informado na nota.'+ #13;
     end;

  dmGeral.BUS_CD_C_CPG.Close;

  if xMensErro <> '' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure CmpValidaNfeIte(cdsItens: TClientDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  cdsItens.First;
  while not cdsItens.eof do
     begin
       if trim(cdsItens.FieldByName('ID_ITEM').AsString) = '' then
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

procedure CmpValidaNfeTit(cdsTitulos: TClientDataSet);
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

end.





