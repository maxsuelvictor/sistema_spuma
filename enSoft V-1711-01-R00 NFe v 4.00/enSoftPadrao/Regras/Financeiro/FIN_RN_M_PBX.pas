unit FIN_RN_M_PBX;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,enFunc;

function  FinPermiteAltExcPbx: Boolean;
procedure FinValidaPbx(DataSet:TDataSet);
procedure FinAtualContaPbxTit;
procedure FinMascaraPbx(DataSet:TDataSet);
procedure FinNovoPbx(DataSet: TDataSet);
procedure FinOutrasValPbx;


procedure finPbxCalcTotalTitulo;
procedure SomaTitulo(Dataset:TDataset);
procedure SomaNovosTitulo(Dataset:TDataset);

procedure FinNovoPbxTit;
procedure FinValidaPbxTit(DataSet:TDataSet);
procedure FinMascaraPbxTit(DataSet:TDataSet);
procedure FinGravaPbxTit(DataSet: TDataSet);

procedure FinNovoPbxGer;
procedure FinValidaPbxGer(DataSet:TDataSet);
procedure FinMascaraPbxGer(DataSet:TDataSet);

procedure FIN_CD_M_PBX_TITper_descontoChange(Sender: TField);
procedure FIN_CD_M_PBX_TITvlr_descontoChange(Sender: TField);
procedure FIN_CD_M_PBX_TITvlr_pagamentoChange(Sender: TField);
procedure FIN_CD_M_PBXid_fornecedorChange(Sender: TField);
procedure FIN_CD_M_PBX_TITvlr_restanteChange(Sender: TField);

procedure FIN_CD_M_PBX_TITvlr_multaChange(Sender: TField);
procedure FIN_CD_M_PBX_TITvlr_jurosChange(Sender: TField);
procedure FIN_CD_M_PBXid_contaChange(Sender: TField);


procedure FIN_CD_M_PBX_TITvlr_credito_utilizadoChange(Sender: TField);
procedure FIN_CD_M_PBXid_forma_pagChange(Sender: TField);

implementation
Uses uDmGeral,enConstantes, uProxy;


function  FinPermiteAltExcPbx: Boolean;
var
  xMensErro:string;
begin

  xMensErro := '';

  dmGeral.BUS_CD_C_CTC.Close;
  dmGeral.BUS_CD_C_CTC.Data :=
  dmGeral.BUS_CD_C_CTC.DataRequest(VarArrayOf([0, dmGeral.FIN_CD_M_PBXid_conta.AsString]));
  if dmGeral.BUS_CD_C_CTCtipo.AsInteger = 0 then  // Se for Tipo = Caixa
     begin
        if dmGeral.FIN_CD_M_PBX.FieldByName('id_abertura').AsInteger > 0 then
           begin
             dmGeral.BUS_CD_M_CXA.Close;
             dmGeral.BUS_CD_M_CXA.Data :=
             dmGeral.BUS_CD_M_CXA.DataRequest(
                     VarArrayOf([0, dmGeral.FIN_CD_M_PBX.FieldByName('id_abertura').AsString]));

             if (dmGeral.BUS_CD_M_CXA.RecordCount=0) or
                (dmGeral.BUS_CD_M_CXA.FieldByName('status').AsInteger=1) then
                begin
                  xMensErro := xMensErro + '.O caixa desta baixa já foi fechado.' + #13;
                end;
             dmGeral.BUS_CD_M_CXA.Close;
           end;
     end;

  if dmGeral.BUS_CD_C_CTCtipo.AsInteger = 1 then  // Se for Tipo = Banco
     begin
       dmGeral.FIN_CD_M_CTA_BCO.Close;
       dmGeral.FIN_CD_M_CTA_BCO.Data :=
       dmGeral.FIN_CD_M_CTA_BCO.DataRequest(
               VarArrayOf([0, dmGeral.FIN_CD_M_PBXid_empresa.AsString, dmGeral.FIN_CD_M_PBXid_baixa.AsString, dmGeral.BUS_CD_C_CTCtipo.AsString]));

       if not dmGeral.FIN_CD_M_CTA_BCO.IsEmpty then
          begin
            if (dmGeral.FIN_CD_M_CTA_BCOconc_numero.AsInteger > 0 ) then
                begin
                  xMensErro := xMensErro + '.O movimento do banco gerado por esta baixa já foi conciliado.' + #13;
                end;
          end;
       dmGeral.FIN_CD_M_CTA_BCO.Close;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure FIN_CD_M_PBXid_contaChange(Sender: TField);
begin
   dmGeral.BUS_CD_C_CTC.Close;
   dmGeral.BUS_CD_C_CTC.Data :=
   dmGeral.BUS_CD_C_CTC.DataRequest(
           VarArrayOf([0, dmGeral.FIN_CD_M_PBX.FieldByName('id_conta').AsString]));
   dmGeral.FIN_CD_M_PBX.FieldByName('id_abertura').asInteger:=0;
   if dmGeral.BUS_CD_C_CTC.FieldByName('tipo').asInteger=0 then
      begin
        dmGeral.BUS_CD_M_CXA.Close;
        dmGeral.BUS_CD_M_CXA.Data :=
        dmGeral.BUS_CD_M_CXA.DataRequest(
                VarArrayOf([92, dmGeral.FIN_CD_M_PBX.FieldByName('id_conta').AsString ]));
        dmGeral.FIN_CD_M_PBX.FieldByName('id_abertura').asInteger:=
          dmGeral.BUS_CD_M_CXA.FieldByName('id_abertura').asInteger;
      end;
end;




procedure FIN_CD_M_PBXid_forma_pagChange(Sender: TField);
begin

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_credito_utilizado').ReadOnly := true;
  if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger=7 then
     begin
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_credito_utilizado').ReadOnly := false;
     end;

end;

procedure finPbxCalcTotalTitulo;
begin
  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_a_pagar').AsCurrency:=
    dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency-
    dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_desconto').AsCurrency+
    dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_juros').AsCurrency+
    dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_multa').AsCurrency;


  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_RESTANTE').AsCurrency:=
    RoundTo( (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_A_PAGAR').AsCurrency-
    dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_pagamento').AsCurrency),-2);
end;


procedure FinValidaPbx(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';
  if (dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').AsString=null) or
     (dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').AsString='') then
     begin
       xMensErro:= xMensErro + '.Fornecedor deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_C_FOR.Close;
       dmGeral.BUS_CD_C_FOR.Data :=
       dmGeral.BUS_CD_C_FOR.DataRequest(
               VarArrayOf([0, dataset.FieldByName('id_fornecedor').AsString]));
       if dmGeral.BUS_CD_C_FOR.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Fornecedor não cadastrado.'+ #13;
            dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
          end;
       { Retirado no plano 44/2014
       if dmGeral.BUS_CD_C_FOR.FieldByName('ATIVO').AsBoolean=false then
          begin
            xMensErro:= xMensErro + '.Fornecedor inativo.'+ #13;
            dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
          end;
        }
     end;
  if (dmGeral.FIN_CD_M_PBX.FieldByName('id_conta').AsString=null) or
     (dmGeral.FIN_CD_M_PBX.FieldByName('id_conta').AsString='') then
     begin
       xMensErro:= xMensErro + '.Conta Corrente deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_C_CTC.Close;
       dmGeral.BUS_CD_C_CTC.Data :=
       dmGeral.BUS_CD_C_CTC.DataRequest(
               VarArrayOf([0, dataset.FieldByName('id_conta').AsString]));
       if dmGeral.BUS_CD_C_CTC.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Conta Corrente não cadastrada.'+ #13;
            dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
          end;
     end;


  if (dmGeral.FIN_CD_M_PBX.FieldByName('id_forma_pag').AsString=null) or
     (dmGeral.FIN_CD_M_PBX.FieldByName('id_forma_pag').AsString='') then
     begin
       xMensErro:= xMensErro + '.Forma de pagamento deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_C_FPG.Close;
       dmGeral.BUS_CD_C_FPG.Data :=
       dmGeral.BUS_CD_C_FPG.DataRequest(
               VarArrayOf([0, dataset.FieldByName('id_forma_pag').AsString]));
       if dmGeral.BUS_CD_C_FPG.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Forma de pagamento não cadastrada.'+ #13;
            dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
          end;
     end;

  if (dmGeral.FIN_CD_M_PBX.FieldByName('id_tipo_financeiro').AsString=null) or
     (dmGeral.FIN_CD_M_PBX.FieldByName('id_tipo_financeiro').AsString='') then
     begin
       xMensErro:= xMensErro + '.Tipo financeiro deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_C_TIF.Close;
       dmGeral.BUS_CD_C_TIF.Data :=
       dmGeral.BUS_CD_C_TIF.DataRequest(
               VarArrayOf([0, dataset.FieldByName('id_tipo_financeiro').AsString]));
       if dmGeral.BUS_CD_C_TIF.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Tipo financeiro não cadastrado.'+ #13;
            dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
          end;
     end;

  if (dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger in [1,2,3,4,6]) then
    begin
      if ((dmGeral.FIN_CD_M_PBX.FieldByName('id_plano').AsString=null) or
         (dmGeral.FIN_CD_M_PBX.FieldByName('id_plano').AsString='')) then
         begin
           xMensErro:= xMensErro + '.Plano de contas deve ser informado.'+ #13;
           dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
         end
      else
         begin
           dmGeral.BUS_CD_C_PCT.Close;
           dmGeral.BUS_CD_C_PCT.Data :=
           dmGeral.BUS_CD_C_PCT.DataRequest(
                   VarArrayOf([0, dataset.FieldByName('id_plano').AsString]));
           if dmGeral.BUS_CD_C_PCT.IsEmpty then
              begin
                xMensErro:= xMensErro + '.Plano de contas não cadastrado.'+ #13;
                dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
              end;
         end;
    end;

  if (dmGeral.FIN_CD_M_PBX.FieldByName('id_ccusto').AsString=null) or
     (dmGeral.FIN_CD_M_PBX.FieldByName('id_ccusto').AsString='') then
     begin
       xMensErro:= xMensErro + '.Centro de custo deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_C_CCU.Close;
       dmGeral.BUS_CD_C_CCU.Data :=
       dmGeral.BUS_CD_C_CCU.DataRequest(
               VarArrayOf([0, dataset.FieldByName('id_ccusto').AsString]));
       if dmGeral.BUS_CD_C_CCU.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Centro de custo não cadastrado.'+ #13;
            dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
          end;
     end;

{
  if (dmGeral.FIN_CD_M_PBX_TIT.IsEmpty)  then
     begin
       xMensErro:= xMensErro + '.Você deve informar pelo menos um título..'+ #13;
       dmGeral.FIN_CD_M_PBX.FieldByName('id_fornecedor').FocusControl;
     end;
}



  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


procedure FinAtualContaPbxTit;
begin
  try

  dmGeral.FIN_CD_M_PBX_TIT.BeforePost := nil;
  dmGeral.FIN_CD_M_PBX_TIT.AfterPost := nil;

  dmGeral.FIN_CD_M_PBX_TIT.First;
  while not dmGeral.FIN_CD_M_PBX_TIT.eof do
     begin
       if dmGeral.FIN_CD_M_PBXid_conta.AsInteger <>
          dmGeral.FIN_CD_M_PBX_TITid_conta.AsInteger then
          begin
            dmGeral.FIN_CD_M_PBX_TIT.Edit;

            dmGeral.FIN_CD_M_PBX_TITid_conta.AsInteger :=
                    dmGeral.FIN_CD_M_PBXid_conta.AsInteger;
            dmGeral.FIN_CD_M_PBX_TIT.Post;
          end;
       dmGeral.FIN_CD_M_PBX_TIT.Next;
    end;
  dmGeral.FIN_CD_M_PBX_TIT.First;

  finally
    dmGeral.FIN_CD_M_PBX_TIT.BeforePost := dmGeral.FIN_CD_M_PBX_TITBeforePost;
    dmGeral.FIN_CD_M_PBX_TIT.AfterPost  := dmGeral.FIN_CD_M_PBX_TITAfterPost;
  end;
end;

procedure FinMascaraPbx(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_PBXvlr_baixa.DisplayFormat             :=CMascaraValor;
  dmGeral.FIN_CD_M_PBXvlr_credito_utilizado.DisplayFormat :=CMascaraValor;
  dmGeral.FIN_CD_M_PBXvlr_saldo_credito.DisplayFormat     :=CMascaraValor;
  dmGeral.FIN_CD_M_PBXvlr_credito_disponivel.DisplayFormat:=CMascaraValor;
  dmGeral.FIN_CD_M_PBXvlr_a_pagar.DisplayFormat           :=CMascaraValor;
   dmGeral.FIN_CD_M_PBXvlr_tot_novo_tit.DisplayFormat     := CMascaraValor;
end;

procedure FinNovoPbx(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_PBX.fieldByName('id_baixa').AsInteger:=
      SMPrincipal.enValorChave('FIN_TB_M_PBX');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FIN_CD_M_PBX.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.FIN_CD_M_PBX.FieldByName('DTA_BAIXA').AsDateTime := xDataSis;
  dmGeral.FIN_CD_M_PBX.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.FIN_CD_M_PBX.FieldByName('ID_ABERTURA').AsInteger := 0;
  dmGeral.FIN_CD_M_PBX.FieldByName('dta_lancamento').AsDateTime := xDataSis;
  dmGeral.FIN_CD_M_PBX.FieldByName('vlr_a_pagar').AsCurrency := 0;
  dmGeral.FIN_CD_M_PBX.FieldByName('vlr_credito_utilizado').AsCurrency := 0;
  dmGeral.FIN_CD_M_PBX.FieldByName('vlr_baixa').AsCurrency := 0;
   dmGeral.FIN_CD_M_PBX.FieldByName('vlr_tot_novo_tit').AsCurrency := 0;

  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_PBX',xCodLme,xRevLme,dmGeral.FIN_CD_M_PBX);
end;

procedure FinNovoPbxTit;
begin
  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency := 0;
  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_JUROS').AsCurrency     := 0;
  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency  := 0;
  {if dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_CREDITO_UTILIZADO').ReadOnly = false then
     dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_CREDITO_UTILIZADO').AsCurrency := 0; }

   if dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_CREDITO_UTILIZADO').ReadOnly = true then
     begin
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_CREDITO_UTILIZADO').ReadOnly   := false;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_CREDITO_UTILIZADO').AsCurrency := 0;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_CREDITO_UTILIZADO').ReadOnly   := true;
     end
   else
     dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_CREDITO_UTILIZADO').AsCurrency := 0;

  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('PER_DESCONTO').AsCurrency := 0;
  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_A_PAGAR').AsCurrency  := 0;
  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_RESTANTE').AsCurrency := 0;
  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_MULTA').AsCurrency    := 0;
  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ATRASO').AsInteger        := 0;
end;

procedure FinValidaPbxTit(DataSet:TDataSet);
Var
xMensErro:string;
begin
  xMensErro:='';
  if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').AsString=null) or
     (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Titulo deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_M_PAG_TIT.Close;
       dmGeral.BUS_CD_M_PAG_TIT.Data :=
       dmGeral.BUS_CD_M_PAG_TIT.DataRequest(
         VarArrayOf([0, dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').AsString]));
       if dmGeral.BUS_CD_M_PAG_TIT.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Titulo não cadastrado.'+ #13;
            dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
          end;
     end;

  if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_pagamento').IsNull) or
     (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_pagamento').AsCurrency=0) then
     begin
       xMensErro:= xMensErro + '.Valor de pagamento deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_juros').AsCurrency>=
     dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor do juros não pode ser igual ou maior que o valor do titulo.'+ #13;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_multa').AsCurrency>=
     dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor da multa não pode ser igual ou maior que o valor do titulo.'+ #13;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_multa').AsCurrency>=
     dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor da multa não pode ser igual ou maior que o valor do titulo.'+ #13;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_desconto').AsCurrency>
     dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor do desconto não pode ser maior que o valor do titulo.'+ #13;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_pagamento').AsCurrency>
     dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_a_pagar').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor do pagamento não pode ser maior que o valor a pagar.'+ #13;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_a_pagar').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_pagamento').AsCurrency <
       ( dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_juros').AsCurrency +
         dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_multa').AsCurrency) ) then
     begin
       xMensErro:= xMensErro + '.Valor do pagamento não pode ser menor que o valor de (juros + multa).'+ #13;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_a_pagar').FocusControl;
     end;


  if dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_credito_utilizado').AsCurrency>0 then
     begin
       if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_pagamento').AsCurrency<>
          dmGeral.FIN_CD_M_PBX_TIT.FieldByName('vlr_credito_utilizado').AsCurrency) then
          begin
            xMensErro:= xMensErro + '.Quando utlizado crédito, o valor pago deve ser igual ao valor do crédito.'+ #13;
            dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
          end;
     end;



  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;



procedure FinMascaraPbxTit(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_PBX_TITvlr_pagamento.DisplayFormat         :=CMascaraValor;
  dmGeral.FIN_CD_M_PBX_TITvlr_juros.DisplayFormat             :=CMascaraValor;
  dmGeral.FIN_CD_M_PBX_TITvlr_desconto.DisplayFormat          :=CMascaraValor;
  dmGeral.FIN_CD_M_PBX_TITvlr_credito_utilizado.DisplayFormat :=CMascaraValor;
  dmGeral.FIN_CD_M_PBX_TITvlr_a_pagar.DisplayFormat           :=CMascaraValor;
  dmGeral.FIN_CD_M_PBX_TITvlr_restante.DisplayFormat          :=CMascaraValor;
  dmGeral.FIN_CD_M_PBX_TITvlr_titulo.DisplayFormat            :=CMascaraValor;
  dmGeral.FIN_CD_M_PBX_TITvlr_multa.DisplayFormat             :=CMascaraValor;


end;

procedure FinGravaPbxTit(DataSet: TDataSet);
begin
  SomaTitulo(Dataset);
end;


procedure FinNovoPbxGer;
var
  SMPrincipal: TSMClient;
begin
   //Busca sequencia no servidor
   SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
   try
    dmGeral.FIN_CD_M_PBX_GER.FieldByName('ID_CONTROLE').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT')
   finally
    FreeAndNil(SMPrincipal);
   end;

   dmGeral.FIN_CD_M_PBX_GER.FieldByName('DTA_VENCIMENTO').AsDateTime    := xDataSis;
   dmGeral.FIN_CD_M_PBX_GER.FieldByName('VLR_PAGAMENTO').AsCurrency        := 0;
end;

procedure FinValidaPbxGer(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  if (dmGeral.FIN_CD_M_PBX_GER.FieldByName('dta_vencimento').AsString=null) or
     (dmGeral.FIN_CD_M_PBX_GER.FieldByName('dta_vencimento').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data vencimento'+ #13;
       dmGeral.FIN_CD_M_PBX_GER.FieldByName('dta_vencimento').FocusControl;
     end
  ELSE if (abs(dmGeral.FIN_CD_M_PBX_GER.FieldByName('DTA_VENCIMENTO').AsDateTime -
         dmGeral.FIN_CD_M_PBX.FieldByName('DTA_BAIXA').AsDateTime)> 1825)  then
     begin
        xMensErro:= xMensErro + 'Data de vencimento não pode ser menor ou maior em mais de 5 anos da data da baixa.';
        dmGeral.FIN_CD_M_PBX_GER.FieldByName('dta_vencimento').FocusControl;
     end;


  if (dmGeral.FIN_CD_M_PBX_GER.FieldByName('vlr_pagamento').AsString=null) or
     (dmGeral.FIN_CD_M_PBX_GER.FieldByName('vlr_pagamento').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor.'+ #13;
       dmGeral.FIN_CD_M_PBX_GER.FieldByName('vlr_pagamento').FocusControl;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure FinMascaraPbxGer(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_PBX_GERvlr_pagamento.DisplayFormat         :=CMascaraValor;
end;


procedure SomaNovosTitulo(Dataset:TDataset);
begin
   dmGeral.FIN_CD_M_PBX.FieldByName('vlr_tot_novo_tit').asCurrency :=
     Tenorth.Soma(dmGeral.FIN_CD_M_PBX_GER,'vlr_pagamento');
end;

procedure SomaTitulo(Dataset:TDataset);
begin
   dmGeral.FIN_CD_M_PBX.FieldByName('vlr_baixa').asCurrency :=
     Tenorth.Soma(dmGeral.FIN_CD_M_PBX_TIT,'vlr_pagamento');


   dmGeral.FIN_CD_M_PBX.FieldByName('vlr_credito_utilizado').asCurrency :=
     Tenorth.Soma(dmGeral.FIN_CD_M_PBX_TIT,'vlr_credito_utilizado');


   dmGeral.FIN_CD_M_PBX.FieldByName('vlr_a_pagar').asCurrency :=
     Tenorth.Soma(dmGeral.FIN_CD_M_PBX_TIT,'vlr_a_pagar');

   dmGeral.FIN_CD_M_PBX.FieldByName('vlr_saldo_credito').asCurrency :=
     dmGeral.FIN_CD_M_PBX.FieldByName('vlr_credito_disponivel').asCurrency -
     Tenorth.Soma(dmGeral.FIN_CD_M_PBX_TIT,'vlr_credito_utilizado');



end;


procedure FIN_CD_M_PBX_TITper_descontoChange(Sender: TField);
begin
  if dmGeral.FIN_CD_M_PBX_TIT.FieldByName('PER_DESCONTO').AsCurrency > 0 then
      begin
        if dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_TITULO').AsCurrency > 0 then
           begin
              dmGeral.FIN_CD_M_PBX_TITVLR_DESCONTO.OnChange := nil;
              dmGeral.FIN_CD_M_PBX_TITPER_DESCONTO.OnChange := nil;

              dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency :=
                roundTo( (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_TITULO').AsCurrency *
                  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('PER_DESCONTO').AsCurrency) / 100,-2);
              dmGeral.FIN_CD_M_PBX_TIT.FieldByName('PER_DESCONTO').AsCurrency :=
               roundTo(  (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                  dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_TITULO').AsCurrency,-2);

              dmGeral.FIN_CD_M_PBX_TITVLR_DESCONTO.OnChange := dmGeral.FIN_CD_M_PBX_TITVLR_DESCONTOChange;
              dmGeral.FIN_CD_M_PBX_TITPER_DESCONTO.OnChange := dmGeral.FIN_CD_M_PBX_TITPER_DESCONTOChange;
           end;
      end
   else
      begin
        dmGeral.FIN_CD_M_PBX_TITVLR_DESCONTO.OnChange := nil;
        dmGeral.FIN_CD_M_PBX_TITPER_DESCONTO.OnChange := nil;

        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('PER_DESCONTO').AsCurrency := 0;
        dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency := 0;

        dmGeral.FIN_CD_M_PBX_TITVLR_DESCONTO.OnChange := dmGeral.FIN_CD_M_PBX_TITVLR_DESCONTOChange;
        dmGeral.FIN_CD_M_PBX_TITPER_DESCONTO.OnChange := dmGeral.FIN_CD_M_PBX_TITPER_DESCONTOChange;
      end;
  finPbxCalcTotalTitulo;
end;

procedure FIN_CD_M_PBX_TITvlr_descontoChange(Sender: TField);
begin
  if dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
     begin
       if dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_TITULO').AsCurrency > 0 then
          begin
             dmGeral.FIN_CD_M_PBX_TITPER_DESCONTO.OnChange := nil;

             dmGeral.FIN_CD_M_PBX_TIT.FieldByName('PER_DESCONTO').AsCurrency :=
                   (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                    dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_TITULO').AsCurrency;

             dmGeral.FIN_CD_M_PBX_TITPER_DESCONTO.OnChange := dmGeral.FIN_CD_M_PBX_TITPER_DESCONTOChange;
          end;
     end
  else
     begin
       dmGeral.FIN_CD_M_PBX_TITPER_DESCONTO.OnChange := nil;
       dmGeral.FIN_CD_M_PBX_TITVLR_DESCONTO.OnChange := nil;

       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('PER_DESCONTO').AsCurrency := 0;
       dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency := 0;

       dmGeral.FIN_CD_M_PBX_TITPER_DESCONTO.OnChange := dmGeral.FIN_CD_M_PBX_TITPER_DESCONTOChange;
       dmGeral.FIN_CD_M_PBX_TITVLR_DESCONTO.OnChange := dmGeral.FIN_CD_M_PBX_TITVLR_DESCONTOChange;
     end;
  finPbxCalcTotalTitulo;
end;
procedure FIN_CD_M_PBX_TITvlr_pagamentoChange(Sender: TField);
begin
  finPbxCalcTotalTitulo;
end;


procedure FIN_CD_M_PBX_TITvlr_restanteChange(Sender: TField);
begin
  finPbxCalcTotalTitulo;
end;

procedure FIN_CD_M_PBX_TITvlr_multaChange(Sender: TField);
begin
   finPbxCalcTotalTitulo;
end;

procedure FIN_CD_M_PBX_TITvlr_jurosChange(Sender: TField);
begin
  finPbxCalcTotalTitulo;
end;


procedure FIN_CD_M_PBX_TITvlr_credito_utilizadoChange(Sender: TField);
begin
  finPbxCalcTotalTitulo;
end;

procedure FIN_CD_M_PBXid_fornecedorChange(Sender: TField);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_PBX.FieldByName('vlr_credito_disponivel').AsCurrency :=
      SMPrincipal.enVerCreditoForn(dmGeral.FIN_CD_M_PBX.FieldByName('ID_FORNECEDOR').asString);
    dmGeral.FIN_CD_M_PBX.FieldByName('vlr_saldo_credito').AsCurrency :=
      dmGeral.FIN_CD_M_PBX.FieldByName('vlr_credito_disponivel').AsCurrency;
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure FinOutrasValPbx;
var
  xMensErro,xCodTitulo: String;
  TotPgtoTit,TotPgtoNovoTit:currency;
begin
  xMensErro := '';

  dmGeral.FIN_CD_M_PBX_TIT.cancel;
  if dmGeral.FIN_CD_M_PBX_TIT.IsEmpty then
     begin
       xMensErro := xMensErro + 'Nenhum título foi inserido na baixa' + #13;
     end;


  xCodTitulo := '';
  dmGeral.FIN_CD_M_PBX_TIT.First;
  while not dmGeral.FIN_CD_M_PBX_TIT.eof do
   begin
     if (dmGeral.FIN_CD_M_PBX_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency <= 0) then
       begin
         if xCodTitulo = '' then
           xCodTitulo := xCodTitulo + dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString
         else
           xCodTitulo := xCodTitulo +', '+dmGeral.FIN_CD_M_PBX_TIT.FieldByName('ID_TITULO').AsString;
       end;

     dmGeral.FIN_CD_M_PBX_TIT.Next;
   end;
  if xCodTitulo <> '' then
     begin
       xMensErro := xMensErro + 'Os seguintes títulos estão com valores a pagar zerado: '+xCodTitulo;
     end;


  TotPgtoTit := 0;
  TotPgtoNovoTit := 0;

  dmGeral.BUS_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_FPG.Data :=
  dmGeral.BUS_CD_C_FPG.DataRequest(
           VarArrayOf([0, dmGeral.FIN_CD_M_PBX.FieldByName('id_forma_pag').AsString]));
  if not dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,3,4,6] then // Duplicata, Promissória , Cartão de crédito , Boleto e Cheque
          begin
            dmGeral.FIN_CD_M_PBX_GER.cancel;
            if dmGeral.FIN_CD_M_PBX_GER.IsEmpty then
               begin
                 xMensErro := xMensErro + 'Nenhum título novo foi inserido na baixa' + #13;
               end
            else
               begin
                 TotPgtoTit := Tenorth.Soma(dmGeral.FIN_CD_M_PBX_TIT,'vlr_pagamento');
                 TotPgtoNovoTit := Tenorth.Soma(dmGeral.FIN_CD_M_PBX_GER,'vlr_pagamento');
                 if TotPgtoTit <> TotPgtoNovoTit then
                    begin
                      xMensErro := xMensErro + 'Há diferença de R$'+FormatCurr('###,###,###,###,##0.00',TotPgtoNovoTit-TotPgtoTit)+' entre o total dos títulos novos e o total de pagamento dos títulos' + #13;
                    end;
               end;
          end;
     end;

  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
       abort;
     end;
end;


end.
