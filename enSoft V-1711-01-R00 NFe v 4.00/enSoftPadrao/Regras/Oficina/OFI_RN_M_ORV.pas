unit OFI_RN_M_ORV;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure OfiNovaOrv(DataSet: TDataSet);
procedure OfiNovaOrvIte(DataSet: TDataSet);
procedure OfiMascaraOrv(DataSet: TDataSet);
procedure OfiMascaraOrvIte(DataSet: TDataSet);
procedure OfiValidaOrv(DataSet: TDataSet);
procedure OfiValidaOrvIte(DataSet: TDataSet);
procedure OfiAtuSeqOrvIte;

procedure OfiOrvCalcTotalItem;
//function OfiBuscarTipoItemOrv(Id_item:string):Integer;


procedure OfiZerarVlrDescOrv;
procedure OfiImportarOrcamentoOrv;
procedure OfiCalculaVlrTotaisOrv;
procedure OfiAtualizaVlrDescOrv;
procedure OfiRatearVlrDescOrv;
procedure OfiCalculaNumeroPecasSerTer(var num_pecas,num_servicos,num_terceiros:integer);
function OfiDeletaItensNaoTemSaldoOrv:Boolean;
procedure OfiZerarValoresOrv;

procedure OFI_CD_M_ORVper_desc_produtosChange;
procedure OFI_CD_M_ORVper_desc_servicosChange;
procedure OFI_CD_M_ORVper_desc_terceiroChange;

procedure OFI_CD_M_ORVvlr_desc_terceiroChange;
procedure OFI_CD_M_ORVvlr_desc_produtosChange;
procedure OFI_CD_M_ORVvlr_desc_servicosChange;

procedure OFI_CD_M_ORV_ITEitemChange;
procedure OFI_CD_M_ORV_DESdataChange;
procedure PreencherMecItem;

procedure BusOrdemAbertoFechadaAndamento; //Busca ordem de servico em aberto, andamento ou fechado.Data:03/09/2015
                                          //Responsavel:Luan.

procedure OfiAtualizarVlrUnitarioOrv(id_item:string;VlrUnitario:currency);


implementation
Uses uDmGeral,enConstantes, uProxy, FAT_RN_M_NFE;


procedure PreencherMecItem;
begin

  try
   dmGeral.OFI_CD_M_ORV_ITE.BeforePost := nil;
   dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;
   dmGeral.OFI_CD_M_ORV_ITE.First;
  while not dmgeral.OFI_CD_M_ORV_ITE.eof do
    begin
       if  (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') or
           ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
         begin
           dmGeral.OFI_CD_M_ORV_ITE.Edit;
           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsInteger :=
                 dmGeral.OFI_CD_M_ORV.FieldByName('ID_MECANICO').AsInteger;

           dmGeral.OFI_CD_M_ORV_ITE.post;
         end;
        dmGeral.OFI_CD_M_ORV_ITE.Next;
    end;
  finally
     dmGeral.OFI_CD_M_ORV_ITE.BeforePost :=  dmGeral.OFI_CD_M_ORV_ITEBeforePost;
     dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
  end;

end;


procedure OfiAtualizarVlrUnitarioOrv(id_item:string;VlrUnitario:currency);
begin

  try
     dmGeral.OFI_CD_M_ORV_ITE.Filtered := true;
     dmGeral.OFI_CD_M_ORV_ITE.Filter   := ' ID_ITEM = ' + id_item;
     dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange := nil;
     dmGeral.OFI_CD_M_ORV_ITE.BeforePost := nil;
     dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;
     dmGeral.OFI_CD_M_ORV_ITE.Cancel;
     if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) then
        begin
          while not dmGeral.OFI_CD_M_ORV_ITE.eof do
              begin
                dmGeral.OFI_CD_M_ORV_ITE.edit;
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency := VlrUnitario;
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                OFI_RN_M_ORV.OfiOrvCalcTotalItem;
                dmGeral.OFI_CD_M_ORV_ITE.Post;
                dmGeral.OFI_CD_M_ORV_ITE.Next
              end;
        end;
  finally
     dmGeral.OFI_CD_M_ORV_ITE.Filtered := false;
     dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange :=  dmGeral.OFI_CD_M_ORV_ITEvlr_unitarioChange;
     dmGeral.OFI_CD_M_ORV_ITE.BeforePost := dmGeral.OFI_CD_M_ORV_ITEBeforePost;
     dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
  end;

end;

function OfiDeletaItensNaoTemSaldoOrv:Boolean;
var
  saldo_fisico:string;
  mens:string;
begin
  result := false;
  mens := '';
  dmGeral.OFI_CD_M_ORV_ITE.Cancel;
  dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := nil;
  while (not dmGeral.OFI_CD_M_ORV_ITE.Eof) do
    begin
      if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
        begin
         dmGeral.BusSaldoItem(dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').Text,
                                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').Text,
                                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_COR').Text,
                                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TAMANHO').Text,
                                   '0',saldo_fisico);
          if (saldo_fisico = '') or
             (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat > saldo_fisico.ToDouble(saldo_fisico)) then
               begin
                  mens := mens + 'Cod. Item: '+dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsString+
                      '  Qtde orçada: '+ dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsString+#13+#10;
                  dmGeral.OFI_CD_M_ORV_ITE.Delete;
               end
           else
               begin
                  dmGeral.OFI_CD_M_ORV_ITE.Next;
               end;
        end
      else
        begin
          dmGeral.OFI_CD_M_ORV_ITE.Next;
        end;
    end;
   dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := dmGeral.OFI_CD_M_ORV_ITEAfterDelete;

   if (mens <>'') then
      begin
        mens := 'Os seguintes itens foram excluídos por não apresentarem saldo:'+#13+#10+mens;
        ShowMessage(mens);
        dmGeral.OFI_CD_M_ORV.FieldByName('OBSERVACOES').AsString := mens;
        result := true;
      end;
end;


procedure OfiCalculaNumeroPecasSerTer(var num_pecas,num_servicos,num_terceiros:integer);
begin
  num_pecas := 0;
  num_servicos := 0;
  num_terceiros := 0;
  dmGeral.OFI_CD_M_ORV_ITE.Cancel;
  if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) then
    begin
      dmGeral.OFI_CD_M_ORV_ITE.First;
      while (not dmGeral.OFI_CD_M_ORV_ITE.Eof) do
         begin
           if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
            begin
             if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                begin
                  num_pecas := num_pecas + 1;
                end;
             if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
                begin
                 num_servicos := num_servicos + 1;
                end;
             if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
                begin
                 num_terceiros := num_terceiros + 1;
                end;
            end;
           dmGeral.OFI_CD_M_ORV_ITE.Next;
         end;
    end;
end;

procedure BusOrdemAbertoFechadaAndamento;
begin
   dmGeral.BUS_CD_M_ORV.Close;
   dmGeral.BUS_CD_M_ORV.Data :=
        dmGeral.BUS_CD_M_ORV.DataRequest(VarArrayOf([93,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').AsInteger,
                                                     dmGeral.OFI_CD_M_ORV.FieldByName('ID_TIPO_OS').AsInteger,
                                                     '1',dmGeral.OFI_CD_M_ORV.FieldByName('ID_VEICULO').AsInteger,
                                                     dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsInteger,
                                                     dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsInteger]));
end;

procedure OfiZerarVlrDescOrv;
begin
  // if dmGeral.OFI_CD_M_ORV_ITE.State in [dsEdit] then
     // begin
         if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
            (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
           begin
             try
               dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
             finally
               dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;
             end;

           end;

         if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
            (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
           begin
             try
               dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
             finally
               dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
             end;

           end;

         if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
           begin
             try
               dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
             finally
               dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
             end;

           end;
       //  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
         //dmGeral.OFI_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
      //end;
end;

procedure OfiOrvCalcTotalItem;
begin
  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
   RoundTo((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat*
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency),-2);

  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
   RoundTo( (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency-
      dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
end;


procedure OFI_CD_M_ORVvlr_desc_terceiroChange;
begin

   if dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency < 0) then
    begin
      try
       dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
       dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
      finally
        dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
      end;
    end;


  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency >=
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency) and
       (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency > 0) then
    begin
      ShowMessage('O valor desconto tem que ser menor ao valor de terceiros.');
      OfiAtualizaVlrDescOrv;
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').FocusControl;
      exit;
    end;

  try
    dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;
    if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
       begin
        dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency:=
                                                 RoundTo( (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                                                   dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency)*100,-2);
       end;

    if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency = 0) then
       begin
         dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
       end;
  finally
     dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
  end;


  OfiRatearVlrDescOrv;
end;

procedure OFI_CD_M_ORVvlr_desc_produtosChange;
begin
    if dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency < 0) then
    begin
      try
       dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
       dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
      finally
        dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
      end;

    end;


  if ((dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency >=
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency) and
        (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency >0)) then
    begin
      ShowMessage('O valor desconto tem que ser menor ao valor de produtos.');
      OfiAtualizaVlrDescOrv;
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').FocusControl;
      exit;
    end;

  try
    dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
    if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
       begin
        dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency:=
                                                RoundTo(  (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                                                   dmgeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)*100,-2);
       end;

    if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency = 0) then
       begin
         dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
       end;
  finally
    dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
  end;


  OfiRatearVlrDescOrv;
end;

procedure OFI_CD_M_ORVvlr_desc_servicosChange;
begin
   if dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency < 0) then
    begin
      try
        dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
      finally
         dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
      end;

    end;


  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency >=
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency) and
       (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency >0) then
    begin
      ShowMessage('O valor desconto tem que ser menor ao valor de serviços.');
      OfiAtualizaVlrDescOrv;
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').FocusControl;
      exit;
    end;

  try
      dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
      if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
         begin
          dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency:=
                                               RoundTo( (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                                                     dmgeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100,-2);
         end;

      if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency = 0) then
         begin
           dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
         end;
  finally
      dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
  end;


  OfiRatearVlrDescOrv;
end;

procedure OFI_CD_M_ORVper_desc_terceiroChange;
begin
   if dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
      dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
    end;


   if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency = 0) and
      (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency > 0) then
    begin
      ShowMessage('o valor total dos terceiros é zero.');
      OfiAtualizaVlrDescOrv;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').FocusControl;
      exit;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency >=100) then
    begin
      ShowMessage('A porcentagem de desconto tem que ser menor que 100%.');
      OfiAtualizaVlrDescOrv;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').FocusControl;
      exit;
    end;

  dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := (dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency)*
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency)/100;
  dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;

  OfiRatearVlrDescOrv;
end;


procedure OFI_CD_M_ORVper_desc_servicosChange;
begin

   if dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
      dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
    end;


   if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency = 0) and
      (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency > 0) then
    begin
      ShowMessage('o valor total dos serviços é zero.');
      OfiAtualizaVlrDescOrv;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').FocusControl;
      exit;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency >=100) then
    begin
      ShowMessage('A porcentagem de desconto tem que ser menor que 100%.');
      OfiAtualizaVlrDescOrv;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').FocusControl;
      exit;
    end;

  dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;
  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := (dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency)*
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency)/100;
  dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;

  OfiRatearVlrDescOrv;
end;

procedure OFI_CD_M_ORVper_desc_produtosChange;
begin

   if dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
      dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
    end;


   if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency = 0) and
      (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency > 0) then
    begin
      ShowMessage('o valor total dos produtos é zero.');
      OfiAtualizaVlrDescOrv;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').FocusControl;
      exit;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency >=100) then
    begin
      ShowMessage('A porcentagem de desconto tem que ser menor que 100%.');
      OfiAtualizaVlrDescOrv;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').FocusControl;
      exit;
    end;

  dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := (dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency)*
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)/100;
  dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;

  OfiRatearVlrDescOrv;
end;


procedure OfiZerarValoresOrv;
begin
    dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
    dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
    dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;
    dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
    dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;
    dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
    dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
    dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
    dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
    dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;
    dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
end;


procedure OfiNovaOrv(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsInteger :=
         SMPrincipal.enValorChave('OFI_TB_M_ORV');

  finally
    FreeAndNil(SMPrincipal);
  end;
    dmGeral.OFI_CD_M_ORV.FieldByName('ID_EMPRESA').AsInteger :=
    dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
    dmGeral.OFI_CD_M_ORV.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
    dmGeral.OFI_CD_M_ORV.FieldByName('DTA_ENTREGA').AsDateTime   := xDataSis;
    dmGeral.OFI_CD_M_ORV.FieldByName('DTA_EMISSAO').AsDateTime   := xDataSis;
    //dmGeral.OFI_CD_M_ORV.FieldByName('KM_ATUAL').AsInteger := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('TANQUE_COMBUS').AsInteger := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('STATUS').AsInteger := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('ISS_VALOR_RETIDO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('HOR_EMISSAO').AsDateTime := Time();
    dmGeral.OFI_CD_M_ORV.FieldByName('ORDEM_SUBSTITUICAO').AsBoolean := false;
end;

procedure OfiAtualizaVlrDescOrv;
VAR
  des_produtos,des_servicos,des_terceiro:currency;
begin
    des_produtos :=0;
    des_servicos :=0;
    des_terceiro :=0;

    if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) then
      begin
       dmGeral.OFI_CD_M_ORV_ITE.First;
       while (not dmGeral.OFI_CD_M_ORV_ITE.EOF) do
         begin
          if (dmGeral.OFI_CD_M_ORV_ITE.FieldBYName('CANCELADA').AsBoolean = False) then
             begin
              if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                begin
                  des_produtos := des_produtos +
                              dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                end;
              if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                  (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
                begin
                 des_servicos := des_servicos +
                                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                end;
              if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                 (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
                begin
                  des_terceiro := des_terceiro +
                              dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                end;
            end;
         dmGeral.OFI_CD_M_ORV_ITE.Next;
        end;
      end;

    try
        dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;
        dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
        dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
        dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
        dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
        dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;

        dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;

        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := des_produtos;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := des_servicos;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := des_terceiro;

        if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
           begin
             dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency :=
                 RoundTo(  (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)*100,-2);
           end;

        if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
           begin
             dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency :=
                 RoundTo(  (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100,-2);
           end;

        if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
           begin
             dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency :=
                 RoundTo(  (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency)*100,-2);
           end;
    finally
      dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;
      dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
      dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
      dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
      dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
      dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
    end;

end;



procedure OfiRatearVlrDescOrv;
var
  num_pecas,num_servicos,num_terceiros:integer;
  desc_acum_pec,desc_acum_ser,desc_acum_ter:currency;
begin
   desc_acum_pec := 0;
   desc_acum_ser := 0;
   desc_acum_ter := 0;

  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('ISS_VALOR_RETIDO').AsCurrency := 0;


  OfiCalculaNumeroPecasSerTer(num_pecas,num_servicos,num_terceiros);

  if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) then
    begin

       try

         dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;
         dmGeral.OFI_CD_M_ORV_ITE.First;
         while (not dmGeral.OFI_CD_M_ORV_ITE.EOF) do
           begin
             if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
                begin
                  dmGeral.OFI_CD_M_ORV_ITE.Edit;

                 if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                   begin
                    if (num_pecas > 1) then
                      begin
                       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                            RoundTo(dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency*
                              (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency/dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency),-2);
                       desc_acum_pec := desc_acum_pec + dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                      end;
                    if (num_pecas = 1) then
                      begin
                        dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                             RoundTo(dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency - desc_acum_pec,-2);
                      end;

                    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                            RoundTo( (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency :=
                            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency+
                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                    num_pecas := num_pecas - 1;
                   end;

                   if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                      (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False)) then
                     begin
                      if (num_servicos > 1) then
                        begin
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                             RoundTo( dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency*
                                      (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency/dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency),-2);
                          desc_acum_ser := desc_acum_ser + dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                        end;
                      if (num_servicos = 1) then
                        begin
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                           RoundTo( dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency - desc_acum_ser,-2);
                        end;

                      dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                             RoundTo( (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                             dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency :=
                             dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency+
                             dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                      num_servicos := num_servicos - 1;
                     end;

                     if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                        (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True)) then
                       begin
                        if (num_terceiros > 1) then
                          begin
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                            RoundTo( dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency*
                           (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency/dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency),-2);

                           desc_acum_ter := desc_acum_ter + dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                         end;
                     if (num_terceiros = 1) then
                       begin
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                              RoundTo( dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency - desc_acum_ter,-2);
                       end;

                     dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
                             RoundTo( (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                             dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency :=
                             dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency+
                             dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                     num_terceiros := num_terceiros - 1;
                   end;

                   dmGeral.OFI_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                        RoundTo(  (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100 ,-2);

                   dmGeral.OFI_CD_M_ORV_ITE.Post;
                end;
                dmGeral.OFI_CD_M_ORV_ITE.Next;
            end;
       finally
            dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
       end;

    end;

  { if ((dmGeral.CAD_CD_C_PAR_CTR.FieldBYName('calcular_iss_retido').AsBoolean = true) and
        (dmGeral.OFI_CD_M_ORV.FieldBYName('INT_SUBST_TRIB').AsBoolean=true) and
         (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean=true)) then
     begin
         dmGeral.OFI_CD_M_ORV.FieldByName('ISS_VALOR_RETIDO').AsCurrency :=

          roundTo((dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency +
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency  -
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency -
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency) *
                       (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_iss').AsFloat/100.0),-2);
     end; }


    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency -
                   (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency);// -
                  // dmGeral.OFI_CD_M_ORV.FieldByName('ISS_VALOR_RETIDO').AsCurrency;
end;



procedure OfiCalculaVlrTotaisOrv;
begin
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;

  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0;

  try
    dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
    dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
    dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;
    dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;



    if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) then
      begin
        dmGeral.OFI_CD_M_ORV_ITE.First;
        while (not dmGeral.OFI_CD_M_ORV_ITE.EOF) do
          begin
            if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = False) then
               begin
                 if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                    (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=False) then
                   begin
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency :=
                            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency +
                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                   end;

                 if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                    (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean=True) then
                   begin
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency :=
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                   end;

                 if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OMP').AsBoolean=true) then
                   begin
                      if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <>'09') then
                       begin
                         dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency :=
                            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency +
                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                       end;
                   end
                 else if (pos(dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').text,'00-01-02-03-04-05-06') <> 0) then
                   begin
                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency :=
                             dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency +
                             dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                   end;

              end;

            dmGeral.OFI_CD_M_ORV_ITE.Next;
          end;

          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency :=  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency;
          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency;
          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency;
          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=
                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency  +
                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency +
                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency;

          if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
             begin
               dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency :=
                   RoundTo(  (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)*100,-2);
             end;

          if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
             begin
               dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency :=
                   RoundTo(  (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100,-2);
             end;

          if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
             begin
               dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency :=
                   RoundTo(  (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency)*100,-2);
             end;
      end;
    finally
    dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
    dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
    dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
  end;
end;

procedure OfiImportarOrcamentoOrv;
var
  SMPrincipal : TSMClient;
  xcod_req:integer;
  saldo_fisico,mens:string;
begin
  mens := '';
  xcod_req := 0;

  dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
  dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
  dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;
  dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;
  dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;
  dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;
  dmGeral.OFI_CD_M_ORV.BeforePost := nil;

  dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange := nil;
  dmGeral.OFI_CD_M_ORV_ITEqtde.OnChange := nil;
  dmGeral.OFI_CD_M_ORV_ITE.BeforePost := nil;
  dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := nil;
  dmGeral.OFI_CD_M_ORV_ITE.AfterPost := nil;


  dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').AsString :=
          dmGeral.BUS_CD_M_OCV.FieldByName('ID_CONDICAO_PAG').AsString;

  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency := 0;

  dmGeral.OFI_CD_M_ORV_ITE.Cancel;
  while (dmGeral.OFI_CD_M_ORV_ITE.RecordCount>0)do
    begin
       dmGeral.OFI_CD_M_ORV_ITE.Delete;
    end;
   dmGeral.OFI_CD_M_ORV_ITE.Cancel;
   dmGeral.BUS_CD_M_OCV_ITE.First;
   while(not dmGeral.BUS_CD_M_OCV_ITE.EOF) do
     begin
       if (dmGeral.BUS_CD_M_OCV_ITE.FieldByName('ID_ITEM').AsString <> '0') then
         begin
           if (dmGeral.BUS_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
             begin
               dmGeral.BusSaldoItem(dmGeral.BUS_CD_M_OCV.FieldByName('ID_EMPRESA').Text,
                                       dmGeral.BUS_CD_M_OCV_ITE.FieldByName('ID_ITEM').Text,
                                       '0','0','0',saldo_fisico);
             end;
           if ((dmGeral.BUS_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') and ((saldo_fisico = '') or
              (dmGeral.BUS_CD_M_OCV_ITE.FieldByName('QTDE').AsFloat > saldo_fisico.ToDouble(saldo_fisico)))) then
              begin
                mens := mens + 'Cod. Item: '+dmGeral.BUS_CD_M_OCV_ITE.FieldByName('ID_ITEM').AsString+
                          '   Qtde Orçada: '+ dmGeral.BUS_CD_M_OCV_ITE.FieldByName('QTDE').AsString +'   Saldo no Estoque: '+saldo_fisico +#13+#10;
                dmGeral.BUS_CD_M_OCV_ITE.Next;
              end
           else
              begin
                dmGeral.OFI_CD_M_ORV_ITE.Insert;

                if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger = 0 then
                  begin
                    //Busca sequencia no servidor
                    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                    try
                    //  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');  //ERA OFI_TB_M_ORV_ITE
                      dmGeral.OFI_CD_M_ORV_ITEid_sequencia.AsInteger := (dmGeral.OFI_CD_M_ORV_ITE.RecordCount + 1) * -1;
                      if (xcod_req = 0) then
                        begin
                         xcod_req :=SMPrincipal.enValorChave('OFI_REQUISICAO');
                        end;
                      dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_REQUISICAO').AsInteger := xcod_req;
                    finally
                      FreeAndNil(SMPrincipal);
                    end;
                  end;
                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger :=
                         dmgeral.BUS_CD_M_OCV_ITE.FieldByName('ID_ITEM').AsInteger;

                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEITE').AsString :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('INT_NOMEITE').AsString;

                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEUND').AsString :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('INT_NOMEUND').AsString;

                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('INT_TIPO_ITEM').AsString;

                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean;

                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEAPL').AsString :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('INT_NOMEAPL').AsString;

                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEREF').AsString :=
                          dmGeral.BUS_CD_M_OCV_ITE.FieldByName('INT_NOMEREF').AsString;

                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('QTDE').AsFloat;
                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO').AsCurrency;
                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency;
                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('PER_DESCONTO').AsCurrency;
                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA_ITE_OCV').AsInteger :=
                         dmGeral.BUS_CD_M_OCV_ITE.FieldByName('ID_SEQUENCIA').AsInteger;

                 if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString <> '09') then
                   begin
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency :=
                            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency+
                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency :=
                            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency +
                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency :=
                            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                   end;

                 if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                    (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = False) then
                   begin
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency :=
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency :=
                          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency +
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency :=
                          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                   end;

                 if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09') and
                    (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = True) then
                   begin
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency :=
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency :=
                          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency +
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency :=
                          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency +
                          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                   end;

                 {dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=
                        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency +
                        dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency; }

                 dmGeral.OFI_CD_M_ORV_ITE.Post;


                 dmGeral.BUS_CD_M_OCV_ITE.Next;
             end;
         end
         else
          begin
            dmGeral.BUS_CD_M_OCV_ITE.Next;
          end;

   end;

   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency -
                   (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency +
                   dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency);

   if (dmGeral.OFI_CD_M_ORV_ITE.RecordCount > 0) then
      dmGeral.OFI_CD_M_ORV_ITE.First;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
       begin
         dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency :=
               (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)*100;
       end;

    if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
       begin
         dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency :=
               (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100;
       end;

    if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
       begin
         dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency :=
               (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency)*100;
       end;

  dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
  dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
  dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
  dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
  dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;
  dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
  dmGeral.OFI_CD_M_ORV.BeforePost := dmGeral.OFI_CD_M_ORVBeforePost;

  dmGeral.OFI_CD_M_ORV_ITEqtde.OnChange := dmGeral.OFI_CD_M_ORV_ITEqtdeChange;
  dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.OnChange := dmGeral.OFI_CD_M_ORV_ITEvlr_unitarioChange;
  dmGeral.OFI_CD_M_ORV_ITE.BeforePost := dmGeral.OFI_CD_M_ORV_ITEBeforePost;
  dmGeral.OFI_CD_M_ORV_ITE.AfterPost := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
  dmGeral.OFI_CD_M_ORV_ITE.AfterDelete := dmGeral.OFI_CD_M_ORV_ITEAfterDelete;

  if (mens <>'') then
    begin
       mens := 'Os seguintes itens foram excluídos por não terem saldo:'+#13+#10+mens;
        ShowMessage(mens);
        dmGeral.OFI_CD_M_ORV.FieldByName('OBSERVACOES').AsString := mens;
    end;
end;



{function OfiBuscarTipoItemOrv(Id_item:string):Integer;
begin
    result := 0;
    if (Id_item <>'') then
      begin
       dmGeral.BUS_CD_C_ITE.Close;
       dmGeral.BUS_CD_C_ITE.Data :=
             dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0,Id_item]));
       if (not dmGeral.BUS_CD_C_ITE.IsEmpty) then
         begin
           dmGeral.BUS_CD_C_GRU.Close;
           dmGeral.BUS_CD_C_GRU.Data :=
              dmGeral.BUS_CD_C_GRU.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString]));
           if ((not dmGeral.BUS_CD_C_GRU.IsEmpty) and (dmGeral.BUS_CD_C_GRU.FieldByName('TIPO_ITEM').AsString = '09')) then
             begin
               result := 1;
               if (dmGeral.BUS_CD_C_GRU.FieldByName('SER_TERCEIRO').AsBoolean = True) then
                 begin
                   result := 2;
                 end;
             end;
         end;
      end;
end; }



procedure OfiNovaOrvIte(DataSet: TDataSet);
begin
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger := 0;

    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_COR').AsInteger := 0;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_TAMANHO').AsInteger := 0;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean := False;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('DTA_REQUISICAO').AsDateTime := xDataSis;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat := 0;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency := 0;
end;

procedure OfiMascaraOrv(DataSet: TDataSet);
begin
   dmGeral.OFI_CD_M_ORVvlr_produtos.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_ORVvlr_desc_produtos.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_ORVvlr_prod_liquido.DisplayFormat := CMascaraValor;

   dmGeral.OFI_CD_M_ORVvlr_terceiro.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_ORVvlr_terc_liquido.DisplayFormat := CMascaraValor;

   dmGeral.OFI_CD_M_ORVvlr_serv_bruto.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_ORVvlr_desc_servicos.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_ORVvlr_ser_liquido.DisplayFormat := CMascaraValor;

   dmGeral.OFI_CD_M_ORVvlr_despesas.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_ORVvlr_credito.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_ORVvlr_total.DisplayFormat := CMascaraValor;

   dmGeral.OFI_CD_M_ORVvlr_cred_produtos.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_ORVvlr_cred_servicos.DisplayFormat := CMascaraValor;

   dmGeral.OFI_CD_M_ORViss_valor_retido.DisplayFormat := CMascaraValor;
end;


procedure OfiMascaraOrvIte(DataSet: TDataSet);
begin
   dmGeral.OFI_CD_M_ORV_ITEvlr_unitario.DisplayFormat:=CMascaraVlrMerc;
   dmGeral.OFI_CD_M_ORV_ITEvlr_bruto.DisplayFormat:=CMascaraValor;
   dmGeral.OFI_CD_M_ORV_ITEper_desconto.DisplayFormat:=CMascaraValor;
   dmGeral.OFI_CD_M_ORV_ITEvlr_desconto.DisplayFormat:=CMascaraValor;
   dmGeral.OFI_CD_M_ORV_ITEvlr_liquido.DisplayFormat:=CMascaraValor;
end;

procedure OfiValidaOrv(DataSet: TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  if (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM').AsString='') then
     begin
       xMensErro:= xMensErro + '.Ordem deve ser informada.'+ #13;
       dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM').FocusControl;
     end;

    if (dmGeral.OFI_CD_M_ORV.FieldByName('dta_emissao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data de emissão deve ser informada.'+ #13;
       dmGeral.OFI_CD_M_ORV.FieldByName('dta_emissao').FocusControl;
     end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('dta_entrega').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data de entrega deve ser informada.'+ #13;
       dmGeral.OFI_CD_M_ORV.FieldByName('dta_entrega').FocusControl;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('id_cliente').AsString='') then
     begin
       xMensErro:= xMensErro + '.Nome do cliente deve ser informado.'+ #13;
       dmGeral.OFI_CD_M_ORV.FieldByName('id_cliente').FocusControl;
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean or
     dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean) then
     begin
       if (dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').AsString='') then
           begin
             xMensErro:= xMensErro + '.Equipamento deve ser informado.'+ #13;
             dmGeral.OFI_CD_M_ORV.FieldByName('id_equipamento').FocusControl;
           end;
     end
  else if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OMP').AsBoolean) then
     begin
       if (dmGeral.OFI_CD_M_ORV.FieldByName('id_meq').AsString='') then
           begin
             xMensErro:= xMensErro + '.Máquina/Equip. deve ser informado.'+ #13;
             dmGeral.OFI_CD_M_ORV.FieldByName('id_meq').FocusControl;
           end;
     end
  else
     begin
       if (dmGeral.OFI_CD_M_ORV.FieldByName('id_veiculo').AsString='') then
          begin
            if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean then
              begin
                xMensErro:= xMensErro + '.Chassi deve ser informado.'+ #13;
              end
            else
              begin
                xMensErro:= xMensErro + '.Placa deve ser informado.'+ #13;
              end;
            dmGeral.OFI_CD_M_ORV.FieldByName('id_veiculo').FocusControl;
          end;
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean or
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean or
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OMP').AsBoolean) then
     begin
       //
     end
  else
     begin
        if (dmGeral.OFI_CD_M_ORV.FieldByName('km_atual').AsString='') then
           begin
             xMensErro:= xMensErro + '.Km atual deve ser informado.'+ #13;
             dmGeral.OFI_CD_M_ORV.FieldByName('km_atual').FocusControl;
           end;

        if (dmGeral.OFI_CD_M_ORV.FieldByName('tanque_combus').AsString='') then
           begin
             xMensErro:= xMensErro + '.Tanque combustível deve ser informado.'+ #13;
             dmGeral.OFI_CD_M_ORV.FieldByName('tanque_combus').FocusControl;
           end;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('id_tipo_os').AsString='') then
     begin
       xMensErro:= xMensErro + '.Tipo OS deve ser informado.'+ #13;
       dmGeral.OFI_CD_M_ORV.FieldByName('id_tipo_os').FocusControl;
     end;

   if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('n_utilizar_cond_pag_os').AsBoolean = True)) and
      (dmGeral.OFI_CD_M_ORV.FieldByName('id_condicao_pag').AsString='') then
     begin
       xMensErro:= xMensErro + '.Condição de pagamento deve ser informada.'+ #13;
       dmGeral.OFI_CD_M_ORV.FieldByName('id_condicao_pag').FocusControl;
     end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('id_analista').AsString='') then
     begin
       xMensErro:= xMensErro + '.Analista deve ser informado.'+ #13;
       dmGeral.OFI_CD_M_ORV.FieldByName('id_analista').FocusControl;
     end;

    if (dmGeral.OFI_CD_M_ORV.FieldByName('INT_TIPO_OS').AsInteger =1) then
     begin
        if (dmGeral.OFI_CD_M_ORV.FieldByName('id_fiscal_ref_entrada').AsString='') then
          begin
            xMensErro:= xMensErro + '.Cód. fiscal deve ser informado.'+ #13;
          end;

        if (dmGeral.OFI_CD_M_ORV.FieldByName('id_ordem_orig_gar').AsString='') then
          begin
            xMensErro:= xMensErro + '.Nº OS de origem deve ser informado.'+ #13;
          end;
     end;

   {if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('orv_critica_ocv_aber').AsBoolean = True) then
      begin
       if (dmGeral.OFI_CD_M_ORV.FieldByName('id_orcamento').AsString='') then
         begin
           xMensErro:= xMensErro + '.Orcamento deve ser informado.'+ #13;
           dmGeral.OFI_CD_M_ORV.FieldByName('id_orcamento').FocusControl;
         end;
      end;}

   {if (dmGeral.OFI_CD_M_ORV.FieldByName('obs_reclamacao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Reclamação do Cliente deve ser informado.'+ #13;
       dmGeral.OFI_CD_M_ORV.FieldByName('obs_reclamacao').FocusControl;
     end;}

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure OfiValidaOrvIte(DataSet: TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

   if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('id_item').AsString='') then
     begin
       xMensErro:= xMensErro + '.Item deve ser informada.'+ #13;
       dmGeral.OFI_CD_M_ORV_ITE.FieldByName('id_item').FocusControl;
     end;

   if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').IsNull) or
       (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat<=0)) then
     begin
       xMensErro:= xMensErro + '.Qtde deve ser maior que zero.'+ #13;
     end;

   if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').IsNull) or
       (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency<=0)) then
     begin
       xMensErro:= xMensErro + '.Vlr Unitário deve ser maior que zero.'+ #13;
     end;

   if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').IsNull) or
       (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency<=0)) then
     begin
       xMensErro:= xMensErro + '.Vlr Bruto deve ser maior que zero.'+ #13;
     end;

    if ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').IsNull) or
       (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency<=0)) then
     begin
       xMensErro:= xMensErro + '.Vlr Total deve ser maior que zero.'+ #13;
     end;

    if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CANCELADA').AsBoolean = True) then
     begin
       if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('CAN_MOTIVO').AsString = '') then
         xMensErro:= xMensErro + '.Motivo do cancelamento deve ser informado.'+ #13;
     end;


   {if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('int_tipoitem').AsInteger = 9 then
     begin
       if dmGeral.OFI_CD_M_ORV_ITE.FieldByName('id_terceiro').AsString = '' then
        begin
         xMensErro:= xMensErro + '.Terceiro deve ser informado.'+ #13;
         dmGeral.OFI_CD_M_ORV_ITE.FieldByName('id_terceiro').FocusControl;
        end;
     end;}

   if xMensErro<>'' then
    begin
           raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
           abort;
     end;

end;


procedure OFI_CD_M_ORV_ITEitemChange;
begin
  {dmGeral.BusCliente(0,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').Text);
  dmGeral.CalcPrecoItem(1,dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text,
                        dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text,
                        dmGeral.OFI_CD_M_ORV_ITE); }
  {if (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency = 0) then
     begin}
      {dmGeral.CalcPrecoItem(1,'0',dmGeral.OFI_CD_M_ORV.FieldByName('ID_CONDICAO_PAG').Text,
                          dmGeral.OFI_CD_M_ORV_ITE);  }
     {end;}
end;

procedure OFI_CD_M_ORV_DESdataChange;
begin
  if (dmGeral.OFI_CD_M_ORV_DES.FieldByName('DTA_DESPESA').AsString <> '') then
    begin
      if (dmGeral.OFI_CD_M_ORV_DES.FieldByName('dta_despesa').AsDateTime <
          dmGeral.OFI_CD_M_ORV.FieldByName('dta_emissao').AsDateTime) then
         dmGeral.OFI_CD_M_ORV_DES.FieldByName('dta_despesa').AsDateTime :=
          dmGeral.OFI_CD_M_ORV.FieldByName('dta_emissao').AsDateTime;
    end;
end;

procedure OfiAtuSeqOrvIte;
var
  i: integer;
  SMPrincipal : TSMClient;
begin
  try

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  dmGeral.OFI_CD_M_ORV_ITE.BeforePost := nil;
  dmGeral.OFI_CD_M_ORV_ITE.AfterPost  := nil;

  dmGeral.OFI_CD_M_ORV_ITE.Filtered := true;
  dmGeral.OFI_CD_M_ORV_ITE.Filter   := 'id_sequencia < 0 ';

  if not dmGeral.OFI_CD_M_ORV_ITE.IsEmpty then
    begin
      i := SMPrincipal.enChaveNItens('FAT_TB_M_NFE_ITE',dmGeral.OFI_CD_M_ORV_ITE.RecordCount);
      while not dmGeral.OFI_CD_M_ORV_ITE.eof do
        begin
          dmGeral.OFI_CD_M_ORV_ITE.edit;
          dmGeral.OFI_CD_M_ORV_ITE.FieldByName('id_sequencia').AsInteger := i;
          inc(i);
          dmGeral.OFI_CD_M_ORV_ITE.Post;
          //dmGeral.EST_CD_M_MAL_ITE.Next;
        end;
    end;
  finally
    dmGeral.OFI_CD_M_ORV_ITE.Filtered := false;
    dmGeral.OFI_CD_M_ORV_ITE.First;

    dmGeral.OFI_CD_M_ORV_ITE.BeforePost := dmGeral.OFI_CD_M_ORV_ITEBeforePost;
    dmGeral.OFI_CD_M_ORV_ITE.AfterPost  := dmGeral.OFI_CD_M_ORV_ITEAfterPost;
    FreeAndNil(SMPrincipal);
  end;
end;

end.
