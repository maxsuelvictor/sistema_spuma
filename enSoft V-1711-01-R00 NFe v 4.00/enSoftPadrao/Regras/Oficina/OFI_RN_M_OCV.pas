unit OFI_RN_M_OCV;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure OfiNovaOcv;
procedure OfiNovaOcvIte;
procedure OfiMascaraOcv;
procedure OfiMascaraOcvIte;
procedure OfiValidaOcvIte(DataSet:TDataSet);
procedure OfiValidaOcv;
procedure OFI_CD_M_OCV_ITEitemChange;
procedure ofiOcvCalcTotalItem;//qdte  e vlr_unitario


procedure OfiRatearVlrDescOcv;
procedure OfiCalculaVlrTotaisOcv;
procedure OfiAtualizaVlrDescOcv;
procedure OfiZerarVlrDescOcv;
procedure OfiCalculaNumeroPecasSerOcv(var num_pecas,num_servicos:integer);

procedure OFI_CD_M_OCVdes_servicosChange;
procedure OFI_CD_M_OCVdes_produtosChange;

function VerificarVlrTotais:Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, enFunc;



function VerificarVlrTotais:Boolean;
var
  vlrTotal,vlrTotalProduto,vlrTotalServico,vlrTotalTerceiro:Currency;
  msg,codItens:String;
begin
    MSG :='';
    codItens := '';
    Result := true;

    dmGeral.OFI_CD_M_OCV_ITE.First;
    while not dmGeral.OFI_CD_M_OCV_ITE.eof do
     begin
       if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency<=0) then
          begin
            if codItens='' then
              codItens := codItens + dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_ITEM').AsString
            else
              codItens := codItens + ', '+dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_ITEM').AsString;
          end;
       dmGeral.OFI_CD_M_OCV_ITE.Next;
     end;

    if codItens<>'' then
       msg := msg + '.Os seguintes itens estão com valor líquido zerado: '+codItens+#13;



    vlrTotal := 0;
    vlrTotalServico :=0;
    vlrTotalProduto :=0;
    dmGeral.OFI_CD_M_OCV_ITE.First;
    while not dmGeral.OFI_CD_M_OCV_ITE.eof do
      begin
        vlrTotal := vlrTotal + dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

         if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').text='') or
           (pos(dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').text,'00-04') <> 0) then
             vlrTotalProduto := vlrTotalProduto + dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

          if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
             (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=False) then
            vlrTotalServico := vlrTotalServico + dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

          if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
             (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=True) then
            vlrTotalTerceiro := vlrTotalTerceiro + dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

        dmGeral.OFI_CD_M_OCV_ITE.Next;
      end;

    if vlrTotal <> dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TOTAL').AsCurrency then
         msg := msg + '.O valor total líquido difere do somatório dos itens '+ #13 +
                      ' Valor total líquido: ' + dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TOTAL').AsString + #13 +
                      ' Valor somatório dos itens: ' + FormatCurr('0.00',vlrTotal) + #13;


    if (vlrTotalProduto <> (dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency -
                       dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency)) then
         msg := msg + '.O valor total líquido dos produtos difere do somatório das peças '+ #13 +
                      ' Valor total das peças: ' + FormatCurr('0.00',dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTO').AsCurrency -
                                                                  dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency)+ #13 +
                      ' Valor somatório das peças: ' + FormatCurr('0.00',vlrTotalProduto) + #13;


    if ((vlrTotalServico+vlrTotalTerceiro) <> (dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency +
                             dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency -
                             dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency)) then
         msg := msg + '.O valor total líquido dos serviços difere do somatório dos serviços '+ #13 +
                      ' Valor total dos serviços: ' + FormatCurr('0.00',dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency +
                                                                  dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency -
                                                                  dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency)+ #13 +
                      ' Valor somatório dos serviços: ' + FormatCurr('0.00',vlrTotalServico+vlrTotalTerceiro) + #13;


    if msg <> '' then
      begin
        ShowMessage(msg);
        Result := false;
      end;

end;


procedure OfiZerarVlrDescOcv;
begin
  if dmGeral.OFI_CD_M_OCV_ITE.State in [dsEdit] then
      begin
         if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09' then
           begin
             try
              dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := nil;
              dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency := 0;
             finally
               dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := dmGeral.OFI_CD_M_OCVdes_servicosChange;
             end;
           end
         else
           begin
             try
              dmGeral.OFI_CD_M_OCVdes_produtos.OnChange := nil;
              dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency := 0;
             finally
               dmGeral.OFI_CD_M_OCVdes_produtos.OnChange := dmGeral.OFI_CD_M_OCVdes_produtosChange;
             end;
           end;
         dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
         dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
      end;
end;

procedure OfiNovaOcv;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.OFI_CD_M_OCV.FieldByName('ID_ORCAMENTO').AsInteger :=
         SMPrincipal.enValorChave('OFI_TB_M_OCV');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.OFI_CD_M_OCV.FieldByName('ID_EMPRESA').AsInteger :=
         dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.OFI_CD_M_OCV.FieldByName('ID_FUNCIONARIO').AsInteger := xFuncionario;

  dmGeral.BusFuncionario(0,dmGeral.OFI_CD_M_OCV.FieldByName('ID_FUNCIONARIO').Text);
  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       dmGeral.OFI_CD_M_OCV.FieldByName('INT_NOMEFUC').AsString :=
               dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
     end;

  dmGeral.OFI_CD_M_OCV.FieldByName('DTA_ORCAMENTO').AsDateTime   := xDataSis;
  dmGeral.OFI_CD_M_OCV.FieldByName('DTA_VALIDADE').AsDateTime   := xDataSis;
 // dmGeral.OFI_CD_M_OCV.FieldByName('KM_ATUAL').AsInteger := 0;
  dmGeral.OFI_CD_M_OCV.FieldByName('STATUS').AsInteger := 0;
  dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;
  dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TOTAL').AsCurrency := 0;

end;

procedure OFI_CD_M_OCVdes_produtosChange;
begin
   if (dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency <
      dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency) then
    begin
     OFI_RN_M_OCV.OfiRatearVlrDescOcv;
    end
  else
    begin
       if (not ((dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency = 0) and
          (dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency = 0))) then
        begin
         ShowMessage('O desconto de produtos não pode ser maior ou igual ao valor total de produtos.');
         OFI_RN_M_OCV.OfiAtualizaVlrDescOcv;
        end;
    end;
end;

procedure OFI_CD_M_OCVdes_servicosChange;
var
  total_servicos:currency;
begin
  total_servicos := dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency +
                    dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency;
  if (dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency < total_servicos ) then
    begin
     OFI_RN_M_OCV.OfiRatearVlrDescOcv;
    end
  else
    begin
      if (not ((dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency = 0) and
          (total_servicos = 0))) then
        begin
          ShowMessage('O desconto de serviços não pode ser maior ou igual a soma do valor total de serviços e de terceiros');
          OFI_RN_M_OCV.OfiAtualizaVlrDescOcv;
        end;
    end;
end;

procedure OfiAtualizaVlrDescOcv;
VAR
  des_produtos,des_servicos:currency;
begin
    des_produtos :=0;
    des_servicos :=0;

    if (dmGeral.OFI_CD_M_OCV_ITE.RecordCount >0) then
    begin
     dmGeral.OFI_CD_M_OCV_ITE.First;
     while (not dmGeral.OFI_CD_M_OCV_ITE.EOF) do
       begin
        if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
          begin
            des_produtos := des_produtos +
                            dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
          end
        else
          begin
            des_servicos := des_servicos +
                            dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
          end;
       dmGeral.OFI_CD_M_OCV_ITE.Next;
      end;
    end;

    try
      dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := nil;
      dmGeral.OFI_CD_M_OCVdes_produtos.OnChange := nil;
      dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency := des_produtos;
      dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency := des_servicos;
    finally
      dmGeral.OFI_CD_M_OCVdes_servicos.OnChange := dmGeral.OFI_CD_M_OCVdes_servicosChange;
      dmGeral.OFI_CD_M_OCVdes_produtos.OnChange := dmGeral.OFI_CD_M_OCVdes_produtosChange;
    end;


end;


procedure OfiCalculaNumeroPecasSerOcv(var num_pecas,num_servicos:integer);
begin
  num_pecas := 0;
  num_servicos := 0;
  dmGeral.OFI_CD_M_OCV_ITE.Cancel;
  if (dmGeral.OFI_CD_M_OCV_ITE.RecordCount > 0) then
    begin
      dmGeral.OFI_CD_M_OCV_ITE.First;
      while (not dmGeral.OFI_CD_M_OCV_ITE.Eof) do
         begin
           if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
              begin
                 num_pecas := num_pecas + 1;
              end;
           if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') then
              begin
                 num_servicos := num_servicos + 1;
              end;
           dmGeral.OFI_CD_M_OCV_ITE.Next;
         end;
    end;
end;

procedure OfiRatearVlrDescOcv;
var
  num_pecas,num_servicos:integer;
  desc_acum_pec,desc_acum_ser:currency;
begin
   desc_acum_pec := 0;
   desc_acum_ser := 0;
   dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TOTAL').AsCurrency := 0;
   OfiCalculaNumeroPecasSerOcv(num_pecas,num_servicos);

  if (dmGeral.OFI_CD_M_OCV_ITE.RecordCount >0) then
    begin
       try
         dmGeral.OFI_CD_M_OCV_ITE.AfterPost := nil;
         dmGeral.OFI_CD_M_OCV_ITE.BeforePost := nil;
         dmGeral.OFI_CD_M_OCV_ITE.First;
         while (not dmGeral.OFI_CD_M_OCV_ITE.EOF) do
           begin
              dmGeral.OFI_CD_M_OCV_ITE.Edit;
              if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                begin
                   if (num_pecas > 1) then
                    begin
                      if dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency>0 then

                        dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                             RoundTo(dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency*
                             (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency/dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency),-2)
                      else
                         dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=0;

                      desc_acum_pec := desc_acum_pec + dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                    end;
                  if (num_pecas = 1) then
                    begin
                      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           RoundTo( dmGeral.OFI_CD_M_OCV.FieldByName('DES_PRODUTOS').AsCurrency - desc_acum_pec,-2);
                    end;

                  if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency>0 then
                      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                          RoundTo( (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                            dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100,-2)
                  else
                      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;


                   num_pecas := num_pecas - 1;
                end
              else
                begin
                  if (num_servicos > 1) then
                    begin
                      if (dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency+dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency)>0 then
                         dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           RoundTo( dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency*
                           (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency/
                           (dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency+ dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency)),-2)
                      else
                         dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

                       desc_acum_ser := desc_acum_ser + dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                    end;
                  if (num_servicos = 1) then
                    begin
                      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           RoundTo( dmGeral.OFI_CD_M_OCV.FieldByName('DES_SERVICOS').AsCurrency - desc_acum_ser,-2);
                    end;

                  if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency>0 then
                    dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                        RoundTo( (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                           dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100,-2)
                  else
                     dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency :=0;

                  num_servicos := num_servicos - 1;
                end;

              dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                    RoundTo( (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                    dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
              dmGeral.OFI_CD_M_OCV_ITE.Post;

              dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TOTAL').AsCurrency :=
                           dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TOTAL').AsCurrency +
                           dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

              dmGeral.OFI_CD_M_OCV_ITE.Next;
           end;
       finally
          dmGeral.OFI_CD_M_OCV_ITE.AfterPost := dmGeral.OFI_CD_M_OCV_ITEAfterPost;
          dmGeral.OFI_CD_M_OCV_ITE.BeforePost := dmGeral.OFI_CD_M_OCV_ITEBeforePost;
       end;
    end;
end;

procedure OfiNovaOcvIte;
begin

  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsInteger := 0;
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('QTDE').AsFloat              :=  0;
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency   :=  0;
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency      :=  0;
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency   :=  0;
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency   :=  0;
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency    :=  0;
end;

procedure OfiMascaraOcv;
begin
  dmGeral.OFI_CD_M_OCVvlr_servicos.DisplayFormat    :=CMascaraValor;
  dmGeral.OFI_CD_M_OCVvlr_produtos.DisplayFormat    :=CMascaraValor;
  dmGeral.OFI_CD_M_OCVvlr_terceiro.DisplayFormat    :=CMascaraValor;
  dmGeral.OFI_CD_M_OCVdes_servicos.DisplayFormat    :=CMascaraValor;
  dmGeral.OFI_CD_M_OCVdes_produtos.DisplayFormat    :=CMascaraValor;
  dmGeral.OFI_CD_M_OCVvlr_total.DisplayFormat       :=CMascaraValor;
end;


procedure OfiMascaraOcvIte;
begin
  dmGeral.OFI_CD_M_OCV_ITEVLR_UNITARIO.DisplayFormat    :=CMascaraValor;
  dmGeral.OFI_CD_M_OCV_ITEVLR_BRUTO.DisplayFormat       :=CMascaraValor;
  dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.OFI_CD_M_OCV_ITEVLR_LIQUIDO.DisplayFormat     :=CMascaraValor;
  dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTO.DisplayFormat    :=CMascaraValor;
end;

procedure OfiCalculaVlrTotaisOcv;
begin
  dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;

  if (dmGeral.OFI_CD_M_OCV_ITE.RecordCount > 0) then
    begin
     dmGeral.OFI_CD_M_OCV_ITE.First;
     while (not dmGeral.OFI_CD_M_OCV_ITE.EOF) do
      begin
          //Se int_tipo_item for vazio, indica que usuário inseriu item não cadastrado
          //Resp.:Luan.Data:13/09/2016
        if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').text='') or
           (pos(dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').text,'00-04') <> 0) then
           // Comentário inserido por Maxsuel, conversado com Mariel, dia 21/09/16
           //(pos(dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').text,'00-01-02-03-04-05-06') <> 0) then
          begin
           dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency :=
                   dmGeral.OFI_CD_M_OCV.FieldByName('VLR_PRODUTOS').AsCurrency +
                   dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
          end;

        if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
           (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=False) then
          begin
            dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency :=
                   dmGeral.OFI_CD_M_OCV.FieldByName('VLR_SERVICOS').AsCurrency +
                   dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
          end;

        if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
          (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=True) then
          begin
            dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency :=
                   dmGeral.OFI_CD_M_OCV.FieldByName('VLR_TERCEIRO').AsCurrency +
                   dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
          end;

        dmGeral.OFI_CD_M_OCV_ITE.Next;
      end;
    end;
end;


procedure OfiValidaOcvIte(DataSet:TDataSet);
 var
  xMensErro:string;
 begin
  xMensErro:='';
        if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('id_item').AsString='') then
           begin
             xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
           end;

        if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('qtde').AsFloat=0) then
           begin
             xMensErro:= xMensErro + '.Qtde deve ser informado.'+ #13;
           end;

        if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency <= 0) then
           begin
              xMensErro:= xMensErro + '.Vlr Liquido deve ser maior que zero.'+ #13;
           end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
end;

procedure OfiValidaOcv;
var
  xMensErro:string;
begin
  xMensErro:='';

         if (dmGeral.OFI_CD_M_OCV.FieldByName('id_orcamento').AsString='') then
           begin
             xMensErro:= xMensErro + '.Orçamento deve ser informado.'+ #13;
           end;

        if (dmGeral.OFI_CD_M_OCV.FieldByName('dta_orcamento').AsString='') then
           begin
             xMensErro:= xMensErro + '.Data de orçamento deve ser informado.'+ #13;
           end
        else
          begin
            if dmGeral.OFI_CD_M_OCV.FieldByName('DTA_VALIDADE').AsDateTime <
              dmGeral.OFI_CD_M_OCV.FieldByName('DTA_ORCAMENTO').AsDateTime then
              begin
                xMensErro:= xMensErro + '.Data de validade não pode ser menor que a data do orçamento.'+ #13;
              end;
          end;

        if (dmGeral.OFI_CD_M_OCV.FieldByName('dta_validade').AsString='') then
           begin
             xMensErro:= xMensErro + '.Data de validade deve ser informado.'+ #13;
           end;

         if (dmGeral.OFI_CD_M_OCV.FieldByName('nome_cliente').AsString='') then
           begin
             xMensErro:= xMensErro + '.Nome do cliente deve ser informado.'+ #13;
           end;

         if (dmGeral.OFI_CD_M_OCV.FieldByName('doc_cnpj_cpf').AsString='') then
           begin
             xMensErro:= xMensErro + '.CNPJ/CPF deve ser informado.'+ #13;
           end;

         if (dmGeral.OFI_CD_M_OCV.FieldByName('doc_cnpj_cpf').AsString<>'') then
           begin
              if not (dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString.Length in [11,14]) then
                begin
                  xMensErro:= xMensErro + '.CNPJ/CPF inválido.'+ #13;
                end;

              if (dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString.Length = 11) then
                begin
                 if (enFunc.VerCPF(dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString) = False) then
                   begin
                    xMensErro:= xMensErro + '.CNPJ/CPF inválido.'+ #13;
                   end;
                end;

              if (dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString.Length = 14) then
                begin
                  if (enFunc.VerCNPJ(dmGeral.OFI_CD_M_OCV.FieldByName('DOC_CNPJ_CPF').AsString) = False) then
                    begin
                      xMensErro:= xMensErro + '.CNPJ/CPF inválido.'+ #13;
                    end;
                end;
           end;


         if (dmGeral.OFI_CD_M_OCV.FieldByName('placa').AsString='') and
            (dmGeral.OFI_CD_M_OCV.FieldByName('tipo_orcamento').AsString <> '2') then
           begin
             xMensErro:= xMensErro + '.Placa deve ser informado.'+ #13;
           end;

         if (dmGeral.OFI_CD_M_OCV.FieldByName('chassi').AsString='') and
            (dmGeral.OFI_CD_M_OCV.FieldByName('tipo_orcamento').AsString= '2') then
           begin
             xMensErro:= xMensErro + '.Chassi deve ser informado.'+ #13;
           end;

        { if (dmGeral.OFI_CD_M_OCV.FieldByName('km_atual').AsString='') then
           begin
             xMensErro:= xMensErro + '.Km atual deve ser informado.'+ #13;
           end;  }

         if (dmGeral.OFI_CD_M_OCV.FieldByName('id_funcionario').AsString='') then
           begin
             xMensErro:= xMensErro + '.Funcionário deve ser informado.'+ #13;
           end;

         if (dmGeral.OFI_CD_M_OCV.FieldByName('id_analista').AsString='') then
           begin
             xMensErro:= xMensErro + '.Analista deve ser informado.'+ #13;
           end;

         if (dmGeral.OFI_CD_M_OCV.FieldByName('id_condicao_pag').AsString='') then
           begin
             xMensErro:= xMensErro + '.Condição de pagamento deve ser informado.'+ #13;
           end;

         if ((dmGeral.OFI_CD_M_OCV.FieldByName('vlr_total').AsString='') or
            (dmGeral.OFI_CD_M_OCV.FieldByName('vlr_total').AsCurrency<=0)) then
           begin
             xMensErro:= xMensErro + '.Vlr Total deve ser maior que zero.'+ #13;
           end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;

end;

procedure OFI_CD_M_OCV_ITEitemChange;
VAR
  id_categoria:Integer;
  Id_perfil_cli:String;
begin
 id_categoria :=0;
 if  dmGeral.BUS_CD_C_VEI.FieldByName('INT_ID_CAT').AsString<>'' then
    id_categoria := dmGeral.BUS_CD_C_VEI.FieldByName('INT_ID_CAT').AsInteger;

 if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency = 0) then
    begin
      if ((((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRC_ITE_MANUAL').AsBoolean=true) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PRECO_POR_PERFIL').AsBoolean=true)) or
           (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CORR_PRECO_PRAZO').AsBoolean=true)) and
           (dmGeral.OFI_CD_M_OCV.FieldByName('ID_CLIENTE').AsInteger > 0))   then
         id_perfil_cli :=  dmGeral.BUS_CD_C_CLI.FieldByName('id_perfil_cli').AsString
      else
          id_perfil_cli := '0';
      if (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('ID_ITEM').AsCurrency>0) then
        dmGeral.CalcPrecoItem(1,id_perfil_cli,dmGeral.OFI_CD_M_OCV.FieldByName('ID_CONDICAO_PAG').Text,
                         dmGeral.OFI_CD_M_OCV_ITE,false,false,0,0,id_categoria);
    end;
end;




procedure ofiOcvCalcTotalItem;
begin
  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
   RoundTo((dmGeral.OFI_CD_M_OCV_ITE.FieldByName('QTDE').AsFloat*
    dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency),-2);

  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
   RoundTo( (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency-
      dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
end;

{procedure OFI_CD_M_OCV_ITEPER_DESCONTOChange(Sender: TField);
begin
  if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency > 0 then
      begin
        if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
           begin
              dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTO.OnChange := nil;
              dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTO.OnChange := nil;

              dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                 (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency *
                  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency) / 100;
              dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                 (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                  dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency;

              dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTO.OnChange := dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTOChange;
              dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTO.OnChange := dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTOChange;
           end;
      end
   else
      begin
        dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTO.OnChange := nil;
        dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTO.OnChange := nil;

        dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
        dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

        dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTO.OnChange := dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTOChange;
        dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTO.OnChange := dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTOChange;
      end;
  ofiOcvCalcTotalItem;


end; }

{procedure OFI_CD_M_OCV_ITEVLR_DESCONTOChange(Sender: TField);
begin

  if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
     begin
       if dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
          begin
             dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTO.OnChange := nil;

             dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                   (dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                    dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency;

             dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTO.OnChange := dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTOChange;
          end;
     end
  else
     begin
       dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTO.OnChange := nil;
       dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTO.OnChange := nil;

       dmGeral.OFI_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
       dmGeral.OFI_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

       dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTO.OnChange := dmGeral.OFI_CD_M_OCV_ITEPER_DESCONTOChange;
       dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTO.OnChange := dmGeral.OFI_CD_M_OCV_ITEVLR_DESCONTOChange;
     end;
  ofiOcvCalcTotalItem;

end;  }

end.
