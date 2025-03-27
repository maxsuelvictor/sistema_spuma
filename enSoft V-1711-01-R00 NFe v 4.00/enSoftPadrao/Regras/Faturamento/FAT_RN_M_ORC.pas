unit FAT_RN_M_ORC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math, enFunc;

procedure FatValidaStatusOrcamento(DataSet:TDataSet);
procedure FatMascaraOrcamento(DataSet:TDataSet);
procedure FatMascaraOrcamentoIte(DataSet:TDataSet);

procedure FatNovoOrcamento(DataSet: TDataSet);
procedure FatNovoOrcamentoIte(DataSet: TDataSet);

procedure FatOrcRatearDescBasico_Especial;

procedure FatValidaOrcamentoIte(DataSet:TDataSet);
function FAT_CD_M_ORC_TesPermExclusao: Boolean;
function FAT_CD_M_ORC_TesCampos: Boolean;
function FAT_CD_M_ORC_ITE_TesCampos: boolean;
function FAT_CD_M_ORC_TesTotItensXTotOrc: Boolean;


procedure fatOrcCalcTotal;
procedure fatOrcCalcTotalItem;
procedure FatRatVlrEntreItensOrcamento2(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte,lNomeCampoPerIte: String;var codItensAcimaDesc:String;ativarVerDesc:boolean;
                                    int_unif_desc_reg:boolean);

procedure FAT_CD_M_ORC_ITEPER_DESCONTOChange(Sender: TField);

function  FatValidBloqueiaOrc(Letra: String): Boolean;


implementation
Uses uDmGeral,enConstantes, uProxy;


procedure FatValidaStatusOrcamento(DataSet:TDataSet);
begin
  if dmGeral.FAT_CD_M_ORCSTATUS.AsInteger = 1 then
     begin
       ShowMessage('Este orçamento não pode ser alterado pois já foi importado.');
       abort;
     end;
end;

procedure FatMascaraOrcamento(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_ORCVLR_DESC_ESPECIAL.DisplayFormat  :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_DESC_BASICO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCPER_DESC_ESPECIAL.DisplayFormat  :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCPER_DESC_BASICO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_FRETE.DisplayFormat          :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_BRUTO.DisplayFormat          :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_LIQUIDO.DisplayFormat        :=CMascaraValor;

  dmGeral.FAT_CD_M_ORCVLR_SERVICOS_BRU.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_PRODUTOS_BRU.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_DESCONTO_PRO.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_DESCONTO_SER.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_SERVICOS_LIQ.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_PRODUTOS_LIQ.DisplayFormat         :=CMascaraValor;
  dmGeral.FAT_CD_M_ORCVLR_TOTAL.DisplayFormat                :=CMascaraValor;
end;

procedure FatNovoOrcamento(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  dmGeral.FAT_CD_M_ORC.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FAT_CD_M_ORC.FieldByName('ID_ORCAMENTO').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_ORC');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.FAT_CD_M_ORC.FieldByName('ID_PEDIDO').AsInteger         := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ORCAMENTO').AsDateTime    := xDataSis;

  dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ENTREGA').AsDateTime :=
          dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ORCAMENTO').AsDateTime;

  dmGeral.FAT_CD_M_ORC.FieldByName('DTA_VALIDADE').AsDateTime := xDataSis + 5;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('fat_validade_orc').AsInteger > 0 then
     dmGeral.FAT_CD_M_ORC.FieldByName('DTA_VALIDADE').AsDateTime    := xDataSis +
                dmGeral.CAD_CD_C_PAR_CTR.FieldByName('fat_validade_orc').AsInteger;

  dmGeral.FAT_CD_M_ORC.FieldByName('STATUS').AsInteger            := 0;

  dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_ESPECIAL').AsCurrency  := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency  := 0;

  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_BRU').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_BRU').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_PRO').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_SER').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_LIQ').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_LIQ').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_TOTAL').AsCurrency        := 0;

  dmGeral.BusCodigoRevListMestre(true,false,'FAT_FM_M_ORC',xCodLme,xRevLme,dmGeral.FAT_CD_M_ORC);
end;

procedure fatOrcCalcTotal;
Var
  PonteiroItens : TBookmark;
begin


  //Totaliza o Orçamento
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_BRU').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_LIQ').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_PRO').AsCurrency := 0;

  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_BRU').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_LIQ').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_SER').AsCurrency := 0;

  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := 0;
  dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESCONTO').AsCurrency := 0;

  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency  := 0;
  //  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_TOTAL').AsCurrency        := 0;

  if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency = 0 then
     begin
       dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency  := 0;
       dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency  := 0;
     end;


  PonteiroItens := dmGeral.FAT_CD_M_ORC_ITE.GetBookmark;
  dmGeral.FAT_CD_M_ORC_ITE.First;
  if not dmGeral.FAT_CD_M_ORC_ITE.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_ORC_ITE.eof do
          begin

            dmGeral.BusItens(0,dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString);


            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency :=

                        dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency+
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency :=
                        dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency +
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency;

            if (dmGeral.FAT_CD_M_ORC.FieldByName('separa_prod_serv').AsBoolean = true) then
                begin
                 if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                    (NOT (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=true)) then
                   begin
                     dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_BRU').AsCurrency :=
                            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_BRU').AsCurrency +
                            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                     dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_SER').AsCurrency :=
                            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_SER').AsCurrency +
                             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                     dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_LIQ').AsCurrency :=
                            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_LIQ').AsCurrency+
                              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                   end
                 else if (pos(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_TIPO_ITEM').text,'00-01-02-03-04-05-06') <> 0) then
                   begin
                      dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_BRU').AsCurrency :=
                             dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_BRU').AsCurrency +
                             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                      dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_PRO').AsCurrency :=
                            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_PRO').AsCurrency +
                             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                      dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_LIQ').AsCurrency :=
                            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_LIQ').AsCurrency+
                              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                   end;
                end
            else
                begin
                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency :=
                      dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency +
                      dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                end;

            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_FRETE').AsCurrency :=
                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_FRETE').AsCurrency +
                  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_FRETE').AsCurrency;

            {dmGeral.FAT_CD_M_ORC.FieldByName('VLR_ICM_DESN').AsCurrency :=
                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_ICM_DESN').AsCurrency +
                  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_ICM_DESN').AsCurrency; }



            {if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then
               begin
                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_BRU').AsCurrency:=

                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_BRU').AsCurrency+
                    dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_LIQ').AsCurrency:=

                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_LIQ').AsCurrency+
                    dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_PRO').AsCurrency:=

                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_PRO').AsCurrency+
                    dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

               end
            else
               begin
                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_BRU').AsCurrency:=
                       dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_BRU').AsCurrency +
                       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_LIQ').AsCurrency:=
                       dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_LIQ').AsCurrency+
                       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_SER').AsCurrency:=

                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO_SER').AsCurrency+
                    dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

               end; }
            dmGeral.FAT_CD_M_ORC_ITE.Next;
          end;

        dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency :=
            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency -
               dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency;

        {dmGeral.FAT_CD_M_ORC.FieldByName('VLR_TOTAL').AsCurrency :=
               dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_LIQ').AsCurrency+
               dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_LIQ').AsCurrency; }

        if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
           begin
             dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESCONTO').AsCurrency :=
               RoundTo((dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                 dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency,-2);

             if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency = 0 then
                begin
                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency :=
                       dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency;

                  dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency :=
                      RoundTo( (( dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency -
                          dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency ) * 100 )
                        / dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency, -2);
                end;
           end;


         if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_BRU').AsCurrency > 0) then
           begin
             dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_PRODUTOS').AsCurrency :=
                 RoundTo(  (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_PRODUTOS_BRU').AsCurrency)*100,-2);
           end;

        if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_BRU').AsCurrency > 0) then
           begin
             dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_SERVICOS').AsCurrency :=
                 RoundTo(  (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_SERVICOS_BRU').AsCurrency)*100,-2);
           end;

        { if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
           begin
             dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_TERCEIRO').AsCurrency :=
                 RoundTo(  (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_TERCEIRO').AsCurrency)*100,-2);
           end; }

     end;
  dmGeral.FAT_CD_M_ORC_ITE.GotoBookmark(PonteiroItens);
//
end;

procedure FatMascaraOrcamentoIte(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_ORC_ITEVLR_UNITARIO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_ORC_ITEVLR_BRUTO.DisplayFormat       :=CMascaraValor;
  dmGeral.FAT_CD_M_ORC_ITEVLR_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_ORC_ITEVLR_LIQUIDO.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_ORC_ITEPER_DESCONTO.DisplayFormat    :=CMascaraValor;
end;


procedure FatNovoOrcamentoIte(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
     dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_SEQ_ITEM').AsInteger   :=
         SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_COR').AsInteger           := 0;
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_TAMANHO').AsInteger       := 0;
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('QTDE').AsFloat               := 0;
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_UNITARIO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency       := 0;
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency     := 0;
end;


procedure FatOrcRatearDescBasico_Especial;
var
  PercTemp: Currency;
  vlrBrutoTemp,vlrBrutoComDescBasicTemp: Currency;
  QtdeItens,i: integer;
begin


  vlrBrutoTemp := 0;
  vlrBrutoComDescBasicTemp := 0;

  dmGeral.FAT_CD_M_ORC_ITE.First;
  while not dmGeral.FAT_CD_M_ORC_ITE.eof do
      begin
        if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
            begin
              vlrBrutoTemp := vlrBrutoTemp + dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency;
            end;
        dmGeral.FAT_CD_M_ORC_ITE.Next;
      end;
  dmGeral.FAT_CD_M_ORC_ITE.First;

  QtdeItens := dmGeral.FAT_CD_M_ORC_ITE.RecordCount;

  i:=0;
  if QtdeItens > 1 then
     begin
       dmGeral.FAT_CD_M_ORC_ITE.BeforePost := nil;
       dmGeral.FAT_CD_M_ORC_ITE.AfterPost := nil;
     end;


  dmGeral.FAT_CD_M_ORC_ITE.First;
  while not dmGeral.FAT_CD_M_ORC_ITE.eof do
      begin

        inc(i);
        dmGeral.FAT_CD_M_ORC_ITE.edit;

        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESC_BASICO').AsCurrency := 0;
        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;

        if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency > 0 then
           begin
             if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
                begin
                   PercTemp := RoundTo((dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency/
                               vlrBrutoTemp) * 100,-2);

                   if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency = 0 then
                      begin
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESC_BASICO').AsCurrency :=
                                dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency;
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency :=
                                dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                      end;

                   if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
                      begin
                       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency :=
                             RoundTo((dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency *
                                      PercTemp) / 100,-4);
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESC_BASICO').AsCurrency :=
                             RoundTo((dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency * 100) /
                                       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency,-4);

                      end;
                end;
           end;

        if QtdeItens > 1 then
           begin
             if QtdeItens = i then
                begin
                   dmGeral.FAT_CD_M_ORC_ITE.BeforePost := dmGeral.FAT_CD_M_ORC_ITEBeforePost;
                   dmGeral.FAT_CD_M_ORC_ITE.AfterPost := dmGeral.FAT_CD_M_ORC_ITEAfterPost ;
                end;
           end;

        dmGeral.FAT_CD_M_ORC_ITE.Post;
        dmGeral.FAT_CD_M_ORC_ITE.Next;
      end;
   dmGeral.FAT_CD_M_ORC_ITE.First;


   dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency;



  dmGeral.FAT_CD_M_ORC_ITE.First;
  while not dmGeral.FAT_CD_M_ORC_ITE.eof do
      begin
        if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
            begin
              vlrBrutoComDescBasicTemp := vlrBrutoComDescBasicTemp +
                                          dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                                          dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency;
            end;
        dmGeral.FAT_CD_M_ORC_ITE.Next;
      end;
  dmGeral.FAT_CD_M_ORC_ITE.First;


  i:=0;

  if QtdeItens > 1 then
     begin
       dmGeral.FAT_CD_M_ORC_ITE.BeforePost := nil;
       dmGeral.FAT_CD_M_ORC_ITE.AfterPost := nil;
     end;


  dmGeral.FAT_CD_M_ORC_ITE.First;
  while not dmGeral.FAT_CD_M_ORC_ITE.eof do
      begin

        inc(i);

        dmGeral.FAT_CD_M_ORC_ITE.edit;

        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;

        if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
           begin
             //if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
             //   begin

                  PercTemp := RoundTo((dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency/
                                       vlrBrutoComDescBasicTemp) * 100,-4);


                  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESC_ESPECIAL').AsCurrency :=
                          RoundTo(( (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                                     dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESC_BASICO').AsCurrency) *
                                      PercTemp) / 100,-4);

                  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESC_ESPECIAL').AsCurrency := PercTemp;



             //   end;
           end;

        if QtdeItens > 1 then
           begin
             if QtdeItens = i then
                begin
                   dmGeral.FAT_CD_M_ORC_ITE.BeforePost := dmGeral.FAT_CD_M_ORC_ITEBeforePost;
                   dmGeral.FAT_CD_M_ORC_ITE.AfterPost := dmGeral.FAT_CD_M_ORC_ITEAfterPost ;
                end;
           end;

        dmGeral.FAT_CD_M_ORC_ITE.Post;
        dmGeral.FAT_CD_M_ORC_ITE.Next;
      end;
   dmGeral.FAT_CD_M_ORC_ITE.First;
end;

procedure FatValidaOrcamentoIte(DataSet:TDataSet);
begin
    if dmGeral.FAT_CD_M_ORC_ITE.State in [dsInsert,dsEdit] then
     begin
        if not FAT_CD_M_ORC_ITE_TesCampos then
           begin
             abort;
           end;
     end;
end;


function FAT_CD_M_ORC_ITE_TesCampos: boolean;
var
  mens: String;
begin

  result := true;

  mens := '';

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True) and
     (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_TAMANHO').AsCurrency = 0) then
       begin
         mens := mens + '.Tamanho do item' + #13;
       end;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True) and
     (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_COR').AsCurrency = 0) then
       begin
         mens := mens + '.Cor do item' + #13;
       end;

  if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsCurrency = 0 then
     begin
       mens := mens + '.Código do item' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('QTDE').AsFloat = 0 then
     begin
       mens := mens + '.Qtde' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_UNITARIO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor unitário' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor bruto' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor total' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end;
end;

function FAT_CD_M_ORC_TesCampos: Boolean;
var
  mens: String;
begin
   result := true;

   mens := '';

   if dmGeral.FAT_CD_M_ORC.FieldByName('ID_EMPRESA').AsInteger = 0 then
     begin
       mens := mens + '.Código da empresa' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC.FieldByName('ID_ORCAMENTO').AsInteger = 0 then
     begin
       mens := mens + '.Código do orçamento' + #13;
     end;


  if dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsInteger = 0 then
     begin
       mens := mens + '.Código do cliente' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ORCAMENTO').text = '' then
     begin
       mens := mens + '.Data do orçamento' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ENTREGA').text = '' then
     begin
       mens := mens + '.Data da entrega' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC.FieldByName('DTA_VALIDADE').text = '' then
     begin
       mens := mens + '.Data da validade' + #13;
     end;
  if dmGeral.FAT_CD_M_ORC.FieldByName('ID_FORMA_PAG').AsInteger = 0 then
     begin
       mens := mens + '.Forma de pagamento' + #13;
     end;
  if dmGeral.FAT_CD_M_ORC.FieldByName('ID_CONDICAO_PAG').AsInteger = 0 then
     begin
       mens := mens + '.Condição de pagamento' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC.FieldByName('STATUS').Isnull then
     begin
       mens := mens + '.Situação do orçamento' + #13;
     end;

  if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency = 0) then
     begin
       mens := mens + '.Vlr bruto' + #13;
     end;

  if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       mens := mens + '.Vlr líquido' + #13;
     end;


  //  if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_TOTAL').AsCurrency = 0 then
  //   begin
  //   mens := mens + '.Vlr total' + #13;
  // end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin
        if (dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ORCAMENTO').AsDateTime >
           dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ENTREGA').AsDateTime) then
           begin
             mens := mens +  '.A data do orçamento não pode ser maior que a data de entrega.' + #13;
           end;

        if (dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ORCAMENTO').AsDateTime >
            dmGeral.FAT_CD_M_ORC.FieldByName('DTA_VALIDADE').AsDateTime) then
           begin
             mens := mens +  '.A data do orçamento não pode ser maior que a data de validade.' + #13;
           end;

        dmGeral.FAT_CD_M_ORC_ITE.cancel;
        if dmGeral.FAT_CD_M_ORC_ITE.IsEmpty then
           begin
             mens := mens + 'Nenhum item foi inserido no orçamento.' + #13;
           end;

        if FAT_CD_M_ORC_TesTotItensXTotOrc then
           begin
             mens := mens + 'Valor líquido dos itens diferente do total do orçamento.' + #13;
           end;

        if mens <> '' then
           begin
             ShowMessage('Atenção:' + #13 + mens);
             mens := '';
             result := false;
           end
     end;
end;

function FAT_CD_M_ORC_TesPermExclusao: Boolean;
var
  mens: String;
begin
   result := true;

   mens := '';

   if dmGeral.FAT_CD_M_ORC.FieldByName('STATUS').AsInteger = 1 then
     begin
       mens := mens + '.Orçamento já importado' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Exclusão não permitida!' + #13 + mens);
       mens := '';
       result := false;
     end;

end;

function FAT_CD_M_ORC_TesTotItensXTotOrc: Boolean;
Var
  PonteiroItens : TBookmark;
  TotItens: Currency;
begin
  result := false;
  TotItens := 0;

  dmGeral.FAT_CD_M_ORC_ITE.cancel;

  PonteiroItens := dmGeral.FAT_CD_M_ORC_ITE.GetBookmark;
  dmGeral.FAT_CD_M_ORC_ITE.First;
  if not dmGeral.FAT_CD_M_ORC_ITE.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_ORC_ITE.eof do
          begin
            TotItens := TotItens + dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
            dmGeral.FAT_CD_M_ORC_ITE.Next;
          end;
        // por Maxsuel Victor, 13/11/2024
        //if TotItens <> dmGeral.FAT_CD_M_ORC.FieldByName('VLR_TOTAL').AsCurrency then
        //   begin
        //     result := true;
        //   end;

        if (TotItens <> ( dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency+
                          dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency+
                          dmGeral.FAT_CD_M_ORC.FieldByName('VLR_ICM_DESN').AsCurrency)) then
           begin
             result := true;
           end;
     end;
  dmGeral.FAT_CD_M_ORC_ITE.GotoBookmark(PonteiroItens);
  dmGeral.FAT_CD_M_ORC_ITE.edit;
end;

procedure fatOrcCalcTotalItem;
begin

  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
   RoundTo(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('QTDE').AsFloat*
     dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_UNITARIO').AsCurrency,-2);

 // Maxsuel Victor em 17-03-2015
 // Este if foi inserido para poder atender a questão do PERC de promoção
 // pois no momento em que o usuário digita o item o sistema já mostra o
 // percentual de desconto.
 if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency > 0) then
     begin
       if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency > 0) and
          (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency = 0)   then
          begin
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                  RoundTo((dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency *
                            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency) / 100,-2);
          end;
     end;

  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
    RoundTo(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency-
     dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency,-2);

end;

procedure FatRatVlrEntreItensOrcamento2(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte,lNomeCampoPerIte: String;var codItensAcimaDesc:String;ativarVerDesc:boolean;
                                    int_unif_desc_reg:boolean);
var
  lPonteiroItens: TBookmark;
  //lPercTemp, lPercAcum : Currency;
  PercDescPerm,lVlrAcum : Currency;
  lQtdeReg, lNroReg: Integer;

  SMPrincipal : TSMClient;

  xPercDescPermRegIte: Currency;


  { TODO -oMaxsuel -cCriação :
    Criado em 23/09/2024
    Método usado pela rotina de Orçamento (FAT_FM_M_ORC) }
begin

  // lVlrTotDoc    = Ao valor liquido da Nota Fiscal
  // lVlrMontante  = Equivale ao valor do campo que chama esse método, ex:  VLR_SEGURO=150,00 , VLR_OUTRAS_DESP=85,48 ...
  // lNomeCampoIte = refere-se ao nome do campo exemplo:  FRE_VALOR, VLR_SEGURO, VLR_OUTRAS_DESP ...
  // lNomeCampoBaseIte = refere-se ao nome do campo do item que vai guardar o valor base
  // lNomeCampoPerIte = refere-se ao nome do campo do item que vai guardar o percentual exe:  FRE_PERCENTUAL

  try

  codItensAcimaDesc := '';
  dmGeral.FAT_CD_M_ORC_ITE.cancel;

  lQtdeReg  := dmGeral.FAT_CD_M_ORC_ITE.RecordCount;
  lNroReg   := 0;
  //lPercAcum := 0;
  lVlrAcum := 0;

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  if lVlrMontante > 0 then
     begin
        dmGeral.FAT_CD_M_ORC_ITE.First;
        if not dmGeral.FAT_CD_M_ORC_ITE.IsEmpty then
           begin
              while not dmGeral.FAT_CD_M_ORC_ITE.eof do
                begin
                  dmGeral.FAT_CD_M_ORC_ITE.edit;
                  inc(lNroReg);
                 { if lNroReg < lQtdeReg then
                     begin
                        lPercTemp := roundTo((100 * dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency) /  lVlrTotDoc,-2);
                     end
                  else
                     begin
                       lPercTemp := 100 - lPercAcum;
                     end; }


                  if lNroReg < lQtdeReg then
                     begin
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoIte).AsCurrency := roundTo(((dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency/lVlrTotDoc) * lVlrMontante),-2);
                     end
                  else
                     begin
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoIte).AsCurrency :=  roundTo(lVlrMontante - lVlrAcum,-2);
                     end;


                  if lNomeCampoIte = 'VLR_DESCONTO' then
                     begin
                       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               roundTo(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                               dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoIte).AsCurrency,-2);
                     end;
                  if trim(lNomeCampoPerIte) <> '' then
                     begin

                       dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := roundTo((lVlrMontante/lVlrTotDoc)*100,-2);
                       if ativarVerDesc then
                         begin

                          xPercDescPermRegIte := 0;
                          if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
                             begin
                               PercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE,1,dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsInteger);
                               xPercDescPermRegIte :=
                                     SMPrincipal.enSgqPcpBuscarDescRegIte(dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsString,
                                                                          dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString);
                               if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
                                  begin
                                    PercDescPerm := PercDescPerm + xPercDescPermRegIte + dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsCurrency;
                                  end;
                             end;
                          if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
                             begin
                               PercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE,2,0,dmGeral.FAT_CD_M_ORC.FieldByName('ID_CONDICAO_PAG').AsInteger);
                             end;

                          if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
                             (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
                             begin
                               PercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE);
                             end;

                          if int_unif_desc_reg then
                             begin
                               if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoPerIte).AsCurrency >
                                  (PercDescPerm + xPercDescPermRegIte) ) then
                                   begin
                                     if codItensAcimaDesc = '' then
                                        codItensAcimaDesc := codItensAcimaDesc + dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString
                                     else
                                        codItensAcimaDesc := codItensAcimaDesc +', '+dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString;
                                   end;
                             end
                          else
                             begin
                                if (xPercDescPermRegIte > 0 ) and (dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoPerIte).AsCurrency >
                                   (xPercDescPermRegIte) ) then
                                   begin
                                     if codItensAcimaDesc = '' then
                                        codItensAcimaDesc := codItensAcimaDesc + dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString
                                     else
                                        codItensAcimaDesc := codItensAcimaDesc +', '+dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString;
                                   end
                                else
                                   begin
                                      if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoPerIte).AsCurrency >
                                         (PercDescPerm) ) then
                                          begin
                                            if codItensAcimaDesc = '' then
                                               codItensAcimaDesc := codItensAcimaDesc + dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString
                                            else
                                               codItensAcimaDesc := codItensAcimaDesc +', '+dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString;
                                          end;
                                   end;
                             end;
                         end;
                     end;

                 // lPercAcum := lPercAcum + lPercTemp;
                  lVlrAcum := lVlrAcum + dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoIte).AsCurrency;
                  dmGeral.FAT_CD_M_ORC_ITE.Post;
                  dmGeral.FAT_CD_M_ORC_ITE.Next;
                end;
           end;
        dmGeral.FAT_CD_M_ORC_ITE.First;
     end
  else
     begin
       dmGeral.FAT_CD_M_ORC_ITE.First;
       if not dmGeral.FAT_CD_M_ORC_ITE.IsEmpty then
          begin

             while not dmGeral.FAT_CD_M_ORC_ITE.eof do
               begin
                 dmGeral.FAT_CD_M_ORC_ITE.edit;
                 inc(lNroReg);
                 dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoIte).AsCurrency := 0;
                 if lNomeCampoIte = 'VLR_DESCONTO' then
                    begin
                      dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                    end;

                 if trim(lNomeCampoPerIte) <> '' then
                    begin
                      dmGeral.FAT_CD_M_ORC_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := 0;
                    end;
                 dmGeral.FAT_CD_M_ORC_ITE.Post;
                 dmGeral.FAT_CD_M_ORC_ITE.Next;
               end;
           end;
       dmGeral.FAT_CD_M_ORC_ITE.First;
     end;

  finally
    FreeAndNil(SMPrincipal);
  end;

end;



procedure FAT_CD_M_ORC_ITEPER_DESCONTOChange(Sender: TField);
begin
   if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency > 0 then
      begin
        dmGeral.FAT_CD_M_ORC_ITEVLR_DESCONTO.OnChange := nil;
        dmGeral.FAT_CD_M_ORC_ITEPER_DESCONTO.OnChange := nil;

        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
          RoundTo((dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency *
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency) / 100,-2);
        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
          RoundTo((dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency,-2);

        dmGeral.FAT_CD_M_ORC_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_ORC_ITEVLR_DESCONTOChange;
        dmGeral.FAT_CD_M_ORC_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_ORC_ITEPER_DESCONTOChange;
      end
   else
      begin
        dmGeral.FAT_CD_M_ORC_ITEVLR_DESCONTO.OnChange := nil;
        dmGeral.FAT_CD_M_ORC_ITEPER_DESCONTO.OnChange := nil;

        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

        dmGeral.FAT_CD_M_ORC_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_ORC_ITEVLR_DESCONTOChange;
        dmGeral.FAT_CD_M_ORC_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_ORC_ITEPER_DESCONTOChange;
      end;

  fatOrcCalcTotalItem;

end;

function  FatValidBloqueiaOrc(Letra: String): Boolean;
begin
  try
    result := false;

    dmGeral.CAD_CD_C_PAR_RST.Filtered := true;
    dmGeral.CAD_CD_C_PAR_RST.Filter   := ' letra_restricao = ''' + letra + '''';
    if not dmGeral.CAD_CD_C_PAR_RST.IsEmpty then
       if  dmGeral.CAD_CD_C_PAR_RST.FieldByName('tipo_restricao').AsInteger = 1 then // Bloqueia
           begin
             result := true;
           end;
  finally
     dmGeral.CAD_CD_C_PAR_RST.Filtered := false;
  end;

end;


end.
