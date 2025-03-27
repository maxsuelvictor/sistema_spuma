unit OFI_RN_M_OCQ;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure OfiNovaOcq;
procedure OfiNovaOcqIte;
procedure OfiMascaraOcq;
procedure OfiMascaraOcqIte;
procedure OfiValidaOcqIte(DataSet:TDataSet);
procedure OfiValidaOcq;
procedure OFI_CD_M_OCQ_ITEitemChange;
procedure ofiOcqCalcTotalItem;//qdte  e vlr_unitario


procedure OfiRatearVlrDescOcq;
procedure OfiCalculaVlrTotaisOcq;
procedure OfiAtualizaVlrDescOcq;
procedure OfiZerarVlrDescOcq;
procedure OfiCalculaNumeroPecasSerOcq(var num_pecas,num_servicos:integer);

procedure OFI_CD_M_OCQdes_servicosChange;
procedure OFI_CD_M_OCQdes_produtosChange;

implementation
Uses uDmGeral,enConstantes, uProxy, enFunc, OFI_UN_M_OCQ;

procedure OfiZerarVlrDescOcq;
begin
  if OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.State in [dsEdit] then
      begin
         if OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09' then
           begin
             try
              OFI_FM_M_OCQ.OFI_CD_M_OCQdes_servicos.OnChange := nil;
              OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_SERVICOS').AsCurrency := 0;
             finally
               OFI_FM_M_OCQ.OFI_CD_M_OCQdes_servicos.OnChange := OFI_FM_M_OCQ.OFI_CD_M_OCQdes_servicosChange;
             end;
           end
         else
           begin
             try
              OFI_FM_M_OCQ.OFI_CD_M_OCQdes_produtos.OnChange := nil;
             OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_PRODUTOS').AsCurrency := 0;
             finally
               OFI_FM_M_OCQ.OFI_CD_M_OCQdes_produtos.OnChange := OFI_FM_M_OCQ.OFI_CD_M_OCQdes_produtosChange;
             end;
           end;
         OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
         OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
      end;
end;

procedure OfiNovaOcq;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('ID_ORCAMENTO').AsInteger := SMPrincipal.enValorChave('OFI_TB_M_OCQ');
  finally
    FreeAndNil(SMPrincipal);
  end;

  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('ID_EMPRESA').AsInteger :=
         dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('ID_FUNCIONARIO').AsInteger := xFuncionario;

  dmGeral.BusFuncionario(0,OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('ID_FUNCIONARIO').Text);
  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('INT_NOMEFUC').AsString :=
               dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
     end;

  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DTA_ORCAMENTO').AsDateTime   := xDataSis;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DTA_VALIDADE').AsDateTime   := xDataSis;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('STATUS').AsInteger := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_SERVICOS').AsCurrency := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TERCEIRO').AsCurrency := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_SERVICOS').AsCurrency := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_PRODUTOS').AsCurrency := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TOTAL').AsCurrency := 0;

end;

procedure OFI_CD_M_OCQdes_produtosChange;
begin
   if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_PRODUTOS').AsCurrency <
      OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency) then
    begin
     OFI_RN_M_OCQ.OfiRatearVlrDescOcq;
    end
  else
    begin
       if (not ((OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_PRODUTOS').AsCurrency = 0) and
          (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency = 0))) then
        begin
         ShowMessage('O desconto de produtos não pode ser maior ou igual ao valor total de produtos.');
         OFI_RN_M_OCQ.OfiAtualizaVlrDescOcq;
        end;
    end;
end;

procedure OFI_CD_M_OCQdes_servicosChange;
var
  total_servicos:currency;
begin
  total_servicos := OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_SERVICOS').AsCurrency +
                    OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TERCEIRO').AsCurrency;
  if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_SERVICOS').AsCurrency < total_servicos ) then
    begin
     OFI_RN_M_OCQ.OfiRatearVlrDescOcq;
    end
  else
    begin
      if (not ((OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_SERVICOS').AsCurrency = 0) and
          (total_servicos = 0))) then
        begin
          ShowMessage('O desconto de serviços não pode ser maior ou igual a soma do valor total de serviços e de terceiros');
          OFI_RN_M_OCQ.OfiAtualizaVlrDescOcq;
        end;
    end;
end;

procedure OfiAtualizaVlrDescOcq;
VAR
  des_produtos,des_servicos:currency;
begin
    des_produtos :=0;
    des_servicos :=0;

    if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.RecordCount >0) then
    begin
     OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.First;
     while (not OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.EOF) do
       begin
        if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
          begin
            des_produtos := des_produtos +
                            OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
          end
        else
          begin
            des_servicos := des_servicos +
                            OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
          end;
       OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.Next;
      end;
    end;

    try
      OFI_FM_M_OCQ.OFI_CD_M_OCQdes_servicos.OnChange := nil;
      OFI_FM_M_OCQ.OFI_CD_M_OCQdes_produtos.OnChange := nil;
      OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_PRODUTOS').AsCurrency := des_produtos;
      OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_SERVICOS').AsCurrency := des_servicos;
    finally
      OFI_FM_M_OCQ.OFI_CD_M_OCQdes_servicos.OnChange := OFI_FM_M_OCQ.OFI_CD_M_OCQdes_servicosChange;
      OFI_FM_M_OCQ.OFI_CD_M_OCQdes_produtos.OnChange := OFI_FM_M_OCQ.OFI_CD_M_OCQdes_produtosChange;
    end;
end;


procedure OfiCalculaNumeroPecasSerOcq(var num_pecas,num_servicos:integer);
begin
  num_pecas := 0;
  num_servicos := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.Cancel;
  if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.RecordCount > 0) then
    begin
      OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.First;
      while (not OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.Eof) do
         begin
           if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
              begin
                 num_pecas := num_pecas + 1;
              end;
           if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') then
              begin
                 num_servicos := num_servicos + 1;
              end;
           OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.Next;
         end;
    end;
end;

procedure OfiRatearVlrDescOcq;
var
  num_pecas,num_servicos:integer;
  desc_acum_pec,desc_acum_ser:currency;
begin
   desc_acum_pec := 0;
   desc_acum_ser := 0;

   OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TOTAL').AsCurrency := 0;
   OfiCalculaNumeroPecasSerOcq(num_pecas,num_servicos);

  if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.RecordCount >0) then
    begin
       try
         OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.AfterPost := nil;
         OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.First;
         while (not OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.EOF) do
           begin
             OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.Edit;
              if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                begin
                   if (num_pecas > 1) then
                    begin
                      OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           RoundTo(OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_PRODUTOS').AsCurrency*
                           (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency/OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency),-2);
                      desc_acum_pec := desc_acum_pec + OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                    end;
                  if (num_pecas = 1) then
                    begin
                      OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           RoundTo( OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_PRODUTOS').AsCurrency - desc_acum_pec,-2);
                    end;

                   OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                         RoundTo( (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                           OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);
                   num_pecas := num_pecas - 1;
                end
              else
                begin
                  if (num_servicos > 1) then
                    begin
                       OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           RoundTo( OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_SERVICOS').AsCurrency*
                           (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency/
                           (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_SERVICOS').AsCurrency+ OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TERCEIRO').AsCurrency)),-2);

                       desc_acum_ser := desc_acum_ser + OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                    end;
                  if (num_servicos = 1) then
                    begin
                      OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           RoundTo( OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DES_SERVICOS').AsCurrency - desc_acum_ser,-2);
                    end;


                   OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                        RoundTo( (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                           OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);
                  num_servicos := num_servicos - 1;
                end;

              OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                    RoundTo( (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                    OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
              OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.Post;

              OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TOTAL').AsCurrency :=
                           OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TOTAL').AsCurrency +
                           OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

              OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.Next;
           end;
       finally
          OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.AfterPost := OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEAfterPost;
       end;
    end;
end;

procedure OfiNovaOcqIte;
begin

  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('ID_SEQUENCIA').AsInteger := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('QTDE').AsFloat              :=  0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency   :=  0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency      :=  0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('PER_DESCONTO').AsCurrency   :=  0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency   :=  0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_LIQUIDO').AsCurrency    :=  0;
end;

procedure OfiMascaraOcq;
begin
  OFI_FM_M_OCQ.OFI_CD_M_OCQvlr_servicos.DisplayFormat    :=CMascaraValor;
  OFI_FM_M_OCQ.OFI_CD_M_OCQvlr_produtos.DisplayFormat    :=CMascaraValor;
  OFI_FM_M_OCQ.OFI_CD_M_OCQvlr_terceiro.DisplayFormat    :=CMascaraValor;
  OFI_FM_M_OCQ.OFI_CD_M_OCQdes_servicos.DisplayFormat    :=CMascaraValor;
  OFI_FM_M_OCQ.OFI_CD_M_OCQdes_produtos.DisplayFormat    :=CMascaraValor;
  OFI_FM_M_OCQ.OFI_CD_M_OCQvlr_total.DisplayFormat       :=CMascaraValor;
end;


procedure OfiMascaraOcqIte;
begin
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEVLR_UNITARIO.DisplayFormat    :=CMascaraValor;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEVLR_BRUTO.DisplayFormat       :=CMascaraValor;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEVLR_DESCONTO.DisplayFormat    :=CMascaraValor;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEVLR_LIQUIDO.DisplayFormat     :=CMascaraValor;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITEPER_DESCONTO.DisplayFormat    :=CMascaraValor;
end;

procedure OfiCalculaVlrTotaisOcq;
begin
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_SERVICOS').AsCurrency := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
  OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TERCEIRO').AsCurrency := 0;

  if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.RecordCount > 0) then
    begin
     OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.First;
     while (not OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.EOF) do
      begin
          //Se int_tipo_item for vazio, indica que usuário inseriu item não cadastrado
          //Resp.:Luan.Data:13/09/2016
        if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').text='') or
           (pos(OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').text,'00-04') <> 0) then
           // Comentário inserido por Maxsuel, conversado com Mariel, dia 21/09/16
           //(pos(OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').text,'00-01-02-03-04-05-06') <> 0) then
          begin
           OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency :=
                   OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_PRODUTOS').AsCurrency +
                   OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency;
          end;

        if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
           (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=False) then
          begin
            OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_SERVICOS').AsCurrency :=
                   OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_SERVICOS').AsCurrency +
                   OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency;
          end;

        if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
          (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=True) then
          begin
            OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TERCEIRO').AsCurrency :=
                   OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('VLR_TERCEIRO').AsCurrency +
                   OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency;
          end;

        OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.Next;
      end;
    end;
end;


procedure OfiValidaOcqIte(DataSet:TDataSet);
 var
  xMensErro:string;
 begin
  xMensErro:='';
        if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('id_item').AsString='') then
           begin
             xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
           end;

        if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('qtde').AsFloat=0) then
           begin
             xMensErro:= xMensErro + '.Qtde deve ser informado.'+ #13;
           end;

        if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_LIQUIDO').AsCurrency <= 0) then
           begin
              xMensErro:= xMensErro + '.Vlr Liquido deve ser maior que zero.'+ #13;
           end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
end;

procedure OfiValidaOcq;
var
  xMensErro:string;
begin
  xMensErro:='';

         if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('id_orcamento').AsString='') then
           begin
             xMensErro:= xMensErro + '.Orçamento deve ser informado.'+ #13;
           end;

        if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('dta_orcamento').AsString='') then
           begin
             xMensErro:= xMensErro + '.Data de orçamento deve ser informado.'+ #13;
           end
        else
          begin
            if OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DTA_VALIDADE').AsDateTime <
              OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DTA_ORCAMENTO').AsDateTime then
              begin
                xMensErro:= xMensErro + '.Data de validade não pode ser menor que a data do orçamento.'+ #13;
              end;
          end;

        if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('dta_validade').AsString='') then
           begin
             xMensErro:= xMensErro + '.Data de validade deve ser informado.'+ #13;
           end;

         if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('nome_cliente').AsString='') then
           begin
             xMensErro:= xMensErro + '.Nome do cliente deve ser informado.'+ #13;
           end;

         if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('doc_cnpj_cpf').AsString='') then
           begin
             xMensErro:= xMensErro + '.CNPJ/CPF deve ser informado.'+ #13;
           end;

         if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('doc_cnpj_cpf').AsString<>'') then
           begin
              if not (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString.Length in [11,14]) then
                begin
                  xMensErro:= xMensErro + '.CNPJ/CPF inválido.'+ #13;
                end;

              if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString.Length = 11) then
                begin
                 if (enFunc.VerCPF(OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString) = False) then
                   begin
                    xMensErro:= xMensErro + '.CNPJ/CPF inválido.'+ #13;
                   end;
                end;

              if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString.Length = 14) then
                begin
                  if (enFunc.VerCNPJ(OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('DOC_CNPJ_CPF').AsString) = False) then
                    begin
                      xMensErro:= xMensErro + '.CNPJ/CPF inválido.'+ #13;
                    end;
                end;
           end;


         if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('id_equipamento').AsString='')  then
           begin
             xMensErro:= xMensErro + '.Equipamento deve ser informado.'+ #13;
           end;

         if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('id_funcionario').AsString='') then
           begin
             xMensErro:= xMensErro + '.Funcionário deve ser informado.'+ #13;
           end;

         if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('id_analista').AsString='') then
           begin
             xMensErro:= xMensErro + '.Analista deve ser informado.'+ #13;
           end;

         if (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('id_condicao_pag').AsString='') then
           begin
             xMensErro:= xMensErro + '.Condição de pagamento deve ser informado.'+ #13;
           end;

         if ((OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('vlr_total').AsString='') or
            (OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('vlr_total').AsCurrency<=0)) then
           begin
             xMensErro:= xMensErro + '.Vlr Total deve ser maior que zero.'+ #13;
           end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;

end;

procedure OFI_CD_M_OCQ_ITEitemChange;
VAR
  id_categoria:Integer;
begin
 id_categoria :=0;

 if (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency = 0) then
    begin
      dmGeral.CalcPrecoItem(1,'0',OFI_FM_M_OCQ.OFI_CD_M_OCQ.FieldByName('ID_CONDICAO_PAG').Text,
                        OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE,false,false,0,0,id_categoria);
    end;
end;




procedure ofiOcqCalcTotalItem;
begin
  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
   RoundTo((OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('QTDE').AsFloat*
    OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_UNITARIO').AsCurrency),-2);

  OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
   RoundTo( (OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_BRUTO').AsCurrency-
      OFI_FM_M_OCQ.OFI_CD_M_OCQ_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
end;

end.
