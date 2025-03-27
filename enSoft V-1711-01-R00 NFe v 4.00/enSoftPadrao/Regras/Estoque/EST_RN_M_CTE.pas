unit EST_RN_M_CTE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure EstValidaContagem(DataSet:TDataSet);
procedure EstNovaContagem(DataSet: TDataSet);
procedure EstNovaContagemIte(DataSet: TDataSet);

procedure EST_CD_M_CTE_ITEnum_loteChange(Sender: TField);
procedure EST_CD_M_CTE_ITEcontagemChange(Sender: TField);

function EST_CD_M_CTE_TesPermExclusao: Boolean;
function EST_CD_M_CTE_TesCampos: Boolean;
function EST_CD_M_CTE_ITE_TesCampos: Boolean;
function EstValidaContagemIte: Boolean;
function EST_CD_M_CTE_OutrasValidacoes: Boolean;


implementation
Uses uDmGeral,enConstantes, uProxy;


procedure EstValidaContagem(DataSet:TDataSet);
begin
  if dmGeral.EST_CD_M_CTE.FieldByName('STATUS').AsInteger = 1 then
     begin
       ShowMessage('Contagem já foi atualizada.');
       abort;
     end;
end;

procedure EstNovaContagem(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
  Hora: TTime;
begin
  dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  //Busca sequencia no servidor
  { SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsInteger :=

         SMPrincipal.enValorChave('EST_TB_M_CTE');
  finally
    FreeAndNil(SMPrincipal);
  end;}
  dmGeral.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsInteger :=
       dmGeral.BuscarSeq('EST_TB_M_CTE');

  dmGeral.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean := false;
  dmGeral.EST_CD_M_CTE.FieldByName('OFFLINE').AsBoolean              := false;
  dmGeral.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger         := 2; // Livre (qualquer item)
  dmGeral.EST_CD_M_CTE.FieldByName('STATUS').AsInteger           := 0; // em aberto
  dmGeral.EST_CD_M_CTE.FieldByName('DTA_CONTAGEM').AsDateTime    := xDataSis;
  //  dmGeral.EST_CD_M_CTE.FieldByName('DTA_MOVIMENTO').AsDateTime   := xDataSis;

  dmGeral.BusCodigoRevListMestre(true,false,'EST_FM_M_CTE',xCodLme,xRevLme,dmGeral.EST_CD_M_CTE);
end;

procedure EstNovaContagemIte(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  { SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
         SMPrincipal.enValorChave('EST_TB_M_CTE_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;   }

  dmGeral.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
       dmGeral.BuscarSeq('EST_TB_M_CTE_ITE');
  dmGeral.EST_CD_M_CTE_ITE.FieldByName('tipo_diferenca').AsInteger := 0;
  dmGeral.EST_CD_M_CTE_ITEid_cor.AsInteger     := 0;
  dmGeral.EST_CD_M_CTE_ITEid_tamanho.AsInteger := 0;
end;

procedure EST_CD_M_CTE_ITEnum_loteChange(Sender: TField);
var
  id_item, desc, desc_cor,desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
begin

   try
    dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;

   dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString]));

    if (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) = '') then
       begin
         if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) then
            begin
              ShowMessage('O campo "nro do lote" deve ser preenchido.');
              exit;
            end;
       end
    else
       begin
         if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger = 4) then
            begin
              ShowMessage('Digitação de nº do lote não é permitido para este item.');
                  dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := '';
                  dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := dmGeral.EST_CD_M_CTE_ITEnum_loteChange;
              exit;
            end;
       end;


 { if CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
     begin
        if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger = 0) and // Geração de lote pela NF de entrada
           (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '') then
           begin
             if VerifLote then
                begin
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString := '';
                  exit;
                end;
           end
        else
           begin
             if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger = 0) then
                begin
                  ShowMessage('O campo "nro do lote" deve ser preenchido.');
                  exit;
                end
             else
                begin
                  ShowMessage('Digitação de nº do lote é permitido somente para itens que gera lote pela NF de entrada.');
                  dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := '';
                  dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := dmGeral.EST_CD_M_CTE_ITEnum_loteChange;
                  exit;
                end;
           end;
     end;     }

  if (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '') then
       begin
         dmGeral.EST_CD_M_LOT.close;
         dmGeral.EST_CD_M_LOT.Data :=
                     dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([16,
                          dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                          dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text]));
         if not dmGeral.EST_CD_M_LOT.IsEmpty then
            begin
              if dmGeral.EST_CD_M_LOT.FieldByName('id_item').AsInteger <>
                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_item').AsInteger then
                 begin
                   Showmessage('Este lote não pertence ao item informado.');
                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text := '';
                   abort;
                  end
              else
                  begin
                    {dmGeral.BusLoteItem(dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text,
                                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text,
                                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text,
                                        dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text,
                                        dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text);
                    if dmGeral.EST_CD_M_LOT.IsEmpty then}
                    if (dmGeral.EST_CD_M_LOT.FieldByName('ID_EMPRESA').text <> dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('NUM_LOTE').text <> dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('ID_ITEM').text <>  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('ID_COR').text <>   dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('ID_TAMANHO').text <>  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text) or
                       (dmGeral.EST_CD_M_LOT.FieldByName('ID_ALMOXARIFADO').text <> dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text) then
                       begin
                         Showmessage('O registro de saldo deste lote não foi encontrado ou não pertence ao item informado.');
                         dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text := '';
                         abort;
                       end
                  end;
            end;
       end;

  if dmGeral.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
       id_item       := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString;
       id_busca_item := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
       desc          := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
       und           := dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;
       id_cor        := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString;
       id_tamanho    := dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString;
       num_lote      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString;
       desc_cor      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString;
       desc_tam      := dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString;


       dmGeral.EST_CD_M_CTE_ITE.cancel;

       if dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_CTE_ITE,'EST_FM_M_CTE',id_item,id_cor,id_tamanho,
                                   dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,num_lote) then
          begin
            dmGeral.EST_CD_M_CTE_ITE.edit;
            dmGeral.EST_CD_M_CTE_ITE.FieldByName('QTDE').AsFloat  :=
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('QTDE').AsFloat + 1;
            dmGeral.EST_CD_M_CTE_ITE.post;
            dmGeral.EST_CD_M_CTE_ITE.Insert;
            //txtBuscaItem.SetFocus;
            abort;
          end
       else
          begin
            if dmGeral.EST_CD_M_CTE_ITE.Locate('NUM_LOTE', num_lote,[]) then
                begin
                  ShowMessage('Este nro de lote já foi digitado em outro registro.');
                  dmGeral.EST_CD_M_CTE_ITE.Insert;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_tamanho').AsString    := id_tamanho;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := '';
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
                  //abort;
                end
            else
                begin
                    dmGeral.EST_CD_M_CTE_ITE.Insert;
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_tamanho').AsString    := id_tamanho;
                    dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange                      := nil;
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := num_lote;
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                    dmGeral.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
                end;
          end;
     end;
   finally
      dmGeral.EST_CD_M_CTE_ITEnum_lote.OnChange := dmGeral.EST_CD_M_CTE_ITEnum_loteChange;
   end;
end;

procedure EST_CD_M_CTE_ITEcontagemChange(Sender: TField);
var
  lVlrCustoMedio: Currency;
  lQtdeAtual: Double;
  saldo_fisico: String;
begin

  if dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat < 0 then
     begin
       ShowMessage('O campo "Contagem" não pode ser menor que 0.');
       dmGeral.EST_CD_M_CTE_ITE.cancel;
     end
  else
     begin

        if dmGeral.BusCustoMedItem(dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString,
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString,
                                   dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString,lVlrCustoMedio) then
           begin
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsCurrency := lVlrCustoMedio;
           end
        else
           begin
             //ShowMessage('O registro de saldo do item não foi encontrado.');
             //abort;
           end;

       saldo_fisico := '';

       if dmGeral.BusSaldoItem(dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                               dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                               dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                               dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text,
                               dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,
                               saldo_fisico) then
           begin
             if trim(saldo_fisico) <> '' then
                lQtdeAtual := StrToCurr(saldo_fisico);
           end;

        //lQtdeAtual := dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat;

        if trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '' then
           begin
              lQtdeAtual := 0;
              dmGeral.BusLoteItem(dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text,
                                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text,
                                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text,
                                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text,
                                  dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text);
              if not dmGeral.EST_CD_M_LOT.IsEmpty then
                     lQtdeAtual := dmGeral.EST_CD_M_LOTqtde_atual.AsFloat;
           end;

        // 0 - Sem diferença
        // 1 - Sobrou
           // Quer dizer que ao contar, o saldo do estoque que tinha, ficou maior do
           // que o contado. ex: contagem = 5   saldo = 15, então sobrou 10 pra ficar igual ao saldo contado.
        // 2 - Faltou
           // Quer dizer que ao contar, o saldo do estoque que tinha ficou a menor
           // que o contado. ex: contagem = 25   saldo = 5, então faltou 20 pra atingir o saldo que tinha.

        dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
        dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsInteger      := 0;

        dmGeral.EST_CD_M_CTE_ITE.FieldByName('saldo_estoque_momento').asCurrency  := lQtdeAtual;

        if dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat < lQtdeAtual then
           begin
             // Deve ser dado saída no estoque
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 1;
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat      :=
                     dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat -
                     dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat;
           end;

        if dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat > lQtdeAtual then
           begin
             // Deve ser dado entrada no estoque
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 2;
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        :=
                     dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat -
                     dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat;
           end;
     end;
end;

function EST_CD_M_CTE_TesCampos: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsInteger = 0 then
     begin
       mens := mens + '.Empresa' + #13;
     end;

  if dmGeral.EST_CD_M_CTE.FieldByName('cte_tipo').Isnull then
     begin
       mens := mens + '.Tipo de contagem' + #13;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
        if dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').IsNull then
           begin
             mens := mens + '.Almoxarifado' + #13;
           end;
     end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin
       dmGeral.EST_CD_M_CTE_ITE.Cancel;
       dmGeral.EST_CD_M_CTE_ITE.First;
       while not dmGeral.EST_CD_M_CTE_ITE.eof do
          begin
            dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString]));

            if not (dmGeral.EST_CD_M_CTE.FieldByName('corrigir_custo_medio').AsBoolean) then
               begin
                  if trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString) = '' then
                     begin
                       mens := mens + '.Existe item que ainda não foi contado' + #13;
                       dmGeral.EST_CD_M_CTE_ITE.Last;
                     end;


                  if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
                     begin
                       if (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) = '') then
                          begin
                            if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) then
                               begin
                                 mens := mens + '.Existe item com nro de lote vazio' + #13;
                                 dmGeral.EST_CD_M_CTE_ITE.Last;
                               end;
                          end;
                     end;
               end;
            dmGeral.EST_CD_M_CTE_ITE.Next;
          end;
       dmGeral.EST_CD_M_CTE_ITE.First;
       dmGeral.EST_CD_M_CTE_ITE.Edit;
       if mens <> '' then
          begin
            ShowMessage('Atenção:' + #13 + mens);
            mens := '';
            result := false;
          end
     end;
end;

function EST_CD_M_CTE_TesPermExclusao: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if dmGeral.EST_CD_M_CTE.FieldByName('STATUS').AsInteger = 1 then // Já foi atualizado.
     begin
       mens := '.Contagem já atualizada' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Exclusão não permitida!' + #13 + mens);
       mens := '';
       result := false;
     end;
end;

function EST_CD_M_CTE_ITE_TesCampos: Boolean;
begin

end;

function EstValidaContagemIte: Boolean;
var
  mens: String;
  SMPrincipal : TSMClient;
begin
  result := true;

  mens := '';


  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    mens := SMPrincipal.enVerifCteIteDup(
             dmGeral.EST_CD_M_CTE.FieldByName('id_empresa').AsString,
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_controle').AsString,
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_item').AsString,
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString,
             dmGeral.EST_CD_M_CTE_ITE.FieldByName('id_tamanho').AsString);
    if trim(mens) <> '' then
       begin
         ShowMessage('Este item não pode ser inserido pois encontra-se numa contagem que está em berto.' + #13 +
                     'Contagem: ' + mens);
         mens := '';
         dmGeral.EST_CD_M_CTE_ITE.cancel;
         abort;
       end;
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

function EST_CD_M_CTE_OutrasValidacoes: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  dmGeral.EST_CD_M_CTE_ITE.cancel;
  if dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
     begin
       mens := mens + 'Nenhum item foi inserido na contagem.' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Atenção:' + #13 + mens);
       mens := '';
       result := false;
       abort;
     end;
end;

end.



