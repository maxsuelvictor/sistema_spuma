unit EST_RN_M_COF;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure EstNovaContagem(DataSet: TDataSet);
procedure EstNovaContagemIte(DataSet: TDataSet);

procedure EST_CD_M_CTE_ITEnum_loteChange(Sender: TField);
procedure EST_CD_M_CTE_ITEcontagemChange(Sender: TField);

function EST_CD_M_CTE_OutrasValidacoes: Boolean;
function EST_CD_M_CTE_TesCampos: Boolean;
function EstValidaContagemIte: Boolean;
function VerificarDadosBanco: Boolean;

implementation

uses uDmOff, uDmGeral;

procedure EST_CD_M_CTE_ITEnum_loteChange(Sender: TField);
var
  id_item, desc, desc_cor,desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
begin
   try
    dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;

   dmOff.BUS_CD_C_ITE.Data :=
            dmOff.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString]));

    if (trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) = '') then
       begin
         if (dmOff.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) then
            begin
              ShowMessage('O campo "nro do lote" deve ser preenchido.');
              exit;
            end;
       end
    else
       begin
         if (dmOff.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger = 4) then
            begin
              ShowMessage('Digitação de nº do lote não é permitido para este item.');
                  dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := '';
                  dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := dmOff.EST_CD_M_CTE_ITEnum_loteChange;
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

  if (trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '') then
       begin
         dmOff.EST_CD_M_LOT.close;
         dmOff.EST_CD_M_LOT.Data :=
                     dmOff.EST_CD_M_LOT.DataRequest(VarArrayOf([16,
                          dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                          dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text]));
         if not dmOff.EST_CD_M_LOT.IsEmpty then
            begin
              if dmOff.EST_CD_M_LOT.FieldByName('id_item').AsInteger <>
                 dmOff.EST_CD_M_CTE_ITE.FieldByName('id_item').AsInteger then
                 begin
                   Showmessage('Este lote não pertence ao item informado.');
                   dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text := '';
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
                    if (dmOff.EST_CD_M_LOT.FieldByName('ID_EMPRESA').text <> dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('NUM_LOTE').text <> dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('ID_ITEM').text <>  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('ID_COR').text <>   dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('ID_TAMANHO').text <>  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('ID_ALMOXARIFADO').text <> dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text) then
                       begin
                         Showmessage('O registro de saldo deste lote não foi encontrado ou não pertence ao item informado.');
                         dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text := '';
                         abort;
                       end
                  end;
            end;
       end;

  if dmOff.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
       id_item       := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString;
       id_busca_item := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
       desc          := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
       und           := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;
       id_cor        := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString;
       id_tamanho    := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString;
       num_lote      := dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString;
       desc_cor      := dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString;
       desc_tam      := dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString;


       dmOff.EST_CD_M_CTE_ITE.cancel;

       if dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,'EST_FM_M_CTE',id_item,id_cor,id_tamanho,
                                   dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,num_lote) then
          begin
            dmOff.EST_CD_M_CTE_ITE.edit;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('QTDE').AsFloat  :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('QTDE').AsFloat + 1;
            dmOff.EST_CD_M_CTE_ITE.post;
            dmOff.EST_CD_M_CTE_ITE.Insert;
            //txtBuscaItem.SetFocus;
            abort;
          end
       else
          begin
            if dmOff.EST_CD_M_CTE_ITE.Locate('NUM_LOTE', num_lote,[]) then
                begin
                  ShowMessage('Este nro de lote já foi digitado em outro registro.');
                  dmOff.EST_CD_M_CTE_ITE.Insert;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('id_tamanho').AsString    := id_tamanho;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := '';
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
                  //abort;
                end
            else
                begin
                    dmOff.EST_CD_M_CTE_ITE.Insert;
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('id_tamanho').AsString    := id_tamanho;
                    dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange                      := nil;
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := num_lote;
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
                end;
          end;
     end;
   finally
      dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := dmOff.EST_CD_M_CTE_ITEnum_loteChange;
   end;

end;

procedure EST_CD_M_CTE_ITEcontagemChange(Sender: TField);
var
  lVlrCustoMedio: Currency;
  lQtdeAtual: Double;
  saldo_fisico: String;
begin

  if dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat < 0 then
     begin
       ShowMessage('O campo "Contagem" não pode ser menor que 0.');
       dmOff.EST_CD_M_CTE_ITE.cancel;
     end
  else
     begin

        if dmOff.BusCustoMedItem(dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString,
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString,
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString,lVlrCustoMedio) then
           begin
             dmOff.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsCurrency := lVlrCustoMedio;
           end
        else
           begin
             //ShowMessage('O registro de saldo do item não foi encontrado.');
             //abort;
           end;

       saldo_fisico := '';

       if dmOff.BusSaldoItem(dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                               dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                               dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                               dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text,
                               dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,
                               saldo_fisico) then
           begin
             if trim(saldo_fisico) <> '' then
                lQtdeAtual := StrToCurr(saldo_fisico);
           end;

        //lQtdeAtual := dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat;

        if trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '' then
           begin
              lQtdeAtual := 0;
              dmOff.BusLoteItem(dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                                  dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text,
                                  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text,
                                  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text,
                                  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text,
                                  dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text);
              if not dmOff.EST_CD_M_LOT.IsEmpty then
                     lQtdeAtual := dmOff.EST_CD_M_LOTqtde_atual.AsFloat;
           end;

        // 0 - Sem diferença
        // 1 - Sobrou
           // Quer dizer que ao contar, o saldo do estoque que tinha, ficou maior do
           // que o contado. ex: contagem = 5   saldo = 15, então sobrou 15 pra ficar igual ao saldo contado.
        // 2 - Faltou
           // Quer dizer que ao contar, o saldo do estoque que tinha ficou a menor
           // que o contado. ex: contagem = 25   saldo = 5, então faltou 20 pra atingir o saldo que tinha.

        dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
        dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsInteger      := 0;


        if dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat < lQtdeAtual then
           begin
             // Deve ser dado saída no estoque
             dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 1;
             dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat      :=
                     dmOff.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat -
                     dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat;
           end;

        if dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat > lQtdeAtual then
           begin
             // Deve ser dado entrada no estoque
             dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 2;
             dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        :=
                     dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat -
                     dmOff.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat;
           end;
     end;
end;




procedure EstNovaContagem(DataSet: TDataSet);
begin

  dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  //Busca sequencia no servidor
 { SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsInteger :=

         SMPrincipal.enValorChave('EST_TB_M_CTE');
  finally
    FreeAndNil(SMPrincipal);
  end;}
  dmOff.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsInteger :=
       dmOff.enValorChave('EST_TB_M_CTE');

  dmOff.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean := false;
  dmOff.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger         := 2; // Livre (qualquer item)
  dmOff.EST_CD_M_CTE.FieldByName('STATUS').AsInteger           := 0; // em aberto
  dmOff.EST_CD_M_CTE.FieldByName('DTA_CONTAGEM').AsDateTime    := xDataSis;
  //  dmGeral.EST_CD_M_CTE.FieldByName('DTA_MOVIMENTO').AsDateTime   := xDataSis;


end;

procedure EstNovaContagemIte(DataSet: TDataSet);
begin

  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_CONTROLE').AsInteger :=
           dmOff.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsInteger;
  dmOff.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
       dmOff.enValorChave('EST_TB_M_CTE_ITE');

  dmOff.EST_CD_M_CTE_ITE.FieldByName('tipo_diferenca').AsInteger := 0;
  dmOff.EST_CD_M_CTE_ITEid_cor.AsInteger     := 0;
  dmOff.EST_CD_M_CTE_ITEid_tamanho.AsInteger := 0;
end;


function VerificarDadosBanco: Boolean;
var
  msg:String;
begin
    result := true;
    dmOff.BUS_CD_QRY.Close;
    dmOff.BUS_CD_QRY.Data :=
        dmOff.BUS_CD_QRY.DataRequest(VarArrayOf([1]));

    if dmOff.BUS_CD_QRY.FieldByName('QTDE').AsCurrency=0 then
       result := false;

    dmOff.BUS_CD_QRY.Close;
    dmOff.BUS_CD_QRY.Data :=
        dmOff.BUS_CD_QRY.DataRequest(VarArrayOf([2]));

    if dmOff.BUS_CD_QRY.FieldByName('QTDE').AsCurrency=0 then
       result := false;

    if  result = false then
      begin
        ShowMessage('Não há itens ou registro de estoque no banco local.');
        abort;
      end;

end;


function EstValidaContagemIte: Boolean;
begin
  result := true;



    dmOff.BUS_CD_QRY.Close;
    dmOff.BUS_CD_QRY.Data :=
        dmOff.BUS_CD_QRY.DataRequest(
            VarArrayOf([0,
              dmOff.EST_CD_M_CTE.FieldByName('id_empresa').AsString,
              dmOff.EST_CD_M_CTE_ITE.FieldByName('id_controle').AsString,
              dmOff.EST_CD_M_CTE_ITE.FieldByName('id_item').AsString,
              dmOff.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString,
              dmOff.EST_CD_M_CTE_ITE.FieldByName('id_tamanho').AsString]));

    if not dmOff.BUS_CD_QRY.IsEmpty then
       begin
         ShowMessage('Este item não pode ser inserido pois encontra-se numa contagem que está em berto.' + #13 +
                     'Contagem: ' + dmOff.BUS_CD_QRY.FieldByName('id_controle').AsString);
         result := false;
         dmOff.EST_CD_M_CTE_ITE.cancel;
         abort;
       end;

end;


function EST_CD_M_CTE_OutrasValidacoes: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  dmOff.EST_CD_M_CTE_ITE.cancel;
  if dmOff.EST_CD_M_CTE_ITE.IsEmpty then
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


function EST_CD_M_CTE_TesCampos: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsInteger = 0 then
     begin
       mens := mens + '.Empresa' + #13;
     end;

  if dmOff.EST_CD_M_CTE.FieldByName('cte_tipo').Isnull then
     begin
       mens := mens + '.Tipo de contagem' + #13;
     end;

  if dmOff.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
        if dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').IsNull then
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
       dmOff.EST_CD_M_CTE_ITE.Cancel;
       dmOff.EST_CD_M_CTE_ITE.First;
       while not dmOff.EST_CD_M_CTE_ITE.eof do
          begin
            dmOff.BUS_CD_C_ITE.Data :=
            dmOff.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString]));

            if not (dmOff.EST_CD_M_CTE.FieldByName('corrigir_custo_medio').AsBoolean) then
               begin
                  if trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString) = '' then
                     begin
                       mens := mens + '.Existe item que ainda não foi contado' + #13;
                       dmOff.EST_CD_M_CTE_ITE.Last;
                     end;


                  if dmOff.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
                     begin
                       if (trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) = '') then
                          begin
                            if (dmOff.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) then
                               begin
                                 mens := mens + '.Existe item com nro de lote vazio' + #13;
                                 dmOff.EST_CD_M_CTE_ITE.Last;
                               end;
                          end;
                     end;
               end;
            dmOff.EST_CD_M_CTE_ITE.Next;
          end;
       dmOff.EST_CD_M_CTE_ITE.First;
       dmOff.EST_CD_M_CTE_ITE.Edit;
       if mens <> '' then
          begin
            ShowMessage('Atenção:' + #13 + mens);
            mens := '';
            result := false;
          end
     end;
end;

end.
