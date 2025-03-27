unit EST_RN_M_MAL;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;


function EST_CD_M_MAL_TesCampos: Boolean;

procedure EstValidaMalIte;
procedure EstAtuSeqMalIte;
procedure EstMascaraMalIte;


implementation
Uses uDmGeral,enConstantes, uProxy, FAT_RN_M_NFE;


procedure EstMascaraMalIte;
begin
  dmGeral.EST_CD_M_MAL_ITEvlr_unitario.DisplayFormat    := CMascaraVlrMerc;
  dmGeral.EST_CD_M_MAL_ITEvlr_total.DisplayFormat       := CMascaraValor;
end;

procedure EstValidaMalIte;
var
  xMensErro:string;
begin
  xMensErro:='';

  if dmGeral.EST_CD_M_MAL_ITE.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_item').AsString='') then
           begin
             xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
           begin
             if (dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_cor').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Cor deve ser informada.'+ #13;
                 end;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
           begin
              if (dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_tamanho').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Tamanho deve ser informado.'+ #13;
                 end;
           end;

        if (dmGeral.EST_CD_M_MAL_ITE.FieldByName('qtde').AsFloat=0) then
           begin
             xMensErro:= xMensErro + '.Qtde deve ser informado.'+ #13;
           end;

        dmGeral.BUS_CD_C_ITE.close;
        dmGeral.BUS_CD_C_ITE.Data :=
               dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString]));

        if (trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString) = '') then
           begin
             if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) then
                 begin
                   xMensErro:= xMensErro + 'O campo "nro do lote" deve ser preenchido.';
                   dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').FocusControl;
                 end;
           end;

        if not FAT_RN_M_NFE.FatTestaQtdeIte(3,dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_MAL_ITE) then
           begin
             xMensErro:= xMensErro + '.Produto sem saldo no estoque'+ #13;
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('qtde').FocusControl;
           end;

        if xMensErro<>'' then
           begin
              //raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + xMensErro);
              abort;
           end;
     end;
end;


procedure EstAtuSeqMalIte;
var
  i: integer;
  SMPrincipal : TSMClient;
begin

  try

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  dmGeral.EST_CD_M_MAL_ITE.Filtered := true;
  dmGeral.EST_CD_M_MAL_ITE.Filter   := 'id_sequencia < 0 ';

  if not dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
     begin
       i := SMPrincipal.enChaveNItens('EST_TB_M_MAL_ITE',dmGeral.EST_CD_M_MAL_ITE.RecordCount);
       while not dmGeral.EST_CD_M_MAL_ITE.eof do
           begin
             dmGeral.EST_CD_M_MAL_ITE.edit;
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_sequencia').AsInteger := i;
             inc(i);
             dmGeral.EST_CD_M_MAL_ITE.Post;
             //dmGeral.EST_CD_M_MAL_ITE.Next;
           end;
     end;
  finally
    dmGeral.EST_CD_M_MAL_ITE.Filtered := false;
    dmGeral.EST_CD_M_MAL_ITE.First;
    FreeAndNil(SMPrincipal);
  end;

end;


function EST_CD_M_MAL_TesCampos: Boolean;
var
  mens: String;
begin
   result := true;

   mens := '';

   if dmGeral.EST_CD_M_MAL.FieldByName('data').text = ''  then
     begin
       mens := mens + '.Data' + #13;
     end;

  if dmGeral.EST_CD_M_MAL.FieldByName('id_tipo_mov_estoque').AsInteger = 0 then
     begin
       mens := mens + '.Tipo de movimento de estoque' + #13;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     if dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado').text = '' then
         begin
           mens := mens + '.Almoxarifado' + #13;
         end;

  if dmGeral.EST_CD_M_MAL.FieldByName('id_tipo_mov_estoque').AsInteger > 0 then
     begin
       dmGeral.BusTipoEstoque(0,dmGeral.EST_CD_M_MAL.FieldByName('id_tipo_mov_estoque').AsString);
        if dmGeral.BUS_CD_C_TME.FieldByName('indicador').AsInteger = 2 then
           begin
              if dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado_dest').text = '' then
                 begin
                   mens := mens + '.Almoxarifado destino' + #13;
                 end
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
        dmGeral.EST_CD_M_MAL_ITE.cancel;
        if dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
           begin
             mens := mens + 'Nenhum item foi inserido no movimento do almoxarifado.' + #13;
           end;
        if mens <> '' then
           begin
             ShowMessage('Atenção:' + #13 + mens);
             mens := '';
             result := false;
           end
     end;
end;


end.
