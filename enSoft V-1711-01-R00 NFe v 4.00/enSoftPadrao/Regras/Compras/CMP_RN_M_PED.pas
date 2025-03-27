unit CMP_RN_M_PED;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CmpPedCalcTotal;
Procedure cmpCalcTotalItem;
Procedure cmpCalcTotalPedido;
procedure CmpRatVlrEntreItens(const lVlrTotDoc, lVlrMontante: Currency;
                              lNomeCampoIte, lNomeCampoBaseIte,
                              lNomeCampoPerIte: String);
procedure CmpPedCalcTotalItem;

function CMP_CD_M_PED_TesTotItensXTotPed: Boolean;
function CMP_CD_M_PED_TesPermAlt: Boolean;
function CMP_CD_M_PED_TesPermExclusao: Boolean;
function CMP_CD_M_PED_TesCampos: Boolean;
function CMP_CD_M_PED_ITE_TesCampos: Boolean;

procedure CmpNovoPedido(DataSet: TDataSet);
procedure CmpNovoPedidoIte(DataSet: TDataSet);
procedure CmpMascaraPedido(DataSet:TDataSet);
procedure CmpMascaraPedidoIte(DataSet:TDataSet);
procedure CmpValidaPedido(DataSet:TDataSet);
function CmpExisteItemSemVlr: Boolean;

//Envento TField
procedure CMP_CD_M_PEDvlr_descontoChange(Sender: TField);
procedure CMP_CD_M_PEDvlr_freteChange(Sender: TField);
procedure CMP_CD_M_PED_ITEVLR_DESCONTOChange(Sender: TField);
procedure CMP_CD_M_PED_ITEper_ipiChange(Sender: TField);
procedure CMP_CD_M_PED_ITEqtde_a_baixarChange(Sender: TField);


implementation
Uses uDmGeral,enConstantes, uProxy;

procedure CmpNovoPedido(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
  Hora: TTime;
begin
  {  STATUS
   0 - pendente
   1 - entregue parcial
   2 - entregue total
   3 - finalizado
  }
  dmGeral.CMP_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CMP_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger :=
         SMPrincipal.enValorChave('CMP_TB_M_PED');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.CMP_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime   := xDataSis;
  dmGeral.CMP_CD_M_PED.FieldByName('DTA_ENTREGA').AsDateTime  := xDataSis;
  dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger        := 0;
  dmGeral.CMP_CD_M_PED.FieldByName('VLR_IPI').AsInteger       := 0;
  dmGeral.CMP_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency    := 0;
  dmGeral.CMP_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
  dmGeral.CMP_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency  := 0;
  dmGeral.CMP_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency    := 0;
 // dmGeral.CMP_CD_M_PED.FieldByName('APROVADO').AsBoolean      := False;

  dmGeral.BusCodigoRevListMestre(true,false,'CMP_FM_M_PED',xCodLme,xRevLme,dmGeral.CMP_CD_M_PED);
end;

procedure CmpNovoPedidoIte(DataSet: TDataSet);
begin
  dmGeral.CMP_CD_M_PED_ITEid_cor.AsInteger                          :=  0;
  dmGeral.CMP_CD_M_PED_ITEid_tamanho.AsInteger                      :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('QTDE').AsFloat              :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('qtde_a_baixar').AsFloat     :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat      :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency   :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency      :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency   :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency   :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency    :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('PER_IPI').AsCurrency        :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_IPI').AsCurrency        :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('PER_FRETE').AsCurrency      :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_FRETE').AsCurrency      :=  0;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('entre_prazo').AsInteger     :=  0;
end;

procedure CmpMascaraPedido(DataSet:TDataSet);
begin
  dmGeral.CMP_CD_M_PEDVLR_BRUTO.DisplayFormat       :=CMascaraValor;
  dmGeral.CMP_CD_M_PEDVLR_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.CMP_CD_M_PEDVLR_LIQUIDO.DisplayFormat     :=CMascaraValor;
  dmGeral.CMP_CD_M_PEDvlr_ipi.DisplayFormat         :=CMascaraValor;
  dmGeral.CMP_CD_M_PEDvlr_frete.DisplayFormat       :=CMascaraValor;
end;

procedure CmpMascaraPedidoIte(DataSet:TDataSet);
begin
  //dmGeral.CMP_CD_M_PED_ITEVLR_UNITARIO.DisplayFormat    :=CMascaraValor;
  dmGeral.CMP_CD_M_PED_ITEvlr_unitario.DisplayFormat := CMascaraVlrMerc;
  dmGeral.CMP_CD_M_PED_ITEVLR_BRUTO.DisplayFormat       :=CMascaraValor;
  dmGeral.CMP_CD_M_PED_ITEVLR_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.CMP_CD_M_PED_ITEVLR_LIQUIDO.DisplayFormat     :=CMascaraValor;
  dmGeral.CMP_CD_M_PED_ITEPER_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.CMP_CD_M_PED_ITEper_ipi.DisplayFormat         :=CMascaraValor;
  dmGeral.CMP_CD_M_PED_ITEvlr_ipi.DisplayFormat         :=CMascaraValor;
  dmGeral.CMP_CD_M_PED_ITEvlr_frete.DisplayFormat       :=CMascaraValor;
  dmGeral.CMP_CD_M_PED_ITEvlr_frete.DisplayFormat       :=CMascaraValor;
end;

procedure CmpPedCalcTotal;
Var
  PonteiroItens : TBookmark;
  lTotDescItens,lTotFreteItens  :   Currency;
  lAtualizaDescPai, lAtualizaFretePai: Boolean;

begin

  //Totaliza o Pedido de Compra
  dmGeral.CMP_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency    := 0;
  dmGeral.CMP_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency  := 0;
  dmGeral.CMP_CD_M_PED.FieldByName('VLR_IPI').AsCurrency      := 0;

  lTotDescItens:= 0;
  lTotFreteItens:= 0;

  dmGeral.CMP_CD_M_PED_ITE.First;
  if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
     begin
       while not dmGeral.CMP_CD_M_PED_ITE.eof do
          begin
            lTotDescItens := lTotDescItens +
                             dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
            lTotFreteItens := lTotFreteItens +
                             dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_FRETE').AsCurrency;
            dmGeral.CMP_CD_M_PED_ITE.Next;
          end;
     end;
  lAtualizaDescPai := false;
  lAtualizaFretePai := false;


  try

  dmGeral.CMP_CD_M_PEDvlr_desconto.OnChange := nil;
  dmGeral.CMP_CD_M_PEDvlr_frete.OnChange := nil;

  if dmGeral.CMP_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency <> lTotDescItens then
     begin
       lAtualizaDescPai := true;
       dmGeral.CMP_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency <> lTotFreteItens then
     begin
       lAtualizaFretePai := true;
       dmGeral.CMP_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency := 0;
     end;


  dmGeral.CMP_CD_M_PED_ITE.First;
  if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
     begin
        while not dmGeral.CMP_CD_M_PED_ITE.eof do
          begin
            dmGeral.CMP_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency :=
                  dmGeral.CMP_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency +
                  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

            dmGeral.CMP_CD_M_PED.FieldByName('VLR_IPI').AsCurrency :=
                    dmGeral.CMP_CD_M_PED.FieldByName('VLR_IPI').AsCurrency +
                            dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_IPI').AsCurrency;

            if lAtualizaDescPai = true then
               begin
                 dmGeral.CMP_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency:=

                         dmGeral.CMP_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency +
                         dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
               end;

             if lAtualizaFretePai = true then
               begin
                 dmGeral.CMP_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency:=

                         dmGeral.CMP_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency +
                         dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_FRETE').AsCurrency;
               end;

            dmGeral.CMP_CD_M_PED_ITE.Next;
          end;
     end;

  dmGeral.CMP_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency:=
          dmGeral.CMP_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency -
          dmGeral.CMP_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency +
          dmGeral.CMP_CD_M_PED.FieldByName('VLR_FRETE').AsCurrency +
          dmGeral.CMP_CD_M_PED.FieldByName('VLR_IPI').AsCurrency;


  finally
     dmGeral.CMP_CD_M_PEDvlr_desconto.OnChange := dmGeral.CMP_CD_M_PEDvlr_descontoChange;
     dmGeral.CMP_CD_M_PEDvlr_frete.OnChange := dmGeral.CMP_CD_M_PEDvlr_freteChange;
  end;

end;

procedure CmpValidaPedido(DataSet:TDataSet);
begin
 if dmGeral.CMP_CD_M_PED_ITE.State in [dsInsert,dsEdit] then
     begin
        if not CMP_CD_M_PED_ITE_TesCampos then
           begin
             abort;
           end;
     end;
end;

Procedure cmpCalcTotalItem;
Var
  SMPrincipal : TSMClient;
begin
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
   (dmGeral.CMP_CD_M_PED_ITE.FieldByName('QTDE').AsFloat*
    dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency);


  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
    (dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency-
     dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency);


  //Busca formula no servidor
{
  SMPrincipal := TServerModuleClient.Create(dmGeral.dnpConexao.DBXConnection);
  try
    dmGeral.cdsPedItens.FieldByName('VLR_LIQUIDO').AsCurrency:=0;
    xValor:=

      SMPrincipal.enCalTotalItens(dmGeral.cdsPedItens.FieldByName('QTDE').AsFloat,
                                  dmGeral.cdsPedItens.FieldByName('VLR_UNITARIO').AsCurrency,
                                  dmGeral.cdsPedItens.FieldByName('VLR_DESCONTO').AsCurrency);

  finally
    FreeAndNil(SMPrincipal);
  end;
  }
end;

Procedure cmpCalcTotalPedido;
Var
  PonteiroItens : TBookmark;
begin

  //Totaliza o Pedido
  PonteiroItens := dmGeral.CMP_CD_M_PED_ITE.GetBookmark;
  dmGeral.CMP_CD_M_PED_ITE.First;
  while not dmGeral.CMP_CD_M_PED_ITE.eof do
    begin
      dmGeral.CMP_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency:=
        dmGeral.CMP_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency+
        dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

      dmGeral.CMP_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency:=
        dmGeral.CMP_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency+
        dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

      dmGeral.CMP_CD_M_PED_ITE.Next;
    end;
  dmGeral.CMP_CD_M_PED_ITE.GotoBookmark(PonteiroItens);
end;

procedure CmpPedCalcTotalItem;
begin
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
   RoundTo((dmGeral.CMP_CD_M_PED_ITE.FieldByName('QTDE').AsFloat*
    dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency),-2);


  dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
   RoundTo( (dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency-
      dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
end;

procedure CmpRatVlrEntreItens(const lVlrTotDoc, lVlrMontante: Currency;
  lNomeCampoIte, lNomeCampoBaseIte, lNomeCampoPerIte: String);
var
  lPonteiroItens: TBookmark;
  lPercTemp, lPercAcum: Currency;
  lQtdeReg, lNroReg: Integer;
begin

  // lVlrTotDoc    = Ao valor liquido da Nota Fiscal
  // lVlrMontante  = Equivale ao valor do campo que chama esse método, ex:  VLR_SEGURO=150,00 , VLR_OUTRAS_DESP=85,48 ...
  // lNomeCampoIte = refere-se ao nome do campo exemplo:  FRE_VALOR, VLR_SEGURO, VLR_OUTRAS_DESP ...
  // lNomeCampoBaseIte = refere-se ao nome do campo do item que vai guardar o valor base
  // lNomeCampoPerIte = refere-se ao nome do campo do item que vai guardar o percentual exe:  FRE_PERCENTUAL

  dmGeral.CMP_CD_M_PED_ITE.cancel;

  lQtdeReg  := dmGeral.CMP_CD_M_PED_ITE.RecordCount;
  lNroReg   := 0;
  lPercAcum := 0;
  if lVlrMontante > 0 then
     begin
        dmGeral.CMP_CD_M_PED_ITE.First;
        if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
           begin
              while not dmGeral.CMP_CD_M_PED_ITE.eof do
                begin
                  dmGeral.CMP_CD_M_PED_ITE.edit;
                  inc(lNroReg);
                  if lNroReg < lQtdeReg then
                     begin
                         //Foi alterado de vlr.liquido para vlr_bruto para que fique do mesmo modo no EST_FM_M_NFE.Responsavel:Luan.Data:06/04/2016
                        lPercTemp := roundTo((100 * dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency) /  lVlrTotDoc,-2);
                     end
                  else
                     begin
                       lPercTemp := 100 - lPercAcum;
                     end;
                  dmGeral.CMP_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := roundTo((lPercTemp * lVlrMontante) / 100,-2);
                  if lNomeCampoIte = 'VLR_DESCONTO' then
                     begin
                       dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                               dmGeral.CMP_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency;
                     end;
                  if trim(lNomeCampoBaseIte) <> '' then
                     begin
                       dmGeral.CMP_CD_M_PED_ITE.FieldByName(lNomeCampoBaseIte).AsCurrency :=
                         dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                     end;
                  if trim(lNomeCampoPerIte) <> '' then
                     begin
                       dmGeral.CMP_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := lPercTemp;
                     end;
                  lPercAcum := lPercAcum + lPercTemp;
                  //FAT_CD_M_NFE_ITE.post;
                  dmGeral.CMP_CD_M_PED_ITE.Next;
                end;
           end;
        dmGeral.CMP_CD_M_PED_ITE.First;
     end
  else
     begin
       dmGeral.CMP_CD_M_PED_ITE.First;
       if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
          begin

             while not dmGeral.CMP_CD_M_PED_ITE.eof do
               begin
                 dmGeral.CMP_CD_M_PED_ITE.edit;
                 inc(lNroReg);
                 dmGeral.CMP_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := 0;
                 if lNomeCampoIte = 'VLR_DESCONTO' then
                    begin
                      dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                              dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                    end;
                 if trim(lNomeCampoBaseIte) <> '' then
                    begin
                      dmGeral.CMP_CD_M_PED_ITE.FieldByName(lNomeCampoBaseIte).AsCurrency := 0;
                    end;

                 if trim(lNomeCampoPerIte) <> '' then
                    begin
                      dmGeral.CMP_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := 0;
                    end;
                 dmGeral.CMP_CD_M_PED_ITE.Post;
                 dmGeral.CMP_CD_M_PED_ITE.Next;
               end;
           end;
       dmGeral.CMP_CD_M_PED_ITE.First;
     end;
end;


//Metddos do TFields
procedure CMP_CD_M_PEDvlr_descontoChange(Sender: TField);
var
  lPonteiroItens : TBookmark;
  lTotDescItens: Currency;
begin
  lTotDescItens:= 0;

  dmGeral.CMP_CD_M_PED_ITE.Cancel;
  if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
     begin
       dmGeral.CMP_CD_M_PED_ITE.First;
       while not dmGeral.CMP_CD_M_PED_ITE.eof do
          begin
            lTotDescItens := lTotDescItens +
                             dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
            dmGeral.CMP_CD_M_PED_ITE.Next;
          end;
     end;

  try
     dmGeral.CMP_CD_M_PED_ITE.AfterPost := nil;
     dmGeral.CMP_CD_M_PED_ITEvlr_desconto.OnChange := nil;

  if lTotDescItens <> dmGeral.CMP_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency then
     begin
       CmpRatVlrEntreItens(dmGeral.CMP_CD_M_PEDvlr_bruto.AsCurrency, dmGeral.CMP_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO', '', '');
     end;
  CmpPedCalcTotal;

  finally
     dmGeral.CMP_CD_M_PED_ITE.afterpost :=  dmGeral.CMP_CD_M_PED_ITEAfterPost;
     dmGeral.CMP_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.CMP_CD_M_PED_ITEvlr_descontoChange;
  end;

end;

procedure CMP_CD_M_PEDvlr_freteChange(Sender: TField);
begin
   try
     dmGeral.CMP_CD_M_PED_ITE.AfterPost := nil;
     dmGeral.CMP_CD_M_PED_ITEvlr_desconto.OnChange := nil;
     CmpRatVlrEntreItens(dmGeral.CMP_CD_M_PEDvlr_bruto.AsCurrency, dmGeral.CMP_CD_M_PEDvlr_frete.AsCurrency, 'VLR_FRETE', '', 'PER_FRETE');
     CmpPedCalcTotal;
   finally
     dmGeral.CMP_CD_M_PED_ITE.afterpost            := dmGeral.CMP_CD_M_PED_ITEAfterPost;
     dmGeral.CMP_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.CMP_CD_M_PED_ITEvlr_descontoChange;
   end;
end;

procedure CMP_CD_M_PED_ITEVLR_DESCONTOChange(Sender: TField);
begin

  if dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
     begin
       if dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
          begin
             //CMP_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;

             dmGeral.CMP_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                   (dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                    dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

             //CMP_CD_M_PED_ITEPER_DESCONTO.OnChange := CMP_CD_M_PED_ITEPER_DESCONTOChange;
          end;
     end
  else
     begin
       //CMP_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;
       dmGeral.CMP_CD_M_PED_ITEVLR_DESCONTO.OnChange := nil;

       dmGeral.CMP_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
       dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

       //CMP_CD_M_PED_ITEPER_DESCONTO.OnChange := CMP_CD_M_PED_ITEPER_DESCONTOChange;
       dmGeral.CMP_CD_M_PED_ITEVLR_DESCONTO.OnChange := dmGeral.CMP_CD_M_PED_ITEVLR_DESCONTOChange;
     end;
  CmpPedCalcTotalItem;

  //cmpCalcTotalItem;

end;

procedure CMP_CD_M_PED_ITEper_ipiChange(Sender: TField);
begin

  if dmGeral.CMP_CD_M_PED_ITE.FieldByName('PER_IPI').AsCurrency > 0 then
      begin
        if dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency > 0 then
           begin
              dmGeral.CMP_CD_M_PED_ITEPER_IPI.OnChange := nil;

              dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_IPI').AsCurrency :=
                 (dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency *
                  dmGeral.CMP_CD_M_PED_ITE.FieldByName('PER_IPI').AsCurrency) / 100;

              dmGeral.CMP_CD_M_PED_ITEPER_IPI.OnChange := dmGeral.CMP_CD_M_PED_ITEPER_IPIChange;
           end;
      end
  else
      begin
        dmGeral.CMP_CD_M_PED_ITEPER_IPI.OnChange := nil;

        dmGeral.CMP_CD_M_PED_ITE.FieldByName('PER_IPI').AsCurrency := 0;
        dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_IPI').AsCurrency := 0;

        dmGeral.CMP_CD_M_PED_ITEPER_IPI.OnChange := dmGeral.CMP_CD_M_PED_ITEPER_IPIChange;
      end;

  CmpPedCalcTotalItem;
end;

procedure CMP_CD_M_PED_ITEqtde_a_baixarChange(Sender: TField);
begin
  if trim(dmGeral.CMP_CD_M_PED_ITE.FieldByName('qtde_a_baixar').Text) <> '' then
     begin
       if dmGeral.CMP_CD_M_PED_ITE.FieldByName('qtde_a_baixar').AsFloat >
          (dmGeral.CMP_CD_M_PED_ITE.FieldByName('qtde').AsFloat -
           dmGeral.CMP_CD_M_PED_ITE.FieldByName('qtde_baixada').AsFloat) then
          begin
            ShowMessage('Qtde a baixar não pode ser maior que (Qtde - Qtde já baixada).');
            dmGeral.CMP_CD_M_PED_ITE.FieldByName('qtde_a_baixar').AsFloat := 0;
            abort;
          end;
     end;
end;

//Validações
function CMP_CD_M_PED_ITE_TesCampos: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if trim(dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_ITEM').text) = '' then
     begin
       mens := mens + '.Código do item' + #13;
     end;

  if dmGeral.CMP_CD_M_PED_ITE.FieldByName('QTDE').AsFloat = 0 then
     begin
       mens := mens + '.Qtde' + #13;
     end;

  if dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor unitário' + #13;
     end;

  if dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor bruto' + #13;
     end;

  if dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor total' + #13;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       if dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_COR').text = '' then
          begin
            mens := mens + '.Cor' + #13;
          end;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       if dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text = '' then
          begin
            mens := mens + '.Tamanho' + #13;
          end;
     end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end;
end;

function CMP_CD_M_PED_TesCampos: Boolean;
var
  mens: String;
begin
   result := true;

   mens := '';

   if dmGeral.CMP_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger = 0 then
     begin
       mens := mens + '.Código da empresa' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger = 0 then
     begin
       mens := mens + '.Código do pedido' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('DTA_PEDIDO').text = '' then
     begin
       mens := mens + '.Data do pedido' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('DTA_ENTREGA').text = '' then
     begin
       mens := mens + '.Data da entrega' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('condicoes_pagamento').text = '' then
     begin
       mens := mens + '.Condição de pagamento' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('ID_RESPONSAVEL').text = '' then
     begin
       mens := mens + '.Responsável' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('STATUS').text = '' then
     begin
       mens := mens + '.Status' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor bruto' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor líquido' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin
        if dmGeral.CMP_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime >
           dmGeral.CMP_CD_M_PED.FieldByName('DTA_ENTREGA').AsDateTime then
           begin
              mens := mens + '.Data do pedido não pode ser maior que a data de entrega' + #13;
           end;

        dmGeral.CMP_CD_M_PED_ITE.cancel;
        if dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
           begin
             mens := mens + 'Nenhum item foi inserido no pedido de compra.' + #13;
           end;

        if CMP_RN_M_PED.CmpExisteItemSemVlr then
           begin
             mens := mens + 'Existe item sem valor no pedido de compra.' + #13;
           end;

        if CMP_CD_M_PED_TesTotItensXTotPed then
           begin
             mens := mens + 'Total itens diferente do total do pedido de compra.' + #13;
           end;

        if mens <> '' then
           begin
             ShowMessage('Atenção:' + #13 + mens);
             mens := '';
             result := false;
           end
     end;
end;

function CMP_CD_M_PED_TesPermAlt: Boolean;
var
  mens: String;
begin
   result := true;

   mens := '';

  {  STATUS
   0 - pendente
   1 - entregue parcial
   2 - entregue total
   3 - finalizado
  }

  if dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger = 1 then
     begin
       mens := mens + '.O pedido de compra já foi atendido parcialmente' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger = 2 then
     begin
       mens := mens + '.O pedido de compra já foi atendido' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger = 3 then
     begin
       mens := mens + '.O pedido de compra já foi finalizado(atendido)' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Alteração não permitida!' + #13 + mens);
       mens := '';
       result := false;
       abort;
     end;

end;

function CMP_CD_M_PED_TesPermExclusao: Boolean;
var
  mens: String;
begin
   result := true;

   mens := '';

  {  STATUS
   0 - pendente
   1 - entregue parcial
   2 - entregue total
   3 - finalizado
  }

  if dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger = 1 then
     begin
       mens := mens + '.O pedido de compra já foi atendido parcialmente' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger = 2 then
     begin
       mens := mens + '.O pedido de compra já foi atendido' + #13;
     end;

  if dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger = 3 then
     begin
       mens := mens + '.O pedido de compra já foi finalizado(atendido)' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Exclusão não permitida!' + #13 + mens);
       mens := '';
       result := false;
     end;

end;

function CMP_CD_M_PED_TesTotItensXTotPed: Boolean;
Var
  lPonteiroItens : TBookmark;
  lTotItens: Currency;
begin
  result := false;
  lTotItens := 0;

  dmGeral.CMP_CD_M_PED_ITE.cancel;

  lPonteiroItens := dmGeral.CMP_CD_M_PED_ITE.GetBookmark;
  dmGeral.CMP_CD_M_PED_ITE.First;
  if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
     begin
        while not dmGeral.CMP_CD_M_PED_ITE.eof do
          begin
            {lTotItens := lTotItens + dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency +
                                     dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_IPI').AsCurrency     +
                                     dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_FRETE').AsCurrency; }

             lTotItens := lTotItens + dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                                     dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency     +
                                     dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_IPI').AsCurrency     +
                                     dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_FRETE').AsCurrency;
            dmGeral.CMP_CD_M_PED_ITE.Next;
          end;

        if lTotItens <> dmGeral.CMP_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             result := true;
           end;
     end;
  dmGeral.CMP_CD_M_PED_ITE.GotoBookmark(lPonteiroItens);
  dmGeral.CMP_CD_M_PED_ITE.edit;
end;

function CmpExisteItemSemVlr: Boolean;
begin

  result := false;

  if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
     begin
       dmGeral.CMP_CD_M_PED_ITE.First;
       while not dmGeral.CMP_CD_M_PED_ITE.eof do
          begin
            if dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
               begin
                 result := true;
                 dmGeral.CMP_CD_M_PED_ITE.Last;
               end;
            dmGeral.CMP_CD_M_PED_ITE.Next;
          end;
       dmGeral.CMP_CD_M_PED_ITE.First;
     end;
end;

end.
