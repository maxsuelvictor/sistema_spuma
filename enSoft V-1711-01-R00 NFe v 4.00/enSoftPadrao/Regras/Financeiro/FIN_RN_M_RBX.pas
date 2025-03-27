unit FIN_RN_M_RBX;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,enFunc,Vcl.Controls;

procedure FinValidaRbx(DataSet:TDataSet);
procedure FinMascaraRbx(DataSet:TDataSet);
procedure FinNovoRbx(DataSet: TDataSet);
procedure FinOutrasValRbx;
procedure FinPermiteAltExcRbx;
procedure FinOutrasOperacoesRbx;

procedure FinValidaRbxTit(DataSet:TDataSet);
procedure FinGerenciarRbxPpe;
procedure FinMascaraRbxTit(DataSet:TDataSet);
procedure FinNovoRbxTit;

procedure FinMascaraRbxGer(DataSet:TDataSet);
procedure FinNovoRbxGer(DataSet: TDataSet);
procedure FinValidaRbxGer(DataSet:TDataSet);

procedure FinMascaraRbxPpe;

procedure FIN_CD_M_RBX_TITper_descontoChange;
procedure FIN_CD_M_RBX_TITvlr_descontoChange;
procedure FIN_CD_M_RBX_TITvlr_pagamentoChange;
procedure FIN_CD_M_RBX_TITvlr_jurosChange;
procedure FIN_CD_M_RBX_TITvlr_cred_utilizadoChange;

procedure FIN_CD_M_RBXid_forma_pagChange;
procedure FIN_CD_M_RBXid_clienteChange;
procedure FIN_CD_M_RBXid_contaChange;
procedure FinAtualContaRbxTit;
procedure finRbxCalcTotalTitulo;
procedure SomaTitulo;
procedure SomaTituloGer;



implementation
Uses uDmGeral,enConstantes, uProxy;

procedure FinOutrasOperacoesRbx;
begin
  dmGeral.FIN_CD_M_RBX_TIT.First;
  while not dmGeral.FIN_CD_M_RBX_TIT.eof do
   begin
     dmGeral.FIN_CD_M_RBX_TIT.Edit;
     if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_RESTANTE').AsCurrency > 0) and
        (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime<
             dmGeral.FIN_CD_M_RBX.FieldByName('DTA_BAIXA').AsDateTime) then
       begin
         dmGeral.FIN_CD_M_RBX_TIT.FieldByName('DTA_NOVO_VENC').AsDateTime :=
                 dmGeral.FIN_CD_M_RBX.FieldByName('DTA_BAIXA').AsDateTime;
       end
     else
       begin
         dmGeral.FIN_CD_M_RBX_TIT.FieldByName('DTA_NOVO_VENC').AsDateTime :=
                 dmGeral.FIN_CD_M_RBX_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime;
       end;
     dmGeral.FIN_CD_M_RBX_TIT.Post;
   end;
end;

procedure FinValidaRbx(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';
  if (dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').AsString=null) or
     (dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').AsString='') then
     begin
       xMensErro:= xMensErro + '.Cliente deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(
               VarArrayOf([0, dataset.FieldByName('id_cliente').AsString]));
       if dmGeral.BUS_CD_C_CLI.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Cliente não cadastrado.'+ #13;
            dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
          end;
     end;
  if (dmGeral.FIN_CD_M_RBX.FieldByName('id_conta').AsString=null) or
     (dmGeral.FIN_CD_M_RBX.FieldByName('id_conta').AsString='') then
     begin
       xMensErro:= xMensErro + '.Conta Corrente deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
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
            dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
          end;
     end;


  if (dmGeral.FIN_CD_M_RBX.FieldByName('id_forma_pag').AsString=null) or
     (dmGeral.FIN_CD_M_RBX.FieldByName('id_forma_pag').AsString='') then
     begin
       xMensErro:= xMensErro + '.Forma de pagamento deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
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
            dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
          end;
     end;

  if (dmGeral.FIN_CD_M_RBX.FieldByName('id_tipo_financeiro').AsString=null) or
     (dmGeral.FIN_CD_M_RBX.FieldByName('id_tipo_financeiro').AsString='') then
     begin
       xMensErro:= xMensErro + '.Tipo financeiro deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
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
            dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
          end;
     end;

  if (dmGeral.FIN_CD_M_RBX.FieldByName('id_plano').AsString=null) or
     (dmGeral.FIN_CD_M_RBX.FieldByName('id_plano').AsString='') then
     begin
       xMensErro:= xMensErro + '.Plano de contas deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
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
            dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
          end;
     end;

  if (dmGeral.FIN_CD_M_RBX.FieldByName('id_ccusto').AsString=null) or
     (dmGeral.FIN_CD_M_RBX.FieldByName('id_ccusto').AsString='') then
     begin
       xMensErro:= xMensErro + '.Centro de custo deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
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
            dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
          end;
     end;

    if dmGeral.FIN_CD_M_RBX.FieldByName('vlr_saldo_credito').asCurrency < 0 then
      begin
       if (not dmGeral.BUS_CD_C_FPG.IsEmpty) and
           (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 7) then
          begin
            xMensErro:= xMensErro + '.Saldo de crédito insuficiente.'+ #13;
            dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
          end;
      end;


  {if (dmGeral.FIN_CD_M_RBX.FieldByName('observacao').text = '') then
     begin
       xMensErro:= xMensErro + '.Observação deve ser informada.'+ #13;
       dmGeral.FIN_CD_M_RBX.FieldByName('id_cliente').FocusControl;
     end; }

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure FinMascaraRbx(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_RBXVLR_BAIXA.DisplayFormat              := CMascaraValor;
  dmGeral.FIN_CD_M_RBXVLR_CRED_UTILIZADO.DisplayFormat     := CMascaraValor;
  dmGeral.FIN_CD_M_RBXvlr_saldo_credito.DisplayFormat      := CMascaraValor;
  dmGeral.FIN_CD_M_RBXvlr_credito_disponivel.DisplayFormat := CMascaraValor;
  dmGeral.FIN_CD_M_RBXvlr_a_pagar.DisplayFormat            := CMascaraValor;
  dmGeral.FIN_CD_M_RBXvlr_pago_ger.DisplayFormat          := CMascaraValor;

  dmGeral.FIN_CD_M_RBXvlr_tot_ger.DisplayFormat          := CMascaraValor;
end;

procedure FinNovoRbx(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_RBX.FieldByName('ID_BAIXA').AsInteger :=
         SMPrincipal.enValorChave('FIN_TB_M_RBX');
  finally
    FreeAndNil(SMPrincipal);
  end;
  // Deve ser passado pela tela que a cria
  // FIN_CD_M_RBX.FieldByName('ID_EMPRESA').AsInteger   := 0;
  dmGeral.FIN_CD_M_RBX.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.FIN_CD_M_RBX.FieldByName('DTA_BAIXA').AsDateTime   := xDataSis;
  dmGeral.FIN_CD_M_RBX.FieldByName('VLR_BAIXA').AsCurrency   := 0;
  dmGeral.FIN_CD_M_RBX.FieldByName('VLR_CRED_UTILIZADO').AsCurrency := 0;
  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_saldo_credito').AsCurrency  := 0;
  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_credito_disponivel').AsCurrency := 0;
  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_a_pagar').AsCurrency := 0;
  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_pago_ger').AsCurrency := 0;
  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_tot_ger').AsCurrency := 0;
  dmGeral.FIN_CD_M_RBX.FieldByName('ID_ABERTURA').AsInteger  := 0;
  dmGeral.FIN_CD_M_RBX.FieldByName('dta_lancamento').AsDateTime := xDataSis;

  dmGeral.FIN_CD_M_RBX.FieldByName('faz_conciliacao').AsBoolean := false;

  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_RBX',xCodLme,xRevLme,dmGeral.FIN_CD_M_RBX);
end;

procedure FinValidaRbxTit(DataSet:TDataSet);
var
  xMensErro:string;
begin

  xMensErro:='';

  if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('id_titulo').AsString=null) or
     (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('id_titulo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Título deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('id_titulo').FocusControl;
     end
  else
     begin
       dmGeral.BUS_CD_M_REC.Close;
       dmGeral.BUS_CD_M_REC.Data :=
       dmGeral.BUS_CD_M_REC.DataRequest(
         VarArrayOf([107, dmGeral.FIN_CD_M_RBX_TIT.FieldByName('id_titulo').AsString]));
       if dmGeral.BUS_CD_M_REC.IsEmpty then
          begin
            xMensErro:= xMensErro + '.Título não cadastrado.'+ #13;
            dmGeral.FIN_CD_M_RBX_TIT.FieldByName('id_titulo').FocusControl;
          end;
     end;

  if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_pagamento').IsNull) or
     (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_pagamento').AsCurrency=0) then
     begin
       xMensErro:= xMensErro + '.Valor de pagamento deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('id_titulo').FocusControl;
     end;

     {Foi retirado essa verificação,pois cliente estava
       tentando fazer uma baixa de titulo a receber antigo e o juros é maior que o valor do titulo. Resp. Luan.Data:15/09/2016.Chamado:473
  {if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_juros').AsCurrency>=
     dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor dos juros não pode ser igual ou maior que o valor do título.'+ #13;
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('id_titulo').FocusControl;
     end; }


  if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_desconto').AsCurrency>
     dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_titulo').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor do desconto não pode ser maior que o valor do título.'+ #13;
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('id_titulo').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_pagamento').AsCurrency>
     dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_a_pagar').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor do pagamento não pode ser maior que o valor a pagar.'+ #13;
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_a_pagar').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_pagamento').AsCurrency <
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_juros').AsCurrency) then
     begin
       xMensErro:= xMensErro + '.Valor do pagamento não pode ser menor que o valor do juros.'+ #13;
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_a_pagar').FocusControl;
     end;


  if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_cred_utilizado').AsCurrency>0 then
     begin
       if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_pagamento').AsCurrency<>
          dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_cred_utilizado').AsCurrency) then
          begin
            xMensErro:= xMensErro + '.Quando utlizado crédito, o valor pago deve ser igual ao valor do crédito.'+ #13;
            dmGeral.FIN_CD_M_PBX_TIT.FieldByName('id_titulo').FocusControl;
          end;
     end;



  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);



end;

procedure FinMascaraRbxTit(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_RBX_TITVLR_PAGAMENTO.DisplayFormat      := CMascaraValor;
  dmGeral.FIN_CD_M_RBX_TITVLR_JUROS.DisplayFormat          := CMascaraValor;
  dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTO.DisplayFormat       := CMascaraValor;
  dmGeral.FIN_CD_M_RBX_TITvlr_cred_utilizado.DisplayFormat := CMascaraValor;
  dmGeral.FIN_CD_M_RBX_TITvlr_a_pagar.DisplayFormat        := CMascaraValor;
  dmGeral.FIN_CD_M_RBX_TITvlr_restante.DisplayFormat       := CMascaraValor;
  dmGeral.FIN_CD_M_RBX_TITvlr_titulo.DisplayFormat         := CMascaraValor;
  dmGeral.FIN_CD_M_RBX_TITvlr_juros.DisplayFormat          := CMascaraValor;
end;

procedure FinNovoRbxTit;
begin
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('PER_DESCONTO').AsCurrency       := 0;
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_A_PAGAR').AsCurrency        := 0;
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_RESTANTE').AsCurrency       := 0;
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ATRASO').AsInteger              := 0;
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency      := 0;
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_JUROS').AsCurrency          := 0;
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency       := 0;
  if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_CRED_UTILIZADO').ReadOnly = true then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_CRED_UTILIZADO').ReadOnly   := false;
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_CRED_UTILIZADO').AsCurrency := 0;
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_CRED_UTILIZADO').ReadOnly   := true;
     end
  else
     dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_CRED_UTILIZADO').AsCurrency := 0;

  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('concilia').AsBoolean       :=
          dmGeral.FIN_CD_M_RBX.FieldByName('faz_conciliacao').AsBoolean;
end;


procedure FIN_CD_M_RBX_TITvlr_descontoChange;
begin

  if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
     begin
       if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_TITULO').AsCurrency > 0 then
          begin
             dmGeral.FIN_CD_M_RBX_TITPER_DESCONTO.OnChange := nil;

             dmGeral.FIN_CD_M_RBX_TIT.FieldByName('PER_DESCONTO').AsCurrency :=
                   (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                    dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_TITULO').AsCurrency;

             dmGeral.FIN_CD_M_RBX_TITPER_DESCONTO.OnChange := dmGeral.FIN_CD_M_RBX_TITPER_DESCONTOChange;
          end;
     end
  else
     begin
       dmGeral.FIN_CD_M_RBX_TITPER_DESCONTO.OnChange := nil;
       dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTO.OnChange := nil;

       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('PER_DESCONTO').AsCurrency := 0;
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency := 0;

       dmGeral.FIN_CD_M_RBX_TITPER_DESCONTO.OnChange := dmGeral.FIN_CD_M_RBX_TITPER_DESCONTOChange;
       dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTO.OnChange := dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTOChange;
     end;
  finRbxCalcTotalTitulo;
end;

procedure FIN_CD_M_RBX_TITvlr_pagamentoChange;
begin
   finRbxCalcTotalTitulo;
end;

procedure FinMascaraRbxGer(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_RBX_GERVLR_PAGAMENTO.DisplayFormat          := CMascaraValor;
end;


procedure FinMascaraRbxPpe;
begin
  dmGeral.FIN_CD_M_RBX_PPEvlr_desc_pos_fat.DisplayFormat          := CMascaraValor;
end;


procedure FinNovoRbxGer(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_RBX_GER.FieldByName('ID_CONTROLE').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT')
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FIN_CD_M_RBX_GER.FieldByName('VLR_PAGAMENTO').AsCurrency  := 0;
end;

procedure FinValidaRbxGer(DataSet:TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';


  if (dmGeral.FIN_CD_M_RBX_GER.FieldByName('dta_vencimento').AsString=null) or
     (dmGeral.FIN_CD_M_RBX_GER.FieldByName('dta_vencimento').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data vencimento'+ #13;
       dmGeral.FIN_CD_M_RBX_GER.FieldByName('dta_vencimento').FocusControl;
     end
  else if (abs(dmGeral.FIN_CD_M_RBX_GER.FieldByName('DTA_VENCIMENTO').AsDateTime -
        dmGeral.FIN_CD_M_RBX.FieldByName('DTA_BAIXA').AsDateTime)> 1825)  then
     begin
         xMensErro:= xMensErro +'Data de vencimento não pode ser menor ou maior em mais de 5 anos da data da baixa.'+ #13;
         dmGeral.FIN_CD_M_RBX_GER.FieldByName('dta_vencimento').FocusControl;
     end;

  if (dmGeral.FIN_CD_M_RBX_GER.FieldByName('vlr_pagamento').AsString=null) or
     (dmGeral.FIN_CD_M_RBX_GER.FieldByName('vlr_pagamento').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor.'+ #13;
       dmGeral.FIN_CD_M_RBX_GER.FieldByName('vlr_pagamento').FocusControl;
     end;



  dmGeral.BusFormaPgtos(0,dmgeral.FIN_CD_M_RBX.FieldByName('ID_FORMA_PAG').AsString);
  if dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
     begin
       if (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_banco').AsString=null) or
          (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_banco').AsString='') then
          begin
             xMensErro:= xMensErro + '.Banco do cheque'+ #13;
             dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_banco').FocusControl;
          end;

       if (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_agencia').AsString=null) or
          (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_agencia').AsString='') then
          begin
             xMensErro:= xMensErro + '.Agência do cheque'+ #13;
             dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_agencia').FocusControl;
          end;

       if (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_conta').AsString=null) or
          (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_conta').AsString='') then
          begin
             xMensErro:= xMensErro + '.Conta do cheque'+ #13;
             dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_conta').FocusControl;
          end;

       if (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_cheque').AsString=null) or
          (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_cheque').AsString='') then
          begin
            xMensErro:= xMensErro + '.Número do cheque'+ #13;
            dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_cheque').FocusControl;
          end;

       if (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_emitente').AsString=null) or
          (dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_emitente').AsString='') then
          begin
             xMensErro:= xMensErro + '.Emitente do cheque'+ #13;
             dmGeral.FIN_CD_M_RBX_GER.FieldByName('che_emitente').FocusControl;
          end;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure finRbxCalcTotalTitulo;
begin
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_a_pagar').AsCurrency:=
    dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_titulo').AsCurrency-
    dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_desconto').AsCurrency+
    dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_juros').AsCurrency;



  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_RESTANTE').AsCurrency:=
    RoundTo( (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_A_PAGAR').AsCurrency-
    dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_pagamento').AsCurrency),-2);
end;

procedure FIN_CD_M_RBX_TITvlr_jurosChange;
begin
  finRbxCalcTotalTitulo;
end;


procedure FIN_CD_M_RBX_TITvlr_cred_utilizadoChange;
begin
  finRbxCalcTotalTitulo;
  if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency = 0 then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency :=
               dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_cred_utilizado').AsCurrency;
     end;
end;



procedure FIN_CD_M_RBX_TITper_descontoChange;
begin
   if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('PER_DESCONTO').AsCurrency > 0 then
      begin
        if dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_TITULO').AsCurrency > 0 then
           begin
              dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTO.OnChange := nil;
              dmGeral.FIN_CD_M_RBX_TITPER_DESCONTO.OnChange := nil;

              dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency :=
                RoundTo( (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_TITULO').AsCurrency *
                  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('PER_DESCONTO').AsCurrency) / 100,-2);
              dmGeral.FIN_CD_M_RBX_TIT.FieldByName('PER_DESCONTO').AsCurrency :=
                roundTo( (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_TITULO').AsCurrency,-2);

              dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTO.OnChange := dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTOChange;
              dmGeral.FIN_CD_M_RBX_TITPER_DESCONTO.OnChange := dmGeral.FIN_CD_M_RBX_TITPER_DESCONTOChange;
           end;
      end
   else
      begin
        dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTO.OnChange := nil;
        dmGeral.FIN_CD_M_RBX_TITPER_DESCONTO.OnChange := nil;

        dmGeral.FIN_CD_M_RBX_TIT.FieldByName('PER_DESCONTO').AsCurrency := 0;
        dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_DESCONTO').AsCurrency := 0;

        dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTO.OnChange := dmGeral.FIN_CD_M_RBX_TITVLR_DESCONTOChange;
        dmGeral.FIN_CD_M_RBX_TITPER_DESCONTO.OnChange := dmGeral.FIN_CD_M_RBX_TITPER_DESCONTOChange;
      end;
  finRbxCalcTotalTitulo;
end;

procedure FinOutrasValRbx;
var
  xMensErro,xCodTitulo: String;
  TotPgtoTit,TotPgtoNovoTit: Currency;
begin
  xMensErro := '';

  dmGeral.FIN_CD_M_RBX_TIT.cancel;
  if dmGeral.FIN_CD_M_RBX_TIT.IsEmpty then
     begin
       xMensErro := xMensErro + 'Nenhum título foi inserido na baixa' + #13;
     end;


   xCodTitulo := '';
   dmGeral.FIN_CD_M_RBX_TIT.First;
   while not dmGeral.FIN_CD_M_RBX_TIT.eof do
     begin
       if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('VLR_PAGAMENTO').AsCurrency <= 0) then
         begin
           if xCodTitulo = '' then
             xCodTitulo := xCodTitulo + dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString
           else
             xCodTitulo := xCodTitulo +', '+dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString;
         end;

       dmGeral.FIN_CD_M_RBX_TIT.Next;
     end;
   if xCodTitulo <> '' then
     begin
       xMensErro := xMensErro + 'Os seguintes títulos estão com valores a pagar zerado: '+xCodTitulo+#13;
     end;


  dmGeral.FIN_CD_M_RBX_GER.First;
   while not dmGeral.FIN_CD_M_RBX_GER.eof do
     begin
       if (abs(dmGeral.FIN_CD_M_RBX_GER.FieldByName('DTA_VENCIMENTO').AsDateTime -
           dmGeral.FIN_CD_M_RBX.FieldByName('DTA_BAIXA').AsDateTime)> 1825)  then
         begin
           xMensErro := xMensErro + 'Data de vencimento dos títulos de substituição não pode ser menor ou maior em mais de 5 anos da data da baixa.'+#13;
           break;
         end;
       dmGeral.FIN_CD_M_RBX_GER.Next;
     end;



  TotPgtoTit := 0;
  TotPgtoNovoTit := 0;

  dmGeral.BUS_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_FPG.Data :=
  dmGeral.BUS_CD_C_FPG.DataRequest(
           VarArrayOf([0, dmGeral.FIN_CD_M_RBX.FieldByName('id_forma_pag').AsString]));
  if not dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,3,4,6] then // Duplicata, Promissória , Cartão de crédito , Boleto e Cheque
          begin
            dmGeral.FIN_CD_M_RBX_GER.cancel;
            if dmGeral.FIN_CD_M_RBX_GER.IsEmpty then
               begin
                 xMensErro := xMensErro + 'Nenhum título novo foi inserido na baixa' + #13;
               end
            else
               begin
                 TotPgtoTit := Tenorth.Soma(dmGeral.FIN_CD_M_RBX_TIT,'vlr_pagamento');
                 TotPgtoNovoTit := Tenorth.Soma(dmGeral.FIN_CD_M_RBX_GER,'vlr_pagamento');
                 if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,3,4] then
                   begin
                     if TotPgtoTit <> TotPgtoNovoTit then
                        begin
                          xMensErro := xMensErro + 'Total dos títulos novos está diferente do total de pagamento dos títulos com a diferença de ' +
                                                   FormatCurr('###,###,##0.00' ,abs(TotPgtoTit - TotPgtoNovoTit)) + #13;
                        end;
                   end
                 else if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                    begin
                      if TotPgtoTit > TotPgtoNovoTit then
                         begin
                            xMensErro := xMensErro + 'Total dos títulos novos está menor que total de pagamento dos títulos com a diferença de '+
                                                     FormatCurr('###,###,##0.00' ,TotPgtoTit - TotPgtoNovoTit) + #13;
                         end;
                      if (TotPgtoTit < TotPgtoNovoTit) then
                         begin
                            if MessageDlg('Total dos valores dos cheques é maior que valor total baixado, por isso será gerado crédito '+
                                           'no valor de '+FormatCurr('###,###,##0.00' ,TotPgtoNovoTit - TotPgtoTit)+'. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                              begin
                                abort;
                              end;
                            if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_FORMA_PAG').AsString = '') then
                              begin
                                xMensErro := xMensErro + 'Para geração de nota de crédito deve ser preenchido forma de pagamento ' +
                                                        'em "Geração Nota de Crédito" aba Financeiro da tela de parâmetros'+#13;
                              end;
                         end;
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

procedure FinPermiteAltExcRbx;
var
  xMensErro:string;
begin

  xMensErro := '';

  dmGeral.BUS_CD_C_CTC.Close;
  dmGeral.BUS_CD_C_CTC.Data :=
  dmGeral.BUS_CD_C_CTC.DataRequest(VarArrayOf([0, dmGeral.FIN_CD_M_RBXid_conta.AsString]));
  if dmGeral.BUS_CD_C_CTCtipo.AsInteger = 0 then  // Se for Tipo = Caixa
     begin
        if dmGeral.FIN_CD_M_RBX.FieldByName('id_abertura').AsInteger > 0 then
           begin
             dmGeral.BUS_CD_M_CXA.Close;
             dmGeral.BUS_CD_M_CXA.Data :=
             dmGeral.BUS_CD_M_CXA.DataRequest(
                     VarArrayOf([0, dmGeral.FIN_CD_M_RBX.FieldByName('id_abertura').AsString]));

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
               VarArrayOf([0, dmGeral.FIN_CD_M_RBXid_empresa.AsString, dmGeral.FIN_CD_M_RBXid_baixa.AsString, dmGeral.BUS_CD_C_CTCtipo.AsString]));

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

procedure FIN_CD_M_RBXid_forma_pagChange;
begin
  dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_cred_utilizado').ReadOnly := true;
  if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger=7 then
     begin
       dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_cred_utilizado').ReadOnly := false;
     end;

end;

procedure FIN_CD_M_RBXid_clienteChange;
begin
   dmGeral.FIN_CD_M_RBX.FieldByName('vlr_credito_disponivel').AsCurrency := 0;
  //Busca saldo do Crédito do cliente
  if dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').AsString <> '' then
     begin
       dmGeral.FIN_CD_M_RBX.FieldByName('vlr_credito_disponivel').AsString :=
          CurrToStr(dmGeral.BusSaldoCreCli(dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').AsString));
       dmGeral.FIN_CD_M_RBX.FieldByName('vlr_saldo_credito').AsCurrency :=
                   dmGeral.FIN_CD_M_RBX.FieldByName('vlr_credito_disponivel').AsCurrency;
     end;

end;

procedure FIN_CD_M_RBXid_contaChange;
begin
   dmGeral.BUS_CD_C_CTC.Close;
   dmGeral.BUS_CD_C_CTC.Data :=
   dmGeral.BUS_CD_C_CTC.DataRequest(
           VarArrayOf([0, dmGeral.FIN_CD_M_RBX.FieldByName('id_conta').AsString]));
   dmGeral.FIN_CD_M_RBX.FieldByName('id_abertura').asInteger:=0;
   if dmGeral.BUS_CD_C_CTC.FieldByName('tipo').asInteger=0 then
      begin
        dmGeral.BUS_CD_M_CXA.Close;
        dmGeral.BUS_CD_M_CXA.Data :=
        dmGeral.BUS_CD_M_CXA.DataRequest(
                VarArrayOf([93, dmGeral.FIN_CD_M_RBX.FieldByName('ID_RESPONSAVEL').AsString,
                                dmGeral.FIN_CD_M_RBX.FieldByName('id_empresa').AsString,
                                dmGeral.FIN_CD_M_RBX.FieldByName('id_conta').AsString]));

       if not dmGeral.BUS_CD_M_CXA.IsEmpty then
          begin
             dmGeral.FIN_CD_M_RBX.FieldByName('id_abertura').asInteger:=
                  dmGeral.BUS_CD_M_CXA.FieldByName('id_abertura').asInteger;
          end;
      end;
end;

procedure FinAtualContaRbxTit;
begin
  try

  dmGeral.FIN_CD_M_RBX_TIT.BeforePost := nil;
  dmGeral.FIN_CD_M_RBX_TIT.AfterPost := nil;

  dmGeral.FIN_CD_M_RBX_TIT.First;
  while not dmGeral.FIN_CD_M_RBX_TIT.eof do
     begin
       if dmGeral.FIN_CD_M_RBXid_conta.AsInteger <>
          dmGeral.FIN_CD_M_RBX_TITid_conta.AsInteger then
          begin
            dmGeral.FIN_CD_M_RBX_TIT.Edit;

            dmGeral.FIN_CD_M_RBX_TITid_conta.AsInteger :=
                    dmGeral.FIN_CD_M_RBXid_conta.AsInteger;
            dmGeral.FIN_CD_M_RBX_TIT.Post;
          end;
       dmGeral.FIN_CD_M_RBX_TIT.Next;
    end;
  dmGeral.FIN_CD_M_RBX_TIT.First;

  finally
    dmGeral.FIN_CD_M_RBX_TIT.BeforePost := dmGeral.FIN_CD_M_RBX_TITBeforePost;
    dmGeral.FIN_CD_M_RBX_TIT.AfterPost  := dmGeral.FIN_CD_M_RBX_TITAfterPost;
  end;
end;



procedure SomaTitulo;
begin

   dmGeral.FIN_CD_M_RBX.FieldByName('vlr_baixa').asCurrency :=
     Tenorth.Soma(dmGeral.FIN_CD_M_RBX_TIT,'vlr_pagamento');


   dmGeral.FIN_CD_M_RBX.FieldByName('vlr_cred_utilizado').asCurrency :=
     Tenorth.Soma(dmGeral.FIN_CD_M_RBX_TIT,'vlr_cred_utilizado');


   dmGeral.FIN_CD_M_RBX.FieldByName('vlr_saldo_credito').asCurrency :=
     dmGeral.FIN_CD_M_RBX.FieldByName('vlr_credito_disponivel').asCurrency -
     Tenorth.Soma(dmGeral.FIN_CD_M_RBX_TIT,'vlr_cred_utilizado');

   dmGeral.FIN_CD_M_RBX.FieldByName('vlr_a_pagar').asCurrency :=
     Tenorth.Soma(dmGeral.FIN_CD_M_RBX_TIT,'vlr_a_pagar');

   dmGeral.FIN_CD_M_RBX.FieldByName('vlr_pago_ger').asCurrency :=
     Tenorth.Soma(dmGeral.FIN_CD_M_RBX_GER,'vlr_pagamento');

end;

procedure SomaTituloGer;
var
  valor: Currency;
begin
  valor := Tenorth.Soma(dmGeral.FIN_CD_M_RBX_GER,'vlr_pagamento');

  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_tot_ger').asCurrency  := valor;
  dmGeral.FIN_CD_M_RBX.FieldByName('vlr_pago_ger').asCurrency := valor;

end;

procedure FinGerenciarRbxPpe;
begin

  // Guardar o desconto dos títulos com forma de pagamento que presta conta e que tem pedido de venda
  dmGeral.FIN_CD_M_RBX_PPE.First;
  while not dmGeral.FIN_CD_M_RBX_PPE.eof do
     begin
       dmGeral.FIN_CD_M_RBX_PPE.delete;
     end;

  dmGeral.FIN_CD_M_RBX_TIT.First;
  while not dmGeral.FIN_CD_M_RBX_TIT.eof do
      begin
        if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_fpg_sgq_presta_conta').AsBoolean) and
           (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_id_pedido').AsInteger > 0)   then
           begin
              if not (dmGeral.FIN_CD_M_RBX_PPE.locate('id_pedido',dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_id_pedido').AsInteger,[])) then
                 begin
                   dmGeral.FIN_CD_M_RBX_PPE.Insert;
                   dmGeral.FIN_CD_M_RBX_PPE.FieldByName('id_pedido').AsInteger :=
                           dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_id_pedido').AsInteger;

                   dmGeral.FIN_CD_M_RBX_PPE.FieldByName('vlr_desc_pos_fat').AsCurrency := 0;

                   if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_desconto').AsCurrency > 0) then
                       begin
                         dmGeral.FIN_CD_M_RBX_PPE.FieldByName('vlr_desc_pos_fat').AsCurrency :=
                           dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_desconto').AsCurrency;
                       end;
                 end
              else
                 begin
                   dmGeral.FIN_CD_M_RBX_PPE.edit;
                   if (dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_desconto').AsCurrency > 0) then
                      begin
                        dmGeral.FIN_CD_M_RBX_PPE.FieldByName('vlr_desc_pos_fat').AsCurrency :=
                           dmGeral.FIN_CD_M_RBX_PPE.FieldByName('vlr_desc_pos_fat').AsCurrency +
                           dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_desconto').AsCurrency;
                      end;
                 end;
              dmGeral.FIN_CD_M_RBX_PPE.Post;
           end;
        dmGeral.FIN_CD_M_RBX_TIT.Next;
      end;
  dmGeral.FIN_CD_M_RBX_TIT.First;

end;

end.
